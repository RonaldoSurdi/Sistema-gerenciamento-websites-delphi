{###############################################################################
Programa: Bt_color
Módulo: Dialog Color RGB.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_color;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, ShellCtrls;

type
  TBt_color = class(TForm)
    Panelfnd: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    Image1: TImage;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fgKillOutline;
    procedure bgKillOutline;
    procedure fgDrawOutline(X,Y: integer);
    procedure bgDrawOutline(X,Y: integer);
    procedure ClosestColour(InColour: TColor; var X,Y: integer);
  private
    r,g,b      : integer ;
    bgIcolor   : longint ;
    bgJcolor   : TColor ;
    fgIcolor   : longint ;
    fgJcolor   : TColor ;
    bgMyPen    : TPenStyle ;
    fgMyPen    : TPenStyle ;
    bgOdrawn   : boolean;
    fgOdrawn   : boolean;
    fgOline  : array [0..4] of TPoint ;
    bgOline  : array [0..4] of TPoint ;
    ForeGround : boolean;
    { Private declarations }
  public
    Bt_Confere:boolean;
    colorhtml,colorhtml2: string;
    colorrgb,colorrgb2: TColor;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

{  ThhHTMLColor = class(TComponent)
  private
    bgSPen   : TPenStyle ;
    fgSPen   : TPenStyle ;
    bgPcolor : Tcolor;
    bgHcolor : longint;
    fgPcolor : Tcolor;
    fgHcolor : longint;
  public
    //function Execute: Boolean;
  published
    property bgPCCol   : Tcolor  read bgPcolor write bgPcolor;
    property bgHTMLCol : longint read bgHcolor write bgHcolor;
    property fgPCCol   : Tcolor  read fgPcolor write fgPcolor;
    property fgHTMLCol : longint read fgHcolor write fgHcolor;
    property bgOutline : TPenStyle read bgSPen write bgSPen default psDot;
    property fgOutline : TPenStyle read fgSPen write fgSPen default psSolid;
  end;  }

var
  Bt_color: TBt_color;

implementation
Uses hwsfunctions;

{$R *.dfm}

{function ThhHTMLColor.Execute: Boolean;
begin
  with TBt_color.Create(Application) do
  try
    bgJcolor := bgPcolor ;
    bgIcolor := ColorToHTML( bgJcolor ) ;
    fgJcolor := fgPcolor ;
    fgIcolor := ColorToHTML( fgJcolor ) ;
    Panel1.color := bgJcolor ;
    Panel1.Font.Color := fgJColor ;
    Panel1.caption := Format( 'fg=#%6.6x bg=#%6.6x' , [fgIcolor,bgIcolor]) ;
    bgMyPen := bgSPen ;
    fgMyPen := fgSPen ;
    Result := (ShowModal = mrOk);
    if Result then begin
      bgPcolor := bgJcolor ;
      bgHcolor := bgIcolor ;
      fgPcolor := fgJcolor ;
      fgHcolor := fgIcolor ;
    end;
  finally
    Free;
  end;
end; }

procedure TBt_color.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= caHide;
end;

procedure TBt_color.FormShow(Sender: TObject);
begin
     Bt_Confere:=false;
end;

procedure TBt_color.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_color.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_color.SpeedButton1Click(Sender: TObject);
begin
     Bt_Confere:=true;
     Close;
end;

procedure TBt_color.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_color.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_color.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_color.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      bt_color.Left:= bt_color.Left-(mv_mouse.x-x);
      bt_color.Top:= bt_color.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_color.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      bt_color.Left := bt_color.Left - (mv_mouse.x -x);
      bt_color.Top := bt_color.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_color.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_color.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_color.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      bgOdrawn:= false;
      fgOdrawn:= false;
      ForeGround:= false;
end;

procedure TBt_color.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var ImgColor : longint ;
begin
  ForeGround := (Button = mbRight) ;
//  with ThhHTMLcolor do begin
    x := (x DIV 18);
    if x > 17 then x := 17 ;
    x := x*18 + 9 ;
    y := (y DIV 18);
    if y > 12 then y := 12 ;
    y := y*18 + 9 ;

    ImgColor := ColorToRGB(Canvas.Pixels[x,y]) ;
    ExtractRGB( ImgColor , r , g , b ) ;
    r := ((r + 8) DIV $11) * $11 ;
    g := ((g + 8) DIV $11) * $11 ;
    b := ((b + 8) DIV $11) * $11 ;

    if ForeGround then begin
      bgKillOutline;
      fgKillOutline;
      bgDrawOutline( (bgOline[0].X+9) DIV 18,
                     (bgOline[0].Y+9) DIV 18) ;
      fgDrawOutline( x DIV 18,y DIV 18) ;
      fgJcolor := Tcolor((b SHL 16) + (G SHL 8) + r) ;
      fgIcolor := ColorToHTML( fgJcolor ) ;
      Panel1.Font.Color := fgJColor;
      colorhtml:= Format('#%6.6x',[fgIcolor]);
      colorrgb:= fgJColor;
    end else begin
      bgKillOutline;
      fgKillOutline;
      fgDrawOutline( (fgOline[0].X+9) DIV 18,
                     (fgOline[0].Y+9) DIV 18) ;
      bgDrawOutline( x DIV 18,y DIV 18) ;
      bgJcolor := Tcolor((b SHL 16) + (G SHL 8) + r) ;
      bgIcolor := ColorToHTML( bgJcolor ) ;
      Panel1.color := bgJcolor ;
      colorhtml2:= Format('#%6.6x',[bgIcolor]);
      colorrgb2:= bgJColor;
    end ;
//  end ;
  Panel1.caption := Format( 'fg=#%6.6x bg=#%6.6x' , [fgIcolor,bgIcolor]) ;
end;

procedure TBt_color.fgKillOutline;
begin
  Canvas.Pen.Width := 1 ;
  if fgOdrawn then begin
    Canvas.Pen.Style := psSolid ;
    Canvas.Pen.Color := clSilver ;
    Canvas.PolyLine( fgOline ) ;
    fgOdrawn := false ;
  end;
end;

procedure TBt_color.bgKillOutline;
begin
  Canvas.Pen.Width := 1 ;
  if bgOdrawn then begin
    Canvas.Pen.Style := psSolid ;
    Canvas.Pen.Color := clSilver ;
    Canvas.PolyLine( bgOline ) ;
    bgOdrawn := false ;
  end;
end;

procedure TBt_color.fgDrawOutline( X, Y : integer ) ;
var Yext, Xext : integer ;
    ImgColor : TColor ;
begin
  Canvas.Pen.Width := 1 ;
  Xext := 16 ;
  Yext := 16 ;
  if (X >= 0) AND (Y >= 0) then begin
    if (Y=12) AND (X IN [0,1,16,17]) then begin
      if (X=1) or (X=17) then X := X-1 ;
      Xext := Xext+18;
    end;
    X := X*18 + 1 ;
    Y := Y*18 + 1 ;
    fgOline[0].X := X ;      fgOline[0].Y := Y ;
    fgOline[1].X := X+Xext ; fgOline[1].Y := Y ;
    fgOline[2].X := X+Xext ; fgOline[2].Y := Y+Yext ;
    fgOline[3].X := X ;      fgOline[3].Y := Y+Yext ;
    fgOline[4].X := X ;      fgOline[4].Y := Y ;
    { Get colour in the block clicked }
    ImgColor := ColorToRGB(Canvas.Pixels[x+8,y+8]) ;
    { Break down to colours and force to $11 boundaries }
    ExtractRGB( ImgColor , r , g , b ) ;
    r := ((r + 8) DIV $11) * $11 ;
    g := ((g + 8) DIV $11) * $11 ;
    b := ((b + 8) DIV $11) * $11 ;
    if (r+g+b < 384) AND (fgMyPen =  psSolid) then Canvas.Pen.Color := clWhite
    else Canvas.Pen.Color := clBlack ;
    Canvas.Pen.Style := fgMyPen ;
    Canvas.PolyLine( fgOline ) ;
    fgOdrawn := true ;
   end;
end;

procedure TBt_color.bgDrawOutline( X, Y : integer ) ;
var Yext,Xext : integer ;
    ImgColor : TColor ;
begin
  Canvas.Pen.Width := 1 ;
  Xext := 16 ;
  Yext := 16 ;
  if (X >= 0) AND (Y >= 0) then begin
    if (Y=12) AND (X IN [0,1,16,17]) then begin
      if (X=1) or (X=17) then X := X-1 ;
      Xext := Xext+18;
    end;
    X := X*18 + 1 ;
    Y := Y*18 + 1 ;
    bgOline[0].X := X ;      bgOline[0].Y := Y ;
    bgOline[1].X := X+Xext ; bgOline[1].Y := Y ;
    bgOline[2].X := X+Xext ; bgOline[2].Y := Y+Yext ;
    bgOline[3].X := X ;      bgOline[3].Y := Y+Yext ;
    bgOline[4].X := X ;      bgOline[4].Y := Y ;
    { Get colour in the block clicked }
    ImgColor := ColorToRGB(Canvas.Pixels[x+8,y+8]) ;
    { Break down to colours and force to $11 boundaries }
    ExtractRGB( ImgColor , r , g , b ) ;
    r := ((r + 8) DIV $11) * $11 ;
    g := ((g + 8) DIV $11) * $11 ;
    b := ((b + 8) DIV $11) * $11 ;
    if (r+g+b < 384) AND (bgMyPen =  psSolid) then Canvas.Pen.Color := clWhite
    else Canvas.Pen.Color := clBlack ;
    Canvas.Pen.Style := bgMyPen ;
    Canvas.PolyLine( bgOline ) ;
    bgOdrawn := true ;
  end;
end;

procedure TBt_color.ClosestColour( InColour : TColor ; var X,Y : integer ) ;
var InRed,InGreen,InBlue,CkRed,CkGreen,CkBlue,Xindex,Yindex,Ystart: integer;
    CkColour,Diff,MinDiff: longint;
begin
  MinDiff := 257*257*257 ;
  X := -1 ;
  Y := -1 ;
  CkColour := ColorToRGB( InColour ) ;
  ExtractRGB( CkColour , InRed, InGreen, InBlue ) ;
  { Greys use only the bottom line, all others the full matrix }
  if (InRed = InGreen) and (InRed = InBlue) then Ystart := 12
  else Ystart := 0 ;
  { Scan the matrix for a near match }
  for Yindex := Ystart to 12 do begin
    for Xindex := 0 to 17 do begin
      { Get colour in the block clicked }
      CkColour := ColorToRGB(Canvas.Pixels[Xindex*18+8,Yindex*18+8]) ;
      ExtractRGB( CkColour , CkRed, CkGreen, CkBlue ) ;
      Diff := (CkRed-InRed)*(CkRed-InRed)
            + (CkGreen-InGreen)*(CkGreen-InGreen)
            + (CkBlue-InBlue)*(CkBlue-InBlue) ;
      if Diff < MinDiff then begin
        MinDiff := Diff ;
        X := Xindex ;
        Y := Yindex ;
        if (MinDiff = 0) then EXIT ;
      end;
    end;
  end;
end;

end.
