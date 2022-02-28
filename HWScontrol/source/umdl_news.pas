{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions
392
Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_news;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, ImgList, AppEvnts;

type
  TLstTables = record
     codigo: array [0..100] of Integer;
     Table: array [0..100] of String;
     Tipo: array [0..100] of TStringList;
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
  Tmdl_news = class(TForm)
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
    OpenBannerDialog: TOpenPictureDialog;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
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
    Cordefundo1: TMenuItem;
    ImageList_status: TImageList;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Panel8: TPanel;
    Label32: TLabel;
    ComboBox1: TComboBox;
    Panel18: TPanel;
    Label40: TLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ToolBar6: TToolBar;
    ComboBox4: TComboBox;
    CheckBox5: TCheckBox;
    GroupBox8: TGroupBox;
    Label12: TLabel;
    Panel6: TPanel;
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel7: TPanel;
    Label6: TLabel;
    ms_cod: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label39: TLabel;
    Edit1: TEdit;
    ms_titulo: TEdit;
    ComboBox3: TComboBox;
    RichEdit2: TRichEdit;
    Panel12: TPanel;
    DBGrid1: TDBGrid;
    Panelclass: TPanel;
    Label9: TLabel;
    Panel11: TPanel;
    ToolBar17: TToolBar;
    bt_newclass: TSpeedButton;
    bt_delclass: TSpeedButton;
    bt_saveclass: TSpeedButton;
    ComboBox_class: TComboBox;
    CheckBox_class: TCheckBox;
    Panel23: TPanel;
    Label29: TLabel;
    ToolBar18: TToolBar;
    ComboBoxEx1: TComboBoxEx;
    CheckBox4: TCheckBox;
    Panel21: TPanel;
    Lb_countreg1: TLabel;
    ComboBox_Grid1: TComboBox;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    ToolBar2: TToolBar;
    bt_new1: TSpeedButton;
    bt_del1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolBar11: TToolBar;
    SpeedButton3: TSpeedButton;
    SpeedButton14: TSpeedButton;
    Panel19: TPanel;
    Label2: TLabel;
    ab_cod: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label3: TLabel;
    Label23: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ab_titulo: TEdit;
    ComboBox_class2: TComboBox;
    xcp18_ax: TComboBox;
    xcp18_axuf: TComboBox;
    cb_dt: TDateTimePicker;
    cb_tm: TDateTimePicker;
    cb_auto: TCheckBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    ComboBoxEx2: TComboBoxEx;
    cb_rm: TComboBox;
    cb_exb: TEdit;
    cb_exbup: TUpDown;
    TabSheet5: TTabSheet;
    Panel5: TPanel;
    swf_logo1: TShockwaveFlash;
    ToolBar3: TToolBar;
    bt_open1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    bt_limpar1: TSpeedButton;
    Panel13: TPanel;
    Label10: TLabel;
    Label_size1: TLabel;
    chk_view1: TCheckBox;
    Panel4: TPanel;
    CheckBox6: TCheckBox;
    ToolBar4: TToolBar;
    Label33: TLabel;
    Edit2: TEdit;
    Panel10: TPanel;
    ToolBar10: TToolBar;
    SpeedButton16: TSpeedButton;
    SpeedButton15: TSpeedButton;
    TabSheet6: TTabSheet;
    CoolBar2: TCoolBar;
    ToolBar12: TToolBar;
    FontName1: TComboBox;
    ToolButton16: TToolButton;
    FontSize1: TEdit;
    UpDown2: TUpDown;
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
    ToolButton20: TToolButton;
    ToolBar16: TToolBar;
    fontColor1: TToolButton;
    eddesfazer1: TToolButton;
    ToolButton2: TToolButton;
    re_editor1: TRxRichEdit;
    Panel14: TPanel;
    ToolBar9: TToolBar;
    SpeedButton12: TSpeedButton;
    bt_save1: TSpeedButton;
    ToolBar8: TToolBar;
    SpeedButton18: TSpeedButton;
    SpeedButton17: TSpeedButton;
    TabSheet7: TTabSheet;
    RichEdit_rel: TRichEdit;
    ToolButton1: TToolButton;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_new1Click(Sender: TObject);
    procedure bt_del1Click(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
    procedure ComboBox_webChange(Sender: TObject);
    procedure bt_limpar1Click(Sender: TObject);
    procedure bt_open1Click(Sender: TObject);
    procedure chk_view1Click(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl_languagensChange(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure PageControl1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ComboBox_entChange(Sender: TObject);
    procedure Salvarcomo1Click(Sender: TObject);
    procedure bt_helpClick(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
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
    procedure bt_newclassClick(Sender: TObject);
    procedure bt_delclassClick(Sender: TObject);
    procedure PanelclassResize(Sender: TObject);
    procedure EVsaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_saveclassClick(Sender: TObject);
    procedure Cordefundo1Click(Sender: TObject);
    procedure CheckBox_classClick(Sender: TObject);
    procedure ComboBox_classKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_classClick(Sender: TObject);
    procedure xcp18_axufChange(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure cb_autoClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit,xupdatelogo1,xupdatelogo2,xupdatebanner: Boolean;
    pathdefault,xdsqlfilter : string;
    ax_ab_cod,axcod_gal,axcod_class,ax_ms_cod,axcod_img,axcod_ent: Integer;
    LstTables: TLstTables;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xlogosz1,xlogosz2,xamplsz2,xbannersz: Integer;
    xlogotmp1,xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    procedure monta_lng;
    procedure monta_table1;
    procedure monta_table2(xnewgal,xuplng:Boolean);
    procedure monta_tableclass;
    procedure addreg;
    procedure addreg2;
    procedure atualiza_grade;
    procedure limpaphoto1(xupdateset:Boolean);
    procedure atualiza_grade2;
    procedure getLogo1;
    procedure abretmplogo1;
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
    procedure validaCbClass();
    function Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
    procedure monta_uf(xselect:Boolean; xufdefault:string);
    procedure monta_cid(xuf,xciddefault:String);
    procedure filtra_regiao(xbool:Bool);
    procedure filtra_data(xbool:Bool);
    { Private declarations }
  public
    xreceivetrad : String;
    xtimerresponse: Integer;
    //processoand: Boolean;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_news: Tmdl_news;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd,
     uBt_search_auto;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_news.FormClose(Sender: TObject; var Action: TCloseAction);
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
     if dm.ds_sql4.Active then begin
        dm.ds_sql.Filter:='';
        dm.ds_sql.Filtered:=false;
        dm.ds_sql.Close;
     end;
     loadx.Progressloading.position:=50;
     if dm.ds_sql3.Active then begin
        dm.ds_sql3.Filter:='';
        dm.ds_sql3.Filtered:=false;
        dm.ds_sql3.Close;
     end;
     if dm.ds_sql4.Active then dm.ds_sql4.Close;
     if dm.ds_sql5.Active then dm.ds_sql5.Close;
     if dm.ds_sql6.Active then begin
        dm.ds_sql6.Filter:='';
        dm.ds_sql6.Filtered:=false;
        dm.ds_sql6.Close;
     end;
     if dm.ds_sql9.Active then dm.ds_sql9.Close;
     if dm.ds_sql10.Active then dm.ds_sql10.Close;
     loadx.Progressloading.position:=75;
     if dm.executa5.Active then dm.executa5.Close;
     if dm.executa3.Active then dm.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_news.FormCreate(Sender: TObject);
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
     loadx.Progressloading.position:=10;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_news.Caption:= AxDadosUsr.axtitle;
     xinit:=true;
     axcod_ent:=0;
     SendMessage(re_editor1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor1.Justify;
     xlogotmp1:= TMemoryStream.Create;
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
             if not axshowing then loadx.Close;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
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
          Add;
          Items[2].Title.Caption:='Descrição';
          Items[2].FieldName:='descricao';
          Add;
          Items[3].Title.Caption:='Descrição';
          Items[3].FieldName:='descricao';
          Add;
          Items[4].Title.Caption:='Descrição';
          Items[4].FieldName:='descricao';
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
     if not axshowing then loadx.Close;
end;

procedure Tmdl_news.monta_lng;
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

procedure Tmdl_news.monta_table1;
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
     if not axshowing then loadx.Close;
end;

procedure Tmdl_news.monta_table2(xnewgal,xuplng:Boolean);
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

procedure Tmdl_news.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
    ToolBar_lng1.Width:=Panel1.Width-244;
    PageControl_languagens.Width:=ToolBar_lng1.Width-61;
    ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_news.FormActivate(Sender: TObject);
begin
      mdl_news.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tmdl_news.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tmdl_news.addreg;
begin
     ab_cod.Caption:='novo';
     ax_ab_cod:=0;
     ab_titulo.Text:='';
     cb_auto.Checked:=true;
     re_editor1.Clear;
     limpaphoto1(False);
end;

procedure Tmdl_news.addreg2;
begin
     ms_cod.Caption:='novo';
     ax_ms_cod:=0;
     ms_titulo.Text:='';
end;

procedure Tmdl_news.atualiza_grade;
var axshowing,xuplng: Boolean;
    axlocid: Integer;
    st_stream: TMemoryStream;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando álbum';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando álbum';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
         axcod_gal:=0;
      end else begin
         with dm.ds_sql do begin
            if ax_ab_cod=fieldbyname('codigo').AsInteger then begin
               if not axshowing then loadx.Close;
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
            loadx.Progressloading.position:=40;
            xcp18_ax.Text:=fieldbyname('cid').AsString;
            xcp18_axuf.Text:=fieldbyname('uf').AsString;
            monta_cid(xcp18_axuf.Text,fieldbyname('cid').AsString);
            cb_dt.Date:=fieldbyname('xdt').AsDateTime;
            cb_tm.Time:=fieldbyname('xdt').AsDateTime;
            if (dm.ds_sql6.Locate('cod_class',fieldbyname('cod_class').AsInteger,[])) then
               ComboBox_class2.Text:= dm.ds_sql6.fieldbyname('cp1').AsString
            else ComboBox_class2.ItemIndex:=0;
            loadx.Progressloading.position:=50;
            monta_table2(False,xuplng);
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
      if chk_view1.Checked then getLogo1;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_news.limpaphoto1(xupdateset:Boolean);
begin
     xupdatelogo1:=xupdateset;
     xlogotmp1.Clear;
     xlogotmp1.Seek(0,soFromBeginning);
     xlogosz1:=0;
     Label_size1.Caption:='0 kb';
     swf_logo1.Visible:=false;
     swf_logo1.LoadMovie(0,'lixo');
end;

procedure Tmdl_news.atualiza_grade2;
var axshowing: Boolean;
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
               if not axshowing then loadx.Close;
               exit;
            end;
            loadx.Progressloading.position:=70;
            ms_cod.Caption:=fieldbyname('cod_img').AsString;
            ax_ms_cod:=fieldbyname('codigo').AsInteger;
            axcod_img:=fieldbyname('cod_img').AsInteger;
            loadx.Progressloading.position:=80;
            ms_titulo.Text:=fieldbyname('descricao').AsString;
            loadx.Progressloading.position:=90;
            loadx.Progressloading.position:=100;
         end;
      end;
      //Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      if not axshowing then loadx.Close;
end;

procedure Tmdl_news.bt_new1Click(Sender: TObject);
begin
      addreg;
      ab_titulo.SetFocus;
end;

procedure Tmdl_news.bt_del1Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo álbum';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo álbum';
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
    if not axshowing then loadx.Close;
end;

procedure Tmdl_news.bt_save1Click(Sender: TObject);
var axcod,axcod2,axgal_id,xidxlng,xid_default,axcodgrp,ax_ab_codinsert,ax_cod_cid: integer;
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
     if dm.ds_sql10.Locate('cidade',xcp18_ax.Text,[]) then
        ax_cod_cid:=dm.ds_sql10.fieldbyname('codigo').AsInteger
     else ax_cod_cid:=0;
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
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_gal,cod_web,cod_lng,cod_psn,cod_ls,descricao,textft,blb,xtp,cod_usrw,cod_class,cod_cid,cid,uf,loc,xdt,xstat) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,'+#39+FormatDateTime('yyyymmdd',cb_dt.Date)+' '+FormatDateTime('00:00:00',cb_tm.Time)+#39+',:p16)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_gal;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsInteger:=0;
                 Params[6].AsString:=listaAux.ab_descricao[axgal_id];
                 Params[7].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[8].LoadFromStream(xtxt3,ftblob);
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsInteger:=axcod_ent;
                 Params[11].AsInteger:=axcodgrp;
                 Params[12].AsInteger:=ax_cod_cid;
                 Params[13].AsString:=xcp18_ax.Text;
                 Params[14].AsString:=xcp18_axuf.Text;
                 Params[16].AsInteger:=1;
                 try
                     Execute;
                 except
                     if not axshowing then loadx.Close;
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
                if not axshowing then loadx.Close;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
            ax_ab_codinsert:= ax_ab_cod;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_psn=:p0,cod_ls=:p1,cod_class=:p2,cod_cid=:p3,cid=:p4,uf=:p5,loc=:p6,xdt='+#39+FormatDateTime('yyyymmdd',cb_dt.Date)+' '+FormatDateTime('00:00:00',cb_tm.Time)+#39+',xstat=:p7 '+
                       'WHERE cod_gal=:p8';
            loadx.Progressloading.position:=40;
            Params[0].AsInteger:=0;
            Params[2].AsInteger:=axcodgrp;
            Params[3].AsInteger:=ax_cod_cid;
            Params[4].AsString:=xcp18_ax.Text;
            Params[5].AsString:=xcp18_axuf.Text;
            Params[6].AsInteger:=1;
            Params[7].AsInteger:=axcod_gal;
            try
                Execute;
                loadx.Progressloading.position:=50;
            except
                if not axshowing then loadx.Close;
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
        if not axshowing then loadx.Close;
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;
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
     if not axshowing then loadx.Close;
end;

procedure Tmdl_news.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table1;
             monta_table2(False,False);
          end;
      end;
end;

procedure Tmdl_news.getLogo1;
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

procedure Tmdl_news.abretmplogo1;
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

procedure Tmdl_news.bt_limpar1Click(Sender: TObject);
begin
      limpaphoto1(True);
      if hwsf.BtConfirma('Gravar dados do álbum?') then begin
         bt_save1.Click;
         if chk_view1.Checked then getLogo1;
      end;
end;

procedure Tmdl_news.bt_open1Click(Sender: TObject);
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
         if ab_titulo.Text='' then
            ab_titulo.Text:=copy(ExtractFileName(xnamefile),1,Length(ExtractFileName(xnamefile))-(Length(xfilext)));
         limpaphoto1(True);
         loadx.Progressloading.position:=80;
         xlogotmp1.LoadFromFile(ImportarImgDialog.FileName);
         xlogotmp1.Seek(0,soFromBeginning);
         loadx.Progressloading.position:=90;
         xlogosz1:=xlogotmp1.Size;
         bt_save1.Click;
         if not axshowing then loadx.Close;
      end;
end;

procedure Tmdl_news.chk_view1Click(Sender: TObject);
begin
      if chk_view1.Checked then getLogo1;
end;

procedure Tmdl_news.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_news.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_news.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_news.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_news.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade;
end;

function Tmdl_news.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_news.PageControl_languagensChange(Sender: TObject);
begin
      if PageControl1.TabIndex=0 then begin
         ab_cod.Caption:='0';
         ms_cod.Caption:='0';
         xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
         dm.ds_sql.Filter:=xdsqlfilter;
         dm.ds_sql3.Filter:=xdsqlfilter;
         dm.ds_sql6.Filter:=xdsqlfilter;
         atualiza_grade;
      end else begin
         atualiza_grade2;
      end;
end;

procedure Tmdl_news.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_news.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_news.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_news.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade2;
end;

procedure Tmdl_news.MenuItem1Click(Sender: TObject);
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
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade2;
        end;
    end;
    if not axshowing then loadx.Close;
end;

procedure Tmdl_news.ComboBox_entChange(Sender: TObject);
begin
      if StrtoInt(AxDadosUsr.axparm) > 5000 then begin
         if dm.executa5.Locate('cp1',ComboBox_ent.Text,[]) then begin
            if axcod_ent<>dm.executa5.fieldbyname('codigo').AsInteger then begin
               axcod_ent:=dm.executa5.fieldbyname('codigo').AsInteger;
               monta_table1;
               monta_table2(False,False);
            end;
         end else axcod_ent:=0;
     end;
end;

procedure Tmdl_news.Salvarcomo1Click(Sender: TObject);
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

procedure Tmdl_news.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_news.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_news.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with retorna_TRxRichEdit(PageControl1.TabIndex) do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_news.Recortar1Click(Sender: TObject);
begin
     //recortar
     retorna_TRxRichEdit(PageControl1.TabIndex).CutToClipboard;
end;

procedure Tmdl_news.Copiar1Click(Sender: TObject);
begin
     //copiar
     retorna_TRxRichEdit(PageControl1.TabIndex).CopyToClipboard;
end;

procedure Tmdl_news.Colar1Click(Sender: TObject);
begin
      //colar
     retorna_TRxRichEdit(PageControl1.TabIndex).PasteFromClipboard;
end;

procedure Tmdl_news.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_news.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not retorna_BoldButton(PageControl1.TabIndex).Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_news.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not retorna_ItalicButton(PageControl1.TabIndex).Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_news.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not retorna_UnderlineButton(PageControl1.TabIndex).Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_news.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControl1.TabIndex).Paragraph.Numbering := TRxNumbering(not retorna_BulletsButton(PageControl1.TabIndex).Down);
end;

procedure Tmdl_news.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControl1.TabIndex).Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_news.esquerdo1Click(Sender: TObject);
begin
     retorna_LeftAlign(PageControl1.TabIndex).Click;
end;

procedure Tmdl_news.centro1Click(Sender: TObject);
begin
     retorna_CenterAlign(PageControl1.TabIndex).Click;
end;

procedure Tmdl_news.direita1Click(Sender: TObject);
begin
     retorna_RightAlign(PageControl1.TabIndex).Click;
end;

procedure Tmdl_news.justificado1Click(Sender: TObject);
begin
     retorna_JustifyAlign(PageControl1.TabIndex).Click;
end;

procedure Tmdl_news.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if processoand then exit;
    if (Shift = [ssCtrl]) then
    case Key of
      65,84: (Sender as TRxRichEdit).SelectAll;
      85: if (PageControl1.TabIndex = 0) then bt_save1.Click;
    end;
end;

procedure Tmdl_news.SelectionChange(Sender: TObject);
begin
  //if processoand then exit;
  with retorna_TRxRichEdit(PageControl1.TabIndex).Paragraph do
  try
    FUpdating := True;
    retorna_BoldButton(PageControl1.TabIndex).Down := fsBold in retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Style;
    retorna_ItalicButton(PageControl1.TabIndex).Down := fsItalic in retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Style;
    retorna_UnderlineButton(PageControl1.TabIndex).Down := fsUnderline in retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Style;
    retorna_BulletsButton(PageControl1.TabIndex).Down := Boolean(Numbering);
    retorna_fontSize(PageControl1.TabIndex).Text := IntToStr(retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Size);
    retorna_fontName(PageControl1.TabIndex).Text := retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Name;
    case Ord(Alignment) of
      0: retorna_LeftAlign(PageControl1.TabIndex).Down := True;
      1: retorna_RightAlign(PageControl1.TabIndex).Down := True;
      2: retorna_CenterAlign(PageControl1.TabIndex).Down := True;
      3: retorna_JustifyAlign(PageControl1.TabIndex).Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

function Tmdl_news.CurrText: TRxTextAttributes;
begin
  if retorna_TRxRichEdit(PageControl1.TabIndex).SelLength > 0 then Result := retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes
  else Result := retorna_TRxRichEdit(PageControl1.TabIndex).DefAttributes;
end;

procedure Tmdl_news.SetEditRect;
var
  R: TRect;
begin
  with retorna_TRxRichEdit(PageControl1.TabIndex) do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_news.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(retorna_TRxRichEdit(PageControl1.TabIndex).Handle, EM_EXLINEFROMCHAR, 0,
    retorna_TRxRichEdit(PageControl1.TabIndex).SelStart);
  CharPos.X := (retorna_TRxRichEdit(PageControl1.TabIndex).SelStart -
    SendMessage(retorna_TRxRichEdit(PageControl1.TabIndex).Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

function Tmdl_news.retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
begin
      Case xidxcod of
          0: Result:=re_editor1;
          //1: Result:=re_editor2;
      End;
end;

function Tmdl_news.retorna_fontName(xidxcod:Integer):TComboBox;
begin
      Case xidxcod of
          0: Result:=FontName1;
          //1: Result:=FontName2;
      End;
end;

function Tmdl_news.retorna_fontSize(xidxcod:Integer):TEdit;
begin
      Case xidxcod of
          0: Result:=FontSize1;
          //1: Result:=FontSize2;
      End;
end;

function Tmdl_news.retorna_BoldButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=BoldButton1;
          //1: Result:=BoldButton2;
      End;
end;

function Tmdl_news.retorna_ItalicButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=ItalicButton1;
          //1: Result:=ItalicButton2;
      End;
end;

function Tmdl_news.retorna_UnderlineButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=UnderlineButton1;
          //1: Result:=UnderlineButton2;
      End;
end;

function Tmdl_news.retorna_LeftAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=LeftAlign1;
          //1: Result:=LeftAlign2;
      End;
end;

function Tmdl_news.retorna_CenterAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=CenterAlign1;
          //1: Result:=CenterAlign2;
      End;
end;

function Tmdl_news.retorna_RightAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=RightAlign1;
          //1: Result:=RightAlign2;
      End;
end;

function Tmdl_news.retorna_JustifyAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=JustifyAlign1;
          //1: Result:=JustifyAlign2;
      End;
end;

function Tmdl_news.retorna_BulletsButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=BulletsButton1;
          //1: Result:=BulletsButton2;
      End;
end;

procedure Tmdl_news.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := retorna_fontName(PageControl1.TabIndex).Items[retorna_fontName(PageControl1.TabIndex).ItemIndex];
end;

procedure Tmdl_news.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(retorna_fontSize(PageControl1.TabIndex).Text);
end;

procedure Tmdl_news.monta_tableclass;
var axshowing,axcodclass2: Boolean;
    axclass2: String;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando lista de grupos';
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
end;

procedure Tmdl_news.bt_newclassClick(Sender: TObject);
var axgrpname: String;
    axshowing,xexecutaimg: Boolean;
    axcod,axcl_id: Integer; 
    xtxt3: TMemoryStream;
begin
      axgrpname:=hwsf.BtDesc('Digite o nome do grupo:');
      if (axgrpname = '') then begin
         hwsf.BtMensagem('Nome do grupo inválido.');
         Exit;
      end;
      if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then begin
         hwsf.BtMensagem('Nome do grupo já cadastrado.');
         Exit;
      end;
      //Cadastrando novo grupo
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Cadastrando grupo';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Cadastrando grupo';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      axcod_class:=0;
      for axcl_id:=0 to listaLng.count-1 do begin
         axcod:=dm.GetCodMax(LstTables.Table[0]+'_ax','codigo','');
         if axcod_class=0 then axcod_class:=axcod;
         with dm.executa do begin
              CommandText:= 'INSERT INTO '+LstTables.Table[0]+'_ax (codigo,cod_class,cod_web,cod_lng,cp1,xtp) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5)';
              Params[0].AsInteger:=axcod;
              Params[1].AsInteger:=axcod;
              Params[2].AsInteger:=AxDadosUsr.cod_web;
              Params[3].AsInteger:=listaLng.cod_lng[axcl_id];
              Params[4].AsString:=axgrpname;
              Params[5].AsString:=AxDadosUsr.axparm;;
              try
                   Execute;
              except
                   if not axshowing then loadx.Close;
                   hwsf.BtMensagem('Ocorreu algum erro.');
                   exit;
              end;
         end;
      end;
      loadx.Progressloading.position:=50;
      {xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[1]+'_ax','INST','codigo','cod_class','icon','','icon_sz','',IntToStr(axcod_class),nil,nil);
      if not xexecutaimg then begin
         if not axshowing then loadx.Close;
         hwsf.BtMensagem('Ocorreu algum erro.');
         exit;
      end;}
      loadx.Progressloading.position:=70;
      monta_tableclass;
      ComboBox_class.Text:=axgrpname;
      loadx.Progressloading.position:=100;
      loadx.lbloading.Caption:='Dados gravados com sucesso.';
      loadx.lbloading.Repaint;
      Sleep(2000);
      if not axshowing then loadx.Close;
end;

procedure Tmdl_news.bt_delclassClick(Sender: TObject);
var axshowing, axvincul, axerror: Boolean;
    axgrpname,axcodgrp: String;
begin
      axgrpname:=ComboBox_class.Text;
      if (axgrpname = '') then begin
         hwsf.BtMensagem('Nome do grupo inválido.');
         Exit;
      end;
      if (dm.ds_sql6.Locate('cp1',axgrpname,[])) then begin
         axcodgrp:= dm.ds_sql6.fieldbyname('cod_class').AsString;
      end else begin
         hwsf.BtMensagem('Nome do grupo inválido.');
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
    if not axshowing then loadx.Close;
end;

procedure Tmdl_news.PanelclassResize(Sender: TObject);
begin
    ComboBox_class.Width := Panelclass.Width-11;
    CheckBox_class.Left := (ComboBox_class.Width-CheckBox_class.Width)+ComboBox_class.Left;
end;

procedure Tmdl_news.EVsaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save1.Click;
      end;
end;

procedure Tmdl_news.bt_saveclassClick(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     if (dm.ds_sql.RecordCount>0) and (ab_cod.Caption<>'novo') then begin
         //banco de imagens
         axshowing:= loadx.Showing;
        if not axshowing then begin
           loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Excluindo álbum';
           loadx.Show;
           loadx.Update;
        end else begin
           loadx.lbloading.Caption:='Excluindo álbum';
           loadx.lbloading.Repaint;
        end;
        loadx.Progressloading.position:=10;
        ComboBox_class2.Text:= ComboBox_class.Text;
        Application.ProcessMessages;
        bt_save1.Click;
        loadx.Progressloading.position:=100;
        if not axshowing then loadx.Close;
     end;
end;

procedure Tmdl_news.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         retorna_TRxRichEdit(PageControl1.TabIndex).Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_news.validaCbClass();
begin
      if CheckBox_class.Checked then begin
         if (ComboBox_class.ItemIndex > 0) then begin
            if (dm.ds_sql6.Locate('cp1',ComboBox_class.Text,[])) then
               dm.ds_sql.Filter:='(('+xdsqlfilter+') AND (cod_class='+#39+dm.ds_sql6.fieldbyname('cod_class').AsString+#39+'))';
         end else dm.ds_sql.Filter:=xdsqlfilter;
      end;
end;

procedure Tmdl_news.CheckBox_classClick(Sender: TObject);
begin
      validaCbClass();
end;

procedure Tmdl_news.ComboBox_classKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key=#13 then validaCbClass();
end;

procedure Tmdl_news.ComboBox_classClick(Sender: TObject);
begin
      validaCbClass();
end;

function Tmdl_news.Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
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

procedure Tmdl_news.monta_uf(xselect:Boolean; xufdefault:string);
var ix_xufdefault,ix_xufcount:Integer;
begin
    With dm.ds_sql9 do begin
        if Active then Close;
        CommandText:='SELECT uf FROM '+LstTables.Table[8]+
        ' ORDER BY uf';
        Open;
        First;
        ix_xufdefault:=0;
        ix_xufcount:=0;
        xcp18_axuf.Clear;
        While not Eof do begin
            if (xufdefault = fieldbyname('uf').AsString) then begin
               ix_xufdefault:=ix_xufcount;
            end;
            xcp18_axuf.Items.Add(fieldbyname('uf').AsString);
            Inc(ix_xufcount);
            Next;
        end;
     end;
     xcp18_axuf.ItemIndex:=ix_xufdefault;
     if xselect then monta_cid(xcp18_axuf.text,'')
     else begin
        xcp18_axuf.text:='';
        xcp18_ax.Clear;
        xcp18_ax.text:='';
     end;
end;

procedure Tmdl_news.monta_cid(xuf,xciddefault:String);
var ix_xciddefault,ix_xcidcount: Integer;
begin
     With dm.ds_sql10 do begin
        if Active then Close;
        CommandText:='SELECT codigo,cidade FROM '+LstTables.Table[7]+
        ' Where uf='+#39+xuf+#39+
        ' ORDER BY cidade';
        Open;
        First;
        ix_xciddefault:=0;
        ix_xcidcount:=0;
        xcp18_ax.Clear;
        While not Eof do begin
            if (xciddefault = fieldbyname('cidade').AsString) then begin
               ix_xciddefault:=ix_xcidcount;
            end;
            xcp18_ax.Items.Add(fieldbyname('cidade').AsString);
            Inc(ix_xcidcount);
            Next;
        end;
     end;
     if (xciddefault<>'') and (ix_xciddefault = 0) then
        xcp18_ax.Text:=xciddefault
     else xcp18_ax.ItemIndex:=ix_xciddefault;
end;

procedure Tmdl_news.xcp18_axufChange(Sender: TObject);
begin
     monta_cid(xcp18_axuf.text,'');
end;

procedure Tmdl_news.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tmdl_news.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_news.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_news.DBGrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade2;
end;

procedure Tmdl_news.SpeedButton14Click(Sender: TObject);
begin
      PageControl2.TabIndex:=1;
end;

procedure Tmdl_news.SpeedButton16Click(Sender: TObject);
begin
      PageControl2.TabIndex:=0;
end;

procedure Tmdl_news.SpeedButton15Click(Sender: TObject);
begin
      PageControl2.TabIndex:=2;
end;

procedure Tmdl_news.SpeedButton18Click(Sender: TObject);
begin
      PageControl2.TabIndex:=1;
end;

procedure Tmdl_news.filtra_regiao(xbool:Bool);
begin
      if not xbool then begin
         xcp18_axuf.Text:='';
         xcp18_ax.Clear;
      end;
      Label24.Enabled:=xbool;
      Label25.Enabled:=xbool;
      xcp18_ax.Enabled:=xbool;
      xcp18_axuf.Enabled:=xbool;
end;

procedure Tmdl_news.filtra_data(xbool:Bool);
begin
      Label27.Enabled:=xbool;
      cb_dt.Enabled:=xbool;
      Label28.Enabled:=xbool;
      cb_tm.Enabled:=xbool;
      Label34.Enabled:=xbool;
      cb_rm.Enabled:=xbool;
      Label35.Enabled:=xbool;
      cb_exb.Enabled:=xbool;
      cb_exbup.Enabled:=xbool;
      Label36.Enabled:=xbool;
      if not xbool then begin
         cb_dt.Date:=Now+1;
         cb_tm.Time:=StrToTime('01:00:00');//Now+StrToTime('01:00:00');
         cb_rm.ItemIndex:=0;
         cb_exb.Text:='1';
      end;
end;

procedure Tmdl_news.RadioButton5Click(Sender: TObject);
begin
      filtra_regiao(false);
end;

procedure Tmdl_news.RadioButton4Click(Sender: TObject);
begin
      filtra_regiao(true);
      monta_uf(false,'');
end;

procedure Tmdl_news.cb_autoClick(Sender: TObject);
begin
      filtra_data(not cb_auto.Checked);
end;

procedure Tmdl_news.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


