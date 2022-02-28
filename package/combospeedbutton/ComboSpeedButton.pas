unit ComboSpeedButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls,buttons,menus,graphics,math,ActnList;

type
  TComboAlign=(calLeft,calRight);
  TComboSpeedButton = class(TWinControl)
  private
    FSpeed,
    FCombo:TSpeedButton;
    FMenu:TPopupMenu;
    FFlat:Boolean;
    FGlyph:TBitmap;
    FNumGlyphs:TNumGlyphs;
    FLayout: TButtonLayout;
    FEnabled:Boolean;
    FOnDblClick: TNotifyEvent;
    FOnMouseDown: TMouseEvent;
    FOnMouseMove: TMouseMoveEvent;
    FOnMouseUp: TMouseEvent;
    FComboAlign:TComboAlign;
    FAutoUp:Boolean;
    procedure SetText(Const Value:TCaption);
    function GetText:TCaption;
    procedure SetMenu(value:TPopupMenu);
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure SetFlat(Value:Boolean);
    procedure SetGlyph(Value:TBitmap);
    procedure SetNumGlyphs(Value:TNumGlyphs);
    procedure setLayout(Value: TButtonLayout);
    procedure Clickbutton(sender:tobject);
    procedure ClickSpeed(sender:tobject);
    procedure DblClickSpeed(sender:tobject);
    procedure MouseDownSpeed(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure MouseMoveSpeed(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
    procedure MouseUpSpeed(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
    procedure SetComboAlign(Value:TComboAlign);
  protected
     procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
     procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
     procedure SetName(const Value: TComponentName); override;
    procedure SetEnabled(Value:Boolean);override;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
  public
     constructor Create(AOwner:TComponent);override;
     destructor Destroy;override;
  published
    property AutoUp:Boolean read FAutoUp write FAutoUp default true;
    property ComboAlign:TComboAlign read FComboAlign write SetComboAlign default calRight;
    property PopupMenu:TPopupMenu read fMenu write SetMenu;
    Property Caption:TCaption read GetText write SetText;
    Property Flat:Boolean read FFlat write SetFlat default false;
    Property Glyph:TBitmap read FGlyph write SetGlyph;
    property NumGlyphs:TNumGlyphs read FNumGlyphs write SetNumGlyphs default 1;
    Property Layout: TButtonLayout read FLayout write SetLayout default blGlyphLeft;
    property BevelEdges;
    property BevelInner;
    property BevelOuter;
    property BevelKind;
    property BevelWidth;
    property BorderWidth;
    property ShowHint;
    property Enabled:Boolean read FEnabled write SetEnabled default true;
    property Visible;
    Property Action;
    property OnClick;//: TNotifyEvent read FOnClick write FOnClick;
    property OnDblClick: TNotifyEvent read FOnDblClick write FOnDblClick;
    property OnMouseDown: TMouseEvent read FOnMouseDown write FOnMouseDown;
    property OnMouseMove: TMouseMoveEvent read FOnMouseMove write FOnMouseMove;
    property OnMouseUp: TMouseEvent read FOnMouseUp write FOnMouseUp;
    { Published declarations }
  end;
Const
  CAlign:array[calLeft..calRight] of TAlign=(alLeft,alRight);
procedure Register;

implementation
constructor TComboSpeedButton.Create(AOwner:TComponent);
begin
   inherited Create(AOwner);
   ControlStyle := ControlStyle+[csSetCaption]-[csAcceptsControls,csOpaque];
   FAutoUp:=true;
   FComboAlign:=calRight;
   FFlat:=false;
   FEnabled:=true;
   FNumGlyphs:=1;
   FLayout:=blGlyphLeft;
   FGlyph:=tbitmap.Create;
   height:=25;
   fspeed:=TSpeedButton.create(self);
   fspeed.Parent:=self;
   fspeed.Top:=0;
   fspeed.Left:=0;
   fspeed.Width:=12;
   fspeed.Height:=12;
   fspeed.Flat:=FFlat;
   FSpeed.Transparent:=true; 
   Fspeed.Visible:=true;
   FSpeed.Align:=alClient;
   FSpeed.Enabled:=FEnabled;
   FSpeed.Action:=Action;
   FSpeed.Glyph:=FGlyph;
   FSpeed.OnClick:=ClickSpeed;
   FSpeed.OnDblClick:=DblClickSpeed;
   FSpeed.OnMouseDown:=MouseDownSpeed;
   FSpeed.OnMouseMove:=MouseMoveSpeed;
   FSpeed.OnMouseUp:=MouseUpSpeed;
end;
destructor TComboSpeedButton.Destroy;
begin
   fspeed.Free;
   if assigned(FGlyph) then
     FGlyph.Free;
   inherited;
end;
procedure TComboSpeedButton.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  if Sender is TCustomAction then
  begin
      inherited ActionChange(Sender, CheckDefaults);
      FSpeed.Action:=Action;
  end;
end;
function TComboSpeedButton.GetText: TCaption;
var
  Len: Integer;
begin
  Len := GetTextLen;
  SetString(Result, PChar(nil), Len);
  if Len <> 0 then GetTextBuf(Pointer(Result), Len + 1);
end;
procedure TComboSpeedButton.SetText(const Value: TCaption);
begin
  if GetText <> Value then
  begin
     SetTextBuf(PChar(Value));
     FSpeed.Caption:=Caption;
  end;
end;
procedure TComboSpeedButton.SetName(const Value: TComponentName);
begin
   inherited setname(Value);
   FSpeed.caption:=Caption;
end;
procedure TComboSpeedButton.WMSize(var Message: TWMSize);
begin
  inherited;
  FSpeed.Height:=height;
  if assigned(FMenu) then
     FSpeed.Width:=FSpeed.Width-fcombo.Width-1
  else
     FSpeed.Width:=Width;
end;
procedure TComboSpeedButton.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
     if (self.PopupMenu <> nil) and (acomponent.Name=self.PopupMenu.Name) then
        PopupMenu := nil;
end;
procedure TComboSpeedButton.SetComboAlign(Value:TComboAlign);
begin
   if assigned (FCombo) then
   begin
      if value<>FComboAlign then
      begin
         FComboAlign:=Value;
         fcombo.Align:=CAlign[value];
      end;
   end
   else
      FComboAlign:=Value;
end;
procedure TComboSpeedButton.SetMenu(value:TPopupMenu);
var
  tmpimage:TBitmap;
begin
   if value<>nil then
   begin
      if value<>FMenu then
      begin
         if assigned(FMenu) then
            Fmenu:=value
         else
         begin
            Fmenu:=value;
            FCombo:=TSpeedButton.Create(self);
            FCombo.Enabled:=FEnabled;
            FCombo.OnClick:=Clickbutton;
            FCombo.OnMouseDown:=MouseDownSpeed;
            FCombo.OnMouseMove:=MouseMoveSpeed;
            FCombo.OnMouseUp:=MouseUpSpeed;
            fcombo.Parent:=self;
            FCombo.AllowAllUp:=not AutoUp;
            FCombo.GroupIndex:=ifthen(autoup,0,1);
            fcombo.Align:=CAlign[ComboAlign];
            fCombo.Width:=16;
            fcombo.Visible:=true;
            FCombo.Flat:=FFlat;
            FSpeed.Width:=FSpeed.Width-fcombo.Width-1;
            tmpimage:=TBitmap.Create;
            try
              tmpimage.Handle:=LoadBitmap( 0,makeintresource(OBM_COMBO));
              FCombo.Glyph.Assign(tmpimage);
              FCombo.NumGlyphs:=1;
              DeleteObject(tmpimage.Handle);
            finally
              tmpimage.Free;
            end;
         end;
      end;
   end
   else
   begin
      FMenu:=nil;
      FCombo.Free;
      FSpeed.Width:=width;
   end;
end;
procedure TComboSpeedButton.SetFlat(Value:Boolean);
begin
   if FFlat<>value then
   begin
      FFlat:=value;
      FSpeed.Flat:=FFlat;
      if assigned(FMenu) then
         Fcombo.Flat:=FFlat;
   end;
end;
procedure TComboSpeedButton.SetGlyph(Value:TBitmap);
begin
   FGlyph.Assign(Value);
   FSpeed.Glyph:=FGlyph;
end;
procedure TComboSpeedButton.SetNumGlyphs(Value:TNumGlyphs);
begin
   if FNumGlyphs<> Value then
   begin
      FNumGlyphs:=Value;
      FSpeed.NumGlyphs:=Value;
   end;
end;
procedure TComboSpeedButton.SetLayout(Value:TButtonLayout);
begin
   if FLayout<> Value then
   begin
      FLayout:=Value;
      FSpeed.Layout:=Value;
   end;
end;
procedure TComboSpeedButton.Clickbutton(sender:tobject);
var t:TPoint;
begin
   t.X:=left;
   t.Y:=top+Height;
   t:= parent.clienttoscreen(t);
   PopupMenu.Popup(t.X,t.Y);
   FCombo.Down:=false;
end;
Procedure TComboSpeedButton.Clickspeed(sender:tobject);
begin
   self.OnClick(sender);
end;
Procedure TComboSpeedButton.DblClickspeed(sender:tobject);
begin
   if assigned(FOnDblclick) then FOnDblclick(sender);
end;
procedure TComboSpeedButton.MouseDownSpeed(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
   if Assigned(FOnMousedown) then FOnMouseDown(Sender,Button,Shift, X, Y)
end;
procedure TComboSpeedButton.MouseMoveSpeed(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
begin
   if Assigned(FOnMouseMove) then FOnMouseMove(Sender,Shift,X, Y)
end;
procedure TComboSpeedButton.MouseUpSpeed(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
   if Assigned(FOnMouseup) then FOnMouseup(Sender,Button,Shift, X, Y)
end;
procedure TComboSpeedButton.SetEnabled(Value:Boolean);
begin
   if FEnabled<>Value then
   begin
      FEnabled:=Value;
      if assigned(FMenu) then
         FCombo.Enabled:=FEnabled;
      FSpeed.Enabled:=FEnabled;
   end;
end;
procedure TComboSpeedButton.WMPaint(var Message: TWMPaint);
begin
   if not FGlyph.Empty then
      if FSpeed.Glyph.Empty then
         FSpeed.Glyph:=FGlyph;
   inherited;
end;
procedure Register;
begin
  RegisterComponents('HWS', [TComboSpeedButton]);
end;

end.
