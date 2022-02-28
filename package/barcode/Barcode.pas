unit Barcode;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ClipBrd, Printers;

type
  TAuthor = class(TPersistent)
  private
    FName  : string;
    FPhone  : string;
    FEmail : string;
    procedure SetName(Nome : string);
    procedure SetPhone(Fone : string);
    procedure SetEmail(Mail : string);
  protected
  public
    constructor Create;
  published
    property Name : string read FName write SetName;
    property Phone : string read FPhone write SetPhone;
    property Email : string read FEmail write SetEmail;
  end;

  TBarcodeType = (btInterleaved2of5, btCode39, btEAN13);

  TUnitType = (cm, inch);

  TBarcode = class(TGraphicControl)
  private
    { Private declarations }
    FBarStr          : string;
    FBitmap          : TBitmap;
    FBarcodeType     : TBarcodeType;
    FDigits          : string;
    FVersion         : string;
    FAuthor          : TAuthor;
    FBarCaption      : Boolean;
    FRescaleEAN      : Boolean;
    FAutoWidth       : Boolean;
    FBarColor,
    FBackgroundColor : TColor;
    function MontaPar(A,B : Integer) : string;
    function EAN13DV(Value : string) : Char;
    procedure SetBarStr(Value : string);
    procedure SetBarcodeType(BarcodeType : TBarcodeType);
    procedure SetDigits(Value : string);
    procedure SetVersion(Version : string);
    procedure SetBarCaption(Value : Boolean);
    procedure SetRescaleEAN(Value : Boolean);
    procedure SetBarColor(Value : TColor);
    procedure SetAutoWidth(Value : Boolean);
    procedure SetBackgroundColor(Value : TColor);
    procedure DrawBars(CallPaintEvent : Boolean);
    procedure FontChange(Sender : TObject);
    property Bitmap : TBitmap read FBitmap;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
    procedure BarcodeCopy;
    function SaveBarcode(FileName : string) : Boolean;
    procedure BarcodeCustomPrint(bcX, bcY, bcWidth, bcHeight : Real; UnitType : TUnitType);
    procedure BarcodePrint(bcX, bcY : Real; UnitType : TUnitType);
  published
    { Published declarations }
    property Font;
    property Enabled;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property AutoWidth : Boolean read FAutoWidth write SetAutoWidth;
    property BarColor : TColor read FBarColor write SetBarColor;
    property BackgroundColor : TColor read FBackgroundColor write SetBackgroundColor;
    property BarcodeType : TBarcodeType read FBarcodeType write SetBarcodeType;
    property Digits : string read FDigits write SetDigits;
    property Version : string read FVersion write SetVersion;
    property Author : TAuthor read FAuthor write FAuthor;
    property BarCaption : Boolean read FBarCaption write SetBarCaption;
    property RescaleEAN : Boolean read FRescaleEAN write SetRescaleEAN;
  end;

  function DelphiIsRunning: Boolean;

procedure Register;

const
  cName = 'HWS Web Solution';
  cPhone = '';
  cEmail = 'suporte@cybercon.com.br';
  Ver = 'Registered 2.0';
  ITF : array[0..9] of string[5] = ('00110'{0},'10001'{1},'01001'{2},'11000'{3},'00101'{4},
                                    '10100'{5},'01100'{6},'00011'{7},'10010'{8},'01010'{9});
  C39 : array[0..43] of string[15] = ('BEBEEEBBBEBBBEB', {'0'}
                                      'BBBEBEEEBEBEBBB', {'1'}
                                      'BEBBBEEEBEBEBBB', {'2'}
                                      'BBBEBBBEEEBEBEB', {'3'}
                                      'BEBEEEBBBEBEBBB', {'4'}
                                      'BBBEBEEEBBBEBEB', {'5'}
                                      'BEBBBEEEBBBEBEB', {'6'}
                                      'BEBEEEBEBBBEBBB', {'7'}
                                      'BBBEBEEEBEBBBEB', {'8'}
                                      'BEBBBEEEBEBBBEB', {'9'}
                                      'BBBEBEBEEEBEBBB', {'A'}
                                      'BEBBBEBEEEBEBBB', {'B'}
                                      'BBBEBBBEBEEEBEB', {'C'}
                                      'BEBEBBBEEEBEBBB', {'D'}
                                      'BBBEBEBBBEEEBEB', {'E'}
                                      'BEBBBEBBBEEEBEB', {'F'}
                                      'BEBEBEEEBBBEBBB', {'G'}
                                      'BBBEBEBEEEBBBEB', {'H'}
                                      'BEBBBEBEEEBBBEB', {'I'}
                                      'BEBEBBBEEEBBBEB', {'J'}
                                      'BBBEBEBEBEEEBBB', {'K'}
                                      'BEBBBEBEBEEEBBB', {'L'}
                                      'BBBEBBBEBEBEEEB', {'M'}
                                      'BEBEBBBEBEEEBBB', {'N'}
                                      'BBBEBEBBBEBEEEB', {'O'}
                                      'BEBBBEBBBEBEEEB', {'P'}
                                      'BEBEBEBBBEEEBBB', {'Q'}
                                      'BBBEBEBEBBBEEEB', {'R'}
                                      'BEBBBEBEBBBEEEB', {'S'}
                                      'BEBEBBBEBBBEEEB', {'T'}
                                      'BBBEEEBEBEBEBBB', {'U'}
                                      'BEEEBBBEBEBEBBB', {'V'}
                                      'BBBEEEBBBEBEBEB', {'W'}
                                      'BEEEBEBBBEBEBBB', {'X'}
                                      'BBBEEEBEBBBEBEB', {'Y'}
                                      'BEEEBBBEBBBEBEB', {'Z'}
                                      'BEEEBEBEBBBEBBB', {'-'}
                                      'BBBEEEBEBEBBBEB', {'.'}
                                      'BEEEBBBEBEBBBEB', {'#'}
                                      'BEEEBEBBBEBBBEB', {'*'}
                                      'BEEEBEEEBEEEBEB', {'$'}
                                      'BEEEBEEEBEBEEEB', {'/'}
                                      'BEEEBEBEEEBEEEB', {'+'}
                                      'BEBEEEBEEEBEEEB'  {'%'});
  EANA : array[0..9] of string[7] = ('EEEBBEB'{0},'EEBBEEB'{1},
                                     'EEBEEBB'{2},'EBBBBEB'{3},
                                     'EBEEEBB'{4},'EBBEEEB'{5},
                                     'EBEBBBB'{6},'EBBBEBB'{7},
                                     'EBBEBBB'{8},'EEEBEBB'{9});
  EANB : array[0..9] of string[7] = ('EBEEBBB'{0},'EBBEEBB'{1},
                                     'EEBBEBB'{2},'EBEEEEB'{3},
                                     'EEBBBEB'{4},'EBBBEEB'{5},
                                     'EEEEBEB'{6},'EEBEEEB'{7},
                                     'EEEBEEB'{8},'EEBEBBB'{9});
  EANC : array[0..9] of string[7] = ('BBBEEBE'{0},'BBEEBBE'{1},
                                     'BBEBBEE'{2},'BEEEEBE'{3},
                                     'BEBBBEE'{4},'BEEBBBE'{5},
                                     'BEBEEEE'{6},'BEEEBEE'{7},
                                     'BEEBEEE'{8},'BBBEBEE'{9});
  MarginV = 6;
  MarginH = 14;

implementation

procedure Register;
begin
  RegisterComponents('HWS', [TBarcode]);
end;

{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TAuthor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}

constructor TAuthor.Create;
begin
  inherited Create;
  FName := cName;
  FPhone := cPhone;
  FEmail := cEmail;
end;

procedure TAuthor.SetName(Nome : string);
begin
  {}
end;

procedure TAuthor.SetPhone(Fone : string);
begin
  {}
end;

procedure TAuthor.SetEmail(Mail : string);
begin
  {}
end;

{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TBarcode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}

constructor TBarcode.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
  FBitmap := TBitmap.Create;
  FAuthor := TAuthor.Create;
  FDigits := '000000000000';
  FRescaleEAN := True;
  FVersion := Ver;
  FBarColor := clBlack;
  FBackgroundColor := clWhite;
  Font.Height := Height div 9;
  Font.OnChange := FontChange;
  SetBarStr(FDigits);
  FAutoWidth := False;
  Width := Length(FBarStr);
  Height := 70;
  DrawBars(True);
end;

destructor TBarcode.Destroy;
begin
  FAuthor.Free;
  FBitmap.Free;
  inherited Destroy;
end;

function DelphiIsRunning: Boolean;
var
  H1, H2, H3, H4 :HWND;
const
  A1 : array[0..12] of char = 'TApplication'#0;
  A2 : array[0..15] of char = 'TAlignPalette'#0;
  A3 : array[0..18] of char = 'TPropertyInspector'#0;
  A4 : array[0..11] of char = 'TAppBuilder'#0;
begin
  H1 := FindWindow(A1, nil);
  H2 := FindWindow(A2, nil);
  H3 := FindWindow(A3, nil);
  H4 := FindWindow(A4, nil);
  Result := (H1<>0) and (H2<>0) and (H3<>0) and (H4<>0);
end;

procedure TBarcode.FontChange(Sender : TObject);
begin
  if FBarcaption then
    DrawBars(True);
end;

procedure TBarcode.SetBarcodeType(BarcodeType : TBarcodeType);
begin
  FBarcodeType := BarcodeType;
  SetBarStr(FDigits);
  DrawBars(True);
end;

procedure TBarcode.SetBarStr(Value : string);
var
  f : integer;
  DV : Char;
begin
  if FBarcodeType = btInterleaved2of5 then
    begin
      FBarStr := 'BEBE';
      if (Length(Value) / 2) <> (Length(Value) div 2) then
        begin
          {The digits count is odd}
          if Value[1] = '0'
            then Delete(Value,1,1)
            else Value := '0' + Value;
        end;
      for f := 1 to Length(Value) div 2 do
        FBarStr := FBarStr + MontaPar(StrToInt(Value[f*2-1]), StrToInt(Value[f*2]));
      FBarStr := FBarStr + 'BBBEB';
    end else
  if FBarcodeType = btCode39 then
    begin
      FBarStr := C39[39] + 'E';
      for f := 1 to Length(Value) do
        begin
          if Value[f] in ['A'..'Z'] then
            FBarStr := FBarStr + C39[Ord(UpperCase(Value[f])[1]) - 55] + 'E';
          if Value[f] in ['0'..'9'] then
            FBarStr := FBarStr + C39[Ord(UpperCase(Value[f])[1]) - 48] + 'E';
          if Value[f] = '-' then FBarStr := FBarStr + C39[36] + 'E';
          if Value[f] = '.' then FBarStr := FBarStr + C39[37] + 'E';
          if Value[f] = '#' then FBarStr := FBarStr + C39[38] + 'E';
          if Value[f] = '$' then FBarStr := FBarStr + C39[40] + 'E';
          if Value[f] = '/' then FBarStr := FBarStr + C39[41] + 'E';
          if Value[f] = '+' then FBarStr := FBarStr + C39[42] + 'E';
          if Value[f] = '%' then FBarStr := FBarStr + C39[43] + 'E';
        end;
      FBarStr := FBarStr + C39[39];
    end else
  if FBarcodeType = btEAN13 then
    begin
      DV := EAN13DV(Value);
      Value := Value + DV;
      FBarStr := 'BEB';             {Inital Guard}
      case Value[1] of
        '0' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANA[StrToInt(Value[3])] +
                                   EANA[StrToInt(Value[4])] + EANA[StrToInt(Value[5])] +
                                   EANA[StrToInt(Value[6])] + EANA[StrToInt(Value[7])];
        '1' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANA[StrToInt(Value[3])] +
                                   EANB[StrToInt(Value[4])] + EANA[StrToInt(Value[5])] +
                                   EANB[StrToInt(Value[6])] + EANB[StrToInt(Value[7])];
        '2' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANA[StrToInt(Value[3])] +
                                   EANB[StrToInt(Value[4])] + EANB[StrToInt(Value[5])] +
                                   EANA[StrToInt(Value[6])] + EANB[StrToInt(Value[7])];
        '3' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANA[StrToInt(Value[3])] +
                                   EANB[StrToInt(Value[4])] + EANB[StrToInt(Value[5])] +
                                   EANB[StrToInt(Value[6])] + EANA[StrToInt(Value[7])];
        '4' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANB[StrToInt(Value[3])] +
                                   EANA[StrToInt(Value[4])] + EANA[StrToInt(Value[5])] +
                                   EANB[StrToInt(Value[6])] + EANB[StrToInt(Value[7])];
        '5' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANB[StrToInt(Value[3])] +
                                   EANB[StrToInt(Value[4])] + EANA[StrToInt(Value[5])] +
                                   EANA[StrToInt(Value[6])] + EANB[StrToInt(Value[7])];
        '6' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANB[StrToInt(Value[3])] +
                                   EANB[StrToInt(Value[4])] + EANB[StrToInt(Value[5])] +
                                   EANA[StrToInt(Value[6])] + EANA[StrToInt(Value[7])];
        '7' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANB[StrToInt(Value[3])] +
                                   EANA[StrToInt(Value[4])] + EANB[StrToInt(Value[5])] +
                                   EANA[StrToInt(Value[6])] + EANB[StrToInt(Value[7])];
        '8' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANB[StrToInt(Value[3])] +
                                   EANA[StrToInt(Value[4])] + EANB[StrToInt(Value[5])] +
                                   EANB[StrToInt(Value[6])] + EANA[StrToInt(Value[7])];
        '9' : FBarStr := FBarStr + EANA[StrToInt(Value[2])] + EANB[StrToInt(Value[3])] +
                                   EANB[StrToInt(Value[4])] + EANA[StrToInt(Value[5])] +
                                   EANB[StrToInt(Value[6])] + EANA[StrToInt(Value[7])];
      end;
      FBarStr := FBarStr + 'EBEBE'; {Central Guard}
      FBarStr := FBarStr + EANC[StrToInt(Value[8])] + EANC[StrToInt(Value[9])] +
                           EANC[StrToInt(Value[10])] + EANC[StrToInt(Value[11])] +
                           EANC[StrToInt(Value[12])] + EANC[StrToInt(Value[13])];
      FBarStr := FBarStr + 'BEB';   {Final Guarda}
    end;
end;

procedure TBarcode.SetDigits(Value : string);
var
  f : Integer;
  HaveAlpha : Boolean;
begin
  {Testing if the Component is not Registered and Delphi is not running}
  if (FVersion[1] = 'U') and (not DelphiIsRunning) then
    Exit;
  {Testing if the Value parameter have some alphanumeric chars}
  HaveAlpha := False;
  Value := UpperCase(Value);
  for f := 1 to Length(Value) do
    HaveAlpha := (HaveAlpha or not (Value[f] in ['0'..'9']));
  {Testing if some change is necessary}
  if HaveAlpha and (FBarcodeType <> btCode39) then
    FBarcodeType := btCode39;
  if (FBarcodeType = btEAN13) and (Length(Value) <> 12) then
    if HaveAlpha then
      FBarcodeType := btCode39
    else
      FBarcodeType := btInterleaved2of5;
  {Changing the internal value of Digits property}
  FDigits := Value;
  {Making the string}
  SetBarStr(Value);
  if Value = '' then FBarStr := '';
  DrawBars(True);
end;

function TBarcode.EAN13DV(Value : string) : Char;
var
  C : array[2..13] of Char;
  N : array[2..13] of Byte;
  f : Byte;
  D : string[2];
begin
  for f := 2 to 13 do
    C[f] := Value[14-f];
  for f := 2 to 13 do
    N[f] := StrToInt(C[f]);
  D := IntToStr(10 - (((N[13]+N[11]+N[9]+N[7]+N[5]+N[3]) +
                      ((N[12]+N[10]+N[8]+N[6]+N[4]+N[2])*3)) mod 10));
  if Length(D) = 2 then
    Result := '0'
  else
    Result := D[1];
end;

function TBarcode.MontaPar(A,B : integer) : string;
var
  Par : string;
  f : integer;
begin
  Par := '';
  for f := 1 to 5 do
    begin
      if ITF[A][f] = '0' then
        Par := Par + 'B'    {Barra Estreita}
      else
        Par := Par + 'BBB'; {Barra Larga}
      if ITF[B][f] = '0' then
        Par := Par + 'E'    {Barra Estreita}
      else
        Par := Par + 'EEE'; {Barra Larga}
    end;
  Result := Par;
end;

procedure TBarcode.DrawBars(CallPaintEvent : Boolean);
var
  f,H,W  : integer;
  BC     : string;   {BarCaption}
begin
  {Definindo o Comprimento do Componente}
  if FBarCaption then
    for f := 1 to MarginH do
      FBarStr := 'E' + FBarStr + 'E';
  {Definindo as medidas do Bitmap}
  FBitmap.Width := Length(FBarStr);
  FBitmap.Height := Height;
  {Definindo o Fundo do Componente}
  FBitmap.Canvas.Brush.Style := bsSolid;
  FBitmap.Canvas.Brush.Color := FBackgroundColor;
  {Definindo a Altura do Gráfico}
  FBitmap.Height := Height;
  {Desenhando o Retangulo do Fundo}
  FBitmap.Canvas.FillRect(BoundsRect);
  {Desenhando as Barras}
  for f := 1 to Length(FBarStr) do
    begin
      if FBarStr[f] = 'B' then
        FBitmap.Canvas.Brush.Color := FBarColor
      else
        FBitmap.Canvas.Brush.Color := FBackgroundColor;
      FBitmap.Canvas.FillRect(Rect(f-1, 0, f, FBitmap.Height));
    end;
  {Imprimindo o BarCaption}
  if FBarCaption then
    begin
      {Margens Horizontais}
      FBitmap.Canvas.Brush.Color := FBackgroundColor;
      FBitmap.Canvas.FillRect(Rect(0, 0, FBitmap.Width, MarginV));
      FBitmap.Canvas.FillRect(Rect(0, FBitmap.Height - MarginV,
                                   FBitmap.Width, FBitmap.Height));
      {A variável BC contém a string que será impressa}
      if FBarcodeType = btEAN13 then
        BC := FDigits + EAN13DV(FDigits)
      else
        BC := FDigits;
      FBitmap.Canvas.Font.Assign(Font);
      FBitmap.Canvas.Brush.Color := FBackgroundColor;
      FBitmap.Canvas.Font.Color := FBarColor;
      W := FBitmap.Canvas.TextWidth(BC);
      H := FBitmap.Canvas.TextHeight(BC);
      if FBarcodeType <> btEAN13 then
        begin
          FBitmap.Canvas.FillRect(Rect((FBitmap.Width - W) div 2 - 2,
                                         FBitmap.Height - H,
                                         (FBitmap.Width - W) div 2 + W + 2,
                                         FBitmap.Height));
          FBitmap.Canvas.TextOut((FBitmap.Width - W) div 2,
                                        FBitmap.Height - H, BC);
        end
      else
        begin
          FBitmap.Canvas.FillRect(Rect((MarginH + 3),
                                         FBitmap.Height - H,
                                         (MarginH + 3 + 42),
                                         FBitmap.Height));
          FBitmap.Canvas.FillRect(Rect((MarginH + 3 + 42 + 5),
                                         FBitmap.Height - H,
                                         (MarginH + 3 + 42 + 5 + 42),
                                         FBitmap.Height));
          FBitmap.Canvas.TextOut((MarginH + 3) +
                                        ((42) -
                                        FBitmap.Canvas.TextWidth(Copy(BC,2,6))) div 2,
                                         FBitmap.Height - H, Copy(BC,2,6));
          FBitmap.Canvas.TextOut((MarginH + 3 + 42 + 5) +
                                        ((42) -
                                        FBitmap.Canvas.TextWidth(Copy(BC,2,6))) div 2,
                                         FBitmap.Height - H, Copy(BC,8,6));
          FBitmap.Canvas.TextOut((MarginH -
                                        FBitmap.Canvas.TextWidth(BC[1])) div 2,
                                        FBitmap.Height - H, BC[1]);
        end;
    end;
  if FBarCaption then
    begin
      Delete(FBarStr, 1, MarginH);
      Delete(FBarStr, Length(FBarStr) - MarginH + 1, MarginH);
    end;
  if CallPaintEvent then
    Invalidate;
end;

procedure TBarcode.Paint;
var
  Dest : TRect;
begin
  if FAutoWidth or (Width = 0) then
    Width := FBitmap.Width;
  if FRescaleEAN and (FBarcodeType = btEAN13) then
    Height := Round(Width * 0.70);
  Dest := Rect(0, 0, Width, Height);
  inherited Canvas.StretchDraw(Dest, FBitmap);
end;

procedure TBarcode.SetVersion(Version : string);
begin
  FVersion := Ver;
end;

procedure TBarcode.SetBarCaption(Value : Boolean);
begin
  FBarCaption := Value;
  DrawBars(True);
end;

procedure TBarcode.SetRescaleEAN(Value : Boolean);
begin
  FRescaleEAN := Value;
  DrawBars(True);
end;

procedure TBarcode.SetBarColor(Value : TColor);
begin
  FBarColor := Value;
  DrawBars(True);
end;

procedure TBarcode.SetAutoWidth(Value : Boolean);
begin
  FAutoWidth := Value;
  DrawBars(True);
end;

procedure TBarcode.SetBackgroundColor(Value : TColor);
begin
  FBackgroundColor := Value;
  DrawBars(True);
end;

procedure TBarcode.BarcodeCopy;
begin
  ClipBoard.Assign(FBitmap);
end;

function TBarcode.SaveBarcode(FileName : string) : Boolean;
begin
  try
    Bitmap.SaveToFile(FileName);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TBarcode.BarcodeCustomPrint(bcX, bcY, bcWidth, bcHeight : Real;
  UnitType : TUnitType);
var
  Info: PBitmapInfo;
  InfoSize: DWORD;
  Image: Pointer;
  ImageSize: DWORD;
  Bits: HBITMAP;
  PrintWidth, PrintHeight: Longint;
  PrnHDC : HDC;
  PrnXRes, PrnYRes : Real;
  Dest : TRect;
begin
  if not Printer.Printing then Exit;
  PrnHDC := Printer.Handle;
  PrnXRes := GetDeviceCaps(PrnHDC, HORZRES) / GetDeviceCaps(PrnHDC, HORZSIZE) * 10; {pixels / cm}
  PrnYRes := GetDeviceCaps(PrnHDC, VERTRES) / GetDeviceCaps(PrnHDC, VERTSIZE) * 10;
  if UnitType = inch then
    begin
      PrnXRes := PrnXRes * 2.54;
      PrnYRes := PrnYRes * 2.54;
    end;
  {Defining where the Barcode bitmap will be printed}
  Dest.Left := Round(bcX * PrnXRes);
  Dest.Top := Round(bcY * PrnYRes);
  Dest.Right := Round(Dest.Left + bcWidth * PrnXRes) + 1;
  Dest.Bottom := Round(Dest.Top + bcHeight * PrnYRes) + 1;
  {Printing}
  Canvas.Lock;
  try
    with Printer do
    begin
      Bits := FBitmap.Handle;
      GetDIBSizes(Bits, InfoSize, ImageSize);
      Info := AllocMem(InfoSize);
      try
        Image := AllocMem(ImageSize);
        try
          GetDIB(Bits, 0, Info^, Image^);
          PrintWidth := Dest.Right - Dest.Left + 1;
          PrintHeight := Dest.Bottom - Dest.Top + 1;
          StretchDIBits(Printer.Canvas.Handle, Dest.Left, Dest.Top,
                        PrintWidth, PrintHeight, 0, 0,
                        FBitmap.Width, FBitmap.Height,
                        Image, Info^, DIB_RGB_COLORS, SRCCOPY);
        finally
          FreeMem(Image, ImageSize);
        end;
      finally
        FreeMem(Info, InfoSize);
      end;
    end;
  finally
    Canvas.Unlock;
  end;
end;

procedure TBarcode.BarcodePrint(bcX, bcY : Real; UnitType : TUnitType);
var
  ScrHDC : HDC;
  H : HWnd;
  ScrSizeX, ScrSizeY,
  ScrXRes, ScrYRes : Real;
begin
  {Screen resolution in pixels / cm}
  H := (Self.Owner as TWinControl).Handle;
  ScrHDC := GetDeviceContext(H);
  ScrXRes := GetDeviceCaps(ScrHDC, HORZRES) / GetDeviceCaps(ScrHDC, HORZSIZE) * 10;
  ScrYRes := GetDeviceCaps(ScrHDC, VERTRES) / GetDeviceCaps(ScrHDC, VERTSIZE) * 10;
  if UnitType = inch then
    begin
      {cm to inch}
      ScrXRes := ScrXRes * 2.54;
      ScrYRes := ScrYRes * 2.54;
    end;
  ScrSizeX := Width / ScrXRes;
  ScrSizeY := Height / ScrYRes;
  BarcodeCustomPrint(bcX, bcY, ScrSizeX, ScrSizeY, UnitType);
end;

end.
