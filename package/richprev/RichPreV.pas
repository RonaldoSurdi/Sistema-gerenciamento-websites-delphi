unit RichPreV;

interface
uses
 {$IFDEF WIN32}
  Windows,
 {$ELSE}
  WinProcs, WinTypes,
 {$endIF}
 SysUtils, Messages, Classes, Graphics, Controls, ExtCtrls, StdCtrls,
 Buttons, Dialogs, Printers, Comctrls, Forms, RichEdit;

const
   MaxPages  = 500;
   MaxZeilen = 300;
   cMaxShowPages = 12;

  sz_ImageClick      : PCHAR = 'ImageClick';

var
  W_ImageClick : Word;


Type
   TWords = array[0..1,0..10] of string[20];

   TZeile = record
      start,ende, Xstart,Xende, Y, Ytwips : Integer;
      Alignment  : TAlignment;
   end;

   TScaling = (pscDot,          { Skalierungseinheit "Pixel" (geräteabhängig) }
               pscMil,          {                    1/1000"                  }
               pscMetric,       {                    1 mm                      }
               pscMetric10,     {                    1/10mm                   }
               pscMetric100);   {                    1/100mm                  }

   PrintModeType = (notprinting, printing);

   TVPI = class(TWinControl)
     LImage : TImage;
     LPanel : TPanel;
   private
     { Private declarations }
      procedure _OnMouseDown(Sender: TObject; Button: TMouseButton;
                             Shift: TShiftState; X, Y: Integer);
      function Image_create : boolean;
      procedure Image_destroy;
   protected
    { Public declarations }
      index  : Integer;
      start, ende, Zeilen : Integer;
      Zeile  : array[0..MaxZeilen] of TZeile;
      constructor Create(findex : Integer;AOwner: TComponent);
      destructor destroy;
  end;

 TRichPreV = class(TPanel)
   private
    fRichEdit        : TRichEdit;
    Image1,tmpImage  : TImage;
    fMarginLock      : boolean;
    PLst             : TList;

    SPoint    : array[0..24] of TPoint;

    k         : Double;
    fScaling  : TScaling;

    pLogPixelsX,
    pLogPixelsY,
    pPhysicalWidth,
    pPhysicalHeight,
    pPhysicalOffsetX,
    pPhysicalOffsetY,
    fTWIPS               : Integer;

    str : TWords;

    RightMargin, LeftMargin, BottomMargin, TopMargin                     : TLabel;
    LeftMarginBevel, RightMarginBevel, TopMarginBevel, BottomMarginBevel : TBeveL;
    MenuePanel, rightPanel                                               : TPanel;
    PreViewButton, PrintButton                                           : TSpeedButton;
    StatusBar1                                                           :  TStatusBar;
    fLanguage : Byte;
    ZoomLabel                  : TLabel;
    ZoomComboBox               : TComboBox;
    ZoomFactor, old_ZoomFactor : Double;

    Pagelabel         : TLabel;
    PageEdit          : TEdit;
    PageUpDown        : TUpDown;

    MaxPageLabel      : TLabel;
    MaxPageEdit       : TEdit;
    MaxPageUpDown     : TUpDown;

    PageScroll : TUpDown;
    ScrollBox1 : TScrollBox;
    old_X, old_Y,
    old_ScrollBoxvertPosition, old_ScrollBoxhorzPosition : Cardinal;
    ScrollBoxDragging : boolean;

    old_PageScrollPosition : Cardinal;
    PageNumberLabel : TLabel;

    Image_index, FDragOfs  : Integer;
    FDragging : boolean;

    XResolution, YResolution,
    MinMarginLeft, MinMarginRight, MinMarginTop, MinMarginBottom,
    fMarginLeft, fMarginRight, fMarginTop, fMarginBottom,
    oldfMarginLeft, oldfMarginRight, oldfMarginTop, oldfMarginBottom,
    PrintWidth, PrintHeight,
    fPageWidth, fPageHeight                                    : Integer;

    AfactX, AfactY : Double;

    fMaxpage, fMaxShowpage, CurrPage, ClickPage  : Integer;
    RatioPage, XScreenRatio,YScreenRatio         : Double;

    minpage, maxpage                : Integer;
    printmode                       : PrintModeType;


    selLen, SelStart,old_Line, old_Width, old_Height : Integer;
    old_Align : TAlign;
    tmpRect : TRect;

    //-----------------------------------------------------------
    MarginButton  : TSpeedButton;
    MarginForm: TPanel;

    mesurementLabel, topLabel,leftLabel,rightLabel,bottomLabel: TLabel;
    topEdit,leftEdit,rightEdit,bottomEdit: TEdit;
    topUpDown,leftUpDown,rightUpDown,bottomUpDown: TUpDown;
    OkBitBtn,AbortBitBtn,CancelBitBtn: TBitBtn;

   //-----------------------------------------------------------

    procedure ScrollBoxMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ScrollBoxMouseMove(Sender: TObject;
     Shift: TShiftState; X, Y: Integer);
    procedure ScrollBoxMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1Exit(Sender: TObject);
    procedure LeftMarginMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LeftMarginMouseMove(Sender: TObject;
     Shift: TShiftState; X, Y: Integer);
    procedure LeftMarginMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

    procedure RightMarginMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RightMarginMouseMove(Sender: TObject;
     Shift: TShiftState; X, Y: Integer);
    procedure RightMarginMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TopMarginMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TopMarginMouseMove(Sender: TObject;
     Shift: TShiftState; X, Y: Integer);
    procedure TopMarginMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BottomMarginMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BottomMarginMouseMove(Sender: TObject;
     Shift: TShiftState; X, Y: Integer);
    procedure BottomMarginMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MarginsSetUp;
    procedure ImageSetRect;
    procedure PrinterParam;
    procedure ZoomComboBoxChange(Sender: TObject);
    procedure PageEditChange(Sender: TObject);
    procedure MaxPageEditChange(Sender: TObject);
    procedure MultiImageSetRect;
    procedure SetRichedit_Rect( RRect : TRect);
    procedure vorSeitenUmbruch;
    procedure SeitenUmbruch;
    procedure PreViewButtonClick(Sender: TObject);
    procedure MarginButtonClick(Sender: TObject);
    procedure PreView(p : Integer;  fImage : TObject);
    function  PrintDoc : Boolean;

    procedure Page_in_HaupFenster(Page : Integer);
    procedure _OnScroll(Sender: TObject; var AllowChange: Boolean);
    procedure OnScroll_Images;
    procedure OnPrintRichEdit(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
                  Shift: TShiftState; X, Y: Integer);
    procedure SetRichEdit(Value: TRichEdit);
    procedure SetMarginTop(Value: Integer);
    procedure SetMarginRight(Value: Integer);
    procedure SetMarginLeft(Value: Integer);
    procedure SetMarginBottom(Value: Integer);
    procedure ScaleMarginLeft;
    procedure ScaleMarginTop;
    procedure ScaleMarginRight;
    procedure ScaleMarginBottom;
    procedure SetMarginLock(Value: boolean);
    procedure SetScaling(Value : TScaling);
    procedure SetLanguage(Value : Byte);

    function  DotValX(ScaledVal : INTEGER) : INTEGER;
    function  DotValY(ScaledVal : INTEGER) : INTEGER;
    function  ScaleValX(DotVal : INTEGER) : INTEGER;
    function  ScaleValY(DotVal : INTEGER) : INTEGER;
    procedure AbortBitBtnClick(Sender: TObject);
    procedure CancelBitBtnClick(Sender: TObject);
    procedure OkBitBtnClick(Sender: TObject);

    procedure leftEditExit(Sender: TObject);
    procedure topEditExit(Sender: TObject);
    procedure rightEditExit(Sender: TObject);
    procedure bottomEditExit(Sender: TObject);

      { Private declarations }
   protected
     { Protected declarations }

    procedure ScrollBox1WNDPROC(var Message : TMessage);
    procedure WNDPROC(var message : TMessage); override;
    procedure zoomImagePixels(page : cardinal; zImage : TImage);

   public
    { Public declarations }

    constructor Create(AOwner: TComponent); override;
    destructor destroy;
    procedure StartPreView;
    procedure GetPageImage(page : Integer;var Image : TImage );
    function GetPageLineCount(page : Integer): Integer;
    function GetPageCount: Integer;

    function GetMarginRight  : Integer;
    function GetMarginLeft   : Integer;
    function GetMarginBottom : Integer;
    function GetMarginTop    : Integer;

   published
    { Published declarations }
    property Scaling : TScaling   read fScaling write   SetScaling default pscDot;
    property MarginTop: Integer read fMarginTop write SetMarginTop  default 0;
    property MarginBottom: Integer read fMarginBottom write SetMarginBottom default 0;
    property MarginLeft: Integer read fMarginLeft write SetMarginLeft default 0;
    property MarginRight: Integer read fMarginRight write SetMarginRight default 0;

    property RichEdit : TRichEdit read fRichEdit write SetRichEdit default Nil;
    property MarginLock : boolean read fMarginLock write SetMarginLock default false;
    property Language : Byte read fLanguage write SetLanguage default 0;

  end;


procedure Register;

implementation
{$R RichPreV.RES}
var
  MImageWidth, MImageHeight : Integer;


//__________________________________________________________________________




//--------------------------------------------------------------------



constructor  TVPI.Create(findex : Integer;AOwner: TComponent);
begin
   inherited Create(AOwner);
   LImage := NIL;
   LPanel := TPanel.Create(AOwner);
     with LPanel do
     begin
      Parent := TWinControl(AOwner);
      Color:=CLWhite;
      Borderwidth := 1;
      BevelInner:= bvLowered;
      BevelOuter:= bvLowered;
      Align :=  alNone;
      Visible := false;
     end;
   index := findex;
   Zeilen :=0 ;
end;

destructor  TVPI.Destroy;
begin
  Image_destroy;
  inherited destroy;
end;

function  TVPI.Image_create : boolean;
begin
   Result := false;
   if (LImage = NIL) AND (LPanel <> NIL) then
   begin
     LImage := TImage.Create(Self.Owner);
     with LImage do
     begin
       Parent := Self.LPanel;
       top := 0;
       left := 0;
       Autosize := false;
       Visible := true;
       Enabled := true;
       Transparent := true;
       Stretch := true;
       Align := alNone;
       SetBounds(0 ,0 ,MImageWidth ,MImageheight);
       OnMouseDown := _OnMouseDown;
     end;
     Result := true;
   end;
end;

procedure  TVPI.Image_destroy;
begin
  if (LImage <> NIL) AND (LPanel <> NIL) then
   begin
    LImage.Hide;
    LPanel.Hide;
    LImage.destroy;
    LImage := NIL;
  end;
end;

procedure  TVPI._OnMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if Button = mbLeft then
   begin
      sendMessage(TVPI(Owner).handle ,W_ImageClick ,index,index);
   end;
end;
//------------------------------------------------------------------------------


constructor TRichPreV.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Parent := TWinControl(AOwner);
 //--------------------------
  Borderwidth := 1;
  BevelInner:= bvLowered;
  BevelOuter:= bvLowered;
  Height := Parent.Height;
  Width := Parent.Width;
  Align := alClient;

 //--------------------------
  Image_index := 0;
  TabOrder := 0;
  OnMouseDown    := FormMouseDown;


  str[0,0] := ' Seite ';
  str[0,1] := ' Seitenzahl : ';
  str[0,2] := ' Zoom % ';
  str[0,3] := 'sichtbare Seiten ';
  str[0,4] := 'Print';
  str[0,5] := 'Preview';
  str[0,6] := 'Cancel';
  str[0,7] := 'Margins';

  str[1,0] := ' Page ';
  str[1,1] := 'total pages : ';
  str[1,2] := ' Zoom % ';
  str[1,3] := 'visible Pages';
  str[1,4] := 'Print';
  str[1,5] := 'Preview';
  str[1,6] := 'Abbruch';
  str[1,7] := 'Ränder';

  PLst := TList.Create;
  PLst.Capacity := 10;

  MenuePanel := TPanel.Create(Self);
  with  MenuePanel  do
   begin
    Parent := Self;
    Height := 41;
    Align := alTop;
    Borderwidth := 1;
    BevelInner := bvLowered;
    BevelOuter := bvLowered;
    ParentFont := true;
  end;



 //----------------------------------
  StatusBar1 :=  TStatusBar.Create(Self);
  with Statusbar1 do
  begin
   parent := self;
   Align := albottom;
   height := 24;
   panels.add;
   panels[0].Width := 140;
   panels.add;
   panels[1].Width := 80;
   panels.add;
   panels[2].Width := 80;
   panels.add;
   panels[3].Width := 80;
   panels.add;
   panels[4].Width := 80;
   panels.add;
   panels[5].Width := 90;
   SimplePanel := False;
   SizeGrip := false;
  end;

  ZoomLabel := TLabel.Create(Self);
  with ZoomLabel   do
  begin
    Parent :=  MenuePanel;
    Left := 1;
    Top := 2;
    Height :=  MenuePanel.Height-4;
    Align := alLeft;
    Alignment := taCenter;
    AutoSize := true;
    Caption := str[0,2];
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clWindowText;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    ParentFont := False;
    Layout := tlCenter;
    ParentFont := true;
  end;

  ZoomComboBox := TComboBox.Create(Self);
  with ZoomComboBox do
  begin
    Parent := MenuePanel;
    Left := ZoomLabel.Left + ZoomLabel.Width +2;
    Top := 8;
    Width := 70;
    Height := 24;
    ItemHeight := 16;
    Items.Strings[0] := 'alClient';
    Items.Strings[1] := '25';
    Items.Strings[2] := '50';
    Items.Strings[3] := '75' ;
    Items.Strings[4] := '100';
    Items.Strings[5] := '125';
    Items.Strings[6] := '150';
    Items.Strings[7] := '200';
    Items.Strings[7] := '0';

    TabOrder := 4;
    Text := '100';
    OnChange := ZoomComboBoxChange;
    ParentFont := true;
  end;

  PageLabel := TLabel.Create(Self);
  with PageLabel do
  begin
    Parent := MenuePanel;
    Left :=  ZoomComboBox.Left + ZoomComboBox.Width +2 ;
    Top := 12;
    Height :=  MenuePanel.Height-8;
    Alignment := taCenter;
    AutoSize := true;
    Caption := str[0,0];
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clWindowText;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    ParentFont := False;
    Layout := tlCenter;
    ParentFont := true;
    Visible := false;
  end;

  PageEdit := TEdit.Create(Self);
  with PageEdit do
  begin
    Parent := MenuePanel;
    Left := PageLabel.left + PageLabel.Width + 4;
    Top := 8;
    Width := 31;
    Height := 24;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clWindowText;
    Font.Height := -13;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    ParentFont := False;
    ReadOnly := True;
    TabOrder := 1;
    Text := '0';
    OnChange := PageEditChange;
    ParentFont := true;
    Visible := false;
  end;

  PageUpDown := TUpDown.Create(Self);
  with PageUpDown do
  begin
    Parent := MenuePanel;
    Min := 1;
    Max := 500;
    Position := 1;
    TabOrder := 5;
    Wrap := true;
    Associate := PageEdit;
    ParentFont := true;
    Visible := false;
  end;

  //----------------------------------

  MaxPageLabel := TLabel.Create(Self);
  with MaxPageLabel do
  begin
    Parent := MenuePanel;
    Left :=  PageEdit.Left + PageEdit.Width + PageUpDown.Width +5 ;
    Top := 4;
    Height :=  MenuePanel.Height-6;
    Alignment := taLeftJustify;
    WordWrap := true;
    AutoSize := true;
    Caption := str[0,3];
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clWindowText;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    ParentFont := False;
    Layout := tlTop;
    ParentFont := true;
    Visible := false;
  end;

  MaxPageEdit := TEdit.Create(Self);
  with MaxPageEdit do
  begin
    Parent := MenuePanel;
    Left := MaxPageLabel.left + MaxPageLabel.Width + 4;
    Top := 8;
    Width := 31;
    Height := 24;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clWindowText;
    Font.Height := -13;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    ParentFont := False;
    ReadOnly := True;
    TabOrder := 6;
    Text := '0';
    OnChange := MaxPageEditChange;
    ParentFont := true;
    Visible := false;
  end;
  MaxPageUpDown := TUpDown.Create(Self);
  with MaxPageUpDown do
  begin
    Parent := MenuePanel;
    Min := 0;
    Max := 5;
    Position := 0;
    TabOrder := 7;
    Wrap := false;
    Associate := MaxPageEdit;
    ParentFont := true;
    Visible := false;
  end;


 //------------------------------------------
  rightPanel :=  TPanel.Create(Self);
  with rightPanel do
  begin
    Parent := MenuePanel;
    Width := 228;
    Align := alRight;
    Caption := '';
    ParentFont := true;
  end;

  PageScroll := TUpDown.Create(Self);
  with PageScroll do
  begin
    Parent := MenuePanel;
    Orientation := udHorizontal;
    Align := alNone;
    left := MaxPageLabel.left+MaxPageLabel.width + 60;
    height := 24;
    width := 120;
    top := 8;
    Min := 0;
    Max := 20;
    Position := 0;
    TabOrder := 8;
    Wrap := false;
    Visible := false;
    ParentFont := true;
    OnChanging := _OnScroll;
  end;
  old_PageScrollPosition := PageScroll.Position;

  MarginButton := TSpeedButton.Create(Self);
  with MarginButton do
  begin
    Parent := rightPanel;
    Left := 4;
    Top := 2;
    Width := 80;
    Height := 31;
    Caption := str[0,7];
    Hint := 'Set Margins';
    Font.Color := clGreen;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    TabOrder := 2;
    ParentShowHint := False;
    ShowHint := True;
    OnClick := MarginButtonClick;
    ParentFont := false;
  end;

  PrintButton := TSpeedButton.Create(Self);
  with PrintButton do
  begin
    Parent := rightPanel;
    Left := MarginButton.Left + MarginButton.Width + 2;
    Top := 2;
    Width := 54;
    Height := 31;
    Caption := str[0,4];
    Hint := 'Set Margins';
    Font.Color := clGreen;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    ParentShowHint := False;
    TabOrder := 3;
    ShowHint := True;
    ParentFont := false;
    OnClick := OnPrintRichEdit;
  end;

  PreViewButton := TSpeedButton.Create(Self);
  with PreViewButton do
  begin
    Parent := rightPanel;
    Left := PrintButton.Left + PrintButton.Width + 2;
    Top := 2;
    Width := 80;
    Height := 31;
    Caption := str[0,5];
    Hint := 'Print preview';
    Font.Color := clRed;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    TabOrder := 2;
    ParentShowHint := False;
    ShowHint := True;
    OnClick := PreViewButtonClick;
    ParentFont := false;
  end;

  ScrollBox1 := TScrollBox.Create(Self);
  with ScrollBox1 do
  begin
    Parent := Self;
    Left := 20;
    Top := MenuePanel.Height + 15;
    Width :=  150;
    Height := Round(150 * 1.42);
    HorzScrollBar.Increment := 20;
    HorzScrollBar.Tracking := True;
    VertScrollBar.Increment := 20;
    VertScrollBar.Tracking := True;
    Align := alNone;
    AutoScroll := false;
    Color := clWhite;
    ParentColor := False;
    TabOrder := 9;
    horzScrollBar.Visible := false;
    vertScrollBar.Visible := false;
    horzScrollBar.Tracking := true;
    vertScrollBar.Tracking := true;
    ParentFont := false;
    OnMouseDown :=  ScrollBoxMouseDown;
    OnMouseMove := ScrollBoxMouseMove;
    OnMouseUp :=  ScrollBoxMouseUp;
    OnExit :=  ScrollBox1Exit;
  end;

  Image1 := TImage.Create(Self);
  with Image1 do
    begin
      Parent := ScrollBox1;
      Name := 'Image1';
      Enabled := true;
      Transparent := true;
      AutoSize := false;
      Stretch := true;
      Align := alNone;
  end;

  RightMargin := TLabel.Create(Self);
  with  RightMargin do
  begin
    Parent := Self;
    Left := 120;
    Top := ScrollBox1.Top -12;
    Width := 12;
    Height := 15;
    Alignment := taCenter;
    Caption := 'ê';
    DragCursor := crArrow;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clPurple;
    Font.Height := -13;
    Font.Name := 'Wingdings';
    Font.Style := [];
    ParentFont := False;
    OnMouseDown := RightMarginMouseDown;
    OnMouseMove := RightMarginMouseMove;
    OnMouseUp := RightMarginMouseUp;
  end;

  LeftMargin := TLabel.Create(Self);
  with  LeftMargin do
  begin
    Parent := Self;
    Left := 50;
    Top := ScrollBox1.Top -12;
    Width := 12;
    Height := 15;
    Alignment := taCenter;
    Caption := 'ê';
    DragCursor := crArrow;
    Font.Charset := DEFAULT_CHARSET;
    Font.Color := clTeal;
    Font.Height := -13;
    Font.Name := 'Wingdings';
    Font.Style := [];
    ParentFont := False;
    OnMouseDown := LeftMarginMouseDown;
    OnMouseMove := LeftMarginMouseMove;
    OnMouseUp := LeftMarginMouseUp;
  end;

  TopMargin := TLabel.Create(Self);
  with  TopMargin do
  begin
    Parent := Self;
    Width := 12;
    Left := ScrollBox1.Left - width;
    Top := 18;
    Height := 20;
    Alignment := taCenter;
    Caption := 'è';
    Font.Charset := SYMBOL_CHARSET;
    Font.Color := clTeal;
    Font.Height := -13;
    Font.Name := 'Wingdings';
    Font.Style := [];
    ParentFont := False;
    OnMouseDown := TopMarginMouseDown;
    OnMouseMove := TopMarginMouseMove;
    OnMouseUp := TopMarginMouseUp;
  end;

  BottomMargin := TLabel.Create(Self);
  with  BottomMargin do
  begin
    Parent := Self;
    Left := TopMargin.left;
    Top := 100;
    Width := TopMargin.Width;
    Height := TopMargin.Height;
    Alignment := taCenter;
    Caption := 'è';
    Font.Charset := SYMBOL_CHARSET;
    Font.Color := clPurple;
    Font.Height := -13;
    Font.Name := 'Wingdings';
    Font.Style := [];
    ParentFont := False;
    OnMouseDown := BottomMarginMouseDown;
    OnMouseMove := BottomMarginMouseMove;
    OnMouseUp := BottomMarginMouseUp;
  end;

  LeftMarginBevel := TBevel.Create(Self);
  with LeftMarginBevel do
  begin
    Parent := ScrollBox1;
    Left := LeftMargin.Left;
    Top := 0;
    Width := 2;
    Height := ScrollBox1.Height;
    Shape := bsLeftLine;
    ParentFont := true;
  end;

  RightMarginBevel := TBevel.Create(Self);
  with RightMarginBevel do
  begin
    Parent := ScrollBox1;
    Left   := RightMargin.Left;
    Top := 0;
    Width := 2;
    Height := ScrollBox1.Height;
    Shape := bsLeftLine;
    ParentFont := true;
  end;

  TopMarginBevel := TBevel.Create(Self);
  with TopMarginBevel do
  begin
    Parent := ScrollBox1;
    Left :=  0;
    Top := 10;
    Width := ScrollBox1.Width;
    Height := 2;
    Shape := bsTopLine;
    ParentFont := true;
  end;

  BottomMarginBevel := TBevel.Create(Self);
  with BottomMarginBevel do
  begin
    Parent := ScrollBox1;
    Left :=  0;
    Top := 150;
    Width := ScrollBox1.Width;
    Height := 2;
    Shape := bsTopLine;
    ParentFont := true;
  end;

   //-------------------------------

 MarginForm := TPanel.Create(Self);
 with  MarginForm do
 begin
  Parent := TWinControl(Self.Owner);
  Align := alNone;
  Color := clYellow;
  Left := ScrollBox1.Left +ScrollBox1.Width +30;
  Top := MenuePanel.Height + 20;
  Width := 225;
  Height := 240;
  BevelInner := bvRaised;
  BevelOuter := bvLowered;
  BevelWidth := 2;
  BorderStyle := bsSingle;
  Font.Charset := DEFAULT_CHARSET;
  Font.Color := clBlack;
  Font.Height := -17;
  Font.Name := 'MS Sans Serif';
  Font.Style := [];
  ParentFont := False;
  TabOrder := 0;
  Visible := false;
 end;

  mesurementLabel:= TLabel.Create(Self);
  with  mesurementLabel do
  begin
    Parent := MarginForm;
    Left := 24;
    Top := 200;
    Width := 23;
    Height := 20;
    Caption := '--';
  end;

  topLabel:= TLabel.Create(Self);
  with topLabel do
  begin
    Parent := MarginForm;
    Left := 24;
    Top := 20;
    Width := 23;
    Height := 20;
    Caption := 'top';
  end;

  leftLabel:= TLabel .Create(Self);
  with  leftlabel do
  begin
    Parent := MarginForm;
    Left := 24;
    Top := 52;
    Width := 23;
    Height := 20;
    Caption := 'left';
  end;

  rightLabel:= TLabel.Create(Self);
  with  rightLabel do
  begin
    Parent := MarginForm;
    Left := 24;
    Top := 84;
    Width := 33;
    Height := 20;
    Caption := 'right';
  end;

  bottomLabel:= TLabel .Create(Self);
  with  bottomLabel do
  begin
    Parent := MarginForm;
    Left := 24;
    Top := 116;
    Width := 51;
    Height := 20;
    Caption := 'bottom';
  end;

  topEdit:= TEdit.Create(Self);
  with  topEdit do
  begin
    Parent := MarginForm;
    Left := 104;
    Top := 12;
    Width := 81;
    Height := 28;
    TabOrder := 0;
    Text := '0';
    OnExit := topEditExit;
  end;

  leftEdit:= TEdit.Create(Self);
  with  leftEdit do
  begin
    Parent := MarginForm;
    Left := 104;
    Top := 44;
    Width := 81;
    Height := 28;
    TabOrder := 1;
    Text := '0';
    OnExit := leftEditExit;
  end;
  rightEdit:= TEdit.Create(Self);
  with  rightEdit do
  begin
    Parent := MarginForm;
    Left := 104;
    Top := 76;
    Width := 81;
    Height := 28;
    TabOrder := 2;
    Text := '0';
    OnExit := rightEditExit;
  end;

  bottomEdit:= TEdit.Create(Self);
  with  bottomEdit do
  begin
    Parent := MarginForm;
    Left := 104;
    Top := 108;
    Width := 81;
    Height := 28;
    TabOrder := 3;
    Text := '0';
    OnExit := bottomEditExit;
  end;

  topUpDown:= TUpDown.Create(Self);
  with  topUpDown do
  begin    Parent := MarginForm;
    Left := 185;
    Top := 12;
    Width := 19;
    Height := 28;
    Associate := topEdit;
    Min := 0;
    Position := 0;
    TabOrder := 4;
    Wrap := False;
  end;
  leftUpDown:= TUpDown.Create(Self);
  with  leftUpDown do
  begin
    Parent := MarginForm;
    Left := 185;
    Top := 44;
    Width := 19;
    Height := 28;
    Associate := leftEdit;
    Min := 0;
    Position := 0;
    TabOrder := 5;
    Wrap := False;
  end;
  rightUpDown:= TUpDown.Create(Self);
  with  rightUpDown do
  begin    Parent := MarginForm;
    Left := 185;
    Top := 76;
    Width := 19;
    Height := 28;
    Associate := rightEdit;
    Min := 0;
    Position := 0;
    TabOrder := 6;
    Wrap := False;
  end;

  bottomUpDown:= TUpDown.Create(Self);
  with   bottomUpDown do
  begin    Parent := MarginForm;
    Left := 185;
    Top := 108;
    Width := 19;
    Height := 28;
    Associate := bottomEdit;
    Min := 0;
    Position := 0;
    TabOrder := 7;
    Wrap := False;
  end;

  OKBitBtn:= TBitBtn.Create(Self);
  with  OKBitBtn do
  begin
    Parent := MarginForm;
    Caption := 'OK';
    Font.Color := clGreen;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    Left := 16;
    Top := 165;
    Width := 75;
    Height := 25;
    TabOrder := 8;
    Kind :=  bkCustom;
    OnClick := OkBitBtnClick;
  end;

  AbortBitBtn:= TBitBtn.Create(Self);
  with AbortBitBtn do
  begin
    Parent := MarginForm;
    Caption := 'Exit';
    Font.Color := clRed;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    Left := 128;
    Top := 200;
    Width := 75;
    Height := 25;
    TabOrder := 9;
    Kind :=  bkCustom;
    OnClick := AbortBitBtnClick;
  end;

  CancelBitBtn:= TBitBtn.Create(Self);
  with CancelBitBtn do
  begin
    Parent := MarginForm;
    Caption := 'Reset';
    Font.Color := clblack;
    Font.Height := -17;
    Font.Name := 'MS Sans Serif';
    Font.Style := [fsBold];
    Left := 128;
    Top := 165;
    Width := 75;
    Height := 25;
    TabOrder := 9;
    Kind :=  bkCustom;
    OnClick := CancelBitBtnClick;
  end;

  old_ZoomFactor := 100;
  ZoomFactor := 100;
  CurrPage := 0;
  ClickPage := 1000;
  fMaxpage := 0;
  fMaxShowPage:= 0;

  fMarginLeft   := 5;
  fMarginRight  := 5;
  fMarginTop    := 5;
  fMarginBottom := 5;
  PrinterParam;

  ImageSetRect;
  ScrollBox1.WindowProc:= ScrollBox1WNDPROC;
end;

destructor TRichPreV.Destroy;
begin
  PLst.Free;
  inherited destroy;
end;
//------------------------------------------------------------------------------
procedure TRichPreV.ScrollBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if Button = mbRight then
   begin
      old_ScrollBoxvertPosition  := ScrollBox1.vertScrollBar.Position;
      old_ScrollBoxhorzPosition  := ScrollBox1.horzScrollBar.Position ;
      old_X := X;
      old_Y := Y;
      ScrollBoxDragging := true;
   end
   else
   if Button = mbLeft then
   begin
      FormMouseDown( Sender,mbLeft,[ssLeft],0,0)
   end;
end;

procedure TRichPreV.ScrollBoxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if  ScrollBoxDragging  then
 begin
   ScrollBox1.vertScrollBar.Position := (Y - old_Y ) + old_ScrollBoxvertPosition;
   ScrollBox1.horzScrollBar.Position := (X - old_X ) + old_ScrollBoxhorzPosition;
 end;
end;

procedure TRichPreV.ScrollBoxMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   ScrollBoxDragging := False;
end;
procedure TRichPreV.ScrollBox1Exit(Sender: TObject);
begin
   ScrollBoxDragging := False;
end;


//------------------------------------------------------------------------------

procedure TRichPreV.LeftMarginMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left + X - FDragOfs;

  if  LeftMargin.Left < ScrollBox1.Left then
     LeftMargin.Left := ScrollBox1.Left
     else
     if  LeftMargin.Left > ScrollBox1.Left + ScrollBox1.Width then
       LeftMargin.Left := ScrollBox1.Left + ScrollBox1.Width;

  FDragging := true;
end;

procedure TRichPreV.LeftMarginMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if FDragging AND (LeftMargin.Left + X - FDragOfs < RightMargin.Left ) then
 begin
   LeftMargin.Left :=  LeftMargin.Left + X - FDragOfs ;
   LeftMarginBevel.Left   := LeftMargin.Left + FDragOfs - ScrollBox1.Left;

   if  LeftMargin.Left < ScrollBox1.Left then
     LeftMargin.Left := ScrollBox1.Left
     else
     if  LeftMargin.Left > ScrollBox1.Left + ScrollBox1.Width then
       LeftMargin.Left := ScrollBox1.Left + ScrollBox1.Width;


  if LeftMargin.Left < Round(MinMarginLeft/AFactX-FDragOfs)+ScrollBox1.Left then
   fMarginLeft:= MinMarginLeft
   else
   fMarginLeft:= Round(AFactX*(LeftMargin.Left-ScrollBox1.Left + FDragOfs));

   StatusBar1.Panels[1].Text := Format('left : %d',  [ScaleValX(fMarginLeft)]);

   if MarginForm.visible then
   begin
     rightUpDown.Max := ScaleValX(fPageWidth - fMarginleft);
     leftUpDown.Position := ScaleValX(fMarginLeft);
   end;

 end;
end;

procedure TRichPreV.LeftMarginMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
end;

procedure TRichPreV.RightMarginMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left + X - FDragOfs;
  if  TLabel(Sender).Left < ScrollBox1.Left then
     TLabel(Sender).Left := ScrollBox1.Left
     else
     if  TLabel(Sender).Left > ScrollBox1.Left  + ScrollBox1.Width then
       TLabel(Sender).Left := ScrollBox1.Left  + ScrollBox1.Width;
  FDragging := True;
end;

procedure TRichPreV.RightMarginMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if FDragging AND (rightMargin.Left + X - FDragOfs > LeftMargin.Left) then
  begin
    rightMargin.Left := rightMargin.Left + X - FDragOfs;
    RightMarginBevel.Left   := RightMargin.Left + FDragOfs - ScrollBox1.Left;

    if  TLabel(Sender).Left < ScrollBox1.Left  then
     TLabel(Sender).Left := ScrollBox1.Left
     else
     if  TLabel(Sender).Left > ScrollBox1.Left  + ScrollBox1.Width then
       TLabel(Sender).Left := ScrollBox1.Left  + ScrollBox1.Width;

    if RightMargin.Left > Round((fPageWidth-MinMarginRight)/AFactX-FDragOfs)+ScrollBox1.Left  then
     fMarginRight := MinMarginRight
     else
     fMarginRight := Round(fPageWidth-(AFactX*(RightMargin.Left-ScrollBox1.Left+ FDragOfs)));

     StatusBar1.Panels[2].Text := Format('right : %d',  [ScaleValX(fMarginRight)]);

    if MarginForm.visible then
     begin
      leftUpDown.Max := ScaleValX(fPageWidth - fMarginright);
      rightUpDown.Position := ScaleValX(fMarginright);
     end;
  end;
end;

procedure TRichPreV.RightMarginMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
end;

procedure TRichPreV.TopMarginMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Height div 2);
  TLabel(Sender).Top :=  TLabel(Sender).Top + Y  - FDragOfs  ;

   if  TLabel(Sender).Top < ScrollBox1.top +2 then
     TLabel(Sender).Top := ScrollBox1.top +2
     else
     if  TLabel(Sender).Top > ScrollBox1.top + ScrollBox1.Height then
       TLabel(Sender).Top := ScrollBox1.top +ScrollBox1.Height;

  FDragging := true;
end;

procedure TRichPreV.TopMarginMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if FDragging AND (TopMargin.Top + Y - FDragOfs  < BottomMargin.Top) then
 begin
   TopMargin.Top :=  TopMargin.Top + Y - FDragOfs ;
   TopMarginBevel.Top := TopMargin.Top -ScrollBox1.top + FDragOfs;

   if  TLabel(Sender).Top <  ScrollBox1.top +2 then
     TLabel(Sender).Top := ScrollBox1.top +2
     else
     if  TLabel(Sender).Top > ScrollBox1.top +ScrollBox1.Height  then
       TLabel(Sender).Top := ScrollBox1.top +ScrollBox1.Height;

    if TopMargin.Top < Round(MinMarginTop/AFactY + FDragOfs)+  ScrollBox1.top then
     fMarginTop := MinMarginTop
     else
     fMarginTop := Round(AFactY*(TopMargin.Top - ScrollBox1.top));

    StatusBar1.Panels[3].Text := Format('top : %d',  [ScaleValY(fMargintop)]);

    if MarginForm.visible then
     begin
       bottomUpDown.Max := ScaleValY(fPageHeight - fMarginTop);
       TopUpDown.Position := ScaleValY(fMarginTop);
     end;
 end;
end;

procedure TRichPreV.TopMarginMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
end;

procedure TRichPreV.BottomMarginMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Height div 2);
  TLabel(Sender).Top := TLabel(Sender).Top + Y - FDragOfs;

   if  TLabel(Sender).Top < ScrollBox1.top +2 then
     TLabel(Sender).Top := ScrollBox1.top +2
     else
     if  TLabel(Sender).Top > ScrollBox1.top + ScrollBox1.Height  then
       TLabel(Sender).Top := ScrollBox1.top +ScrollBox1.Height ;

    FDragging := True;
end;

procedure TRichPreV.BottomMarginMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if FDragging AND (bottomMargin.top + Y - FDragOfs > TopMargin.Top) then
  begin
    bottomMargin.top := bottomMargin.top + Y - FDragOfs;
    BottomMarginBevel.Top   := BottomMargin.Top-ScrollBox1.top + FDragOfs;

  if  TLabel(Sender).Top <  ScrollBox1.top +2 then
     TLabel(Sender).Top := ScrollBox1.top+2
     else
     if  TLabel(Sender).Top > ScrollBox1.top +ScrollBox1.Height then
       TLabel(Sender).Top := ScrollBox1.top +ScrollBox1.Height;
   if BottomMargin.Top > ScrollBox1.top+  ScrollBox1.Height +ScrollBox1.vertScrollBar.Position+Round((fPageHeight-MinMarginBottom)/AFactY + FDragOfs) then
    fMarginBottom := MinMarginBottom
   else
    fMarginBottom := Round(fPageHeight  - AFactY*(BottomMargin.Top-ScrollBox1.top));

   StatusBar1.Panels[4].Text := Format('bottom : %d',  [ScaleValY(fMarginbottom)]);
   if MarginForm.visible then
    begin
      topUpDown.Max := ScaleValY(fPageHeight - fMarginBottom);
      bottomUpDown.Position := ScaleValY(fMarginBottom);
    end;

 end;
end;

procedure TRichPreV.BottomMarginMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
end;

procedure TRichPreV.MarginsSetUp;
var dummy : Integer;
begin
  FDragging := False;
  FDragOfs  := LeftMargin.Width div 2 ;

  LeftMargin.Left := Round(fMarginLeft/AFactX + FDragOfs +ScrollBox1.horzScrollBar.Position+ ScrollBox1.Left   );
  LeftMarginBevel.Height := Image1.Height;
  LeftMarginBevel.Left   := LeftMargin.Left - FDragOfs - ScrollBox1.Left;

  RightMargin.Left := Round((fPageWidth-fMarginRight)/AFactX+ FDragOfs + ScrollBox1.Left  );
  RightMarginBevel.Height := Image1.Height;
  RightMarginBevel.Left   := RightMargin.Left - FDragOfs - ScrollBox1.Left;

  FDragOfs :=   TopMargin.Height div 2;

  TopMargin.Top := Round(fMarginTop/AFactY - FDragOfs + ScrollBox1.top);
  TopMarginBevel.Width :=   Image1.Width;
  TopMarginBevel.Top := TopMargin.Top -ScrollBox1.top + FDragOfs;


  BottomMargin.Top := Round((fPageHeight-fMarginBottom)/AFactY-FDragOfs +ScrollBox1.top);
  BottomMarginBevel.Width := Image1.Width;
  BottomMarginBevel.Top   := BottomMargin.Top-ScrollBox1.top + FDragOfs;

  PrintWidth := fPageWidth   - fMarginLeft - fMarginRight  - 1;
  PrintHeight:= fPageHeight  - fMarginTop  - fMarginBottom - 1;

end;



procedure TRichPreV.ImageSetRect;
var ScrollBoxheight, VTop,VLeft,VWidth,VHeight, i : Integer;
begin
  VHeight := Round(Self.Height- MenuePanel.Height - Statusbar1.height - TopMargin.Height - 4);
  VWidth  := Round(VHeight / RatioPage)   -2;

  while  (VWidth > Self.Width  -20) do
  begin
    VWidth := Round(VWidth *0.95);
    VHeight  := Round(VWidth * RatioPage );
  end;

  VLeft   := 10;
  VTop    := MenuePanel.Height  + TopMargin.Height + 2;
  ScrollBoxheight := Self.Height- MenuePanel.Height - Statusbar1.height - TopMargin.Height - 12;
  if (ZoomComboBox.Text = 'alClient') OR ( ZoomFactor = 1000) then
  begin
    ScrollBox1.SetBounds(VLeft,VTop,Self.Width-VLeft-20,ScrollBoxheight);
    VWidth  := Round(XScreenRatio*fPageWidth);
    VHeight  := Round(YScreenRatio*fPageHeight);
    ZoomFactor := 1000;
    for i := 0 to   PLst.Count-1 do
     if assigned(TVPI(PLst.items[i]).LPanel) then TVPI(PLst.items[i]).LPanel.Visible := false;
  end
  else
  begin
     if ZoomFactor >=10 then
     begin
       VWidth := Trunc(LONGINT(fPageWidth)/XResolution * Screen.PixelsperInch/1.44);
       VWidth := Round(ZoomFactor*0.01 * VWidth);
       VHeight := Round(VWidth * RatioPage);
     end;
    if VHeight <  ScrollBoxheight  then  ScrollBoxheight := VHeight;
    if VWidth <= Self.Width-40 then
      ScrollBox1.SetBounds(VLeft,
                           VTop,
                           VWidth,
                           ScrollBoxheight)
      else
      ScrollBox1.SetBounds(VLeft,
                           VTop,
                           Self.Width-50,
                           ScrollBoxheight);
  end;


  if VWidth <= ScrollBox1.Width then
   ScrollBox1.horzScrollbar.Visible := false
    else
   begin
     ScrollBox1.horzScrollbar.Visible := true;
   end;


 if VHeight <= ScrollBox1.Height then
  ScrollBox1.vertScrollbar.Visible := false
  else
  begin
    ScrollBox1.width := ScrollBox1.width + 20;
    ScrollBox1.vertScrollbar.Visible := true;
  end;


  ScrollBox1.vertScrollBar.Increment := Round(VHeight *0.01)+1;
  ScrollBox1.horzScrollBar.Increment := Round(VWidth *0.01)+1;
  ScrollBox1.vertScrollBar.Position := 0;
  ScrollBox1.horzScrollBar.Position := 0;
  ScrollBox1.horzScrollBar.Range  := VWidth;
  ScrollBox1.vertScrollBar.Range  := VHeight;


   Image1.SetBounds( 0,0, ScrollBox1.horzScrollBar.Range,ScrollBox1.vertScrollBar.Range);

  AfactX  := fPageWidth/VWidth;
  AfactY  := fPageHeight/VHeight;

  if ZoomFactor = 0 then
  begin
    ScrollBox1.Visible := false;
    LeftMargin.Visible  := false;
    RightMargin.Visible := false;
    ScrollBox1.Width := 0;
  end
  else
  begin
    ScrollBox1.Visible := true;
    LeftMargin.Visible  := true;
    RightMargin.Visible := true;
  end;

  LeftMargin.Top    := ScrollBox1.top - LeftMargin.Height + 4;
  RightMargin.Top   := LeftMargin.Top;
  TopMargin.Left    := ScrollBox1.left - TopMargin.Width;
  BottomMargin.Left := TopMargin.Left ;

  if (PLst.Count > 1)  AND
     (Zoomfactor <> 1000) AND
     (fMaxShowPage > 0 ) then
  begin
   MultiImageSetRect;
   OnScroll_Images;
  end;

  MarginsSetUp;

  if MarginForm.Visible then
    if ScrollBox1.Left +ScrollBox1.Width  + MarginForm.width + 60 < Self.Width then
      MarginForm.Left := ScrollBox1.Left +ScrollBox1.Width +30
       else
      MarginForm.Left := Round((Self.Width - MarginForm.Width ) *0.5);

   MarginsSetUp;
  PageScroll.Position := 0;
end;

procedure TRichPreV.MultiImageSetRect;
var mtop,mleft,
    i,ii,iii, spalten,zeilen : Integer;

   procedure MultiPanels;
   var delta,MWidth, MHeight : Integer;
   begin
      MHeight := Self.Height - Menuepanel.Height - Statusbar1.height - 20 ;
      if ScrollBox1.Visible = true then
        MWidth  := Self.Width - ScrollBox1.Width -20
        else
        MWidth  := Self.Width - 20;


      MImageWidth  := MWidth;
      MImageHeight := Round(MHeight* RatioPage);
      delta := Round(0.02 * MImageWidth);

      while ( MImageHeight > MHeight) do
      begin
        MImageWidth   := MImageWidth - delta;
        MImageHeight  := Round(MImageWidth * RatioPage);
      end;

      spalten :=  MWidth div MImageWidth ;
      if spalten = 0 then spalten  := 1;

      zeilen :=  MHeight div MImageHeight ;
      if zeilen = 0 then zeilen  := 1;

      while spalten * zeilen < fMaxShowpage  do
      begin
        MImageWidth   := MImageWidth - delta;
        MImageHeight  := Round(MImageWidth * RatioPage);
        spalten :=  MWidth div MImageWidth ;
        if  spalten * zeilen >= fMaxShowpage  then break;
        zeilen :=  MHeight div MImageHeight ;
      end;
   end;
begin
  //------- Multi Page----------
  if (PLst.Count > 1)  AND
     (Zoomfactor <> 1000) AND
     (fMaxShowPage > 0 ) then
  begin

    MultiPanels;
    i := 0;
    ii := 0;
    iii := 0;
    if ScrollBox1.Visible = true then
      mleft := ScrollBox1.Left + ScrollBox1.Width + 10
      else
      mLeft := 20;

    mtop  :=  Menuepanel.Height + 16 ;

    while (i < PLst.Count )AND (i < fMaxShowpage) do
    begin
       SPoint[i].X := mleft + MImageWidth* ii;
       SPoint[i].Y := mtop +(MImageHeight + 4)* iii;
       inc(i);
       inc(ii);
       if frac(i/spalten) = 0  then begin ii := 0; inc(iii); end;
    end;
  end;
end;

procedure TRichPreV.PreViewButtonClick(Sender: TObject);
begin
  StartPreView;
end;



procedure TRichPreV.SetRichedit_Rect( RRect : TRect);
begin
 if fRichEdit <> Nil then
    sendmessage(fRichEdit.handle,EM_SETRECT, 0,Integer(@RRect));
end;

procedure TRichPreV.ZoomComboBoxChange(Sender: TObject);
var zoom : Integer;
begin
   if PLst <> NIL then
   begin
     if ZoomComboBox.Text <> ZoomComboBox.items[0] then
      Zoom := StrToIntDef(ZoomComboBox.Text, -1);
      if  (ZoomComboBox.Text = 'alClient') OR ((zoom <> -1)AND (zoom >= 10) AND (zoom <= 200)) then
      begin
        Zoomfactor := zoom;
        old_ZoomFactor :=  ZoomFactor;
         ScrollBox1.Visible := true;
        ImageSetRect;
        if PLst.Count > 0 then PreView(Image_index, Image1);
      end;
       if  (ZoomComboBox.Text = '0')then ScrollBox1.Visible := false;

    end;
end;

procedure  TRichPreV.StartPreView;
var cursor_old : Integer;
begin
   ZoomComboBox.SetFocus;

   PageUpDown.Visible := false;
   PageEdit.Visible := false;
   PageLabel.Visible := false;
   MaxPageLabel.Visible := false;
   MaxPageEdit.Visible := false;
   MaxPageUpDown.Visible := false;

   vorSeitenUmbruch;

   fMaxShowpage := 0;
   cursor_old :=  Screen.cursor;
   Screen.cursor :=  crHourGlass;

   SeitenUmbruch;

   if PLst.Count > 0 then
   begin
     if PLst.Count > cMaxShowPages then
       MaxPageUpDown.Max := cMaxShowpages
       else
       MaxPageUpDown.Max := PLst.Count;

     PageUpDown.Max := PLst.Count;
     PageUpDown.Position := 0;
     PageUpDown.Visible := true;
     PageEdit.Visible := true;
     PageLabel.Visible := true;
     MaxPageLabel.Visible := true;
     MaxPageEdit.Visible := true;
     MaxPageUpDown.Position := 0;
     MaxPageUpDown.Visible := true;
   end;


   Screen.cursor :=   cursor_old ;
   ZoomComboBox.SetFocus;
end;

//-----------------------------------------------------------------------------------
procedure TRichPreV.SeitenUmbruch;
var i, p, z,pageEnd, ScreenPrintHeight : Integer;
    zeile : TPoint;
begin

  if fRichedit <> NIL then
  begin
    ScreenPrintHeight := Round(PrintHeight * YScreenRatio);
    LockWindowUpdate(fRichEdit.Handle);
 //--------------------------------------------------------------------

    while PLst.Count > 0 do
    begin
      TVPI(PLst.Items[PLst.Count-1]).Destroy;
      PLst.Delete(PLst.Count-1);
    end;

    i := 0;
    z := 0;
    p := 0;
    pageEnd := 0;
    StatusBar1.Panels[0].Text := Format( str[Language,1]+ ' : %d',  [1]);

    PLst.Add(TVPI.Create(p, Self));

    TVPI(PLst.items[p]).Zeile[z].start := 0;
    TVPI(PLst.items[p]).Zeile[z].ende  := 0;
    TVPI(PLst.items[p]).Zeile[z].Y     := 0;
    TVPI(PLst.items[p]).start          := 0;

    while (i < fRichedit.Lines.Count) do
    begin
     fRichEdit.Selstart:= TVPI(PLst.items[p]).Zeile[z].start;
     fRichEdit.SelLength:=Length(fRichEdit.Lines[i])+2;

     //---------------------------------------------------------------
      if (length(fRichEdit.SelText) > 0 ) AND NOT
         ( fRichEdit.SelText[fRichEdit.SelLength] in [#10,#13]) then
       fRichEdit.SelLength := Length( fRichEdit.Lines[i]);

      TVPI(PLst.items[p]).Zeile[z].ende := TVPI(PLst.items[p]).Zeile[z].start + fRichEdit.SelLength;
      TVPI(PLst.items[p]).Zeile[z+1].start := TVPI(PLst.items[p]).Zeile[z].ende;

      sendmessage(RichEdit.handle,EM_POSFROMCHAR,integer(@zeile),fRichEdit.SelStart);
      TVPI(PLst.items[p]).Zeile[z].Y := zeile.y - pageEnd;
      TVPI(PLst.items[p]).Zeile[z].Ytwips := TVPI(PLst.items[p]).Zeile[z].Y * fTwips;

      TVPI(PLst.items[p]).Zeile[z].Alignment := fRichEdit.Paragraph.Alignment;
      if TVPI(PLst.items[p]).Zeile[z].Alignment <>  taLeftJustify then
      begin
       TVPI(PLst.items[p]).Zeile[z].Xstart := zeile.x;
       sendmessage(RichEdit.handle,EM_POSFROMCHAR,integer(@zeile),fRichEdit.SelStart+fRichEdit.SelLength-1);
       TVPI(PLst.items[p]).Zeile[z].Xende := zeile.x;
      end;

      //-------------- SeitenUmbruch -----------------
      if ( TVPI(PLst.items[p]).Zeile[z].Y >= ScreenPrintHeight )OR
         ( i >= fRichEdit.Lines.Count-1) then
      begin

       if  (i < 2) AND  ( TVPI(PLst.items[p]).Zeile[i].Y > ScreenPrintHeight )  then break;

       if( i >= fRichEdit.Lines.Count-1) AND
         ( TVPI(PLst.items[p]).Zeile[z].Y <
            ScreenPrintHeight -(TVPI(PLst.items[p]).Zeile[z].Y-TVPI(PLst.items[p]).Zeile[z-1].Y)-10) then
        begin
         TVPI(PLst.items[p]).Zeilen := z;
         TVPI(PLst.items[p]).ende   := TVPI(PLst.items[p]).Zeile[z].ende;
         i := 10000;
        end
       else
       begin
        TVPI(PLst.items[p]).Zeilen := z-2;
        TVPI(PLst.items[p]).ende   := TVPI(PLst.items[p]).Zeile[z-2].ende;
       end;

       if p = 0 then PreView(p, Image1);
       if  i = 10000 then break;

        PLst.Add(TVPI.Create(p+1, Self));

        TVPI(PLst.items[p+1]).Zeile[0].start := TVPI(PLst.items[p]).Zeile[z-2].ende;
        TVPI(PLst.items[p+1]).start := TVPI(PLst.items[p]).Zeile[z-2].ende;

        pageEnd :=  TVPI(PLst.items[p]).Zeile[z-1].Y + pageEnd;
        z := 0;
        inc(p);
        dec(i);
       end
       else
       begin
        inc(i);
        inc(z);
        sendMessage(fRichedit.handle,EM_LINESCROLL,0,-1);

       end;
     end;
     LockWindowUpdate(0);

     fRichEdit.SelLength:= selLen ;
     fRichEdit.SelStart := selStart;
     sendMessage(fRichedit.handle,EM_LINESCROLL,0,old_Line);

     if fMarginLock = false then
     begin
       fRichEdit.SetBounds(0,0, old_Width, old_Height);
       SetRichedit_Rect(Rect(0, 0, ClientWidth, ClientHeight));
     end;
     fRichEdit.Align := old_Align;

     StatusBar1.Panels[0].Text := Format(str[Language,1]+ '%d',  [p+1]);
  end;
end;

procedure TRichPreV.vorSeitenUmbruch;
var  fRichPanelVisible : boolean;
begin

   if assigned(fRichedit) then
     begin

       if fRichedit.Parent is TTabSheet then
          (fRichEdit.Parent as TTabsheet).PageControl.ActivePage := fRichEdit.Parent as TTabSheet;

       if fRichedit.Parent is TPanel then
       begin
         fRichPanelVisible := (fRichedit.Parent as TPanel).Visible;
         (fRichedit.Parent as TPanel).Visible := true
       end;
       fRichedit.Visible := true;
       fRichedit.Focused;
       tmpRect := fRichedit.ClientRect;

       PrinterParam;

       old_Width := fRichEdit.Width;
       old_Height := fRichEdit.Height;
       old_Align := fRichEdit.Align;
       old_Line  := sendMessage(fRichedit.handle,EM_GETFIRSTVISIBLELINE,0,0);

       fRichEdit.Align := alNone;
       sendMessage(fRichedit.handle,EM_GETRECT,0,Integer(@tmpRect));
       sendMessage(fRichedit.handle,EM_LINESCROLL,-100,-old_Line);

       fRichEdit.Width := Round(fPageWidth *  XScreenRatio);
       SetRichedit_Rect(Rect(Round( fMarginLeft * XScreenRatio),
                             Round( 0),
                             Round((fMarginLeft + PrintWidth) * XScreenRatio),
                             Round((fMarginTop  + PrintHeight) * YScreenRatio * 2)));

       selLen      := fRichEdit.SelLength;
       selStart    := fRichEdit.SelStart;

     if Self.Parent is TTabSheet then
      (Self.Parent as TTabsheet).PageControl.ActivePage := Self.Parent as TTabSheet;

     if Self.Parent is TPanel then
     begin
       (Self.Parent as TPanel).Visible := true;
     end;

   end;
end;

//------------------------------------------------------------------------------

procedure TRichPreV.PreView(p : Integer;  fImage : TObject);
var range            : tformatrange;
    z,factX,factY,
    prc_top,prc_left,prc_bottom,prc_right : Cardinal;
    ImageRect : TRect;
begin
   if fRichEdit <> NIL then
   begin

     if fImage is TImage then
      begin
        if TImage(fImage).Name  = 'Image1' then  Image_index := p;
        tmpImage := TImage.Create(Self);
        with tmpImage as TImage do
        begin
          Parent := Self;
          visible := false;
          Enabled := true;
          Transparent := true;
          Stretch := true;
          Autosize := false;
          Align := alNone;
          SetBounds(0,0,Round(XScreenRatio*fPageWidth),Round(YScreenRatio*fPageHeight));
          Canvas.FillRect(Clientrect);
        end;
      end;

     FillChar(Range, SizeOf(TFormatRange), 0);

     factX := 1440 div  Screen.PixelsperInch;
     factY := 1440 div  Screen.PixelsperInch;

     prc_top    := Round(fMarginTop*YScreenRatio * factY) ;
     prc_bottom := Round((fPageHeight+100)  * YScreenRatio * factY);
     prc_left   := Round(fMarginLeft * XScreenRatio  * factX);
     prc_right  := Round((fPageWidth +100)  * XScreenRatio * factX);

     for z := 0 to TVPI(PLst.items[p]).Zeilen do
     begin
      with  Range do
       begin
         if fImage is TImage then
          Range.hdc:= TImage(tmpImage).Canvas.handle
         else
         if fImage is TPrinter then
           Range.hdc:= Printer.Canvas.handle;

         rc.top := prc_top + TVPI(PLst.items[p]).Zeile[z].Ytwips ;
         rc.bottom := prc_bottom;
         rc.left   :=  prc_left;
         rc.right  :=  prc_right;

         if TVPI(PLst.items[p]).Zeile[z].Alignment = taCenter then
         begin
           rc.left  := (TVPI(PLst.items[p]).Zeile[z].Xstart - 100) * factX;
           rc.right := (TVPI(PLst.items[p]).Zeile[z].Xende  + 100)  * factX
         end;

         if TVPI(PLst.items[p]).Zeile[z].Alignment = taRightJustify	 then
         begin
           rc.right := Round((fPageWidth - fMarginRight) * XScreenRatio  * factX);
           rc.left  := Round(MinMarginLeft * XScreenRatio  * factX);
         end;

         chrg.cpMin := TVPI(PLst.items[p]).Zeile[z].start;
         chrg.cpmax := TVPI(PLst.items[p]).Zeile[z].ende;

         SendMessage(fRichEdit.handle, EM_FORMATRANGE, 1, Longint(@Range));
       end;
        SendMessage(fRichEdit.Handle, EM_FORMATRANGE, 0, 0);
      end;

      if fImage is TImage then
      begin
        zoomImagePixels(p, TImage(fImage));
        tmpImage.destroy;
      end;
    end;
end;


procedure TRichPreV.zoomImagePixels(page : cardinal; zImage : TImage);
begin
  ScrollBox1.vertScrollBar.Position := 0;
  ScrollBox1.horzScrollBar.Position := 0;

  if TImage(zImage).Name = 'Image1' then
  begin
    Image1.destroy;
    Image1 := TImage.Create(Self);
    with Image1 do
    begin
      Parent := ScrollBox1;
      Name := 'Image1';
      Enabled := true;
      Transparent := true;
      AutoSize := false;
      Stretch := true;
      Align := alNone;
      SetBounds(0 ,0 ,ScrollBox1.horzScrollBar.Range ,ScrollBox1.vertScrollBar.Range );
    end;
    zImage := Image1;
  end
  else
  begin
    TVPI(PLst.items[page]).Image_destroy;
    if TVPI(PLst.items[page]).Image_create then
     begin
      SetBounds(0 ,0 ,MImageWidth ,MImageHeight);
      zImage := TVPI(PLst.items[page]).LImage ;
    end
    else
    zImage := Nil;
  end;

  if zImage <> Nil then
    zImage.canvas.StretchDraw(zImage.Clientrect,tmpImage.Picture.Graphic);
  zImage := Nil;
end;


procedure TRichPreV.PageEditChange(Sender: TObject);
begin
  try
    CurrPage := StrTOInt(PageEdit.Text)-1;
    if PLst.Count > 0 then
    begin
      ScrollBox1.vertScrollBar.Position := 0;
      Page_in_HaupFenster(PageUpDown.Position-1);
    end;
  except
    CurrPage := 0;
  end;
end;

procedure TRichPreV.MaxPageEditChange(Sender: TObject);
var  oldfMaxShowPage ,newMaxShowpage,i : Cardinal;
begin
    if PLst.Count > 0 then
    begin
     newMaxShowPage := MaxPageUpDown.Position;

     if newMaxShowPage > cMaxShowPages then
     begin
      newmaxShowPage := cMaxShowPages;
      MaxPageUpDown.Position := cMaxShowPages;
     end;
     oldfMaxShowPage :=  fMaxShowPage;
     fMaxShowPage :=  newMaxShowPage;

     MultiImageSetRect;

     if newMaxShowPage <=  PLst.Count  then
      begin
        if  newMaxShowPage >  oldfMaxShowPage then
         begin
          i := PageScroll.Position;
          while  newMaxShowPage >  i do
          begin
            TVPI(PLst.items[PageScroll.Position + i]).Image_destroy;
            if TVPI(PLst.items[PageScroll.Position + i]).Image_create then
              PreView(PageScroll.Position + i , TVPI(PLst.items[PageScroll.Position + i]).LImage);

            inc(i);
          end;

         end
         else
         if  newMaxShowPage <  oldfMaxShowPage then
         begin
           i := oldfMaxShowPage;
           while  newMaxShowPage <  i do
           begin
            TVPI(PLst.items[PageScroll.Position + i -1]).LPanel.Hide;
            TVPI(PLst.items[PageScroll.Position + i -1]).Image_destroy;
            deC(i);
           end;
         end;

      if (fMaxShowpage > 0 ) AND
         (fMaxShowpage < PLst.Count) then  PageScroll.Visible :=true
                                             else
                                           PageScroll.Visible :=false;

      PageScroll.Max := PLst.Count -   fMaxShowpage ;
      OnScroll_Images;
    end;
  end;
end;

procedure TRichPreV._OnScroll(Sender: TObject; var AllowChange: Boolean);
begin
   OnScroll_Images;
end;

procedure TRichPreV.OnScroll_Images;
var  page : Integer;
begin
     invalidate;
     if PageScroll.Position > old_PageScrollPosition then
     begin
        if PageScroll.Position > old_PageScrollPosition then
         TVPI(PLst.items[old_PageScrollPosition]).Image_destroy;

       if PageScroll.Position + fMaxPage < PLst.Count then
       begin
         if TVPI(PLst.items[PageScroll.Position + fMaxShowPage -1]).Image_create then
          PreView(PageScroll.Position + fMaxShowPage-1, TVPI(PLst.items[PageScroll.Position + fMaxShowPage -1]).LImage);
       end;
     end
     else
     if PageScroll.Position < old_PageScrollPosition then
     begin
       if old_PageScrollPosition + fMaxShowPage-1 >=0 then
         TVPI(PLst.items[old_PageScrollPosition + fMaxShowPage-1 ]).Image_destroy;

       if PageScroll.Position + fMaxShowPage < PLst.Count then
       begin
         if TVPI(PLst.items[PageScroll.Position]).Image_create then
           PreView(PageScroll.Position, TVPI(PLst.items[PageScroll.Position]).LImage);
       end;
     end;
     //----------------

     page := 0;
     while (page + PageScroll.Position < PLst.Count) AND ( page < fMaxShowpage) do
     begin
       if  TVPI(PLst.Items[page+PageScroll.Position]).LPanel <> NIL then
       begin
         TVPI(PLst.Items[page+PageScroll.Position]).LPanel.SetBounds( SPoint[page].X, SPoint[page].Y,MImageWidth, MImageHeight);
         TVPI(PLst.items[page+PageScroll.Position]).LPanel.Show;
       end;
       inc(page);
     end;
    old_PageScrollPosition := PageScroll.Position;

end;

procedure TRichPreV.Page_in_HaupFenster(Page : Integer);
begin
  if PLst.Count > 0 then
  begin
   Image_index := page;
   PreView(page,Image1);
  end;
end;

procedure TRichPreV.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   if ((TScrollBox(Sender) = ScrollBox1) Or(PLst.Count > 0 )) AND (Button = mbLeft) OR (Button= mbMiddle) then
   begin
     if ZoomFactor <> 1000 then
     begin
       old_ZoomFactor := ZoomFactor;
       ZoomFactor:=1000;
       ZoomComboBox.Text := 'alClient';
     end
     else
     begin
       ZoomFactor:=old_ZoomFactor;
       ZoomComboBox.Text := IntToStr(TRunc(ZoomFactor));
     end;

     ImageSetRect;

   if (TScrollBox(Sender) <> ScrollBox1)AND(ClickPage < PLst.Count) AND (ClickPage >= 0) then
    begin
      Page_in_HaupFenster(ClickPage)
    end
    else
    begin
       Page_in_HaupFenster(Image_index);
    end;

  end;
end;
//------------------------------------------------------------------------------

procedure TRichPreV.MarginButtonClick(Sender: TObject);
begin
   if MarginForm.Visible = false then
    begin
      oldfMarginLeft   :=  fMarginleft;
      oldfMarginRight  :=  fMarginRight;
      oldfMarginTop    :=  fMarginTop;
      oldfMarginBottom :=  fMarginBottom;

      CancelBitBtnClick(Sender);

      if ScrollBox1.Left +ScrollBox1.Width  + MarginForm.width + 100 < Self.Width then
        MarginForm.Left := ScrollBox1.Left +ScrollBox1.Width +30
       else
        MarginForm.Left := Round((Self.Width - MarginForm.Width ) *0.5);

       MarginForm.top := ClientToScreen(Point(0,ScrollBox1.top)).Y + 30;

       leftUpDown.Position := ScaleValX(fMarginleft);
       rightUpDown.Position := ScaleValX(fMarginright);
       topUpDown.Position := ScaleValY(fMargintop);
       bottomUpDown.Position := ScaleValY(fMarginbottom);
       leftUpDown.Max := ScaleValX(fPageWidth - fMarginRight);
       rightUpDown.Max := ScaleValX(fPageWidth - fMarginleft);
       topUpDown.Max := ScaleValY(fPageHeight - fMarginBottom);
       bottomUpDown.Max := ScaleValY(fPageHeight - fMarginTop);

       MarginForm.Visible := true;
   end
   else
   MarginForm.Visible := false;
end;

procedure  TRichPreV.OkBitBtnClick(Sender: TObject);
begin
   fMarginLeft   := DotValX(leftUpDown.Position);
   fMargintop    := DotValY(topUpDown.Position);
   fMarginright  := DotValX(rightUpDown.Position);
   fMarginbottom := DotValY(bottomUpDown.Position);
   MarginsSetUp;
   StatusBar1.Panels[1].Text := Format('left : %d',  [ScaleValY(fMarginleft)]);
   StatusBar1.Panels[2].Text := Format('right : %d',  [ScaleValY(fMarginright)]);
   StatusBar1.Panels[3].Text := Format('top : %d',  [ScaleValY(fMargintop)]);
   StatusBar1.Panels[4].Text := Format('bottom : %d',  [ScaleValY(fMarginbottom)]);
end;

procedure  TRichPreV.AbortBitBtnClick(Sender: TObject);
begin
   MarginForm.Visible := false;
end;

procedure  TRichPreV.CancelBitBtnClick(Sender: TObject);
begin
  leftUpDown.Position   := ScaleValX(oldfMarginleft);
  rightUpDown.Position  := ScaleValX(oldfMarginright);
  topUpDown.Position    := ScaleValY(oldfMargintop);
  bottomUpDown.Position := ScaleValY(oldfMarginbottom);
end;

procedure TRichPreV.topEditExit(Sender: TObject);
begin
   if DotValY(topUpDown.Position) <=  fPageHeight - MinMargintop then
    fMargintop :=  DotValY(topUpDown.Position)
    else
    begin
      fMargintop :=  fPageHeight - MinMargintop;
    end;

   if DotValY(topUpDown.Position) < MinMargintop then
    begin
      fMargintop :=  MinMargintop ;
    end;

    bottomUpDown.Max := ScaleValY(fPageHeight - fMargintop);
    topUpDown.Position := ScaleValY(fMargintop);
end;

procedure  TRichPreV.leftEditExit(Sender: TObject);
begin
   if DotValY(leftUpDown.Position) <=  fPageWidth - MinMarginLeft then
    fMarginleft :=  DotValY(leftUpDown.Position)
    else
    begin
      fMarginleft :=  fPageWidth - MinMarginLeft;
    end;

   if leftUpDown.Position < MinMarginLeft then
    begin
      fMarginleft :=   MinMarginLeft
    end;

    rightUpDown.Max := ScaleValX(fPageWidth - fMarginleft);
    leftUpDown.Position := ScaleValX(fMarginLeft);
end;

procedure TRichPreV.rightEditExit(Sender: TObject);
begin
    if DotValY(rightUpDown.Position) <=  fPageWidth - MinMarginright then
    fMarginright :=  DotValY(rightUpDown.Position)
    else
    begin
      fMarginright := fPageWidth - MinMarginright
    end;

   if rightUpDown.Position < MinMarginright then
    begin
      fMarginright := MinMarginright;
    end;

    leftUpDown.Max := ScaleValX(fPageWidth - fMarginright);
    rightUpDown.Position := ScaleValX(fMarginright);
end;

procedure  TRichPreV.bottomEditExit(Sender: TObject);
begin
    if DotValY(bottomUpDown.Position) <=  fPageHeight - MinMarginbottom then
    fMarginbottom := DotValY(bottomUpDown.Position)
    else
    begin
      fMarginbottom :=  fPageHeight - MinMarginbottom
    end;

   if bottomUpDown.Position < MinMarginbottom then
    begin
      fMarginbottom :=   MinMarginbottom
    end;

    topUpDown.Max := ScaleValX(fPageHeight - fMarginbottom);
    bottomUpDown.Position := ScaleValX(fMarginbottom);
end;

//--public ---------------------------------------------------------------------

procedure TRichPreV.GetPageImage(page : Integer;var Image : TImage );
begin
   if PLst.Count = 0 then StartPreView;
   if (page >= 0 )AND(page<PLst.Count) then
   begin
     Image_index := page;
     PreView(page, Image);
   end;
end;

function TRichPreV.GetPageCount: Integer;
begin
   Result := PLst.Count;
end;


function TRichPreV.GetPageLineCount(page : Integer): Integer;
begin
   if (page>=0 ) AND( page < PLst.Count) then Result := TVPI(PLst.Items[page]).Zeilen
                                               else
                                              Result := 0;
end;

procedure  TRichPreV.ScrollBox1WNDPROC(var Message : TMessage);
begin

    FDragOfs := leftMargin.Width div 2;
    leftMargin.Left :=  LeftMarginBevel.Left -  FDragOfs  + ScrollBox1.Left ;
    rightMargin.Left :=  RightMarginBevel.Left-  FDragOfs  + ScrollBox1.Left ;
    topMargin.top :=   topMarginBevel.top -FDragOfs+ScrollBox1.top ;
    bottomMargin.top := bottomMarginBevel.top -FDragOfs+ ScrollBox1.top  ;

   if assigned(ScrollBox1) then ScrollBox1.Dispatch(message);;
end;

procedure TRichPreV.WNDPROC(var Message : TMessage);
begin
    if message.Msg = WM_MouseMove  then ScrollBoxDragging := False;

    if message.Msg = W_ImageClick  then
    begin
       ClickPage := message.LParam;
       sendMessage(Self.handle ,WM_LBUTTONDOWN ,MK_MBUTTON,0);
    end;

   inherited WNDPROC(Message);
end;


//--properties----------------------------------------------------------------

procedure TRichPreV.SetRichEdit(Value: TRichEdit);
begin
 if Value <> NIL then
 begin
   fRichEdit:=Value;
 end
 else
 begin
   fRichEdit := NIL;
 end;
end;

procedure TRichPreV.SetLanguage(Value: Byte);
begin
  fLanguage := Value;
  ZoomLabel.Caption := str[fLanguage,2];
  PageLabel.Caption := str[fLanguage,0];
  MaxPageLabel.Caption := str[fLanguage,3];
  PageNumberLabel.Caption := str[fLanguage,1];
  PreViewButton.Caption := str[fLanguage,5];
end;

procedure TRichPreV.SetMarginLock(Value: boolean);
begin
  fMarginLock := Value;
end;

procedure TRichPreV.SetScaling(Value : TScaling);
{ Skalierung setzen }
begin
   fScaling:=VALUE;
   k:=1;
   mesurementLabel.Caption := 'dot';
   CASE fScaling OF
     pscMetric    : begin k:=25.4;  mesurementLabel.Caption := 'mm';end;
     pscMetric10  : begin k:=254;   mesurementLabel.Caption := '1/10mm';end;
     pscMetric100 : begin k:=2540;  mesurementLabel.Caption := '1/100mm';end;
     pscMil       : begin k:=1000;  mesurementLabel.Caption := '1/1000';end;
   end;
  StatusBar1.Panels[1].Text := Format('left : %d',  [ScaleValY(fMarginleft)]);
  StatusBar1.Panels[2].Text := Format('right : %d',  [ScaleValY(fMarginright)]);
  StatusBar1.Panels[3].Text := Format('top : %d',  [ScaleValY(fMargintop)]);
  StatusBar1.Panels[4].Text := Format('bottom : %d',  [ScaleValY(fMarginbottom)]);

end;

procedure TRichPreV.SetMarginTop(Value: Integer);
begin
  fMarginTop := ScaleValY(Value);
  StatusBar1.Panels[3].Text := Format('top : %d',  [ScaleValY(Value)]);
end;

procedure TRichPreV.ScaleMarginTop;
begin
  fMarginTop := DotValY( fMarginTop);
  if  fMarginTop > MinMarginTop then
  begin
   if  fMarginTop > (fPageHeight- MinMarginBottom) then
     fMarginTop:= fPageHeight-MinMarginBottom;
  end
  else fMarginTop:= MinMarginTop;
end;

procedure TRichPreV.SetMarginBottom(Value: Integer);
begin
  fMarginBottom := ScaleValY(Value);
  StatusBar1.Panels[4].Text := Format('bottom : %d',  [ScaleValY(Value)]);
end;
procedure TRichPreV.ScaleMarginBottom;
begin
  fMarginBottom := ScaleValY(fMarginBottom);
  if fMarginBottom > MinMarginBottom then
  begin
   if fMarginBottom > fPageHeight-MinMarginTop then
     fMarginBottom := fPageHeight-MinMarginTop;
  end
  else fMarginBottom := MinMarginBottom;
end;

procedure TRichPreV.SetMarginLeft(Value: Integer);
begin
  fMarginLeft := ScaleValX(Value);
  StatusBar1.Panels[1].Text := Format('left : %d', [ScaleValX(Value)]);
end;

procedure TRichPreV.ScaleMarginLeft;
begin
  if fMarginLeft >= MinMarginLeft then
  begin
   if fMarginLeft > fPageWidth- MinMarginRight then
     fMarginLeft:= fPageWidth-MinMarginRight;
  end
  else fMarginLeft:= MinMarginLeft;
end;

procedure TRichPreV.SetMarginRight(Value: Integer);
begin
  fMarginRight := ScaleValX(Value);
  StatusBar1.Panels[2].Text := Format('right : %d',  [ScaleValX(Value)]);
end;

procedure TRichPreV.ScaleMarginRight;
begin
  if fMarginRight > MinMarginRight then
  begin
   if fMarginRight > fPageWidth-MinMarginLeft then
    fMarginRight := fPageWidth-MinMarginLeft;
  end
  else fMarginRight := MinMarginRight;
end;
//-------------------------------------------------------
function TRichPreV.GetMarginRight: Integer;
begin
  Result := ScaleValX(fMarginRight);
end;

function TRichPreV.GetMarginLeft: Integer;
begin
  Result := ScaleValX(fMarginLeft);
end;

function TRichPreV.GetMarginBottom: Integer;
begin
  Result := ScaleValY(fMarginBottom);
end;

function TRichPreV.GetMarginTop: Integer;
begin
  Result := ScaleValY(fMarginTop);
end;
//---------------------------------------------------------

function TRichPreV.DotValX(ScaledVal : INTEGER) : INTEGER;
{ Rechnet skalierten Wert in Pixel um,
  abhängig von der Skalierung und der hor. Druckerauflösung }
begin
  IF fScaling=pscDot THEN
    DotValX:=ScaledVal
  ELSE
    DotValX:= Round(LONGINT(ScaledVal)*pLogPixelsX /k) ;
end;

function TRichPreV.DotValY(ScaledVal : INTEGER) : INTEGER;
{ Rechnet skalierten Wert in Pixel um,
  abhängig von der Skalierung und der vert. Druckerauflösung }
begin
  IF fScaling=pscDot THEN
    DotValY:=ScaledVal
  ELSE
    DotValY:=Round(LONGINT(ScaledVal)*pLogPixelsY / k);
end;

function TRichPreV.ScaleValX(DotVal : INTEGER) : INTEGER;
{ Rechnet einen Pixelwert in skalierten Wert um,
  abhängig von der Skalierung und der hor. Druckerauflösung }
begin
  IF fScaling=pscDot THEN
    ScaleValX:=DotVal
  ELSE
    ScaleValX:= Round(LONGINT(DotVal)*k / pLogPixelsX ) ;
end;

function TRichPreV.ScaleValY(DotVal : INTEGER) : INTEGER;
{ Rechnet einen Pixelwert in skalierten Wert um,
  abhängig von der Skalierung und der vert. Druckerauflösung }
begin
  IF fScaling=pscDot THEN
    ScaleValY:=DotVal
  ELSE
   ScaleValY:= Round(LONGINT(DotVal)*k /pLogPixelsY );
end;

//-----Printer------------------------------------------------------------------
PROCEDURE  TRichPreV.PrinterParam;
{ Druckertreiber-Parameter ermitteln }
begin
  IF Printer.Printers.Count >0  THEN
  begin
    pLogPixelsX:=GetDeviceCaps(Printer.Handle,LOGPIXELSX);
    pLogPixelsY:=GetDeviceCaps(Printer.Handle,LOGPIXELSY);
    pPhysicalWidth:=GetDeviceCaps(Printer.Handle,PHYSICALWIDTH);
    pPhysicalHeight:=GetDeviceCaps(Printer.Handle,PHYSICALHEIGHT);
    pPhysicalOffsetX:=GetDeviceCaps(Printer.Handle,PHYSICALOFFSETX);
    pPhysicalOffsetY:=GetDeviceCaps(Printer.Handle,PHYSICALOFFSETY);
  end;

  if  pPhysicalOffsetX > 0 then
  begin
    MinMarginLeft   :=  pPhysicalOffsetX;
    MinMarginRight  :=  pPhysicalOffsetX;
  end
  else
  begin
    MinMarginLeft  := 50;
    MinMarginRight := 50;
  end;
  if  pPhysicalOffsetY > 0 then
  begin
    MinMarginTop   :=  pPhysicalOffsetY;
    MinMarginBottom:=  2*pPhysicalOffsetY;
  end
  else
  begin
    MinMarginTop   :=  50;
    MinMarginBottom := 50;
  end;

  XResolution     :=  pLogPixelsX;
  YResolution     :=  pLogPixelsY;

  if (pPhysicalWidth <> 0 ) AND (pPhysicalWidth <> 0 ) then
    RatioPage := (pPhysicalHeight*   pLogPixelsX)/(pPhysicalWidth *  pLogPixelsY)
    else
    RatioPage := 1.406;

  fPageWidth  := pPhysicalWidth;
  fPageHeight := pPhysicalHeight;

  XScreenRatio := Screen.PixelsPerInch/ XResolution;
  YScreenRatio := Screen.PixelsPerInch/ YResolution;

  fTWIPS := 1440 div Screen.PixelsperInch;

  WITH Printer DO
  begin
     if fMarginleft < MinMarginleft then  fMarginleft := MinMarginleft;
     if fMargintop < MinMargintop then  fMargintop := MinMargintop;
     if fMarginright < MinMarginright then  fMarginright := MinMarginright;
     if fMarginbottom < MinMarginbottom then  fMarginbottom := MinMarginbottom;

     PrintWidth:= fPageWidth  - fMarginLeft - fMarginRight;
     PrintHeight:= fPageHeight  - fMarginTop - fMarginBottom;


  end;
  if MarginForm.Visible then
     begin
      leftUpDown.Max := ScaleValX(fPageWidth - fMarginRight);
      rightUpDown.Max := ScaleValX(fPageWidth - fMarginleft);
      topUpDown.Max := ScaleValY(fPageHeight - fMarginBottom);
      bottomUpDown.Max := ScaleValY(fPageHeight - fMarginTop);
     end;
  StatusBar1.Panels[1].Text := Format('left : %d',  [ScaleValY(fMarginleft)]);
  StatusBar1.Panels[2].Text := Format('right : %d',  [ScaleValY(fMarginright)]);
  StatusBar1.Panels[3].Text := Format('top : %d',  [ScaleValY(fMargintop)]);
  StatusBar1.Panels[4].Text := Format('bottom : %d',  [ScaleValY(fMarginbottom)]);
end;

procedure TRichPreV.OnPrintRichedit(Sender: TObject);
var i : Integer;
begin
   if PrintDoc then
   begin
     Printer.BeginDoc;
     for i := minPage to maxPage do
     begin
       PreView(i, Printer);
       if i < maxPage then Printer.Newpage;
     end;
    Printer.EndDoc;
   end;
end;


function TRichPreV.PrintDoc : Boolean;
var
   PrintDialog1    : TPrintDialog;
   CurrentPrinter: Cardinal;
   drucken : Integer;
begin
    result := false;
    drucken := 1;

    PrintDialog1 := TPrintDialog.Create(Application);
    PrintDialog1.Options := [poPageNums, poWarning, poHelp];
    PrintDialog1.MinPage := 0;
    PrintDialog1.MaxPage := Plst.Count-1;
    PrintDialog1.FromPage := 0;
    PrintDialog1.ToPage := Plst.Count-1;

    CurrentPrinter := Printer.PrinterIndex;

    if PrintDialog1.Execute then
     begin
       if CurrentPrinter <>  Printer.PrinterIndex then
        drucken :=  MessageDlg('Neuer Printer, Druckbild entspricht nicht der Vorschau !    Drucken ?', mtConfirmation, mbYesNoCancel, 0);

       if drucken = 1 then
       begin
        if PrintDialog1.PrintRange in [prAllPages] then
           begin
            minpage := 0;
            maxpage := Plst.Count-1;
           end
        else
           begin
           if PrintDialog1.FromPage < 0 then
             minpage := 0
           else
             minpage := PrintDialog1.FromPage;
           if PrintDialog1.ToPage > Plst.Count-1 then
              maxpage := Plst.Count-1
           else
              maxpage := PrintDialog1.ToPage ;
           end;
        printmode := printing;
        result := true;
       end;
      end
      else
      result := False;
      PrintDialog1.Free;
end;


//------------------------------------------------------------------------------

procedure Register;
 begin
  RegisterComponents('HWS', [TRichPreV]);
 end;

end.





