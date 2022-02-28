{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de cidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_customhelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan, ExtDlgs, RxRichEd,
  ClipView,hwsfunctions, FileFind, ImgList, backup, Menus, ComboSpeedButton,
  MPlayer, Tradutor, BmpToJpg, JpgToBmp, Jpeg;


type
  PmenuRec = ^TmenuRec;
  TmenuRec = record
    Ftypemdl: byte;
    Fcoditem: integer;
    Fcodmdl: integer;
  End;
  Tmenutmp = record
    cod_lng : array[0..20] of Integer;
    sigla : array[0..20] of String;
    trd : array[0..20] of String;
    treeview : array[0..20] of TMemoryStream;
    data : array[0..20] of TStringList;
    count : integer;
  End;
  TeditorImg = record
    cod_img : array[0..500] of Integer;
    linha : array[0..500] of Integer;
    count : integer;
  end;
  Teditorlng = record
    codigo : array[0..20] of Integer;
    tmpimglst : array[0..20] of TeditorImg;
  End;
  Tadm_customhelp = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    PageControl1: TPageControl;
    bt_maximiza: TSpeedButton;
    GroupBox_menu: TGroupBox;
    XPManifest1: TXPManifest;
    barra: TSplitter;
    bt_barra: TPanel;
    barra_img2: TSpeedButton;
    barra_img1: TSpeedButton;
    Splitter1: TSplitter;
    PageControl3: TPageControl;
    TabSheet_editor: TTabSheet;
    TabSheet_img: TTabSheet;
    GroupBox7: TGroupBox;
    Label14: TLabel;
    xmn_text: TEdit;
    pn_legenda: TPanel;
    Image2: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Image5: TImage;
    Lb_countreg4: TLabel;
    ToolBar5: TToolBar;
    bt_it1: TSpeedButton;
    bt_it2: TSpeedButton;
    bt_it3: TSpeedButton;
    ToolBar2: TToolBar;
    bt_it4: TSpeedButton;
    bt_it5: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControl_imagens: TPageControl;
    TabSheet_imgcad: TTabSheet;
    TabSheet_imgview: TTabSheet;
    swf_logo: TShockwaveFlash;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    Label3: TLabel;
    bt_search: TSpeedButton;
    Edit_search: TEdit;
    ToolBar1: TToolBar;
    Lb_countreg: TLabel;
    GroupBox1: TGroupBox;
    PageScroller1: TPageScroller;
    ToolBar3: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    Panel2: TPanel;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    lbcp3: TLabeledEdit;
    lbcp4: TLabeledEdit;
    lbcp5: TLabeledEdit;
    ToolbarImages: TImageList;
    PopupMenu_editor: TPopupMenu;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    Fontemenu: TMenuItem;
    Fonte1: TMenuItem;
    Cor1: TMenuItem;
    N3: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    Sublinhado1: TMenuItem;
    Formatarpargrafo1: TMenuItem;
    esquerdo1: TMenuItem;
    centro1: TMenuItem;
    direita1: TMenuItem;
    justificado1: TMenuItem;
    Marcador1: TMenuItem;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    re_ReplaceDialog: TReplaceDialog;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    CompressStream: TBackupFile;
    CoolBar1: TCoolBar;
    ToolBar9: TToolBar;
    FontName: TComboBox;
    ToolButton7: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    ToolBar10: TToolBar;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolBar11: TToolBar;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    JustifyAlign: TToolButton;
    BulletsButton: TToolButton;
    ToolBar12: TToolBar;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolBar13: TToolBar;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolBar14: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    ToolBar15: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Localizar1: TMenuItem;
    N4: TMenuItem;
    Inserir1: TMenuItem;
    Imagem1: TMenuItem;
    Arquivomultimedia1: TMenuItem;
    Hyperlink1: TMenuItem;
    Arquivotexto1: TMenuItem;
    ToolButton9: TToolButton;
    Novo1: TMenuItem;
    ToolButton12: TToolButton;
    ToolButton16: TToolButton;
    StatusBar: TStatusBar;
    bt_menu: TBitBtn;
    PrintDialog: TPrintDialog;
    Ruler: TPanel;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    Bevel1: TBevel;
    re_editor_tmp: TRxRichEdit;
    Label_hint: TLabel;
    Exportar1: TMenuItem;
    ToolButton17: TToolButton;
    ToolBar16: TToolBar;
    bt_localizar: TSpeedButton;
    bt_visualizar: TSpeedButton;
    bt_limpar: TSpeedButton;
    xmn_mdl: TComboBox;
    Label9: TLabel;
    pn_mp3player: TPanel;
    bt_playmp3: TSpeedButton;
    bt_stopmp3: TSpeedButton;
    bt_closemp3: TSpeedButton;
    Progress: TProgressBar;
    mp3player: TMediaPlayer;
    ProgresTimer: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PopupMenu_menu: TPopupMenu;
    Adicionarmenu1: TMenuItem;
    Editaritem1: TMenuItem;
    Removeritem1: TMenuItem;
    Limpar1: TMenuItem;
    MenuItem1: TMenuItem;
    Moverparacima1: TMenuItem;
    Moverparabaixo1: TMenuItem;
    OpenDialog1: TOpenDialog;
    PageControl_editor: TPageControl;
    lngtbre1: TTabSheet;
    lngtbre2: TTabSheet;
    lngtbre3: TTabSheet;
    lngtbre4: TTabSheet;
    lngtbre5: TTabSheet;
    lngtbre6: TTabSheet;
    lngtbre7: TTabSheet;
    lngtbre8: TTabSheet;
    lngtbre9: TTabSheet;
    lngtbre10: TTabSheet;
    lngtbre11: TTabSheet;
    lngtbre12: TTabSheet;
    lngtbre13: TTabSheet;
    lngtbre14: TTabSheet;
    lngtbre15: TTabSheet;
    lngtbre16: TTabSheet;
    lngtbre17: TTabSheet;
    lngtbre18: TTabSheet;
    lngtbre19: TTabSheet;
    lngtbre20: TTabSheet;
    re_editor1: TRxRichEdit;
    re_editor2: TRxRichEdit;
    re_editor20: TRxRichEdit;
    re_editor19: TRxRichEdit;
    re_editor18: TRxRichEdit;
    re_editor17: TRxRichEdit;
    re_editor16: TRxRichEdit;
    re_editor15: TRxRichEdit;
    re_editor14: TRxRichEdit;
    re_editor13: TRxRichEdit;
    re_editor12: TRxRichEdit;
    re_editor11: TRxRichEdit;
    re_editor10: TRxRichEdit;
    re_editor9: TRxRichEdit;
    re_editor8: TRxRichEdit;
    re_editor7: TRxRichEdit;
    re_editor6: TRxRichEdit;
    re_editor5: TRxRichEdit;
    re_editor4: TRxRichEdit;
    re_editor3: TRxRichEdit;
    ImageList_menuweb: TImageList;
    PageControl_languagens: TPageControl;
    lngtb1: TTabSheet;
    lngtb2: TTabSheet;
    xmn_montamenus2: TTreeView;
    lngtb3: TTabSheet;
    xmn_montamenus3: TTreeView;
    lngtb4: TTabSheet;
    xmn_montamenus4: TTreeView;
    lngtb5: TTabSheet;
    xmn_montamenus5: TTreeView;
    lngtb6: TTabSheet;
    xmn_montamenus6: TTreeView;
    lngtb7: TTabSheet;
    xmn_montamenus7: TTreeView;
    lngtb8: TTabSheet;
    xmn_montamenus8: TTreeView;
    lngtb9: TTabSheet;
    xmn_montamenus9: TTreeView;
    lngtb10: TTabSheet;
    xmn_montamenus10: TTreeView;
    lngtb11: TTabSheet;
    xmn_montamenus11: TTreeView;
    lngtb12: TTabSheet;
    xmn_montamenus12: TTreeView;
    lngtb13: TTabSheet;
    xmn_montamenus13: TTreeView;
    lngtb14: TTabSheet;
    xmn_montamenus14: TTreeView;
    lngtb15: TTabSheet;
    xmn_montamenus15: TTreeView;
    lngtb16: TTabSheet;
    xmn_montamenus16: TTreeView;
    lngtb17: TTabSheet;
    xmn_montamenus17: TTreeView;
    lngtb18: TTabSheet;
    xmn_montamenus18: TTreeView;
    lngtb19: TTabSheet;
    xmn_montamenus19: TTreeView;
    lngtb20: TTabSheet;
    xmn_montamenus20: TTreeView;
    rb_item1: TRadioButton;
    rb_item2: TRadioButton;
    chk_traduzir: TCheckBox;
    chk_vincular: TCheckBox;
    Tradutor1: TTradutor;
    ToolBar8: TToolBar;
    bt_new4: TSpeedButton;
    bt_del4: TSpeedButton;
    Label6: TLabel;
    Edit_title: TEdit;
    SpeedButton1: TSpeedButton;
    Timer_traduz: TTimer;
    BmpToJpeg1: TBmpToJpeg;
    JpegToBmp1: TJpegToBmp;
    Selecionartudo1: TMenuItem;
    Panel_ocultared: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    xmn_montamenus1: TTreeView;
    Image_multimidia: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure barraMoved(Sender: TObject);
    procedure bt_barraClick(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure bt_menuClick(Sender: TObject);
    procedure SelectionChange(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure Marcador1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure re_editorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RichEditChange(Sender: TObject);
    procedure re_ReplaceDialogFind(Sender: TObject);
    procedure re_ReplaceDialogReplace(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Arquivotexto1Click(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ProgresTimerTimer(Sender: TObject);
    procedure bt_playmp3Click(Sender: TObject);
    procedure bt_stopmp3Click(Sender: TObject);
    procedure bt_closemp3Click(Sender: TObject);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_localizarClick(Sender: TObject);
    procedure bt_visualizarClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xmn_montamenus1Change(Sender: TObject; Node: TTreeNode);
    procedure xmn_montamenus1Click(Sender: TObject);
    procedure bt_it1Click(Sender: TObject);
    procedure bt_it3Click(Sender: TObject);
    procedure bt_it2Click(Sender: TObject);
    procedure bt_it4Click(Sender: TObject);
    procedure bt_it5Click(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure chk_vincularClick(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    procedure bt_new4Click(Sender: TObject);
    procedure bt_del4Click(Sender: TObject);
    procedure PageControl_languagensChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure re_editorURLClick(Sender: TObject; const URLText: String;
      Button: TMouseButton);
    procedure Selecionartudo1Click(Sender: TObject);
    procedure PageControl_editorChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
    procedure Hyperlink1Click(Sender: TObject);
    procedure Arquivomultimedia1Click(Sender: TObject);
    procedure re_editorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    //menus
    xnoteselect: TTreeNode;
    xnoteselect_index: Integer;
    menutmp: Tmenutmp;
    editorlng: Teditorlng;
    xupxmenumn: Boolean;
    ax_traduzirall_title: array[0..20] of String;
    xmn_mdl_ext: TStringList;
    //banco de imagens
    impmodule,xmodupdate: boolean;
    xlogotmp: TMemoryStream;
    xtypefile: Integer;
    //editor
    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    teclaacento: Boolean;
    //menus
    function retorna_TTabSheet(xidxcod:Integer):TTabSheet;
    function retorna_TTreeView(xidxcod:Integer):TTreeView;
    function retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
    function retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
    procedure xmn_montamenusEditar;
    function localiza_mdl(xcodmdl:Integer):Integer;
    procedure addreg4;
    procedure atualiza_nitens;
    procedure xmn_montamenusDisable;
    procedure IncMenu(xtype_inc:byte);
    procedure atualiza_xmenumnt;
    function xmn_montamenus_treeview:Boolean;
    function update_itensmenus:Boolean;
    function xmn_montamenus_str:Boolean;
    function preenchezeros(xcodnum,xquantzeros: Integer):string;
    procedure montalng_menus;
    //editor
    procedure SetModified(Value: Boolean);
    procedure CheckFileSave;
    procedure UpdateCursorPos;
    procedure SetupRuler;
    procedure SetEditRect;
    procedure PerformFileOpen(const AFileName: string);
    function CurrText: TRxTextAttributes;
    procedure GetFontNames;
    procedure IncItemMenu(xidxmenu,x_codmod,x_coditem :Integer; xtype_inc,xtypemdl:byte; xtxtdesc: string);
    procedure incluiimgeditor(xcodimg,xlinha,xidxrxre: Integer);
    procedure incluiimgeditor2(xlinha,xidxrxre: Integer);
    function BitmapToRtf(graph:TBitmap):string;
    //banco de imagens
    procedure filtrar_reg;
    procedure atualiza_grade;
    procedure addreg;
    procedure destructionimg;
    procedure bt_enable(xbtenab:Boolean);
    procedure getLogo;
    function retorna_ImgStream(xcodref: Integer; aximgstr: TMemoryStream):TMemoryStream;
    function retorna_ImgType(xcodref: Integer):Integer;
    procedure abretmplogo;
    //tradução
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    xreceivetrad : String;
    xtimerresponse : Integer;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_customhelp: Tadm_customhelp;

implementation
uses udm, RichEdit, ShellAPI, ReInit, uadm_customSelectImg;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tadm_customhelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     xmn_mdl_ext.Free;
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql2.Filter:='';
     dm.ds_sql2.Filtered:=false;
     dm.ds_sql2.Close;
     dm.ds_sql6.Filter:='';
     dm.ds_sql6.Filtered:=false;
     dm.ds_sql6.Close;
     dm.executa5.Close;
     Action:=cafree;
end;

procedure Tadm_customhelp.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_customhelp.FormCreate(Sender: TObject);
var axshowing: Boolean;
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
      loadx.Progressloading.position:=10;
     Application.OnMessage := tabtoenterpress;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     xmn_mdl_ext:= TStringList.Create;
     xlogotmp:= TMemoryStream.Create;
     loadx.Progressloading.position:=50;
     //banco de imagens
     impmodule:=false;
     xmodupdate:=false;
     DBGrid1.DataSource:=dm.source_sql;
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descrição';
     With dm.ds_sql do begin
        CommandText:='SELECT codigo,descricao,sz,tp,wh,hg FROM '+EnDecryptString(HelpSys.vrf03[0],37249)+' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=70;
     With dm.ds_sql2 do begin
        CommandText:='SELECT codigo,descricao,tp FROM '+EnDecryptString(HelpSys.vrf03[0],37249)+' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=80;
     //módulos
     With dm.ds_sql6 do begin
        CommandText:= 'SELECT codigo,mdl FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+' ORDER BY descricao';
        Open;
        Filter:='';
        Filtered:=true;
        First;
        xmn_mdl_ext.Clear;
        xmn_mdl_ext.Add('nenhum');
        While not Eof do begin
            xmn_mdl.Items.Add(copy(fieldbyname('mdl').AsString,1,Length(fieldbyname('mdl').AsString)-4));
            xmn_mdl_ext.Add(fieldbyname('mdl').AsString);
            Next;
        end;
        xmn_mdl.ItemIndex:=0;
     end;
     //editor
     GetFontNames;
     SetupRuler;
     SelectionChange(Self);
     loadx.Progressloading.position:=90;
     //languagens
     re_editor_tmp.Justify;
     With dm.executa3 do begin
          if Active then Close;
          CommandText:= 'SELECT codigo,descricao,sigla,trd,pdr FROM '+EnDecryptString(Serverconect.vrf48,37249)+
                     ' ORDER BY pdr,codigo';
          Open;
          First;
          menutmp.count:=0;
          while not Eof do begin
              menutmp.cod_lng[menutmp.count]:= fieldbyname('codigo').AsInteger;
              menutmp.sigla[menutmp.count]:= fieldbyname('sigla').AsString;
              menutmp.trd[menutmp.count]:= fieldbyname('trd').AsString;
              menutmp.treeview[menutmp.count]:=TMemoryStream.Create;
              menutmp.treeview[menutmp.count].Clear;
              menutmp.data[menutmp.count]:=TStringList.Create;
              menutmp.data[menutmp.count].Clear;
              //menu
              retorna_TTabSheet(menutmp.count).TabVisible:=true;
              retorna_TTabSheet(menutmp.count).Caption:=fieldbyname('descricao').AsString;
              //editor
              retorna_TTabSheet2(menutmp.count).TabVisible:=true;
              retorna_TTabSheet2(menutmp.count).Caption:=fieldbyname('descricao').AsString;
              SendMessage(retorna_TRxRichEdit(menutmp.count).Handle, EM_LIMITTEXT, 0, $FFFFFF);
              retorna_TRxRichEdit(menutmp.count).Justify;
              editorlng.codigo[menutmp.count]:=0;
              editorlng.tmpimglst[menutmp.count].count:=0;
              //inc
              Inc(menutmp.count);
              Next;
          end;
          Close;
     end;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
     montalng_menus;
     atualiza_grade;
end;

procedure Tadm_customhelp.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_customhelp.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_customhelp.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_customhelp.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_customhelp.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_customhelp.Left:= adm_customhelp.Left-(mv_mouse.x-x);
      adm_customhelp.Top:= adm_customhelp.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_customhelp.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_customhelp.Left := adm_customhelp.Left - (mv_mouse.x -x);
      adm_customhelp.Top := adm_customhelp.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_customhelp.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_customhelp.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or (Screen.ActiveControl is TCustomGrid) or
    (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
    If Msg.message = WM_KEYDOWN then begin
       Case Msg.wParam of
        VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
        VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
       end;
    end;
  end;
end;


procedure Tadm_customhelp.bt_maximizaClick(Sender: TObject);
begin
    if adm_customhelp.WindowState=wsMaximized then adm_customhelp.WindowState:=wsNormal
    else adm_customhelp.WindowState:=wsMaximized;
end;

procedure Tadm_customhelp.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    bt_barra.Top:=StrtoInt(formatfloat('0',(barra.Height-bt_barra.Height)/2));
    bt_barra.Left:=barra.Left;
    bt_menu.Top:=StatusBar.Top+3;
    bt_menu.Left:=StatusBar.Left+1;
    Edit_search.Width:= Panel_search.Width-27;
    bt_search.Left:= Edit_search.Left+Edit_search.Width;
    Panel_ocultared.Width:= TabSheet_editor.Width;
    Panel_ocultared.Height:= TabSheet_editor.Height;
    SetEditRect;
    SelectionChange(Sender);
end;

procedure Tadm_customhelp.barraMoved(Sender: TObject);
begin
      bt_barra.Left:=barra.Left;
      bt_menu.Left:=StatusBar.Left+1;
      Panel_ocultared.Width:= TabSheet_editor.Width;
      Panel_ocultared.Height:= TabSheet_editor.Height;
      if GroupBox_menu.Width=0 then begin
         barra_img1.Visible:=false;
         barra_img2.Visible:=true;
      end;
end;

procedure Tadm_customhelp.bt_barraClick(Sender: TObject);
begin
     if bt_barra.Left=2 then begin
        bt_barra.Left:=210;
        barra.Left:=210;
        GroupBox_menu.Width:=208;
        barra_img1.Visible:=true;
        barra_img2.Visible:=false;
     end else begin
        bt_barra.Left:=2;
        barra.Left:=2;
        GroupBox_menu.Width:=0;
        barra_img1.Visible:=false;
        barra_img2.Visible:=true;
     end;
end;

procedure Tadm_customhelp.Novo1Click(Sender: TObject);
begin
      retorna_TRxRichEdit(PageControl_editor.TabIndex).Clear;
      editorlng.tmpimglst[PageControl_editor.TabIndex].count:=0;
      retorna_TRxRichEdit(PageControl_editor.TabIndex).Modified:=false;
      SetModified(retorna_TRxRichEdit(PageControl_editor.TabIndex).Modified);
end;

procedure Tadm_customhelp.bt_menuClick(Sender: TObject);
begin
      PopupMenu_editor.Popup(adm_customhelp.Left+GroupBox_menu.Width+20,
                             adm_customhelp.Top+adm_customhelp.Height-40);
end;

procedure Tadm_customhelp.SetModified(Value: Boolean);
begin
      if Value then StatusBar.Panels[1].Text := 'Modificado'
      else begin
         StatusBar.Panels[1].Text := '';
         retorna_TRxRichEdit(PageControl_editor.TabIndex).ClearUndo;
      end;
end;

procedure Tadm_customhelp.CheckFileSave;
begin
  if retorna_TRxRichEdit(PageControl_editor.TabIndex).Modified then
  if hwsf.BtConfirma('Salvar dados do editor?') then begin
     Salvar1.Click;
  end;
end;

procedure Tadm_customhelp.SelectionChange(Sender: TObject);
begin
  if xupxmenumn then exit;
  with retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    BoldButton.Down := fsBold in retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes.Style;
    ItalicButton.Down := fsItalic in retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes.Size);
    FontName.Text := retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
      3: JustifyAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

function Tadm_customhelp.CurrText: TRxTextAttributes;
begin
  if retorna_TRxRichEdit(PageControl_editor.TabIndex).SelLength > 0 then Result := retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes
  else Result := retorna_TRxRichEdit(PageControl_editor.TabIndex).DefAttributes;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure Tadm_customhelp.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure Tadm_customhelp.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(retorna_TRxRichEdit(PageControl_editor.TabIndex).Handle, EM_EXLINEFROMCHAR, 0,
    retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart);
  CharPos.X := (retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart -
    SendMessage(retorna_TRxRichEdit(PageControl_editor.TabIndex).Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[2].Text := Format('Linha: %3d   Coluna: %3d   ', [CharPos.Y, CharPos.X])+'Caracter: '+InttoStr(retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart);
end;

procedure Tadm_customhelp.SetupRuler;
var
  I: Integer;
  S: String;
begin
  SetLength(S, 201);
  I := 1;
  while I < 200 do
  begin
    S[I] := #9;
    S[I+1] := '|';
    Inc(I, 2);
  end;
  Ruler.Caption := S;
end;

procedure Tadm_customhelp.SetEditRect;
var
  R: TRect;
begin
  if xupxmenumn then exit;
  with retorna_TRxRichEdit(PageControl_editor.TabIndex) do begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tadm_customhelp.PerformFileOpen(const AFileName: string);
begin
  retorna_TRxRichEdit(PageControl_editor.TabIndex).Lines.LoadFromFile(AFileName);
  retorna_TRxRichEdit(PageControl_editor.TabIndex).Modified := False;
  SetModified(False);
end;

procedure Tadm_customhelp.Abrir1Click(Sender: TObject);
begin
  CheckFileSave;
  if OpenDialog.Execute then
     PerformFileOpen(OpenDialog.FileName);
end;

procedure Tadm_customhelp.Imprimir1Click(Sender: TObject);
begin
  if PrintDialog.Execute then
     retorna_TRxRichEdit(PageControl_editor.TabIndex).Print('HWS editor help');
end;

procedure Tadm_customhelp.Salvar1Click(Sender: TObject);
var xind_trad,xforimg,xforimg_lin,xforimg_cod,xgetpostab,xgetposlin: Integer;
    xerror: Bool;
    axtxtstr: TMemoryStream;
    aslstcod: TStringList;
begin
    //salvar
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='Gravando dados';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=0;
    loadx.Progressloading.Max:=menutmp.count;
    xerror:=false;
    axtxtstr:= TMemoryStream.Create;
    aslstcod:= TStringList.Create;
    xgetpostab:=PageControl_editor.TabIndex;
    try
       xgetposlin:=retorna_TRxRichEdit(xgetpostab).SelStart;
    except
       xgetposlin:=1;
    end;
    //for xind_trad:=0 to menutmp.count-1 do begin
        loadx.Progressloading.position:=loadx.Progressloading.position+1;
        with dm.executa do begin
             CommandText:= 'UPDATE '+EnDecryptString(HelpSys.vrf02[0],37249)+' SET tx=:p0,img=:p1 '+
                        'WHERE codigo=:p2';
             retorna_TRxRichEdit(xgetpostab).SelectAll;
             retorna_TRxRichEdit(xgetpostab).CopyToClipboard;
             re_editor_tmp.Clear;
             re_editor_tmp.PasteFromClipboard;
             aslstcod.Clear;
             for xforimg:=0 to editorlng.tmpimglst[xgetpostab].Count-1 do begin
                 xforimg_lin:=editorlng.tmpimglst[xgetpostab].linha[xforimg];
                 xforimg_cod:=editorlng.tmpimglst[xgetpostab].cod_img[xforimg];
                 re_editor_tmp.SelStart:=xforimg_lin-xforimg;
                 re_editor_tmp.SelLength:=1;
                 re_editor_tmp.CutToClipboard;
                 aslstcod.Add(FormatFloat('00000000000',xforimg_lin)+FormatFloat('00000000000',xforimg_cod));
             end;
             re_editor_tmp.ClearUndo;
             re_editor_tmp.SelStart:=xforimg_lin;
             re_editor_tmp.SelLength:=1;
             re_editor_tmp.CopyToClipboard;
             re_editor_tmp.SelStart:=1;
             axtxtstr.Clear;
             axtxtstr.Seek(0,soFromBeginning);
             re_editor_tmp.Lines.SaveToStream(axtxtstr);
             re_editor_tmp.Clear;
             axtxtstr.Seek(0,soFromBeginning);
             Params[0].LoadFromStream(axtxtstr,ftblob);
             Params[1].Assign(aslstcod);
             Params[2].AsInteger:=editorlng.codigo[xgetpostab];
             try
                 Execute;
             Except
                 xerror:=true;
                 //Break;
             End;
        end;
        retorna_TRxRichEdit(xgetpostab).Modified:=false;
        SetModified(retorna_TRxRichEdit(xgetpostab).Modified);
        retorna_TRxRichEdit(xgetpostab).ClearUndo;
    //end;
    axtxtstr.Free;
    aslstcod.Free;
    loadx.Close;
    if xerror then begin
       hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
       exit;
    end;
    //xmn_montamenusEditar;
    retorna_TRxRichEdit(xgetpostab).SelStart := xgetposlin;
end;

procedure Tadm_customhelp.Copiar1Click(Sender: TObject);
begin
      retorna_TRxRichEdit(PageControl_editor.TabIndex).CopyToClipboard;
end;

procedure Tadm_customhelp.Recortar1Click(Sender: TObject);
begin
      retorna_TRxRichEdit(PageControl_editor.TabIndex).CutToClipboard;
end;

procedure Tadm_customhelp.Colar1Click(Sender: TObject);
begin
      retorna_TRxRichEdit(PageControl_editor.TabIndex).PasteFromClipboard;
end;

procedure Tadm_customhelp.Desfazer1Click(Sender: TObject);
begin
      with retorna_TRxRichEdit(PageControl_editor.TabIndex) do
      if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tadm_customhelp.FontNameChange(Sender: TObject);
begin
      if FUpdating then Exit;
      CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tadm_customhelp.FontSizeChange(Sender: TObject);
begin
      if FUpdating then Exit;
      CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tadm_customhelp.Negrito1Click(Sender: TObject);
begin
      if FUpdating then Exit;
      if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
      else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tadm_customhelp.Italico1Click(Sender: TObject);
begin
      if FUpdating then Exit;
      if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
      else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tadm_customhelp.Sublinhado1Click(Sender: TObject);
begin
      if FUpdating then Exit;
      if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
      else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tadm_customhelp.AlignButtonClick(Sender: TObject);
begin
      if FUpdating then Exit;
      retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tadm_customhelp.Marcador1Click(Sender: TObject);
begin
      if FUpdating then Exit;
      retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tadm_customhelp.Fonte1Click(Sender: TObject);
begin
      FontDialog1.Font.Assign(retorna_TRxRichEdit(PageControl_editor.TabIndex).SelAttributes);
      if FontDialog1.Execute then
         CurrText.Assign(FontDialog1.Font);
      SelectionChange(Self);
end;

procedure Tadm_customhelp.Cor1Click(Sender: TObject);
begin
      if FUpdating then Exit;
      if ColorDialog1.Execute then
         CurrText.Color := ColorDialog1.Color;
end;

{ Ruler Indent Dragging }

procedure Tadm_customhelp.RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
  Label_hint.Top:= TLabel(Sender).Top;
  if TLabel(Sender).Name='RightInd' then Label_hint.Left:=TLabel(Sender).Left-(5+Label_hint.Width)
  else Label_hint.Left:=TLabel(Sender).Left+14;
  Label_hint.Caption:=FormatFloat('0',(TLabel(Sender).Left-2)/2.85)+' mm';
  Label_hint.Visible:=true;
end;

procedure Tadm_customhelp.RulerItemMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs;
  if TLabel(Sender).Name='RightInd' then Label_hint.Left:=TLabel(Sender).Left-(5+Label_hint.Width)
  else Label_hint.Left:=TLabel(Sender).Left+14;
  Label_hint.Caption:=FormatFloat('0',(TLabel(Sender).Left-2)/2.85)+' mm';
  Label_hint.Repaint;
end;

procedure Tadm_customhelp.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if FirstInd.Left<2 then FirstInd.Left:=2;
  FirstInd.Hint:=FormatFloat('0',(FirstInd.Left-2)/2.85)+' mm';
  FDragging := False;
  retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
  Label_hint.Visible:=false;
end;

procedure Tadm_customhelp.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if LeftInd.Left<2 then LeftInd.Left:=2;
  LeftInd.Hint:=FormatFloat('0',(LeftInd.Left-2)/2.85)+' mm';
  FDragging := False;
  retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph.FirstIndent;
  SelectionChange(Sender);
  Label_hint.Visible:=false;
end;

procedure Tadm_customhelp.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if RightInd.Left>492 then RightInd.Left:=492;
  RightInd.Hint:=FormatFloat('0',(RightInd.Left-2)/2.85)+' mm';
  FDragging := False;
  retorna_TRxRichEdit(PageControl_editor.TabIndex).Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Sender);
  Label_hint.Visible:=false;
end;

procedure Tadm_customhelp.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var xindtmp,xindtmp2,axtabidx: Integer;
    xaxintdel: array[0..100] of Integer;
    xaxintcount,xaxcelini,xaxcelfim,axceldel: Integer;
begin
  if xupxmenumn then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65: (Sender as TRxRichEdit).SelectAll;
  end else begin
     axtabidx:=PageControl_editor.TabIndex;
     xaxcelini:=retorna_TRxRichEdit(axtabidx).SelStart;
     xaxcelfim:=retorna_TRxRichEdit(axtabidx).SelLength;
     if xaxcelfim>0 then axceldel:=xaxcelfim
     else axceldel:=1;
     case Key of
        46,8: begin
              xaxintcount:=0;
              for xindtmp:=0 to editorlng.tmpimglst[axtabidx].count-1 do begin
                  if ((editorlng.tmpimglst[axtabidx].linha[xindtmp]-1)>=xaxcelini) AND
                     ((editorlng.tmpimglst[axtabidx].linha[xindtmp]-1)<(xaxcelini+xaxcelfim)) then begin
                     xaxintdel[xaxintcount]:=xindtmp;
                     Inc(xaxintcount);
                  end else if editorlng.tmpimglst[axtabidx].linha[xindtmp]>=(xaxcelini+xaxcelfim) then begin
                     editorlng.tmpimglst[axtabidx].linha[xindtmp]:=editorlng.tmpimglst[axtabidx].linha[xindtmp]-axceldel;
                  end;
              end;
              if xaxintcount>0 then begin
                 for xindtmp2:=0 to xaxintcount-1 do begin
                     for xindtmp:=xaxintdel[xindtmp2] to editorlng.tmpimglst[axtabidx].count-1 do begin
                         if xindtmp < (editorlng.tmpimglst[axtabidx].count-1) then
                            editorlng.tmpimglst[axtabidx].linha[xindtmp]:=editorlng.tmpimglst[axtabidx].linha[xindtmp+1];
                     end;
                     editorlng.tmpimglst[axtabidx].count:=editorlng.tmpimglst[axtabidx].count-1;
                 end;
              end;
        end;
        192,219,222: begin
              if teclaacento then begin
                 for xindtmp:=0 to editorlng.tmpimglst[axtabidx].count-1 do begin
                     if editorlng.tmpimglst[axtabidx].linha[xindtmp]>=retorna_TRxRichEdit(axtabidx).SelStart then begin
                        editorlng.tmpimglst[axtabidx].linha[xindtmp]:=editorlng.tmpimglst[axtabidx].linha[xindtmp]+1;
                     end;
                 end;
              end else teclaacento:=true;
        end;
        20,16,17,18,91,92,93,27,255,145,19,45,36,33,34,35,38,40,39,37,144,112,113,114,115,116,117,118,119,120,121: begin

        end else begin
              if axceldel>1 then begin
              xaxintcount:=0;
              for xindtmp:=0 to editorlng.tmpimglst[axtabidx].count-1 do begin
                  if ((editorlng.tmpimglst[axtabidx].linha[xindtmp]-1)>=xaxcelini) AND
                     ((editorlng.tmpimglst[axtabidx].linha[xindtmp]-1)<(xaxcelini+xaxcelfim)) then begin
                     xaxintdel[xaxintcount]:=xindtmp;
                     Inc(xaxintcount);
                  end else if editorlng.tmpimglst[axtabidx].linha[xindtmp]>=(xaxcelini+xaxcelfim) then begin
                     editorlng.tmpimglst[axtabidx].linha[xindtmp]:=editorlng.tmpimglst[axtabidx].linha[xindtmp]-axceldel;
                  end;
              end;
              if xaxintcount>0 then begin
                 for xindtmp2:=0 to xaxintcount-1 do begin
                     for xindtmp:=xaxintdel[xindtmp2] to editorlng.tmpimglst[axtabidx].count-1 do begin
                         if xindtmp < (editorlng.tmpimglst[axtabidx].count-1) then
                            editorlng.tmpimglst[axtabidx].linha[xindtmp]:=editorlng.tmpimglst[axtabidx].linha[xindtmp+1];
                     end;
                     editorlng.tmpimglst[axtabidx].count:=editorlng.tmpimglst[axtabidx].count-1;
                 end;
              end;
              end;
              for xindtmp:=0 to editorlng.tmpimglst[axtabidx].count-1 do begin
                  if editorlng.tmpimglst[axtabidx].linha[xindtmp]>=retorna_TRxRichEdit(axtabidx).SelStart then begin
                      editorlng.tmpimglst[axtabidx].linha[xindtmp]:=editorlng.tmpimglst[axtabidx].linha[xindtmp]+1;
                  end;
              end;
              teclaacento:=false;
        end;
     end;
  end;
end;

procedure Tadm_customhelp.FormPaint(Sender: TObject);
begin
      if xupxmenumn then exit;
      SetEditRect;
end;

procedure Tadm_customhelp.FormShow(Sender: TObject);
begin
      adm_customhelp.Refresh;
      UpdateCursorPos;
      DragAcceptFiles(Handle, True);
      RichEditChange(nil);
end;

procedure Tadm_customhelp.RichEditChange(Sender: TObject);
begin
      if xupxmenumn then exit;
      SetModified(retorna_TRxRichEdit(PageControl_editor.TabIndex).Modified);
end;

procedure Tadm_customhelp.re_ReplaceDialogFind(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
begin
  with retorna_TRxRichEdit(PageControl_editor.TabIndex) do begin
    if SelLength <> 0 then StartPos := SelStart + SelLength
    else StartPos := 0;
    ToEnd := Length(Text) - StartPos;
    FoundAt := FindText(re_ReplaceDialog.FindText, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(re_ReplaceDialog.FindText);
    end;
  end;
end;

procedure Tadm_customhelp.re_ReplaceDialogReplace(Sender: TObject);
var SelPos: Integer;
begin
  with TReplaceDialog(Sender) do begin
    SelPos := Pos(FindText, retorna_TRxRichEdit(PageControl_editor.TabIndex).Lines.Text);
    if SelPos > 0 then begin
      retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart := SelPos - 1;
      retorna_TRxRichEdit(PageControl_editor.TabIndex).SelLength := Length(FindText);
      retorna_TRxRichEdit(PageControl_editor.TabIndex).SelText := ReplaceText;
    end;  // else hwsf.BtMensagem('Texto não localizado.'); //'+FindText+'
  end;
end;

procedure Tadm_customhelp.Localizar1Click(Sender: TObject);
begin
      //localizar e substituir
      re_ReplaceDialog.Execute;
end;

procedure Tadm_customhelp.Arquivotexto1Click(Sender: TObject);
begin
      if OpenDialog.Execute then begin
         re_editor_tmp.Clear;
         re_editor_tmp.Lines.LoadFromFile(OpenDialog.FileName);
         re_editor_tmp.SelectAll;
         re_editor_tmp.CopyToClipboard;
         retorna_TRxRichEdit(PageControl_editor.TabIndex).PasteFromClipboard;
         re_editor_tmp.Clear;
         re_editor_tmp.Lines.Add('null');
         re_editor_tmp.SelectAll;
         re_editor_tmp.CopyToClipboard;
         re_editor_tmp.Clear;
      end;
end;

procedure Tadm_customhelp.Exportar1Click(Sender: TObject);
var xsavefile: TMemoryStream;
    xfileind: Integer;
    xbuffer: Word;
begin
      if SaveDialog.Execute then begin
         try
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Gravando arquivo';
            loadx.Show;
            loadx.Update;
            loadx.Progressloading.position:=0;
            xsavefile:= TMemoryStream.Create;
            xsavefile.Seek(0,soFromBeginning);
            retorna_TRxRichEdit(PageControl_editor.TabIndex).Lines.SaveToStream(xsavefile);
            xsavefile.Seek(0,soFromBeginning);
            retorna_TRxRichEdit(PageControl_editor.TabIndex).Lines.Add(Inttostr(xsavefile.Size));
            xsavefile.Seek(0,soFromBeginning);
            xsavefile.SaveToFile(SaveDialog.FileName);
         finally
            xsavefile.Free;
            loadx.Close;
         end;
      end;
end;

procedure Tadm_customhelp.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_customhelp.filtrar_reg;
begin
     if Edit_search.Text='' then dm.ds_sql.Filter:=''
     else dm.ds_sql.filter:= 'descricao LIKE '+QuotedStr(Edit_search.Text+'%');
end;

procedure Tadm_customhelp.atualiza_grade;
begin
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         destructionimg;
         with dm.ds_sql do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            if fieldbyname('sz').AsInteger=0 then begin
               lbcp3.Text:='nenhum';
               bt_enable(false);
            end else begin
               lbcp3.Text:= fieldbyname('sz').AsString;
               bt_enable(true);
            end;
            lbcp4.Text:= fieldbyname('wh').AsString;
            lbcp4.Text:= fieldbyname('hg').AsString;
            xtypefile:= fieldbyname('tp').AsInteger;
            getLogo;
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
end;

procedure Tadm_customhelp.addreg;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= 'nenhum';
     lbcp4.Text:= '0';
     lbcp5.Text:= '0';
     xtypefile:= 0;
     destructionimg;
     bt_enable(false);
     xmodupdate:=false;
end;

procedure Tadm_customhelp.bt_enable(xbtenab:Boolean);
begin
     bt_limpar.Enabled:=xbtenab;
     bt_visualizar.Enabled:=xbtenab;
end;

procedure Tadm_customhelp.destructionimg;
var ax_filenm: string;
begin
     TabSheet_imgview.TabVisible:=false;
     swf_logo.LoadMovie(0,'lixo');
     mp3player.Close;
     pn_mp3player.Visible:=false;
     ProgresTimer.Enabled:=false;
     ax_filenm:= ExtractTempDir + 'tmpdk4d.mp3';
     if FileExists(ax_filenm) then DeleteFile(ax_filenm);
end;

procedure Tadm_customhelp.getLogo;
begin
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Carregando';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=10;
     retorna_ImgStream(StrtoInt(lbcp1.Text),xlogotmp);
     xmodupdate:=false;
     abretmplogo;
     loadx.Close;
end;

function Tadm_customhelp.retorna_ImgStream(xcodref: Integer; aximgstr: TMemoryStream):TMemoryStream;
begin
     With dm.executa do begin
        CommandText:='SELECT img FROM '+EnDecryptString(HelpSys.vrf03[0],37249)+' WHERE codigo='+#39+InttoStr(xcodref)+#39;
        if loadx.Showing then loadx.Progressloading.Position:=20;
        Open;
        TMemoryStream(aximgstr).Clear;
        TMemoryStream(aximgstr).Seek(0,soFromBeginning);
        if loadx.Showing then loadx.Progressloading.Position:=30;
        if not fields[0].IsNull then
           TBlobField(FieldByName('img')).SaveToStream(TMemoryStream(aximgstr));
        if loadx.Showing then loadx.Progressloading.Position:=40;
        Close;
        if loadx.Showing then loadx.Progressloading.Position:=50;
     end;
     Result:=aximgstr;
end;

function Tadm_customhelp.retorna_ImgType(xcodref: Integer):Integer;
begin
     With dm.executa do begin
        CommandText:='SELECT tp FROM '+EnDecryptString(HelpSys.vrf03[0],37249)+' WHERE codigo='+#39+InttoStr(xcodref)+#39;
        Open;
        Result:=fieldbyname('tp').asInteger;
        Close;
     end;
end;

procedure Tadm_customhelp.abretmplogo;
var erro: Boolean;
    ax_filenm: TFileName;
    isshowing: Boolean;
begin
     isshowing:= loadx.Showing;
     if not isshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Carregando';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=20;
     end;
     loadx.Progressloading.position:=60;
     xlogotmp.Seek(0,soFromBeginning);
     erro:= false;
     if xlogotmp.Size <= 0 then begin
        erro:= true;
     end;
     loadx.Progressloading.position:=70;
     if not erro then begin
        if pn_mp3player.Visible then begin
           mp3player.Close;
           pn_mp3player.Visible:=false;
           ProgresTimer.Enabled:=false;
        end;                                
        ax_filenm:= ExtractTempDir + 'tmpdk4d.mp3';
        if FileExists(ax_filenm) then DeleteFile(ax_filenm);
        try
           xlogotmp.SaveToFile(ax_filenm);
           erro:= false;
        except
           erro:= true;
        end;
     end;
     loadx.Progressloading.position:=80;
     if not erro then begin
        if xtypefile = 1 then begin
           pn_mp3player.Visible:=true;
           ProgresTimer.Enabled:=true;
           Progress.Max:=0;
           mp3player.Close;
           mp3player.FileName:=ax_filenm;
           mp3player.Open;
           Progress.Max := mp3player.Length;
           mp3player.Play;
        end else begin
            try
              TabSheet_imgview.TabVisible:=true;
              swf_logo.LoadMovie(0,'lixo');
              swf_logo.LoadMovie(0,ax_filenm);
              erro:= false;
            except
              erro:= true;
            end;
        end;
     end;
     loadx.Progressloading.position:=100;
     if erro then destructionimg;
     if not isshowing then loadx.Close;
end;

procedure Tadm_customhelp.ProgresTimerTimer(Sender: TObject);
begin
  if pn_mp3player.Visible then begin
     if Progress.Max<>0 then
        Progress.Position := mp3player.Position;
  end;
end;

procedure Tadm_customhelp.bt_playmp3Click(Sender: TObject);
begin
      mp3player.Play;
end;

procedure Tadm_customhelp.bt_stopmp3Click(Sender: TObject);
begin
      mp3player.Stop;
end;

procedure Tadm_customhelp.bt_closemp3Click(Sender: TObject);
var ax_filenm: string;
begin
      mp3player.Close;
      pn_mp3player.Visible:=false;
      ProgresTimer.Enabled:=false;
      ax_filenm:= ExtractTempDir + 'tmpdk4d.mp3';
      if FileExists(ax_filenm) then DeleteFile(ax_filenm);
end;

procedure Tadm_customhelp.bt_limparClick(Sender: TObject);
begin
      xmodupdate:=true;
      destructionimg;
      xlogotmp.Clear;
      bt_enable(false);
end;

procedure Tadm_customhelp.bt_localizarClick(Sender: TObject);
var ax_ext: string;
    xtypefile_tmp: Integer;
    xlogotmp_tmp: TMemoryStream;
begin
      if OpenDialog1.Execute then begin
         ax_ext:=ExtractFileExt(OpenDialog1.FileName);
         if ax_ext='.swf' then xtypefile_tmp:=0
         else if ax_ext='.mp3' then xtypefile_tmp:=1
         else if ax_ext='.jpg' then xtypefile_tmp:=2
         else if ax_ext='.bmp' then xtypefile_tmp:=3
         else begin
            hwsf.BtMensagem('Extensão de arquivo inválida [swf/mp3/jpg/bmp].');
            exit;
         end;
         xlogotmp_tmp:= TMemoryStream.Create;
         xlogotmp_tmp.LoadFromFile(OpenDialog1.FileName);
         if xtypefile_tmp=3 then begin
            xtypefile_tmp:=2;
            BmpToJpeg1.SaveToStream(xlogotmp_tmp,xlogotmp_tmp);
         end;
         xlogotmp_tmp.Seek(0,soFromBeginning);
         if xlogotmp_tmp.Size=0 then begin
            hwsf.BtMensagem('Erro ao importar arquivo.');
            xlogotmp_tmp.Free;
            exit;
         end else if xlogotmp_tmp.Size>700000 then begin
            hwsf.BtMensagem('Arquivo muito grande [Limite 700kb].');
            xlogotmp_tmp.Free;
            exit;
         end else begin
            xlogotmp.Clear;
            xlogotmp.Seek(0,soFromBeginning);
            xlogotmp.LoadFromStream(xlogotmp_tmp);
            xlogotmp.Seek(0,soFromBeginning);
            lbcp3.Text:=IntToStr(xlogotmp.Size);
            xtypefile:=xtypefile_tmp;
            Case xtypefile of
                1: begin
                   lbcp4.Text:='0';
                   lbcp5.Text:='0';
                end;
            end;
         end;
         xmodupdate:=true;
         xlogotmp_tmp.Free;
         bt_enable(true);
      end;
end;

procedure Tadm_customhelp.bt_visualizarClick(Sender: TObject);
begin
      abretmplogo;
end;

procedure Tadm_customhelp.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
    atualiza_grade;
end;

procedure Tadm_customhelp.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
    atualiza_grade;
end;

procedure Tadm_customhelp.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_customhelp.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(HelpSys.vrf03[0],37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           dm.ds_sql2.Close;
           dm.ds_sql2.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_customhelp.bt_saveClick(Sender: TObject);
var axcod,size_mod: integer;
begin
     if lbcp2.Text='' then begin
        hwsf.BtMensagem('Digite a descrição do arquivo');
        lbcp2.SetFocus;
        exit;
     end;
     if xmodupdate and ((lbcp3.Text='nenhum') or (lbcp3.Text='0')) then begin
        hwsf.BtMensagem('É necessário importar um arquivo');
        exit;
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     loadx.Progressloading.position:=25;
     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(HelpSys.vrf03[0],37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(HelpSys.vrf03[0],37249)+' (codigo,cod_lng,descricao,sz,tp,wh,hg,img) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=1;
            Params[2].AsString:=lbcp2.Text;
            Params[3].AsInteger:=StrtoInt(lbcp3.Text);
            Params[4].AsInteger:=xtypefile;
            Params[5].AsInteger:=StrtoInt(lbcp4.Text);
            Params[6].AsInteger:=StrtoInt(lbcp5.Text);
            xlogotmp.Seek(0,soFromBeginning);
            Params[7].LoadFromStream(xlogotmp,ftblob);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            if xmodupdate then begin
               CommandText:= 'UPDATE '+EnDecryptString(HelpSys.vrf03[0],37249)+' SET descricao=:p0,sz=:p1,tp=:p2,wh=:p3,hg=:p4,img=:p5 '+
                          'WHERE codigo=:p6';
               xlogotmp.Seek(0,soFromBeginning);
               Params[5].LoadFromStream(xlogotmp,ftblob);
               Params[6].AsInteger:=axcod;
            end else begin
               CommandText:= 'UPDATE '+EnDecryptString(HelpSys.vrf03[0],37249)+' SET descricao=:p0,sz=:p1,tp=:p2,wh=:p3,hg=:p4 '+
                          'WHERE codigo=:p5';
               Params[5].AsInteger:=axcod;
            end;
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsInteger:=StrtoInt(lbcp3.Text);
            Params[2].AsInteger:=xtypefile;
            Params[3].AsInteger:=StrtoInt(lbcp4.Text);
            Params[4].AsInteger:=StrtoInt(lbcp5.Text);
        end;
     end;
     loadx.Progressloading.position:=50;
     try
          loadx.Progressloading.position:=75;
          dm.executa.Execute;
     except
          loadx.Close;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     loadx.Progressloading.position:=100;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     dm.ds_sql2.Close;
     dm.ds_sql2.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
     lbcp1.Text:=InttoStr(axcod);
     loadx.Close;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_customhelp.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_customhelp.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_customhelp.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_customhelp.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

function Tadm_customhelp.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

function Tadm_customhelp.retorna_TTreeView(xidxcod:Integer):TTreeView;
begin
      Case xidxcod of
          0: Result:=xmn_montamenus1;
          1: Result:=xmn_montamenus2;
          2: Result:=xmn_montamenus3;
          3: Result:=xmn_montamenus4;
          4: Result:=xmn_montamenus5;
          5: Result:=xmn_montamenus6;
          6: Result:=xmn_montamenus7;
          7: Result:=xmn_montamenus8;
          8: Result:=xmn_montamenus9;
          9: Result:=xmn_montamenus10;
          10: Result:=xmn_montamenus11;
          11: Result:=xmn_montamenus12;
          12: Result:=xmn_montamenus13;
          13: Result:=xmn_montamenus14;
          14: Result:=xmn_montamenus15;
          15: Result:=xmn_montamenus16;
          16: Result:=xmn_montamenus17;
          17: Result:=xmn_montamenus18;
          18: Result:=xmn_montamenus19;
          19: Result:=xmn_montamenus20;
      End;
end;

function Tadm_customhelp.retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
begin
      Case xidxcod of
          0: Result:=lngtbre1;
          1: Result:=lngtbre2;
          2: Result:=lngtbre3;
          3: Result:=lngtbre4;
          4: Result:=lngtbre5;
          5: Result:=lngtbre6;
          6: Result:=lngtbre7;
          7: Result:=lngtbre8;
          8: Result:=lngtbre9;
          9: Result:=lngtbre10;
          10: Result:=lngtbre11;
          11: Result:=lngtbre12;
          12: Result:=lngtbre13;
          13: Result:=lngtbre14;
          14: Result:=lngtbre15;
          15: Result:=lngtbre16;
          16: Result:=lngtbre17;
          17: Result:=lngtbre18;
          18: Result:=lngtbre19;
          19: Result:=lngtbre20;
      End;
end;

function Tadm_customhelp.retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
begin
      Case xidxcod of
          0: Result:=re_editor1;
          1: Result:=re_editor2;
          2: Result:=re_editor3;
          3: Result:=re_editor4;
          4: Result:=re_editor5;
          5: Result:=re_editor6;
          6: Result:=re_editor7;
          7: Result:=re_editor8;
          8: Result:=re_editor9;
          9: Result:=re_editor10;
          10: Result:=re_editor11;
          11: Result:=re_editor12;
          12: Result:=re_editor13;
          13: Result:=re_editor14;
          14: Result:=re_editor15;
          15: Result:=re_editor16;
          16: Result:=re_editor17;
          17: Result:=re_editor18;
          18: Result:=re_editor19;
          19: Result:=re_editor20;
      End;
end;

procedure Tadm_customhelp.xmn_montamenusEditar;
var xmnmenu,xcoditem,xforimg,xforimg_lin,xforimg_cod,countlng: Integer;
    xerror: Bool;
    axtxtcod: string;
    axtxtstr: TMemoryStream;
    axlsccod: TStringList;
begin
     if xupxmenumn then exit;
     if retorna_TTreeView(PageControl_languagens.TabIndex).Items.Count>0 then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando item';
         loadx.Show;
         loadx.Update;
         loadx.Progressloading.position:=0;
         loadx.Progressloading.Max:=100;
         loadx.Progressloading2.Visible:=true;
         loadx.Progressloading2.Position:=0;
         loadx.Progressloading2.Max:=menutmp.count;
         try
           loadx.Progressloading.position:=10;
           Panel_ocultared.Visible:=true;
           TabSheet_editor.Enabled:=false;
           xmn_text.Text:=retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Text;
           xmn_mdl.ItemIndex:=localiza_mdl(PmenuRec(retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Data)^.Fcodmdl);
           loadx.Progressloading.position:=20;
           xcoditem:=PmenuRec(retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Data)^.Fcoditem;
           StatusBar.Panels[1].Text := '';
           loadx.Progressloading.position:=30;
           for countlng:=0 to menutmp.count-1 do begin
               loadx.Progressloading2.position:=loadx.Progressloading2.position+1;
               retorna_TRxRichEdit(countlng).Clear;
               editorlng.tmpimglst[countlng].count:=0;
               retorna_TRxRichEdit(countlng).ClearUndo;
               re_editor_tmp.Clear;
               re_editor_tmp.ClearUndo;
           end;
           loadx.Progressloading.position:=40;
           if xcoditem>0 then begin
              axtxtstr:= TMemoryStream.Create;
              axlsccod:= TStringList.Create;
              loadx.Progressloading.position:=50;
              With dm.executa4 do begin
                   if Active then Close;
                   CommandText:= 'SELECT * FROM '+EnDecryptString(HelpSys.vrf02[0],37249)+
                              ' WHERE cod_item='+#39+IntToStr(xcoditem)+#39+
                              ' ORDER BY cod_lng';
                   Open;
                   First;
                   StatusBar.Panels[1].Text := '';
                   loadx.Progressloading2.position:=0;
                   for countlng:=0 to menutmp.count-1 do begin
                       loadx.Progressloading2.position:=loadx.Progressloading2.position+1;
                       if Locate('cod_lng',menutmp.cod_lng[countlng],[]) then begin
                          editorlng.codigo[countlng]:=fieldbyname('codigo').AsInteger;
                          axtxtstr.Clear;
                          axtxtstr.Seek(0,soFromBeginning);
                          if not fieldbyname('tx').IsNull then
                             TBlobField(FieldByName('tx')).SaveToStream(axtxtstr);
                          axtxtstr.Seek(0,soFromBeginning);
                          retorna_TRxRichEdit(countlng).Lines.LoadFromStream(axtxtstr);
                          axlsccod.Clear;
                          axlsccod.Assign(fieldbyname('img'));
                          for xforimg:=0 to axlsccod.Count-1 do begin
                              axtxtcod:=axlsccod.Strings[xforimg];
                              xforimg_lin:=StrtoInt(copy(axtxtcod,1,11));
                              xforimg_cod:=StrtoInt(copy(axtxtcod,12,22));
                              editorlng.tmpimglst[countlng].linha[xforimg]:=xforimg_lin;
                              editorlng.tmpimglst[countlng].cod_img[xforimg]:=xforimg_cod;
                              if retorna_ImgType(xforimg_cod)=2 then
                                 incluiimgeditor(xforimg_cod,xforimg_lin,countlng)
                              else incluiimgeditor2(xforimg_lin,countlng);
                              Inc(editorlng.tmpimglst[countlng].count);
                          end;
                          retorna_TRxRichEdit(countlng).ClearUndo;
                       end;
                   end;
                   Close;
              end;
              loadx.Progressloading.position:=60;
              axtxtstr.Free;
              loadx.Progressloading.position:=70;
              axlsccod.Free;
              Panel_ocultared.Visible:=false;
              TabSheet_editor.Enabled:=true;
              loadx.Progressloading.position:=80;
           end;
           xerror:=false;
           loadx.Progressloading.position:=90;
         Except
           xerror:=true;
           xmn_text.Text:='';
           xmn_mdl.ItemIndex:=-1;
           Panel_ocultared.Visible:=true;
           TabSheet_editor.Enabled:=false;
         End;
         loadx.Progressloading.position:=100;
         if not xerror then begin
            xmn_text.ReadOnly:=false;
            xmn_text.Color:=clWindow;
            xmn_mdl.Color:=clWindow;
            bt_it1.Enabled:=true;
            bt_it2.Enabled:=true;
            bt_it3.Enabled:=true;
            bt_it4.Enabled:=false;
            bt_it5.Enabled:=false;
         end;
         loadx.Close;
     end;
end;

function Tadm_customhelp.localiza_mdl(xcodmdl:Integer):Integer;
var x_descmod: string;
    x_indmdl: Integer;
begin
      if dm.ds_sql6.Locate('codigo',xcodmdl,[]) then begin
         x_descmod:=dm.ds_sql6.fieldbyname('mdl').AsString;
         for x_indmdl:=1 to xmn_mdl_ext.Count-1 do begin
             if xmn_mdl_ext.Strings[x_indmdl]=x_descmod then begin
                Result:=x_indmdl;
                break;
             end;
         end;
      end else Result:=0;
end;

procedure Tadm_customhelp.addreg4;
begin
     xmn_text.ReadOnly:=false;
     xmn_text.Color:=clWindow;
     xmn_mdl.Color:=clWindow;
     bt_it1.Enabled:=false;
     bt_it2.Enabled:=false;
     bt_it3.Enabled:=false;
     xmn_text.Text:='';
     xmn_mdl.ItemIndex:=0;
     bt_it4.Enabled:=true;
     bt_it5.Enabled:=true;
end;

procedure Tadm_customhelp.xmn_montamenus1Change(Sender: TObject;
  Node: TTreeNode);
begin
      xnoteselect:= Node;
      xnoteselect_index:= Node.AbsoluteIndex;
      xmn_montamenusEditar;
end;

procedure Tadm_customhelp.xmn_montamenus1Click(Sender: TObject);
begin
      xmn_montamenusEditar;
end;

procedure Tadm_customhelp.bt_it1Click(Sender: TObject);
begin
     addreg4;
     xmn_text.SetFocus;
end;

procedure Tadm_customhelp.bt_it3Click(Sender: TObject);
var error_vinc,xerror: boolean;
    xmnmenu,xmnmenucout,ax_xnoteselect_index, xcoditem: Integer;
    msg_error: string;
begin
     if not hwsf.BtConfirma('Excluir item ['+retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Text+']?') then exit;
     if chk_vincular.Checked then begin
        xupxmenumn:=true;
        error_vinc:=false;
        xmnmenucout:=0;
        for xmnmenu:=0 to menutmp.count-1 do begin
            if xmnmenu=0 then
               xmnmenucout:=retorna_TTreeView(xmnmenu).Items.Count
            else begin
               if xmnmenucout<>retorna_TTreeView(xmnmenu).Items.Count then
                  error_vinc:=true;
            end;
        end;
        if error_vinc then begin
           hwsf.BtMensagem('Menus não estão sincronizados, você deve ajustar manualmente o deselecionar "Vincular".');
           xupxmenumn:=false;
           exit;
        end;
        ax_xnoteselect_index:=xnoteselect_index;
        xcoditem:=-1;
        for xmnmenu:=0 to menutmp.count-1 do begin
            xnoteselect_index:=ax_xnoteselect_index;
            xnoteselect:=TTreeNode(retorna_TTreeView(xmnmenu).Items.Item[xnoteselect_index]);
            retorna_TTreeView(xmnmenu).Select(xnoteselect);
            if xcoditem=-1 then begin
               xcoditem:=PmenuRec(retorna_TTreeView(retorna_TTreeView(xmnmenu).Selected.ImageIndex).Selected.Data)^.Fcoditem;
            end;
            retorna_TTreeView(xmnmenu).Selected.Delete;
        end;
        xerror:=false;
        if xcoditem>0 then
        if not dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_item',IntToStr(xcoditem),false) then xerror:=true;
     end else begin
        retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Delete;
        if not dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'codigo',InttoStr(editorlng.codigo[PageControl_languagens.TabIndex]),false) then xerror:=true;
     end;
     atualiza_nitens;
     xmn_text.Text:='';
     xmn_mdl.ItemIndex:=0;
     xmn_montamenusDisable;
     if not update_itensmenus or xerror then begin
        msg_error:= 'Ocorreu algum erro ao gravar os dados';
        if xerror then msg_error:=msg_error+' [itens editor]';
        hwsf.BtMensagem(msg_error);
        xupxmenumn:=false;
        exit;
     end;
     xupxmenumn:=false;
end;

procedure Tadm_customhelp.bt_it2Click(Sender: TObject);
begin
     retorna_TTreeView(PageControl_languagens.TabIndex).Selected.Text:=xmn_text.Text;
     if not update_itensmenus then begin
        hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
        exit;
     end;
     xmn_montamenusDisable;
end;

procedure Tadm_customhelp.bt_it4Click(Sender: TObject);
begin
      IncMenu(0);
end;

procedure Tadm_customhelp.bt_it5Click(Sender: TObject);
begin
      IncMenu(1);
end;

procedure Tadm_customhelp.atualiza_nitens;
begin
     Lb_countreg4.Caption:=IntToStr(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Count);
end;

procedure Tadm_customhelp.xmn_montamenusDisable;
begin
     bt_it1.Enabled:=true;
     bt_it2.Enabled:=false;
     bt_it3.Enabled:=false;
     bt_it4.Enabled:=false;
     bt_it5.Enabled:=false;
     xmn_text.ReadOnly:=true;
     xmn_text.Color:=$00F5F5F5;
     xmn_mdl.Color:=$00F5F5F5;
end;

procedure Tadm_customhelp.IncMenu(xtype_inc:byte);
var xidxmenu,xind_trad,xid_default,xtypemdl,x_codmod,ax_coditem,x_coditem,x_progress: Integer;
    ax_traduzirall1: array[0..20] of String;
    xtxt_dfl1,xtxt1: String;
    ax_xnoteselect_index: Integer;
    xerrorselect,xerror,xitemcheck,xstatedenable: Bool;
begin
        xidxmenu:=PageControl_languagens.TabIndex;
        Case xtype_inc of
          1: begin
             if retorna_TTreeView(xidxmenu).Items.Count=0 then begin
                hwsf.BtMensagem('Nenhum item incluído.');
                xmn_text.SetFocus;
                exit;
             end;
             xerrorselect:=false;
             try
                 if not retorna_TTreeView(xidxmenu).Selected.Selected then
                    xerrorselect:=true;
             Except
                 xerrorselect:=true;
             End;
             if xerrorselect then begin
                hwsf.BtMensagem('É necessário selecionar um item menu para adicionar um subitem.');
                xmn_text.SetFocus;
                exit;
             end;
             if retorna_TTreeView(xidxmenu).Selected.ImageIndex<>0 then begin
                hwsf.BtMensagem('É necessário selecionar um item menu.');
                xmn_text.SetFocus;
                exit;
             end;
          end;
        End;
        if xmn_text.Text='' then begin
           hwsf.BtMensagem('Digite o texto do módulo.');
           xmn_text.SetFocus;
           exit;
        end;
        xmodupdate:=true;
        xupxmenumn:=true;
        xstatedenable:=TabSheet_editor.Enabled;
        TabSheet_editor.Enabled:=true;
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Gravando dados';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.position:=0;
        x_progress:=0;
        if xitemcheck then x_progress:=menutmp.count;
        if chk_vincular.Checked then begin
           if chk_traduzir.Checked then x_progress:=x_progress+(menutmp.count*3)
           else x_progress:=x_progress+menutmp.count;
        end else x_progress:=x_progress+10;
        loadx.Progressloading.Max:=x_progress;
        xitemcheck:=rb_item2.Checked;
        if not xitemcheck then begin
           xtypemdl:=1;
           x_coditem:=0;
        end else begin
           xtypemdl:=2;
           With dm.executa do begin
                CommandText := 'SELECT MAX(cod_item) FROM '+EnDecryptString(HelpSys.vrf02[0],37249);
                Open;
                if RecordCount > 0 then x_coditem:= Fields[0].AsInteger+1
                else x_coditem := 1;
                Close;
           end;
           xerror:=false;
           for xind_trad:=0 to menutmp.count-1 do begin
               loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
               ax_coditem:=dm.GetCodMax(EnDecryptString(HelpSys.vrf02[0],37249),1);
               with dm.executa do begin
                    CommandText:= 'INSERT INTO '+EnDecryptString(HelpSys.vrf02[0],37249)+' (codigo,cod_lng,cod_item) '+
                               'VALUES(:p0,:p1,:p2)';
                    Params[0].AsInteger:=ax_coditem;
                    Params[1].AsInteger:=menutmp.cod_lng[xind_trad];
                    Params[2].AsInteger:=x_coditem;
                    try
                        Execute;
                    Except
                        xerror:=true;
                        Break;
                    End;
               end;
           end;
           if xerror then begin
              dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_item',IntToStr(x_coditem),false);
              loadx.Close;
              xmodupdate:=false;
              xupxmenumn:=false;
              TabSheet_editor.Enabled:=xstatedenable;
              hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
              exit;
           end;
        end;
        if xmn_mdl.ItemIndex>0 then begin
           if dm.ds_sql6.Locate('mdl',xmn_mdl_ext.Strings[xmn_mdl.ItemIndex],[]) then
              x_codmod:=dm.ds_sql6.fieldbyname('codigo').AsInteger;
        end else x_codmod:=0;
        Panel1.Enabled:=false;
        xtxt_dfl1:=xmn_text.Text;
        ax_xnoteselect_index:= xnoteselect_index;
        if chk_vincular.Checked then begin
           xtxt1:=xtxt_dfl1;
           if chk_traduzir.Checked then begin
              loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xidxmenu).Caption;
              loadx.lbloading.Repaint;
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  ax_traduzirall1[xind_trad]:= '';
                  if menutmp.trd[xind_trad]='English' then xid_default:=xind_trad;
              end;
              if (xid_default=xidxmenu) then
                  ax_traduzirall1[xid_default]:=xtxt1
              else begin
                 ax_traduzirall1[xidxmenu]:=xtxt1;
                 loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
                 loadx.lbloading.Repaint;
                 xtxt1:=recebetraducao(xtxt1,menutmp.trd[xidxmenu],menutmp.trd[xid_default]);
                 if copy(xtxt1,1,7)='Error: ' then xtxt1:='';
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Close;
                    if xitemcheck then dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_item',IntToStr(x_coditem),false);
                    xmodupdate:=false;
                    xupxmenumn:=false;
                    Panel1.Enabled:=true;
                    TabSheet_editor.Enabled:=xstatedenable;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 ax_traduzirall1[xid_default]:=xtxt1;
              end;
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  if (xind_trad<>xidxmenu) AND (xind_trad<>xid_default) then begin
                     loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xind_trad).Caption;
                     loadx.lbloading.Repaint;
                     xtxt1:=recebetraducao(ax_traduzirall1[xid_default],menutmp.trd[xid_default],menutmp.trd[xind_trad]);
                     if copy(xtxt1,1,7)='Error: ' then xtxt1:='';
                     if xtxt1 = '<|erro|>' then begin
                        loadx.Close;
                        if xitemcheck then dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_item',IntToStr(x_coditem),false);
                        xmodupdate:=false;
                        xupxmenumn:=false;
                        Panel1.Enabled:=true;
                        TabSheet_editor.Enabled:=xstatedenable;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     ax_traduzirall1[xind_trad]:=xtxt1;
                  end;
              end;
              loadx.lbloading.Caption:='Cridando definições';
              loadx.lbloading.Repaint;
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position;
                  xnoteselect_index:=ax_xnoteselect_index;
                  IncItemMenu(xind_trad,x_codmod,x_coditem,xtype_inc,xtypemdl,ax_traduzirall1[xind_trad]);
              end;
           end else begin
              for xind_trad:=0 to menutmp.count-1 do begin
                  loadx.Progressloading.Position:=loadx.Progressloading.Position+1;
                  xnoteselect_index:=ax_xnoteselect_index;
                  IncItemMenu(xind_trad,x_codmod,x_coditem,xtype_inc,xtypemdl,xtxt1);
              end;
           end;
        end else begin
            loadx.Progressloading.position:=loadx.Progressloading.position+5;
            xnoteselect_index:=ax_xnoteselect_index;
            IncItemMenu(xind_trad,x_codmod,x_coditem,xtype_inc,xtypemdl,xtxt_dfl1);
            loadx.Progressloading.position:=loadx.Progressloading.Max;
            loadx.Progressloading.position:=loadx.Progressloading.position+5;
        end;
        atualiza_nitens;
        xmn_text.Text:=xtxt_dfl1;
        xmodupdate:=false;
        xupxmenumn:=false;
        loadx.Close;
        Panel1.Enabled:=true;
        TabSheet_editor.Enabled:=xstatedenable;
        if not update_itensmenus then begin
           if xitemcheck then dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_item',IntToStr(x_coditem),false);
           hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
           exit;
        end;
        bt_it1.Click;
end;

procedure Tadm_customhelp.chk_vincularClick(Sender: TObject);
begin
      if chk_vincular.Checked then begin
         chk_traduzir.Checked:=true;
         chk_traduzir.Enabled:=true;
      end else begin
         chk_traduzir.Checked:=false;
         chk_traduzir.Enabled:=false;
      end;
end;

procedure Tadm_customhelp.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tadm_customhelp.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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
                 Timer_traduz.Enabled:=false;
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

procedure Tadm_customhelp.IncItemMenu(xidxmenu,x_codmod,x_coditem :Integer; xtype_inc,xtypemdl:byte; xtxtdesc: string);
var xnode:TTreeNode;
    MenuRecPtr: PmenuRec;
begin
        New(MenuRecPtr);
        MenuRecPtr^.Ftypemdl:= xtypemdl;
        MenuRecPtr^.Fcoditem:= x_coditem;
        MenuRecPtr^.Fcodmdl:= x_codmod;
        Case xtype_inc of
            0: begin
               xnode:=TTreeNode.Create(retorna_TTreeView(xidxmenu).Items);
               xnoteselect:=retorna_TTreeView(xidxmenu).Items.AddObject(xnode,xtxtdesc,MenuRecPtr);
            end;
            1: begin
               xnode:=TTreeNode(retorna_TTreeView(xidxmenu).Items.Item[xnoteselect_index]);
               xnoteselect:=retorna_TTreeView(xidxmenu).Items.AddChildObject(xnode,xtxtdesc,MenuRecPtr);
            end;
        End;
        retorna_TTreeView(xidxmenu).Select(xnoteselect);
        Case xtypemdl of
             1: begin
                retorna_TTreeView(xidxmenu).Selected.ImageIndex:=0;
                retorna_TTreeView(xidxmenu).Selected.SelectedIndex:=1;
             end;
             2: begin
                retorna_TTreeView(xidxmenu).Selected.ImageIndex:=2;
                retorna_TTreeView(xidxmenu).Selected.SelectedIndex:=3;
             end;
        End;
        //retorna_TTreeView(xidxmenu).Repaint;
end;

procedure Tadm_customhelp.bt_new4Click(Sender: TObject);
begin
     if hwsf.BtConfirma('Restaurar menu?') then
        montalng_menus;
end;

procedure Tadm_customhelp.bt_del4Click(Sender: TObject);
var xmnmenu: Integer;
    xerror: Boolean;
    msg_error: String;
begin
     if hwsf.BtConfirma('Limpar todos os itens do menu, processo irreversível?') then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Limpando itens, aguarde.';
        loadx.Show;
        loadx.Update;
        loadx.Progressloading.Max:=StrtoInt(FormatFloat('0',menutmp.count));
        loadx.Progressloading.position:=0;
        xerror:=false;
        xupxmenumn:=true;
        if chk_vincular.Checked then begin
           for xmnmenu:=0 to menutmp.count-1 do begin
               retorna_TTreeView(xmnmenu).Items.Clear;
               menutmp.treeview[xmnmenu].Clear;
               menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
               menutmp.data[xmnmenu].Clear;
           end;
           if not dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_lng>','0',false) then xerror:=true;
        end else begin
           retorna_TTreeView(PageControl_languagens.TabIndex).Items.Clear;
           menutmp.treeview[PageControl_languagens.TabIndex].Clear;
           menutmp.treeview[PageControl_languagens.TabIndex].Seek(0,soFromBeginning);
           menutmp.data[PageControl_languagens.TabIndex].Clear;
           if not dm.deleta_reg(EnDecryptString(HelpSys.vrf02[0],37249),'cod_lng',IntToStr(menutmp.cod_lng[PageControl_languagens.TabIndex]),false) then xerror:=true;
        end;
        atualiza_nitens;
        xmn_text.Text:='';
        xmn_mdl.ItemIndex:=0;
        rb_item1.Checked:=true;
        loadx.Close;
        xupxmenumn:=true;
        if not update_itensmenus or xerror then begin
            msg_error:= 'Ocorreu algum erro ao gravar os dados';
            if xerror then msg_error:=msg_error+' [itens editor]';
            hwsf.BtMensagem(msg_error);
        end;
     end;
end;

procedure Tadm_customhelp.atualiza_xmenumnt;
begin
     //monta menu
     xmn_montamenus_treeview;
     atualiza_nitens;
     xmn_text.Text:='';
     xmn_mdl.ItemIndex:=0;
     rb_item1.Checked:=true;
end;

function Tadm_customhelp.xmn_montamenus_treeview:Boolean;
var xformn: Integer;
    xmnmenu: Integer;
    MenuRecPtr: PmenuRec;             
begin
     xupxmenumn:=true;
     for xmnmenu:=0 to menutmp.count-1 do begin
       menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
       retorna_TTreeView(xmnmenu).LoadFromStream(menutmp.treeview[xmnmenu]);
       for xformn:=0 to retorna_TTreeView(xmnmenu).Items.Count-1 do begin
           New(MenuRecPtr);
           MenuRecPtr^.Ftypemdl:= StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],1,1));
           MenuRecPtr^.Fcodmdl:= StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],2,11));
           MenuRecPtr^.Fcoditem:= StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],13,11));
           retorna_TTreeView(xmnmenu).Items.Item[xformn].Data:=MenuRecPtr;
           Case StrtoInt(copy(menutmp.data[xmnmenu].Strings[xformn],1,1)) of
              1: begin
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].ImageIndex:=0;
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].SelectedIndex:=1;
              end;
              2: begin
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].ImageIndex:=2;
                 retorna_TTreeView(xmnmenu).Items.Item[xformn].SelectedIndex:=3;
              end;
           end;
       end;
       retorna_TTreeView(xmnmenu).Repaint;
     end;
     xupxmenumn:=false;
     Result:=True;
end;

function Tadm_customhelp.update_itensmenus:Boolean;
var xmnmenu,axcod: Integer;
    xerror: Bool;
begin
      loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Gravando dados';
      loadx.Show;
      loadx.Update;
      loadx.Progressloading.position:=0;
      xerror:=true;
      xmn_montamenus_str;
      loadx.Progressloading.position:=25;
      for xmnmenu:=0 to menutmp.count-1 do begin
          if dm.executa5.Locate('cod_lng',menutmp.cod_lng[xmnmenu],[]) then begin
             axcod:=dm.executa5.fieldbyname('codigo').AsInteger;
             loadx.Progressloading.position:=50;
             with dm.executa do begin
                  CommandText:= 'UPDATE '+EnDecryptString(HelpSys.vrf01[0],37249)+' SET descricao=:p0,cod_lng=:p1,obs=:p2,tvw=:p3 '+
                             ' WHERE codigo=:p4';
                  Params[0].AsString:=ax_traduzirall_title[xmnmenu];
                  Params[1].AsInteger:=menutmp.cod_lng[xmnmenu];
                  Params[2].Assign(menutmp.data[xmnmenu]);
                  menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                  Params[3].LoadFromStream(menutmp.treeview[xmnmenu],ftblob);
                  Params[4].AsInteger:=axcod;
             end;
             loadx.Progressloading.position:=75;
          end else begin
             axcod:=dm.GetCodMax(EnDecryptString(HelpSys.vrf01[0],37249),1);
             loadx.Progressloading.position:=50;
             with dm.executa do begin
                  CommandText:= 'INSERT INTO '+EnDecryptString(HelpSys.vrf01[0],37249)+' (codigo,descricao,cod_lng,obs,tvw) '+
                             'VALUES(:p0,:p1,:p2,:p3,:p4)';
                  Params[0].AsInteger:=axcod;
                  Params[1].AsString:=ax_traduzirall_title[xmnmenu];
                  Params[2].AsInteger:=menutmp.cod_lng[xmnmenu];
                  Params[3].Assign(menutmp.data[xmnmenu]);
                  menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                  Params[4].LoadFromStream(menutmp.treeview[xmnmenu],ftblob);
             end;
             loadx.Progressloading.position:=75;
          end;
          try
              dm.executa.Execute;
              loadx.Progressloading.position:=100;
          Except
              xerror:=false;
          End;
      end;
      Result:=xerror;
      loadx.Close;
end;

function Tadm_customhelp.xmn_montamenus_str:Boolean;
var xformn: Integer;
    xmnmenu: Integer;
begin
     xupxmenumn:=true;
     for xmnmenu:=0 to menutmp.count-1 do begin
       menutmp.data[xmnmenu].Clear;
       menutmp.treeview[xmnmenu].Clear;
       menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
       retorna_TTreeView(xmnmenu).SaveToStream(menutmp.treeview[xmnmenu]);
       for xformn:=0 to retorna_TTreeView(xmnmenu).Items.Count-1 do begin
           menutmp.data[xmnmenu].Add(IntToStr(PmenuRec(retorna_TTreeView(xmnmenu).Items.Item[xformn].Data)^.Ftypemdl)+
                                      preenchezeros(PmenuRec(retorna_TTreeView(xmnmenu).Items.Item[xformn].Data)^.Fcodmdl,11)+
                                      preenchezeros(PmenuRec(retorna_TTreeView(xmnmenu).Items.Item[xformn].Data)^.Fcoditem,11));
       end;
     end;
     xupxmenumn:=false;
     Result:=True;
end;

function Tadm_customhelp.preenchezeros(xcodnum,xquantzeros: Integer):string;
var ax_xcodnum: string;
    ax_forzeros: Integer;
begin
     ax_xcodnum:=IntToStr(xcodnum);
     if Length(ax_xcodnum)<xquantzeros then
     for ax_forzeros:=1 to (xquantzeros-Length(ax_xcodnum)) do begin
         ax_xcodnum:='0'+ax_xcodnum;
     end;
     Result:=ax_xcodnum;
end;

procedure Tadm_customhelp.montalng_menus;
var xmnmenu,axcod,xidxmenu,xid_default: Integer;
    xmninc,xentryproc: Bool;
    xtxt1: String;
    procedure atualiza_ax_traduzirall_title;
    var position_progress,xmnmenu2: Integer;
    begin
         position_progress:=loadx.Progressloading.Position;
         if not xentryproc then begin
            loadx.Progressloading.Max:=StrtoInt(FormatFloat('0',loadx.Progressloading.Max*3));
            xentryproc:=true;
         end;
         loadx.Progressloading.Position:=position_progress;
         xtxt1:='Tópicos de Ajuda';
         for xmnmenu2:=0 to menutmp.count-1 do begin
             loadx.Progressloading.position:=loadx.Progressloading.position+1;
             ax_traduzirall_title[xmnmenu2]:= '';
             if menutmp.trd[xmnmenu2]='Portuguese' then xidxmenu:=xmnmenu2;
             if menutmp.trd[xmnmenu2]='English' then xid_default:=xmnmenu2;
         end;
         ax_traduzirall_title[xidxmenu]:=xtxt1;
         xtxt1:=recebetraducao(xtxt1,menutmp.trd[xidxmenu],menutmp.trd[xid_default]);
         if xtxt1 = '<|erro|>' then begin
            loadx.Close;
            hwsf.BtMensagem('Erro na conexão, reinicie o módulo');
            Destroy;
            exit;
         end;
         ax_traduzirall_title[xid_default]:=xtxt1;
         for xmnmenu2:=0 to menutmp.count-1 do begin
             loadx.Progressloading.position:=loadx.Progressloading.position+1;
             if (xmnmenu2<>xidxmenu) and (xmnmenu2<>xid_default) then begin
                 xtxt1:=recebetraducao(xtxt1,menutmp.trd[xid_default],menutmp.trd[xmnmenu2]);
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexão, reinicie o módulo');
                    Destroy;
                    exit;
                 end;
                 ax_traduzirall_title[xmnmenu2]:=xtxt1;
             end;
         end;
    end;
begin
     xentryproc:=false;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Criando ambiente';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.Max:=StrtoInt(FormatFloat('0',menutmp.count));
     loadx.Progressloading.position:=0;
     With dm.executa5 do begin
          if Active then Close;
          CommandText:= 'SELECT * FROM '+EnDecryptString(HelpSys.vrf01[0],37249)+
                     ' ORDER BY codigo';
          Open;
          First;
          xmninc:=false;
          for xmnmenu:=0 to menutmp.count-1 do begin
              loadx.Progressloading.position:=loadx.Progressloading.position+1;
              retorna_TTreeView(xmnmenu).Items.Clear;
              if Locate('cod_lng',menutmp.cod_lng[xmnmenu],[]) then begin
                 menutmp.treeview[xmnmenu].Clear;
                 menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                 TBlobField(FieldByName('tvw')).SaveToStream(menutmp.treeview[xmnmenu]);
                 menutmp.data[xmnmenu].Assign(fieldbyname('obs'));
                 ax_traduzirall_title[xmnmenu]:=fieldbyname('descricao').asstring;
              end else begin
                 atualiza_ax_traduzirall_title;
                 xmninc:=true;
                 axcod:=dm.GetCodMax(EnDecryptString(HelpSys.vrf01[0],37249),1);
                 with dm.executa do begin
                    CommandText:= 'INSERT INTO '+EnDecryptString(HelpSys.vrf01[0],37249)+' (codigo,descricao,cod_lng,obs,tvw) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4)';
                    Params[0].AsInteger:=axcod;
                    Params[1].AsString:=ax_traduzirall_title[xmnmenu];
                    Params[2].AsInteger:=menutmp.cod_lng[xmnmenu];
                    menutmp.data[xmnmenu].Clear;
                    Params[3].Assign(menutmp.data[xmnmenu]);
                    menutmp.data[xmnmenu].Clear;
                    menutmp.treeview[xmnmenu].Seek(0,soFromBeginning);
                    Params[4].LoadFromStream(menutmp.treeview[xmnmenu],ftblob);
                    dm.executa.Execute;
                 end;
              end;
          end;
          if xmninc then begin
             Close;
             Open;
          end;
     end;
     atualiza_xmenumnt;
     PageControl_languagens.TabIndex:=0;
     Edit_title.Text:=ax_traduzirall_title[PageControl_languagens.TabIndex];
     loadx.Close;
end;

procedure Tadm_customhelp.PageControl_languagensChange(Sender: TObject);
begin
     xmn_montamenusEditar;
     Edit_title.Text:=ax_traduzirall_title[PageControl_languagens.TabIndex];
end;

procedure Tadm_customhelp.SpeedButton1Click(Sender: TObject);
begin
     ax_traduzirall_title[PageControl_languagens.TabIndex]:=Edit_title.Text;
     if not update_itensmenus then begin
        hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
        exit;
     end;
end;

procedure Tadm_customhelp.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

function Tadm_customhelp.BitmapToRtf(graph:TBitmap):string;
var bi, bb, rtf:string;
    bis, bbs:cardinal;
    achar:ShortString;
    HexGraph:string;
    I:Integer;
begin
    GetDIBSizes(graph.Handle, bis, bbs);
    SetLength(bi,bis);
    SetLength(bb,bbs);
    GetDIB(graph.Handle, graph.Palette, PChar(bi)^, PChar(bb)^);
    rtf:='{\rtf1 {\pict\dibitmap ';
    SetLength(HexGraph,(Length(bb) + Length(bi)) * 2);
    I:=2;
    for bis:=1 to Length(bi) do begin
        achar:=Format('%x',[Integer(bi[bis])]);
        if Length(achar)=1 then achar:='0'+achar;
        HexGraph[I-1]:=achar[1];
        HexGraph[I]:=achar[2];
        Inc(I,2);
    end;
    for bbs:=1 to Length(bb) do begin
        achar:=Format('%x',[Integer(bb[bbs])]);
        if Length(achar)=1 then achar:='0'+achar;
        HexGraph[I-1]:=achar[1];
        HexGraph[I]:=achar[2];
        Inc(I,2);
    end;
    rtf:=rtf + HexGraph + ' }}';
    Result:=rtf;
end;

procedure Tadm_customhelp.incluiimgeditor(xcodimg,xlinha,xidxrxre: Integer);
var SS: TStringStream;
    axstrbmp: TMemoryStream;
    axbmp: TBitmap;
begin
    try
        axstrbmp:= TMemoryStream.Create;
        retorna_ImgStream(xcodimg,axstrbmp);
        JpegToBmp1.SaveToStream(axstrbmp,axstrbmp);
        axstrbmp.Seek(0,soFromBeginning);
        axbmp:= TBitmap.Create;
        axbmp.LoadFromStream(axstrbmp);
        //incluir imagem
        retorna_TRxRichEdit(xidxrxre).SelStart:=xlinha;
        SS:=TStringStream.Create(BitmapToRtf(axbmp));
        retorna_TRxRichEdit(xidxrxre).PlainText:=False;
        retorna_TRxRichEdit(xidxrxre).StreamMode:=[smSelection];
        SS.Position:=0;
        retorna_TRxRichEdit(xidxrxre).Lines.LoadFromStream(SS);
        retorna_TRxRichEdit(xidxrxre).SelStart:=xlinha+1;
    finally
        SS.Free;
        axbmp.Free;
        axstrbmp.Free;
    end;
end;

procedure Tadm_customhelp.incluiimgeditor2(xlinha,xidxrxre: Integer);
var SS: TStringStream;
    axstrbmp: TMemoryStream;
    axbmp: TBitmap;
begin
    try
        axstrbmp:= TMemoryStream.Create;
        Image_multimidia.Picture.Bitmap.SaveToStream(axstrbmp);
        axstrbmp.Seek(0,soFromBeginning);
        axbmp:= TBitmap.Create;
        axbmp.LoadFromStream(axstrbmp);
        //incluir imagem
        retorna_TRxRichEdit(xidxrxre).SelStart:=xlinha;
        SS:=TStringStream.Create(BitmapToRtf(axbmp));
        retorna_TRxRichEdit(xidxrxre).PlainText:=False;
        retorna_TRxRichEdit(xidxrxre).StreamMode:=[smSelection];
        SS.Position:=0;
        retorna_TRxRichEdit(xidxrxre).Lines.LoadFromStream(SS);
        retorna_TRxRichEdit(xidxrxre).SelStart:=xlinha+1;
    finally
        SS.Free;
        axbmp.Free;
        axstrbmp.Free;
    end;
end;

procedure Tadm_customhelp.re_editorURLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
var axURLText: String;
begin
      if xupxmenumn then exit;
      if copy(URLText,1,7)='http://' then axURLText:=copy(URLText,8,Length(URLText))
      else axURLText:=URLText;
      JumpTo(axURLText);
end;

procedure Tadm_customhelp.Selecionartudo1Click(Sender: TObject);
begin
      retorna_TRxRichEdit(PageControl_editor.TabIndex).SelectAll;
end;

procedure Tadm_customhelp.PageControl_editorChange(Sender: TObject);
begin
      StatusBar.Panels[3].Text:=retorna_TTabSheet2(PageControl_editor.TabIndex).Caption;
end;

procedure Tadm_customhelp.SpeedButton2Click(Sender: TObject);
var xnode:TTreeNode;
    xIdnode,xmnmenu,xmnmenucout:Integer;
    xerror,error_vinc:Bool;
begin
      if xnoteselect_index=0 then exit;
      xerror:=false;
      if chk_vincular.Checked then begin
        error_vinc:=false;
        xmnmenucout:=0;
        for xmnmenu:=0 to menutmp.count-1 do begin
            if xmnmenu=0 then
               xmnmenucout:=retorna_TTreeView(xmnmenu).Items.Count
            else begin
               if xmnmenucout<>retorna_TTreeView(xmnmenu).Items.Count then
                  error_vinc:=true;
            end;
        end;
        if error_vinc then begin
           hwsf.BtMensagem('Menus não estão sincronizados, você deve ajustar manualmente o deselecionar "Vincular".');
           exit;
        end;
        xmodupdate:=true;
        xupxmenumn:=true;
        xIdnode:=xnoteselect_index-1;
        for xmnmenu:=0 to menutmp.count-1 do begin
            try
                xnode:=TTreeNode(retorna_TTreeView(xmnmenu).Items.Item[xIdnode+1]);
                retorna_TTreeView(xIdnode).Select(xnode);
                xnode:=TTreeNode(retorna_TTreeView(xmnmenu).Items.Item[xIdnode]);
                retorna_TTreeView(xmnmenu).Selected.MoveTo(xnode,naInsert);
            Except
                xerror:=true;
            End;
        end;
        try
            xnoteselect_index:=xIdnode;
            xnoteselect:=xnode;
            retorna_TTreeView(PageControl_languagens.TabIndex).Select(xnode);
        Except
            xerror:=true;
        End;
        xmodupdate:=false;
        xupxmenumn:=false;
      end else begin
        xmodupdate:=true;
        xupxmenumn:=true;
        xIdnode:=xnoteselect_index-1;
        try
            xnode:=TTreeNode(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Item[xIdnode]);
            retorna_TTreeView(PageControl_languagens.TabIndex).Selected.MoveTo(xnode,naInsert);
            xnoteselect_index:=xIdnode;
            xnoteselect:=xnode;
        Except
            xerror:=true;
        End;
        xmodupdate:=false;
        xupxmenumn:=false;
      end;
      if not xerror then
      if not update_itensmenus then begin
        hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
        exit;
     end;
end;

procedure Tadm_customhelp.SpeedButton3Click(Sender: TObject);
var xnode:TTreeNode;
    xIdnode,xmnmenu,xmnmenucout:Integer;
    xerror,error_vinc:Bool;
begin
      if xnoteselect_index=retorna_TTreeView(PageControl_languagens.TabIndex).Items.Count-1 then exit;
      if chk_vincular.Checked then begin
        error_vinc:=false;
        xmnmenucout:=0;
        for xmnmenu:=0 to menutmp.count-1 do begin
            if xmnmenu=0 then
               xmnmenucout:=retorna_TTreeView(xmnmenu).Items.Count
            else begin
               if xmnmenucout<>retorna_TTreeView(xmnmenu).Items.Count then
                  error_vinc:=true;
            end;
        end;
        if error_vinc then begin
           hwsf.BtMensagem('Menus não estão sincronizados, você deve ajustar manualmente o deselecionar "Vincular".');
           exit;
        end;
        xmodupdate:=true;
        xupxmenumn:=true;
        xIdnode:=xnoteselect_index+1;
        for xmnmenu:=0 to menutmp.count-1 do begin
            try
                xnode:=TTreeNode(retorna_TTreeView(xmnmenu).Items.Item[xIdnode]);
                retorna_TTreeView(xIdnode).Select(xnode);
                xnode:=TTreeNode(retorna_TTreeView(xmnmenu).Items.Item[xIdnode-1]);
                retorna_TTreeView(xmnmenu).Selected.MoveTo(xnode,naInsert);
            Except
                xerror:=true;
            End;
        end;
        try
            xnoteselect_index:=xIdnode;
            xnoteselect:=xnode;
            xnode:=TTreeNode(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Item[xIdnode]);
            retorna_TTreeView(xIdnode).Select(xnode);
        Except
            xerror:=true;
        End;
        xmodupdate:=false;
        xupxmenumn:=false;
      end else begin
        xmodupdate:=true;
        xupxmenumn:=true;
        xIdnode:=xnoteselect_index+1;
        try
            xnode:=TTreeNode(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Item[xIdnode]);
            retorna_TTreeView(xIdnode).Select(xnode);
            xnode:=TTreeNode(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Item[xIdnode-1]);
            retorna_TTreeView(PageControl_languagens.TabIndex).Selected.MoveTo(xnode,naInsert);
            xnoteselect_index:=xIdnode;
            xnoteselect:=xnode;
            xnode:=TTreeNode(retorna_TTreeView(PageControl_languagens.TabIndex).Items.Item[xIdnode]);
            retorna_TTreeView(xIdnode).Select(xnode);
        Except
            xerror:=true;
        End;
        xmodupdate:=false;
        xupxmenumn:=false;
      end;
      if not xerror then
      if not update_itensmenus then begin
        hwsf.BtMensagem('Ocorreu algum erro ao gravar os dados');
        exit;
     end;
end;

procedure Tadm_customhelp.Imagem1Click(Sender: TObject);
var axcodimg,axlinimg,axtabidx: Integer;
begin
     try
         dm.ds_sql2.Filter:='tp='+#39+'2'+#39;
         Application.CreateForm(Tadm_customSelectImg,adm_customSelectImg);
         adm_customSelectImg.axfilter:=dm.ds_sql2.Filter;
         adm_customSelectImg.xtabela:=EnDecryptString(HelpSys.vrf03[0],37249);
         adm_customSelectImg.DBGridimg.DataSource:=dm.source_sql2;
         adm_customSelectImg.xdataset:=dm.ds_sql2;
         adm_customSelectImg.xexecuta:=dm.executa;
         adm_customSelectImg.ShowModal;
         axcodimg:=adm_customSelectImg.xcodimg;
         if axcodimg>0 then begin
            axlinimg:=retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart;
            axtabidx:=PageControl_editor.TabIndex;
            editorlng.tmpimglst[axtabidx].linha[editorlng.tmpimglst[axtabidx].count]:=axlinimg;
            editorlng.tmpimglst[axtabidx].cod_img[editorlng.tmpimglst[axtabidx].count]:=axcodimg;
            Inc(editorlng.tmpimglst[axtabidx].count);
            incluiimgeditor(axcodimg,axlinimg,axtabidx);
         end;
     finally
         adm_customSelectImg.Free;
     end;
end;

procedure Tadm_customhelp.Hyperlink1Click(Sender: TObject);
var xdesc: string;
begin
      xdesc:= hwsf.BtDesc('Digite o Link (http:// ou www.)');
      if xdesc<>'' then begin
         if (copy(xdesc,1,7)<>'http://') or (copy(xdesc,1,4)<>'www.') then
            xdesc:='http://www.'+xdesc;
         retorna_TRxRichEdit(PageControl_editor.TabIndex).Lines.Add(xdesc);
      end;
end;

procedure Tadm_customhelp.Arquivomultimedia1Click(Sender: TObject);
var axcodimg,axlinimg,axtabidx: Integer;
begin
     try
         dm.ds_sql2.Filter:='tp<'+#39+'2'+#39;
         Application.CreateForm(Tadm_customSelectImg,adm_customSelectImg);
         adm_customSelectImg.axfilter:=dm.ds_sql2.Filter;
         adm_customSelectImg.xtabela:=EnDecryptString(HelpSys.vrf03[0],37249);
         adm_customSelectImg.DBGridimg.DataSource:=dm.source_sql2;
         adm_customSelectImg.xdataset:=dm.ds_sql2;
         adm_customSelectImg.xexecuta:=dm.executa;
         adm_customSelectImg.ShowModal;
         axcodimg:=adm_customSelectImg.xcodimg;
         if axcodimg>0 then begin
            axlinimg:=retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart;
            axtabidx:=PageControl_editor.TabIndex;
            editorlng.tmpimglst[axtabidx].linha[editorlng.tmpimglst[axtabidx].count]:=axlinimg;
            editorlng.tmpimglst[axtabidx].cod_img[editorlng.tmpimglst[axtabidx].count]:=axcodimg;
            Inc(editorlng.tmpimglst[axtabidx].count);
            incluiimgeditor2(axlinimg,axtabidx);
         end;
     finally
         adm_customSelectImg.Free;
     end;
end;

procedure Tadm_customhelp.re_editorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
{var xformenu,axtabidx,axkeyclick,axkeycount,axkeydef,xiddel,xiddel2:Integer;
    axtype: Byte;
    xcoddel: array[0..20] of Integer;   }
begin
{  axkeyclick:=retorna_TRxRichEdit(PageControl_editor.TabIndex).SelStart;
  axkeycount:=length(retorna_TRxRichEdit(PageControl_editor.TabIndex).Text);
  if ed_edit.xkeycount<>axkeycount then begin
     axtabidx:=PageControl_editor.TabIndex;
     if ed_edit.xkeycount>axkeycount then begin
        axkeydef:=ed_edit.xkeycount-axkeycount;
        axtype:=1;
     end else begin
        axkeydef:=axkeycount-ed_edit.xkeycount;
        axtype:=0;
     end;
     Case ed_edit.xtype of
        0: begin
           for xformenu:=0 to editorlng.tmpimglst[axtabidx].count-1 do begin
               if editorlng.tmpimglst[axtabidx].linha[xformenu] >= ed_edit.xkeyclick then
                  editorlng.tmpimglst[axtabidx].linha[xformenu]:=editorlng.tmpimglst[axtabidx].linha[xformenu]-axkeydef;
           end;
        end;
        1: begin
           xiddel:=0;
           for xformenu:=0 to editorlng.tmpimglst[axtabidx].count-1 do begin
               if (editorlng.tmpimglst[axtabidx].linha[xformenu] >= (ed_edit.xkeyclick-axkeydef)) and
                  (editorlng.tmpimglst[axtabidx].linha[xformenu] <= ed_edit.xkeyclick) then begin
                   xcoddel[xiddel]:=xformenu;
                   Inc(xiddel);
               end else if editorlng.tmpimglst[axtabidx].linha[xformenu] >= ed_edit.xkeyclick then
                  editorlng.tmpimglst[axtabidx].linha[xformenu]:=editorlng.tmpimglst[axtabidx].linha[xformenu]-axkeydef;
           end;
           if xiddel>0 then begin
              for xiddel2:=0 to xiddel-1 do begin
                  for xformenu:=xcoddel[xiddel2] to editorlng.tmpimglst[axtabidx].count-1 do begin
                      editorlng.tmpimglst[axtabidx].cod_img[xformenu]:=editorlng.tmpimglst[axtabidx].cod_img[xformenu+1];
                      editorlng.tmpimglst[axtabidx].linha[xformenu]:=editorlng.tmpimglst[axtabidx].linha[xformenu+1];
                      editorlng.tmpimglst[axtabidx].count:=editorlng.tmpimglst[axtabidx].count-1;
                  end;
              end;
           end;
        end;
     End;
  end;  }
end;

end.

