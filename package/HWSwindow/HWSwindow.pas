unit HWSwindow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, ExtCtrls;

type
  TcmsHWSwindow = class(TDockTree)
  protected
    FNewDockSite: TWinControl;
    FBtnDown, FMouseIn, FSplitting, FPaintCloseButtonOnly: Boolean;
    FGrabberHeight, FOldControlCount: Integer;
    FSplit: TPoint;
    FOldWindowProc: TWndMethod;
    FCurrentControl, FCloseButtonControl: TControl;

    FFont: TFont;
    FCaptionStartColor, FCaptionEndColor: TColor;
    FTransparentButton: Boolean;
    
    procedure SetCaptionStartColor(Value: TColor);
    procedure SetCaptionEndColor(Value: TColor);
    procedure SetTransparentButton(Value: Boolean);
    procedure PaintDockFrame(Canvas: TCanvas; Control: TControl;
                             const ARect: TRect); override;
    procedure AdjustDockRect(Control: TControl; var ARect: TRect); override;
    procedure UnAdjustDockRect(Control: TControl; var ARect: TRect);
    procedure WindowProc(var Message: TMessage);
    procedure PaintCloseButton(Canvas: TCanvas; ARect: TRect;
                                           MouseIn, BtnDown: Boolean);
    function GetCloseButtonRect(ARect: TRect): TRect;
    function GetGrabberRect(Control: TControl; Adjust: Boolean): TRect;
    function IsMouseInCloseButton(Control: TControl; MousePos: TPoint): Boolean;
    function IsMouseInCaption(Control: TControl; MousePos: TPoint): Boolean;
    procedure VerticalText(Canvas: TCanvas; Rect: TRect; AText: String);
    function GetShortenedText(Canvas: TCanvas; Rect: TRect;
                              AText: String): String;
    procedure FontChanged(Sender: TObject);
    function HorizontalGrabber: Boolean;
    procedure PaintGradientBackground(Canvas: TCanvas; Control: TControl;
                                      ARect: TRect);
  public
    procedure RefreshControl(Control: TControl);
    function HitTest(const MousePos: TPoint;
                     out HTFlag: Integer): TControl; override;
    procedure PaintSite(DC: HDC); override;
    procedure Refresh;
    constructor Create(ADockSite: TWinControl);
    destructor Destroy; override;
    property Font: TFont read FFont;
    property CaptionStartColor: TColor read FCaptionStartColor
                                       write SetCaptionStartColor;
    property CaptionEndColor: TColor read FCaptionEndColor
                                     write SetCaptionEndColor;
    property TransparentButton: Boolean read FTransparentButton
                                        write SetTransparentButton;
  end;

  THWSwindow = class(TComponent)
  private
    FDockTree: TcmsHWSwindow;
    FControl: TWinControl;
    FFont: TFont;
    FCaptionStartColor, FCaptionEndColor: TColor;
    FTransparentButton: Boolean;
    procedure SetCaptionStartColor(Value: TColor);
    procedure SetCaptionEndColor(Value: TColor);
    procedure SetTransparentButton(Value: Boolean);
    procedure SetControl(Value: TWinControl);
    procedure SetFont(Value: TFont);
    procedure CreateDockTree;
    procedure FontChanged(Sender: TObject);
  protected
    procedure Notification(AComponent: TComponent;
                           Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Refresh;
  published
    property Font: TFont read FFont write SetFont;
    property CaptionStartColor: TColor read FCaptionStartColor
                                       write SetCaptionStartColor;
    property CaptionEndColor: TColor read FCaptionEndColor
                                     write SetCaptionEndColor;
    property TransparentButton: Boolean read FTransparentButton
                                        write SetTransparentButton;
    property Control: TWinControl read FControl write SetControl;
  end;

  procedure Register;

implementation

const
  InvalidType = '%s cannot contain a THWSwindow control.';
  DMAlready = '%s already has a THWSwindow associated with it.';


{------------ TcmsHWSwindow processing methods ----------------}

constructor TcmsHWSwindow.Create(ADockSite: TWinControl);
{method to create the dock tree--Initializes variables
 --ADockSite is the dock site where the new dock tree will be used}
begin
  inherited Create(ADockSite);  //call the inherited creation
  FNewDockSite := ADockSite;  //store the dock site
  FCaptionStartColor := clBtnFace;  //initialize the start color to clBtnFace
  FCaptionEndColor := clBtnFace;  //initialize the end color to clBtnFace

  FFont := TFont.Create;  //create the font
  With FFont do begin
    OnChange := FontChanged;  //refresh the site when the font changes
    Name := 'Arial';  //initialize font--Arial can be painted vertically
    Size := 8;  //initialize the font size
  end;

  FTransparentButton := True;  //initialize--close button will be transparent
  FSplitting := False;  //initialize--no controls are being resized
  FPaintCloseButtonOnly := False;  //initialize--paint entire caption bars

  If not (csDesigning in FNewDockSite.ComponentState) then begin
    FOldWindowProc := FNewDockSite.WindowProc; //store site's old window process
    FNewDockSite.WindowProc := WindowProc;  //override the site's window process
  end;
end;

destructor TcmsHWSwindow.Destroy;
{Occurs when the dock tree is destroyed--
 Destroy variables and reset the dock site's dock manager}
begin
  FFont.Free;  //destroy the font
  FCurrentControl := nil;  //unassign the current control
  FCloseButtonControl := nil;  //unassign the close button control

  If Assigned(FNewDockSite) then begin  //new dock site exists
    If @FOldWindowProc <> nil then  //the control's old window process is stored
      FNewDockSite.WindowProc := FOldWindowProc;  //reset site's window process

    //Typecast FNewDockSite as TPanel, because DockManager and UseDockManager
    //are protected in TControl.  Is there a better way to do this?
    With TPanel(FNewDockSite) do begin
      DockManager := nil;  //unassign the dock site's manager
      UseDockManager := False;  //set UseDockManager to false
      //setting UseDockManager to True again will create a new default DockTree
    end;
  end;

  Inherited Destroy;  //call the inherited destroy method
end;

procedure TcmsHWSwindow.WindowProc(var Message: TMessage);
{The dock site calls this method every time a message is passed to it--
 intercept the messages, process them, and pass them to the original handler}
var
  P: TPoint;
  HTFlag: Integer;
  BtnDown, MouseIn: Boolean;
  Msg: TMsg;
  NewCurrentControl: TControl;
begin
  P := SmallPointToPoint(TWMMouse(Message).Pos);  //get the mouse's position
  NewCurrentControl := HitTest(P, HTFlag);  //get the current control
  If Assigned(NewCurrentControl) then  //the mouse is in a control
    FCurrentControl := NewCurrentControl;  //store the current control
  If FNewDockSite.ControlCount = 0 then  //no controls are in the dock site
    FCurrentControl := nil;  //unassign the stored current control

  Case Message.Msg of
    CM_DOCKNOTIFICATION:  ResetBounds(True);  //reset the control bounds

    WM_LBUTTONUP:  //the user lifted the left mouse button
      begin
        If FSplitting = True then begin  //a control is being split
          FSplitting := False;  //not splitting anymore, so reset the value

          //Delphi has hard-coded the grab-bar height to 11, so the splitter
          //will stop splitting once it reaches another grab bar.  Now that the
          //caption bars are larger, the splitter must stop before then.  So,
          //the code checks if the caption bar is being overlapped, and if it
          //is, it will alter the mouse position to below the caption bar and
          // send a WM_MOUSEMOVE message to the dock site.

          If HorizontalGrabber then begin  //the caption bar is horizontal
            //check to see if the mouse is above of the control (in caption) --
            //the six pixels includes the splitter bar
            If (P.Y < FSplit.Y) and (P.Y < FCurrentControl.Top + 6) then
              //mouse is in the above control's caption area
              With TWMMouse(Message).Pos do begin
                Y := FCurrentControl.Top + 6;  //move mouse down
                SendMessage(FNewDockSite.Handle, WM_MOUSEMOVE, MK_LBUTTON,
                            (X) or (Y shl 16));  //send the mouse move message
              end;
          end
          else begin  //the caption bar is vertical
            //check to see if the mouse is left of the control (in caption)
            If (P.X < FSplit.X) and (P.X < FCurrentControl.Left + 6) then
              //mouse is in left control's caption area
              With TWMMouse(Message).Pos do begin
                X := FCurrentControl.Left{ - FGrabberHeight} + 6;  //move right
                SendMessage(FNewDockSite.Handle, WM_MOUSEMOVE, MK_LBUTTON,
                            (X) or (Y shl 16));  //send the mouse move message
              end;
          end;
        end

        else if (HTFlag = HTCLOSE) and (FBtnDown) then begin  //inside button
          If FCurrentControl is TCustomForm then  //control is a form
            TCustomForm(FCurrentControl).Close  //close the form
          else  //the close is not a form
            FCurrentControl.Visible := False;  //hide the control -- can't close
          FBtnDown := False;  //the button is no longer down
          Refresh;  //refresh the dock site
          Exit;  //finished--do not continue processing the message!
        end;
      end;

    WM_LBUTTONDBLCLK:  //the user double-clicked the left mouse button
        If HTFlag = HTCAPTION then begin  //inside caption -- undock control
          FCurrentControl.ManualDock(nil, nil, alTop);  //undock the control
          Exit;  //finished--do not continue processing the message!
        end;

    WM_LBUTTONDOWN:  //the user pressed the left mouse button
      begin
        BtnDown := FBtnDown;  //get the previous button position
        //if the mouse is in the close button, press the button
        FBtnDown := IsMouseInCloseButton(FCurrentControl, P);
        If FBtnDown <> BtnDown then begin //the button state has changed
          FPaintCloseButtonOnly := True;  //only paint the close button
          RefreshControl(FCurrentControl);  //repaint the control
          FPaintCloseButtonOnly := False;  //resume caption bar painting
        end;
        If FBtnDown then  //the button is pressed
          Exit;  //finished--do not continue processing the message!
        
        if HTFlag = HTCAPTION then begin  //the mouse is in the caption
          If (not PeekMessage(Msg, FNewDockSite.Handle, WM_LBUTTONDBLCLK,
              WM_LBUTTONDBLCLK, PM_NOREMOVE)) and
             (FCurrentControl is TWinControl) then
            //the control is a TWinControl and is not being double-clicked
            With TPanel(FCurrentControl) do begin
              SetFocus;  //give the control the focus
             if (DragKind = dkDock) and (DragMode = dmAutomatic) then
                FCurrentControl.BeginDrag(False);  //start docking
              Exit;  //finished--do not continue processing the message!
          end;
        end
        else if HTFlag = HTBORDER then begin  //the cursor is on the splitter
          FSplitting := True;  //remember that it is being split
          FSplit := P;  //store the mouse position where the split was started
        end;
      end;

    WM_MOUSEMOVE, CM_MOUSEENTER:  //the mouse is moved or entered the control
      begin
        MouseIn := FMouseIn;  //get the previous MouseIn state
        If (Assigned(FCurrentControl)) and  //the mouse is over a control
           ((FTransparentButton) or (FBtnDown)) then begin
          //the button is either transparent is is down--may have to repaint
          //check to see if the mouse is now inside the close button
          FMouseIn := IsMouseInCloseButton(FCurrentControl,
                      SmallPointToPoint(TWMMouse(Message).Pos));
          If (MouseIn <> FMouseIn) then begin  //MouseIn state has changed
            If not FMouseIn then  //the mouse is not in the close button
              FBtnDown := False;  //the button is no longer down
            FPaintCloseButtonOnly := True;  //only paint the close button
            RefreshControl(FCurrentControl);  //repaint the control
            FPaintCloseButtonOnly := False;  //resume painting of caption bar
          end;
        end;
      end;

    CM_MOUSELEAVE:  //the mouse left the control--
      //because the close button is close to the edge of the control,
      //it may not receive a mouse leaving the close button--
      //capture the MouseLeave message to repaint with the button up
      begin
        FCloseButtonControl := nil;  //the mouse is not in any close button now
        FBtnDown := False;  //the close button is not down anymore
        If Assigned(FCurrentControl) then begin  //there is a current control
          FPaintCloseButtonOnly := True;  //only paint the close button
          RefreshControl(FCurrentControl);  //refresh the current control
          FPaintCloseButtonOnly := False;  //resume painting of the caption bar
        end;
      end;

    WM_DESTROY:
      //This DockTree must be unassigned from the control before it is
      //destroyed, because it should be destroyed by its creator.
      With TPanel(FNewDockSite) do begin
        DockManager := nil;  //let the THWSwindow free it
        UseDockManager := False;  //set UseDockManager to False
      end;
  end;
  FOldWindowProc(Message);  //call the original processing message
end;


{------------ TcmsHWSwindow property handling methods ----------------}

procedure TcmsHWSwindow.SetCaptionStartColor(Value: TColor);
{Occurs when the CaptionStartColor property is set--
 store the new CaptionStartColor and refresh the dock site}
begin
  FCaptionStartColor := Value;  //store the new value
  Refresh;  //refresh the dock site
end;

procedure TcmsHWSwindow.SetCaptionEndColor(Value: TColor);
{Occurs when the CaptionEndColor property is set--
 store the new CaptionEndColor and refresh the dock site}
begin
  FCaptionEndColor := Value;  //store the new value
  Refresh;  //refresh the dock site
end;

procedure TcmsHWSwindow.SetTransparentButton(Value: Boolean);
{Occurs when the TransparentButton property is set--
 store the new TransparentButton and refresh the dock site}
begin
  FTransparentButton := Value;  //store the new value
  FPaintCloseButtonOnly := True;  //only paint the close button
  Refresh;  //refresh the dock site
  FPaintCloseButtonOnly := False;  //resume painting of entire caption bar
end;

procedure TcmsHWSwindow.FontChanged(Sender: TObject);
{Occurs when the font has been changed--
 Calculate the new caption bar height and refresh the dock site}
var
  Canvas: TControlCanvas;
begin
  Canvas := TControlCanvas.Create;  //create a control canvas
  try  //calculate the size of the caption bar
    Canvas.Control := FNewDockSite;  //set the canvas's control to the dock site
    Canvas.Font.Assign(FFont);  //assign the canvas's font

    //calculate the new caption bar height--
    //margins: 3 pixels above and 4 pixels below the text
    FGrabberHeight := Canvas.TextHeight('Wg') + 7;
    If FGrabberHeight < 11 then  //the calculated height is less than 11
      FGrabberHeight := 11;  //set 11 to the minimum value (original value)
  finally
    Canvas.Free;  //destroy the canvas
    Refresh;  //refresh the dock site
  end;
end;


{------------ TcmsHWSwindow calculation methods ----------------}

function TcmsHWSwindow.HorizontalGrabber: Boolean;
{Returns True if the caption bar will be painted horizontally--
 Returns False if the caption bar will be painted vertically}
begin
  Result := FNewDockSite.Align in [alLeft, alRight, alClient, alNone];
end;

procedure TcmsHWSwindow.AdjustDockRect(Control: TControl; var ARect: TRect);
{Shrink the control to make room for the caption bar}
begin
  if HorizontalGrabber then  //caption bar is horizontal
    Inc(ARect.Top, FGrabberHeight)  //move the control down to make room
  else  //caption bar is vertical
    Inc(ARect.Left, FGrabberHeight);  //move the control left to make room
end;

procedure TcmsHWSwindow.UnadjustDockRect(Control: TControl; var ARect: TRect);
{Adjust the rectangle of the control to include the caption bar}
begin
  if HorizontalGrabber then  //caption bar is horizontal
    Dec(ARect.Top, FGrabberHeight)  //move the rect up to include caption bar
  else  //caption bar is vertical
    Dec(ARect.Left, FGrabberHeight);  //move rect left to include caption bar
end;

function TcmsHWSwindow.GetGrabberRect(Control: TControl; Adjust: Boolean): TRect;
{Returns the rectangle of the caption bar}
var
  R: TRect;
begin
  R := Control.BoundsRect;  //get the control's rectangle
  If Adjust then  //adjust the dock rect
    AdjustDockRect(Control, R);  //make room for the caption bar

  //adjust the rectangle to provide for the border width
  Dec(R.Left, 2 * (R.Left - Control.Left));  //left
  Dec(R.Top, 2 * (R.Top - Control.Top));  //top
  Dec(R.Right, 2 * (Control.Width - (R.Right - R.Left)));  //right
  Dec(R.Bottom, 2 * (Control.Height - (R.Bottom - R.Top)));  //bottom
  
  Result := R;  //return the caption bar rectangle
end;

function TcmsHWSwindow.GetCloseButtonRect(ARect: TRect): TRect;
{Returns the rectangle of the close button --
 ARect is the rectangle of the caption bar}
var
  BtnHeight: Integer;
begin
  BtnHeight := FGrabberHeight - 4;  //get button height
  With ARect do
    If HorizontalGrabber then begin  //caption bar is horizontal
      Result := Rect(Right - BtnHeight - 6, Top + 3, Right - 3,
                     Top + BtnHeight + 1);
      If Left > Result.Left then  //the control is smaller than the button
        Result.Left := Left + 3;  //shrink the button
    end
    else begin  //the caption bar is vertical
      Result := Rect(Left + 4, Top + 3, Left + BtnHeight + 1, Top + BtnHeight);
      If Bottom < Result.Bottom then  //the control is smaller than the button
        Result.Bottom := Bottom - 3;  //shrink the button
    end;
end;

function TcmsHWSwindow.IsMouseInCloseButton(Control: TControl;
                                           MousePos: TPoint): Boolean;
{Returns true if the mouse is in the close button of the current control--
 Returns false if otherwise}
var
  R, CloseButtonRect: TRect;
  TopLeft, BottomRight, NewMousePos: TPoint;
begin
  Result := False;  //initialize the result to false
  FCloseButtonControl := nil;  //initialize the close button control

  if (Assigned(Control)) and (Control.Visible) then begin  //check the control
    R := Control.BoundsRect;  //get the control's rectangle
    UnadjustDockRect(Control, R);  //include control's caption bar
    CloseButtonRect := GetCloseButtonRect(R);  //get control's close button rect

    //get button's top-left and bottom-right corners
    TopLeft := Control.ClientToScreen(CloseButtonRect.TopLeft);
    BottomRight := Control.ClientToScreen(CloseButtonRect.BottomRight);
    NewMousePos := Control.ClientToScreen(MousePos);  //adjust mouse position

    With NewMousePos do  //check to see if the mouse is between the two corners
      Result := (X >= TopLeft.X) and (X <= BottomRight.X) and
                (Y >= TopLeft.Y) and (Y <= BottomRight.Y);
  end;
  If Result then  //the mouse is in the close button of this control
    FCloseButtonControl := Control;  //store the new close button control
end;

function TcmsHWSwindow.IsMouseInCaption(Control: TControl;
                                       MousePos: TPoint): Boolean;
{Returns True if the mouse is in the control's caption--
 Returns False if otherwise}
var
  GrabberRect: TRect;
  ATopLeft, ABottomRight, NewMousePos: TPoint;
begin
  Result := False;  //initialize the result
  if (Assigned(Control)) and (Control.Visible) then begin  //check the control
    GrabberRect := GetGrabberRect(Control, False);  //get the caption bar rect

    With GrabberRect do begin
      UnadjustDockRect(Control, GrabberRect);  //unadjust the dock rectangle
      //get the top-left and bottom-right corners of the caption
      ATopLeft := FNewDockSite.ClientToScreen(TopLeft);
      ABottomRight := FNewDockSite.ClientToScreen(BottomRight);
    end;

    NewMousePos := FNewDockSite.ClientToScreen(MousePos);  //adjust mouse pos
    With NewMousePos do  //check if the mouse pos is in the caption bar
      //**Fix in v1.01: all <= and >= were changed to < and > because the edge
      //was interfering with the splitter 
      Result := (X > ATopLeft.X) and (X < ABottomRight.X) and
                (Y > ATopLeft.Y) and (Y < ABottomRight.Y);
  end;
end;

function TcmsHWSwindow.HitTest(const MousePos: TPoint;
                              out HTFlag: Integer): TControl;
{Overridden method--check to see where the current mouse position is--
 Returns the control the mouse is over and sets HTFlag}
var
  i: Integer;
  NewMousePos: TPoint;
begin
  NewMousePos := MousePos;  //initialize temporary MousePos

  Result := Inherited HitTest(NewMousePos, HTFlag);  //call inherited method

  //The MousePos may be in the larger caption bar or close button,
  //so possibly override the existing result
  With FNewDockSite do
    For i := 0 to ControlCount - 1 do  //loop through each control
      If IsMouseInCloseButton(Controls[i], NewMousePos) then begin
        //the mouse is in the close button
        HTFlag := HTCLOSE;  //set the proper HTFlag
        Result := Controls[i];  //return the current control
        Break;  //already found, so break out of the loop
      end
      else if IsMouseInCaption(Controls[i], NewMousePos) then begin
        //the mouse is in the caption
        HTFlag := HTCAPTION;  //set the proper HTFlag
        Result := Controls[i];  //return the current control
        Break;  //already found, so break out of the loop
      end;
end;

function TcmsHWSwindow.GetShortenedText(Canvas: TCanvas; Rect: TRect;
                                       AText: String): String;
{Returns a truncated string that will fit into Rect--insert an ellipses at end}
const
  Ellipses = '...';
var
  MaxWidth, EWidth: Integer;
  NeedEllipses: Boolean;
begin
  NeedEllipses := False;  //initialize  --  do not need the ellipses yet
  EWidth := Canvas.TextWidth(Ellipses);  //get the width of the text
  Result := AText;  //initialize the result

  repeat
    If HorizontalGrabber then begin  //the caption bar is horizontal
      //get the maximum width inside the rect
      If NeedEllipses then  //already need ellipses--subtract width of ellipses
        MaxWidth := Rect.Right - Rect.Left - FGrabberHeight - 10 - EWidth
      else  //do not need ellipses yet--do not subtract ellipses width
        MaxWidth := Rect.Right - Rect.Left - 10 - FGrabberHeight;
    end
    else begin  //the caption bar is vertical
      If NeedEllipses then  //already need ellipses--subtract ellipses width
        MaxWidth := Rect.Bottom - Rect.Top - FGrabberHeight - EWidth
      else  //do not need ellipses yet--do not subtract ellipses width
        MaxWidth := Rect.Bottom - Rect.Top - FGrabberHeight;
    end;

    If MaxWidth <= 0 then begin  //the maximum width is less than 1
      Result := '';  //no room for any text, so return null
      Break;  //finished--break out of the loop
    end
    else if Canvas.TextWidth(Result) > MaxWidth then begin
      //the width of the text is bigger than the maximum width
      Delete(Result, Length(Result), 1);  //delete the last character
      NeedEllipses := True;  //ellipses are needed now
    end;
  until  //until the width of the text is less than the maximum width
    Canvas.TextWidth(Result) <= MaxWidth;  //until the text fits

  If NeedEllipses then  //ellipses are needed
    Result := Result + Ellipses;  //return the shortened text plus the ellipses
end;


{------------ TcmsHWSwindow painting methods ----------------}

procedure TcmsHWSwindow.PaintSite(DC: HDC);
{Overridden method--Paints the entire dock site}
var
  Canvas: TControlCanvas;
  Control: TControl;
  I: Integer;
  R: TRect;
begin
  Canvas := TControlCanvas.Create;  //create a control canvas
  try
    Canvas.Control := FNewDockSite;  //set the canvas's control to the dock site
    Canvas.Lock;  //suspend painting of the canvas -- reduces flicker
    try
      Canvas.Handle := DC;  //set the canvas's handle to the passed HDC

      try  //loop through all controls and repaint each one
        for I := 0 to FNewDockSite.ControlCount - 1 do begin
          Control := FNewDockSite.Controls[I];  //set current control
          if Control.Visible then begin  //the control is visible
            R := GetGrabberRect(Control, True);  //get the caption bar rect
            PaintDockFrame(Canvas, Control, R);  //paint the control's caption
          end;
        end;
      finally
        Canvas.Handle := 0;  //unassign the canvas's handle
      end;
    finally
      Canvas.Unlock;  //resue painting of the canvas
    end;
  finally
    Canvas.Free;  //destroy the canvas
  end;
end;

procedure TcmsHWSwindow.PaintDockFrame(Canvas: TCanvas; Control: TControl;
      const ARect: TRect);
{Overridden method--Paints the caption bar of the passed control--
 ARect is the rectangle of the caption bar}
var
  R, NewR: TRect;
  MouseIn: Boolean;
  AText: String;

begin
  If not Control.Visible then Exit;  //control is invisible, so do not paint
  Canvas.Lock;
  try
    With ARect do  //set R to the caption bar portion of the control
      If HorizontalGrabber then  //caption bar is horizontal
        R := Rect(Left, Top, Right, Top + FGrabberHeight)  //caption bar height
      else  //caption bar is vertical
        R := Rect(Left, Top, Left + FGrabberHeight, Bottom);  //width=bar height

    If not FPaintCloseButtonOnly then begin  //paint the entire caption bar

      //paint the background color of the caption bar
      Canvas.Brush.Color := FCaptionStartColor;  //set the canvas's brush color
      InflateRect(R, -1, -1);  //give a 2-pixel margin
      PaintGradientBackground(Canvas, Control, R);  //paint the background
      InflateRect(R, 1, 1);  //reset the rect -- remove the margin

      With Canvas do
        SetBkMode(Handle, Transparent);  //set background mode to transparent

      //paint the text
      if HorizontalGrabber then begin  //the caption bar is horizontal
        With ARect do  //adjust the rectangle to provide margins
          NewR := Rect(Left + 2, Top + 2, Right + 1, Top + 4);

        Canvas.Font.Assign(FFont);  //assign the canvas's font
        AText := GetShortenedText(Canvas, NewR, Control.Hint); //get fitted text
        Canvas.TextOut(NewR.Left + 3, NewR.Top + 2, AText);  //paint the text
      end
      else begin   //the caption bar is vertical
        With ARect do  //adjust the rectangle to provide margins
          NewR := Rect(Left + 2, Top + 2, Left + 4, Bottom + 1);
        AText := GetShortenedText(Canvas, NewR, Control.Hint); //get fitted text
        VerticalText(Canvas, R, AText);  //paint the vertical text
      end;
    end;

    MouseIn := FCloseButtonControl = Control;  //check if mouse in close button
    PaintCloseButton(Canvas, R, MouseIn, MouseIn and FBtnDown);  //paint button
    If not FPaintCloseButtonOnly then  //paint entire caption bar
      DrawEdge(Canvas.Handle, R, EDGE_ETCHED, BF_RECT);  //draw border around bar
  finally
    Canvas.Unlock;
  end;
end;

procedure TcmsHWSwindow.PaintCloseButton(Canvas: TCanvas; ARect: TRect;
                                        MouseIn, BtnDown: Boolean);
{Paints the close button inside ARect with the various options}
var
  CloseButtonRect: TRect;
  BtnFaceBrush: HBRUSH;
begin
  CloseButtonRect := GetCloseButtonRect(ARect);  //get the close button rect
  If not FTransparentButton then begin  //standard button border
    If BtnDown then  //the button is down -- paint a "pushed" border
      DrawFrameControl(Canvas.Handle, CloseButtonRect, DFC_CAPTION,
                       DFCS_CAPTIONCLOSE or DFCS_PUSHED)
    else  //the button is up -- paint a standard border
      DrawFrameControl(Canvas.Handle, CloseButtonRect, DFC_CAPTION,
                       DFCS_CAPTIONCLOSE);
  end
  else begin  //the button is transparent
    //draw a "flat" border -- single mono-color border around
    DrawFrameControl(Canvas.Handle, CloseButtonRect, DFC_CAPTION,
                     DFCS_CAPTIONCLOSE or DFCS_FLAT);
    If BtnDown then  //the button is down -- paint a sunken border
      DrawEdge(Canvas.Handle, CloseButtonRect, BDR_SUNKENOUTER, BF_RECT)
    else if MouseIn then  //the mouse is in and button is up -- raised border
      DrawEdge(Canvas.Handle, CloseButtonRect, BDR_RAISEDINNER, BF_RECT)
    else begin  //mouse is out -- no border
      //must draw over the "flat" border with clBtnFace -- invisible
      BtnFaceBrush := GetSysColorBrush(COLOR_BTNFACE); //get the Windows brush
      FrameRect(Canvas.Handle, CloseButtonRect, BtnFaceBrush);  //paint rect
    end;
  end;
end;

procedure TcmsHWSwindow.PaintGradientBackground(Canvas: TCanvas;
                                               Control: TControl; ARect: TRect);
{Paints the caption bar's background color(s)}
const
  D = 256;  //will divide the gradient into 256 colors
var
  X, C1, C2, R1, G1, B1, W: Integer;
  DR, DG, DB, DH: Real;

  procedure InitRGBValues(C1, C2: Integer);
  {Sets the initial values for each color}
  begin
    R1:= GetRValue(C1);  //store the red value of FCaptionStartColor
    G1:= GetGValue(C1);  //store the green value of FCaptionStartColor
    B1:= GetBValue(C1);  //store the blue value of FCaptionStartColor
    DR:= (GetRValue(C2) - R1 {+1}) / D;  //store the red increment
    DG:= (GetGValue(C2) - G1 {+1}) / D;  //store the green increment
    DB:= (GetBValue(C2) - B1 {+1}) / D;  //store the blue increment
  end;

begin
  if (not Assigned(Control)) or (not Control.Visible) then Exit; //nothing to do

  With Canvas do begin
    Lock;   //suspend painting of the canvas
    try
      Brush.Style := bsSolid;  //set the brush style to paint solid strokes

      if FCaptionStartColor <> FCaptionEndColor then begin  //colors differ
        C1 := ColorToRgb(FCaptionStartColor);  //get RGB value of Start Color
        C2 := ColorToRgb(FCaptionEndColor);  //get RGB value of End Color

        InitRGBValues(C1, C2);  //get the initial values for the variables

        If HorizontalGrabber then  //caption bar is horizontal
          DH := (ARect.Right - ARect.Left) / D  //get width of each small rect
        else  //caption bar is vertical
          DH := (ARect.Bottom - ARect.Top) / D;  //get height of each small rect

        for X := 0 to 255 do begin  //paint 256 small rects
          Brush.Color := RGB(R1 + Round(DR*X), G1 + Round(DG*X),
                             B1 + Round(DB*X));  //get brush color for this rect
          With ARect do
            If HorizontalGrabber then begin  //caption bar is horizontal
              //add five to the width of each to prevent rounding problems
              If Right <= Left + Round((X+1)*DH){ + 5} then  //at the right edge
                W := Right  //set the width to the right edge--won't over-paint
              else  //not at the right edge
                W := Left + Round((X+1)*DH) {+ 5};  //set normal width

              FillRect(Rect(Left + Round(X*DH), Top, W, Bottom))  //paint rect
            end
            else begin  //caption bar is vertical
              If Bottom > Bottom - Round((X)*DH) {+ 5 }then  //not at bottom edge
                W := Bottom - Round((X)*DH) {+ 5}  //set normal height
              else  //at the bottom edge
                W := Bottom;  //set height to the bottom edge--won't over-paint

              FillRect(Rect(Left, Bottom - Round((X+1)*DH), Right, W));  //paint
            end;
        end;
    end

    else begin  //the start and end colors are identical--just paint normally
      Brush.Color := FCaptionStartColor;  //set the brush's color
      FillRect(ARect);  //paint the rect
    end;

    finally
      Unlock;  //resume painting of the canvas
    end;
  end;
end;

procedure TcmsHWSwindow.VerticalText(Canvas: TCanvas; Rect: TRect; AText: String);
{Paints AText vertically on Canvas starting at Rect--
 ***PROBLEM -- not all fonts are able to be painted vertically}
var
  lf: TLogFont;
  hfnt, holdfnt: HFont;
begin
  With Canvas do begin
      Font := FFont;  //set the canvas font

      GetObject(Font.Handle, SizeOf(lf), Addr(lf));  //get the LogFont control

      FillChar(lf, SizeOf(lf), 0);  // initialize the TLogFont structure
      If FFont.Name = 'MS Sans Serif' then  //cannot be painted vertically
        StrPCopy(lf.lfFaceName, 'Arial')  //change the font to Arial
      else  //the font MAY be able to be painted vertically
        StrPCopy(lf.lfFaceName, FFont.Name);  //set the font name

      lf.lfCharSet := FFont.Charset;  //set the character set
      lf.lfHeight := FFont.Height;  //set the height

      if fsBold in FFont.Style then  //the font is bold
        lf.lfWeight := fw_Bold  //set the weight to Bold
      else  //the font is not bold
        lf.lfWeight := fw_Normal;  //set the weight to Normal

      lf.lfItalic := Integer(fsItalic in FFont.Style);  //set italics
      lf.lfUnderline := Integer(fsUnderline in FFont.Style);  //set underline
      lf.lfStrikeOut := Integer(fsStrikeout in FFont.Style);  //set strike out

      lf.lfEscapement := 900;  //rotate 90 degrees
      lf.lfOrientation := 900;  //rotate 90 degrees

      hfnt := CreateFontIndirect(lf);  //create a font
      holdfnt := SelectObject(Handle, hfnt);  //select the font

      SetTextColor(Handle, ColorToRgb(FFont.Color));  //set the text color
      SetBkMode(Handle, Transparent);  //set the background mode to transparent
      TextOut(Rect.Left + 3, Rect.Bottom - 5, AText);  //paint the text

      SelectObject(Handle, holdfnt);  //select the font
      DeleteObject(hfnt);  //delete the font object
  end;
end;

procedure TcmsHWSwindow.Refresh;
{Repaints the entire dock site}
var
  Canvas: TControlCanvas;
begin
  UpdateAll;  //reset the dimensions of the controls
  Canvas := TControlCanvas.Create;  //create a control canvas
  try
    Canvas.Control := FNewDockSite;  //set the canvas's control to the dock site
    PaintSite(Canvas.Handle);  //paint the entire site
  finally
    Canvas.Free;  //destroy the canvas
  end;
end;

procedure TcmsHWSwindow.RefreshControl(Control: TControl);
{Refreshes the passed Control}
var
  Canvas: TControlCanvas;
  NewRect: TRect;
begin
  Canvas := TControlCanvas.Create;  //create a control canvas
  try
    Canvas.Control := FNewDockSite;  //set the canvas's control to the dock site
    NewRect := GetGrabberRect(FCurrentControl, True);  //get caption bar rect
    PaintDockFrame(Canvas, FCurrentControl, NewRect);  //repaint the caption bar
  finally
    Canvas.Free;  //destroy the canvas
  end;
end;






{------------ THWSwindow methods ----------------}

constructor THWSwindow.Create(AOwner: TComponent);
{Creates the control and initialize variables}
begin
  Inherited Create(AOwner);  //call the inherited Create method
  FFont := TFont.Create;  //create the stored font
  FFont.Name := 'Arial';  //set the font to Arial (can be painted vertically)
  FFont.OnChange := FontChanged;  //refresh the dock site when font changes
  FCaptionStartColor := clBtnFace;  //initialize the caption color to clBtnFace
  FCaptionEndColor := clBtnFace;  //initialize the caption color to clBtnFace
end;

destructor THWSwindow.Destroy;
{Destroys the control and frees variables}
begin
  //FDockTree must be destroyed only if both FControl and FDockTree are assigned
  If (Assigned(FControl)) and (Assigned(FDockTree)) then
    FDockTree.Free;  //destroy the dock tree

  Control := nil;  //unassign the control
  FFont.Free;  //destroy the stored font
  Inherited Destroy;  //call the inherited Destroy method
end;

procedure THWSwindow.Notification(AComponent: TComponent;
                                       Operation:TOperation);
{checks to see if FControl has been destroyed}
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FControl) then  //destroyed
      Control := nil;  //unassign FControl
end;

procedure THWSwindow.CreateDockTree;
{Creates and initializes the FDockTree--then assigns it to the dock site}
begin
  If Assigned(FDockTree) then  //a dock tree has already been created
    FDockTree.Free;  //destroy the dock tree -- start from scratch

  FDockTree := TcmsHWSwindow.Create(FControl);  //create a new dock tree

  FDockTree.Font.Assign(FFont);  //assign the font
  FDockTree.TransparentButton := FTransparentButton;  //assign the button state
  FDockTree.CaptionStartColor := FCaptionStartColor;  //assign the caption color
  FDockTree.CaptionEndColor := FCaptionEndColor;  //assign the caption color
end;

procedure THWSwindow.FontChanged(Sender: TObject);
{Occurs when the font has been modified--
 Assign the new font to the FDockTree}
begin
  If Assigned(FDockTree) then  //FDockTree has been created
    FDockTree.Font.Assign(FFont);  //assign the new font to the dock manager
end;

procedure THWSwindow.SetCaptionStartColor(Value: TColor);
{Occurs when the CaptionStartColor property has been set--
 Store the new CaptionStartColor and assign it to the FDockTree}
begin
  FCaptionStartColor := Value;  //store the new ColorCaption
  If Assigned(FDockTree) then  //FDockTree has been created
    FDockTree.CaptionStartColor := Value;  //assign the new color to FDockTree
end;

procedure THWSwindow.SetCaptionEndColor(Value: TColor);
{Occurs when the CaptionEndColor property has been set--
 Store the new CaptionEndColor and assign it to the FDockTree}
begin
  FCaptionEndColor := Value;  //store the new ColorCaption
  If Assigned(FDockTree) then  //FDockTree has been created
    FDockTree.CaptionEndColor := Value;  //assign the new color to FDockTree
end;

procedure THWSwindow.SetTransparentButton(Value: Boolean);
{Occurs when the TransparentButton property has been set--
 Store the new TransparentButton property and assign it to the FDockTree}
begin
  FTransparentButton := Value;  //store the new TransparentButton
  If Assigned(FDockTree) then  //FDockTree has been created
    FDockTree.TransparentButton := Value;  //assign new state to dock manager
end;

procedure THWSwindow.SetFont(Value: TFont);
{Occurs when the Font property has been set--
 assigns the values to the stored font}
begin
  FFont.Assign(Value);  //store the new font values
end;

procedure THWSwindow.SetControl(Value: TWinControl);
{Occurs when the user sets the Control property--
 validates that the control may be used and assigns it to the FDockTree}
var
  i: Integer;
begin
  If Assigned(FControl) then  //the control has been set before
    With TPanel(FControl) do begin  //cast it because properties are protected
      DockManager := nil;  //unassign the control's DockManager
      UseDockManager := False;  //set UseDockManager to False
      //a standard DockManager will be created when UseDockManager becomes True
    end;

  If Assigned(Value) then  //a control has been passed
    //make sure the current control does not have another THWSwindow
    //associated with it
    With Owner do  //loop through all components
      For i := 0 to ComponentCount - 1 do
        If (Components[i] is THWSwindow) and
           (THWSwindow(Components[i]).Control = Value) then begin
          //this control is a THWSwindow, and it's control is the control
          //that was just passed--fobidden!
          FControl := nil;  //unassign FControl
          raise Exception.CreateFmt(DMAlready, [Value.Name]);  //error message
          Exit;  //nothing left to do, so exit out of the method
        end
  else  //FControl has been unassigned, so unassign FDockTree
    FDockTree := nil;  //unassign FDockTree

  FControl := Value;  //control is okay--store it

  try
    If (Assigned(FControl)) and not (csDesigning in ComponentState) then
      //must typecast it as a TPanel, because the DockManager and UseDockManager
      //properties of TWinControl are protected--is there a better way to check?
      With TPanel(FControl) do begin
        UseDockManager := False;  //set UseDockManager to False
        DockManager := nil;  //unassign the DockManager
        CreateDockTree;  //create and initialize the dock tree
        DockSite := True;  //set the control to be a dock site
        DockManager := FDockTree;  //assign the dock tree to the control
        UseDockManager := True;  //use the new dock manager
      end;
  except  //the control cannot be cast as a Panel--must not be a dock site
    FControl := nil;  //unassign the control
    raise Exception.CreateFmt(InvalidType, [Value.Name]);  //raise error
  end;
end;

procedure THWSwindow.Refresh;
{Refreshes the dock site}
begin
  If (Assigned(FControl)) and (Assigned(FDockTree)) then
    FDockTree.Refresh;  //refresh the dock site
end;

procedure Register;
begin
  RegisterComponents ('HWS', [THWSwindow]);
end;


end.
