{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions
392
Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_movtub;

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
  TCharsLnkMov = set of Char;
  Tmdl_movtub = class(TForm)
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
    ExportarImgDialog: TSavePictureDialog;
    Panel20: TPanel;
    bt_help: TSpeedButton;
    StatusBar1: TStatusBar;
    PageControlab: TPageControl;
    TabSheet_grp: TTabSheet;
    TabSheet_itens: TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    Panelgrp: TPanel;
    Panel3: TPanel;
    ToolBar2: TToolBar;
    bt_new1: TSpeedButton;
    bt_del1: TSpeedButton;
    bt_save1: TSpeedButton;
    Panel12: TPanel;
    DBGrid1: TDBGrid;
    Lb_countreg1: TLabel;
    Splitter2: TSplitter;
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
    re_editor1: TRxRichEdit;
    GroupBox1: TGroupBox;
    re_editor2: TRxRichEdit;
    Cordefundo1: TMenuItem;
    Panel8: TPanel;
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
    Panel21: TPanel;
    Panel19: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    ab_cod: TLabel;
    ab_titulo: TEdit;
    ab_default: TCheckBox;
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
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    bt_invertmv1: TCheckBox;
    ApplicationEvents1: TApplicationEvents;
    Label9: TLabel;
    ab_url: TEdit;
    Label10: TLabel;
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
    procedure EVsaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EVsave2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cordefundo1Click(Sender: TObject);
    procedure bt_invertmv1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit,xupdatebanner: Boolean;
    pathdefault,xdsqlfilter : string;
    ax_ab_cod,axcod_gal,axcod_class,ax_ms_cod,axcod_img,axcod_ent: Integer;
    LstTables: TLstTables;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xbannersz: Integer;
    xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    xampltmp2_tmp: TMemoryStream;
    procedure monta_lng;
    procedure monta_table1;
    procedure monta_table2(xnewgal,xuplng:Boolean);
    procedure addreg;
    procedure travaformImages(xtrava: Boolean);
    procedure addreg2;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure monta_table3;
    procedure atualiza_grade3;
    procedure limpaphoto3(xupdateset:Boolean);
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
    function Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
    procedure invertEdt(axIv:Boolean);
    { Private declarations }
  public
    xreceivetrad : String;
    xtimerresponse,
    xiniCodab: Integer;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_movtub: Tmdl_movtub;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd,
  umdl_richgalery_view, uBt_search_auto;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_movtub.FormClose(Sender: TObject; var Action: TCloseAction);
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
     loadx.Progressloading.position:=75;
     if dm.executa5.Active then
        dm.executa5.Close;
     if dm.executa3.Active then
        dm.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_movtub.FormCreate(Sender: TObject);
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
     loadx.Progressloading.position:=10;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_movtub.Caption:= AxDadosUsr.axtitle;
     xinit:=true;
     axcod_ent:=0;
     SendMessage(re_editor1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     SendMessage(re_editor2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     invertEdt(true);
     re_editor1.Justify;
     re_editor2.Justify;
     xbannertmp:= TMemoryStream.Create;
     xbannertmp.Clear;
     xupdatebanner:=False;
     loadx.Progressloading.position:=40;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
        bt_del1.Visible:=false;
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
     monta_lng;
     monta_table1;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_movtub.monta_lng;
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

procedure Tmdl_movtub.monta_table1;
var axshowing: Boolean;
    xfiltdatax,xfiltdata,xfiltdata2: String;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando categorias';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando categorias';
        loadx.lbloading.Repaint;
     end;
     //Monta Lista de categorias
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

procedure Tmdl_movtub.monta_table2(xnewgal,xuplng:Boolean);
var xcodgal: string;
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

procedure Tmdl_movtub.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
    ToolBar_lng1.Width:=Panel1.Width-244;
    PageControl_languagens.Width:=ToolBar_lng1.Width-61;
    ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_movtub.FormActivate(Sender: TObject);
begin
      mdl_movtub.Refresh;
      if xinit then begin
         xinit:=false;
         if (xiniCodab>0) then begin
             TabSheet_grp.TabVisible:=false;
             ToolBar_grp.Visible:=false;
             dm.ds_sql.Locate('codigo',xiniCodab,[]);
         end;
      end;
end;

procedure Tmdl_movtub.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Case key of
        VK_F1: bt_help.OnClick(self);
        VK_F9: hwsf.BtSobre;
      End;
      if (Shift = [ssCtrl]) and (Key=VK_F4) then
        Close;
end;

procedure Tmdl_movtub.addreg;
begin
     ab_cod.Caption:='novo';
     ax_ab_cod:=0;
     ab_titulo.Text:='';
     re_editor1.Clear;
     ab_default.Checked:=true;
     travaformImages(false);
end;

procedure Tmdl_movtub.travaformImages(xtrava: Boolean);
begin
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

procedure Tmdl_movtub.addreg2;
begin
     ms_cod.Caption:='novo';
     ax_ms_cod:=0;
     ms_titulo.Text:='';
     ab_url.Text:='';
     re_editor2.Clear;
end;

procedure Tmdl_movtub.atualiza_grade;
var axshowing: Boolean;
    axlocid: Integer;
    st_stream: TMemoryStream;
begin
     //categorias
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando categoria';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando categoria';
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
            loadx.Progressloading.position:=20;
            ab_cod.Caption:=fieldbyname('cod_gal').AsString;
            ax_ab_cod:=fieldbyname('codigo').AsInteger;
            if axcod_gal<>fieldbyname('cod_gal').AsInteger then
               axcod_gal:=fieldbyname('cod_gal').AsInteger;
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
            loadx.Progressloading.position:=50;
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
      try loadx.Close; except end;
end;

procedure Tmdl_movtub.atualiza_grade2;
var axshowing: Boolean;
    st_stream : TMemoryStream;
begin
     //banco de links
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando banco de links';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando banco de links';
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
            if (fieldbyname('url').AsString<>'') then
                ab_url.Text:='http://www.youtube.com/watch?v='+fieldbyname('url').AsString
            else ab_url.Text:='';
            loadx.Progressloading.position:=100;
         end;
      end;
      Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      try loadx.Close; except end;
end;

procedure Tmdl_movtub.bt_new1Click(Sender: TObject);
begin
      addreg;
      ab_titulo.SetFocus;
end;

procedure Tmdl_movtub.bt_new2Click(Sender: TObject);
begin
      addreg2;
      ms_titulo.SetFocus;
end;

procedure Tmdl_movtub.bt_del1Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de linkgs
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo categoria';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo categoria';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      Application.ProcessMessages;
      if (dm.ds_sql.RecordCount>0) and (ab_cod.Caption<>'novo') then begin
        axcod:= StrToInt(ab_cod.Caption) + 1;
        if dm.deleta_reg(LstTables.Table[0],'cod_gal',ab_cod.Caption,true) then begin
           Application.ProcessMessages;
           loadx.lbloading.Caption:='Excluindo';
           loadx.lbloading.Repaint;
           loadx.Progressloading.position:=25;
           loadx.Progressloading.position:=50;
           dm.deleta_reg(LstTables.Table[2],'cod_gal',ab_cod.Caption,false);
           loadx.Progressloading.position:=75;
           monta_table2(False,True);
           loadx.Progressloading.position:=100;
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

procedure Tmdl_movtub.bt_save1Click(Sender: TObject);
var axcod,axcod2,axgal_id,cod_model,xidxlng,xid_default,axcodgrp,ax_ab_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1,axgrpname: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
begin
     cod_model:=0;
     ax_ab_codinsert:=0;
     if ab_titulo.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        ab_titulo.SetFocus;
        exit;
     end;
     axcodgrp:=0;
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
            Params[0].AsInteger:=cod_model;
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
     Application.ProcessMessages;
     travaformImages(true);
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
     Application.ProcessMessages;
     dm.ds_sql.Locate('codigo',ax_ab_codinsert,[]);
     atualiza_grade;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_movtub.ComboBox_webChange(Sender: TObject);
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

procedure Tmdl_movtub.bt_save2Click(Sender: TObject);
var axcod,axcod2,axgal_id,xidxlng,xid_default,axcodinsert : integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1: String;
    xtxt2: TStringList;
    xtxt3: TMemoryStream;
    xtexturlidyt:String;

    function ReplaceIDYoutube(ximputtext:String):String;
    var xreturnidYe,ximputtextTMP,xresultextTMP,xresultextTMP2: String;
        xreturnidYeError,xtestlk,xtestlkError: Boolean;
        xidreplaceTMP,xidrepSizeTMP,xidYt: Integer;
        VCharsLnkMov: TCharsLnkMov;
    begin
	      xreturnidYe:='';
	      xreturnidYeError:=true;
      	if ((Copy(ximputtext,0,31) = 'http://www.youtube.com/watch?v=') or
        		(Copy(ximputtext,0,24) = 'www.youtube.com/watch?v=')) then begin
           xidrepSizeTMP:=Length(ximputtext);
		       if (Copy(ximputtext,0,24) = 'www.youtube.com/watch?v=') then
        			xidreplaceTMP:=25
           else xidreplaceTMP:=32;
		       ximputtextTMP:= Copy(ximputtext,xidreplaceTMP,xidrepSizeTMP);
         	 xidrepSizeTMP:= Length(ximputtextTMP)+1;
           xresultextTMP:='';
       		 xresultextTMP2:='';
           VCharsLnkMov:= ['A'..'Z', 'a'..'z', '0'..'9', '_', '-'];
		   		 xtestlk:= false;
		   		 xtestlkError:= false;
		   		 xidYt:= 1;
		   		 while (xtestlk<>true) do begin
			   		 if ((Copy(ximputtextTMP,xidYt,1) = '&') or (xidYt = xidrepSizeTMP)) then begin
				   		 xtestlk:=true;
			   		 end else begin
				   		 xresultextTMP2:= Copy(ximputtextTMP,xidYt,1);
               if xresultextTMP2[1] in VCharsLnkMov then begin
					   		 xresultextTMP:=xresultextTMP+xresultextTMP2;
				   		 end else begin
					   		 xtestlkError:=true;
					   		 xtestlk:=true;
				   		 end;
			   		 end;
			   		 Inc(xidYt);
		   		 end;
		   		 xidrepSizeTMP:=Length(xresultextTMP);
		   		 if ((xidrepSizeTMP > 0) and (not xtestlkError)) then begin
			   		 xreturnidYeError:= false;
			   		 xreturnidYe:= xresultextTMP;
		   		 end;
      	end;
      	if (xreturnidYeError) then
		   		 xreturnidYe:= 'URL/Link Youtube inválido!!!';
	   		Result:=xreturnidYe;
    end;
begin
     axcodinsert:=0;
     if ab_cod.Caption = 'novo' then begin
        hwsf.BtMensagem('É necessário adicionar/selecionar uma categoria.');
        exit;
     end;
     if ms_titulo.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        ms_titulo.SetFocus;
        exit;
     end;
     xtexturlidyt:=ReplaceIDYoutube(ab_url.Text);
     if (xtexturlidyt = 'URL/Link Youtube inválido!!!') then begin
        hwsf.BtMensagem(xtexturlidyt);
        ab_url.SetFocus;
        exit;
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
                 CommandText:= 'INSERT INTO '+LstTables.Table[2]+' (codigo,cod_img,cod_gal,cod_lng,descricao,textft,blb,url) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_img;
                 Params[2].AsInteger:=axcod_gal;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsString:=listaAux.ms_descricao[axgal_id];
                 Params[5].Assign(xtxt2);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[6].LoadFromStream(xtxt3,ftblob);
                 Params[7].AsString:=xtexturlidyt;
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
            CommandText:= 'UPDATE '+LstTables.Table[2]+' SET descricao=:p0,textft=:p1,blb=:p2,url=:p3 '+
                       'WHERE codigo=:p4';
            Params[0].AsString:=ms_titulo.Text;
            loadx.Progressloading.position:=20;
            Params[1].Assign(xtxt2);
            xtxt3.Seek(0,soFromBeginning);
            Params[2].LoadFromStream(xtxt3,ftblob);
            Params[3].AsString:=xtexturlidyt;
            Params[4].AsInteger:=ax_ms_cod;
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
     Application.ProcessMessages;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     Application.ProcessMessages;
     dm.ds_sql3.Locate('codigo',axcodinsert,[]);
     atualiza_grade2;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Sleep(2000);
     try loadx.Close; except end;
end;

procedure Tmdl_movtub.getBanner;
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

procedure Tmdl_movtub.abretmpbanner;
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

procedure Tmdl_movtub.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_movtub.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_movtub.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_movtub.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_movtub.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade;
end;

procedure Tmdl_movtub.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tmdl_movtub.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_movtub.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_movtub.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade2;
end;

function Tmdl_movtub.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_movtub.PageControl_languagensChange(Sender: TObject);
begin
      if PageControl1.TabIndex=0 then begin
         ab_cod.Caption:='0';
         ms_cod.Caption:='0';
         xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
         monta_table1;
         if (PageControlab.TabIndex = 1) then monta_table2(False,True);
         if PageControl1.TabIndex=1 then monta_table3;
      end;
end;

procedure Tmdl_movtub.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_movtub.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_movtub.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_movtub.save_cfg(xcodlng: Integer);
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
             //lista de categorias
             if cp1_0.Checked then Params[0].AsInteger:= 0
             else Params[0].AsInteger:= 1;
             Params[1].AsInteger:= cp2.ItemIndex;
             if cp3.Checked then Params[2].AsInteger:= 0
             else Params[2].AsInteger:= 1;
             Params[3].AsInteger:= cp4.ItemIndex;
             if cp5.Checked then Params[4].AsInteger:= 0
             else Params[4].AsInteger:= 1;
             //banco de links
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

procedure Tmdl_movtub.monta_table3;
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
     //Monta Lista de categorias
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
                               //lista de categorias
                               Params[3].AsInteger:= axcp1;
                               Params[4].AsInteger:= axcp2;
                               Params[5].AsInteger:= axcp3;
                               Params[6].AsInteger:= axcp4;
                               Params[7].AsInteger:= axcp5;
                               //banco de links
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

procedure Tmdl_movtub.atualiza_grade3;
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
            //categorias
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

procedure Tmdl_movtub.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_movtub.bt_open3Click(Sender: TObject);
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
         end else if ((xfilext='.swf') or (xfilext='.flv') or (xfilext='.png')) then begin
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

procedure Tmdl_movtub.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
end;

procedure Tmdl_movtub.bt_save3Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens.TabIndex]);
end;

procedure Tmdl_movtub.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then begin
         monta_table3;
      end;
end;

procedure Tmdl_movtub.MenuItem1Click(Sender: TObject);
var axshowing: Boolean;
begin
     //banco de links excluir todas as fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo registros';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo registros';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm.ds_sql3.RecordCount>0) and (ms_cod.Caption<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[2],'cod_gal',ab_cod.Caption,true) then begin
           loadx.Progressloading.position:=75;
           loadx.Progressloading.position:=100;
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade2;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_movtub.bt_del2Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de links
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo Link';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo Link';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm.ds_sql3.RecordCount>0) and (ms_cod.Caption<>'novo') then begin
        axcod:= StrToInt(ms_cod.Caption) + 1;
        if dm.deleta_reg(LstTables.Table[2],'cod_img',ms_cod.Caption,true) then begin
           loadx.Progressloading.position:=50;
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

procedure Tmdl_movtub.ComboBox_entChange(Sender: TObject);
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

procedure Tmdl_movtub.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_movtub.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_movtub.ToolBar_grpResize(Sender: TObject);
begin
     cb_group.Width := ToolBar_grp.Width - 50;
end;

procedure Tmdl_movtub.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with retorna_TRxRichEdit(PageControlab.TabIndex) do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_movtub.Recortar1Click(Sender: TObject);
begin
     //recortar
     retorna_TRxRichEdit(PageControlab.TabIndex).CutToClipboard;
end;

procedure Tmdl_movtub.Copiar1Click(Sender: TObject);
begin
     //copiar
     retorna_TRxRichEdit(PageControlab.TabIndex).CopyToClipboard;
end;

procedure Tmdl_movtub.Colar1Click(Sender: TObject);
begin
      //colar
     retorna_TRxRichEdit(PageControlab.TabIndex).PasteFromClipboard;
end;

procedure Tmdl_movtub.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_movtub.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not retorna_BoldButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_movtub.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not retorna_ItalicButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_movtub.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not retorna_UnderlineButton(PageControlab.TabIndex).Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_movtub.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph.Numbering := TRxNumbering(not retorna_BulletsButton(PageControlab.TabIndex).Down);
end;

procedure Tmdl_movtub.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControlab.TabIndex).Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_movtub.esquerdo1Click(Sender: TObject);
begin
     retorna_LeftAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_movtub.centro1Click(Sender: TObject);
begin
     retorna_CenterAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_movtub.direita1Click(Sender: TObject);
begin
     retorna_RightAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_movtub.justificado1Click(Sender: TObject);
begin
     retorna_JustifyAlign(PageControlab.TabIndex).Click;
end;

procedure Tmdl_movtub.re_editorKeyDown(Sender: TObject; var Key: Word;
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

procedure Tmdl_movtub.SelectionChange(Sender: TObject);
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

function Tmdl_movtub.CurrText: TRxTextAttributes;
begin
  if retorna_TRxRichEdit(PageControlab.TabIndex).SelLength > 0 then Result := retorna_TRxRichEdit(PageControlab.TabIndex).SelAttributes
  else Result := retorna_TRxRichEdit(PageControlab.TabIndex).DefAttributes;
end;

procedure Tmdl_movtub.SetEditRect;
var
  R: TRect;
begin
  with retorna_TRxRichEdit(PageControlab.TabIndex) do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_movtub.UpdateCursorPos;
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

function Tmdl_movtub.retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
begin
      Case xidxcod of
          0: Result:=re_editor1;
          1: Result:=re_editor2;
      End;
end;

function Tmdl_movtub.retorna_fontName(xidxcod:Integer):TComboBox;
begin
      Case xidxcod of
          0: Result:=FontName1;
          1: Result:=FontName2;
      End;
end;

function Tmdl_movtub.retorna_fontSize(xidxcod:Integer):TEdit;
begin
      Case xidxcod of
          0: Result:=FontSize1;
          1: Result:=FontSize2;
      End;
end;

function Tmdl_movtub.retorna_BoldButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=BoldButton1;
          1: Result:=BoldButton2;
      End;
end;

function Tmdl_movtub.retorna_ItalicButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=ItalicButton1;
          1: Result:=ItalicButton2;
      End;
end;

function Tmdl_movtub.retorna_UnderlineButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=UnderlineButton1;
          1: Result:=UnderlineButton2;
      End;
end;

function Tmdl_movtub.retorna_LeftAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=LeftAlign1;
          1: Result:=LeftAlign2;
      End;
end;

function Tmdl_movtub.retorna_CenterAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=CenterAlign1;
          1: Result:=CenterAlign2;
      End;
end;

function Tmdl_movtub.retorna_RightAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=RightAlign1;
          1: Result:=RightAlign2;
      End;
end;

function Tmdl_movtub.retorna_JustifyAlign(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=JustifyAlign1;
          1: Result:=JustifyAlign2;
      End;
end;

function Tmdl_movtub.retorna_BulletsButton(xidxcod:Integer):TToolButton;
begin
      Case xidxcod of
          0: Result:=BulletsButton1;
          1: Result:=BulletsButton2;
      End;
end;

procedure Tmdl_movtub.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := retorna_fontName(PageControlab.TabIndex).Items[retorna_fontName(PageControlab.TabIndex).ItemIndex];
end;

procedure Tmdl_movtub.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(retorna_fontSize(PageControlab.TabIndex).Text);
end;

procedure Tmdl_movtub.PageControlabChange(Sender: TObject);
var axcod,xidxcb,xidxcbsum: Integer;
    axshowing: Boolean;
begin
      if (PageControlab.TabIndex = 1) then begin
         cb_group.Clear;
         With dm.ds_sql do begin
             if (recordcount <= 0) then begin
                hwsf.BtMensagem('Não há categorias cadastradas.');
                PageControlab.TabIndex:=0;
                exit;
             end else if ((ab_cod.Caption = '0') or (ab_cod.Caption = 'novo')) then begin
                hwsf.BtMensagem('Antes de inserir os itens grave as informações da categoria.');
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
      end;
end;

procedure Tmdl_movtub.cb_groupChange(Sender: TObject);
begin
      if ((cb_group.Items.Count > 0) and (cb_group.Text <> '')) then begin
          if dm.ds_sql.Locate('descricao',cb_group.Text,[]) then begin
             atualiza_grade;
             monta_table2(False,True);
          end;
      end;
end;

procedure Tmdl_movtub.EVsaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save1.Click;
      end;
end;

procedure Tmdl_movtub.EVsave2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save2.Click;
      end;
end;

procedure Tmdl_movtub.Cordefundo1Click(Sender: TObject);
begin
      //cor de fundo
      if ColorDialog1.Execute then begin
         retorna_TRxRichEdit(PageControlab.TabIndex).Color := ColorDialog1.Color;
     end;
end;

function Tmdl_movtub.Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
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

procedure Tmdl_movtub.bt_invertmv1Click(Sender: TObject);
begin
      invertEdt(false);
end;

procedure Tmdl_movtub.invertEdt(axIv:Boolean);
var tx : TStringList;
begin
      try
        tx := TStringList.Create;
        tx.Clear;
        if not axIv then begin
           tx.Add(BoolToStr(bt_invertmv1.Checked));
           if FileExists('rchgrt.hws') then DeleteFile('rchgrt.hws');
           tx.SaveToFile('rchgrt.hws');
        end else begin
           if FileExists('rchgrt.hws') then begin
              tx.LoadFromFile('rchgrt.hws');
              bt_invertmv1.Checked:=StrToBool(tx.Strings[0]);
           end;
        end;
      finally
        tx.Free;
      end;
      if bt_invertmv1.Checked then begin
         re_editor1.Color:=clBlack;
         re_editor1.Font.Color:=clWhite;
         re_editor2.Color:=clBlack;
         re_editor2.Font.Color:=clWhite;
      end else begin
         re_editor1.Color:=clWhite;
         re_editor1.Font.Color:=clBlack;
         re_editor2.Color:=clWhite;
         re_editor2.Font.Color:=clBlack;
      end;
end;

procedure Tmdl_movtub.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


