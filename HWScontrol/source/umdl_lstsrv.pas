{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions
392
Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_lstsrv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, ImgList, Spin, AppEvnts;

type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
     Count: Integer;
  End;
  TLstModels = record
     codigo: TStringList;
     descricao: TStringList;
     Count: Integer;
  End;
  TlistaLng = record
    cod_lng : array[0..20] of Integer;
    sigla : array[0..20] of String;
    trd : array[0..20] of String;
    count : integer;
  End;
  TlistaAux = record
    ab_descricao : array[0..20] of String;
    ab_blbft : array[0..20] of TMemoryStream;
    ms_descricao : array[0..20] of String;
    ms_blbft : array[0..20] of TMemoryStream;
  End;
  Tmdl_lstsrv = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    ImportarImgDialog: TOpenPictureDialog;
    PopupMenu1: TPopupMenu;
    Ampliar1: TMenuItem;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    cp1_0: TRadioButton;
    cp1_1: TRadioButton;
    cp3: TCheckBox;
    cp5: TCheckBox;
    GroupBox6: TGroupBox;
    Label15: TLabel;
    cp6_0: TRadioButton;
    cp6_1: TRadioButton;
    GroupBox7: TGroupBox;
    swf_banner: TShockwaveFlash;
    Panel16: TPanel;
    ToolBar5: TToolBar;
    bt_save_pers: TSpeedButton;
    cp2: TComboBox;
    Label17: TLabel;
    cp4: TComboBox;
    Label18: TLabel;
    cp7: TComboBox;
    cp9: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    cp8: TCheckBox;
    cp10: TCheckBox;
    cfg_cod: TLabel;
    Label_size_pers: TLabel;
    OpenBannerDialog: TOpenPictureDialog;
    Panel17: TPanel;
    ToolBar7: TToolBar;
    bt_open_pers: TSpeedButton;
    bt_limpar_pers: TSpeedButton;
    cp15: TComboBox;
    Label1: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Label21: TLabel;
    cp14: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    cfg_title: TEdit;
    Label22: TLabel;
    ToolBar_lng1: TToolBar;
    Label11: TLabel;
    PageControl_languagens: TPageControl;
    lngtb1: TTabSheet;
    lngtb2: TTabSheet;
    lngtb3: TTabSheet;
    lngtb4: TTabSheet;
    lngtb5: TTabSheet;
    lngtb6: TTabSheet;
    lngtb7: TTabSheet;
    lngtb8: TTabSheet;
    lngtb9: TTabSheet;
    lngtb10: TTabSheet;
    lngtb11: TTabSheet;
    lngtb12: TTabSheet;
    lngtb13: TTabSheet;
    lngtb14: TTabSheet;
    lngtb15: TTabSheet;
    lngtb16: TTabSheet;
    lngtb17: TTabSheet;
    lngtb18: TTabSheet;
    lngtb19: TTabSheet;
    lngtb20: TTabSheet;
    Paneltop: TPanel;
    ToolBar_lng2: TToolBar;
    Label13: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    ToolBar_web: TToolBar;
    Label7: TLabel;
    ComboBox_web: TComboBox;
    ToolBar_ent: TToolBar;
    Label16: TLabel;
    ComboBox_ent: TComboBox;
    Salvarcomo1: TMenuItem;
    ExportarImgDialog: TSavePictureDialog;
    Panel20: TPanel;
    bt_help: TSpeedButton;
    StatusBar1: TStatusBar;
    PageControlab: TPageControl;
    TabSheet_grp: TTabSheet;
    TabSheet_itens: TTabSheet;
    Splitter4: TSplitter;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel13: TPanel;
    Label10: TLabel;
    Label_size1: TLabel;
    chk_view1: TCheckBox;
    swf_logo1: TShockwaveFlash;
    ToolBar3: TToolBar;
    bt_open1: TSpeedButton;
    bt_limpar1: TSpeedButton;
    bt_view1: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Panelgrp: TPanel;
    Panel19: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    ab_cod: TLabel;
    ComboBox_model: TComboBox;
    ab_titulo: TEdit;
    ab_default: TCheckBox;
    Panel3: TPanel;
    ToolBar2: TToolBar;
    bt_new1: TSpeedButton;
    bt_del1: TSpeedButton;
    bt_save1: TSpeedButton;
    Panel12: TPanel;
    DBGrid1: TDBGrid;
    Lb_countreg1: TLabel;
    Splitter5: TSplitter;
    Splitter2: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    ToolBar4: TToolBar;
    bt_recursive: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TComboSpeedButton;
    bt_save2: TSpeedButton;
    Panel9: TPanel;
    Panelitens: TPanel;
    Panel18: TPanel;
    Label8: TLabel;
    Label6: TLabel;
    ms_cod: TLabel;
    ms_titulo: TEdit;
    Panel10: TPanel;
    swf_logo2: TShockwaveFlash;
    Panel14: TPanel;
    Label12: TLabel;
    Label_size2: TLabel;
    chk_view2: TCheckBox;
    ToolBar1: TToolBar;
    bt_open2: TSpeedButton;
    bt_limpar2: TSpeedButton;
    bt_view2: TComboSpeedButton;
    Panel15: TPanel;
    DBGrid2: TDBGrid;
    Lb_countreg2: TLabel;
    ToolBar_grp: TToolBar;
    Label4: TLabel;
    cb_group: TComboBox;
    ColorDialog1: TColorDialog;
    ToolbarImages: TImageList;
    PopupMenu_editor: TPopupMenu;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Importar1: TMenuItem;
    N2: TMenuItem;
    Fontemenu: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    N3: TMenuItem;
    Cor1: TMenuItem;
    Formatarpargrafo1: TMenuItem;
    esquerdo1: TMenuItem;
    centro1: TMenuItem;
    direita1: TMenuItem;
    justificado1: TMenuItem;
    Marcador1: TMenuItem;
    OpenDialog1: TOpenDialog;
    GroupBox9: TGroupBox;
    CoolBar2: TCoolBar;
    ToolBar12: TToolBar;
    FontName1: TComboBox;
    ToolButton16: TToolButton;
    FontSize1: TEdit;
    UpDown1: TUpDown;
    ToolBar13: TToolBar;
    BoldButton1: TToolButton;
    ItalicButton1: TToolButton;
    UnderlineButton1: TToolButton;
    ToolBar14: TToolBar;
    LeftAlign1: TToolButton;
    CenterAlign1: TToolButton;
    RightAlign1: TToolButton;
    JustifyAlign1: TToolButton;
    BulletsButton1: TToolButton;
    ToolBar15: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolBar16: TToolBar;
    fontColor1: TToolButton;
    eddesfazer1: TToolButton;
    re_editor1: TRxRichEdit;
    GroupBox1: TGroupBox;
    CoolBar1: TCoolBar;
    ToolBar6: TToolBar;
    FontName2: TComboBox;
    ToolButton1: TToolButton;
    FontSize2: TEdit;
    UpDown2: TUpDown;
    ToolBar8: TToolBar;
    BoldButton2: TToolButton;
    ItalicButton2: TToolButton;
    UnderlineButton2: TToolButton;
    ToolBar9: TToolBar;
    LeftAlign2: TToolButton;
    CenterAlign2: TToolButton;
    RightAlign2: TToolButton;
    JustifyAlign2: TToolButton;
    BulletsButton2: TToolButton;
    ToolBar10: TToolBar;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolBar11: TToolBar;
    fontColor2: TToolButton;
    eddesfazer2: TToolButton;
    re_editor2: TRxRichEdit;
    Panelclass: TPanel;
    Label9: TLabel;
    ComboBox_class: TComboBox;
    Label23: TLabel;
    ComboBox_class2: TComboBox;
    Cordefundo1: TMenuItem;
    colorfnd1: TToolButton;
    colorfnd2: TToolButton;
    CheckBox_class: TCheckBox;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    Panel21: TPanel;
    Label24: TLabel;
    Label_size3: TLabel;
    chk_view3: TCheckBox;
    swf_logo3: TShockwaveFlash;
    ToolBar18: TToolBar;
    bt_open3: TSpeedButton;
    bt_limpar3: TSpeedButton;
    bt_view3: TSpeedButton;
    Splitter3: TSplitter;
    Panel22: TPanel;
    Lb_countreg3: TLabel;
    DBGrid3: TDBGrid;
    Splitter6: TSplitter;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    cl_cod: TLabel;
    cl_titulo: TEdit;
    cl_default: TCheckBox;
    GroupBox2: TGroupBox;
    CoolBar3: TCoolBar;
    ToolBar20: TToolBar;
    FontName3: TComboBox;
    ToolButton4: TToolButton;
    FontSize3: TEdit;
    UpDown3: TUpDown;
    ToolBar21: TToolBar;
    BoldButton3: TToolButton;
    ItalicButton3: TToolButton;
    UnderlineButton3: TToolButton;
    ToolBar22: TToolBar;
    LeftAlign3: TToolButton;
    CenterAlign3: TToolButton;
    RightAlign3: TToolButton;
    JustifyAlign3: TToolButton;
    BulletsButton3: TToolButton;
    ToolBar23: TToolBar;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolBar24: TToolBar;
    fontColor3: TToolButton;
    eddesfazer3: TToolButton;
    colorfnd3: TToolButton;
    re_editor3: TRxRichEdit;
    Panel29: TPanel;
    ToolBar25: TToolBar;
    bt_new3: TSpeedButton;
    bt_del3: TSpeedButton;
    bt_save3: TSpeedButton;
    ToolButton12: TToolButton;
    GroupBox8: TGroupBox;
    Label31: TLabel;
    ms_av5: TSpinEdit;
    GroupBox10: TGroupBox;
    ms_av1: TEdit;
    Label25: TLabel;
    Label27: TLabel;
    ms_av3: TEdit;
    Label28: TLabel;
    Label26: TLabel;
    ms_av2: TEdit;
    ms_av4: TEdit;
    Label32: TLabel;
    ms_av7: TEdit;
    Label34: TLabel;
    ms_av8: TEdit;
    Label33: TLabel;
    ms_av6: TEdit;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_new1Click(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure bt_del1Click(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
    procedure ComboBox_webChange(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure bt_limpar1Click(Sender: TObject);
    procedure bt_limpar2Click(Sender: TObject);
    procedure bt_view1Click(Sender: TObject);
    procedure bt_open1Click(Sender: TObject);
    procedure bt_open2Click(Sender: TObject);
    procedure chk_view1Click(Sender: TObject);
    procedure chk_view2Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_view2Click(Sender: TObject);
    procedure Ampliar1Click(Sender: TObject);
    procedure bt_recursiveClick(Sender: TObject);
    procedure PageControl_languagensChange(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure bt_open_persClick(Sender: TObject);
    procedure bt_limpar_persClick(Sender: TObject);
    procedure bt_save_persClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure ComboBox_entChange(Sender: TObject);
    procedure Salvarcomo1Click(Sender: TObject);
    procedure bt_helpClick(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure ToolBar_grpResize(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Marcador1Click(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure esquerdo1Click(Sender: TObject);
    procedure centro1Click(Sender: TObject);
    procedure direita1Click(Sender: TObject);
    procedure justificado1Click(Sender: TObject);
    procedure re_editorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure PageControlabChange(Sender: TObject);
    procedure cb_groupChange(Sender: TObject);
    procedure PanelclassResize(Sender: TObject);
    procedure EVsaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EVsave2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cordefundo1Click(Sender: TObject);
    procedure CheckBox_classClick(Sender: TObject);
    procedure ComboBox_classKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_classClick(Sender: TObject);
    procedure bt_new3Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_save3Click(Sender: TObject);
    procedure bt_limpar3Click(Sender: TObject);
    procedure bt_view3Click(Sender: TObject);
    procedure bt_open3Click(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure NumExit(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit,xupdatelogo1,xupdatelogo2,xupdatelogo3,xupdatebanner: Boolean;
    pathdefault,xdsqlfilter : string;
    ax_ab_cod,axcod_gal,axcod_class,ax_ms_cod,ax_cl_cod,axcod_img,axcod_ent: Integer;
    LstTables: TLstTables;
    LstModels: TLstModels;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xlogosz1,xlogosz2,xlogosz3,xamplsz2,xbannersz: Integer;
    xlogotmp1,xlogotmp2,xlogotmp3,xampltmp2,xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    xlogotmp2_tmp,xampltmp2_tmp: TMemoryStream; //ax inserimg
    procedure monta_lng;
    procedure monta_table1;
    procedure monta_table2(xnewgal,xuplng:Boolean);
    procedure monta_tableclass;
    procedure monta_table3;
    procedure travaformImages(xtrava: Boolean);
    procedure addreg;
    procedure addreg2;
    procedure addreg3;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure atualiza_grade3;
    procedure atualiza_grade_pers;
    procedure limpaphoto1(xupdateset:Boolean);
    procedure limpaphoto2(xupdateset:Boolean);
    procedure limpaphoto3(xupdateset:Boolean);
    procedure limpaphoto_pers(xupdateset:Boolean);
    procedure abretmplogo1;
    procedure abretmplogo2;
    procedure abretmplogo3;
    procedure abretmpbanner;
    procedure getLogo1;
    procedure getLogo2;
    procedure getLogo3;
    procedure getBanner;
    procedure save_cfg(xcodlng: Integer);
    //retorna componente
    function retorna_TTabSheet(xidxcod:Integer):TTabSheet;
    function retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
    function retorna_fontName(xidxcod:Integer):TComboBox;
    function retorna_fontSize(xidxcod:Integer):TEdit;
    function retorna_BoldButton(xidxcod:Integer):TToolButton;
    function retorna_ItalicButton(xidxcod:Integer):TToolButton;
    function retorna_UnderlineButton(xidxcod:Integer):TToolButton;
    function retorna_LeftAlign(xidxcod:Integer):TToolButton;
    function retorna_CenterAlign(xidxcod:Integer):TToolButton;
    function retorna_RightAlign(xidxcod:Integer):TToolButton;
    function retorna_JustifyAlign(xidxcod:Integer):TToolButton;
    function retorna_BulletsButton(xidxcod:Integer):TToolButton;
    function inserimg(xnamefile,xfilext:String;
                      xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
                      xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp:Integer;
                      xic_ajt,xic_pr,xil_ajt,xil_pr: Boolean):Boolean;
    procedure validaCbClass();
    { Private declarations }
  public
    xreceivetrad : String;
    xtimerresponse,
    xiniCodab: Integer;
    //processoand: Boolean;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_lstsrv: Tmdl_lstsrv;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd,
  umdl_richgalery_view;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_lstsrv.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Finalizando...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Finalizando...';
         loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=25;
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     loadx.Progressloading.position:=50;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.ds_sql4.Close;
     dm.ds_sql5.Close;
     dm.ds_sql6.Filter:='';
     dm.ds_sql6.Filtered:=false;
     dm.ds_sql6.Close;
     loadx.Progressloading.position:=75;
     if dm.executa5.Active then
        dm.executa5.Close;
     if dm.executa3.Active then
        dm.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_lstsrv.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream; 
    axid_web,axid_web2: integer;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando ambiente';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando ambiente';
        loadx.lbloading.Repaint;
     end;
     FontName1.Items:=screen.Fonts;
     FontName2.Items:=screen.Fonts;
     FontName3.Items:=screen.Fonts;
     loadx.Progressloading.position:=10;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_lstsrv.Caption:= AxDadosUsr.axtitle;
     xinit:=true;
     axcod_ent:=0;
     SendMessage(re_editor1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     SendMessage(re_editor2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     SendMessage(re_editor3.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor1.Justify;
     re_editor2.Justify;
     re_editor3.Justify;
     xlogotmp1:= TMemoryStream.Create;
     xlogotmp3:= TMemoryStream.Create;
     xlogotmp2:= TMemoryStream.Create;
     xampltmp2:= TMemoryStream.Create;
     xbannertmp:= TMemoryStream.Create;
     xupdatelogo1:=False;
     xupdatelogo2:=False;
     xupdatebanner:=False;
     loadx.Progressloading.position:=40;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
     end else begin
        With dm.executa3 do begin
             CommandText:='SELECT codigo,website FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                       ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_ent_1)+#39+
                       ' ORDER BY website';
             Open;
             First;
             While not Eof do begin
                if AxDadosUsr.cod_web=fieldbyname('codigo').AsInteger then axid_web2:=axid_web;
                ComboBox_web.Items.Add(fieldbyname('website').AsString);
                Next;
                Inc(axid_web);
             end;
        end;
     end;
     ComboBox_web.ItemIndex:=axid_web2;
     if ComboBox_web.Items.Count<2 then begin
        ComboBox_web.Enabled:=false;
        Label7.Enabled:=false;
     end;
     loadx.Progressloading.position:=60;
     //Busca tabelas
     LstTables.Count:=0;
     axstr_filtro_stream:= TMemoryStream.Create;
     With dm.ds_sql11 do begin
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
                                ' AND A.cp5='+#39+AxDadosUsr.axparm+#39+
                                ' ORDER BY B.codigo';
          Open;
          if RecordCount>0 then begin
             First;
             While not Eof do begin
                LstTables.codigo[LstTables.Count]:=fieldbyname('codigo_1').AsInteger;
                LstTables.Table[LstTables.Count]:=fieldbyname('cp2').AsString;
                //stringgrind Filtro
                LstTables.Tipo[LstTables.Count]:= TStringList.Create;
                LstTables.Tipo[LstTables.Count].Clear;
                LstTables.Tipo[LstTables.Count].Assign(fieldbyname('cp1'));
                if LstTables.Tipo[LstTables.Count].Count>0 then begin
                   LstTables.Tipo[LstTables.Count].SaveToStream(axstr_filtro_stream);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   axstr_filtro_stream:=EnDecryptStream(axstr_filtro_stream,4932);
                   axstr_filtro_stream.Seek(0,soFromBeginning);
                   LstTables.Tipo[LstTables.Count].LoadFromStream(axstr_filtro_stream);
                end;
                Inc(LstTables.Count);
                Next;
             end;
          end else begin
             Close;
             try loadx.Close; except end;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
     end;
     LstModels.codigo:=TStringList.Create;
     LstModels.descricao:=TStringList.Create;
     LstModels.codigo.Clear;
     LstModels.descricao.Clear;
     LstModels.Count:=0;
     With dm.ds_sql4 do begin
          CommandText:= 'SELECT * FROM '+LstTables.Table[4]+
                                ' ORDER BY codigo';
          Open;
          Filter:='';
          Filtered:=false;
          ComboBox_model.Clear;
          First;
          While not Eof do begin
              LstModels.codigo.Add(fieldbyname('codigo').AsString);
              LstModels.descricao.Add(fieldbyname('descricao').AsString);
              Inc(LstModels.Count);
              Next;
          end;
          ComboBox_model.Items:=LstModels.descricao;
     end;
     loadx.Progressloading.position:=70;
     DBGrid1.DataSource:=dm.source_sql;
     With DBGrid1.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Código';
          Items[0].FieldName:='cod_gal';
          Add;
          Items[1].Title.Caption:='Descrição';
          Items[1].FieldName:='descricao';
     end;
     DBGrid2.DataSource:=dm.source_sql3;
     With DBGrid2.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Código';
          Items[0].FieldName:='cod_img';
          Add;
          Items[1].Title.Caption:='Descrição';
          Items[1].FieldName:='descricao';
     end;
     DBGrid3.DataSource:=dm.source_sql6;
     With DBGrid3.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Código';
          Items[0].FieldName:='cod_class';
          Add;
          Items[1].Title.Caption:='Descrição';
          Items[1].FieldName:='cp1';
     end;
     if StrtoInt(AxDadosUsr.axparm) > 5000 then begin
        ToolBar_ent.Visible:=true;
        With dm.executa5 do begin
             CommandText:= 'SELECT codigo,cod_web,cp1 FROM '+LstTables.Table[6]+
                           ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                           ' ORDER BY cp1';
             Open;
             First;
             ComboBox_ent.Clear;
             While not Eof do begin
                 if axcod_ent = 0 then axcod_ent:=fieldbyname('codigo').AsInteger;
                 ComboBox_ent.Items.Add(fieldbyname('cp1').AsString);
                 Next;
             end;
             ComboBox_ent.ItemIndex:=0;
        end;
     end;
     monta_tableclass;
     monta_lng;
     monta_table1;
     monta_table3;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.monta_lng;
var listaLng_id,axcoddefault,xid_default: Integer;
begin
    //MONTA LINGUAGENS
     if dm.ds_sql.Active then begin
        for listaLng_id:=1 to listaLng.count-1 do begin
            listaLng.cod_lng[listaLng_id]:=0;
            listaLng.sigla[listaLng_id]:='';
            listaLng.trd[listaLng_id]:='';
            retorna_TTabSheet(listaLng_id).TabVisible:=false;
            retorna_TTabSheet(listaLng_id).Caption:='';
            listaAux.ab_descricao[listaLng_id]:='';
            listaAux.ab_blbft[listaLng_id].Free;
            listaAux.ms_descricao[listaLng_id]:='';
            listaAux.ms_blbft[listaLng_id].Free;
        end;
        listaAux.ab_blbft[0].Free;
        listaAux.ms_blbft[0].Free;
     end;
     listaLng.count:=0;
     //linguagens
     With dm.ds_sql7 do begin
          if Active then Close; //A.codigo,A.cod_web,B.codigo,
          CommandText:= 'SELECT DISTINCT A.cod_lng,A.pdr,B.descricao,B.sigla,B.trd FROM '+
                                EnDecryptString(Serverconect.vrf49,37249)+' A, '+
                                EnDecryptString(Serverconect.vrf48,37249)+' B '+
                                'WHERE B.codigo=A.cod_lng AND A.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' ORDER BY A.pdr';
          Open;
          Filter:='';
          Filtered:=false;
          if PageControl_languagens.TabIndex>(RecordCount-1) then
             PageControl_languagens.TabIndex:=0;
          First;
          axcoddefault:=0;
          while not Eof do begin
                if axcoddefault=0 then axcoddefault:=listaLng.count;
                if fieldbyname('trd').AsString='English' then xid_default:=listaLng.count;
                listaAux.ab_blbft[listaLng.count]:=TMemoryStream.Create;
                listaAux.ms_blbft[listaLng.count]:=TMemoryStream.Create;
                listaLng.cod_lng[listaLng.count]:= fieldbyname('cod_lng').AsInteger;
                listaLng.sigla[listaLng.count]:= fieldbyname('sigla').AsString;
                listaLng.trd[listaLng.count]:= fieldbyname('trd').AsString;
                retorna_TTabSheet(listaLng.count).TabVisible:=true;
                //retorna_TTabSheet(listaLng.count).PageIndex:=listaLng.count;
                retorna_TTabSheet(listaLng.count).Caption:=fieldbyname('descricao').AsString;
                Inc(listaLng.count);
                Next;
          end;
          if recordcount > 1 then begin
             ToolBar_lng1.Visible:=true;
             ToolBar_lng2.Visible:=true;
             RadioButton2.Checked:=true;
          end else begin
             RadioButton2.Checked:=true;
             ToolBar_lng1.Visible:=false;
             ToolBar_lng2.Visible:=false;
          end;
          Close;
     end;
end;

procedure Tmdl_lstsrv.monta_table1;
var axshowing: Boolean;
    xfiltdatax,xfiltdata,xfiltdata2: String;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando álbuns';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando álbuns';
        loadx.lbloading.Repaint;
     end;
     //Monta Lista de álbuns
     With dm.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                                ' AND cod_usrw='+#39+IntToStr(axcod_ent)+#39+
                                ' ORDER BY codigo,cod_lng';
          Open;
          Filter:='';
          Filtered:=true;
          xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
          Filter:=xdsqlfilter;
     end;
     atualiza_grade;
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.monta_table2(xnewgal,xuplng:Boolean);
var xcodgal: string;
begin
     if xnewgal then begin
        xcodgal:='0';
     end else begin
        if dm.ds_sql.RecordCount>0 then xcodgal:=dm.ds_sql.fieldbyname('cod_gal').AsString
        else xcodgal:='0';
     end;
     With dm.ds_sql3 do begin
          if not xuplng then begin
             if Active then Close;
             CommandText:= 'SELECT * FROM '+LstTables.Table[2]+
                                ' WHERE cod_gal='+#39+xcodgal+#39+
                                ' ORDER BY codigo';
             Open;
             Filtered:=true;
          end;
          Filter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
     end;
     atualiza_grade2;
end;

procedure Tmdl_lstsrv.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
    ToolBar_lng1.Width:=Panel1.Width-244;
    PageControl_languagens.Width:=ToolBar_lng1.Width-61;
    ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_lstsrv.FormActivate(Sender: TObject);
begin
      mdl_lstsrv.Refresh;
      if xinit then begin
         xinit:=false;
         if (xiniCodab>0) then begin
             TabSheet_grp.TabVisible:=false;
             ToolBar_grp.Visible:=false;
             dm.ds_sql.Locate('codigo',xiniCodab,[]);
         end;
      end;
end;

procedure Tmdl_lstsrv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Case key of
        VK_F1: bt_help.OnClick(self); //help
        //VK_F2: bt_del.Click; //salvar
        //VK_F3: bt_new.Click; //Novo
        //VK_F5: bt_update.Click; //Atualizar
        VK_F9: hwsf.BtSobre; //Sobre
      End;
      if (Shift = [ssCtrl]) and (Key=VK_F4) then
        Close; //Fechar janela
//      if (Shift = [ssCtrl]) and (Key=VK_DELETE) then
//         bt_del.Click; //deletar registro
end;

procedure Tmdl_lstsrv.addreg;
begin
     ComboBox_model.Enabled:=true;
     ab_cod.Caption:='novo';
     ax_ab_cod:=0;
     ab_titulo.Text:='';
     re_editor1.Clear;
     ab_default.Checked:=true;
     limpaphoto1(False);
     limpaphoto2(False);
     monta_table2(True,False);
     travaformImages(true);
     addreg2;
     travaformImages(false);
end;

procedure Tmdl_lstsrv.travaformImages(xtrava: Boolean);
begin
     chk_view2.Enabled:=xtrava;
     Panel7.Visible:=xtrava;
     if xtrava then begin
        ms_titulo.Color:=clWindow;
        re_editor2.Color:=clWindow;
        DBGrid2.Color:=clWhite;
     end else begin
        ms_titulo.Color:=$00F5F5F5;
        re_editor2.Color:=$00F5F5F5;
        DBGrid2.Color:=$00F5F5F5;
     end;
     TabSheet_itens.TabVisible :=xtrava;
end;

procedure Tmdl_lstsrv.addreg2;
begin
     ms_cod.Caption:='novo';
     ax_ms_cod:=0;
     ms_titulo.Text:='';
     ms_av1.Text:='0.00';
     ms_av2.Text:='0.00';
     ms_av3.Text:='0.00';
     ms_av4.Text:='0.00';
     ms_av5.Value:=0;
     ms_av6.Text:='0.00';
     ms_av7.Text:='0.00';
     ms_av8.Text:='0.00';
     re_editor2.Clear;
     limpaphoto2(False);
end;

procedure Tmdl_lstsrv.addreg3;
begin
     cl_cod.Caption:='novo';
     ax_cl_cod:=0;
     axcod_class:=0;
     cl_titulo.Text:='';
     re_editor3.Clear;
     limpaphoto3(False);
end;

procedure Tmdl_lstsrv.atualiza_grade;
var axshowing,xuplng: Boolean;
    axlocid: Integer;
    st_stream: TMemoryStream;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando grupos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando grupos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         with dm.ds_sql do begin
            if ax_ab_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            limpaphoto1(False);
            loadx.Progressloading.position:=20;
            ab_cod.Caption:=fieldbyname('cod_gal').AsString;
            ax_ab_cod:=fieldbyname('codigo').AsInteger;
            if axcod_gal<>fieldbyname('cod_gal').AsInteger then begin
               xuplng:=false;
               axcod_gal:=fieldbyname('cod_gal').AsInteger;
            end else xuplng:=true;
            ab_titulo.Text:=fieldbyname('descricao').AsString;
            loadx.Progressloading.position:=30;
            re_editor1.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('blb')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor1.Lines.LoadFromStream(st_stream);
            st_stream.Free;
            ab_default.Checked:=StrToBool(fieldbyname('cod_ls').AsString);
            loadx.Progressloading.position:=40;
            ComboBox_model.Enabled:=true;
            ComboBox_model.ItemIndex:=0;
            for axlocid:=0 to LstModels.Count-1 do begin
                if LstModels.codigo.Strings[axlocid]=fieldbyname('cod_psn').AsString then begin
                   ComboBox_model.ItemIndex:=axlocid;
                   break;
                end;
            end;
            if (dm.ds_sql6.Locate('cod_class',fieldbyname('cod_class').AsInteger,[])) then
               ComboBox_class2.Text:= dm.ds_sql6.fieldbyname('cp1').AsString
            else ComboBox_class2.ItemIndex:=0;
            ComboBox_model.Enabled:=false;
            loadx.Progressloading.position:=50;
            monta_table2(False,xuplng);
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
      if chk_view1.Checked then getLogo1;
      try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.atualiza_grade3;
var axshowing,xuplng: Boolean;
    axlocid: Integer;
    st_stream: TMemoryStream;
begin
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando itens';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando itens';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql6.RecordCount <= 0 then begin
         addreg3;
      end else begin
         with dm.ds_sql6 do begin
            if ax_cl_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            limpaphoto3(False);
            loadx.Progressloading.position:=20;
            cl_cod.Caption:=fieldbyname('cod_class').AsString;
            ax_cl_cod:=fieldbyname('codigo').AsInteger;
            if axcod_class<>fieldbyname('cod_class').AsInteger then begin
               xuplng:=false;
               axcod_class:=fieldbyname('cod_class').AsInteger;
            end else xuplng:=true;
            cl_titulo.Text:=fieldbyname('cp1').AsString;
            loadx.Progressloading.position:=30;
            re_editor3.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('cp3')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor3.Lines.LoadFromStream(st_stream);
            st_stream.Free;
            cl_default.Checked:=StrToBool(fieldbyname('cod_ls').AsString);
            loadx.Progressloading.position:=40;
            loadx.Progressloading.position:=50;
         end;
      end;
      Lb_countreg3.Caption:=Inttostr(dm.ds_sql6.RecordCount);
      if chk_view3.Checked then getLogo3;
      try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.limpaphoto1(xupdateset:Boolean);
begin
     xupdatelogo1:=xupdateset;
     xlogotmp1.Clear;
     xlogotmp1.Seek(0,soFromBeginning);
     xlogosz1:=0;
     Label_size1.Caption:='0 kb';
     swf_logo1.Visible:=false;
     swf_logo1.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstsrv.atualiza_grade2;
var axshowing: Boolean;
    st_stream : TMemoryStream;
begin
     //banco de imagens
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando banco de imagens';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando banco de imagens';
         loadx.lbloading.Repaint;
      end;
      travaformImages(true);
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg2;
      end else begin
         with dm.ds_sql3 do begin
            loadx.Progressloading.position:=60;
            if ax_ms_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            limpaphoto2(False);
            loadx.Progressloading.position:=70;
            ms_cod.Caption:=fieldbyname('cod_img').AsString;
            ax_ms_cod:=fieldbyname('codigo').AsInteger;
            axcod_img:=fieldbyname('cod_img').AsInteger;
            loadx.Progressloading.position:=80;
            ms_titulo.Text:=fieldbyname('descricao').AsString;
            ms_av1.Text:=FormatFloat('0.00',fieldbyname('avlun').AsFloat);
            ms_av2.Text:=FormatFloat('0.00',fieldbyname('avlum').AsFloat);
            ms_av3.Text:=FormatFloat('0.00',fieldbyname('avlmn').AsFloat);
            ms_av4.Text:=FormatFloat('0.00',fieldbyname('avlmm').AsFloat);
            ms_av5.Value:=fieldbyname('cod_pri').AsInteger;
            ms_av6.Text:=FormatFloat('0.00',fieldbyname('dskun').AsFloat);
            ms_av7.Text:=FormatFloat('0.00',fieldbyname('avlhn').AsFloat);
            ms_av8.Text:=FormatFloat('0.00',fieldbyname('avlhm').AsFloat);
            loadx.Progressloading.position:=90;
            re_editor2.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('blb')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor2.Lines.LoadFromStream(st_stream);
            st_stream.Free;
            loadx.Progressloading.position:=100;
            if chk_view2.Checked then getLogo2;
         end;
      end;
      Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.limpaphoto2(xupdateset:Boolean);
begin
     xupdatelogo2:=xupdateset;
     xlogotmp2.Clear;
     xlogotmp2.Seek(0,soFromBeginning);
     xlogosz2:=0;
     Label_size2.Caption:='0 kb';
     xampltmp2.Clear;
     xampltmp2.Seek(0,soFromBeginning);
     xamplsz2:=0;
     swf_logo2.Visible:=false;
     swf_logo2.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstsrv.limpaphoto3(xupdateset:Boolean);
begin
     xupdatelogo3:=xupdateset;
     xlogotmp3.Clear;
     xlogotmp3.Seek(0,soFromBeginning);
     xlogosz3:=0;
     Label_size3.Caption:='0 kb';
     swf_logo3.Visible:=false;
     swf_logo3.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstsrv.bt_new1Click(Sender: TObject);
begin
      addreg;
      ab_titulo.SetFocus;
end;

procedure Tmdl_lstsrv.bt_new2Click(Sender: TObject);
begin
      addreg2;
      ms_titulo.SetFocus;
end;

procedure Tmdl_lstsrv.bt_del1Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo grupos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo grupos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     Application.ProcessMessages;
     if (dm.ds_sql.RecordCount>0) and (ab_cod.Caption<>'novo') then begin
        axcod:= StrToInt(ab_cod.Caption) + 1;
        if dm.deleta_reg(LstTables.Table[0],'cod_gal',ab_cod.Caption,true) then begin
           Application.ProcessMessages;
           loadx.lbloading.Caption:='Excluindo icone';
           loadx.lbloading.Repaint;
           loadx.Progressloading.position:=25;
           dm.RemoveBinaryStreamPH(LstTables.Table[1],'cod_gal','icon','',ab_cod.Caption);
           //dm.deleta_reg(LstTables.Table[1],'cod_gal',ab_cod.Caption,false);
           loadx.Progressloading.position:=50;
           loadx.lbloading.Caption:='Excluindo banco de imagens';
           loadx.lbloading.Repaint;
           dm.deleta_reg(LstTables.Table[2],'cod_gal',ab_cod.Caption,false);
           loadx.Progressloading.position:=75;
           With dm.ds_sql3 do begin
                First;
                While not Eof do begin
                    dm.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',fieldbyname('cod_img').AsString);
                    //dm.deleta_reg(LstTables.Table[3],'cod_img',fieldbyname('cod_img').AsString,false);
                    Next;
                end;
           end;
           loadx.Progressloading.position:=100;
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           if not dm.ds_sql.Locate('codigo',axcod,[]) then
           if not dm.ds_sql.Locate('codigo',axcod-2,[]) then
              dm.ds_sql.First;
           Application.ProcessMessages;
           atualiza_grade;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.bt_save1Click(Sender: TObject);
var axcod,axcod2,axgal_id,cod_model,xidxlng,xid_default,axcodgrp,ax_ab_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     //banco de imagens
     ax_ab_codinsert:=0;
     if ab_titulo.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        ab_titulo.SetFocus;
        exit;
     end;
     axgrpname:=ComboBox_class2.Text;
     axcodgrp:=0;
     if (axgrpname <> '') then begin
        if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then
           axcodgrp:= dm.ds_sql6.fieldbyname('cod_class').AsInteger
        else ComboBox_class2.ItemIndex:=0;
     end;
     if ComboBox_model.ItemIndex=-1 then begin
        hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
        ComboBox_model.SetFocus;
        exit;
     end else cod_model:= StrtoInt(LstModels.codigo[ComboBox_model.ItemIndex]);
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     Application.ProcessMessages;
     loadx.Progressloading.position:=10;
     xidxlng:=PageControl_languagens.TabIndex;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor1.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm.RtfToHtml2('',false,re_editor1);
     if ab_cod.Caption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= ab_titulo.Text;
        loadx.Progressloading.position:=30;
        if RadioButton1.Checked then axInc_traduzir:=true
        else if RadioButton2.Checked then axInc_traduzir:=false
        else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
        if axInc_traduzir then begin
              loadx.Progressloading2.Max:=listaLng.count*3;
              loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xidxlng).Caption;
              loadx.lbloading.Repaint;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  listaAux.ab_descricao[axgal_id]:= '';
                  if listaLng.trd[axgal_id]='English' then xid_default:=axgal_id;
              end;
              if (xid_default=xidxlng) then begin
                 listaAux.ab_descricao[xid_default]:=xtxt1;
              end else begin
                 listaAux.ab_descricao[xidxlng]:=xtxt1;
                 loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
                 loadx.lbloading.Repaint;
                 xtxt1:=recebetraducao(xtxt1,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
                 if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 listaAux.ab_descricao[xid_default]:=xtxt1;
              end;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  if (axgal_id<>xidxlng) AND (axgal_id<>xid_default) then begin
                     loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(axgal_id).Caption;
                     loadx.lbloading.Repaint;
                     xtxt1:=recebetraducao(listaAux.ab_descricao[xid_default],listaLng.trd[xid_default],listaLng.trd[axgal_id]);
                     if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
                     if xtxt1 = '<|erro|>' then begin
                        loadx.Close;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     listaAux.ab_descricao[axgal_id]:=xtxt1;
                  end;
              end;
              loadx.lbloading.Caption:='Gravando dados, aguarde.';
              loadx.lbloading.Repaint;
        end else begin
              loadx.Progressloading2.Max:=listaLng.count*2;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  listaAux.ab_descricao[axgal_id]:=xtxt1;
              end;
        end;
        axcod_gal:=0;
        loadx.Progressloading.position:=40;
        for axgal_id:=0 to listaLng.count-1 do begin
            loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
            axcod:=dm.GetCodMax(LstTables.Table[0],'codigo','');
            Application.ProcessMessages;
            if axcod_gal=0 then axcod_gal:=axcod;
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_gal,cod_web,cod_lng,cod_psn,cod_ls,descricao,textft,blb,xtp,cod_usrw,cod_class) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_gal;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsInteger:=cod_model;
                 Params[5].AsString:=BoolToStr(ab_default.Checked);
                 Params[6].AsString:=listaAux.ab_descricao[axgal_id];
                 Params[7].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[8].LoadFromStream(xtxt3,ftblob);
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsInteger:=axcod_ent;
                 Params[11].AsInteger:=axcodgrp;
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
             end;
        end;
        ax_ab_codinsert:= axcod;
        loadx.Progressloading.position:=50;
        loadx.Progressloading2.Visible:=false;
        loadx.repaint;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET descricao=:p0,textft=:p1,blb=:p2 '+
                       'WHERE codigo=:p3';
            loadx.Progressloading.position:=20;
            Params[0].AsString:=ab_titulo.Text;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsInteger:=ax_ab_cod;
            try
                Execute;
                loadx.Progressloading.position:=30;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_ab_codinsert:= ax_ab_cod;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_psn=:p0,cod_ls=:p1,cod_class=:p2 '+
                       'WHERE cod_gal=:p3';
            loadx.Progressloading.position:=40;
            Params[0].AsInteger:=StrtoInt(LstModels.codigo[ComboBox_model.ItemIndex]);
            Params[1].AsString:=BoolToStr(ab_default.Checked);
            Params[2].AsInteger:=axcodgrp;
            Params[3].AsInteger:=axcod_gal;
            try
                Execute;
                loadx.Progressloading.position:=50;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
        end;
     end;
     xtxt2.Free;
     xtxt3.Free;
     //gravar logo
     Application.ProcessMessages;
     xlogotmp1.Seek(0,soFromBeginning);
     xexecutaimg:=true;
     if ab_cod.Caption = 'novo' then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[1],'INST','codigo','cod_gal','icon','','icon_sz','',IntToStr(axcod_gal),xlogotmp1,nil);
     end else if xupdatelogo1 then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[1],'UPDT','cod_gal','','icon','','icon_sz','',IntToStr(axcod_gal),xlogotmp1,nil);
     end;
     if not xexecutaimg then begin
        try loadx.Close; except end;
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;
     travaformImages(true);
     xupdatelogo1:=false;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
     Application.ProcessMessages;
     dm.ds_sql.Locate('codigo',ax_ab_codinsert,[]);
     atualiza_grade;
     if chk_view1.Checked then getLogo1;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table1;
             monta_table2(False,False);
             monta_table3;
          end;
      end;
end;

procedure Tmdl_lstsrv.bt_save2Click(Sender: TObject);
var axcod,axcod2,axgal_id,xidxlng,xid_default,axcodinsert : integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     axcodinsert:=0;
     if ms_titulo.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        ms_titulo.SetFocus;
        exit;
     end;
     if ab_cod.Caption = 'novo' then begin
        hwsf.BtMensagem('É necessário gravar as alterações.');
        exit;
     end;

     try
         ms_av1.Text:=FormatFloat('0.00',StrToFloat(ms_av1.Text));
     except
         ms_av1.Text:='0.00';
     end;
     try
         ms_av2.Text:=FormatFloat('0.00',StrToFloat(ms_av2.Text));
     except
         ms_av2.Text:='0.00';
     end;
     try
         ms_av3.Text:=FormatFloat('0.00',StrToFloat(ms_av3.Text));
     except
         ms_av3.Text:='0.00';
     end;
     try
         ms_av4.Text:=FormatFloat('0.00',StrToFloat(ms_av4.Text));
     except
         ms_av4.Text:='0.00';
     end;
     try
         ms_av6.Text:=FormatFloat('0.00',StrToFloat(ms_av6.Text));
     except
         ms_av6.Text:='0.00';
     end;
     try
         ms_av7.Text:=FormatFloat('0.00',StrToFloat(ms_av7.Text));
     except
         ms_av7.Text:='0.00';
     end;
     try
         ms_av8.Text:=FormatFloat('0.00',StrToFloat(ms_av8.Text));
     except
         ms_av8.Text:='0.00';
     end;
     axshowing:= loadx.Showing;
     xidxlng:=PageControl_languagens.TabIndex;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     Application.ProcessMessages;
     loadx.Progressloading.position:=10;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor2.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm.RtfToHtml2('',false,re_editor2);
     if ms_cod.Caption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= ms_titulo.Text;
        loadx.Progressloading.position:=30;
        if RadioButton1.Checked then axInc_traduzir:=true
        else if RadioButton2.Checked then axInc_traduzir:=false
        else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
        if axInc_traduzir then begin
              loadx.Progressloading2.Max:=listaLng.count*3;
              loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xidxlng).Caption;
              loadx.lbloading.Repaint;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  listaAux.ms_descricao[axgal_id]:= '';
                  if listaLng.trd[axgal_id]='English' then xid_default:=axgal_id;
              end;
              if (xid_default=xidxlng) then begin
                 listaAux.ms_descricao[xid_default]:=xtxt1;
              end else begin
                 listaAux.ms_descricao[xidxlng]:=xtxt1;
                 loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
                 loadx.lbloading.Repaint;
                 xtxt1:=recebetraducao(xtxt1,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
                 if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ms_descricao[xid_default];
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 xtxt2.Text:=recebetraducao(xtxt2.Text,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
                 listaAux.ms_descricao[xid_default]:=xtxt1;
              end;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  if (axgal_id<>xidxlng) AND (axgal_id<>xid_default) then begin
                     loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(axgal_id).Caption;
                     loadx.lbloading.Repaint;
                     xtxt1:=recebetraducao(listaAux.ms_descricao[xid_default],listaLng.trd[xid_default],listaLng.trd[axgal_id]);
                     if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ms_descricao[xid_default];
                     if xtxt1 = '<|erro|>' then begin
                        loadx.Close;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     listaAux.ms_descricao[axgal_id]:=xtxt1;
                  end;
              end;
              loadx.lbloading.Caption:='Gravando dados, aguarde.';
              loadx.lbloading.Repaint;
        end else begin
              loadx.Progressloading2.Max:=listaLng.count*2;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  listaAux.ms_descricao[axgal_id]:=xtxt1;
              end;
        end;
        axcod_img:=0;
        loadx.Progressloading.position:=40;
        for axgal_id:=0 to listaLng.count-1 do begin
            loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
            axcod:=dm.GetCodMax(LstTables.Table[2],'codigo','');
            Application.ProcessMessages;
            if axcod_img=0 then axcod_img:=axcod;
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[2]+' (codigo,cod_img,cod_gal,cod_lng,avlun,avlum,avlmn,avlmm,cod_pri,dskun,avlhn,avlhm,descricao,textft,blb) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_img;
                 Params[2].AsInteger:=axcod_gal;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsFloat:= StrToFloat(ms_av1.Text);
                 Params[5].AsFloat:= StrToFloat(ms_av2.Text);
                 Params[6].AsFloat:= StrToFloat(ms_av3.Text);
                 Params[7].AsFloat:= StrToFloat(ms_av4.Text);
                 Params[8].AsInteger:= ms_av5.Value;
                 Params[9].AsFloat:= StrToFloat(ms_av6.Text);
                 Params[10].AsFloat:= StrToFloat(ms_av7.Text);
                 Params[11].AsFloat:= StrToFloat(ms_av8.Text);
                 Params[12].AsString:=listaAux.ms_descricao[axgal_id];
                 Params[13].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[14].LoadFromStream(xtxt3,ftblob);
                 try                       
                     Execute;
                 except
                     try loadx.Close; except end;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
             end;
        end;
        axcodinsert:=axcod;
        loadx.Progressloading.position:=50;
        loadx.Progressloading2.Visible:=false;
        loadx.repaint;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[2]+' SET avlun=:p0,avlum=:p1,avlmn=:p2,avlmm=:p3,cod_pri=:p4,dskun=:p5,avlhn=:p6,avlhm=:p7,descricao=:p8,textft=:p9,blb=:p10 '+
                          'WHERE codigo=:p11';
            Params[0].AsFloat:= StrToFloat(ms_av1.Text);
            Params[1].AsFloat:= StrToFloat(ms_av2.Text);
            Params[2].AsFloat:= StrToFloat(ms_av3.Text);
            Params[3].AsFloat:= StrToFloat(ms_av4.Text);
            Params[4].AsInteger:= ms_av5.Value;
            Params[5].AsFloat:= StrToFloat(ms_av6.Text);
            Params[6].AsFloat:= StrToFloat(ms_av7.Text);
            Params[7].AsFloat:= StrToFloat(ms_av8.Text);
            Params[8].AsString:=ms_titulo.Text;
            loadx.Progressloading.position:=20;
            Params[9].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[10].LoadFromStream(xtxt3,ftblob);
            Params[11].AsInteger:=ax_ms_cod;
            loadx.Progressloading.position:=30;
        end;
        try
            loadx.Progressloading.position:=40;
            dm.executa.Execute;
            loadx.Progressloading.position:=50;
        except
            try loadx.Close; except end;
            hwsf.BtMensagem('Ocorreu algum erro.');
            exit;
        end;
        axcodinsert:=ax_ms_cod;
     end;
     xtxt2.Free;
     xtxt3.Free;
     //gravar logo
     Application.ProcessMessages;
     xlogotmp2.Seek(0,soFromBeginning);
     xampltmp2.Seek(0,soFromBeginning);
     xexecutaimg:=true;
     if (xlogosz2>0) then begin
       if ms_cod.Caption = 'novo' then begin
          xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(axcod_img),xlogotmp2,xampltmp2);
       end else if xupdatelogo2 then begin
          xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[3],'UPDT','cod_img','','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(axcod_img),xlogotmp2,xampltmp2);
       end;
     end;
     if not xexecutaimg then begin
        try loadx.Close; except end;
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;
     xupdatelogo2:=false;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     Application.ProcessMessages;
     dm.ds_sql3.Locate('codigo',axcodinsert,[]);
     atualiza_grade2;
     if chk_view2.Checked then getLogo2;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.getLogo1;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=axcod_gal;
     Except
        axcodBlb:=0;
     End;
     xlogotmp1.Clear;
     xlogotmp1.Position:=0;
     xlogotmp1 := dm.GetBinaryStreamPH(LstTables.Table[1],'cod_gal','icon',IntToStr(axcodBlb));
     xlogotmp1.Seek(0,soFromBeginning);
     Label_size1.Caption:=Formatfloat('0',(xlogotmp1.Size/1000))+' kb';
     xlogotmp1.Seek(0,soFromBeginning);
     {xlogotmp1.Clear;
     With dm.executa7 do begin
        CommandText:='SELECT icon,icon_sz FROM '+LstTables.Table[1]+' WHERE cod_gal='+#39+IntToStr(axcodBlb)+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('icon')).SaveToStream(xlogotmp1);
           Label_size1.Caption:=Formatfloat('0',(fieldbyname('icon_sz').AsInteger/1000))+' kb';
        end;
        Close;
     end;}
     Application.ProcessMessages;
     abretmplogo1;
     Application.ProcessMessages;
end;

procedure Tmdl_lstsrv.getLogo3;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=axcod_class;
     Except
        axcodBlb:=0;
     End;
     xlogotmp3.Clear;
     xlogotmp3.Position:=0;
     xlogotmp3 := dm.GetBinaryStreamPH(LstTables.Table[1]+'_ax','cod_class','icon',IntToStr(axcodBlb));
     xlogotmp3.Seek(0,soFromBeginning);
     Label_size3.Caption:=Formatfloat('0',(xlogotmp3.Size/1000))+' kb';
     xlogotmp3.Seek(0,soFromBeginning);
     {xlogotmp3.Clear;
     With dm.executa7 do begin
        CommandText:='SELECT icon,icon_sz FROM '+LstTables.Table[1]+'_ax WHERE cod_class='+#39+IntToStr(axcodBlb)+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('icon')).SaveToStream(xlogotmp3);
           Label_size3.Caption:=Formatfloat('0',(fieldbyname('icon_sz').AsInteger/1000))+' kb';
        end;
        Close;
     end;}
     Application.ProcessMessages;
     abretmplogo3;
     Application.ProcessMessages;
end;

procedure Tmdl_lstsrv.abretmplogo1;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp1.Seek(0,soFromBeginning);
    if xlogotmp1.Size <= 0 then begin
       swf_logo1.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfile1.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xlogotmp1.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo1.Visible:=true;
            swf_logo1.LoadMovie(0,'lixo');
            swf_logo1.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_logo1.Visible:=false;
        xlogotmp1.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir.');
    end;
end;

procedure Tmdl_lstsrv.abretmplogo3;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp3.Seek(0,soFromBeginning);
    if xlogotmp3.Size <= 0 then begin
       swf_logo3.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfile3.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xlogotmp3.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo3.Visible:=true;
            swf_logo3.LoadMovie(0,'lixo');
            swf_logo3.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_logo3.Visible:=false;
        xlogotmp3.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir.');
    end;
end;

procedure Tmdl_lstsrv.getLogo2;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=StrtoInt(ms_cod.Caption);
     Except
        axcodBlb:=0;
     End;
     xlogotmp2.Clear;
     xlogotmp2.Position:=0;
     xlogotmp2 := dm.GetBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico',IntToStr(axcodBlb));
     xlogotmp2.Seek(0,soFromBeginning);
     Label_size2.Caption:=Formatfloat('0',(xlogotmp2.Size/1000))+' kb';
     xlogotmp2.Seek(0,soFromBeginning);
     {xlogotmp2.Clear;
     With dm.executa7 do begin
        CommandText:='SELECT img_ico,img_ico_sz FROM '+LstTables.Table[3]+' WHERE cod_img='+#39+IntToStr(axcodBlb)+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('img_ico')).SaveToStream(xlogotmp2);
           Label_size2.Caption:=Formatfloat('0',(fieldbyname('img_ico_sz').AsInteger/1000))+' kb';
        end;
        Close;
     end;}
     Application.ProcessMessages;
     abretmplogo2;
     Application.ProcessMessages;
end;

procedure Tmdl_lstsrv.abretmplogo2;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp2.Seek(0,soFromBeginning);
    if xlogotmp2.Size <= 0 then begin
       swf_logo2.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfile2.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xlogotmp2.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_logo2.Visible:=true;
            swf_logo2.LoadMovie(0,'lixo');
            swf_logo2.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_logo2.Visible:=false;
        xlogotmp2.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir.');
    end;
end;

procedure Tmdl_lstsrv.getBanner;
begin
     xbannertmp.Clear;
     xbannertmp.Position:=0;
     xbannertmp := dm.GetBinaryStreamPH(LstTables.Table[5],'codigo','cp12',cfg_cod.Caption);
     xbannertmp.Seek(0,soFromBeginning);
     Label_size3.Caption:=Formatfloat('0',(xbannertmp.Size/1000))+' kb';
     xbannertmp.Seek(0,soFromBeginning);
     {xbannertmp.Clear;
     With dm.executa7 do begin
        CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[5]+' WHERE codigo='+#39+cfg_cod.Caption+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('cp12')).SaveToStream(xbannertmp);
           Label_size_pers.Caption:=Formatfloat('0',(fieldbyname('cp13').AsInteger/1000))+' kb';
        end;
        Close;
     end;}
     abretmpbanner;
end;

procedure Tmdl_lstsrv.abretmpbanner;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xbannertmp.Seek(0,soFromBeginning);
    if xbannertmp.Size <= 0 then begin
       swf_banner.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfile3.tmp';
    erro:= true;
    if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    try
        xbannertmp.SaveToFile(ax_filenm);
        erro:= false;
    except
        erro:= true;
    end;
    if not erro then begin
        try
            swf_banner.Visible:=true;
            swf_banner.LoadMovie(0,'lixo');
            swf_banner.LoadMovie(0,ax_filenm);
            erro:= false;
        except
            erro:= true;
        end;
    end;
    Try
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
    Except End;
    if erro then begin
        swf_banner.Visible:=false;
        xbannertmp.Clear;
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tmdl_lstsrv.bt_limpar1Click(Sender: TObject);
begin
      limpaphoto1(True);
      if hwsf.BtConfirma('Gravar dados?') then begin
         bt_save1.Click;
         if chk_view1.Checked then getLogo1;
      end;
end;

procedure Tmdl_lstsrv.bt_limpar2Click(Sender: TObject);
begin
      limpaphoto2(True);
      if hwsf.BtConfirma('Gravar dados da imagem?') then begin
         bt_save2.Click;
         if chk_view2.Checked then getLogo2;
      end;
end;

procedure Tmdl_lstsrv.bt_view1Click(Sender: TObject);
begin
      if dm.ds_sql.RecordCount>0 then begin
         Application.CreateForm(Tmdl_richgalery_view,mdl_richgalery_view);
         mdl_richgalery_view.TableImage.xcp_cod:='codigo';
         mdl_richgalery_view.TableImage.xcp_descricao:='descricao';
         mdl_richgalery_view.TableImage.xcp_img:='icon';
         mdl_richgalery_view.TableImage.xcp_tableimg:=LstTables.Table[1];
         mdl_richgalery_view.TableImage.xcp_codimg:='cod_gal';
         mdl_richgalery_view.TableImage.xcp_table:= dm.ds_sql;
         mdl_richgalery_view.Show;
      end;
end;

procedure Tmdl_lstsrv.bt_open1Click(Sender: TObject);
var xfilext,xnamefile: String;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    codAbrirtmp: TPicture;
    codGraphic: TBitmap;
    codStream: TMemoryStream;
    xab_w,xab_h,xab_dpi,xab_cp,
    xab_h_tmp,xab_w_tmp: Integer;
    xerror,xab_ajt,xab_pr: Boolean;
    xcalc1: Real;
    axshowing: Boolean;
begin
      if ComboBox_model.ItemIndex=-1 then begin
         hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
         ComboBox_model.SetFocus;
         exit;
      end;
      if ImportarImgDialog.Execute then begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando imagem';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando imagem';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=10;
         xnamefile := ImportarImgDialog.FileName;
         xfilext:=LowerCase(ExtractFileExt(xnamefile));
         if ab_titulo.Text='' then
            ab_titulo.Text:=copy(ExtractFileName(xnamefile),1,Length(ExtractFileName(xnamefile))-(Length(xfilext)));
         limpaphoto1(True);
         if ((xfilext='.swf') or (xfilext='.flv')) then begin
              loadx.Progressloading.position:=80;
              xlogotmp1.LoadFromFile(ImportarImgDialog.FileName);
              xlogotmp1.Seek(0,soFromBeginning);
              loadx.Progressloading.position:=90;
              xlogosz1:=xlogotmp1.Size;
         end else begin
         With dm.ds_sql4 do begin
              if Locate('descricao',ComboBox_model.Text,[]) then begin
                 xab_w:=fieldbyname('ab_w').AsInteger;
                 xab_h:=fieldbyname('ab_h').AsInteger;
                 xab_dpi:=fieldbyname('ab_dpi').AsInteger;
                 xab_cp:=fieldbyname('ab_cp').AsInteger;
                 xab_ajt:=StrToBool(fieldbyname('ab_ajt').AsString);
                 xab_pr:=StrToBool(fieldbyname('ab_pr').AsString);
              end else begin
                 try loadx.Close; except end;
                 hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
                 ComboBox_model.SetFocus;
                 exit;
              end;
         end;
         loadx.Progressloading.position:=20;
         codStream:= TMemoryStream.Create;
         codBitmap:=TBitmap.Create;
         codGraphic:=TBitmap.Create;
         codJpeg:=TJPEGImage.Create;
         codAbrirtmp:= TPicture.Create;
         xerror:=false;
         if (xfilext='.bmp') then begin
            try
               codGraphic.LoadFromFile(ImportarImgDialog.FileName);
            except
               xerror:=true;
            end;
         end else if (xfilext='.jpg') or (xfilext='.jpeg') then begin
            try
               codJpeg.LoadFromFile(ImportarImgDialog.FileName);
               With codGraphic do begin
                    Width := codJpeg.Width;
                    Height := codJpeg.Height;
                    Canvas.Draw(0,0,codJpeg);
               end;
            except
               xerror:=true;
            end;
         end else if (xfilext='.ico') then begin
            try
               codAbrirtmp.LoadFromFile(ImportarImgDialog.FileName);
               With codGraphic do begin
                    Width := codAbrirtmp.Width;
                    Height := codAbrirtmp.Height;
                    Canvas.Draw(0,0,codAbrirtmp.Icon);
               end;
            except
               xerror:=true;
            end;
         end else xerror:=true;
         if xerror then begin
            codBitmap.Free;
            codGraphic.Free;
            codStream.Free;
            codJpeg.Free;
            codAbrirtmp.Free;
            try loadx.Close; except end;
            hwsf.BtMensagem('Formato de arquivo inválido.');
            exit;
         end;
         loadx.Progressloading.position:=30;
         With codBitmap do begin
              if not xab_ajt then begin
                 //não ajustar ao tamanho
                 //imagem ficara proporcional
                 if xab_h > xab_w then begin
                    xcalc1 := (((xab_h*100)/codGraphic.Height)/100);
                 end else begin
                    xcalc1 := (((xab_w*100)/codGraphic.Width)/100);
                 end;
                 xab_h:= StrToInt(formatfloat('0',(codGraphic.Height*xcalc1)));
                 xab_w:= StrToInt(formatfloat('0',(codGraphic.Width*xcalc1)));
              end else begin
                 //ajustar ao tamanho
                 if xab_pr then begin
                    //se imagem proporcional
                    xcalc1:= (((codGraphic.Height*100)/xab_h)/100);
                    xab_h_tmp:=StrToInt(formatfloat('0',(xab_h*xcalc1)));
                    xab_w_tmp:=StrToInt(formatfloat('0',(xab_w*xcalc1)));
                    codGraphic.Height:=xab_h_tmp;
                    codGraphic.Width:=xab_w_tmp;
                 end;
              end;
              loadx.Progressloading.position:=40;
              Width := xab_w;
              Height := xab_h;
              loadx.Progressloading.position:=50;
              Canvas.StretchDraw(Rect(0, 0, xab_w, xab_h),codGraphic);
              loadx.Progressloading.position:=60;
         end;
         With codJpeg do begin
              Assign(codBitmap);
              loadx.Progressloading.position:=70;
              CompressionQuality:=xab_cp;
              Compress;
              loadx.Progressloading.position:=80;
              SaveToStream(xlogotmp1);
              xlogotmp1.Seek(0,soFromBeginning);
              loadx.Progressloading.position:=90;
              xlogosz1:=xlogotmp1.Size;
         end;
         loadx.Progressloading.position:=100;
         codBitmap.Free;
         codGraphic.Free;
         codStream.Free;
         codJpeg.Free;
         codAbrirtmp.Free;
         end;
         bt_save1.Click;
         try loadx.Close; except end;
      end;
end;

procedure Tmdl_lstsrv.bt_open2Click(Sender: TObject);
var xfilext,xnamefile: String;
    xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
    xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp: Integer;
    xerror,xic_ajt,xic_pr,xil_ajt,xil_pr: Boolean;
    axshowing: Boolean;
begin
      if ComboBox_model.ItemIndex=-1 then begin
         hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
         ComboBox_model.SetFocus;
         exit;
      end;
      if ImportarImgDialog.Execute then begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando imagem';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando imagem';
            loadx.lbloading.Repaint;
         end;
         Application.ProcessMessages;
         loadx.Progressloading.position:=10;
         With dm.ds_sql4 do begin
              if Locate('descricao',ComboBox_model.Text,[]) then begin
                 //icone
                 xic_w:=fieldbyname('ic_w').AsInteger;
                 xic_h:=fieldbyname('ic_h').AsInteger;
                 xic_dpi:=fieldbyname('ic_dpi').AsInteger;
                 xic_cp:=fieldbyname('ic_cp').AsInteger;
                 xic_ajt:=StrToBool(fieldbyname('ic_ajt').AsString);
                 xic_pr:=StrToBool(fieldbyname('ic_pr').AsString);
                 //imagem ampliada
                 xil_w:=fieldbyname('il_w').AsInteger;
                 xil_h:=fieldbyname('il_h').AsInteger;
                 xil_dpi:=fieldbyname('il_dpi').AsInteger;
                 xil_cp:=fieldbyname('il_cp').AsInteger;
                 xil_ajt:=StrToBool(fieldbyname('il_ajt').AsString);
                 xil_pr:=StrToBool(fieldbyname('il_pr').AsString);
              end else begin
                 try loadx.Close; except end;
                 hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
                 ComboBox_model.SetFocus;
                 exit;
              end;
         end;
         //variaveis internas
         xlogotmp2_tmp:= TMemoryStream.Create;
         xampltmp2_tmp:= TMemoryStream.Create;
         xnamefile := ImportarImgDialog.FileName;
         xfilext:=LowerCase(ExtractFileExt(xnamefile));
         if ms_titulo.Text='' then
            ms_titulo.Text:=copy(ExtractFileName(xnamefile),1,Length(ExtractFileName(xnamefile))-(Length(xfilext)));
         if inserimg(xnamefile,xfilext,
                     xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
                     xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp,
                     xic_ajt,xic_pr,xil_ajt,xil_pr) then begin
             limpaphoto2(True);
             xlogotmp2_tmp.Seek(0,soFromBeginning);
             xlogotmp2.LoadFromStream(xlogotmp2_tmp);
             xlogotmp2.Seek(0,soFromBeginning);
             xlogosz2:=xlogotmp2.Size;
             //salva imagem ampliada
             xampltmp2_tmp.Seek(0,soFromBeginning);
             xampltmp2.LoadFromStream(xampltmp2_tmp);
             xampltmp2.Seek(0,soFromBeginning);
             xamplsz2:=xampltmp2.Size;
             Application.ProcessMessages;
             bt_save2.Click;
         end;
         loadx.Progressloading.position:=100;
         xlogotmp2_tmp.Free;
         xampltmp2_tmp.Free;
         try loadx.Close; except end;
      end;
end;

procedure Tmdl_lstsrv.chk_view1Click(Sender: TObject);
begin
      if chk_view1.Checked then getLogo1;
end;

procedure Tmdl_lstsrv.chk_view2Click(Sender: TObject);
begin
      if chk_view2.Checked then getLogo2;
end;

procedure Tmdl_lstsrv.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_lstsrv.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_lstsrv.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_lstsrv.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_lstsrv.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade;
end;

procedure Tmdl_lstsrv.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tmdl_lstsrv.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_lstsrv.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_lstsrv.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade2;
end;

procedure Tmdl_lstsrv.bt_view2Click(Sender: TObject);
begin
      getLogo2;
end;

procedure Tmdl_lstsrv.Ampliar1Click(Sender: TObject);
begin
      if dm.ds_sql3.RecordCount>0 then begin
         Application.CreateForm(Tmdl_richgalery_view,mdl_richgalery_view);
         mdl_richgalery_view.TableImage.xcp_cod:='codigo';
         mdl_richgalery_view.TableImage.xcp_descricao:='descricao';
         mdl_richgalery_view.TableImage.xcp_img:='img_larg';
         mdl_richgalery_view.TableImage.xcp_tableimg:=LstTables.Table[3];
         mdl_richgalery_view.TableImage.xcp_codimg:='cod_img';
         mdl_richgalery_view.TableImage.xcp_table:= dm.ds_sql3;
         mdl_richgalery_view.Show;
      end;
end;

procedure Tmdl_lstsrv.bt_recursiveClick(Sender: TObject);
var axstatInc: TStringList;
    axfilter, xfilext: string;
    xcod_executsound: Integer;
    //include
    xnamefile: String;
    xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
    xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp,xfor_idimg: Integer;
    xerror,xic_ajt,xic_pr,xil_ajt,xil_pr: Boolean;
    //sql
    xnamefilesql: String;
    axcod,axcod2: Integer;
    axshowing: Boolean;
    bt_search_ax: Tbt_search_ax;
    //traduzir
    axInc_traduzir: Boolean;
    xtxt1: String;
    axgal_id,xidxlng: Integer;
begin
      //adiciona recursivamente imagens no banco de dados
      axfilter:='Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf)|*.jpg;*.jpeg;*.bmp;*.ico;*.swf|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Flash (*.swf)|*.swf';
      bt_search_ax:= hwsf.Btsearch_ax(pathdefault,axfilter);
      pathdefault:=bt_search_ax.pathdefault;
      if bt_search_ax.filelist.Count>0 then begin
         if RadioButton1.Checked then axInc_traduzir:=true
         else if RadioButton2.Checked then axInc_traduzir:=false
         else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
         mdl_lstsrv.Repaint;
         axstatInc:= TStringList.Create;
         axstatInc.Clear;
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando imagens [1'+'/'+IntToStr(bt_search_ax.filelist.Count)+']';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando imagens [1'+'/'+IntToStr(bt_search_ax.filelist.Count)+']';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.Max:=bt_search_ax.filelist.Count;
         loadx.Progressloading.position:=0;
         loadx.Progressloading2.Visible:=true;
         loadx.repaint;
         Application.ProcessMessages;
         With dm.ds_sql4 do begin
              if Locate('descricao',ComboBox_model.Text,[]) then begin
                 //icone
                 xic_w:=fieldbyname('ic_w').AsInteger;
                 xic_h:=fieldbyname('ic_h').AsInteger;
                 xic_dpi:=fieldbyname('ic_dpi').AsInteger;
                 xic_cp:=fieldbyname('ic_cp').AsInteger;
                 xic_ajt:=StrToBool(fieldbyname('ic_ajt').AsString);
                 xic_pr:=StrToBool(fieldbyname('ic_pr').AsString);
                 //imagem ampliada
                 xil_w:=fieldbyname('il_w').AsInteger;
                 xil_h:=fieldbyname('il_h').AsInteger;
                 xil_dpi:=fieldbyname('il_dpi').AsInteger;
                 xil_cp:=fieldbyname('il_cp').AsInteger;
                 xil_ajt:=StrToBool(fieldbyname('il_ajt').AsString);
                 xil_pr:=StrToBool(fieldbyname('il_pr').AsString);
              end else begin
                 hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
                 ComboBox_model.SetFocus;
                 exit;
              end;
         end;
         //variaveis internas
         xlogotmp2_tmp:= TMemoryStream.Create;
         xampltmp2_tmp:= TMemoryStream.Create;
         for xfor_idimg:=0 to bt_search_ax.filelist.Count-1 do begin
             loadx.lbloading.Caption:='Importando imagens ['+IntToStr(xfor_idimg+1)+'/'+IntToStr(bt_search_ax.filelist.Count)+']';
             loadx.lbloading.Repaint;
             loadx.Progressloading.Position:=xfor_idimg+1;
             Application.ProcessMessages;
             xnamefile:=bt_search_ax.filelist.Strings[xfor_idimg];
             xfilext:=LowerCase(ExtractFileExt(xnamefile));
             xnamefilesql:=copy(ExtractFileName(xnamefile),1,Length(ExtractFileName(xnamefile))-(Length(xfilext)));
             axstatInc.Add('Gerando: '+xnamefile);
             if inserimg(xnamefile,xfilext,
                         xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
                         xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp,
                         xic_ajt,xic_pr,xil_ajt,xil_pr) then begin
                axcod:=dm.GetCodMax(LstTables.Table[2],'codigo','');
                if bt_search_ax.default then begin
                   xtxt1:= xnamefilesql;
                end else begin
                   xtxt1:= bt_search_ax.descricao+' '+IntToStr(bt_search_ax.countinit);
                   Inc(bt_search_ax.countinit);
                end;
                if axInc_traduzir then begin
                      loadx.Progressloading2.Max:=listaLng.count*3;
                      for axgal_id:=0 to listaLng.count-1 do begin
                          loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                          listaAux.ms_descricao[axgal_id]:= '';
                          if listaLng.trd[axgal_id]='English' then xidxlng:=axgal_id;
                      end;
                      listaAux.ms_descricao[xidxlng]:=xtxt1;
                      for axgal_id:=0 to listaLng.count-1 do begin
                          loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                          if (axgal_id<>xidxlng) then begin
                             xtxt1:=recebetraducao(listaAux.ms_descricao[xidxlng],listaLng.trd[xidxlng],listaLng.trd[axgal_id]);
                             if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ms_descricao[xidxlng];
                             if xtxt1 = '<|erro|>' then begin
                                loadx.Close;
                                hwsf.BtMensagem('Erro na conexão');
                                exit;
                             end;
                             listaAux.ms_descricao[axgal_id]:=xtxt1;
                          end;
                      end;
                end else begin
                      loadx.Progressloading2.Max:=listaLng.count*2;
                      for axgal_id:=0 to listaLng.count-1 do begin
                          loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                          listaAux.ms_descricao[axgal_id]:=xtxt1;
                      end;
                end;
                axcod_img:=0;
                for axgal_id:=0 to listaLng.count-1 do begin
                    Application.ProcessMessages;
                    loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                    axcod:=dm.GetCodMax(LstTables.Table[2],'codigo','');
                    if axcod_img=0 then axcod_img:=axcod;
                    with dm.executa do begin
                         CommandText:= 'INSERT INTO '+LstTables.Table[2]+' (codigo,cod_img,cod_gal,cod_lng,descricao,textft,blb) '+
                                    'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
                         Params[0].AsInteger:=axcod;
                         Params[1].AsInteger:=axcod_img;
                         Params[2].AsInteger:=axcod_gal;
                         Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                         Params[4].AsString:=listaAux.ms_descricao[axgal_id];
                         Params[5].AsString :='';
                         Params[6].AsString :='';
                         try
                             Execute;
                         except
                             try loadx.Close; except end;
                             hwsf.BtMensagem('Ocorreu algum erro.');
                             exit;
                         end;
                     end;
                end;
               if not xerror then begin
                  //gravar logo
                  xlogotmp2_tmp.Seek(0,soFromBeginning);
                  xampltmp2_tmp.Seek(0,soFromBeginning);
                  if not dm.PostBinaryStreamPH(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(axcod_img),xlogotmp2_tmp,xampltmp2_tmp) then begin
                     axstatInc.Add('Erro ao gravar imagem.');
                     xerror:=true;
                  end;
                  if not xerror then begin
                     axstatInc.Add('Imagem incluída com sucesso.');
                  end;
               end;
             end else begin
               axstatInc.Add('Tipo de arquivo inválido.');
             end;
             axstatInc.Add('');
         end;
         Application.ProcessMessages;
         xlogotmp2_tmp.Free;
         xampltmp2_tmp.Free;
         dm.ds_sql3.Close;
         dm.ds_sql3.Open;
         Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
         dm.ds_sql3.Last;
         atualiza_grade2;
         if chk_view2.Checked then getLogo2;
         loadx.Progressloading2.Visible:=false;
         try loadx.Close; except end;
         hwsf.BtAviso(axstatInc);
         axstatInc.Free;
      end;
end;

function Tmdl_lstsrv.inserimg(xnamefile,xfilext:String;
                      xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
                      xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp:Integer;
                      xic_ajt,xic_pr,xil_ajt,xil_pr: Boolean):Boolean;
var codBitmap,codBitmap2: TBitmap;
    codJpeg: TJPEGImage;
    codAbrirtmp: TPicture;
    codGraphic,codGraphic2: TBitmap;
    codStream: TMemoryStream;
    xerror,xswf: Boolean;
    xcalc1: Real;
begin
        Application.ProcessMessages;
        Try
          Result:=true;
          xlogotmp2_tmp.Clear;
          xlogotmp2_tmp.Seek(0,soFromBeginning);
          xampltmp2_tmp.Clear;
          xampltmp2_tmp.Seek(0,soFromBeginning);
          if ((xfilext='.swf') or (xfilext='.flv')) then begin
             xswf := false;
             loadx.Progressloading.position:=80;
             xlogotmp2_tmp.LoadFromFile(copy(xnamefile,1,Length(xnamefile)-4)+'_ico'+xfilext);
             xlogotmp2_tmp.Seek(0,soFromBeginning);
             loadx.Progressloading.position:=90;
             xampltmp2_tmp.LoadFromFile(xnamefile);
             xampltmp2_tmp.Seek(0,soFromBeginning);
          end else begin
             xswf := true;
             codBitmap:=TBitmap.Create;
             codBitmap2:=TBitmap.Create;
             codGraphic2:=TBitmap.Create;
             codStream:= TMemoryStream.Create;
             codGraphic:=TBitmap.Create;
             codJpeg:=TJPEGImage.Create;
             codAbrirtmp:= TPicture.Create;
             xerror:=false;
             if (xfilext='.bmp') then begin
                try
                   codGraphic.LoadFromFile(xnamefile);
                except
                   xerror:=true;
                end;
             end else if (xfilext='.jpg') or (xfilext='.jpeg') then begin
                try
                   codJpeg.LoadFromFile(xnamefile);
                   With codGraphic do begin
                        Width := codJpeg.Width;
                        Height := codJpeg.Height;
                        Canvas.Draw(0,0,codJpeg);
                   end;
                except
                   xerror:=true;
                end;
             end else if (xfilext='.ico') then begin
                try
                   codAbrirtmp.LoadFromFile(xnamefile);
                   With codGraphic do begin
                        Width := codAbrirtmp.Width;
                        Height := codAbrirtmp.Height;
                        Canvas.Draw(0,0,codAbrirtmp.Icon);
                   end;
                except
                   xerror:=true;
                end;
             end else xerror:=true;
             if not xerror then begin
                codGraphic2.Assign(codGraphic);
                With codBitmap do begin
                     if not xic_ajt then begin
                        //não ajustar ao tamanho
                        //imagem ficara proporcional
                        if xic_h > xic_w then begin
                           xcalc1 := (((xic_h*100)/codGraphic.Height)/100);
                        end else begin
                           xcalc1 := (((xic_w*100)/codGraphic.Width)/100);
                        end;
                        xic_h:= StrToInt(formatfloat('0',(codGraphic.Height*xcalc1)));
                        xic_w:= StrToInt(formatfloat('0',(codGraphic.Width*xcalc1)));
                     end else begin
                        //ajustar ao tamanho
                        if xic_pr then begin
                           //se imagem proporcional
                           xcalc1:= (((codGraphic.Height*100)/xic_h)/100);
                           xic_h_tmp:=StrToInt(formatfloat('0',(xic_h*xcalc1)));
                           xic_w_tmp:=StrToInt(formatfloat('0',(xic_w*xcalc1)));
                           codGraphic.Height:=xic_h_tmp;
                           codGraphic.Width:=xic_w_tmp;
                        end;
                     end;
                     Width := xic_w;
                     Height := xic_h;
                     Canvas.StretchDraw(Rect(0, 0, xic_w, xic_h),codGraphic);
                end;
                With codBitmap2 do begin
                     if not xil_ajt then begin
                        //não ajustar ao tamanho
                        //imagem ficara proporcional
                        if xil_h > xil_w then begin
                           xcalc1 := (((xil_h*100)/codGraphic2.Height)/100);
                        end else begin
                           xcalc1 := (((xil_w*100)/codGraphic2.Width)/100);
                        end;
                        xil_h:= StrToInt(formatfloat('0',(codGraphic2.Height*xcalc1)));
                        xil_w:= StrToInt(formatfloat('0',(codGraphic2.Width*xcalc1)));
                     end else begin
                        //ajustar ao tamanho
                        if xil_pr then begin
                           //se imagem proporcional
                           xcalc1:= (((codGraphic2.Height*100)/xil_h)/100);
                           xil_h_tmp:=StrToInt(formatfloat('0',(xil_h*xcalc1)));
                           xil_w_tmp:=StrToInt(formatfloat('0',(xil_w*xcalc1)));
                           codGraphic2.Height:=xil_h_tmp;
                           codGraphic2.Width:=xil_w_tmp;
                        end;
                     end;
                     Width := xil_w;
                     Height := xil_h;
                     Canvas.StretchDraw(Rect(0, 0, xil_w, xil_h),codGraphic2);
                end;
                With codJpeg do begin
                     //salva icone
                     Assign(codBitmap);
                     CompressionQuality:=xic_cp;
                     Compress;
                     SaveToStream(xlogotmp2_tmp);
                     //salva imagem ampliada
                     Assign(codBitmap2);
                     CompressionQuality:=xic_cp;
                     Compress;
                     SaveToStream(xampltmp2_tmp);
                end;
             end else begin
                Result:=false;
             end;
          end;
        finally
          if (xswf) then begin
            FreeAndNil(codBitmap);
            FreeAndNil(codBitmap);
            FreeAndNil(codBitmap2);
            FreeAndNil(codGraphic);
            FreeAndNil(codGraphic2);
            FreeAndNil(codStream);
            FreeAndNil(codJpeg);
            FreeAndNil(codAbrirtmp);
          end;
          Application.ProcessMessages;
        end;
end;

function Tmdl_lstsrv.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
begin
      Case xidxcod of
          0: Result:=lngtb1;
          1: Result:=lngtb2;
          2: Result:=lngtb3;
          3: Result:=lngtb4;
          4: Result:=lngtb5;
          5: Result:=lngtb6;
          6: Result:=lngtb7;
          7: Result:=lngtb8;
          8: Result:=lngtb9;
          9: Result:=lngtb10;
          10: Result:=lngtb11;
          11: Result:=lngtb12;
          12: Result:=lngtb13;
          13: Result:=lngtb14;
          14: Result:=lngtb15;
          15: Result:=lngtb16;
          16: Result:=lngtb17;
          17: Result:=lngtb18;
          18: Result:=lngtb19;
          19: Result:=lngtb20;
      End;
end;

procedure Tmdl_lstsrv.PageControl_languagensChange(Sender: TObject);
begin
      if PageControl1.TabIndex=0 then begin
         ab_cod.Caption:='0';
         ms_cod.Caption:='0';
         xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
         dm.ds_sql.Filter:=xdsqlfilter;
         dm.ds_sql3.Filter:=xdsqlfilter;
         dm.ds_sql6.Filter:=xdsqlfilter;
         atualiza_grade;
         atualiza_grade3;
      end else begin
         atualiza_grade_pers;
      end;
end;

procedure Tmdl_lstsrv.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_lstsrv.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_lstsrv.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
var xrecebido: Bool;
begin
      xrecebido:=false;
      xreceivetrad:='';
      Tradutor1.Texto:=xtrad_text;
      Tradutor1.TraduzirDe:=xtrad_de;
      Tradutor1.TraduzirPara:=xtrad_para;
      Tradutor1.Traduzir;
      xtimerresponse:=0;
      Timer_traduz.Enabled:=true;
      Repeat
           Application.ProcessMessages;
           if xreceivetrad<>'' then
              xrecebido:=true;
           if xtimerresponse>=60 then begin
              if not hwsf.BtConfirma('Falha na conexão, tentar novamente?') then begin
                 Result:='<|erro|>';
                 exit;
              end else begin
                 Tradutor1.Texto:=xtrad_text;
                 Tradutor1.TraduzirDe:=xtrad_de;
                 Tradutor1.TraduzirPara:=xtrad_para;
                 Tradutor1.Traduzir;
                 xtimerresponse:=0;
              end;
           end;
      Until xrecebido;
      Timer_traduz.Enabled:=false;
      if xreceivetrad='Error: Too many requests.  Please try again later.' then begin
         xreceivetrad:=xtrad_text;
         hwsf.BtMensagem('Erro na comunicação, aguarde alguns minutos e tente novamente.');
      end;
      Result:=xreceivetrad;
end;

procedure Tmdl_lstsrv.save_cfg(xcodlng: Integer);
var axcod : integer;
    axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=10;
     with dm.executa do begin
             CommandText:= 'UPDATE '+LstTables.Table[5]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp4=:p3,cp5=:p4,cp6=:p5,cp7=:p6,cp8=:p7,cp9=:p8,cp10=:p9,cp11=:p10,cp14=:p11,cp15=:p12,cp16=:p13 '+
                           'WHERE codigo=:p14';
             //lista de álbuns
             if cp1_0.Checked then Params[0].AsInteger:= 0
             else Params[0].AsInteger:= 1;
             Params[1].AsInteger:= cp2.ItemIndex;
             if cp3.Checked then Params[2].AsInteger:= 0
             else Params[2].AsInteger:= 1;
             Params[3].AsInteger:= cp4.ItemIndex;
             if cp5.Checked then Params[4].AsInteger:= 0
             else Params[4].AsInteger:= 1;
             //banco de imagens
             if cp6_0.Checked then Params[5].AsInteger:= 0
             else Params[5].AsInteger:= 1;
             Params[6].AsInteger:= cp7.ItemIndex;
             if cp8.Checked then Params[7].AsInteger:= 0
             else Params[7].AsInteger:= 1;
             Params[8].AsInteger:= cp9.ItemIndex;
             if cp10.Checked then Params[9].AsInteger:= 0
             else Params[9].AsInteger:= 1;
             loadx.Progressloading.position:=30;
             Params[10].AsString:= cfg_title.Text;
             Params[11].AsInteger:= cp14.ItemIndex;
             Params[12].AsInteger:= cp15.ItemIndex;
             Params[13].AsString:=AxDadosUsr.axparm;
             Params[14].AsInteger:=StrtoInt(cfg_cod.Caption);
             loadx.Progressloading.position:=20;
     end;
     try
          loadx.Progressloading.position:=40;
          dm.executa.Execute;
          loadx.Progressloading.position:=50;
     except
          try loadx.Close; except end;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     if xupdatebanner then begin
        xbannertmp.Seek(0,soFromBeginning);
        xupdatebanner:=dm.PostBinaryStreamPH(LstTables.Table[5],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
     end;
     //xupdatebanner:=False;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.monta_table3;
var listaLng_id,axcoddefault,xid_default: Integer;
    axshowing: Boolean;
    //inclui linguagens
    axListInsertLng: TStringList;
    axcod: Integer;
    xtxt1: String;
    axInc_traduzir: Boolean;
    xtotalreg,xIncludeCfg: Integer;
    axBannerStrm: TMemoryStream;
    banner_title : array[0..20] of String;
    axcp1,axcp2,axcp3,axcp4,axcp5,axcp6,axcp7,axcp8,axcp9,axcp10,axcp14,axcp15 : Integer;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando personalizações';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando personalizações';
        loadx.lbloading.Repaint;
     end;
     //Monta Lista de álbuns
     With dm.ds_sql5 do begin
          if Active then close;
          CommandText:= 'SELECT codigo,cod_web,cod_lng,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp14,cp15,cp16 FROM '+LstTables.Table[5]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND cp16='+#39+AxDadosUsr.axparm+#39+
                                ' ORDER BY cod_lng';
          Open;
          Filter:='';
          Filtered:=true;
          xIncludeCfg:=0;
          if (recordcount>0) and xinit then begin
             xIncludeCfg:=1;
          end else if xinit then begin
             xIncludeCfg:=2;
          end;
          if xIncludeCfg>0 then begin
             axListInsertLng:= TStringList.Create;
             axListInsertLng.Clear;
             if xIncludeCfg=1 then begin
                for listaLng_id:=0 to listaLng.count-1 do begin
                    banner_title[listaLng_id]:='';
                    if listaLng.trd[listaLng_id]='English' then xid_default:=listaLng_id;
                end;
                for listaLng_id:=0 to listaLng.count-1 do begin
                    if not Locate('cod_lng',listaLng.cod_lng[listaLng_id],[]) then
                       axListInsertLng.Add(IntToStr(listaLng_id));
                end;
             end else begin
                for listaLng_id:=0 to listaLng.count-1 do begin
                    banner_title[listaLng_id]:='';
                    if listaLng.trd[listaLng_id]='English' then xid_default:=listaLng_id;
                    axListInsertLng.Add(IntToStr(listaLng_id));
                end;
             end;
             xtotalreg:=axListInsertLng.Count;
             if axListInsertLng.Count>0 then begin
               try
                   axInc_traduzir:=True;
                   loadx.lbloading.Caption:='Sincronizando linguagens';
                   loadx.lbloading.Repaint;
                   if xIncludeCfg=1 then begin
                      if not Locate('cod_lng',listaLng.cod_lng[xid_default],[]) then begin
                         if not Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                            First;
                            for listaLng_id:=0 to listaLng.count-1 do begin
                                if listaLng.cod_lng[listaLng_id]=fieldbyname('cod_lng').AsInteger then begin
                                   axcoddefault:=listaLng_id;
                                   Break;
                                end;
                            end;
                         end;
                      end else axcoddefault:=xid_default;
                   end else axcoddefault:=xid_default;
                   loadx.Progressloading2.Visible:=true;
                   loadx.repaint;
                   loadx.Progressloading2.Max:=listaLng.count*(xtotalreg*2);
                   loadx.Progressloading2.Position:=0;
                   axBannerStrm:= TMemoryStream.Create;
                   axBannerStrm.Clear;
                   axBannerStrm.Seek(0,soFromBeginning);
                   if xIncludeCfg=1 then begin
                      if Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                         xtxt1:= fieldbyname('cp11').AsString;
                         axcp1:= fieldbyname('cp1').AsInteger;
                         axcp2:= fieldbyname('cp2').AsInteger;
                         axcp3:= fieldbyname('cp3').AsInteger;
                         axcp4:= fieldbyname('cp4').AsInteger;
                         axcp5:= fieldbyname('cp5').AsInteger;
                         axcp6:= fieldbyname('cp6').AsInteger;
                         axcp7:= fieldbyname('cp7').AsInteger;
                         axcp8:= fieldbyname('cp8').AsInteger;
                         axcp9:= fieldbyname('cp9').AsInteger;
                         axcp10:= fieldbyname('cp10').AsInteger;
                         axcp14:= fieldbyname('cp14').AsInteger;
                         axcp15:= fieldbyname('cp15').AsInteger;
                         With dm.executa7 do begin
                              CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[5]+' WHERE codigo='+#39+dm.ds_sql5.fieldbyname('codigo').AsString+#39;
                              Open;
                              if not fields[0].IsNull then begin
                                 TBlobField(FieldByName('cp12')).SaveToStream(axBannerStrm);
                              end;
                              Close;
                         end;
                      end;
                   end else begin
                      xtxt1:= 'Photos gallery';
                      axcp1:= 0;
                      axcp2:= 1;
                      axcp3:= 0;
                      axcp4:= 1;
                      axcp5:= 1;
                      axcp6:= 1;
                      axcp7:= 2;
                      axcp8:= 0;
                      axcp9:= 0;
                      axcp10:= 1;
                      axcp14:= 0;
                      axcp15:= 0;
                   end;
                   loadx.Progressloading.position:=80;
                   //traduzindo textos
                   if axInc_traduzir then begin
                            loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(axcoddefault).Caption;
                            loadx.lbloading.Repaint;
                            if (xid_default=axcoddefault) then begin
                               banner_title[xid_default]:=xtxt1;
                            end else begin
                               banner_title[axcoddefault]:=xtxt1;
                               loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
                               loadx.lbloading.Repaint;
                               xtxt1:=recebetraducao(xtxt1,listaLng.trd[axcoddefault],listaLng.trd[xid_default]);
                               if copy(xtxt1,1,7)='Error: ' then xtxt1:=banner_title[xid_default];
                               if xtxt1 = '<|erro|>' then begin
                                  loadx.Close;
                                  hwsf.BtMensagem('Erro na conexão');
                                  exit;
                               end;
                               banner_title[xid_default]:=xtxt1;
                            end;
                            for listaLng_id:=0 to axListInsertLng.count-1 do begin
                                loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                                if (StrToInt(axListInsertLng.Strings[listaLng_id])<>axcoddefault) AND (StrToInt(axListInsertLng.Strings[listaLng_id])<>xid_default) then begin
                                   loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(StrToInt(axListInsertLng.Strings[listaLng_id])).Caption;
                                   loadx.lbloading.Repaint;
                                   xtxt1:=recebetraducao(banner_title[xid_default],listaLng.trd[xid_default],listaLng.trd[StrToInt(axListInsertLng.Strings[listaLng_id])]);
                                   if copy(xtxt1,1,7)='Error: ' then xtxt1:=banner_title[xid_default];
                                   if xtxt1 = '<|erro|>' then begin
                                      loadx.Close;
                                      hwsf.BtMensagem('Erro na conexão');
                                      exit;
                                   end;
                                   banner_title[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt1;
                                end;
                            end;
                   end else begin
                            for listaLng_id:=0 to axListInsertLng.count-1 do begin
                                loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                                banner_title[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt1;
                            end;
                   end;
                   loadx.lbloading.Caption:='Gravando dados, aguarde.';
                   loadx.lbloading.Repaint;
                   for listaLng_id:=0 to axListInsertLng.count-1 do begin
                          loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                          axcod:=dm.GetCodMax(LstTables.Table[5],'codigo','');
                          with dm.executa do begin
                               CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_web,cod_lng,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp14,cp15,cp16) '+
                                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:cp12,:cp13,:cp14,:cp15,:cp16)';
                               Params[0].AsInteger:=axcod;
                               loadx.Progressloading.position:=20;
                               Params[1].AsInteger:=AxDadosUsr.cod_web;
                               Params[2].AsInteger:=listaLng.cod_lng[StrToInt(axListInsertLng.Strings[listaLng_id])];
                               //lista de álbuns
                               Params[3].AsInteger:= axcp1;
                               Params[4].AsInteger:= axcp2;
                               Params[5].AsInteger:= axcp3;
                               Params[6].AsInteger:= axcp4;
                               Params[7].AsInteger:= axcp5;
                               //banco de imagens
                               Params[8].AsInteger:= axcp6;
                               Params[9].AsInteger:= axcp7;
                               Params[10].AsInteger:= axcp8;
                               Params[11].AsInteger:= axcp9;
                               Params[12].AsInteger:= axcp10;
                               loadx.Progressloading.position:=30;
                               Params[13].AsString:= banner_title[StrToInt(axListInsertLng.Strings[listaLng_id])];
                               Params[14].AsInteger:= axcp14;
                               Params[15].AsInteger:= axcp15;
                               Params[16].AsString:=AxDadosUsr.axparm;
                               Execute;
                          end;
                          axBannerStrm.Seek(0,soFromBeginning);
                          dm.PostBinaryStreamPH(LstTables.Table[5],'UPDT','codigo','','cp12','','cp13','',IntToStr(axcod),axBannerStrm,nil);
                   end;
                   axBannerStrm.Free;
               except
                    Close;
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro, reinicie o módulo.');
                    Application.Terminate;
               end;
               //salva alterações
               Close;
               Open;
               loadx.Progressloading2.Visible:=false;
               loadx.Repaint;
             end;
             axListInsertLng.Free;
          end;
     end;
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.atualiza_grade_pers;
var axshowing: Boolean;
    axlocid: Integer;
begin
     //banner
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando personalizações';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando personalizações';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      with dm.ds_sql5 do begin
         if Locate('cod_lng',listaLng.cod_lng[PageControl_languagens.TabIndex],[]) then begin
            if cfg_cod.Caption=fieldbyname('codigo').AsString then begin
               try loadx.Close; except end;
               exit;
            end;
            limpaphoto_pers(False);
            loadx.Progressloading.position:=20;
            cfg_cod.Caption:=fieldbyname('codigo').AsString;
            loadx.Progressloading.position:=30;
            cfg_title.Text:=fieldbyname('cp11').AsString;
            //álbuns
            if fieldbyname('cp1').AsInteger=0 then cp1_0.Checked:=true
            else cp1_1.Checked:=true;
            cp2.ItemIndex:=fieldbyname('cp2').AsInteger;
            if fieldbyname('cp3').AsInteger=0 then cp3.Checked:=true
            else cp3.Checked:=false;
            cp4.ItemIndex:=fieldbyname('cp4').AsInteger;
            if fieldbyname('cp5').AsInteger=0 then cp5.Checked:=true
            else cp5.Checked:=false;
            //fotos
            if fieldbyname('cp6').AsInteger=0 then cp6_0.Checked:=true
            else cp6_1.Checked:=true;
            cp7.ItemIndex:=fieldbyname('cp7').AsInteger;
            if fieldbyname('cp8').AsInteger=0 then cp8.Checked:=true
            else cp8.Checked:=false;
            cp9.ItemIndex:=fieldbyname('cp9').AsInteger;
            if fieldbyname('cp10').AsInteger=0 then cp10.Checked:=true
            else cp10.Checked:=false;
            cp14.ItemIndex:=fieldbyname('cp14').AsInteger;
            cp15.ItemIndex:=fieldbyname('cp15').AsInteger;
            loadx.Progressloading.position:=50;
         end else begin
            try loadx.Close; except end;
            exit;
         end;
      end;
      getBanner;
      try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.limpaphoto_pers(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size_pers.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstsrv.bt_open_persClick(Sender: TObject);
var xfilext,xnamefile: String;
    xerror: Boolean;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    axshowing: Boolean;
begin
      if OpenBannerDialog.Execute then begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando banner';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando banner';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=50;
         limpaphoto_pers(xupdatebanner);
         xnamefile:= OpenBannerDialog.FileName;
         xfilext:=LowerCase(ExtractFileExt(xnamefile));
         xerror:=false;
         if (xfilext='.bmp') then begin
            try
               codJpeg:= TJPEGImage.Create;
               codBitmap:= TBitmap.Create;
               codBitmap.LoadFromFile(xnamefile);
               With codJpeg do begin
                  Assign(codBitmap);
                  CompressionQuality:=30;
                  Compress;
                  SaveToStream(xbannertmp);
               end;
            except
               xerror:=true;
            end;
            try
               codJpeg.Free;
               codBitmap.Free;
            except
            end;
         end else if (xfilext='.jpg') or (xfilext='.jpeg') then begin
            try
               xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
            except
               xerror:=true;
            end;
         end else if ((xfilext='.swf') or (xfilext='.flv')) then begin
            try
               xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
            except
               xerror:=true;
            end;
         end else xerror:=true;
         loadx.Progressloading.position:=100;
         if xerror then begin
            limpaphoto_pers(xupdatebanner);
            try loadx.Close; except end;
            hwsf.BtMensagem('Formato de arquivo inválido.');
            exit;
         end;
         xbannertmp.Seek(0,soFromBeginning);
         xbannersz:=xbannertmp.Size;
         if (xbannersz > 700000) then begin
            limpaphoto_pers(xupdatebanner);
            try loadx.Close; except end;
            hwsf.BtMensagem('Tamanho do arquivo excedeu o limite de 700 kb.');
            exit;
         end;
         xupdatebanner:=true;
         try loadx.Close; except end;
         xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
         abretmpbanner;
      end;
end;

procedure Tmdl_lstsrv.bt_limpar_persClick(Sender: TObject);
begin
      limpaphoto_pers(true);
end;

procedure Tmdl_lstsrv.bt_save_persClick(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens.TabIndex]);
end;

procedure Tmdl_lstsrv.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade_pers;
end;

procedure Tmdl_lstsrv.MenuItem1Click(Sender: TObject);
var axshowing: Boolean;
begin
     //banco de imagens excluir todas as fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo imagens';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo imagens';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm.ds_sql3.RecordCount>0) and (ms_cod.Caption<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[2],'cod_gal',ab_cod.Caption,true) then begin
           loadx.Progressloading.position:=75;
           With dm.ds_sql3 do begin
                First;
                While not Eof do begin
                    dm.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',fieldbyname('cod_img').AsString);
                    //dm.deleta_reg(LstTables.Table[3],'cod_img',fieldbyname('cod_img').AsString,false);
                    Next;
                end;
           end;
           loadx.Progressloading.position:=100;
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade2;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.bt_del2Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo imagem';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo imagem';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm.ds_sql3.RecordCount>0) and (ms_cod.Caption<>'novo') then begin
        axcod:= StrToInt(ms_cod.Caption) + 1;
        if dm.deleta_reg(LstTables.Table[2],'cod_img',ms_cod.Caption,true) then begin
           loadx.Progressloading.position:=50;
           dm.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',ms_cod.Caption);
           //dm.deleta_reg(LstTables.Table[3],'cod_img',ms_cod.Caption,false);
           loadx.Progressloading.position:=100;
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           if not dm.ds_sql3.Locate('codigo',axcod,[]) then
           if not dm.ds_sql3.Locate('codigo',axcod-2,[]) then
              dm.ds_sql3.First;
           atualiza_grade2;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.ComboBox_entChange(Sender: TObject);
begin
      if StrtoInt(AxDadosUsr.axparm) > 5000 then begin
         if dm.executa5.Locate('cp1',ComboBox_ent.Text,[]) then begin
            if axcod_ent<>dm.executa5.fieldbyname('codigo').AsInteger then begin
               axcod_ent:=dm.executa5.fieldbyname('codigo').AsInteger;
               monta_table1;
               monta_table2(False,False);
               monta_table3;
            end;
         end else axcod_ent:=0;
     end;
end;

procedure Tmdl_lstsrv.Salvarcomo1Click(Sender: TObject);
var xfiljpg : String;
    xImagem_tmp : TMemoryStream;
begin
      if ExportarImgDialog.Execute then begin
         xfiljpg := ExportarImgDialog.FileName;
         if copy(xfiljpg,(Length(xfiljpg)-4),4) <> '.jpg' then
            xfiljpg := xfiljpg + '.jpg';

         xImagem_tmp := TMemoryStream.Create;
         xImagem_tmp.Clear;
         xImagem_tmp.Position:=0;
         xImagem_tmp := dm.GetBinaryStreamPH(LstTables.Table[3],'cod_img','img_larg',ms_cod.Caption);
         {with dm.executa7 do begin
               CommandText:='SELECT img_larg FROM '+LstTables.Table[3]+' WHERE cod_img = '+#39+ms_cod.Caption+#39;
               Open;
               if not fields[0].IsNull then
                  TBlobField(FieldByName('img_larg')).SaveToStream(xImagem_tmp);
               Close;
         end;}
         xImagem_tmp.Seek(0,soFromBeginning);
         xImagem_tmp.SaveToFile(xfiljpg);
         xImagem_tmp.Free;
      end;
end;

procedure Tmdl_lstsrv.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_lstsrv.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_lstsrv.ToolBar_grpResize(Sender: TObject);
begin
     cb_group.Width := ToolBar_grp.Width - 50;
end;

procedure Tmdl_lstsrv.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with retorna_TRxRichEdit(PageControlab.TabIndex) do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_lstsrv.Recortar1Click(Sender: TObject);
begin
     //recortar
     retorna_TRxRichEdit(PageControlab.TabIndex).CutToClipboard;
end;

procedure Tmdl_lstsrv.Copiar1Click(Sender: TObject);
begin
     //copiar
     retorna_TRxRichEdit(PageControlab.TabIndex).CopyToClipboard;
end;

procedure Tmdl_lstsrv.Colar1Click(Sender: TObject);
begin
      //colar
     retorna_TRxRichEdit(PageControlab.TabIndex).PasteFromClipboard;
end;

procedure Tmdl_lstsrv.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_lstsrv.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not retorna_BoldButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_lstsrv.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not retorna_ItalicButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_lstsrv.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not retorna_UnderlineButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_lstsrv.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph.Numbering := TRxNumbering(not retorna_BulletsButton(PageControlab.TabIndex).Down);
end;

procedure Tmdl_lstsrv.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_lstsrv.esquerdo1Click(Sender: TObject);
begin
     retorna_LeftAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_lstsrv.centro1Click(Sender: TObject);
begin
     retorna_CenterAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_lstsrv.direita1Click(Sender: TObject);
begin
     retorna_RightAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_lstsrv.justificado1Click(Sender: TObject);
begin
     retorna_JustifyAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_lstsrv.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: if (PageControlab.TabIndex = 0) then bt_save3.Click
          else if (PageControlab.TabIndex = 1) then bt_save1.Click
          else bt_save2.Click;
    end;
end;

procedure Tmdl_lstsrv.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph do
  try
    FUpdating := True;
    retorna_BoldButton(PageControlab.TabIndex).Down := fsBold in retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes.Style;
    retorna_ItalicButton(PageControlab.TabIndex).Down := fsItalic in retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes.Style;
    retorna_UnderlineButton(PageControlab.TabIndex).Down := fsUnderline in retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes.Style;
    retorna_BulletsButton(PageControlab.TabIndex).Down := Boolean(Numbering);
    retorna_fontSize(PageControlab.TabIndex).Text := IntToStr(retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes.Size);
    retorna_fontName(PageControlab.TabIndex).Text := retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes.Name;
    case Ord(Alignment) of
      0: retorna_LeftAlign(PageControlab.TabIndex).Down := True;
      1: retorna_RightAlign(PageControlab.TabIndex).Down := True;
      2: retorna_CenterAlign(PageControlab.TabIndex).Down := True;
      3: retorna_JustifyAlign(PageControlab.TabIndex).Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

function Tmdl_lstsrv.CurrText: TRxTextAttributes;
begin
  if retorna_TRxRichEdit(PageControlab.TabIndex).SelLength > 0 then Result := retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes
  else Result := retorna_TRxRichEdit(PageControlab.TabIndex).DefAttributes;
end;

procedure Tmdl_lstsrv.SetEditRect;
var
  R: TRect;
begin
  with retorna_TRxRichEdit(PageControlab.TabIndex) do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_lstsrv.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(retorna_TRxRichEdit(PageControlab.TabIndex).Handle, EM_EXLINEFROMCHAR, 0,
    retorna_TRxRichEdit(PageControlab.TabIndex).SelStart);
  CharPos.X := (retorna_TRxRichEdit(PageControlab.TabIndex).SelStart -
    SendMessage(retorna_TRxRichEdit(PageControlab.TabIndex).Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

function Tmdl_lstsrv.retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
begin
      Case xidxcod of
          0: Result:=re_editor3;
          1: Result:=re_editor1;
          2: Result:=re_editor2;
      End;
end;

function Tmdl_lstsrv.retorna_fontName(xidxcod:Integer):TComboBox;
begin
      Case xidxcod of
          0: Result:=FontName3;
          1: Result:=FontName1;
          2: Result:=FontName2;
      End;
end;

function Tmdl_lstsrv.retorna_fontSize(xidxcod:Integer):TEdit;
begin
      Case xidxcod of
          0: Result:=FontSize3;
          1: Result:=FontSize1;
          2: Result:=FontSize2;
      End;
end;

function Tmdl_lstsrv.retorna_BoldButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=BoldButton3;
          1: Result:=BoldButton1;
          2: Result:=BoldButton2;
      End;
end;

function Tmdl_lstsrv.retorna_ItalicButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=ItalicButton3;
          1: Result:=ItalicButton1;
          2: Result:=ItalicButton2;
      End;
end;

function Tmdl_lstsrv.retorna_UnderlineButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=UnderlineButton3;
          1: Result:=UnderlineButton1;
          2: Result:=UnderlineButton2;
      End;
end;

function Tmdl_lstsrv.retorna_LeftAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=LeftAlign3;
          1: Result:=LeftAlign1;
          2: Result:=LeftAlign2;
      End;
end;

function Tmdl_lstsrv.retorna_CenterAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=CenterAlign3;
          1: Result:=CenterAlign1;
          2: Result:=CenterAlign2;
      End;
end;

function Tmdl_lstsrv.retorna_RightAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=RightAlign3;
          1: Result:=RightAlign1;
          2: Result:=RightAlign2;
      End;
end;

function Tmdl_lstsrv.retorna_JustifyAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=JustifyAlign3;
          1: Result:=JustifyAlign1;
          2: Result:=JustifyAlign2;
      End;
end;

function Tmdl_lstsrv.retorna_BulletsButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=BulletsButton3;
          1: Result:=BulletsButton1;
          2: Result:=BulletsButton2;
      End;
end;

procedure Tmdl_lstsrv.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := retorna_fontName(PageControlab.TabIndex).Items[retorna_fontName(PageControlab.TabIndex).ItemIndex];
end;

procedure Tmdl_lstsrv.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(retorna_fontSize(PageControlab.TabIndex).Text);
end;

procedure Tmdl_lstsrv.PageControlabChange(Sender: TObject);
var axcod,xidxcb,xidxcbsum: Integer;
    axshowing: Boolean;
begin
      if (PageControlab.TabIndex = 1) then begin
          if CheckBox_class.Checked then begin
               ComboBox_class.Text:=cl_titulo.Text;
               validaCbClass();
          end;
      end else if (PageControlab.TabIndex = 2) then begin
         cb_group.Clear;
         With dm.ds_sql do begin
             if (recordcount <= 0) then begin
                hwsf.BtMensagem('Não há álbuns cadastrados.');
                PageControlab.TabIndex:=1;
                exit;
             end else if ((ab_cod.Caption = '0') or (ab_cod.Caption = 'novo')) then begin
                hwsf.BtMensagem('Antes de inserir os itens grave as informações do grupo.');
                PageControlab.TabIndex:=1;
                exit;
             end;
             axshowing:= loadx.Showing;
             if not axshowing then begin
                 loadx := Tloadx.Create(Application);
                 loadx.lbloading.Caption:='Atualizando registros';
                 loadx.Show;
                 loadx.Update;
             end else begin
                 loadx.lbloading.Caption:='Atualizando registros';
                 loadx.lbloading.Repaint;
             end;
             loadx.Progressloading.position:=0;
             loadx.Progressloading.Max:= RecordCount;
             DBGrid1.Enabled:=false;
             PageControl1.Enabled:= false;
             axcod:= fieldbyname('codigo').AsInteger;
             xidxcbsum:= 0;
             xidxcb:= xidxcbsum;
             First;
             While not Eof do begin
                loadx.Progressloading.position:=loadx.Progressloading.position+1;
                if (axcod = fieldbyname('codigo').AsInteger) then xidxcb:= xidxcbsum;
                cb_group.Items.Add(fieldbyname('descricao').AsString);
                Inc(xidxcbsum);
                Next;
             end;
             dm.ds_sql.Locate('codigo',axcod,[]);
             DBGrid1.Enabled:=true;
             PageControl1.Enabled:= true;
             cb_group.ItemIndex:= xidxcb;
             loadx.Progressloading.position:=0;
             loadx.Progressloading.Max:= 100;
             try loadx.Close; except end;
         end;
      end;
end;

procedure Tmdl_lstsrv.cb_groupChange(Sender: TObject);
begin
      if ((cb_group.Items.Count > 0) and (cb_group.Text <> '')) then begin
          if dm.ds_sql.Locate('descricao',cb_group.Text,[]) then
             atualiza_grade;
      end;
end;

procedure Tmdl_lstsrv.monta_tableclass;
var axshowing,axcodclass2: Boolean;
    axclass2: String;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando classificações';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando classificações';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=80;
      With dm.ds_sql6 do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+'_ax'+
                        ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                        ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                        ' ORDER BY cp1';
          Open;
          Filtered:=true;
          try
              if (listaLng.cod_lng[PageControl_languagens.TabIndex] = 0) then xdsqlfilter:='cod_lng='+#39+'1'+#39
              else xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
          except
              xdsqlfilter:='cod_lng='+#39+'1'+#39;
          end;
          Filter:=xdsqlfilter;
          loadx.Progressloading.position:=90;
          axcodclass2:=false;
          axclass2:=ComboBox_class2.Text;
          ComboBox_class.Clear;
          ComboBox_class2.Clear;
          ComboBox_class.Items.Add('Não classificar por grupo');
          First;
          While not Eof do begin
              if (axclass2 = fieldbyname('cp1').AsString) then axcodclass2:=true;
              ComboBox_class.Items.Add(fieldbyname('cp1').AsString);
              Next;
          end;
          ComboBox_class2.Items:=ComboBox_class.Items;
          ComboBox_class.ItemIndex:=0;
          if axcodclass2 then ComboBox_class2.Text:=axclass2
          else ComboBox_class2.ItemIndex:=0;
      end;
      atualiza_grade3;
      try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.PanelclassResize(Sender: TObject);
begin
    ComboBox_class.Width := Panelclass.Width-11;
    CheckBox_class.Left := (ComboBox_class.Width-CheckBox_class.Width)+ComboBox_class.Left;
end;

procedure Tmdl_lstsrv.EVsaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save1.Click;
      end;
end;

procedure Tmdl_lstsrv.EVsave2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save2.Click;
      end;
end;

procedure Tmdl_lstsrv.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         retorna_TRxRichEdit(PageControlab.TabIndex).Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_lstsrv.validaCbClass();
begin
      if CheckBox_class.Checked then begin
         if (ComboBox_class.ItemIndex > 0) then begin
            if (dm.ds_sql6.Locate('cp1',ComboBox_class.Text,[])) then
               dm.ds_sql.Filter:='(('+xdsqlfilter+') AND (cod_class='+#39+dm.ds_sql6.fieldbyname('cod_class').AsString+#39+'))';
         end else dm.ds_sql.Filter:=xdsqlfilter;
      end;
end;

procedure Tmdl_lstsrv.CheckBox_classClick(Sender: TObject);
begin
      validaCbClass();
end;

procedure Tmdl_lstsrv.ComboBox_classKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key=#13 then validaCbClass();
end;

procedure Tmdl_lstsrv.ComboBox_classClick(Sender: TObject);
begin
      validaCbClass();
end;

procedure Tmdl_lstsrv.bt_new3Click(Sender: TObject);
begin
      addreg3;
      cl_titulo.SetFocus;
end;

procedure Tmdl_lstsrv.bt_del3Click(Sender: TObject);
var axshowing, axvincul, axerror: Boolean;
begin
      if (dm.ds_sql6.RecordCount>0) and (cl_cod.Caption<>'novo') then begin
      With dm.ds_sql8 do begin
         CommandText:= 'SELECT codigo FROM '+LstTables.Table[0]+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND cod_class='+#39+cl_cod.Caption+#39+
                       ' ORDER BY codigo';
         Open;
         if (recordcount>0) then begin
            axvincul:=true;
            if not hwsf.BtConfirma('Existem álbuns vinculados com este grupo, remover vínculo?') then begin
               Close;
               hwsf.BtMensagem('Processo cancelado.');
               Exit;
            end;
         end;
      end;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo grupo';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo grupo';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.deleta_reg(LstTables.Table[0]+'_ax','cod_class',cl_cod.Caption,true) then begin
         dm.RemoveBinaryStreamPH(LstTables.Table[1]+'_ax','cod_class','icon','',cl_cod.Caption);
         //dm.deleta_reg(LstTables.Table[1]+'_ax','cod_class',cl_cod.Caption,false);
         if axvincul then begin
           loadx.lbloading.Caption:='Removendo vínculos';
           loadx.lbloading.Repaint;
           loadx.Progressloading.position:=50;
           axerror:=false;
           With dm.ds_sql8 do begin
                First;
                While not Eof do begin
                     dm.executa.CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_class=:p0 '+
                                              'WHERE codigo=:p1';
                     dm.executa.Params[0].AsInteger:=0;
                     dm.executa.Params[1].AsInteger:=fieldbyname('codigo').AsInteger;
                     try
                         dm.executa.Execute;
                     except
                         axerror:=true;
                     end;
                     Next;
                end;
           end;
           loadx.Progressloading.position:=75;
           dm.ds_sql.Close;
           dm.ds_sql.open;
           atualiza_grade;
         end;
         dm.ds_sql8.Close;
         monta_tableclass;
         loadx.Progressloading.position:=100;
    end;
    try loadx.Close; except end;
    end;
end;

procedure Tmdl_lstsrv.DBGrid3CellClick(Column: TColumn);
begin
      atualiza_grade3;
end;

procedure Tmdl_lstsrv.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tmdl_lstsrv.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tmdl_lstsrv.DBGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade3;
end;

procedure Tmdl_lstsrv.bt_save3Click(Sender: TObject);
var axcod,axcod2,axcl_id,xidxlng,xid_default,ax_cl_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     //banco de imagens
     ax_cl_codinsert:=0;
     if cl_titulo.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        cl_titulo.SetFocus;
        exit;
     end;
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Gravando dados, aguarde.';
        loadx.lbloading.Repaint;
     end;
     Application.ProcessMessages;
     loadx.Progressloading.position:=10;
     xidxlng:=PageControl_languagens.TabIndex;
     xtxt2:= TStringList.Create;
     xtxt3:= TMemoryStream.Create;
     xtxt3.Clear;
     xtxt3.Seek(0,soFromBeginning);
     re_editor3.Lines.SaveToStream(xtxt3);
     xtxt3.Seek(0,soFromBeginning);
     xtxt2.Clear;
     xtxt2:= dm.RtfToHtml2('',false,re_editor3);
     if cl_cod.Caption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= cl_titulo.Text;
        loadx.Progressloading.position:=30;
        if RadioButton1.Checked then axInc_traduzir:=true
        else if RadioButton2.Checked then axInc_traduzir:=false
        else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
        if axInc_traduzir then begin
           loadx.Progressloading2.Max:=listaLng.count*3;
           loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xidxlng).Caption;
           loadx.lbloading.Repaint;
           for axcl_id:=0 to listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               listaAux.ab_descricao[axcl_id]:= '';
               if listaLng.trd[axcl_id]='English' then xid_default:=axcl_id;
           end;
           if (xid_default=xidxlng) then begin
              listaAux.ab_descricao[xid_default]:=xtxt1;
           end else begin
              listaAux.ab_descricao[xidxlng]:=xtxt1;
              loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
              loadx.lbloading.Repaint;
              xtxt1:=recebetraducao(xtxt1,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
              if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
              if xtxt1 = '<|erro|>' then begin
                 loadx.Close;
                 hwsf.BtMensagem('Erro na conexão');
                 exit;
              end;
              listaAux.ab_descricao[xid_default]:=xtxt1;
           end;
           for axcl_id:=0 to listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               if (axcl_id<>xidxlng) AND (axcl_id<>xid_default) then begin
                  loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(axcl_id).Caption;
                  loadx.lbloading.Repaint;
                  xtxt1:=recebetraducao(listaAux.ab_descricao[xid_default],listaLng.trd[xid_default],listaLng.trd[axcl_id]);
                  if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
                  if xtxt1 = '<|erro|>' then begin
                     loadx.Close;
                     hwsf.BtMensagem('Erro na conexão');
                     exit;
                  end;
                  listaAux.ab_descricao[axcl_id]:=xtxt1;
               end;
           end;
           loadx.lbloading.Caption:='Gravando dados, aguarde.';
           loadx.lbloading.Repaint;
        end else begin
           loadx.Progressloading2.Max:=listaLng.count*2;
           for axcl_id:=0 to listaLng.count-1 do begin
               loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
               listaAux.ab_descricao[axcl_id]:=xtxt1;
           end;
        end;
        axcod_class:=0;
        loadx.Progressloading.position:=40;
        for axcl_id:=0 to listaLng.count-1 do begin
            loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
            axcod:=dm.GetCodMax(LstTables.Table[0]+'_ax','codigo','');
            Application.ProcessMessages;
            if axcod_class=0 then axcod_class:=axcod;
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+'_ax (codigo,cod_class,cod_web,cod_lng,cod_ls,cp1,cp2,cp3,xtp) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_class;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=listaLng.cod_lng[axcl_id];
                 Params[4].AsString:=BoolToStr(cl_default.Checked);
                 Params[5].AsString:=listaAux.ab_descricao[axcl_id];
                 Params[6].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[7].LoadFromStream(xtxt3,ftblob);
                 Params[8].AsString:=AxDadosUsr.axparm;
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
             end;
        end;
        ax_cl_codinsert:= axcod;
        loadx.Progressloading.position:=50;
        loadx.Progressloading2.Visible:=false;
        loadx.repaint;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[0]+'_ax SET cp1=:p0,cp2=:p1,cp3=:p2 '+
                       'WHERE codigo=:p3';
            loadx.Progressloading.position:=20;
            Params[0].AsString:=cl_titulo.Text;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsInteger:=ax_cl_cod;
            try
                Execute;
                loadx.Progressloading.position:=30;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_cl_codinsert:= ax_cl_cod;
            CommandText:= 'UPDATE '+LstTables.Table[0]+'_ax SET cod_ls=:p0 '+
                       'WHERE cod_class=:p1';
            loadx.Progressloading.position:=40;
            Params[0].AsString:=BoolToStr(cl_default.Checked);
            Params[1].AsInteger:=axcod_class;
            try
                Execute;
                loadx.Progressloading.position:=50;
            except
                try loadx.Close; except end;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
        end;
     end;
     xtxt2.Free;
     xtxt3.Free;
     //gravar logo
     Application.ProcessMessages;
     xlogotmp3.Seek(0,soFromBeginning);
     xexecutaimg:=true;
     if cl_cod.Caption = 'novo' then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[1]+'_ax','INST','codigo','cod_class','icon','','icon_sz','',IntToStr(axcod_class),xlogotmp3,nil);
     end else if xupdatelogo1 then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[1]+'_ax','UPDT','cod_class','','icon','','icon_sz','',IntToStr(axcod_class),xlogotmp3,nil);
     end;
     if not xexecutaimg then begin
        try loadx.Close; except end;
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;
     travaformImages(true);
     xupdatelogo3:=false;
     monta_tableclass;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql6.RecordCount);
     Application.ProcessMessages;
     dm.ds_sql.Locate('codigo',ax_cl_codinsert,[]);
     atualiza_grade3;
     if chk_view3.Checked then getLogo3;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_lstsrv.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(True);
      if hwsf.BtConfirma('Gravar dados?') then begin
         bt_save3.Click;
         if chk_view3.Checked then getLogo3;
      end;
end;

procedure Tmdl_lstsrv.bt_view3Click(Sender: TObject);
begin
      getLogo3;
end;

procedure Tmdl_lstsrv.bt_open3Click(Sender: TObject);
var xfilext,xnamefile: String;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    codAbrirtmp: TPicture;
    codGraphic: TBitmap;
    codStream: TMemoryStream;
    xab_w,xab_h,xab_dpi,xab_cp,
    xab_h_tmp,xab_w_tmp: Integer;
    xerror,xab_ajt,xab_pr: Boolean;
    xcalc1: Real;
    axshowing: Boolean;
begin
      if ImportarImgDialog.Execute then begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando imagem';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando imagem';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=10;
         xnamefile := ImportarImgDialog.FileName;
         xfilext:=LowerCase(ExtractFileExt(xnamefile));
         if cl_titulo.Text='' then
            cl_titulo.Text:=copy(ExtractFileName(xnamefile),1,Length(ExtractFileName(xnamefile))-(Length(xfilext)));
         limpaphoto3(True);
         loadx.Progressloading.position:=80;
         xlogotmp3.LoadFromFile(ImportarImgDialog.FileName);
         xlogotmp3.Seek(0,soFromBeginning);
         loadx.Progressloading.position:=90;
         xlogosz3:=xlogotmp3.Size;
         bt_save3.Click;
         try loadx.Close; except end;
      end;
end;

procedure Tmdl_lstsrv.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       '.':;
       #13, #8, #27:
     else if key = ',' then
       Key := '.'
     else
       Key := #0;
     end;
end;

procedure Tmdl_lstsrv.NumExit(Sender: TObject);
begin
      try
          TEdit(Sender).Text:=FormatFloat('0.00',StrToFloat(TEdit(Sender).Text));
      except
          TEdit(Sender).Text:='0.00';
      end;
end;

procedure Tmdl_lstsrv.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


