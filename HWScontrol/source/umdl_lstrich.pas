{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_lstrich;

//{$LONGSTRINGS ON}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, 
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, Spin, ImgList, CheckLst, ValEdit, yupack, AppEvnts,
  SHDocVw, ActiveX, mshtml;

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
  TlistaLng = record
    cod_lng : array[0..20] of Integer;
    sigla : array[0..20] of String;
    trd : array[0..20] of String;
    count : integer;
  End;
  TlistaAux = record
    ab_descricao : array[0..20] of String;
    ab_textft : array[0..20] of TStringList;
    ms_descricao : array[0..20] of String;
    ms_textft : array[0..20] of TStringList;
  End;
  Tmdl_lstrich = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    ImportarImgDialog: TOpenPictureDialog;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel16: TPanel;
    ToolBar5: TToolBar;
    bt_save4: TSpeedButton;
    OpenBannerDialog: TOpenPictureDialog;
    GroupBox7: TGroupBox;
    Label_size3: TLabel;
    swf_banner: TShockwaveFlash;
    Panel17: TPanel;
    Label21: TLabel;
    Label3: TLabel;
    cp14: TComboBox;
    ToolBar7: TToolBar;
    bt_open3: TSpeedButton;
    bt_limpar3: TSpeedButton;
    cp15: TComboBox;
    ToolbarImages: TImageList;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    CoolBar2: TCoolBar;
    Panel11: TPanel;
    Label12: TLabel;
    Label24: TLabel;
    combofont: TComboBox;
    ComboSize: TComboBox;
    ToolBar4: TToolBar;
    btnCut: TSpeedButton;
    btnCopy: TSpeedButton;
    btnPaste: TSpeedButton;
    ToolBar6: TToolBar;
    btnAlignLeft: TSpeedButton;
    btnCenter: TSpeedButton;
    btnAlignRight: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ToolBar8: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ToolBar9: TToolBar;
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
    SpeedButton15: TSpeedButton;
    btnHR: TSpeedButton;
    SpeedButton14: TSpeedButton;
    ComboSpeedButton3: TComboSpeedButton;
    SpeedButton50: TSpeedButton;
    ComboSpeedButton2: TComboSpeedButton;
    ToolBar19: TToolBar;
    ComboSpeedButton1: TComboSpeedButton;
    PageControltx: TPageControl;
    TabSheet3: TTabSheet;
    Label25: TLabel;
    WebBrowser1: TWebBrowser;
    TabSheet4: TTabSheet;
    RxRichEdit_send: TRxRichEdit;
    TabSheet5: TTabSheet;
    WebBrowserView: TWebBrowser;
    GroupBox3: TGroupBox;
    cfg_cod: TLabel;
    cfg_title: TEdit;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolBar_web: TToolBar;
    Label7: TLabel;
    ComboBox_web: TComboBox;
    PopupMenu_tabela: TPopupMenu;
    InserirTabela1: TMenuItem;
    N4: TMenuItem;
    table_lin: TMenuItem;
    table_col: TMenuItem;
    table_bor: TMenuItem;
    table_lar: TMenuItem;
    table_ce1: TMenuItem;
    table_ce2: TMenuItem;
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
    Panel2: TPanel;
    ToolBar2: TToolBar;
    bt_save1: TSpeedButton;
    bt_new1: TSpeedButton;
    ToolBar_lng: TToolBar;
    Label16: TLabel;
    PageControl_languagens2: TPageControl;
    lngtbc1: TTabSheet;
    lngtbc2: TTabSheet;
    lngtbc3: TTabSheet;
    lngtbc4: TTabSheet;
    lngtbc5: TTabSheet;
    lngtbc6: TTabSheet;
    lngtbc7: TTabSheet;
    lngtbc8: TTabSheet;
    lngtbc9: TTabSheet;
    lngtbc10: TTabSheet;
    lngtbc11: TTabSheet;
    lngtbc12: TTabSheet;
    lngtbc13: TTabSheet;
    lngtbc14: TTabSheet;
    lngtbc15: TTabSheet;
    lngtbc16: TTabSheet;
    lngtbc17: TTabSheet;
    lngtbc18: TTabSheet;
    lngtbc19: TTabSheet;
    lngtbc20: TTabSheet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Splitter1Moved(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure bt_open3Click(Sender: TObject);
    procedure bt_limpar3Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure PageControl_languagens2Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure KeyPressChange(Sender: TObject; var Key: Char);
    procedure ComboBox_webChange(Sender: TObject);
    procedure cfg_titleChange(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
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
    procedure ComboSpeedButton1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure btnHRClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure ComboSpeedButton3Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure ComboSpeedButton2Click(Sender: TObject);
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
    procedure NoRepetir1Click(Sender: TObject);
    procedure repetirimagem1Click(Sender: TObject);
    procedure RepetirX1Click(Sender: TObject);
    procedure RepetirY1Click(Sender: TObject);
    procedure Fixarfundo1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure CorLinkativo1Click(Sender: TObject);
    procedure CorLinkvisitado1Click(Sender: TObject);
    procedure PageControltxChange(Sender: TObject);
    procedure bt_new1Click(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
    procedure WebBrowser1CommandStateChange(Sender: TObject;
      Command: Integer; Enable: WordBool);
    procedure FormActivate(Sender: TObject);
  private
    //menus
    xinit,xupdatebanner: Boolean;
    pathdefault : string;
    LstTables: TLstTables;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xcodunit: Integer;
    xbannersz: Integer;
    xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    ComboBox_abCod,ComboBox_lstimgCod: TStringList;
    //webbrowser
    PageControltxLast: Integer;
    bt_save1_on: Boolean;
    //functions
    procedure addreg;
    procedure monta_table1;
    procedure atualiza_grade;
    procedure monta_table3;
    procedure atualiza_grade3;
    procedure limpaphoto3(xupdateset:Boolean);
    procedure getBanner;
    procedure abretmpbanner;
    function retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
    procedure save_cfg(xcodlng: Integer; xExibirrx: Boolean);
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
    mv_mouse: TPoint;
    cp_mouse: bool;
    processoand: Boolean;
    xreceivetrad : String;
    xtimerresponse : Integer;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_lstrich: Tmdl_lstrich;
  HTMLDocumento:IHTMLDocument2;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd,
  umdl_inserttable;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_lstrich.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
     if bt_save1.Enabled then begin
        if hwsf.BtConfirma('Salvar alterações?') then begin
           bt_save1.Click;
        end;
     end;
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
     if dm.ds_sql3.Active then begin
        dm.ds_sql3.Filter:='';
        dm.ds_sql3.Filtered:=false;
        dm.ds_sql3.Close;
     end;
     loadx.Progressloading.position:=75;
     if dm.ds_sql4.Active then begin
        dm.ds_sql4.Filter:='';
        dm.ds_sql4.Filtered:=false;
        dm.ds_sql4.Close;
     end;
     loadx.Progressloading.position:=100;
     if dm.executa3.Active then dm.executa3.Close;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_lstrich.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream;
    axid_web,axid_web2,xforcps: integer;
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
     xcodunit:=0;
     ComboBox_abCod:= TStringList.Create;
     ComboBox_lstimgCod:= TStringList.Create;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_lstrich.Caption := AxDadosUsr.axtitle;
     xinit:=true;
     PageControltxLast:=-1;
     bt_save1_on:=false;
     loadx.Progressloading.position:=25;
     WebBrowserView.Navigate('about:blank');
     WebBrowser1.Navigate('about:blank');
     (WebBrowser1.Document as IHTMLDocument2).designMode := 'On';
     resetWebBrowse;
     xbannertmp:= TMemoryStream.Create;
     xupdatebanner:=False;
     processoand:=false;
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
     //Busca tabelas
     LstTables.Count:=0;
     axstr_filtro_stream:= TMemoryStream.Create;
     loadx.Progressloading.position:=50;
     With dm.ds_sql11 do begin
          //CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
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
                dm.executa.Close;
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
     loadx.Progressloading.position:=75;
     monta_table1;
     loadx.Progressloading.position:=90;
     monta_table3;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_lstrich.monta_table1;
var listaLng_id,axcoddefault,xid_default: Integer;
    axshowing: Boolean;
    //inclui linguagens
    axListInsertLng,xtxt2: TStringList;
    axcod,axInc_codgal,axInc_codpsn: Integer;
    xtxt1,axInc_pub,axInc_filter: String;
    axInc_traduzir: Boolean;
    xtotalreg: Integer;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando lista';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando lista';
        loadx.lbloading.Repaint;
     end;
     //MONTA LINGUAGENS
     if dm.ds_sql.Active then begin
        for listaLng_id:=0 to listaLng.count do begin
            listaLng.cod_lng[listaLng_id]:=0;
            listaLng.sigla[listaLng_id]:='';
            listaLng.trd[listaLng_id]:='';
            retorna_TTabSheet2(listaLng_id).TabVisible:=false;
            retorna_TTabSheet2(listaLng_id).Caption:='';
            listaAux.ab_descricao[listaLng_id]:='';
            listaAux.ab_textft[listaLng_id].Free;
            listaAux.ms_descricao[listaLng_id]:='';
            listaAux.ms_textft[listaLng_id].Free;
        end;
        listaAux.ab_textft[0].Free;
        listaAux.ms_textft[0].Free;
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
          First;
          axcoddefault:=0;
          while not Eof do begin
                if axcoddefault=0 then axcoddefault:=listaLng.count;
                if fieldbyname('trd').AsString='English' then xid_default:=listaLng.count;
                listaAux.ab_textft[listaLng.count]:=TStringList.Create;
                listaAux.ms_textft[listaLng.count]:=TStringList.Create;
                listaLng.cod_lng[listaLng.count]:= fieldbyname('cod_lng').AsInteger;
                listaLng.sigla[listaLng.count]:= fieldbyname('sigla').AsString;
                listaLng.trd[listaLng.count]:= fieldbyname('trd').AsString;
                retorna_TTabSheet2(listaLng.count).TabVisible:=true;
                //retorna_TTabSheet2(listaLng.count).PageIndex:=listaLng.count;
                retorna_TTabSheet2(listaLng.count).Caption:=fieldbyname('descricao').AsString;
                Inc(listaLng.count);
                Next;
          end;
          Close;
     end;
     //Monta Lista de álbuns
     With dm.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                                ' ORDER BY codigo';
          Open;
          if not Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then
             First;
          Filter:='';
          Filtered:=true;
     end;
     try loadx.Close; except end;
end;

procedure Tmdl_lstrich.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Case key of
        //VK_F1: bt_help.Click; //help
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

procedure Tmdl_lstrich.atualiza_grade;
var axshowing,xuplng: Boolean;
    axlocid,xid_ab: Integer;
    xStreamMSG: TMemoryStream;
    xStringMSG: TStringList;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
         xcodunit:=0;
      end else begin
         with dm.ds_sql do begin
            if xcodunit=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            resetWebBrowse;
            xcodunit:=fieldbyname('codigo').AsInteger;
            xStreamMSG:= TMemoryStream.Create;
            xStreamMSG.Clear;
            xStreamMSG.Position:=0;
            xStringMSG:= TStringList.Create;
            xStringMSG.Clear;
            xStringMSG.Assign(fieldbyname('txt'));
            if xStringMSG.Count>0 then
               xStringMSG.SaveToStream(xStreamMSG);
            loadx.Progressloading.position:=25;
            xStreamMSG.Position:=0;
            (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(xStreamMSG,soReference));
            xStreamMSG.free;
            xStringMSG.Free;
            loadx.Progressloading.position:=50;
            //bt_save1.Enabled:=false;
            //bt_save1_on:=true;
            atualiza_grade3;
         end;
      end;
      try loadx.Close; except end;
end;

procedure Tmdl_lstrich.getBanner;
begin
     xbannertmp.Clear;
     With dm.executa8 do begin
        CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[1]+' WHERE codigo='+#39+cfg_cod.Caption+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('cp12')).SaveToStream(xbannertmp);
           Label_size3.Caption:=Formatfloat('0',(fieldbyname('cp13').AsInteger/1000))+' kb';
        end;
        Close;
     end;
     abretmpbanner;
end;

procedure Tmdl_lstrich.abretmpbanner;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xbannertmp.Seek(0,soFromBeginning);
    if xbannertmp.Size <= 0 then begin
       swf_banner.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfil53.tmp';
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
        hwsf.BtMensagem('Ocorreu algum erro ao abrir o banner.');
    end;
end;

procedure Tmdl_lstrich.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53; 
end;

function Tmdl_lstrich.retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
begin
      Case xidxcod of
          0: Result:=lngtbc1;
          1: Result:=lngtbc2;
          2: Result:=lngtbc3;
          3: Result:=lngtbc4;
          4: Result:=lngtbc5;
          5: Result:=lngtbc6;
          6: Result:=lngtbc7;
          7: Result:=lngtbc8;
          8: Result:=lngtbc9;
          9: Result:=lngtbc10;
          10: Result:=lngtbc11;
          11: Result:=lngtbc12;
          12: Result:=lngtbc13;
          13: Result:=lngtbc14;
          14: Result:=lngtbc15;
          15: Result:=lngtbc16;
          16: Result:=lngtbc17;
          17: Result:=lngtbc18;
          18: Result:=lngtbc19;
          19: Result:=lngtbc20;
      End;
end;

procedure Tmdl_lstrich.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_lstrich.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_lstrich.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_lstrich.save_cfg(xcodlng: Integer; xExibirrx: Boolean);
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
             CommandText:= 'UPDATE '+LstTables.Table[1]+' SET cp11=:p0,cp14=:p1,cp15=:p2,cp16=:p3 '+
                           'WHERE codigo=:p4';
             loadx.Progressloading.position:=30;
             Params[0].AsString:= cfg_title.Text;
             Params[1].AsInteger:= cp14.ItemIndex;
             Params[2].AsInteger:= cp15.ItemIndex;
             Params[3].AsString:= AxDadosUsr.axparm;
             Params[4].AsInteger:=StrtoInt(cfg_cod.Caption);
             loadx.Progressloading.position:=50;
     end;
     try
          loadx.Progressloading.position:=70;
          dm.executa.Execute;
          loadx.Progressloading.position:=90;
     except
          try loadx.Close; except end;
          if xExibirrx then
             hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     if xupdatebanner then begin
        xbannertmp.Seek(0,soFromBeginning);
        xupdatebanner:=dm.PostBinaryStream(LstTables.Table[1],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
     end;
     xupdatebanner:=False;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     if xExibirrx then Sleep(2000);
     try loadx.Close; except end;
     bt_save1.Enabled:=false;
end;

procedure Tmdl_lstrich.monta_table3;
var listaLng_id,axcoddefault,xid_default: Integer;
    axshowing: Boolean;
    //inclui linguagens
    axListInsertLng: TStringList;
    axcod: Integer;
    xtxt1: String;
    axInc_traduzir: Boolean;
    xtotalreg,xIncludeCfg: Integer;
    axBannerStrm: TMemoryStream;
    axBannersz,axIdlng: Integer;
    banner_title : array[0..20] of String;
    axcp1: String;
    axcp14,axcp15: Integer;
    axcp18: TStringList;
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
          CommandText:= 'SELECT codigo,cod_web,cod_lng,cp11,cp14,cp15,cp16 FROM '+LstTables.Table[1]+
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
                   axBannersz:=0;
                   axcp18:= TStringList.Create;
                   if xIncludeCfg=1 then begin
                      if Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                         xtxt1:= fieldbyname('cp11').AsString;
                         axcp14:= fieldbyname('cp14').AsInteger;
                         axcp15:= fieldbyname('cp15').AsInteger;
                         With dm.executa8 do begin
                              CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[1]+' WHERE codigo='+#39+dm.ds_sql5.fieldbyname('codigo').AsString+#39;
                              Open;
                              if not fields[0].IsNull then begin
                                 TBlobField(FieldByName('cp12')).SaveToStream(axBannerStrm);
                                 axBannerStrm.Seek(0,soFromBeginning);
                                 axBannersz:=fieldbyname('cp13').AsInteger;
                              end;
                              Close;
                         end;
                      end;
                   end else begin
                      if (copy(AxDadosUsr.axtitle,1,10) = 'HWScontrol') then
                          xtxt1:= copy(AxDadosUsr.axtitle,12,length(AxDadosUsr.axtitle))
                      else xtxt1:= AxDadosUsr.axtitle;
                      cfg_title.Text:=xtxt1;
                      axcp14:= 0;
                      axcp15:= 0;
                   end;
                   loadx.Progressloading.position:=80;
                   //traduzindo textos
                   if axInc_traduzir then begin
                            loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(axcoddefault).Caption;
                            loadx.lbloading.Repaint;
                            if (xid_default=axcoddefault) then begin
                               banner_title[xid_default]:=xtxt1;
                            end else begin
                               banner_title[axcoddefault]:=xtxt1;
                               loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(xid_default).Caption;
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
                                   loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(StrToInt(axListInsertLng.Strings[listaLng_id])).Caption;
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
                          axcod:=dm.GetCodMax(LstTables.Table[1],'codigo','');
                          with dm.executa do begin
                               CommandText:= 'INSERT INTO '+LstTables.Table[1]+' (codigo,cod_web,cod_lng,cp11,cp14,cp15,cp16) '+
                                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
                               Params[0].AsInteger:=axcod;
                               loadx.Progressloading.position:=20;
                               Params[1].AsInteger:=AxDadosUsr.cod_web;
                               Params[2].AsInteger:=listaLng.cod_lng[StrToInt(axListInsertLng.Strings[listaLng_id])];
                               loadx.Progressloading.position:=30;
                               axIdlng:=StrToInt(axListInsertLng.Strings[listaLng_id]);
                               Params[3].AsString:= banner_title[axIdlng];
                               Params[4].AsInteger:= axcp14;
                               Params[5].AsInteger:= axcp15;
                               Params[6].AsString:= AxDadosUsr.axparm;
                               Execute;
                          end;
                          xbannertmp.Seek(0,soFromBeginning);
                          xupdatebanner:=dm.PostBinaryStream(LstTables.Table[1],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
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

procedure Tmdl_lstrich.atualiza_grade3;
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
         if Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then begin
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
            cp14.ItemIndex:=fieldbyname('cp14').AsInteger;
            cp15.ItemIndex:=fieldbyname('cp15').AsInteger;
            loadx.Progressloading.position:=50;
         end else begin
            try loadx.Close; except end;
            exit;
         end;
      end;
      getBanner;
      //bt_save1.Enabled:=false;
      //bt_save1_on:=true;
      try loadx.Close; except end;
end;

procedure Tmdl_lstrich.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstrich.bt_open3Click(Sender: TObject);
var xfilext: String;
    xerror: Boolean;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    axshowing: Boolean;
begin
      if OpenBannerDialog.Execute then begin
         if not bt_save1.Enabled then
            bt_save1.Enabled:=true;
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
         xfilext:=ExtractFileExt(OpenBannerDialog.FileName);
         xerror:=false;
         if (xfilext='.bmp') then begin
            try
               codJpeg:= TJPEGImage.Create;
               codBitmap:= TBitmap.Create;
               codBitmap.LoadFromFile(ImportarImgDialog.FileName);
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
         end else if (xfilext='.swf') then begin
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

procedure Tmdl_lstrich.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
end;

procedure Tmdl_lstrich.bt_save4Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens2.TabIndex],true);
end;

procedure Tmdl_lstrich.PageControl_languagens2Change(Sender: TObject);
begin
      if (not xinit) then begin
         if PageControl1.TabIndex=1 then begin
            atualiza_grade3;
         end else begin
            if bt_save1.Enabled then begin
             if hwsf.BtConfirma('Salvar alterações?') then
                bt_save1.Click;
            end;
            if not dm.ds_sql.Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then
               dm.ds_sql.First;
            atualiza_grade;
         end;
      end;
end;

procedure Tmdl_lstrich.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade3;
      //ToolBar_lng.Visible:=(PageControl1.TabIndex>0);
end;

procedure Tmdl_lstrich.KeyPressChange(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

function Tmdl_lstrich.CurrText: TRxTextAttributes;
begin
end;

procedure Tmdl_lstrich.SetEditRect;
begin
end;

procedure Tmdl_lstrich.UpdateCursorPos;
begin
end;

procedure Tmdl_lstrich.addreg;
begin
     resetWebBrowse;
     bt_save1.Enabled:=true;
     bt_save1_on:=true;
end;

procedure Tmdl_lstrich.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             if (AxDadosUsr.cod_web<>dm.executa3.fieldbyname('codigo').AsInteger) then begin
               AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
               monta_table1;
               atualiza_grade;
               monta_table3;
             end;
          end;
      end;
end;

procedure Tmdl_lstrich.cfg_titleChange(Sender: TObject);
begin
      if not bt_save1.Enabled then
         bt_save1.Enabled:=true;
end;

procedure Tmdl_lstrich.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_lstrich.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
      {if not bt_save1.Enabled then
         bt_save1.Enabled:=true;}
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

procedure Tmdl_lstrich.resetWebBrowse;
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

procedure Tmdl_lstrich.SetRepetirImagem(xreptid:Integer);
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

procedure Tmdl_lstrich.setxHtml(xabaED:Integer);
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

procedure Tmdl_lstrich.InternalSaveDocumentToStream(
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

procedure Tmdl_lstrich.InternalSaveBodyHTMLToStream(const Stream: TStream);
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

procedure Tmdl_lstrich.InternalSaveBodyHTMLToStringList(const StringList: TStringList);
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

procedure Tmdl_lstrich.InternalSaveBodyTextToStream(const Stream: TStream);
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

procedure Tmdl_lstrich.InternalLoadDocumentFromStream(const Stream: TStream);
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

procedure Tmdl_lstrich.SpeedButton11Click(Sender: TObject);
begin
    InvokeCMD(WebBrowser1, HTMLID_FIND);
end;

procedure Tmdl_lstrich.SpeedButton8Click(Sender: TObject);
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

procedure Tmdl_lstrich.SpeedButton7Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_DESFAZER,0);
end;

procedure Tmdl_lstrich.SpeedButton37Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_REDO,0);
end;

procedure Tmdl_lstrich.btnNumListClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_MARCADOR, 0);
end;

procedure Tmdl_lstrich.btnBulletClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_MARCADOR_LISTA, 0);
end;

procedure Tmdl_lstrich.btnDecreaseIndentClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_OUTDENT, 0);
end;

procedure Tmdl_lstrich.btnIncreaseIndentClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_INDENT, 0);
end;

procedure Tmdl_lstrich.btnCutClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_RECORTAR, 0);
end;

procedure Tmdl_lstrich.btnCopyClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_COPIAR, 0);
end;

procedure Tmdl_lstrich.btnPasteClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_COLAR, 0);
end;

procedure Tmdl_lstrich.ComboSpeedButton1Click(Sender: TObject);
var addhtmltag: TStringList;
    AXaddhtmltag: String;
    Linha,Coluna,TotalLinha,TotalColuna,TotalBorda,TotalLargura,TotalCelPadding,TotalCelSpacing: Integer;
begin
//      Application.CreateForm(Tmdl_inserttable, mdl_inserttable);

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

procedure Tmdl_lstrich.SpeedButton13Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_IMAGEM, 0);
end;

procedure Tmdl_lstrich.SpeedButton15Click(Sender: TObject);
var addhtmltag:String;
begin
      addhtmltag:=hwsf.BtDesc('Digite ou Cole o código a ser incorporado');
      if addhtmltag<>'' then begin
         HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
         HTMLDocumento.body.innerHTML:= HTMLDocumento.body.innerHTML + addhtmltag;
      end;
end;

procedure Tmdl_lstrich.btnHRClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_LINHAHORIZ, 0);
end;

procedure Tmdl_lstrich.SpeedButton14Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_HYPERLINK,0);
end;

procedure Tmdl_lstrich.ComboSpeedButton3Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.bgColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_lstrich.SpeedButton50Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.fgColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_lstrich.ComboSpeedButton2Click(Sender: TObject);
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

procedure Tmdl_lstrich.combofontChange(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('FontName', False,ComboFont.Text);
end;

procedure Tmdl_lstrich.ComboSizeChange(Sender: TObject);
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

procedure Tmdl_lstrich.SpeedButton1Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Bold', False,0);
end;

procedure Tmdl_lstrich.SpeedButton3Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Italic', False,0);
end;

procedure Tmdl_lstrich.SpeedButton5Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    HTMLDocumento.execCommand('Underline', False,0);
end;

procedure Tmdl_lstrich.SpeedButton6Click(Sender: TObject);
begin
    HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
    if cdColor.Execute then
       HTMLDocumento.execCommand('ForeColor', False,cdColor.Color)
    else abort;
end;

procedure Tmdl_lstrich.btnAlignLeftClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_ALINHARESQ, 0);
end;

procedure Tmdl_lstrich.btnCenterClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_CENTRALIZAR, 0);
end;

procedure Tmdl_lstrich.btnAlignRightClick(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_ALINHADIR, 0);
end;

procedure Tmdl_lstrich.SpeedButton12Click(Sender: TObject);
begin
    SendMessage(GetIEHandle(webbrowser1, 'Internet Explorer_Server'),WM_COMMAND,IDM_JUSTIFICAR, 0);
end;

procedure Tmdl_lstrich.NoRepetir1Click(Sender: TObject);
begin
    if (not NoRepetir1.Checked) then
        SetRepetirImagem(0);
end;

procedure Tmdl_lstrich.repetirimagem1Click(Sender: TObject);
begin
    if (not repetirimagem1.Checked) then
        SetRepetirImagem(1);
end;

procedure Tmdl_lstrich.RepetirX1Click(Sender: TObject);
begin
    if (not RepetirX1.Checked) then
        SetRepetirImagem(2);
end;

procedure Tmdl_lstrich.RepetirY1Click(Sender: TObject);
begin
    if (not RepetirY1.Checked) then
        SetRepetirImagem(3)
end;

procedure Tmdl_lstrich.Fixarfundo1Click(Sender: TObject);
begin
      Fixarfundo1.Checked:=not Fixarfundo1.Checked;
      if (Fixarfundo1.Checked) then
          HTMLDocumento.body.style.backgroundAttachment:='fixed'
      else HTMLDocumento.body.style.backgroundAttachment:='';
end;

procedure Tmdl_lstrich.Limpar1Click(Sender: TObject);
begin
       HTMLDocumento := WebBrowser1.Document as IHTMLDocument2;
       (HTMLDocumento.body as IHTMLBodyElement).background := '';
       HTMLDocumento.body.style.backgroundRepeat :='';
end;

procedure Tmdl_lstrich.MenuItem10Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.linkColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_lstrich.CorLinkativo1Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.alinkColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_lstrich.CorLinkvisitado1Click(Sender: TObject);
begin
    if cdColor.Execute then
       WebBrowser1.OleObject.Document.vlinkColor := ColorToHTML(cdColor.Color);
end;

procedure Tmdl_lstrich.PageControltxChange(Sender: TObject);
begin
    setxHtml(PageControltx.TabIndex);
end;

procedure Tmdl_lstrich.bt_new1Click(Sender: TObject);
begin
      addreg;
end;

procedure Tmdl_lstrich.bt_save1Click(Sender: TObject);
{var axshowing: Boolean;
    st_stream: TMemoryStream;
    xstrTAGs: TStringList;
    xforcps: integer;}
var xforcps,Auxcodunit: integer;
    axshowing: Boolean;
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
     bt_save1.Enabled:=false;
     bt_save1_on:=false;
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
     Application.ProcessMessages;
     Auxcodunit:=xcodunit;
     if Auxcodunit = 0 then begin
        Auxcodunit:=0;
        Auxcodunit:=dm.GetCodMax(LstTables.Table[0],'codigo','');
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
                hwsf.BtMensagem('Nenhum texto foi digitado.');
                bt_save1.Enabled:=true;
                bt_save1_on:=true;
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
                       bt_save1.Enabled:=true;
                       bt_save1_on:=true;
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
                             bt_save1.Enabled:=true;
                             bt_save1_on:=true;
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
                                 bt_save1.Enabled:=true;
                                 bt_save1_on:=true;
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

                                 axcp5TMPout:='http://www.hwshost.com.br/HWSimgs/'+IntToStr(AxDadosUsr.cod_web)+'/'+IntToStr(Auxcodunit)+'/'+axcp5TMfilename;
                                 axcp5TMfilePOSini:=axcp5TMfilePOSini+(length('http://www.hwshost.com.br/HWSimgs/')-1);
                                 axcp5TMfilePOS.Add(IntToStr(axcp5TMfilePOSini));
                             end else begin
                                 loadx.Close;
                                 FreeMemStr;
                                 hwsf.BtMensagem('Formato do arquivo Inválido'+#13+axcp5TMPout);
                                 bt_save1.Enabled:=true;
                                 bt_save1_on:=true;
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
            bt_save1.Enabled:=true;
            bt_save1_on:=true;
            exit;
      end;
     {st_stream := TMemoryStream.Create;
     re_editor.Lines.SaveToStream(st_stream);
     xstrTAGs.Clear;
     st_stream.Position:=0;
     //xstrTAGs:=dm.ConvertRTFtoHTML('',st_stream);
     xstrTAGs:= dm.RtfToHtml2('',false,re_editor);}
     if xcodunit = 0 then begin
        loadx.Progressloading.position:=30;
        Auxcodunit:=0;
        for xforcps:=0 to listaLng.count-1 do begin
            xcodunit:=dm.GetCodMax(LstTables.Table[0],'codigo','');
            if (Auxcodunit=0) then Auxcodunit:=xcodunit;
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_web,cod_lng,xtp_gal,cod_gal,xtp,txt,blb,fnd1) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8)';
                 Params[0].AsInteger:=xcodunit;
                 Params[1].AsInteger:=AxDadosUsr.cod_web;
                 Params[2].AsInteger:=listaLng.cod_lng[xforcps];
                 Params[3].AsString:='';
                 Params[4].AsInteger:=0;
                 Params[5].AsString:=AxDadosUsr.axparm;
                 Params[6].Assign(axcp5);
                 axcp4.Clear;
                 axcp4.Seek(0,soFromBeginning);
                 Params[7].LoadFromStream(axcp4,ftblob);
                 Params[8].AsString:= '';//ColorToString(re_editor.Color);
                 try
                     Execute;
                 except
                     hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
                     bt_save1.Enabled:=true;
                     bt_save1_on:=true;
                     exit;
                 end;
            end;
        end;
        loadx.Progressloading.position:=60;
     end else begin
        with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET xtp_gal=:p0,cod_gal=:p1,txt=:p2,blb=:p3,fnd1=:p4 '+
                          'WHERE codigo=:p5';
            Params[0].AsString:='';
            Params[1].AsInteger:=0;
            Params[2].Assign(axcp5);
            axcp4.Clear;
            axcp4.Seek(0,soFromBeginning);
            Params[3].LoadFromStream(axcp4,ftblob);
            Params[4].AsString:= '';//ColorToString(re_editor.Color);
            Params[5].AsInteger:=xcodunit;
            try
               loadx.Progressloading.position:=80;
               Execute;
               loadx.Progressloading.position:=90;
            except
               hwsf.BtMensagem('Ocorreu algum erro.');
               bt_save1.Enabled:=true;
               bt_save1_on:=true;
               exit;
            end;
        end;
        loadx.Progressloading.position:=70;
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
            axcod_gal_auxup:=IntToStr(Auxcodunit);
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
                            bt_save1.Enabled:=true;
                            bt_save1_on:=true;
                            exit;
                         end;
                      end;
                   end;
                end;
            end;
     end;
     FreeMemStr;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     save_cfg(listaLng.cod_lng[PageControl_languagens2.TabIndex],false);
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Dados gravados com sucesso.';
     loadx.lbloading.Repaint;
     Application.ProcessMessages;
     Sleep(2000);
     //if not axshowing then
     try
        loadx.Close;
     except end;
     bt_save1_on:=true;
     bt_save1.Enabled:=false;
end;

procedure Tmdl_lstrich.WebBrowser1CommandStateChange(Sender: TObject;
  Command: Integer; Enable: WordBool);
begin
     if (bt_save1_on and not xinit) then begin
        if not bt_save1.Enabled then
           bt_save1.Enabled:=true;
     end;
end;

procedure Tmdl_lstrich.FormActivate(Sender: TObject);
begin
      //mdl_lstrich.Refresh;
      if xinit then begin
         xinit:=false;
         atualiza_grade;
      end;
end;

end.
