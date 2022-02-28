{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions
392
Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_richestate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, ImgList, AppEvnts, SHDocVw, ActiveX, mshtml;

const
  IDM_MARCADOR = 2184;
  IDM_MARCADOR_LISTA = 2185;
  IDM_OUTDENT = 2187;
  IDM_INDENT = 2186;
  IDM_ALINHARESQ = 59;
  IDM_CENTRALIZAR = 57;
  IDM_ALINHADIR = 60;
  IDM_JUSTIFICAR = 50;
  IDM_IMAGEM = 2168;
  IDM_LINHAHORIZ = 2150;
  IDM_RECORTAR = 16;
  IDM_COPIAR = 15;
  IDM_COLAR = 26;
  IDM_HYPERLINK = 2124;
  IDM_DESFAZER = 43;
  IDM_REDO = 29;
  //IDM_SOUND = 146;
  //
  IDM_BACKCOLOR = 51;
  IDM_COPYBACKGROUND = 2265;
  IDM_SAVEBACKGROUND = 2263;
  IDM_SETASBACKGROUND = 2264;
  //
  CGID_WebBrowser: TGUID = '{ED016940-BD5B-11cf-BA4E-00C04FD70816}';
  // The available commands
  HTMLID_FIND = 1;
  HTMLID_VIEWSOURCE = 2;
  HTMLID_OPTIONS = 3;

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
  Tmdl_richestate = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    ImportarImgDialog: TOpenPictureDialog;
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
    bt_save3: TSpeedButton;
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
    Label_size3: TLabel;
    OpenBannerDialog: TOpenPictureDialog;
    Panel17: TPanel;
    ToolBar7: TToolBar;
    bt_open3: TSpeedButton;
    bt_limpar3: TSpeedButton;
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
    ExportarImgDialog: TSavePictureDialog;
    StatusBar1: TStatusBar;
    PageControlab: TPageControl;
    TabSheet_grp: TTabSheet;
    TabSheet_itens: TTabSheet;
    Panel2: TPanel;
    Panelgrp: TPanel;
    Panel3: TPanel;
    ToolBar_save1: TToolBar;
    bt_new1: TSpeedButton;
    bt_save1: TSpeedButton;
    Panel12: TPanel;
    DBGrid1: TDBGrid;
    Splitter5: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    ToolBar4: TToolBar;
    bt_new2: TSpeedButton;
    bt_del2: TComboSpeedButton;
    bt_save2: TSpeedButton;
    Panel9: TPanel;
    Panelitens: TPanel;
    Panel15: TPanel;
    DBGrid2: TDBGrid;
    ToolBar_grp: TToolBar;
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
    GroupBox1: TGroupBox;
    re_editor2: TRxRichEdit;
    Panelclass: TPanel;
    Label9: TLabel;
    Cordefundo1: TMenuItem;
    Splitter4: TSplitter;
    Panel19: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    ab_cod: TLabel;
    Label23: TLabel;
    ab_default: TCheckBox;
    ComboBox_class2: TComboBox;
    Splitter1: TSplitter;
    Label26: TLabel;
    cb_loc: TEdit;
    cb_dt: TDateTimePicker;
    Label27: TLabel;
    cb_tm: TDateTimePicker;
    Label28: TLabel;
    Panel8: TPanel;
    Lb_countreg2: TLabel;
    ComboBox_Grid2: TComboBox;
    Panel21: TPanel;
    Lb_countreg1: TLabel;
    Panel5: TPanel;
    Panel23: TPanel;
    swf_logo1: TShockwaveFlash;
    Panel25: TPanel;
    Panel18: TPanel;
    Label8: TLabel;
    Label6: TLabel;
    ms_cod: TLabel;
    ms_titulo: TEdit;
    CoolBar1: TCoolBar;
    ToolBar6: TToolBar;
    FontName2: TComboBox;
    ToolButton1: TToolButton;
    FontSize2: TEdit;
    UpDown1: TUpDown;
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
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolBar11: TToolBar;
    fontColor2: TToolButton;
    eddesfazer2: TToolButton;
    ToolButton3: TToolButton;
    Panel10: TPanel;
    Panel14: TPanel;
    Label_size2: TLabel;
    chk_view2: TCheckBox;
    Panel22: TPanel;
    swf_logo2: TShockwaveFlash;
    Panel26: TPanel;
    Splitter2: TSplitter;
    ToolBar18: TToolBar;
    bt_recursive: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ComboBox_model: TComboBox;
    Label5: TLabel;
    Panel4: TPanel;
    xfil_de: TDateTimePicker;
    xfil_ate: TDateTimePicker;
    xfil_de_chk: TCheckBox;
    xfil_ate_chk: TCheckBox;
    ToolBar_classex: TToolBar;
    bt_newclass: TSpeedButton;
    bt_delclass: TSpeedButton;
    bt_saveclass: TSpeedButton;
    Label29: TLabel;
    SpeedButton4: TSpeedButton;
    Panel24: TPanel;
    Panel13: TPanel;
    Label_size1: TLabel;
    chk_view1: TCheckBox;
    Panelbtview: TPanel;
    bt_view1: TSpeedButton;
    Panel27: TPanel;
    bt_imgRotateh1: TSpeedButton;
    bt_imgRotatea1: TSpeedButton;
    Label10: TLabel;
    ToolBar3: TToolBar;
    bt_open1: TSpeedButton;
    bt_exp1: TSpeedButton;
    bt_limpar1: TSpeedButton;
    ToolBar1: TToolBar;
    bt_open2: TSpeedButton;
    bt_exp2: TSpeedButton;
    bt_limpar2: TSpeedButton;
    Panelbtview2: TPanel;
    Panel28: TPanel;
    bt_imgRotateh2: TSpeedButton;
    bt_imgRotatea2: TSpeedButton;
    Label30: TLabel;
    bt_view2: TSpeedButton;
    bt_cancel1: TComboSpeedButton;
    PopupMenu1: TPopupMenu;
    MenuItem2: TMenuItem;
    xfil_cancel: TCheckBox;
    Label_cancel: TLabel;
    ToolBar_cancel1: TToolBar;
    bt_del1: TSpeedButton;
    bt_activate1: TSpeedButton;
    ApplicationEvents1: TApplicationEvents;
    CoolBar2: TCoolBar;
    Panel11: TPanel;
    Label12: TLabel;
    Label24: TLabel;
    combofont: TComboBox;
    ComboSize: TComboBox;
    ToolBar2: TToolBar;
    btnCut: TSpeedButton;
    btnCopy: TSpeedButton;
    btnPaste: TSpeedButton;
    ToolBar12: TToolBar;
    btnAlignLeft: TSpeedButton;
    btnCenter: TSpeedButton;
    btnAlignRight: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ToolBar13: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ToolBar14: TToolBar;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ToolBar15: TToolBar;
    SpeedButton7: TSpeedButton;
    SpeedButton37: TSpeedButton;
    btnNumList: TSpeedButton;
    btnBullet: TSpeedButton;
    btnDecreaseIndent: TSpeedButton;
    btnIncreaseIndent: TSpeedButton;
    ToolBar16: TToolBar;
    SpeedButton13: TSpeedButton;
    btnHR: TSpeedButton;
    SpeedButton14: TSpeedButton;
    ComboSpeedButton3: TComboSpeedButton;
    SpeedButton50: TSpeedButton;
    ComboSpeedButton2: TComboSpeedButton;
    PageControltx: TPageControl;
    TabSheet3: TTabSheet;
    Label25: TLabel;
    WebBrowser1: TWebBrowser;
    TabSheet4: TTabSheet;
    RxRichEdit_send: TRxRichEdit;
    TabSheet5: TTabSheet;
    WebBrowserView: TWebBrowser;
    PopupMenu_cordefundo: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    CorLinkativo1: TMenuItem;
    CorLinkvisitado1: TMenuItem;
    PopupMenu_fundo: TPopupMenu;
    Inserir1: TMenuItem;
    MenuItem11: TMenuItem;
    NoRepetir1: TMenuItem;
    repetirimagem1: TMenuItem;
    RepetirX1: TMenuItem;
    RepetirY1: TMenuItem;
    N1: TMenuItem;
    Fixarfundo1: TMenuItem;
    MenuItem12: TMenuItem;
    Limpar1: TMenuItem;
    cdColor: TColorDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    ImageList_mail: TImageList;
    SpeedButton15: TSpeedButton;
    ToolBar19: TToolBar;
    PopupMenu_tabela: TPopupMenu;
    ComboSpeedButton1: TComboSpeedButton;
    InserirTabela1: TMenuItem;
    N4: TMenuItem;
    table_lin: TMenuItem;
    table_col: TMenuItem;
    table_bor: TMenuItem;
    table_lar: TMenuItem;
    table_ce1: TMenuItem;
    table_ce2: TMenuItem;
    Splitter3: TSplitter;
    Label31: TLabel;
    Label32: TLabel;
    ab_titulo: TMemo;
    Label33: TLabel;
    ToolBar_lng1: TToolBar;
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
    bt_help: TSpeedButton;
    ComboBox_class: TListBox;
    Label4: TLabel;
    TabSheet6: TTabSheet;
    WebBrowser_feed: TWebBrowser;
    ToolBar_ordem: TToolBar;
    bt_ordemup: TSpeedButton;
    bt_ordemdown: TSpeedButton;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_new1Click(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
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
    procedure bt_recursiveClick(Sender: TObject);
    procedure PageControl_languagensChange(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure bt_open3Click(Sender: TObject);
    procedure bt_limpar3Click(Sender: TObject);
    procedure bt_save3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure ComboBox_entChange(Sender: TObject);
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
    procedure bt_newclassClick(Sender: TObject);
    procedure bt_delclassClick(Sender: TObject);
    procedure EVsaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EVsave2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_saveclassClick(Sender: TObject);
    procedure Cordefundo1Click(Sender: TObject);
    procedure bt_exp1Click(Sender: TObject);
    procedure bt_view2Click(Sender: TObject);
    procedure bt_exp2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure xfil_ate_chkClick(Sender: TObject);
    procedure xfil_de_chkClick(Sender: TObject);
    procedure PanelbtviewResize(Sender: TObject);
    procedure Panelbtview2Resize(Sender: TObject);
    procedure bt_imgRotateh1Click(Sender: TObject);
    procedure bt_imgRotatea1Click(Sender: TObject);
    procedure bt_imgRotateh2Click(Sender: TObject);
    procedure bt_imgRotatea2Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure bt_cancel1Click(Sender: TObject);
    procedure bt_activate1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure btnNumListClick(Sender: TObject);
    procedure btnBulletClick(Sender: TObject);
    procedure btnDecreaseIndentClick(Sender: TObject);
    procedure btnIncreaseIndentClick(Sender: TObject);
    procedure btnCutClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure btnHRClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure ComboSpeedButton3Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure CorLinkativo1Click(Sender: TObject);
    procedure CorLinkvisitado1Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure ComboSpeedButton2Click(Sender: TObject);
    procedure NoRepetir1Click(Sender: TObject);
    procedure repetirimagem1Click(Sender: TObject);
    procedure RepetirX1Click(Sender: TObject);
    procedure RepetirY1Click(Sender: TObject);
    procedure Fixarfundo1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure combofontChange(Sender: TObject);
    procedure ComboSizeChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnAlignLeftClick(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
    procedure btnAlignRightClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure PageControltxChange(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure ComboSpeedButton1Click(Sender: TObject);
    procedure ComboBox_classClick(Sender: TObject);
    procedure ComboBox_classKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox_classKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox_classMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WebBrowser_feedDownloadComplete(Sender: TObject);
    procedure bt_ordemupClick(Sender: TObject);
    procedure bt_ordemdownClick(Sender: TObject);
  private
    //menus
    xinit,xupdatelogo1,xupdatelogo2,xupdatebanner,xupdatereg,feedokupd: Boolean;
    pathdefault,xdsqlfilter : string;
    ax_ab_cod,axcod_gal,axcod_class,ax_ms_cod,axcod_img,axcod_ent: Integer;
    LstTables: TLstTables;
    LstModels: TLstModels;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xlogosz1,xlogosz2,xamplsz2,xbannersz: Integer;
    xlogotmp1,xlogotmp2,xampltmp2,xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    xlogotmp2_tmp,xampltmp2_tmp: TMemoryStream; //ax inserimg
    PageControltxLast: Integer;
    ComboBox_idUPD: Integer;
    procedure alt_ordem(xtypOrd:Integer);
    function atualizafeed:Boolean;
    procedure monta_lng;
    procedure monta_table1;
    procedure monta_table2(xnewgal,xuplng:Boolean);
    procedure monta_tableclass;
    procedure addreg;
    procedure travaformImages(xtrava: Boolean);
    procedure addreg2;
    procedure atualiza_grade;
    procedure limpaphoto1(xupdateset:Boolean);
    procedure atualiza_grade2;
    procedure limpaphoto2(xupdateset:Boolean);
    procedure monta_table3;
    procedure atualiza_grade3;
    procedure limpaphoto3(xupdateset:Boolean);
    procedure getLogo1;
    procedure abretmplogo1;
    procedure getLogo2;
    procedure abretmplogo2;
    procedure getBanner;
    procedure abretmpbanner;
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
    procedure validaCbClass;
    function Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
    //webbrowser
    procedure resetWebBrowse;
    procedure SetRepetirImagem(xreptid:Integer);
    procedure setxHtml(xabaED:Integer);
    procedure InternalSaveBodyHTMLToStream(const Stream: TStream);
    procedure InternalSaveBodyHTMLToStringList(const StringList: TStringList);
    procedure InternalSaveBodyTextToStream(const Stream: TStream);
    procedure InternalSaveDocumentToStream(const Stream: TStream);
    procedure InternalLoadDocumentFromStream(const Stream: TStream);
    { Private declarations }
  public
    xreceivetrad,
    xcodgal : String;
    xtimerresponse,
    xiniCodab: Integer;
    //processoand: Boolean;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_richestate: Tmdl_richestate;
  HTMLDocumento:IHTMLDocument2;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd,
  umdl_richgalery_view, uBt_search_auto;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_richestate.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Finalizando, por favor aguarde...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Finalizando, por favor aguarde...';
         loadx.lbloading.Repaint;
     end;
     if (xupdatereg) then begin
         loadx.lbloading.Caption:='Atualizando Feed...';
         loadx.lbloading.Repaint;
         feedokupd:=false;
         atualizafeed;
         while not feedokupd do begin
              Sleep(1000);
              loadx.lbloading.Caption:='Feed Atualizado...';
              Application.ProcessMessages;
         end;
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
     if dm.ds_sql9.Active then
        dm.ds_sql9.Close;
     if dm.ds_sql10.Active then
        dm.ds_sql10.Close;
     loadx.Progressloading.position:=75;
     if dm.executa5.Active then
        dm.executa5.Close;
     if dm.executa3.Active then
        dm.executa3.Close;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
     Action:=cafree;
end;

procedure Tmdl_richestate.FormCreate(Sender: TObject);
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
     ComboBox_idUPD:=-1;
     xupdatereg:=false;
     feedokupd:=false;
     FontName2.Items:=screen.Fonts;
     xfil_de.DateTime:=Now;
     xfil_ate.DateTime:=Now+30;
     loadx.Progressloading.position:=10;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_richestate.Caption:= AxDadosUsr.axtitle;
     xinit:=true;
     axcod_ent:=0;
     PageControltxLast:=-1;
     WebBrowserView.Navigate('about:blank');
     WebBrowser1.Navigate('about:blank');
     WebBrowser_feed.Navigate('about:blank');
     (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
     resetWebBrowse;
     SendMessage(re_editor2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor2.Justify;
     xlogotmp1:= TMemoryStream.Create;
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
     Paneltop.Visible:=false;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
     end else begin
        bt_cancel1.PopupMenu:=PopupMenu1;
        TabSheet6.TabVisible:=true;
        bt_saveclass.Visible:=true;
        //ToolBar_ordem.Visible:=true;
        ToolBar_classex.Visible:=true;
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
          Items[0].Title.Caption:='Descrição';
          Items[0].FieldName:='descricao';
          Items[0].Width:=300;
          Add;
          Items[1].Title.Caption:='Data';
          Items[1].FieldName:='xdt';
          Items[1].Width:=150;
     end;
     DBGrid2.DataSource:=dm.source_sql3;
     With DBGrid2.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Descrição';
          Items[0].FieldName:='descricao';
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
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_richestate.monta_lng;
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

procedure Tmdl_richestate.monta_table1;
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
          xfiltdata:='';
          xfiltdata2:='';
          xfiltdatax:='';
          if xfil_cancel.Checked then begin
             xfiltdatax:=xfiltdatax+' AND (xstat>='+#39+'5'+#39+')';
             Label_cancel.Visible:=true;
             if AxDadosUsr.master then ToolBar_cancel1.Visible:=true;
             ToolBar_save1.Visible:=false;
             Panelgrp.Enabled:=false;
             WebBrowser1.Enabled:=false;
          end else begin
             xfiltdatax:=xfiltdatax+' AND (xstat<'+#39+'5'+#39+')';
             Label_cancel.Visible:=false;
             if AxDadosUsr.master then ToolBar_cancel1.Visible:=false;
             ToolBar_save1.Visible:=true;
             Panelgrp.Enabled:=true;
             WebBrowser1.Enabled:=true;
          end;
          if xfil_de_chk.Checked then
             xfiltdata:='xdt>='+#39+FormatDateTime('yyyymmdd',xfil_de.Date)+' 00:00:00'+#39;
          if xfil_ate_chk.Checked then
             xfiltdata2:='xdt<='+#39+FormatDateTime('yyyymmdd',xfil_ate.Date)+' 00:00:00'+#39;
          if ((xfiltdata<>'') and (xfiltdata2<>'')) then
              xfiltdatax:=xfiltdatax+' AND ('+xfiltdata+' AND '+xfiltdata2+')'
          else if ((xfiltdata<>'') or (xfiltdata2<>'')) then
              xfiltdatax:=xfiltdatax+' AND '+xfiltdata+xfiltdata2;
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                                ' AND cod_usrw='+#39+IntToStr(axcod_ent)+#39+
                                xfiltdatax+
                                ' ORDER BY codigo,cod_lng';//xdt,
          Open;
          Filter:='';
          Filtered:=true;
          xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
          Filter:=xdsqlfilter;
          Last;
     end;
     atualiza_grade;
     try loadx.Close; except end;
end;

procedure Tmdl_richestate.monta_table2(xnewgal,xuplng:Boolean);
begin
     if xnewgal then begin
        xcodgal:='0';
     end else begin
        if dm.ds_sql.RecordCount>0 then xcodgal:=dm.ds_sql.fieldbyname('cod_gal').AsString
        else xcodgal:='0';
     end;
     With dm.ds_sql3 do begin
          if ((xuplng) or (not Active)) then begin
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

procedure Tmdl_richestate.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
    ToolBar_lng1.Width:=Panel1.Width-244;
    PageControl_languagens.Width:=ToolBar_lng1.Width-61;
    ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_richestate.FormActivate(Sender: TObject);
begin
      mdl_richestate.Refresh;
      if xinit then begin
         xinit:=false;
         if (xiniCodab>0) then begin
             TabSheet_grp.TabVisible:=false;
             ToolBar_grp.Visible:=false;
             dm.ds_sql.Locate('codigo',xiniCodab,[]);
         end;
      end;
end;

procedure Tmdl_richestate.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tmdl_richestate.addreg;
begin
     //ComboBox_model.Enabled:=true;
     //ComboBox_model.ItemIndex:=2;
     ab_cod.Caption:='novo';
     ax_ab_cod:=0;
     //ab_titulo.Text:='';
     ab_titulo.Clear;
     cb_loc.Text:='';
     cb_dt.Date:=Now;
     cb_tm.Time:=Now;
     resetWebBrowse;
     ab_default.Checked:=true;
     limpaphoto1(False);
     limpaphoto2(False);
     //monta_table2(True,False);
     travaformImages(false);
end;

procedure Tmdl_richestate.travaformImages(xtrava: Boolean);
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
     TabSheet_itens.TabVisible := xtrava;
end;

procedure Tmdl_richestate.addreg2;
begin
     ms_cod.Caption:='novo';
     ax_ms_cod:=0;
     ms_titulo.Text:='';
     re_editor2.Clear;
     limpaphoto2(False);
end;

procedure Tmdl_richestate.atualiza_grade;
var axshowing: Boolean;
    axlocid: Integer;
    xStreamMSG: TMemoryStream;
    xStringMSG: TStringList;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando Registros';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando Registros';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
         axcod_gal:=0;
      end else begin
         travaformImages(true);
         with dm.ds_sql do begin
            if ax_ab_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            resetWebBrowse;
            limpaphoto1(False);
            loadx.Progressloading.position:=20;
            ab_cod.Caption:=fieldbyname('cod_gal').AsString;
            ax_ab_cod:=fieldbyname('codigo').AsInteger;
            if axcod_gal<>fieldbyname('cod_gal').AsInteger then
               axcod_gal:=fieldbyname('cod_gal').AsInteger;
            ab_titulo.Text:=fieldbyname('descricao').AsString;
            loadx.Progressloading.position:=30;
            xStreamMSG:= TMemoryStream.Create;
            xStreamMSG.Clear;
            xStreamMSG.Position:=0;
            xStringMSG:= TStringList.Create;
            xStringMSG.Clear;
            xStringMSG.Assign(fieldbyname('textft'));
            if xStringMSG.Count>0 then
               xStringMSG.SaveToStream(xStreamMSG);
            xStreamMSG.Position:=0;
            (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStreamMSG,soReference));
            xStreamMSG.free;
            xStringMSG.Free;
            ab_default.Checked:=StrToBool(fieldbyname('cod_ls').AsString);
            loadx.Progressloading.position:=40;
            cb_loc.Text:=fieldbyname('loc').AsString;
            cb_dt.Date:=fieldbyname('xdt').AsDateTime;
            cb_tm.Time:=fieldbyname('xdt').AsDateTime;
            //ComboBox_model.Enabled:=true;
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
            //ComboBox_model.Enabled:=false;
            loadx.Progressloading.position:=50;
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
      if chk_view1.Checked then getLogo1;
      try loadx.Close; except end;
      try
        DBGrid1.SetFocus;
      except
      end;
end;

procedure Tmdl_richestate.limpaphoto1(xupdateset:Boolean);
begin
     xupdatelogo1:=xupdateset;
     xlogotmp1.Clear;
     xlogotmp1.Seek(0,soFromBeginning);
     xlogosz1:=0;
     Label_size1.Caption:='0 kb';
     swf_logo1.Visible:=false;
     swf_logo1.LoadMovie(0,'lixo');
end;

procedure Tmdl_richestate.atualiza_grade2;
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
      if dm.ds_sql3.RecordCount <= 0 then begin
         ax_ms_cod:=0;
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

procedure Tmdl_richestate.limpaphoto2(xupdateset:Boolean);
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

procedure Tmdl_richestate.bt_new1Click(Sender: TObject);
begin
      addreg;
      ab_titulo.SetFocus;
end;

procedure Tmdl_richestate.bt_new2Click(Sender: TObject);
begin
      addreg2;
      ms_titulo.SetFocus;
end;

procedure Tmdl_richestate.bt_save1Click(Sender: TObject);
var axcod,axcod2,axgal_id,cod_model,xidxlng,xid_default,axcodgrp,ax_ab_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    axcp5: TStringList;
    axcp4: TMemoryStream;
    xerrorfilet,axcp5id,axcp5TMfilePOSini,axcp5Tot,axcp5Inc: Integer;
    axcp5TMP,axcp5TMPout,axcp5TMPresult: WideString;
    axcod_web_auxup,axcod_gal_auxup,xerrortxt,axcp5TMPerror,axcp5TMfilename,axcp5TMext: String;
    axcp5TMPon,axcp5TMPimg,axcp5TMPimg2: Boolean;
    axcp5ADDfile,axcp5TMfilePOS: TStringList;
    axcp5ADDstream: TMemoryStream;

    function FilterNameFile(xfileNameIN:String):String;
    var actid: Integer;
        xfileNameOut,xfileNameOut_ext: String;
    begin
        xfileNameOut:=LowerCase(xfileNameIN);
        xfileNameOut:=StringReplace(xfileNameOut,' ','_',[rfReplaceAll]);
        xfileNameOut:=StringReplace(xfileNameOut,';','',[rfReplaceAll]);
        xfileNameOut:=StringReplace(xfileNameOut,'-','_',[rfReplaceAll]);
        xfileNameOut:=StringReplace(xfileNameOut,' ','',[rfReplaceAll]);
        for actid := 1 to Length(xfileNameOut) do
            case xfileNameOut[actid] of
            'á': xfileNameOut[actid] := 'a';
            'é': xfileNameOut[actid] := 'e';
            'í': xfileNameOut[actid] := 'i';
            'ó': xfileNameOut[actid] := 'o';
            'ú': xfileNameOut[actid] := 'u';
            'à': xfileNameOut[actid] := 'a';
            'è': xfileNameOut[actid] := 'e';
            'ì': xfileNameOut[actid] := 'i';
            'ò': xfileNameOut[actid] := 'o';
            'ù': xfileNameOut[actid] := 'u';
            'â': xfileNameOut[actid] := 'a';
            'ê': xfileNameOut[actid] := 'e';
            'î': xfileNameOut[actid] := 'i';
            'ô': xfileNameOut[actid] := 'o';
            'û': xfileNameOut[actid] := 'u';
            'ä': xfileNameOut[actid] := 'a';
            'ë': xfileNameOut[actid] := 'e';
            'ï': xfileNameOut[actid] := 'i';
            'ö': xfileNameOut[actid] := 'o';
            'ü': xfileNameOut[actid] := 'u';
            'ã': xfileNameOut[actid] := 'a';
            'õ': xfileNameOut[actid] := 'o';
            'ñ': xfileNameOut[actid] := 'n';
            'ç': xfileNameOut[actid] := 'c';
        end;
        xfileNameOut_ext:=copy(xfileNameOut,(Length(xfileNameOut)-3),4);
        xfileNameOut:=copy(xfileNameOut,1,(Length(xfileNameOut)-4));
        xfileNameOut_ext:=FilterCharsHWS(xfileNameOut_ext,['a'..'z', '0'..'9']);
        xfileNameOut:=FilterCharsHWS(xfileNameOut,['a'..'z', '0'..'9']);
        Result:=xfileNameOut+'.'+xfileNameOut_ext;
    end;
    procedure FreeMemStr;
    begin
        try
          axcp5.Free;
          axcp5ADDfile.Free;
          axcp5TMfilePOS.Free;
          axcp5ADDstream.Free;
          axcp4.Free;
        except
        end;
    end;
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
        hwsf.BtMensagem('Selecione o modelo para a as fotos.');
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
     if ab_cod.Caption = 'novo' then begin
        axcod_gal:=0;
        axcod_gal:=dm.GetCodMax(LstTables.Table[0],'codigo','')
     end;
     Try
            axcp5:= TStringList.Create;
            axcp5.Clear;
            axcp5ADDfile:= TStringList.Create;
            axcp5ADDfile.Clear;
            axcp5TMfilePOS:= TStringList.Create;
            axcp5TMfilePOS.Clear;
            axcp5ADDstream:= TMemoryStream.Create;
            axcp5ADDstream.Clear;
            axcp5ADDstream.Seek(0,soFromBeginning);
            axcp4:= TMemoryStream.Create;
            axcp4.Clear;
            axcp4.Seek(0,soFromBeginning);
            if Assigned(WebBrowser1.Document) then
               InternalSaveDocumentToStream(axcp4);
            axcp4.Position:=0;
            if axcp4.Size=0 then begin
               loadx.Close;
                FreeMemStr;
                hwsf.BtMensagem('Digite uma mensagem.');
                exit;
            end;
            axcp4.Position:=0;
            axcp5.LoadFromStream(axcp4);
            
            axcp5Inc:=0;
            axcp5TMP:=axcp5.Text;
            axcp5Tot:=length(axcp5TMP);
            axcp5TMPout:='';
            axcp5TMPresult:='';
            axcp5TMPerror:='';
            axcp5TMPon:=true;
            axcp5TMPimg:=false;
            axcp5TMPimg2:=false;
            axcp5ADDfile.Clear;
            axcp5TMfilePOSini:=0;
            xerrorfilet:=2;
            for axcp5id:=1 to axcp5Tot do begin
                //teste script
                if axcp5TMPon then begin
                   if ((copy(axcp5TMP,axcp5id,2)='<?') or
                       (copy(axcp5TMP,axcp5id,2)='?>')) then
                        axcp5TMPerror:='PHP'
                   else if ((copy(axcp5TMP,axcp5id,2)='<%') or
                        (copy(axcp5TMP,axcp5id,2)='%>')) then
                        axcp5TMPerror:='ASP'
                   else if ((LowerCase(copy(axcp5TMP,axcp5id,13))='<cfcomponent>') or
                        (LowerCase(copy(axcp5TMP,axcp5id,14))='</cfcomponent>')) then
                        axcp5TMPerror:='ColdFusion'
                   else if ((LowerCase(copy(axcp5TMP,axcp5id,7))='<script') or
                        (LowerCase(copy(axcp5TMP,axcp5id,7))='</script') or
                        (LowerCase(copy(axcp5TMP,axcp5id,7))='< script') or
                        (LowerCase(copy(axcp5TMP,axcp5id,7))='</ script')) then
                        axcp5TMPerror:='Script';
                   if axcp5TMPerror<>'' then begin
                       loadx.Close;
                       FreeMemStr;
                       hwsf.BtMensagem('Linha script detectada, remova e tente novamente.');
                       exit;
                   end;
                end;
                if (copy(axcp5TMP,axcp5id,1)='"') then begin
                   if axcp5TMPimg and not axcp5TMPon then begin
                      if ((copy(axcp5TMPout,2,2)=':/') or
                          (copy(axcp5TMPout,2,2)=':\')) then begin
                          if copy(axcp5TMPout,length(axcp5TMPout),1)=' ' then
                             axcp5TMPout:=copy(axcp5TMPout,1,length(axcp5TMPout)-1);
                          if not FileExists(axcp5TMPout) then begin
                             loadx.Close;
                             FreeMemStr;
                             hwsf.BtMensagem('Arquivo não encontrado:'+#13+axcp5TMPout);
                             exit;
                          end else begin
                             axcp5ADDstream.Clear;
                             axcp5ADDstream.Position:=0;
                             axcp5ADDstream.LoadFromFile(axcp5TMPout);
                             axcp5ADDstream.Position:=0;
                             if (axcp5ADDstream.Size>2000000) then begin
                                 loadx.Close;
                                 FreeMemStr;
                                 hwsf.BtMensagem('Tamanho do arquivo superior ao permitido [áté 2mb]'+#13+axcp5TMPout);
                                 exit;
                             end;
                             axcp5ADDstream.Clear;
                             axcp5ADDstream.Position:=0;
                             axcp5TMext:=ExtractFileExt(axcp5TMPout);
                             if ((LowerCase(axcp5TMext)='.jpg') or
                                 (LowerCase(axcp5TMext)='.gif') or
                                 (LowerCase(axcp5TMext)='.bmp') or
                                 (LowerCase(axcp5TMext)='.wmf') or
                                 (LowerCase(axcp5TMext)='.xbm') or
                                 (LowerCase(axcp5TMext)='.art') or
                                 (LowerCase(axcp5TMext)='.png')) then begin
                                 Inc(axcp5Inc);
                                 axcp5ADDfile.Add(axcp5TMPout);
                                 axcp5TMfilename:=ExtractFileName(axcp5TMPout);
                                 axcp5TMfilename:=FilterNameFile(axcp5TMfilename);

                                 axcp5TMPout:='http://www.hwshost.com.br/HWSimgs/'+IntToStr(AxDadosUsr.cod_web)+'/'+IntToStr(axcod_gal)+'/'+axcp5TMfilename;
                                 axcp5TMfilePOSini:=axcp5TMfilePOSini+(length('http://www.hwshost.com.br/HWSimgs/')-1);
                                 axcp5TMfilePOS.Add(IntToStr(axcp5TMfilePOSini));
                             end else begin
                                 loadx.Close;
                                 FreeMemStr;
                                 hwsf.BtMensagem('Formato do arquivo Inválido'+#13+axcp5TMPout);
                                 exit;
                             end;
                          end;
                      end;
                      axcp5TMPresult:=axcp5TMPresult+axcp5TMPout;
                      axcp5TMPimg:=false;
                   end;
                   axcp5TMPresult:=axcp5TMPresult+'"';
                   axcp5TMPon:=not axcp5TMPon;
                end else if axcp5TMPimg and not axcp5TMPon then
                   axcp5TMPout:=axcp5TMPout+copy(axcp5TMP,axcp5id,1)
                else axcp5TMPresult:=axcp5TMPresult+copy(axcp5TMP,axcp5id,1);
                if axcp5TMPon then begin
                    if ((LowerCase(copy(axcp5TMP,axcp5id,4))='src=') or
                        (LowerCase(copy(axcp5TMP,axcp5id,11))='background=')) then begin
                        axcp5TMPimg:=true;
                        axcp5TMPimg2:=true;
                        axcp5TMPout:='';
                        axcp5TMfilePOSini:=axcp5id+1;
                    end;
                end;
            end;
            axcp5.Clear;
            axcp5.Add(axcp5TMPresult);
    except
       loadx.Close;
       Case xerrorfilet of
            0: xerrortxt:='ERRO: Documento contém caracteres inválidos.';
            1: xerrortxt:='ERRO: Acesso Negado aos arquivos de Imagem Importados.';
            2: xerrortxt:='ERRO: Erro de leitura do arquivo HTML.';
       End;
       FreeMemStr;
       hwsf.BtMensagem(xerrortxt);
       exit;
    end;
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
                    FreeMemStr;
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
                        FreeMemStr;
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
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_gal,cod_web,cod_lng,cod_psn,cod_ls,descricao,textft,blb,xtp,cod_usrw,cod_class,loc,xdt,xstat) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,'+#39+FormatDateTime('yyyymmdd',cb_dt.Date)+' '+FormatDateTime('hh:nn:ss',cb_tm.Time)+#39+',:p13)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_gal;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsInteger:=cod_model;
                 Params[5].AsString:=BoolToStr(ab_default.Checked);
                 Params[6].AsString:=listaAux.ab_descricao[axgal_id];
                 Params[7].Assign(axcp5);
                 axcp4.Clear;
                 axcp4.Seek(0,soFromBeginning);
                 Params[8].LoadFromStream(axcp4,ftblob);
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsInteger:=axcod_ent;
                 Params[11].AsInteger:=axcodgrp;
                 Params[12].AsString:=cb_loc.Text;
                 Params[13].AsInteger:=1;
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
                     FreeMemStr;
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
            Params[1].Assign(axcp5);
            axcp4.Clear;
            axcp4.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(axcp4,ftblob);
            Params[3].AsInteger:=ax_ab_cod;
            try
                Execute;
                loadx.Progressloading.position:=30;
            except
                try loadx.Close; except end;
                FreeMemStr;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_ab_codinsert:= ax_ab_cod;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_psn=:p0,cod_ls=:p1,cod_class=:p2,loc=:p3,xdt='+#39+FormatDateTime('yyyymmdd',cb_dt.Date)+' '+FormatDateTime('hh:nn:ss',cb_tm.Time)+#39+
                          'WHERE cod_gal=:p4';
            loadx.Progressloading.position:=40;
            Params[0].AsInteger:=StrtoInt(LstModels.codigo[ComboBox_model.ItemIndex]);
            Params[1].AsString:=BoolToStr(ab_default.Checked);
            Params[2].AsInteger:=axcodgrp;
            Params[3].AsString:=cb_loc.Text;
            Params[4].AsInteger:=axcod_gal;
            try
                Execute;
                loadx.Progressloading.position:=50;
            except
                try loadx.Close; except end;
                FreeMemStr;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
        end;
     end;
     //gravar imagens mensa - upload de arquivos
        Application.ProcessMessages;
        if (axcp5Inc>0) then begin
            {
            PostBinaryStream4PH(xcptp,xcpcod,xcpdt: string; xFileData: TMemoryStream): Boolean;
            xcptp //cod website
            xcpcod //cod msg
            xcpdt //nome do arquivo
            }
            axcp5Tot:=axcp5ADDfile.Count-1;
            axcod_gal_auxup:=IntToStr(axcod_gal);
            axcod_web_auxup:=IntToStr(AxDadosUsr.cod_web);
            for axcp5id:=0 to axcp5Tot do begin
                axcp5TMfilename:=ExtractFileName(axcp5ADDfile.Strings[axcp5id]);
                axcp5TMfilename:=FilterNameFile(axcp5TMfilename);
                if FileExists(axcp5ADDfile.Strings[axcp5id]) then begin
                   axcp5ADDstream.Clear;
                   axcp5ADDstream.Position:=0;
                   axcp5ADDstream.LoadFromFile(axcp5ADDfile.Strings[axcp5id]);
                   axcp5ADDstream.Position:=0;
                   if not dm.PostBinaryStream4PH(axcod_web_auxup,axcod_gal_auxup,axcp5TMfilename,axcp5ADDstream) then begin
                      if hwsf.BtConfirma('Ocorreu um erro ao enviar arquivo, tentar novamente?') then begin
                         axcp5ADDstream.Clear;
                         axcp5ADDstream.Position:=0;
                         axcp5ADDstream.LoadFromFile(axcp5ADDfile.Strings[axcp5id]);
                         axcp5ADDstream.Position:=0;
                         if not dm.PostBinaryStream4PH(axcod_web_auxup,axcod_gal_auxup,axcp5TMfilename,axcp5ADDstream) then begin
                            loadx.Close;
                            FreeMemStr;
                            hwsf.BtMensagem('Erro ao importar arquivo.');
                            exit;
                         end;
                      end;
                   end;
                end;
            end;
        end;
     FreeMemStr;
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
     xupdatereg:=true;
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

procedure Tmdl_richestate.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table1;
             if (PageControlab.TabIndex = 1) then monta_table2(False,True);
             if PageControl1.TabIndex=1 then monta_table3;
          end;
      end;
end;

procedure Tmdl_richestate.bt_save2Click(Sender: TObject);
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
     if (not xupdatelogo2) and (ms_cod.Caption = 'novo') then begin
        hwsf.BtMensagem('É necessário importar uma imagem.');
        exit;
     end else if xupdatelogo2 then begin
        if xlogosz2=0 then begin
           hwsf.BtMensagem('É necessário importar uma imagem.');
           exit;
        end;
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
                 CommandText:= 'INSERT INTO '+LstTables.Table[2]+' (codigo,cod_img,cod_gal,cod_lng,descricao,textft,blb) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_img;
                 Params[2].AsInteger:=axcod_gal;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsString:=listaAux.ms_descricao[axgal_id];
                 Params[5].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[6].LoadFromStream(xtxt3,ftblob);
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
            CommandText:= 'UPDATE '+LstTables.Table[2]+' SET descricao=:p0,textft=:p1,blb=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsString:=ms_titulo.Text;
            loadx.Progressloading.position:=20;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsInteger:=ax_ms_cod;
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
     if ms_cod.Caption = 'novo' then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(axcod_img),xlogotmp2,xampltmp2);
     end else if xupdatelogo2 then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[3],'UPDT','cod_img','','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(axcod_img),xlogotmp2,xampltmp2);
     end;
     if not xexecutaimg then begin
        try loadx.Close; except end;
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;
     xupdatereg:=true;
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

procedure Tmdl_richestate.getLogo1;
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
     Application.ProcessMessages;
     abretmplogo1;
     Application.ProcessMessages;
end;

procedure Tmdl_richestate.abretmplogo1;
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
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tmdl_richestate.getLogo2;
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
     Application.ProcessMessages;
     abretmplogo2;
     Application.ProcessMessages;
end;

procedure Tmdl_richestate.abretmplogo2;
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
        hwsf.BtMensagem('Ocorreu algum erro ao abrir logomarca.');
    end;
end;

procedure Tmdl_richestate.getBanner;
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
           Label_size3.Caption:=Formatfloat('0',(fieldbyname('cp13').AsInteger/1000))+' kb';
        end;
        Close;
     end;}
     abretmpbanner;
end;

procedure Tmdl_richestate.abretmpbanner;
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

procedure Tmdl_richestate.bt_limpar1Click(Sender: TObject);
begin
      limpaphoto1(True);
      if hwsf.BtConfirma('Gravar dados?') then begin
         bt_save1.Click;
         if chk_view1.Checked then getLogo1;
      end;
end;

procedure Tmdl_richestate.bt_limpar2Click(Sender: TObject);
begin
      limpaphoto2(True);
      if hwsf.BtConfirma('Gravar dados da imagem?') then begin
         bt_save2.Click;
         if chk_view2.Checked then getLogo2;
      end;
end;

procedure Tmdl_richestate.bt_view1Click(Sender: TObject);
begin
      if dm.ds_sql.RecordCount>0 then begin
         Application.CreateForm(Tmdl_richgalery_view,mdl_richgalery_view);
         mdl_richgalery_view.TableImage.xcp_cod:='codigo';
         mdl_richgalery_view.TableImage.xcp_descricao:='descricao';
         mdl_richgalery_view.TableImage.xcp_img:='icon';
         mdl_richgalery_view.TableImage.xcp_tableimg:=LstTables.Table[1];
         mdl_richgalery_view.TableImage.xcp_codimg:='cod_gal';
         mdl_richgalery_view.TableImage.xcp_table:= dm.ds_sql;
         mdl_richgalery_view.Left:=mdl_richestate.Width-mdl_richgalery_view.Width;
         mdl_richgalery_view.Top:=mdl_richestate.Height-mdl_richgalery_view.Height;
         mdl_richgalery_view.Show;
      end;
end;

procedure Tmdl_richestate.bt_open1Click(Sender: TObject);
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

procedure Tmdl_richestate.bt_open2Click(Sender: TObject);
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

procedure Tmdl_richestate.chk_view1Click(Sender: TObject);
begin
      if chk_view1.Checked then getLogo1;
end;

procedure Tmdl_richestate.chk_view2Click(Sender: TObject);
begin
      if chk_view2.Checked then getLogo2;
end;

procedure Tmdl_richestate.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_richestate.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_richestate.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_richestate.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_richestate.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade;
end;

procedure Tmdl_richestate.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tmdl_richestate.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_richestate.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_richestate.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade2;
end;

procedure Tmdl_richestate.bt_recursiveClick(Sender: TObject);
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
    axInc_traduzir,zerror: Boolean;
    xtxt1: String;
    axgal_id,xidxlng,xerrocount: Integer;
begin
      //adiciona recursivamente imagens no banco de dados
      axfilter:='Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf)|*.jpg;*.jpeg;*.bmp;*.ico;*.swf|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Flash (*.swf)|*.swf';
      bt_search_ax:= Btsearch_auto_ax(pathdefault,axfilter);
      pathdefault:=bt_search_ax.pathdefault;
      if bt_search_ax.filelist.Count>0 then begin
         if RadioButton1.Checked then axInc_traduzir:=true
         else if RadioButton2.Checked then axInc_traduzir:=false
         else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
         mdl_richestate.Repaint;
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
             xerrocount:=0;
             xerror:=false;
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
                    zerror:=false;
                    While not zerror do begin
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
                             zerror:=true;
                             xerror:=false;
                         except
                             zerror:=false;
                             xerror:=true;
                             {try loadx.Close; except end;
                             hwsf.BtMensagem('Ocorreu algum erro.');
                             exit;}
                         end;
                       end;
                       if not (zerror) then Inc(xerrocount);
                       if xerrocount = 3 then begin
                          if hwsf.BtConfirma('Conexão com internet não está respondendo, tentar novamente?') then begin
                             xerrocount := 0;
                          end else begin
                             try
                                 dm.executa.CommandText:= 'DELETE FROM '+LstTables.Table[2]+' WHERE cod_img='+#39+IntToStr(axcod_img)+#39;
                                 dm.executa.Execute;
                             except
                             end;
                             loadx.Close;
                             hwsf.BtMensagem('Inserção automática cancelada.');
                             exit;
                          end;
                       end;
                    end;
                end;
                if not xerror then begin
                  zerror:=false;
                  While not zerror do begin
                      //gravar logo
                      xlogotmp2_tmp.Seek(0,soFromBeginning);
                      xampltmp2_tmp.Seek(0,soFromBeginning);
                      if not dm.PostBinaryStreamPH(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(axcod_img),xlogotmp2_tmp,xampltmp2_tmp) then begin
                         //axstatInc.Add('Erro ao gravar imagem.');
                         zerror:=false;
                         xerror:=true;
                      end else begin
                         zerror:=true;
                         xerror:=false;
                      end;
                      if not (zerror) then Inc(xerrocount);
                      if xerrocount = 3 then begin
                          if hwsf.BtConfirma('Conexão com internet não está respondendo, tentar novamente?') then begin
                             xerrocount := 0;
                          end else begin
                             try
                                 dm.executa.CommandText:= 'DELETE FROM '+LstTables.Table[2]+' WHERE cod_img='+#39+IntToStr(axcod_img)+#39;
                                 dm.executa.Execute;
                             except
                             end;
                             loadx.Close;
                             hwsf.BtMensagem('Inserção automática cancelada.');
                             exit;
                          end;
                      end;
                  end;
                end;
                if not xerror then begin
                   axstatInc.Add('Imagem incluída com sucesso.');
                end;
             end else begin
               axstatInc.Add('Tipo de arquivo inválido.');
             end;
             axstatInc.Add('');
         end;
         xupdatereg:=true;
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

function Tmdl_richestate.inserimg(xnamefile,xfilext:String;
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
    xfilenamic: String;
    xil_hTMP,xil_wTMP,xic_hTMP,xic_wTMP: Integer;
begin
        Application.ProcessMessages;
        Try
          Result:=true;
          xlogotmp2_tmp.Clear;
          xlogotmp2_tmp.Seek(0,soFromBeginning);
          xampltmp2_tmp.Clear;
          xampltmp2_tmp.Seek(0,soFromBeginning);
          if ((xfilext='.swf') or (xfilext='.flv') or (xfilext='.png')) then begin
             xswf := false;
             xfilenamic:= copy(xnamefile,1,Length(xnamefile)-4)+'_ico'+xfilext;
             loadx.Progressloading.position:=80;
             if FileExists(xfilenamic) then xlogotmp2_tmp.LoadFromFile(xfilenamic)
             else xlogotmp2_tmp.LoadFromFile(xnamefile);
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
                     {if not xic_ajt then begin
                        //não ajustar ao tamanho
                        //imagem ficara proporcional
                        if xic_h > xic_w then begin
                           xcalc1 := (((xic_h*100)/codGraphic.Height)/100);
                        end else begin
                           xcalc1 := (((xic_w*100)/codGraphic.Width)/100);
                        end;
                        xic_h:= StrToInt(formatfloat('0',(codGraphic.Height*xcalc1)));
                        xic_w:= StrToInt(formatfloat('0',(codGraphic.Width*xcalc1)));
                     end else begin     "}
                        //ajustar ao tamanho
                        if xic_pr then begin
                           //se imagem proporcional
                           {xcalc1:= (((codGraphic.Height*100)/xic_h)/100);
                           xic_h_tmp:=StrToInt(formatfloat('0',(xic_h*xcalc1)));
                           xic_w_tmp:=StrToInt(formatfloat('0',(xic_w*xcalc1)));
                           codGraphic.Height:=xic_h_tmp;
                           codGraphic.Width:=xic_w_tmp;}
                           xcalc1 := (((xic_h*100)/codGraphic.Height)/100);
                           xic_hTMP:= StrToInt(formatfloat('0',(codGraphic.Height*xcalc1)));
                           xic_wTMP:= StrToInt(formatfloat('0',(codGraphic.Width*xcalc1)));
                           if xic_wTMP > xic_w then begin
                              xcalc1 := (((xic_w*100)/codGraphic.Width)/100);
                              xic_hTMP:= StrToInt(formatfloat('0',(codGraphic.Height*xcalc1)));
                              xic_wTMP:= StrToInt(formatfloat('0',(codGraphic.Width*xcalc1)));
                           end;
                           xic_h:= xic_hTMP;
                           xic_w:= xic_wTMP;
                        end;
                     //end;
                     Width := xic_w;
                     Height := xic_h;
                     Canvas.StretchDraw(Rect(0, 0, xic_w, xic_h),codGraphic);
                end;
                With codBitmap2 do begin
                     {if not xil_ajt then begin
                        //não ajustar ao tamanho
                        //imagem ficara proporcional
                        if xil_h > xil_w then begin
                           xcalc1 := (((xil_h*100)/codGraphic2.Height)/100);
                        end else begin
                           xcalc1 := (((xil_w*100)/codGraphic2.Width)/100);
                        end;
                        xil_h:= StrToInt(formatfloat('0',(codGraphic2.Height*xcalc1)));
                        xil_w:= StrToInt(formatfloat('0',(codGraphic2.Width*xcalc1)));
                     end else begin   }
                        //ajustar ao tamanho
                        if xil_pr then begin
                           //se imagem proporcional
                           {xcalc1:= (((codGraphic2.Height*100)/xil_h)/100);
                           xil_h_tmp:=StrToInt(formatfloat('0',(xil_h*xcalc1)));
                           xil_w_tmp:=StrToInt(formatfloat('0',(xil_w*xcalc1)));
                           codGraphic2.Height:=xil_h_tmp;
                           codGraphic2.Width:=xil_w_tmp;}
                           xcalc1 := (((xil_h*100)/codGraphic2.Height)/100);
                           xil_hTMP:= StrToInt(formatfloat('0',(codGraphic2.Height*xcalc1)));
                           xil_wTMP:= StrToInt(formatfloat('0',(codGraphic2.Width*xcalc1)));
                           if xil_wTMP > xil_w then begin
                              xcalc1 := (((xil_w*100)/codGraphic2.Width)/100);
                              xil_hTMP:= StrToInt(formatfloat('0',(codGraphic2.Height*xcalc1)));
                              xil_wTMP:= StrToInt(formatfloat('0',(codGraphic2.Width*xcalc1)));
                           end;
                           xil_h:= xil_hTMP;
                           xil_w:= xil_wTMP;
                        end;
                     //end;
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
                     CompressionQuality:=xil_cp;
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

function Tmdl_richestate.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_richestate.PageControl_languagensChange(Sender: TObject);
begin
      if PageControl1.TabIndex=0 then begin
         ab_cod.Caption:='0';
         ms_cod.Caption:='0';
         xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
         monta_tableclass;
         monta_table1;
         if (PageControlab.TabIndex = 1) then monta_table2(False,True);
         if PageControl1.TabIndex=1 then monta_table3;
      end;
end;

procedure Tmdl_richestate.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_richestate.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_richestate.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_richestate.save_cfg(xcodlng: Integer);
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

procedure Tmdl_richestate.monta_table3;
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
     atualiza_grade3;
     try loadx.Close; except end;
end;

procedure Tmdl_richestate.atualiza_grade3;
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
            limpaphoto3(False);
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

procedure Tmdl_richestate.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_richestate.bt_open3Click(Sender: TObject);
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
         limpaphoto3(xupdatebanner);
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
            limpaphoto3(xupdatebanner);
            try loadx.Close; except end;
            hwsf.BtMensagem('Formato de arquivo inválido.');
            exit;
         end;
         xbannertmp.Seek(0,soFromBeginning);
         xbannersz:=xbannertmp.Size;
         if (xbannersz > 700000) then begin
            limpaphoto3(xupdatebanner);
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

procedure Tmdl_richestate.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
end;

procedure Tmdl_richestate.bt_save3Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens.TabIndex]);
end;

procedure Tmdl_richestate.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then begin
         monta_table3;
      end;
end;

procedure Tmdl_richestate.MenuItem1Click(Sender: TObject);
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
                    Next;
                end;
           end;
           loadx.Progressloading.position:=100;
           xupdatereg:=true;
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade2;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_richestate.bt_del2Click(Sender: TObject);
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
           xupdatereg:=true;
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

procedure Tmdl_richestate.ComboBox_entChange(Sender: TObject);
begin
      if StrtoInt(AxDadosUsr.axparm) > 5000 then begin
         if dm.executa5.Locate('cp1',ComboBox_ent.Text,[]) then begin
            if axcod_ent<>dm.executa5.fieldbyname('codigo').AsInteger then begin
               axcod_ent:=dm.executa5.fieldbyname('codigo').AsInteger;
               monta_table1;
               if (PageControlab.TabIndex = 1) then monta_table2(False,True);
               if PageControl1.TabIndex=1 then monta_table3;
            end;
         end else axcod_ent:=0;
     end;
end;

procedure Tmdl_richestate.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_richestate.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_richestate.ToolBar_grpResize(Sender: TObject);
begin
     cb_group.Width := ToolBar_grp.Width;
end;

procedure Tmdl_richestate.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with retorna_TRxRichEdit(PageControlab.TabIndex) do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_richestate.Recortar1Click(Sender: TObject);
begin
     //recortar
     retorna_TRxRichEdit(PageControlab.TabIndex).CutToClipboard;
end;

procedure Tmdl_richestate.Copiar1Click(Sender: TObject);
begin
     //copiar
     retorna_TRxRichEdit(PageControlab.TabIndex).CopyToClipboard;
end;

procedure Tmdl_richestate.Colar1Click(Sender: TObject);
begin
      //colar
     retorna_TRxRichEdit(PageControlab.TabIndex).PasteFromClipboard;
end;

procedure Tmdl_richestate.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_richestate.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not retorna_BoldButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_richestate.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not retorna_ItalicButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_richestate.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not retorna_UnderlineButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_richestate.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph.Numbering := TRxNumbering(not retorna_BulletsButton(PageControlab.TabIndex).Down);
end;

procedure Tmdl_richestate.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_richestate.esquerdo1Click(Sender: TObject);
begin
     retorna_LeftAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_richestate.centro1Click(Sender: TObject);
begin
     retorna_CenterAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_richestate.direita1Click(Sender: TObject);
begin
     retorna_RightAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_richestate.justificado1Click(Sender: TObject);
begin
     retorna_JustifyAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_richestate.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: if (PageControlab.TabIndex = 0) then bt_save1.Click
          else bt_save2.Click;
    end;
end;

procedure Tmdl_richestate.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph do
  try
    FUpdating := True;
    if (PageControlab.TabIndex>0) then begin
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
    end;
  finally
    FUpdating := False;
  end;
end;

function Tmdl_richestate.CurrText: TRxTextAttributes;
begin
  if retorna_TRxRichEdit(PageControlab.TabIndex).SelLength > 0 then Result := retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes
  else Result := retorna_TRxRichEdit(PageControlab.TabIndex).DefAttributes;
end;

procedure Tmdl_richestate.SetEditRect;
var
  R: TRect;
begin
  with retorna_TRxRichEdit(PageControlab.TabIndex) do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_richestate.UpdateCursorPos;
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

function Tmdl_richestate.retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
begin
      Case xidxcod of
          //0: Result:=re_editor1;
          1: Result:=re_editor2;
      End;
end;

function Tmdl_richestate.retorna_fontName(xidxcod:Integer):TComboBox;
begin
      Case xidxcod of
          //0: Result:=FontName1;
          1: Result:=FontName2;
      End;
end;

function Tmdl_richestate.retorna_fontSize(xidxcod:Integer):TEdit;
begin
      Case xidxcod of
          //0: Result:=FontSize1;
          1: Result:=FontSize2;
      End;
end;

function Tmdl_richestate.retorna_BoldButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=BoldButton1;
          1: Result:=BoldButton2;
      End;
end;

function Tmdl_richestate.retorna_ItalicButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=ItalicButton1;
          1: Result:=ItalicButton2;
      End;
end;

function Tmdl_richestate.retorna_UnderlineButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=UnderlineButton1;
          1: Result:=UnderlineButton2;
      End;
end;

function Tmdl_richestate.retorna_LeftAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=LeftAlign1;
          1: Result:=LeftAlign2;
      End;
end;

function Tmdl_richestate.retorna_CenterAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=CenterAlign1;
          1: Result:=CenterAlign2;
      End;
end;

function Tmdl_richestate.retorna_RightAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=RightAlign1;
          1: Result:=RightAlign2;
      End;
end;

function Tmdl_richestate.retorna_JustifyAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=JustifyAlign1;
          1: Result:=JustifyAlign2;
      End;
end;

function Tmdl_richestate.retorna_BulletsButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          //0: Result:=BulletsButton1;
          1: Result:=BulletsButton2;
      End;
end;

procedure Tmdl_richestate.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := retorna_fontName(PageControlab.TabIndex).Items[retorna_fontName(PageControlab.TabIndex).ItemIndex];
end;

procedure Tmdl_richestate.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(retorna_fontSize(PageControlab.TabIndex).Text);
end;

procedure Tmdl_richestate.PageControlabChange(Sender: TObject);
var axcod,xidxcb,xidxcbsum: Integer;
    axshowing: Boolean;
begin
      if (PageControlab.TabIndex = 1) then begin
         cb_group.Clear;
         With dm.ds_sql do begin
             if (recordcount <= 0) then begin
                hwsf.BtMensagem('Não há álbuns cadastrados.');
                PageControlab.TabIndex:=0;
                exit;
             end else if ((ab_cod.Caption = '0') or (ab_cod.Caption = 'novo')) then begin
                hwsf.BtMensagem('Antes de inserir os itens grave as informações.');
                PageControlab.TabIndex:=0;
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
             monta_table2(False,True);
             try loadx.Close; except end;
         end;
      end else if (PageControlab.TabIndex = 2) then begin
          atualizafeed;
      end;
end;

function Tmdl_richestate.atualizafeed:Boolean;
begin
    WebBrowser_feed.Navigate('http://'+AxDadosUsr.website+'/feed_upd.php');
    hwsf.BtMensagem('Feed de Imóveis Atualizado com sucesso.');
end;

procedure Tmdl_richestate.cb_groupChange(Sender: TObject);
begin
      if ((PageControlab.TabIndex = 1) and (cb_group.Items.Count > 0) and (cb_group.Text <> '')) then begin
          if dm.ds_sql.Locate('descricao',cb_group.Text,[]) then begin
             atualiza_grade;
             monta_table2(False,True);
          end;
      end;
end;

procedure Tmdl_richestate.monta_tableclass;
var axshowing,axcodclass2: Boolean;
    axclass2: String;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando Classificação';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando lista de grupos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=80;
      With dm.ds_sql6 do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+'_ax'+
                        ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                        ' ORDER BY ordem,codigo';
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
          ComboBox_class.Items.Add('Não classificar');
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
end;

procedure Tmdl_richestate.bt_newclassClick(Sender: TObject);
var axgrpname: String;
    axshowing,xexecutaimg: Boolean;
    axcod,axcl_id: Integer; 
    xtxt3: TMemoryStream;
begin
      axgrpname:=hwsf.BtDesc('Digite o nome:');
      if (axgrpname = '') then begin
         hwsf.BtMensagem('Nome inválido.');
         Exit;
      end;
      if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then begin
         hwsf.BtMensagem('Nome já cadastrado.');
         Exit;
      end;
      //Cadastrando novo
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Cadastrando';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Cadastrando';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      axcod_class:=0;
      for axcl_id:=0 to listaLng.count-1 do begin
         axcod:=dm.GetCodMax(LstTables.Table[0]+'_ax','codigo','');
         if axcod_class=0 then axcod_class:=axcod;
         with dm.executa do begin
              CommandText:= 'INSERT INTO '+LstTables.Table[0]+'_ax (codigo,cod_class,cod_web,ordem,cod_lng,cp1,xtp) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
              Params[0].AsInteger:=axcod;
              Params[1].AsInteger:=axcod;
              Params[2].AsInteger:=AxDadosUsr.cod_web;
              Params[3].AsInteger:=axcod;
              Params[4].AsInteger:=listaLng.cod_lng[axcl_id];
              Params[5].AsString:=axgrpname;
              Params[6].AsString:=AxDadosUsr.axparm;
              try
                   Execute;
              except
                   try loadx.Close; except end;
                   hwsf.BtMensagem('Ocorreu algum erro.');
                   exit;
              end;
         end;
      end;
      loadx.Progressloading.position:=50;
      {xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[1]+'_ax','INST','codigo','cod_class','icon','','icon_sz','',IntToStr(axcod_class),nil,nil);
      if not xexecutaimg then begin
         try loadx.Close; except end;
         hwsf.BtMensagem('Ocorreu algum erro.');
         exit;
      end;}
      loadx.Progressloading.position:=70;
      monta_tableclass;
      Application.ProcessMessages;
      ComboBox_class.ItemIndex:=(ComboBox_class.Count-1);
      loadx.Progressloading.position:=100;
      loadx.lbloading.Caption:='Dados gravados com sucesso.';
      loadx.lbloading.Repaint;
      Sleep(2000);
      try loadx.Close; except end;
end;

procedure Tmdl_richestate.bt_delclassClick(Sender: TObject);
var axshowing, axvincul, axerror: Boolean;
    axgrpname,axcodgrp: String;
begin
      axgrpname:=ComboBox_class.Items.Strings[ComboBox_class.ItemIndex];
      if (axgrpname = '') then begin
         hwsf.BtMensagem('Nome inválido.');
         Exit;
      end;
      if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then begin
         axcodgrp:= dm.ds_sql6.fieldbyname('cod_class').AsString;
      end else begin
         hwsf.BtMensagem('Nome inválido.');
         Exit;
      end;
      With dm.ds_sql8 do begin
         CommandText:= 'SELECT codigo FROM '+LstTables.Table[0]+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND cod_class='+#39+axcodgrp+#39+
                       ' ORDER BY codigo';
         Open;
         if (recordcount>0) then begin
            axvincul:=true;
            if not hwsf.BtConfirma('Existem imóveis vinculados com este item, remover vínculo?') then begin
               Close;
               hwsf.BtMensagem('Processo cancelado.');
               Exit;
            end;
         end;
      end;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.deleta_reg(LstTables.Table[0]+'_ax','cod_class',axcodgrp,true) then begin
         dm.deleta_reg(LstTables.Table[1]+'_ax','cod_class',axcodgrp,false);
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

procedure Tmdl_richestate.EVsaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save1.Click;
      end;
end;

procedure Tmdl_richestate.EVsave2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save2.Click;
      end;
end;

procedure Tmdl_richestate.bt_saveclassClick(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     if (dm.ds_sql.RecordCount>0) and (ab_cod.Caption<>'novo') then begin
         //banco de imagens
         axshowing:= loadx.Showing;
        if not axshowing then begin
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Excluindo Registro';
           loadx.Show;
           loadx.Update;
        end else begin
           loadx.lbloading.Caption:='Excluindo Registro';
           loadx.lbloading.Repaint;
        end;
        loadx.Progressloading.position:=10;
        ComboBox_class2.ItemIndex:= ComboBox_class.ItemIndex;
        Application.ProcessMessages;
        bt_save1.Click;
        loadx.Progressloading.position:=100;
        try loadx.Close; except end;
     end;
end;

procedure Tmdl_richestate.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         retorna_TRxRichEdit(PageControlab.TabIndex).Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_richestate.validaCbClass;
var axshowing: Boolean;
begin
     if (ComboBox_class.ItemIndex<>ComboBox_idUPD) then ComboBox_idUPD:=ComboBox_class.ItemIndex
     else exit;
     axshowing:= loadx.Showing;
     if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Abrindo...';
         loadx.Show;
         loadx.Update;
     end else begin
         loadx.lbloading.Caption:='Abrindo...';
         loadx.lbloading.Repaint;
     end;
     if (ComboBox_class.ItemIndex > 0) then begin
         if (dm.ds_sql6.Locate('cp1',ComboBox_class.Items.Strings[ComboBox_class.ItemIndex],[])) then
             dm.ds_sql.Filter:='(('+xdsqlfilter+') AND (cod_class='+#39+dm.ds_sql6.fieldbyname('cod_class').AsString+#39+'))';
     end else dm.ds_sql.Filter:=xdsqlfilter;
     dm.ds_sql.Last;
     bt_ordemup.Enabled:=true;
     bt_ordemdown.Enabled:=true;
     if ComboBox_class.ItemIndex=0 then bt_ordemup.Enabled:=false;
     if ComboBox_class.ItemIndex=(ComboBox_class.Items.Count-1) then bt_ordemdown.Enabled:=false;
     dm.ds_sql.Last;
     atualiza_grade;
     try loadx.Hide; loadx.Close; except end;
end;

function Tmdl_richestate.Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
var  bt_search_auto_ax: Tbt_search_ax;
begin
     Try
        Application.CreateForm(TBt_search_auto,Bt_search_auto);
        Bt_search_auto.xpathdefault:=pathdefault;
        Bt_search_auto.grp_search1.Visible:=true;
        if filtrofind<>'' then Bt_search_auto.FilterComboBox1.Filter:=filtrofind;
        Bt_search_auto.ShowModal;
        if Bt_search_auto.rb_search1.Checked then begin
           bt_search_auto_ax.default:=True;
           bt_search_auto_ax.descricao:='';
           bt_search_auto_ax.countinit:=0;
        end else begin
           bt_search_auto_ax.default:=False;
           bt_search_auto_ax.descricao:=Bt_search_auto.ed_search1.Text;
           bt_search_auto_ax.countinit:=Bt_search_auto.ed_search2.Value;
        end;
        bt_search_auto_ax.pathdefault:=Bt_search_auto.xpathdefault;
        bt_search_auto_ax.filelist:=TStringList.Create;
        bt_search_auto_ax.filelist.Clear;
        bt_search_auto_ax.filelist.Assign(Bt_search_auto.xresultStringList);
        Result:=bt_search_auto_ax;
     finally
        Bt_search_auto.Free;
     End;
end;

procedure Tmdl_richestate.bt_exp1Click(Sender: TObject);
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
         xImagem_tmp := dm.GetBinaryStreamPH(LstTables.Table[1],'cod_gal','icon',ab_cod.Caption);
         xImagem_tmp.Seek(0,soFromBeginning);
         xImagem_tmp.SaveToFile(xfiljpg);
         xImagem_tmp.Free;
      end;
end;

procedure Tmdl_richestate.bt_view2Click(Sender: TObject);
begin
      if dm.ds_sql3.RecordCount>0 then begin
         Application.CreateForm(Tmdl_richgalery_view,mdl_richgalery_view);
         mdl_richgalery_view.TableImage.xcp_cod:='codigo';
         mdl_richgalery_view.TableImage.xcp_descricao:='descricao';
         mdl_richgalery_view.TableImage.xcp_img:='img_larg';
         mdl_richgalery_view.TableImage.xcp_tableimg:=LstTables.Table[3];
         mdl_richgalery_view.TableImage.xcp_codimg:='cod_img';
         mdl_richgalery_view.TableImage.xcp_table:= dm.ds_sql3;
         mdl_richgalery_view.Left:=mdl_richestate.Width-mdl_richgalery_view.Width;
         mdl_richgalery_view.Top:=mdl_richestate.Height-mdl_richgalery_view.Height;
         mdl_richgalery_view.Show;
      end;
end;

procedure Tmdl_richestate.bt_exp2Click(Sender: TObject);
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

procedure Tmdl_richestate.SpeedButton2Click(Sender: TObject);
var xfilespath,xfiljpg : String;
    xImagem_tmp : TMemoryStream;
    xidcount,xtotimg: Integer;
    axshowing: Boolean;
begin
      xtotimg:=dm.ds_sql3.RecordCount;
      if xtotimg = 0 then begin
         hwsf.BtMensagem('Não há imagens cadastradas');
         exit;
      end;
      xfilespath:=hwsf.Btpath;
      if xfilespath = '' then begin
         hwsf.BtMensagem('É necessário selecionar um Caminho para exportação das imagens');
      end else begin
         PageControl1.Enabled:=false;
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Importando imagens [1'+'/'+inttostr(xtotimg)+']';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Importando imagens [1'+'/'+inttostr(xtotimg)+']';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.Max:=xtotimg;
         loadx.Progressloading.position:=0;
         loadx.Progressloading2.Visible:=false;
         loadx.repaint;
         Application.ProcessMessages;
         dm.ds_sql3.First;
         xImagem_tmp := TMemoryStream.Create;
         xidcount:=0;
         While not dm.ds_sql3.Eof do begin
           Inc(xidcount);
           loadx.Progressloading.position:=xidcount;
           loadx.lbloading.Caption:='Importando imagens ['+inttostr(xidcount)+'/'+inttostr(xtotimg)+']';
           loadx.lbloading.Repaint;
           Application.ProcessMessages;
           xfiljpg := formatfloat('000',xidcount)+'-'+dm.ds_sql3.fieldbyname('descricao').AsString+'.jpg';
           xImagem_tmp.Clear;
           xImagem_tmp.Position:=0;
           xImagem_tmp := dm.GetBinaryStreamPH(LstTables.Table[3],'cod_img','img_larg',dm.ds_sql3.fieldbyname('cod_img').AsString);
           xImagem_tmp.Seek(0,soFromBeginning);
           xImagem_tmp.SaveToFile(xfilespath+'\'+xfiljpg);
           dm.ds_sql3.Next;
         end;
         xImagem_tmp.Free;
         loadx.Close;
         PageControl1.Enabled:=true;
         hwsf.BtMensagem('Itens exportados com sucesso');
      end;
end;

procedure Tmdl_richestate.SpeedButton4Click(Sender: TObject);
begin
      DBGrid1.SetFocus;
      if ((xfil_ate.Date < xfil_de.Date) and (xfil_ate_chk.Checked)) then 
         hwsf.BtMensagem('A data "Até:" tem que ser maior ou igual a "De:"')
      else monta_table1;
end;

procedure Tmdl_richestate.xfil_ate_chkClick(Sender: TObject);
begin
      xfil_ate.Enabled:=xfil_ate_chk.Checked;
end;

procedure Tmdl_richestate.xfil_de_chkClick(Sender: TObject);
begin
      xfil_de.Enabled:=xfil_de_chk.Checked;
end;

procedure Tmdl_richestate.PanelbtviewResize(Sender: TObject);
begin
    bt_view1.Height:=Panelbtview.Height-49;
end;

procedure Tmdl_richestate.Panelbtview2Resize(Sender: TObject);
begin
    bt_view2.Height:=Panelbtview2.Height-49;
end;

procedure Tmdl_richestate.bt_imgRotateh1Click(Sender: TObject);
begin
     if dm.rotateFoto(90,xlogotmp1,xlogosz1,xupdatelogo1,ComboBox_model.Text,LstTables.Table[1],'cod_gal','icon',ab_cod.Caption) then
        abretmplogo1;
end;

procedure Tmdl_richestate.bt_imgRotatea1Click(Sender: TObject);
begin
     if dm.rotateFoto(-90,xlogotmp1,xlogosz1,xupdatelogo1,ComboBox_model.Text,LstTables.Table[1],'cod_gal','icon',ab_cod.Caption) then
        abretmplogo1;
end;

procedure Tmdl_richestate.bt_imgRotateh2Click(Sender: TObject);
begin
     if dm.rotateFoto(90,xlogotmp2,xlogosz2,xupdatelogo2,ComboBox_model.Text,LstTables.Table[3],'cod_img','img_ico',ms_cod.Caption) then begin
        if dm.rotateFoto(90,xampltmp2,xamplsz2,xupdatelogo2,ComboBox_model.Text,LstTables.Table[3],'cod_img','img_larg',ms_cod.Caption) then
           abretmplogo2
        else if chk_view2.Checked then getLogo2;
     end;
end;

procedure Tmdl_richestate.bt_imgRotatea2Click(Sender: TObject);
begin
     if dm.rotateFoto(-90,xlogotmp2,xlogosz2,xupdatelogo2,ComboBox_model.Text,LstTables.Table[3],'cod_img','img_ico',ms_cod.Caption) then begin
        if dm.rotateFoto(-90,xampltmp2,xamplsz2,xupdatelogo2,ComboBox_model.Text,LstTables.Table[3],'cod_img','img_larg',ms_cod.Caption) then
           abretmplogo2
        else if chk_view2.Checked then getLogo2;
     end;
end;

procedure Tmdl_richestate.MenuItem2Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo Registro';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo Registro';
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
           monta_table2(False,True);
           With dm.ds_sql3 do begin
                First;
                While not Eof do begin
                    dm.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',fieldbyname('cod_img').AsString);
                    Next;
                end;
           end;
           loadx.Progressloading.position:=100;
           xupdatereg:=true;
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           if not dm.ds_sql.Locate('codigo',axcod,[]) then
           if not dm.ds_sql.Locate('codigo',axcod-2,[]) then
              dm.ds_sql.First;
           Application.ProcessMessages;
           atualiza_grade;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_richestate.bt_cancel1Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
      if (dm.ds_sql.RecordCount>0) and (ab_cod.Caption<>'novo') then begin
        axcod:= StrToInt(ab_cod.Caption);
        if hwsf.BtConfirma('Tem certeza que desejas excluir o Registro?') then begin
           axshowing:= loadx.Showing;
           if not axshowing then begin
              loadx := Tloadx.Create(Application);
              loadx.lbloading.Caption:='Excluindo Registro';
              loadx.Show;
              loadx.Update;
           end else begin
              loadx.lbloading.Caption:='Excluindo Registro';
              loadx.lbloading.Repaint;
           end;
           loadx.Progressloading.position:=10;
           Application.ProcessMessages;
           loadx.Progressloading.position:=25;
           with dm.executa do begin
                CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_ls=:p0,xstat=:p1 '+
                              'WHERE cod_gal=:p2';
                loadx.Progressloading.position:=40;
                Params[0].AsString:=BoolToStr(false);
                Params[1].AsInteger:=5;
                Params[2].AsInteger:=axcod;
                try
                    Execute;
                    loadx.Progressloading.position:=30;
                except
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro.');
                    exit;
                end;
           end;
           xupdatereg:=true;
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           if not dm.ds_sql.Locate('codigo',axcod+1,[]) then
           if not dm.ds_sql.Locate('codigo',axcod-1,[]) then
              dm.ds_sql.First;
           Application.ProcessMessages;
           atualiza_grade;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_richestate.bt_activate1Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
      if (dm.ds_sql.RecordCount>0) and (ab_cod.Caption<>'novo') then begin
        axcod:= StrToInt(ab_cod.Caption);
        if hwsf.BtConfirma('Tem certeza que desejas reativar o Registro?') then begin
           axshowing:= loadx.Showing;
           if not axshowing then begin
              loadx := Tloadx.Create(Application);
              loadx.lbloading.Caption:='Reativando Registro';
              loadx.Show;
              loadx.Update;
           end else begin
              loadx.lbloading.Caption:='Reativando Registro';
              loadx.lbloading.Repaint;
           end;
           loadx.Progressloading.position:=10;
           Application.ProcessMessages;
           loadx.Progressloading.position:=25;
           with dm.executa do begin
                CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_ls=:p0,xstat=:p1 '+
                              'WHERE cod_gal=:p2';
                loadx.Progressloading.position:=40;
                Params[0].AsString:=BoolToStr(true);
                Params[1].AsInteger:=2;
                Params[2].AsInteger:=axcod;
                try
                    Execute;
                    loadx.Progressloading.position:=30;
                except
                    try loadx.Close; except end;
                    hwsf.BtMensagem('Ocorreu algum erro.');
                    exit;
                end;
           end;
           xfil_cancel.Checked:=false;
           monta_table1;
           if not dm.ds_sql.Locate('codigo',axcod,[]) then
              dm.ds_sql.last;
           Application.ProcessMessages;
           atualiza_grade;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_richestate.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

//webbrowser
function GetIEHandle(WebBrowser: TWebbrowser; ClassName: string): HWND;
var hwndChild, hwndTmp: HWND;
    oleCtrl: TOleControl;
    szClass: array [0..255] of char;
begin
    oleCtrl :=WebBrowser;
    hwndTmp := oleCtrl.Handle;
    while (true) do begin
      hwndChild := GetWindow(hwndTmp, GW_CHILD);
      GetClassName(hwndChild, szClass, SizeOf(szClass));
      if (string(szClass)=ClassName) then begin
        Result :=hwndChild;
        Exit;
      end;
      hwndTmp := hwndChild;
    end;
    Result := 0;
end;

function InvokeCMDfnc(WB: TWebbrowser; InvokeIE: Boolean; Value1, Value2: Integer; var vaIn, vaOut: OleVariant): Boolean;
var
  CmdTarget: IOleCommandTarget;
  PtrGUID: PGUID;
begin
  New(PtrGUID);
  if InvokeIE then
    PtrGUID^ := CGID_WebBrowser
  else
    PtrGuid := PGUID(nil);
  if WB.Document <> nil then
  try
    WB.Document.QueryInterface(IOleCommandTarget, CmdTarget);
    if CmdTarget <> nil then
    try
      CmdTarget.Exec(PtrGuid, Value1, Value2, vaIn, vaOut);
    finally
      CmdTarget._Release;
    end;
  except end;
  Dispose(PtrGUID);
end;

function InvokeCMD(WB: TWebbrowser; nCmdID: DWORD): Boolean;
var
  vaIn, vaOut: OleVariant;
begin
  Result := InvokeCMDfnc(WB, true, nCmdID, unassigned, vaIn, vaOut);
end;

procedure Tmdl_richestate.resetWebBrowse;
var xStreamMR: TMemoryStream;
    xStringMR: TStringList;
begin
      try
          xStreamMR:= TMemoryStream.Create;
          xStringMR:= TStringList.Create;
          xStreamMR.Clear;
          xStreamMR.Position:=0;
          xStringMR.Clear;
          xStringMR.Add('<HTML><BODY text=#000000 vLink=#003399 aLink=#003399 link=#003399 bgColor=#FFFFFF leftMargin=10 topMargin=0>');
          xStringMR.Add('</BODY></HTML>');
          xStringMR.SaveToStream(xStreamMR);
          xStreamMR.Position:=0;
          (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStreamMR,soReference));
      finally
          xStreamMR.Free;
          xStringMR.Free;
      end;
end;

procedure Tmdl_richestate.SetRepetirImagem(xreptid:Integer);
var axreptx: String;
begin
    Case xreptid of
        0: axreptx:='no-repeat';
        1: axreptx:='repeat';
        2: axreptx:='repeat-x';
        3: axreptx:='repeat-y';
    end;
    HTMLDocumento.body.style.backgroundRepeat :=axreptx;
    NoRepetir1.Checked:=(xreptid = 0);
    repetirimagem1.Checked:=(xreptid = 1);
    RepetirX1.Checked:=(xreptid = 2);
    RepetirY1.Checked:=(xreptid = 3);
end;

procedure Tmdl_richestate.setxHtml(xabaED:Integer);
var xStream: TMemoryStream;
begin
      Case xabaED of
        0: begin
           CoolBar2.Visible:=true;
           (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
           if PageControltxLast=1 then begin
              try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               RxRichEdit_send.Lines.SaveToStream(xStream);
               xStream.Position:=0;
               (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStream,soReference));
              finally
               xStream.Free;
              end;
           end;
        end;
        1: begin
           CoolBar2.Visible:=false;
           try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               if Assigned(WebBrowser1.Document) then begin
                  InternalSaveDocumentToStream(xStream);
               end;
               xStream.Position:=0;
               RxRichEdit_send.Lines.LoadFromStream(xStream);
           finally
               xStream.Free;
           end;
        end;
        2: begin
           if PageControltxLast=1 then begin
              try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               RxRichEdit_send.Lines.SaveToStream(xStream);
               xStream.Position:=0;
               (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStream,soReference));
              finally
               xStream.Free;
              end;
              Application.ProcessMessages;
           end;
           CoolBar2.Visible:=false;
           try
               xStream:= TMemoryStream.Create;
               xStream.Clear;
               xStream.Position:=0;
               if Assigned(WebBrowser1.Document) then begin
                  InternalSaveDocumentToStream(xStream);
               end;
               xStream.Position:=0;
               InternalLoadDocumentFromStream(xStream);
           finally
               xStream.Free;
           end;
        end;
      End;
      PageControltxLast:=xabaED;
end;

procedure Tmdl_richestate.InternalSaveDocumentToStream(
  const Stream: TStream);
var
  StreamAdapter: IStream;
  PersistStreamInit: IPersistStreamInit;
begin
  Assert(Assigned(WebBrowser1.Document));
  if WebBrowser1.Document.QueryInterface(IPersistStreamInit, PersistStreamInit) = S_OK then begin
    StreamAdapter := TStreamAdapter.Create(Stream);
    PersistStreamInit.Save(StreamAdapter, True);
  end;
end;

procedure Tmdl_richestate.InternalSaveBodyHTMLToStream(const Stream: TStream);
var
  HTMLStr: string;
  Doc: IHTMLDocument2;
  BodyElement: IHTMLElement;
begin
  Assert(Assigned(WebBrowser1.Document));
  if WebBrowser1.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then begin
    BodyElement := Doc.body;
    if Assigned(BodyElement) then begin
      HTMLStr := BodyElement.innerHTML;
      Stream.WriteBuffer(HTMLStr[1], Length(HTMLStr));
    end;
  end;
end;

procedure Tmdl_richestate.InternalSaveBodyHTMLToStringList(const StringList: TStringList);
var
  HTMLStr: string;
  Doc: IHTMLDocument2;
  BodyElement: IHTMLElement;
begin
  Assert(Assigned(WebBrowser1.Document));
  StringList.Clear;
  if WebBrowser1.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then begin
    BodyElement := Doc.body;
    if Assigned(BodyElement) then begin
      HTMLStr := BodyElement.innerHTML;
      StringList.Add(HTMLStr);
    end;
  end;
end;

procedure Tmdl_richestate.InternalSaveBodyTextToStream(const Stream: TStream);
var
  TextStr: string;
  Doc: IHTMLDocument2;
  BodyElement: IHTMLElement;
begin
  Assert(Assigned(WebBrowser1.Document));
  if WebBrowser1.Document.QueryInterface(IHTMLDocument2, Doc) = S_OK then begin
    BodyElement := Doc.body;
    if Assigned(BodyElement) then begin
      TextStr := BodyElement.innerText;
      Stream.WriteBuffer(TextStr[1], Length(TextStr));
    end;
  end;
end;

procedure Tmdl_richestate.InternalLoadDocumentFromStream(const Stream: TStream);
var
  PersistStreamInit: IPersistStreamInit;
  StreamAdapter: IStream;
begin
  Assert(Assigned(WebBrowserView.Document));
  // Get IPersistStreamInit interface on document object
  if WebBrowserView.Document.QueryInterface(IPersistStreamInit, PersistStreamInit) = S_OK then begin
    // Clear document
    if PersistStreamInit.InitNew = S_OK then begin
      // Get IStream interface on stream
      StreamAdapter:= TStreamAdapter.Create(Stream);
      // Load data from Stream into WebBrowser
      PersistStreamInit.Load(StreamAdapter);
    end;
  end;
end;

procedure Tmdl_richestate.SpeedButton10Click(Sender: TObject);
begin
    resetWebBrowse;
end;

procedure Tmdl_richestate.SpeedButton9Click(Sender: TObject);
begin
      bt_save1.Click;
end;

procedure Tmdl_richestate.SpeedButton11Click(Sender: TObject);
begin
    InvokeCMD(WebBrowser1, HTMLID_FIND);
end;

procedure Tmdl_richestate.SpeedButton8Click(Sender: TObject);
var
  OleCommandTarget: IOleCommandTarget;
  Command: TOleCmd;
  Success: HResult;
begin
    WebBrowser1.Document.QueryInterface(IOleCommandTarget, OleCommandTarget);
    Command.cmdID := OLECMDID_PRINT;
    if OleCommandTarget.QueryStatus(nil, 1, @Command, nil) <> S_OK then
    begin
      // ShowMessage('Nothing to print');
      Exit;
    end;
    if (Command.cmdf and OLECMDF_ENABLED) <> 0 then
    begin
      Success := OleCommandTarget.Exec(nil, OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, EmptyParam, EmptyParam);
      case Success of
        S_OK: ;
        OLECMDERR_E_CANCELED: ShowMessage('Cancelado pelo Usuário');
      else ShowMessage('Error');
      end;
    end;
end;

procedure Tmdl_richestate.SpeedButton7Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_DESFAZER,0);
end;

procedure Tmdl_richestate.SpeedButton37Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_REDO,0);
end;

procedure Tmdl_richestate.btnNumListClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_MARCADOR, 0);
end;

procedure Tmdl_richestate.btnBulletClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_MARCADOR_LISTA, 0);
end;

procedure Tmdl_richestate.btnDecreaseIndentClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_OUTDENT, 0);
end;

procedure Tmdl_richestate.btnIncreaseIndentClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_INDENT, 0);
end;

procedure Tmdl_richestate.btnCutClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_RECORTAR, 0);
end;

procedure Tmdl_richestate.btnCopyClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_COPIAR, 0);
end;

procedure Tmdl_richestate.btnPasteClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_COLAR, 0);
end;

procedure Tmdl_richestate.SpeedButton13Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_IMAGEM, 0);
end;

procedure Tmdl_richestate.btnHRClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_LINHAHORIZ, 0);
end;

procedure Tmdl_richestate.SpeedButton14Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_HYPERLINK,0);
end;

procedure Tmdl_richestate.ComboSpeedButton3Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.bgColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_richestate.MenuItem10Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.linkColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_richestate.CorLinkativo1Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.alinkColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_richestate.CorLinkvisitado1Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.vlinkColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_richestate.SpeedButton50Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.fgColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_richestate.ComboSpeedButton2Click(Sender: TObject);
var xfilebck,axreptx: String;
begin
    if OpenPictureDialog1.Execute then begin
       xfilebck:=OpenPictureDialog1.FileName;
       xfilebck:=xfilebck+' ';
       HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
       (HTMLDocumento.body as IHTMLBodyElement).background := xfilebck;
       if NoRepetir1.Checked then axreptx:='no-repeat'
       else if repetirimagem1.Checked then axreptx:='repeat'
       else if RepetirX1.Checked then axreptx:='repeat-x'
       else if RepetirY1.Checked then axreptx:='repeat-y';
       HTMLDocumento.body.style.backgroundRepeat :=axreptx;
    end;
end;

procedure Tmdl_richestate.NoRepetir1Click(Sender: TObject);
begin
    if (not NoRepetir1.Checked) then
        SetRepetirImagem(0);
end;

procedure Tmdl_richestate.repetirimagem1Click(Sender: TObject);
begin
    if (not repetirimagem1.Checked) then
        SetRepetirImagem(1);
end;

procedure Tmdl_richestate.RepetirX1Click(Sender: TObject);
begin
    if (not RepetirX1.Checked) then
        SetRepetirImagem(2);
end;

procedure Tmdl_richestate.RepetirY1Click(Sender: TObject);
begin
    if (not RepetirY1.Checked) then
        SetRepetirImagem(3);
end;

procedure Tmdl_richestate.Fixarfundo1Click(Sender: TObject);
begin
      Fixarfundo1.Checked:=not Fixarfundo1.Checked;
      if (Fixarfundo1.Checked) then
          HTMLDocumento.body.style.backgroundAttachment:='fixed'
      else HTMLDocumento.body.style.backgroundAttachment:='';
end;

procedure Tmdl_richestate.Limpar1Click(Sender: TObject);
begin
       HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
       (HTMLDocumento.body as IHTMLBodyElement).background := '';
       HTMLDocumento.body.style.backgroundRepeat :='';
end;

procedure Tmdl_richestate.combofontChange(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('FontName', False,ComboFont.Text);
end;

procedure Tmdl_richestate.ComboSizeChange(Sender: TObject);
begin
    //altera o tamanho da fonte
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    case Combosize.ItemIndex of
      0: HTMLDocumento.execCommand('FontSize', False,1);
      1: HTMLDocumento.execCommand('FontSize', False,2);
      2: HTMLDocumento.execCommand('FontSize', False,3);
      3: HTMLDocumento.execCommand('FontSize', False,5);
      4: HTMLDocumento.execCommand('FontSize', False,6);
      5: HTMLDocumento.execCommand('FontSize', False,7);
    end;
end;

procedure Tmdl_richestate.SpeedButton1Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Bold', False,0);
end;

procedure Tmdl_richestate.SpeedButton3Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Italic', False,0);
end;

procedure Tmdl_richestate.SpeedButton5Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Underline', False,0);
end;

procedure Tmdl_richestate.SpeedButton6Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    if cdColor.Execute then
       HTMLDocumento.execCommand('ForeColor', False,cdColor.Color)
    else abort;
end;

procedure Tmdl_richestate.btnAlignLeftClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_ALINHARESQ, 0);
end;

procedure Tmdl_richestate.btnCenterClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_CENTRALIZAR, 0);
end;

procedure Tmdl_richestate.btnAlignRightClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_ALINHADIR, 0);
end;

procedure Tmdl_richestate.SpeedButton12Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFICAR, 0);
end;

procedure Tmdl_richestate.PageControltxChange(Sender: TObject);
begin
    setxHtml(PageControltx.TabIndex);
end;

procedure Tmdl_richestate.SpeedButton15Click(Sender: TObject);
var addhtmltag:String;
begin
      addhtmltag:=hwsf.BtDesc('Digite ou Cole o código a ser incorporado');
      if addhtmltag<>'' then begin
         HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
         HTMLDocumento.body.innerHTML:= HTMLDocumento.body.innerHTML + addhtmltag;
      end;
end;

procedure Tmdl_richestate.ComboSpeedButton1Click(Sender: TObject);
var addhtmltag: TStringList;
    AXaddhtmltag: String;
    Linha,Coluna,TotalLinha,TotalColuna,TotalBorda,TotalLargura,TotalCelPadding,TotalCelSpacing: Integer;
begin
      if table_lin.Checked then begin
         AXaddhtmltag:=hwsf.BtDesc('Linhas da Tabela (0-9999): ');
         try
            TotalLinha:=StrToInt(AXaddhtmltag);
         except
            hwsf.BtMensagem('Número de Linhas inválido!!!');
            exit;
         end;
      end else TotalLinha:=1;
      if table_col.Checked then begin
         AXaddhtmltag:=hwsf.BtDesc('Colunas da Tabela (0-9999): ');
         try
            TotalColuna:=StrToInt(AXaddhtmltag);
         except
            hwsf.BtMensagem('Número de Colunas inválido!!!');
            exit;
         end;
      end else TotalColuna:=1;
      if table_bor.Checked then begin
         AXaddhtmltag:=hwsf.BtDesc('Borda da Tabela (0-sem, 1-9999): ');
         try
            TotalBorda:=StrToInt(AXaddhtmltag);
         except
            hwsf.BtMensagem('Número da Borda inválido!!!');
            exit;
         end;
      end else TotalBorda:=1;
      if table_lar.Checked then begin
         AXaddhtmltag:=hwsf.BtDesc('Largura da Tabela (1-9999): ');
         try
            TotalLargura:=StrToInt(AXaddhtmltag);
         except
            hwsf.BtMensagem('Largura da Tabela inválida!!!');
            exit;
         end;
      end else TotalLargura:=500;
      if table_ce1.Checked then begin
         AXaddhtmltag:=hwsf.BtDesc('Preenchimento da Célula (1-9999): ');
         try
            TotalCelPadding:=StrToInt(AXaddhtmltag);
         except
            hwsf.BtMensagem('Preenchimento da Célula inválido!!!');
            exit;
         end;
      end else TotalCelPadding:=0;
      if table_ce2.Checked then begin
         AXaddhtmltag:=hwsf.BtDesc('Espaçamento da Célula (1-9999): ');
         try
            TotalCelSpacing:=StrToInt(AXaddhtmltag);
         except
            hwsf.BtMensagem('Espaçamento da Célula inválido!!!');
            exit;
         end;
      end else TotalCelSpacing:=0;

      addhtmltag:= TStringList.Create;
      try
        AXaddhtmltag := '<table width="'+IntToStr(TotalLargura)+'"';
        if (TotalBorda>0) then
           AXaddhtmltag := AXaddhtmltag+' border="1"';
        if (TotalCelPadding>0) then
           AXaddhtmltag := AXaddhtmltag+' cellpadding="'+IntToStr(TotalCelPadding)+'"';
        if (TotalCelSpacing>0) then
           AXaddhtmltag := AXaddhtmltag+' cellspacing="'+IntToStr(TotalCelSpacing)+'"';
        AXaddhtmltag := AXaddhtmltag+'>';
        addhtmltag.Add(AXaddhtmltag);
        for Linha := 1 to TotalLinha do begin
          addhtmltag.Add('<tr>');
          for Coluna := 1 to TotalColuna do begin
            addhtmltag.Add('<td>');
            addhtmltag.Add('&nbsp;');
            addhtmltag.Add('</td>');
          end;
          addhtmltag.Add('  </tr>');
        end;
        addhtmltag.Add('</table>');
      finally
        HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
        HTMLDocumento.body.innerHTML:= HTMLDocumento.body.innerHTML + addhtmltag.Text;
        FreeAndNil(addhtmltag);
      end;
end;

procedure Tmdl_richestate.ComboBox_classClick(Sender: TObject);
begin
      validaCbClass;
end;

procedure Tmdl_richestate.ComboBox_classKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      validaCbClass;
end;

procedure Tmdl_richestate.ComboBox_classKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      validaCbClass;
end;

procedure Tmdl_richestate.ComboBox_classMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      validaCbClass;
end;

procedure Tmdl_richestate.WebBrowser_feedDownloadComplete(Sender: TObject);
begin
      feedokupd:=true;
end;

procedure Tmdl_richestate.alt_ordem(xtypOrd:Integer);
var axgrpname: String;
    axshowing, updord: Boolean; //,xexecutaimg
    ordidx,ordnow1,ordnow2,axcod_ord1,axcod_ord2: Integer; //axcod,axcl_id,
    //xtxt3: TMemoryStream;

begin
    updord:=false;
    try
      ordidx:=ComboBox_class.ItemIndex;
      axgrpname:=ComboBox_class.Items.Strings[ordidx];
      if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then begin
          axcod_ord1:= dm.ds_sql6.fieldbyname('cod_class').asinteger;
          ordnow1:= dm.ds_sql6.fieldbyname('ordem').asinteger;
      end;
      if xtypOrd = 0 then begin
         ordidx:=ordidx-1;
         //ordnow2:=ordnow1-1
      end else begin
         ordidx:=ordidx+1;
         //ordnow2:=ordnow1+1;
      end;
      axgrpname:=ComboBox_class.Items.Strings[ordidx];
      if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then begin
          axcod_ord2:= dm.ds_sql6.fieldbyname('cod_class').asinteger;
          ordnow2:= dm.ds_sql6.fieldbyname('ordem').asinteger;
      end;
      updord:=((axcod_ord1>0) and (axcod_ord2>0));
    except end;
    if (not updord) then begin
        hwsf.BtMensagem('Classificação Inválida.');
        Exit;
    end;
    //Cadastrando novo
    axshowing:= loadx.Showing;
    if not axshowing then begin
       loadx := Tloadx.Create(Application);
       loadx.lbloading.Caption:='Alterando';
       loadx.Show;
       loadx.Update;
    end else begin
       loadx.lbloading.Caption:='Alterando';
       loadx.lbloading.Repaint;
    end;
    loadx.Progressloading.position:=50;
    with dm.executa do begin
         CommandText:= 'UPDATE '+LstTables.Table[0]+'_ax SET ordem=:p0 '+
                       'WHERE cod_class=:p1';
         Params[0].AsInteger:=ordnow1;
         Params[1].AsInteger:=axcod_ord2;
         try
             Execute;
         except
             try loadx.Close; except end;
             hwsf.BtMensagem('Ocorreu algum erro.');
             exit;
         end;
     end;
     loadx.Progressloading.position:=90;
     with dm.executa do begin
         CommandText:= 'UPDATE '+LstTables.Table[0]+'_ax SET ordem=:p0 '+
                       'WHERE cod_class=:p1';
         Params[0].AsInteger:=ordnow2;
         Params[1].AsInteger:=axcod_ord1;
         try
             Execute;
         except
             try loadx.Close; except end;
             hwsf.BtMensagem('Ocorreu algum erro.');
             exit;
         end;
     end;
     loadx.Progressloading.position:=100;
     monta_tableclass;
     ComboBox_class.ItemIndex:=(ordidx);
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Application.ProcessMessages;
     try loadx.Close; except end;
end;

procedure Tmdl_richestate.bt_ordemupClick(Sender: TObject);
begin
      alt_ordem(0);
end;

procedure Tmdl_richestate.bt_ordemdownClick(Sender: TObject);
begin
      alt_ordem(1);
end;

end.
