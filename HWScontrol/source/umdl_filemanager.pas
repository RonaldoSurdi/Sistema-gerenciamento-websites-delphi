{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions
Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_filemanager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, ImgList,uform_cmt1, uform_cmt2, uform_cmt3, uform_usr,
  uform_restrict, TrayIcon, AppEvnts, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP;

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
  Tmdl_filemanager = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    ImportarImgDialog: TOpenPictureDialog;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
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
    ExportarImgDialog: TSavePictureDialog;
    Panel20: TPanel;
    bt_help: TSpeedButton;
    ColorDialog1: TColorDialog;
    ToolbarImages: TImageList;
    OpenDialog1: TOpenDialog;
    ImportFile: TOpenDialog;
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
    PageControlab: TPageControl;
    ExportFile: TSaveDialog;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Panel22: TPanel;
    TabSheet4: TTabSheet;
    GroupBox4: TGroupBox;
    Panel12: TPanel;
    Lb_countreg1: TLabel;
    Splitter3: TSplitter;
    GroupBox5: TGroupBox;
    Panel15: TPanel;
    Lb_countreg2: TLabel;
    Splitter4: TSplitter;
    Lb_countreg3: TLabel;
    CoolBar1: TCoolBar;
    ToolBar3: TToolBar;
    SpeedButton4: TSpeedButton;
    bt_del2: TComboSpeedButton;
    ToolBar2: TToolBar;
    bt_open2: TSpeedButton;
    bt_exp2: TSpeedButton;
    CoolBar2: TCoolBar;
    ToolBar7: TToolBar;
    bt_new1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    bt_del1: TSpeedButton;
    CoolBar3: TCoolBar;
    ToolBar6: TToolBar;
    bt_new3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    bt_del3: TSpeedButton;
    ImageList3_1: TImageList;
    ListView3: TListView;
    ImageList3_2: TImageList;
    TreeView1: TTreeView;
    ImageList1_1: TImageList;
    ListView2: TListView;
    ImageList2_1: TImageList;
    ImageList2_2: TImageList;
    PopupMenu_it3: TPopupMenu;
    Novotem1: TMenuItem;
    Alterardados1: TMenuItem;
    Excluir1: TMenuItem;
    PopupMenu_it1: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu_it2: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    Arquivos1: TMenuItem;
    ImportarArquivosdoDisco1: TMenuItem;
    ExportartodososArquivos1: TMenuItem;
    AlterarDados2: TMenuItem;
    N1: TMenuItem;
    ExcluirArquivoSelecionado1: TMenuItem;
    N2: TMenuItem;
    ExcluirTodososArquivos1: TMenuItem;
    ExcluirArquivoSelecionado2: TMenuItem;
    N3: TMenuItem;
    ExportarArquivo1: TMenuItem;
    ToolBar1: TToolBar;
    SpeedButton5: TSpeedButton;
    ToolBar4: TToolBar;
    SpeedButton6: TSpeedButton;
    ToolBar8: TToolBar;
    SpeedButton7: TSpeedButton;
    TabSheet2: TTabSheet;
    CoolBar4: TCoolBar;
    ToolBar10: TToolBar;
    ToolBar11: TToolBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton8: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton14: TSpeedButton;
    ListView_tarefas: TListView;
    RichEdit_status: TRichEdit;
    GroupBox6: TGroupBox;
    RichEdit2: TRichEdit;
    TrayIcon_menu: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    ToolBar5: TToolBar;
    bt_recursive: TSpeedButton;
    SpeedButton3: TSpeedButton;
    N4: TMenuItem;
    Permisses1: TMenuItem;
    N5: TMenuItem;
    Permisses2: TMenuItem;
    N6: TMenuItem;
    Permisses3: TMenuItem;
    ImageList_tarefas1: TImageList;
    ImageList_tarefas2: TImageList;
    ImageList_Tar: TImageList;
    PopupMenu_Tar: TPopupMenu;
    HWSfileManager1: TMenuItem;
    N7: TMenuItem;
    RestaurarJanela1: TMenuItem;
    MinimizarJanela1: TMenuItem;
    N8: TMenuItem;
    Finalizar1: TMenuItem;
    Iniciartodasastarefas1: TMenuItem;
    Parartarefas1: TMenuItem;
    N9: TMenuItem;
    Sobre1: TMenuItem;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    StatusBar1: TStatusBar;
    IdFTP1: TIdFTP;
    ToolBar9: TToolBar;
    SpeedButton9: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_del1Click(Sender: TObject);
    procedure ComboBox_webChange(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure PageControl_languagensChange(Sender: TObject);
    procedure Timer_traduzTimer(Sender: TObject);
    procedure Tradutor1AoTraduzir(Sender: TObject; Traducao: String);
    function recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
    procedure MenuItem1Click(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure ComboBox_entChange(Sender: TObject);
    procedure bt_helpClick(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure bt_del3Click(Sender: TObject);
    procedure bt_exp2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure bt_new1Click(Sender: TObject);
    procedure bt_new3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure bt_recursiveClick(Sender: TObject);
    procedure bt_open2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ListView3DblClick(Sender: TObject);
    procedure ListView3Click(Sender: TObject);
    procedure ListView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView3KeyPress(Sender: TObject; var Key: Char);
    procedure ListView3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TreeView1KeyPress(Sender: TObject; var Key: Char);
    procedure TreeView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView2Click(Sender: TObject);
    procedure ListView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView2KeyPress(Sender: TObject; var Key: Char);
    procedure ListView2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView2DblClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure PageControlabChange(Sender: TObject);
    procedure HWSfileManager1Click(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure MinimizarJanela1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure TrayIcon_menuDblClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure IdFTP1Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdFTP1WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure SpeedButton9Click(Sender: TObject);
  private
    //menus
    pathdefault,xdsqlfilter : string;
    xmountDBGrid1: Boolean;
    xfileName_sizefile: Integer;
    procedure monta_lng;
    procedure addreg;
    procedure addreg2;
    procedure addreg3;
    procedure atualizacombotyp;
    procedure limpaphoto2(xupdateset:Boolean);
    //retorna componente
    function addFileList(bt_search_ax_INC: Tbt_search_ax; xupdatefile:Boolean):Boolean;
    function inserimg(xnamefile,xfilext:String):Boolean;
    function Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
    procedure finalizewind;
    procedure MountaListaTarefas(xmountaref:Boolean; xcodmount2:Integer);
    procedure xMensaStat(xmensStat:String);
    function ProcessTarefas(xprocess:Boolean):Boolean;
    procedure paradoRefresh;
    function excluiArqT(xcodArgIMG:String; exibmsgT:Boolean):Boolean;
    function updtZip(xcod_galudp:Integer; set_galudp:Boolean):Integer;
    { Private declarations }
  public
    axformInit: Boolean;
    inProcessTar,axCancelProcess: Boolean;
    form_cmt1: Tform_cmt1;
    form_cmt2: Tform_cmt2;
    form_cmt3: Tform_cmt3;
    form_restrict1: Tform_restrict;
    form_restrict2: Tform_restrict;
    form_restrict3: Tform_restrict;
    form_usr: Tform_usr;
    ax_ab_cod,axcod_gal,axcod_class,ax_ms_cod,ax_cl_cod,axcod_img,axcod_ent: Integer;
    ab_codCaption,ms_codCaption,cl_codCaption: String;
    axnfl1,axext1,axnfl2,axext2,axnfl3,axext3: String;
    LstTables: TLstTables;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xreceivetrad : String;
    xinit,xupdatelogo1,xupdatelogo2,xupdatelogo3,xupdatebanner: Boolean;
     xtimerresponse,
    xiniCodab: Integer;
    xlogosz2,xamplsz2: Integer;
    axtypefile: String;
    xampltmp2: TMemoryStream;
    xampltmp2_tmp: TMemoryStream; //ax inserimg
    xtypefile_tmp: Integer;
    TreeView3_cod: TStringList;
    TreeView1_cod: TStringList;
    TreeView2_cod: TStringList;
    TreeView_tarefas_cod: TStringList;
    procedure monta_tableclass(xcodmount3:Integer);
    procedure monta_table1(xcodmount1:Integer);
    procedure monta_table2(xnewgal,xuplng:Boolean; xcodmount2: Integer);
    procedure monta_listUsr;
    function retorna_TTabSheet(xidxcod:Integer):TTabSheet;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure atualiza_grade3;
    procedure ListViewRefresh;
    procedure TreeViewRefresh;
    procedure FilesViewRefresh;
    function ReturnFileType(xfiltypID:String):Integer;
    procedure ImportArqSet(ximpnew:Boolean);
    //processoand: Boolean;
    { Public declarations }
  end;

var
  mdl_filemanager: Tmdl_filemanager;

implementation
uses udm2, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd, U_Cipher,
     uBt_search_auto;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_filemanager.FormCreate(Sender: TObject);
var axshowing: Boolean;
    axstr_filtro_stream: TMemoryStream; 
    axid_web,axid_web2: integer;
begin
     axCancelProcess:=false;
     inProcessTar:=false;
     xmountDBGrid1:=false;
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
     TrayIcon_menu.Icon:=hwsf.HiconToIcon;
     loadx.Progressloading.position:=10;
     pathdefault:=ExtractFilePath(Application.ExeName);
     Application.Title := AxDadosUsr.axtitle;
     mdl_filemanager.Caption:= AxDadosUsr.axtitle;
     axformInit:=false;
     form_cmt1:= Tform_cmt1.Create(Application);
     form_cmt1.Hide;
     form_cmt2:= Tform_cmt2.Create(Application);
     form_cmt2.Hide;
     form_cmt3:= Tform_cmt3.Create(Application);
     form_cmt3.Hide;
     form_usr:= Tform_usr.Create(Application);
     form_usr.Hide;
     form_restrict1:= Tform_restrict.Create(Application);
     form_restrict1.Hide;
     form_restrict1.axtypPerm:=1;
     form_restrict1.axVrl_load:='Permissões para Pasta';
     form_restrict1.axVrl_label:='a esta Pasta:';
     form_restrict2:= Tform_restrict.Create(Application);
     form_restrict2.Hide;
     form_restrict2.axtypPerm:=2;
     form_restrict2.axVrl_load:='Permissões para Arquivo';
     form_restrict2.axVrl_label:='a este Arquivo:';
     form_restrict3:= Tform_restrict.Create(Application);
     form_restrict3.Hide;
     form_restrict3.axtypPerm:=3;
     form_restrict3.axVrl_load:='Permissões para Menu';
     form_restrict3.axVrl_label:='a este Menu:';
     axformInit:=true;
     xinit:=true;
     axcod_ent:=0;
     xampltmp2:= TMemoryStream.Create;
     xupdatelogo1:=False;
     xupdatelogo2:=False;
     xupdatebanner:=False;
     TreeView1_cod:= TStringList.Create;
     TreeView2_cod:= TStringList.Create;
     TreeView3_cod:= TStringList.Create;
     TreeView_tarefas_cod:= TStringList.Create;
     loadx.Progressloading.position:=40;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     if not AxDadosUsr.master then begin
        ComboBox_web.Items.Add(AxDadosUsr.website);
     end else begin
        With dm2.executa3 do begin
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
     With dm2.ds_sql11 do begin
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
     {DBGrid1.DataSource:=dm2.source_sql;
     With DBGrid1.Columns do begin
          Clear;
          //Add;
          //Items[0].Title.Caption:='Código';
          //Items[0].FieldName:='cod_gal';
          Add;
          Items[0].Title.Caption:='Descrição';
          Items[0].FieldName:='descricao';
     end;
     DBGrid2.DataSource:=dm2.source_sql3;
     With DBGrid2.Columns do begin
          Clear;
          //Add;
          //Items[0].Title.Caption:='Código';
          //Items[0].FieldName:='cod_img';
          Add;
          Items[0].Title.Caption:='Descrição';
          Items[0].FieldName:='descricao';
     end;
     DBGrid3.DataSource:=dm2.source_sql6;
     With DBGrid3.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Código';
          Items[0].FieldName:='cod_class';
          Add;
          Items[0].Title.Caption:='Descrição';
          Items[0].FieldName:='cp1';
     end;}
     if StrtoInt(AxDadosUsr.axparm) > 5000 then begin
        ToolBar_ent.Visible:=true;
        With dm2.executa5 do begin
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
     monta_listUsr;
     monta_tableclass(0);
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_filemanager.monta_listUsr;
begin
    //monta lista de usuários
     With dm2.ds_sql7 do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,cp3,cp6,cp13 FROM '+LstTables.Table[6]+
                      ' WHERE cod_ent='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                      ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                      ' ORDER BY codigo';
        Open;
        Filtered:=true;
        Filter:='';
     end;
end;

procedure Tmdl_filemanager.monta_lng;
var listaLng_id,axcoddefault,xid_default: Integer;
begin
     //MONTA LINGUAGENS
     if dm2.ds_sql.Active then begin
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
     With dm2.ds_sql7 do begin
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

procedure Tmdl_filemanager.monta_table1(xcodmount1:Integer);
var axshowing: Boolean;
    xfiltdatax,xfiltdata,xfiltdata2: String;
    xIDtable1,xcodmountID1,xnumIMG: Integer;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Montando Pastas';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Montando Pastas';
        loadx.lbloading.Repaint;
     end;
     //Monta Lista de Pastas
     With dm2.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                                ' AND cod_usrw='+#39+IntToStr(axcod_ent)+#39+
                                ' AND cod_class='+#39+cl_codCaption+#39+
                                ' ORDER BY codigo';
          Open;
          Filter:='';
          Filtered:=true;
          xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
          Filter:=xdsqlfilter;
          TreeView1.Items.Clear;
          TreeView1_cod.Clear;
          xIDtable1:=0;
          xcodmountID1:=0;
          if recordcount>0 then begin
            First;
            While not Eof do begin
                if fieldbyname('codigo').AsInteger=xcodmount1 then xcodmountID1:=xIDtable1;
                TreeView1_cod.Add(fieldbyname('cod_gal').AsString);
                TreeView1.Items.Add(nil,fieldbyname('descricao').AsString);
                xnumIMG:=0;
                if fieldbyname('prt').AsInteger>0 then xnumIMG:=xnumIMG+2;
                TreeView1.Items.Item[xIDtable1].ImageIndex:=xnumIMG;
                TreeView1.Items.Item[xIDtable1].SelectedIndex:=xnumIMG+1;
                Inc(xIDtable1);
                Next;
            end;
            if xcodmountID1=0 then First
            else Locate('codigo',xcodmount1,[]);
            TreeView1.Items.Item[xcodmountID1].Selected:=true;
          end;
     end;
     atualiza_grade;
     try loadx.Close; except end;
end;

procedure Tmdl_filemanager.monta_table2(xnewgal,xuplng:Boolean; xcodmount2: Integer);
var xcodgal,xpkText: string;
    xIDtable2,xcodmountID2,xnumIMG: Integer;
begin
     if xnewgal then begin
        xcodgal:='0';
     end else begin
        if dm2.ds_sql.RecordCount>0 then xcodgal:=dm2.ds_sql.fieldbyname('cod_gal').AsString
        else xcodgal:='0';
     end;
     With dm2.ds_sql3 do begin
          if ((xuplng) or (not Active)) then begin
             if Active then Close;
             CommandText:= 'SELECT * FROM '+LstTables.Table[2]+
                                ' WHERE cod_gal='+#39+xcodgal+#39+
                                ' ORDER BY codigo';
             Open;
             Filtered:=true;
          end;
          Filter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
          ListView2.Clear;
          TreeView2_cod.Clear;
          xIDtable2:=0;
          xcodmountID2:=0;
          if recordcount>0 then begin
            First;
            While not Eof do begin
                Case fieldbyname('xpk').AsInteger of
                     0:xpkText:='';
                     1:xpkText:=chr(13)+'Enviando '+fieldbyname('xpp').AsString+'%';
                     2:xpkText:=chr(13)+'Parado '+fieldbyname('xpp').AsString+'%';
                End;
                if fieldbyname('codigo').AsInteger=xcodmount2 then xcodmountID2:=xIDtable2;
                TreeView2_cod.Add(fieldbyname('cod_img').AsString);
                ListView2.AddItem(fieldbyname('descricao').AsString+chr(13)+
                                  fieldbyname('nfl').AsString+fieldbyname('ext').AsString+chr(13)+
                                  fieldbyname('sz').AsString+' kb'+xpkText
                                  ,nil);
                xnumIMG:=ReturnFileType(fieldbyname('ext').AsString);
                if fieldbyname('prt').AsInteger>0 then xnumIMG:=xnumIMG+8;
                ListView2.Items.Item[xIDtable2].ImageIndex:=xnumIMG;
                Inc(xIDtable2);
                Next;
            end;
            if xcodmountID2=0 then First
            else Locate('codigo',xcodmount2,[]);
            ListView2.ItemIndex:=xcodmountID2;
          end;

     end;
     atualiza_grade2;
end;

function Tmdl_filemanager.ReturnFileType(xfiltypID:String):Integer;
begin
      if ((xfiltypID='.doc') or (xfiltypID='.txt') or (xfiltypID='.rtf')) then
          Result:=1
      else if ((xfiltypID='.mp3') or (xfiltypID='.wav') or (xfiltypID='.wma')) then
          Result:=2
      else if ((xfiltypID='.jpg') or (xfiltypID='.jpeg')) then
          Result:=3
      else if ((xfiltypID='.zip') or (xfiltypID='.rar')) then
          Result:=4
      else if ((xfiltypID='.avi') or (xfiltypID='.mpeg')) then
          Result:=5
      else if ((xfiltypID='.swf') or (xfiltypID='.flv')) then
          Result:=6
      else if (xfiltypID='.exe') then
          Result:=7
      else Result:=0;
end;

procedure Tmdl_filemanager.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
    ToolBar_lng1.Width:=Panel1.Width-244;
    PageControl_languagens.Width:=ToolBar_lng1.Width-61;
    ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_filemanager.FormActivate(Sender: TObject);
begin
      mdl_filemanager.Refresh;
      if xinit then begin
         xinit:=false;
         if (xiniCodab>0) then begin
             dm2.ds_sql.Locate('codigo',xiniCodab,[]);
         end;
      end;
end;

procedure Tmdl_filemanager.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tmdl_filemanager.addreg;
begin
     if form_restrict1.Showing then form_restrict1.Hide;
     ab_codCaption:='novo';
     ax_ab_cod:=0;
     limpaphoto2(False);
     monta_table2(True,True, 0);
     GroupBox5.Visible:=false;
end;

procedure Tmdl_filemanager.addreg2;
begin
     if form_restrict2.Showing then form_restrict2.Hide;
     if form_cmt2.Showing then form_cmt2.Hide;
     ms_codCaption:='novo';
     ax_ms_cod:=0;
     limpaphoto2(False);
end;

procedure Tmdl_filemanager.addreg3;
begin
     if form_restrict3.Showing then form_restrict3.Hide;
     cl_codCaption:='novo';
     ax_cl_cod:=0;
     axcod_class:=0;
end;

procedure Tmdl_filemanager.atualiza_grade;
var axshowing: Boolean;
    axlocid: Integer;
begin
     //album de fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando Pastas';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando Pastas';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm2.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         GroupBox5.Visible:=true;
         with dm2.ds_sql do begin
            if ax_ab_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            loadx.Progressloading.position:=20;
            ab_codCaption:=fieldbyname('cod_gal').AsString;
            ax_ab_cod:=fieldbyname('codigo').AsInteger;
            if axcod_gal<>fieldbyname('cod_gal').AsInteger then
               axcod_gal:=fieldbyname('cod_gal').AsInteger;
            axnfl1:=fieldbyname('nfl').AsString;
            axext1:=fieldbyname('ext').AsString;
            loadx.Progressloading.position:=30;
            loadx.Progressloading.position:=40;
            //ComboBox_model.Enabled:=false;
            loadx.Progressloading.position:=50;
            //monta_table2(False,xuplng);
            if form_restrict1.Showing then form_restrict1.atualizaReg;
            monta_table2(False,True, 0);
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm2.ds_sql.RecordCount);
      try loadx.Close; except end;
      if form_cmt1.Showing then form_cmt1.atualizaReg;
end;

procedure Tmdl_filemanager.atualiza_grade3;
var axshowing,xuplng: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando Menu';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando Menu';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm2.ds_sql6.RecordCount <= 0 then begin
         addreg3;
      end else begin
         with dm2.ds_sql6 do begin
            if ax_cl_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            loadx.Progressloading.position:=20;
            cl_codCaption:=fieldbyname('cod_class').AsString;
            ax_cl_cod:=fieldbyname('codigo').AsInteger;
            if axcod_class<>fieldbyname('cod_class').AsInteger then begin
               xuplng:=false;
               axcod_class:=fieldbyname('cod_class').AsInteger;
            end else xuplng:=true;
            xtypefile_tmp:=fieldbyname('xfl').AsInteger;
            loadx.Progressloading.position:=50;
            if form_restrict3.Showing then form_restrict3.atualizaReg;
         end;
      end;
      atualizacombotyp;
      Lb_countreg3.Caption:=Inttostr(dm2.ds_sql6.RecordCount);
      try loadx.Close; except end;
      if form_cmt3.Showing then form_cmt3.atualizaReg;
      monta_table1(0);
end;

procedure Tmdl_filemanager.atualiza_grade2;
var axshowing: Boolean;
    st_stream : TMemoryStream;
begin
     //banco de Arquivos
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando lista de Arquivos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando lista de Arquivos';
         loadx.lbloading.Repaint;
      end;
      if dm2.ds_sql3.RecordCount <= 0 then begin
         addreg2;
      end else begin
         with dm2.ds_sql3 do begin
            loadx.Progressloading.position:=60;
            if ax_ms_cod=fieldbyname('codigo').AsInteger then begin
               try loadx.Close; except end;
               exit;
            end;
            limpaphoto2(False);
            loadx.Progressloading.position:=70;
            ms_codCaption:=fieldbyname('cod_img').AsString;
            ax_ms_cod:=fieldbyname('codigo').AsInteger;
            axcod_img:=fieldbyname('cod_img').AsInteger;
            loadx.Progressloading.position:=80;
            axnfl2:=fieldbyname('nfl').AsString;
            axext2:=fieldbyname('ext').AsString;
            xamplsz2:=fieldbyname('sz').AsInteger;
            loadx.Progressloading.position:=100;
         end;
         if form_cmt2.Showing then form_cmt2.atualizaReg;
         if form_restrict2.Showing then form_restrict2.atualizaReg;
      end;
      Lb_countreg2.Caption:=Inttostr(dm2.ds_sql3.RecordCount);
      try loadx.Close; except end;
end;

procedure Tmdl_filemanager.limpaphoto2(xupdateset:Boolean);
begin
     xupdatelogo2:=xupdateset;
     xampltmp2.Clear;
     xampltmp2.Seek(0,soFromBeginning);
     xamplsz2:=0;
end;

procedure Tmdl_filemanager.bt_del1Click(Sender: TObject);
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de Arquivos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo Pasta';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo Pasta';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     Application.ProcessMessages;
     if (dm2.ds_sql.RecordCount>0) and (ab_codCaption<>'novo') then begin
        axcod:= StrToInt(ab_codCaption) + 1;
        if dm2.deleta_reg(LstTables.Table[0],'cod_gal',ab_codCaption,true,false) then begin
           dm2.deleta_reg(LstTables.Table[7],'cod_it',ab_codCaption,false,false);
           Application.ProcessMessages;
           loadx.Progressloading.position:=25;
           //dm2.RemoveBinaryStreamPH(LstTables.Table[1],'cod_gal','icon','',ab_codCaption);
           //dm2.deleta_reg(LstTables.Table[1],'cod_gal',ab_cod.Caption,false);
           loadx.Progressloading.position:=50;
           loadx.lbloading.Caption:='Excluindo Pasta';
           loadx.lbloading.Repaint;
           dm2.deleta_reg(LstTables.Table[2],'cod_gal',ab_codCaption,false,false);
           loadx.Progressloading.position:=75;
           monta_table2(False,True, 0);
           With dm2.ds_sql3 do begin
                First;
                While not Eof do begin
                    dm2.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',fieldbyname('cod_img').AsString);
                    //dm2.deleta_reg(LstTables.Table[3],'cod_img',fieldbyname('cod_img').AsString,false);
                    Next;
                end;
           end;
           loadx.Progressloading.position:=100;
           monta_table1(0);
           if not dm2.ds_sql.Locate('codigo',axcod,[]) then
           if not dm2.ds_sql.Locate('codigo',axcod-2,[]) then
              dm2.ds_sql.First;
           Application.ProcessMessages;
           hwsf.BtMensagem('Exclusão Efetuada com êxito');
           atualiza_grade;
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_filemanager.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm2.executa3.Active) then begin
          if dm2.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm2.executa3.fieldbyname('codigo').AsInteger;
             monta_tableclass(0);
          end;
      end;
end;

procedure Tmdl_filemanager.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53;
end;

function Tmdl_filemanager.addFileList(bt_search_ax_INC: Tbt_search_ax; xupdatefile:Boolean):Boolean;
var axstatInc: TStringList;
    xfilext: string;
    xcod_executsound: Integer;
    //include
    xnamefile: String;
    //sql
    xnamefilesql: String;
    axcod,axcod2: Integer;
    axshowing: Boolean;
    bt_search_ax: Tbt_search_ax;
    //traduzir
    axInc_traduzir,zerror: Boolean;
    xtxt1: String;
    axgal_id,xidxlng,xerrocount: Integer;
    xlogoCls,xAmpPart: TMemoryStream;
    xfor_idimg: Integer;
    xerror,TestNumFileList: Boolean;
    xAmpPartID, xAmpPartCount: Integer;
    xAmpPartIDcalc: Real;
    xhdl,xpthID,xhidID: String;
begin
      Result:=false;
      bt_search_ax:= bt_search_ax_INC;
      pathdefault:=bt_search_ax.pathdefault;
      if bt_search_ax.filelist.Count>0 then begin
         {if RadioButton1.Checked then axInc_traduzir:=true
         else if RadioButton2.Checked then axInc_traduzir:=false
         else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');}
         mdl_filemanager.Repaint;
         axstatInc:= TStringList.Create;
         axstatInc.Clear;
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Iniciando...';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Iniciando...';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.Max:=bt_search_ax.filelist.Count;
         loadx.Progressloading.position:=0;
         loadx.Progressloading2.Visible:=true;
         loadx.repaint;
         Application.ProcessMessages;
         //variaveis internas
         xampltmp2_tmp:= TMemoryStream.Create;
         xlogoCls:= TMemoryStream.Create;
         xAmpPart:= TMemoryStream.Create;
         for xfor_idimg:=0 to bt_search_ax.filelist.Count-1 do begin
             xerrocount:=0;
             xerror:=false;
             loadx.Progressloading.Position:=xfor_idimg+1;
             Application.ProcessMessages;
             xhdl := Application.ExeName;
             xhdl:= copy(xhdl,1,3);
             xnamefile:=bt_search_ax.filelist.Strings[xfor_idimg];
             xfilext:=LowerCase(ExtractFileExt(xnamefile));
             axnfl2:=copy(ExtractFileName(xnamefile),1,Length(ExtractFileName(xnamefile))-(Length(xfilext)));
             axext2:=xfilext;
             xnamefilesql:=axnfl2;
             if bt_search_ax.filelist.Count = 1 then
                loadx.lbloading.Caption:='Preparando Arquivo '+axnfl2+xfilext
             else loadx.lbloading.Caption:='Preparando Arquivo '+axnfl2+xfilext+' ['+IntToStr(xfor_idimg+1)+'/'+IntToStr(bt_search_ax.filelist.Count)+']';
             loadx.lbloading.Repaint;
             axstatInc.Add('Gerando: '+xnamefile);
             if inserimg(xnamefile,xfilext) then begin
                axcod:=dm2.GetCodMax(LstTables.Table[2],'codigo','');
                if bt_search_ax.default then begin
                   xtxt1:= xnamefilesql;
                end else begin
                   xtxt1:= bt_search_ax.descricao+' '+IntToStr(bt_search_ax.countinit);
                   Inc(bt_search_ax.countinit);
                end;
                loadx.Progressloading2.Max:=listaLng.count*2;
                {for axgal_id:=0 to listaLng.count-1 do begin
                    loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                    listaAux.ms_descricao[axgal_id]:=xtxt1;
                end;}
                axcod_img:=0;
                xampltmp2_tmp.Seek(0,soFromBeginning);
                xAmpPartCount:=xampltmp2_tmp.Size;
                xampltmp2_tmp.Seek(0,soFromBeginning);
                try
                    xAmpPartIDcalc:=xAmpPartCount/50000;
                    xAmpPartIDcalc:=RoundTo(xAmpPartIDcalc,0);
                    xAmpPartID:=StrToInt(FormatFloat('0',xAmpPartIDcalc));
                    if xAmpPartID<xAmpPartIDcalc then
                       Inc(xAmpPartID); 
                except
                    xAmpPartID:=0;
                end;
                //for axgal_id:=0 to listaLng.count-1 do begin
                Application.ProcessMessages;
                loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                if xupdatefile then
                    axcod:=dm2.GetCodMax(LstTables.Table[2],'codigo','')
                else axcod:=ax_ms_cod;
                if axcod_img=0 then axcod_img:=axcod;
                zerror:=false;
                xpthID:=xnamefile;//EnDecryptString(xnamefile,12543);
                xhidID:=dm2.HDKeyNum(xhdl);//EnDecryptString(dm2.HDKeyNum(xhdl),21834);
                While not zerror do begin
                    with dm2.executa do begin
                      if xupdatefile then begin
                         CommandText:= 'INSERT INTO '+LstTables.Table[2]+' (codigo,cod_img,cod_gal,cod_lng,descricao,textft,blb,nfl,sz,ext,prt,xpt,xpi,xpp,xpk,xpth,xhid) '+
                                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13,:p14,:p15,:p16)';
                         Params[0].AsInteger:=axcod;
                         Params[1].AsInteger:=axcod_img;
                         Params[2].AsInteger:=axcod_gal;
                         Params[3].AsInteger:=listaLng.cod_lng[PageControl_languagens.TabIndex];//listaLng.cod_lng[axgal_id];
                         Params[4].AsString:=xtxt1;//listaAux.ms_descricao[axgal_id];
                         Params[5].AsString :='';
                         Params[6].AsString :='';
                         Params[7].AsString:=axnfl2;
                         Params[8].AsInteger:=xAmpPartCount;
                         Params[9].AsString:=axext2;
                         Params[10].AsInteger:=0;
                         //envio
                         Params[11].AsInteger:=xAmpPartID;
                         Params[12].AsInteger:=0;
                         Params[13].AsInteger:=0;
                         Params[14].AsInteger:=2;
                         Params[15].AsString:=xpthID;
                         Params[16].AsString:=xhidID;
                      end else begin
                         CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET nfl=:p0,sz=:p1,ext=:p2,xpt=:p3,xpi=:p4,xpp=:p5,xpk=:p6,xpth=:p7,xhid=:p8 '+
                                       'WHERE codigo=:p9';
                         Params[0].AsString:=axnfl2;
                         Params[1].AsInteger:=xAmpPartCount;
                         Params[2].AsString:=axext2;
                         //envio
                         Params[3].AsInteger:=xAmpPartID;
                         Params[4].AsInteger:=0;
                         Params[5].AsInteger:=0;
                         Params[6].AsInteger:=2;
                         Params[7].AsString:=xpthID;
                         Params[8].AsString:=xhidID;
                         Params[9].AsInteger:=axcod;
                      end;
                      try
                         Execute;
                         zerror:=true;
                         xerror:=false;
                      except
                         zerror:=false;
                         xerror:=true;
                      end;
                    end;
                    if not (zerror) then Inc(xerrocount);
                    Application.ProcessMessages;
                    if xerrocount = 3 then begin
                          if hwsf.BtConfirma('Conexão com internet não está respondendo, tentar novamente?') then begin
                             xerrocount := 0;
                          end else begin
                             if xupdatefile then begin
                                try
                                 dm2.executa.CommandText:= 'DELETE FROM '+LstTables.Table[2]+' WHERE cod_img='+#39+IntToStr(axcod_img)+#39;
                                 dm2.executa.Execute;
                                except
                                end;
                             end;
                             loadx.Close;
                             hwsf.BtMensagem('Inserção de Aquivo '+axnfl2+' cancelada.');
                             exit;
                          end;
                    end;
                end;
                if not xerror then begin
                   axstatInc.Add('Arquivo enviado para Lista de Tarefas.');
                end;
             end else begin
               axstatInc.Add('Erro ao abrir arquivo, verifique o arquivo e tente novamente.');
             end;
             axstatInc.Add('');
         end;
         Application.ProcessMessages;
         xlogoCls.free;
         xampltmp2_tmp.Free;
         monta_table2(False,True, 0);
         Lb_countreg2.Caption:=Inttostr(dm2.ds_sql3.RecordCount);
         loadx.Progressloading2.Visible:=false;
         try loadx.Close; except end;
         hwsf.BtAviso(axstatInc);
         axstatInc.Free;
         Result:=true;
      end;
end;

function Tmdl_filemanager.inserimg(xnamefile,xfilext:String):Boolean;
begin
        Application.ProcessMessages;
        Try
          Result:=true;
          xampltmp2_tmp.Clear;
          xampltmp2_tmp.Seek(0,soFromBeginning);
          loadx.Progressloading.position:=80;
          xampltmp2_tmp.LoadFromFile(xnamefile);
          loadx.Progressloading.position:=90;
          xampltmp2_tmp.Seek(0,soFromBeginning);
        except
          Result:=false;
          Application.ProcessMessages;
        end;
end;

function Tmdl_filemanager.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_filemanager.PageControl_languagensChange(Sender: TObject);
begin
      ab_codCaption:='0';
      ms_codCaption:='0';
      xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
      monta_tableclass(0);
end;

procedure Tmdl_filemanager.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_filemanager.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_filemanager.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_filemanager.MenuItem1Click(Sender: TObject);
var axshowing: Boolean;
begin
     //banco de imagens excluir todas as fotos
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo Arquivos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo Arquivos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm2.ds_sql3.RecordCount>0) and (ms_codCaption<>'novo') then begin
        if dm2.deleta_reg(LstTables.Table[2],'cod_gal',ab_codCaption,true,false) then begin
           loadx.Progressloading.position:=75;
           With dm2.ds_sql3 do begin
                First;
                While not Eof do begin
                    dm2.deleta_reg(LstTables.Table[8],'cod_it',fieldbyname('cod_img').AsString,false,false);
                    dm2.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',fieldbyname('cod_img').AsString);
                    //dm2.deleta_reg(LstTables.Table[3],'cod_img',fieldbyname('cod_img').AsString,false);
                    Next;
                end;
           end;
           loadx.Progressloading.position:=100;
           hwsf.BtMensagem('Exclusão Efetuada com êxito');
           monta_table2(False,True, 0);
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_filemanager.bt_del2Click(Sender: TObject);
begin
     excluiArqT(ms_codCaption,true);
end;

function Tmdl_filemanager.excluiArqT(xcodArgIMG:String; exibmsgT:Boolean):Boolean;
var axshowing: Boolean;
    axcod: Integer;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo Arquivo';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo Arquivo';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm2.ds_sql3.RecordCount>0) and (xcodArgIMG<>'novo') then begin
        axcod:= StrToInt(xcodArgIMG) + 1;
        if dm2.deleta_reg(LstTables.Table[2],'cod_img',xcodArgIMG,true,false) then begin
           dm2.deleta_reg(LstTables.Table[8],'cod_it',xcodArgIMG,false,false);
           loadx.Progressloading.position:=50;
           dm2.RemoveBinaryStreamPH(LstTables.Table[3],'cod_img','img_ico','img_larg',xcodArgIMG);
           //dm2.deleta_reg(LstTables.Table[3],'cod_img',ms_cod.Caption,false);
           loadx.Progressloading.position:=100;
           if exibmsgT then
              hwsf.BtMensagem('Exclusão Efetuada com êxito');
           monta_table2(False,True, 0);
        end;
    end;
    try loadx.Close; except end;
end;

procedure Tmdl_filemanager.ComboBox_entChange(Sender: TObject);
begin
      if StrtoInt(AxDadosUsr.axparm) > 5000 then begin
         if dm2.executa5.Locate('cp1',ComboBox_ent.Text,[]) then begin
            if axcod_ent<>dm2.executa5.fieldbyname('codigo').AsInteger then begin
               axcod_ent:=dm2.executa5.fieldbyname('codigo').AsInteger;
               monta_tableclass(0);
            end;
         end else axcod_ent:=0;
     end;
end;

procedure Tmdl_filemanager.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_filemanager.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_filemanager.atualizacombotyp;
begin
         Case xtypefile_tmp of
              0: axtypefile:='Todos os Arquivos (*.*)|*.*|Fotos (*.jpg)|*.jpg|Imagens Transparentes (*.png)|*.png|Áudio (*.mp3)|*.mp3|Video (*.avi)|*.avi;|Flash (*.swf)|*.swf|Flash Video (*.flv)|*.flv';
              1: axtypefile:='Documentos (*.doc,*.txt,*.rtf)|*.doc;*.txt;*.rtf';
              2: axtypefile:='Arquivos de Áudio (*.mp3,*.wav,*.wma)|*.mp3;*.wav;*.wma';
              3: axtypefile:='Imagens (*.jpg;*.jpeg)|*.jpg;*.jpeg|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)';
              4: axtypefile:='Compactados (*.zip,*.rar)|*.zip;*.rar';
              5: axtypefile:='Vídeo (*.avi,*.mpeg)|*.avi;*.mpeg';
              6: axtypefile:='Flash (*.swf,*.flv)|Flash (*.swf)|*.swf|Flash Video (*.flv)|*.flv';
              7: axtypefile:='Executáveis (*.exe)|*.exe';
         End;
end;

procedure Tmdl_filemanager.monta_tableclass(xcodmount3:Integer);
var axshowing: Boolean;
    xidTreeView,xcodmountID,xnumIMG: Integer;
    xIDitem: TListItem;
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
      With dm2.ds_sql6 do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+'_ax'+
                        ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                        ' AND xtp='+#39+AxDadosUsr.axparm+#39+
                        ' ORDER BY codigo';
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
          ListView3.Clear;
          TreeView3_cod.Clear;
          xidTreeView:=0;
          xcodmountID:=0;
          if (recordcount>0) then begin
              First;
              //xIDitem:= TListItem.Create(ListView3.Items);
              While not Eof do begin
                  if fieldbyname('codigo').AsInteger=xcodmount3 then xcodmountID:=xidTreeView;
                  TreeView3_cod.Add(fieldbyname('cod_class').AsString);
                  ListView3.AddItem(fieldbyname('cp1').AsString,nil);
                  xnumIMG:=fieldbyname('xfl').AsInteger;
                  if fieldbyname('prt').AsInteger>0 then xnumIMG:=xnumIMG+8;
                  ListView3.Items.Item[xidTreeView].ImageIndex:=xnumIMG;
                  Inc(xidTreeView);
                  Next;
              end;
              if xcodmountID=0 then First
              else Locate('codigo',xcodmount3,[]);
              ListView3.ItemIndex:=xcodmountID;
          end;
      end;
      atualiza_grade3;
      try loadx.Close; except end;
end;

function Tmdl_filemanager.Btsearch_auto_ax(pathdefault,filtrofind:string):Tbt_search_ax;
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

procedure Tmdl_filemanager.bt_del3Click(Sender: TObject);
var axshowing, axvincul, axerror: Boolean;
begin
      if (dm2.ds_sql6.RecordCount>0) and (cl_codCaption<>'novo') then begin
      With dm2.ds_sql8 do begin
         CommandText:= 'SELECT codigo FROM '+LstTables.Table[0]+
                       ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                       ' AND cod_class='+#39+cl_codCaption+#39+
                       ' ORDER BY codigo';
         Open;
         if (recordcount>0) then begin
            axvincul:=true;
            if not hwsf.BtConfirma('Existem Pastas vinculados com este Menu, remover vínculo?') then begin
               Close;
               hwsf.BtMensagem('Processo cancelado.');
               Exit;
            end;
         end;
      end;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo Menu';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo Menu';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm2.deleta_reg(LstTables.Table[0]+'_ax','cod_class',cl_codCaption,true,false) then begin
         dm2.deleta_reg(LstTables.Table[7]+'_ax','cod_it',cl_codCaption,false,false);
         //dm2.RemoveBinaryStreamPH(LstTables.Table[1]+'_ax','cod_class','icon','',cl_codCaption);
         //dm2.deleta_reg(LstTables.Table[1]+'_ax','cod_class',cl_cod.Caption,false);
         if axvincul then begin
           loadx.lbloading.Caption:='Removendo vínculos';
           loadx.lbloading.Repaint;
           loadx.Progressloading.position:=50;
           axerror:=false;
           With dm2.ds_sql8 do begin
                First;
                While not Eof do begin
                     dm2.executa.CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_class=:p0 '+
                                              'WHERE codigo=:p1';
                     dm2.executa.Params[0].AsInteger:=0;
                     dm2.executa.Params[1].AsInteger:=fieldbyname('codigo').AsInteger;
                     try
                         dm2.executa.Execute;
                     except
                         axerror:=true;
                     end;
                     Next;
                end;
           end;
           loadx.Progressloading.position:=75;
           dm2.ds_sql8.Close;
           dm2.ds_sql8.open;
           atualiza_grade3;
         end;
         dm2.ds_sql8.Close;
         hwsf.BtMensagem('Exclusão Efetuada com êxito');
         monta_tableclass(0);
         loadx.Progressloading.position:=100;
    end;
    try loadx.Close; except end;
    end;
end;

procedure Tmdl_filemanager.bt_exp2Click(Sender: TObject);
var xfiljpg,xfilenm, xmngll : String;
    xImagem_tmp : TMemoryStream;
    axshowing: Boolean;
begin
      if dm2.ds_sql3.FieldByName('xpk').AsInteger>0 then begin
         hwsf.BtMensagem('É necessário concluir o envio do arquivo antes do Download');
         exit;
      end;
      ExportFile.Filter:=axtypefile;
      ExportFile.FilterIndex:=0;
      ExportFile.FileName:= axnfl2 + axext2;
      if ExportFile.Execute then begin
         xfiljpg := ExportFile.FileName;
         if FileExists(xfiljpg) then begin
            if not hwsf.BtConfirma('Arquivo já existe substituir?'+#13+xfiljpg) then exit;
         end;
         xfilenm := ExtractFileName(ExportFile.FileName);
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Exportando arquivo ['+xfilenm+']';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Exportando arquivo ['+xfilenm+']';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.Max:=100;
         loadx.Progressloading.Position:=0;
         Application.ProcessMessages;
         xImagem_tmp := TMemoryStream.Create;
         xImagem_tmp.Clear;
         xImagem_tmp.Position:=0;
         xImagem_tmp := dm2.GetBinaryStreamPH(LstTables.Table[3],'cod_img','img_larg',ms_codCaption);
         xImagem_tmp.Seek(0,soFromBeginning);
         if xImagem_tmp.size > 0 then begin
            xImagem_tmp.Seek(0,soFromBeginning);
            xImagem_tmp.SaveToFile(xfiljpg);
            xmngll:='Arquivo ['+xfiljpg+'] exportado com sucesso.';
         end else xmngll:='ERRO ao exportar Arquivo ['+xfiljpg+'].';
         xImagem_tmp.Free;
         loadx.Close;
         hwsf.BtMensagem(xmngll);
      end;
end;

procedure Tmdl_filemanager.SpeedButton2Click(Sender: TObject);
begin
      if not form_cmt3.Showing then form_cmt3.Show;
end;

procedure Tmdl_filemanager.SpeedButton1Click(Sender: TObject);
begin
      if not form_cmt1.Showing then form_cmt1.Show;
end;

procedure Tmdl_filemanager.bt_new1Click(Sender: TObject);
begin
      addreg;
      if not form_cmt1.Showing then form_cmt1.Show
      else form_cmt1.atualizaReg;
end;

procedure Tmdl_filemanager.bt_new3Click(Sender: TObject);
begin
      addreg3;
      if not form_cmt3.Showing then form_cmt3.Show
      else form_cmt3.atualizaReg;
end;

procedure Tmdl_filemanager.SpeedButton4Click(Sender: TObject);
begin
      if (dm2.ds_sql3.RecordCount > 0) then begin
          if not form_cmt2.Showing then form_cmt2.Show
          else form_cmt2.atualizaReg;
      end else bt_open2.Click;
end;

procedure Tmdl_filemanager.bt_recursiveClick(Sender: TObject);
var axfilter:String;
    bt_search_ax_ADD: Tbt_search_ax;
    ximportok: Boolean;
begin
      if dm2.ds_sql.RecordCount<=0 then begin
         hwsf.BtMensagem('É necessário a inclusão de uma Pasta antes de Importar Imagens.');
         exit;
      end;
      //adiciona recursivamente imagens no banco de dados
      axfilter:=axtypefile;
      if (xtypefile_tmp = 3) then begin
          bt_search_ax_ADD:= Btsearch_auto_ax(pathdefault,axfilter);
      end else begin
          bt_search_ax_ADD:= hwsf.Btsearch_ax(pathdefault,axfilter);
      end;
      ximportok:=addFileList(bt_search_ax_ADD,true);
      if ximportok then 
      if hwsf.BtConfirma('Iniciar envio dos arquivo(s)?') then begin
         PageControlab.TabIndex:=1;
         MountaListaTarefas(true,0);
         SpeedButton8.Click;
      end;
end;

procedure Tmdl_filemanager.bt_open2Click(Sender: TObject);
begin
      ImportArqSet(true);
end;

procedure Tmdl_filemanager.ImportArqSet(ximpnew:Boolean);
var xfilext,xnamefile: String;
    axtypefiletmp:String;
    xexecldfile,axshowing: Boolean;
    xfilesize: Real;
    bt_search_ax_ADD: Tbt_search_ax;
begin
      if ximpnew then addreg2;
      if (xtypefile_tmp = 3) then begin
          axtypefiletmp:=ImportarImgDialog.Filter;
          ImportarImgDialog.Filter:=axtypefile;
          xexecldfile:=ImportarImgDialog.Execute;
          ImportarImgDialog.Filter:=axtypefiletmp;
      end else begin
          ImportFile.Filter:=axtypefile;
          xexecldfile:=ImportFile.Execute;
      end;
      if xexecldfile then begin
         xnamefile := ImportFile.FileName;
         //variaveis internas
         bt_search_ax_ADD.default:=True;
         bt_search_ax_ADD.descricao:='';
         bt_search_ax_ADD.countinit:=0;
         bt_search_ax_ADD.pathdefault:=ExtractFilePath(xnamefile);
         bt_search_ax_ADD.filelist:=TStringList.Create;
         bt_search_ax_ADD.filelist.Clear;
         bt_search_ax_ADD.filelist.Add(xnamefile);
         addFileList(bt_search_ax_ADD,ximpnew);
      end;
end;

procedure Tmdl_filemanager.SpeedButton3Click(Sender: TObject);
var xfilespath,xfiljpg,xmngll : String;
    xImagem_tmp : TMemoryStream;
    xidcount,xtotimg: Integer;
    axshowing,xfileexists: Boolean;
begin
      xtotimg:=dm2.ds_sql3.RecordCount;
      if xtotimg = 0 then begin
         hwsf.BtMensagem('Não há Aquivos cadastradas');
         exit;
      end;
      xfilespath:=hwsf.Btpath;
      if xfilespath = '' then begin
         hwsf.BtMensagem('É necessário selecionar um Caminho para exportação dos Arquivos');
      end else begin
         axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Iniciando';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Iniciando';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.Max:=xtotimg;
         loadx.Progressloading.position:=0;
         loadx.Progressloading2.Visible:=false;
         loadx.repaint;
         Application.ProcessMessages;
         dm2.ds_sql3.First;
         xImagem_tmp := TMemoryStream.Create;
         xidcount:=0;
         While not dm2.ds_sql3.Eof do begin
           Inc(xidcount);
           xfiljpg := axnfl2+axext2;
           axnfl2:=dm2.ds_sql3.fieldbyname('nfl').AsString;
           axext2:=dm2.ds_sql3.fieldbyname('ext').AsString;
           xamplsz2:=dm2.ds_sql3.fieldbyname('sz').AsInteger;
           loadx.Progressloading.position:=xidcount;
           if dm2.ds_sql3.FieldByName('xpk').AsInteger>0 then begin
              loadx.lbloading.Caption:='Exportando Arquivo '+xfiljpg+' ['+inttostr(xidcount)+'/'+inttostr(xtotimg)+']';
              loadx.lbloading.Repaint;
              Application.ProcessMessages;
              xfileexists:=true;
              if FileExists(xfilespath+'\'+xfiljpg) then begin
                 xfileexists:= hwsf.BtConfirma('Arquivo já existe substituir?'+#13+xfilespath+'\'+xfiljpg);
                 if xfileexists then begin
                    try
                        DeleteFile(xfilespath+'\'+xfiljpg);
                    except
                        xfileexists:=false;
                        hwsf.BtMensagem('Erro ao remover arquivo'+#13+xfilespath+'\'+xfiljpg);
                    end;
                 end;
              end;
              xImagem_tmp.Clear;
              xImagem_tmp.Position:=0;
              if xfileexists then begin
                 xImagem_tmp := dm2.GetBinaryStreamPH(LstTables.Table[3],'cod_img','img_larg',dm2.ds_sql3.fieldbyname('cod_img').AsString);
                 xImagem_tmp.Seek(0,soFromBeginning);
                 if xImagem_tmp.size > 0 then begin
                    xImagem_tmp.Seek(0,soFromBeginning);
                    xImagem_tmp.SaveToFile(xfilespath+'\'+xfiljpg);
                    xmngll:='Arquivo ['+xfilespath+'\'+xfiljpg+'] exportado com sucesso.';
                 end else xmngll:='ERRO ao exportar Arquivo ['+xfilespath+'\'+xfiljpg+'].';
                 loadx.lbloading.Caption:=xmngll;
                 loadx.lbloading.Repaint;
              end;
           end else begin
              loadx.lbloading.Caption:='ERRO: Arquivo '+xfiljpg+' ['+inttostr(xidcount)+'/'+inttostr(xtotimg)+']';
              loadx.lbloading.Repaint;
              Application.ProcessMessages;
           end;
           dm2.ds_sql3.Next;
         end;
         xImagem_tmp.Free;
         loadx.Close;
         hwsf.BtMensagem('Itens exportados com sucesso');
      end;
end;

procedure Tmdl_filemanager.ListView3DblClick(Sender: TObject);
begin
      SpeedButton2.Click;
end;

procedure Tmdl_filemanager.ListView3Click(Sender: TObject);
begin
      ListViewRefresh;
end;

procedure Tmdl_filemanager.ListViewRefresh;
var xcodY1: Integer;
begin
      if dm2.ds_sql6.Active then begin
         try
            xcodY1:=StrtoInt(TreeView3_cod.Strings[ListView3.ItemIndex]);
         except
            xcodY1:=0
         end;
         if ((xcodY1>0) and (dm2.ds_sql6.RecordCount>0)) then
             dm2.ds_sql6.Locate('cod_class',xcodY1,[]);
         atualiza_grade3;
      end;
      ListView3.SetFocus;
end;

procedure Tmdl_filemanager.TreeViewRefresh;
var xcodY1: Integer;
begin
      if dm2.ds_sql.Active then begin
         try
            xcodY1:=StrtoInt(TreeView1_cod.Strings[TreeView1.Selected.Index]);
         except
            xcodY1:=0
         end;
         if ((xcodY1>0) and (dm2.ds_sql.RecordCount>0)) then
             dm2.ds_sql.Locate('cod_gal',xcodY1,[]);
          atualiza_grade;
      end;
      TreeView1.SetFocus;
end;

procedure Tmdl_filemanager.FilesViewRefresh;
var xcodY1: Integer;
begin
      if dm2.ds_sql3.Active then begin
         try
            xcodY1:=StrtoInt(TreeView2_cod.Strings[ListView2.ItemIndex]);
         except
            xcodY1:=0
         end;
         if ((xcodY1>0) and (dm2.ds_sql3.RecordCount>0)) then
            dm2.ds_sql3.Locate('cod_img',xcodY1,[]);
         //Edit1.text:=MD5Hash(LstTables.Table[3]+'_'+'img_larg'+'_'+'cod_img'+'_'+InttoStr(xcodY1))+'.hws';
         atualiza_grade2;
      end;
      ListView2.SetFocus;
end;

procedure Tmdl_filemanager.ListView3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      ListViewRefresh;
end;

procedure Tmdl_filemanager.ListView3KeyPress(Sender: TObject;
  var Key: Char);
begin
      ListViewRefresh;
end;

procedure Tmdl_filemanager.ListView3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      ListViewRefresh;
end;

procedure Tmdl_filemanager.TreeView1Click(Sender: TObject);
begin
      TreeViewRefresh;
end;

procedure Tmdl_filemanager.TreeView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      TreeViewRefresh;
end;

procedure Tmdl_filemanager.TreeView1KeyPress(Sender: TObject;
  var Key: Char);
begin
      TreeViewRefresh;
end;

procedure Tmdl_filemanager.TreeView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      TreeViewRefresh;
end;

procedure Tmdl_filemanager.ListView2Click(Sender: TObject);
begin
      FilesViewRefresh;
end;

procedure Tmdl_filemanager.ListView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      FilesViewRefresh;
end;

procedure Tmdl_filemanager.ListView2KeyPress(Sender: TObject;
  var Key: Char);
begin
      FilesViewRefresh;
end;

procedure Tmdl_filemanager.ListView2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      FilesViewRefresh;
end;

procedure Tmdl_filemanager.ListView2DblClick(Sender: TObject);
begin
      SpeedButton4.Click;
end;

procedure Tmdl_filemanager.MenuItem6Click(Sender: TObject);
begin
      ImportArqSet(false);
end;

procedure Tmdl_filemanager.TreeView1DblClick(Sender: TObject);
begin
      SpeedButton1.Click;
end;

procedure Tmdl_filemanager.ApplicationEvents1Minimize(Sender: TObject);
begin
      ShowWindow(Application.Handle, SW_HIDE );
end;

procedure Tmdl_filemanager.finalizewind;
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
     dm2.ds_sql.Filter:='';
     dm2.ds_sql.Filtered:=false;
     dm2.ds_sql.Close;
     loadx.Progressloading.position:=50;
     dm2.ds_sql3.Filter:='';
     dm2.ds_sql3.Filtered:=false;
     dm2.ds_sql3.Close;
     dm2.ds_sql6.Filter:='';
     dm2.ds_sql6.Filtered:=false;
     dm2.ds_sql6.Close;
     loadx.Progressloading.position:=75;
     if dm2.executa5.Active then
        dm2.executa5.Close;
     if dm2.executa3.Active then
        dm2.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
end;

procedure Tmdl_filemanager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if TrayIcon_menu.Active then begin
       Action := caNone;
       Application.Minimize;
    end else begin
       finalizewind;
       Action := caFree;
    end;
end;

procedure Tmdl_filemanager.FormDestroy(Sender: TObject);
begin
     finalizewind;
     If TrayIcon_menu <> Nil Then FreeAndNil(TrayIcon_menu);
end;

procedure Tmdl_filemanager.SpeedButton5Click(Sender: TObject);
begin
      if not form_restrict3.Showing then form_restrict3.Show;
end;

procedure Tmdl_filemanager.SpeedButton6Click(Sender: TObject);
begin
      if not form_restrict1.Showing then form_restrict1.Show;
end;

procedure Tmdl_filemanager.SpeedButton7Click(Sender: TObject);
begin
      if not form_restrict2.Showing then form_restrict2.Show;
end;

procedure Tmdl_filemanager.xMensaStat(xmensStat:String);
begin
      RichEdit_status.Lines.Add(FormatDateTime('yyyymmdd hh:nn:ss',Now)+' - '+xmensStat);
end;

procedure Tmdl_filemanager.MountaListaTarefas(xmountaref:Boolean; xcodmount2:Integer);
var xcodgal,xpkText: string;
    xIDtable2,xcodmountID2,xnumIMG: Integer;
    axTar_codLng: String;
begin
     With dm2.ds_sql11 do begin
          if not xmountDBGrid1 then DBGrid1.Columns.Clear;
          xMensaStat('Montando lista de tarefas.');
          Application.ProcessMessages;
          axTar_codLng:=IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex]);
          if Active then Close;
          CommandText:= 'SELECT '+
             'A.codigo,A.cod_img,A.cod_gal,A.cod_lng,A.descricao,A.textft,A.blb,A.nfl,A.sz,A.ext,A.prt,A.xpt,A.xpi,A.xpp,A.xpk,A.xpth,A.xhid,'+
             'B.codigo,B.cod_gal,B.cod_web,B.cod_lng,B.cod_psn,B.cod_ls,B.descricao,B.textft,B.blb,B.xtp,B.cod_usrw,B.cod_class,B.nfl,B.ext,B.prt,'+
             'C.codigo,C.cod_class,C.cod_web,C.cod_lng,C.cod_ls,C.cp1,C.cp2,C.cp3,C.xfl,C.xtp,C.nfl,C.ext,C.prt'+
             ' FROM '+
             LstTables.Table[2]+' A, '+ //Arquivos
             LstTables.Table[0]+' B, '+ //Pastas
             LstTables.Table[0]+'_ax C '+ //Menus
             'WHERE '+
             ' A.xpk>0'+
             ' AND A.cod_lng= '+#39+axTar_codLng+#39+
             ' AND B.cod_lng= '+#39+axTar_codLng+#39+
             ' AND C.cod_lng= '+#39+axTar_codLng+#39+
             ' AND B.cod_gal=A.cod_gal '+
             ' AND C.cod_class=B.cod_class '+
             ' AND B.xtp='+#39+AxDadosUsr.axparm+#39+
             ' AND B.cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
             ' ORDER BY A.codigo';
          Open;
          Filtered:=true;
          Filter:='';
          ListView_tarefas.Clear;
          TreeView_tarefas_cod.Clear;
          xIDtable2:=0;
          xcodmountID2:=0;
          if recordcount>0 then begin
            First;
            While not Eof do begin
                Case fieldbyname('xpk').AsInteger of
                     0:xpkText:=chr(13)+'Concluído '+fieldbyname('xpp').AsString+'%';
                     1:xpkText:=chr(13)+'Enviando '+fieldbyname('xpp').AsString+'%';
                     2:xpkText:=chr(13)+'Parado '+fieldbyname('xpp').AsString+'%';
                End;
                if fieldbyname('codigo').AsInteger=xcodmount2 then xcodmountID2:=xIDtable2;
                TreeView_tarefas_cod.Add(fieldbyname('cod_img').AsString);
                ListView_tarefas.AddItem(fieldbyname('descricao').AsString+chr(13)+
                                  fieldbyname('nfl').AsString+fieldbyname('ext').AsString+chr(13)+
                                  fieldbyname('sz').AsString+' kb'+xpkText
                                  ,nil);
                xnumIMG:=ReturnFileType(fieldbyname('ext').AsString);
                if fieldbyname('xpk').AsInteger>0 then xnumIMG:=xnumIMG+8;
                ListView_tarefas.Items.Item[xIDtable2].ImageIndex:=xnumIMG;
                Inc(xIDtable2);
                Application.ProcessMessages;
                Next;
            end;
            xMensaStat(IntToStr(recordcount)+' Registros encontrados.');
            if xcodmountID2=0 then First
            else Locate('codigo',xcodmount2,[]);
            ListView_tarefas.ItemIndex:=xcodmountID2;
          end;
     end;
     if not xmountDBGrid1 then begin
        xmountDBGrid1:=true;
        DBGrid1.DataSource:=dm2.source_sql11;
        With DBGrid1.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='ID';
          Items[0].FieldName:='cod_img';
          Add;
          Items[1].Title.Caption:='Andamento';
          Items[1].FieldName:='xpp';
          Add;
          Items[2].Title.Caption:='Tamanho';
          Items[2].FieldName:='sz';
          Add;
          Items[3].Title.Caption:='Descrição';
          Items[3].FieldName:='descricao';
          Add;
          Items[4].Title.Caption:='Path';
          Items[4].FieldName:='xpth';
        end;
     end;
end;

procedure Tmdl_filemanager.SpeedButton8Click(Sender: TObject);
begin
     if not inProcessTar then
     if hwsf.BtConfirma('Iniciar tarefas?') then begin
        xMensaStat('Iniciando Sincronização dos dados.');
        SpeedButton8.Enabled:=false;
        SpeedButton11.Enabled:=true;
        Iniciartodasastarefas1.Enabled:=false;
        Parartarefas1.Enabled:=true;
        ProcessTarefas(true);
     end;
end;

procedure Tmdl_filemanager.PageControlabChange(Sender: TObject);
begin
     if PageControlab.TabIndex=1 then MountaListaTarefas(true,0);
end;

procedure Tmdl_filemanager.HWSfileManager1Click(Sender: TObject);
begin
      ShowWindow(Application.Handle,SW_RESTORE);
      SetForegroundWindow(Application.Handle);
end;

procedure Tmdl_filemanager.Finalizar1Click(Sender: TObject);
var xfinalizeTar: String;
begin
     if axCancelProcess then exit;
     {if  TreeView_tarefas_cod.Count=0 then begin
         xMensaStat('Nenhuma tarefa encontrada.');
         exit;
     end;}
     if inProcessTar then xfinalizeTar:='Existem tarefas em andamento,'+#13
     else xfinalizeTar:='';
     if hwsf.BtConfirma(xfinalizeTar+'Finalizar HWSfileManager?') then begin
        xMensaStat('Parando tarefas.');
        TrayIcon_menu.Active:=false;
        //Application.ProcessMessages;
        if xfinalizeTar<>'' then begin
           axCancelProcess:=true;
           While not axCancelProcess do Application.ProcessMessages;
        end;
        //Application.ProcessMessages;
        Close;
     end;
end;

procedure Tmdl_filemanager.SpeedButton11Click(Sender: TObject);
var axforcecancel: Boolean;
begin
     if inProcessTar then
         axCancelProcess:=true
     else begin
        Application.ProcessMessages;
        if axCancelProcess then axforcecancel:=true
        else axforcecancel:=hwsf.BtConfirma('Parar tarefas?');
        Application.ProcessMessages;
        if axforcecancel then begin
           paradoRefresh;
           axCancelProcess:=false;
           Application.ProcessMessages;
        end;
     end;
end;

procedure Tmdl_filemanager.paradoRefresh;
begin
     xMensaStat('Parado.');
     SpeedButton8.Enabled:=true;
     SpeedButton11.Enabled:=false;
     Iniciartodasastarefas1.Enabled:=true;
     Parartarefas1.Enabled:=false;
end;

procedure Tmdl_filemanager.MinimizarJanela1Click(Sender: TObject);
begin
     Close; 
end;

procedure Tmdl_filemanager.Sobre1Click(Sender: TObject);
begin
    hwsf.BtSobre;
end;

procedure Tmdl_filemanager.SpeedButton10Click(Sender: TObject);
begin
    if hwsf.BtConfirma('Atualizar lista de tarefas?') then MountaListaTarefas(true,0);
end;

procedure Tmdl_filemanager.SpeedButton14Click(Sender: TObject);
var xcodY1: Integer;
begin
      if dm2.ds_sql11.Active then begin
         try
            xcodY1:=StrtoInt(TreeView_tarefas_cod.Strings[ListView_tarefas.ItemIndex]);
         except
            xcodY1:=0
         end;
         if ((xcodY1>0) and (dm2.ds_sql11.RecordCount>0)) then begin
            if dm2.ds_sql11.Locate('cod_img',xcodY1,[]) then
            if hwsf.BtConfirma('Excluir tarefa selecionada?'+#13+ListView_tarefas.Selected.Caption) then begin
               excluiArqT(IntToStr(xcodY1),true);
               MountaListaTarefas(true,0);
            end;
         end;
      end;
end;

procedure Tmdl_filemanager.TrayIcon_menuDblClick(Sender: TObject);
begin
      HWSfileManager1.Click;
end;

function Tmdl_filemanager.ProcessTarefas(xprocess:Boolean):Boolean;
var xforIDtar,xtotIDtar,xpercax,xnumIMG,xerrocountTar,xposiniTar,
    xiniFltar,xtotFltar,
    xFilePostar,xFileTottar,
    ax_modTarID,ax_modPacoteTar,xcod_Tarefa,xposFileSet: Integer;
    xposFileSetBool: Boolean;
    xperc: Real;
    xfileParOUT_tar: TMemoryStream;
    xfileStr_tar: TFileStream;
    xfileName_tar,xfileName_transfer,xhidID_tar,xext_tar,xhid_tar,xperTarStr: String;
    zerror,zPostBnok,
    xlocatecod_tar: Boolean;
    c_modTar: Byte;
    Clcnxini, Clcnxend: TDateTime;
    function EnabledBttTar(xenbta:Boolean):Boolean;
    var axhintExc: String;
    begin
          TrayIcon_menu.Active := not xenbta;
          if not xenbta then TrayIcon_menu.Hint:='Conectando...'
          else axhintExc:='Finalizando';
          TrayIcon_menu.Hint:='HWSfilemanager'+#13+axhintExc;
          Application.ProcessMessages;
          SpeedButton10.Enabled:=xenbta;
          SpeedButton14.Enabled:=xenbta;
          TabSheet1.TabVisible:=xenbta;
          Paneltop.Visible:=xenbta;
          TrayIcon_menu.Animate:=not xenbta;
    end;
    function ParaProcesso:Boolean;
    begin
         Application.ProcessMessages;
         if axCancelProcess then begin
            With dm2.executa do begin
                try
                    CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET xpk:p0 '+
                                  'WHERE cod_img=:p1';
                    Params[0].AsInteger:=2;
                    Params[1].AsInteger:=xcod_Tarefa;
                    Execute;
                except
                end;
            end;
            ListView_tarefas.Items.Item[xforIDtar].Caption:=xperTarStr+chr(13)+'Parado '+IntToStr(xpercax)+'%';
            try
               xfileStr_tar.Free;
            except
            end;
            inProcessTar:=false;
            xMensaStat('Sincronização Parada.');
            EnabledBttTar(true);
            SpeedButton11.Click;
            Result:=true;
         end else Result:=false;
    end;
    function DateTimeDiff(Start, Stop : TDateTime) : Real;
    var TimeStamp : TTimeStamp;
    begin
      TimeStamp := DateTimeToTimeStamp(Stop - Start);
      Dec(TimeStamp.Date, TTimeStamp(DateTimeToTimeStamp(0)).Date);
      Result := (TimeStamp.Date*24*60*60)+(TimeStamp.Time/1000);
    end;
    function CalcCnx(xinicalc:Boolean):Boolean;
    var asxCalctot: Real;
    begin
          if xinicalc then begin
             Clcnxini:=Now;
          end else begin
             Clcnxend:=Now;
             asxCalctot:=DateTimeDiff(Clcnxini,Clcnxend);
             asxCalctot:=((asxCalctot*50)/1)/2;
             TrayIcon_menu.Hint:='HWSfilemanager'+#13+'Upload: '+FormatFloat('0.0',asxCalctot)+' kbps'+#13+'Conectado';
          end;
    end;
    function AtualizaProcess:Boolean;
    begin
        Application.ProcessMessages;
        if not zerror then Inc(xerrocountTar);
        if xerrocountTar = 3 then begin
           xMensaStat('Aguardando conexão para continuar.');
           TrayIcon_menu.Hint:='HWSfilemanager'+#13+'Aguardando conexão...';
           TrayIcon_menu.Animate:=false;
           Application.ProcessMessages;
           Sleep(2000);
        end else if ((xerrocountTar>3) and (zerror)) then begin
           xMensaStat('Reconectado, iniciando tarefa.');
           TrayIcon_menu.Hint:='HWSfilemanager'+#13+'Reconectado...';
           TrayIcon_menu.Animate:=true;
        end;
        Result:=true;
    end;
begin
      //tarefas
      if inProcessTar then exit;
      inProcessTar:=true;
      EnabledBttTar(false);
      Result:=false;
      axCancelProcess:=false;
      xfileName_sizefile:=100;
      ProgressBar2.Position := 0;
      ProgressBar2.Max := xfileName_sizefile;
      //ftp
      IdFTP1.Username := 'FsrXer67Io32Y25d';
      IdFTP1.Password := 'fjaioe5647GEi394Giesxcas93hJiue';
      IdFTP1.Host := 'srv2.hws.com.br';
      if IdFTP1.Connected then IdFTP1.Quit;
      IdFTP1.Connect;
      if not IdFTP1.Connected then begin
         xMensaStat('Erro ao conectar Servidor, Contate o Administrador!!!');
         xprocess:=false;
      end;
      if xprocess then begin
         //aqui
         xtotIDtar:=TreeView_tarefas_cod.Count-1;
         xfileParOUT_tar:= TMemoryStream.Create;
         ProgressBar1.Position:=0;
         ProgressBar1.Max:=xtotIDtar;
         for xforIDtar:=0 to xtotIDtar do begin
           if ListView_tarefas.Items.Item[xforIDtar].ImageIndex<8 then begin
              xMensaStat('Arquivo já Enviado: '+ListView_tarefas.Items.Item[xforIDtar].Caption);
           end else begin
             if ParaProcesso then begin
                Result:=false;
                exit;
             end;
             ProgressBar1.Position:=xforIDtar;
             Application.ProcessMessages;
             xerrocountTar:=0;
             zerror:=false;
             While not zerror do begin
                 if ParaProcesso then begin
                    Result:=false;
                    exit;
                 end;
                 try
                     dm2.ds_sql11.Close;
                     dm2.ds_sql11.Open;
                     Application.ProcessMessages;
                     xcod_Tarefa:=StrToInt(TreeView_tarefas_cod.Strings[xforIDtar]);
                     xlocatecod_tar:=dm2.ds_sql11.Locate('cod_img',xcod_Tarefa,[]);
                     if xlocatecod_tar then begin
                        xfileName_tar:=dm2.ds_sql11.fieldbyname('xpth').asstring;
                        xiniFltar:=dm2.ds_sql11.fieldbyname('xpi').AsInteger;
                        xtotFltar:=dm2.ds_sql11.fieldbyname('xpt').AsInteger;
                        xext_tar:=dm2.ds_sql11.fieldbyname('ext').AsString;
                        xhid_tar:=dm2.ds_sql11.fieldbyname('xhid').AsString;
                        xpercax:=dm2.ds_sql11.fieldbyname('xpp').AsInteger;
                        xperTarStr:=dm2.ds_sql11.fieldbyname('descricao').AsString+chr(13)+
                                    dm2.ds_sql11.fieldbyname('nfl').AsString+
                                    dm2.ds_sql11.fieldbyname('ext').AsString+chr(13)+
                                    dm2.ds_sql11.fieldbyname('sz').AsString+' kb';
                        xfileName_sizefile:=dm2.ds_sql11.fieldbyname('sz').AsInteger;
                     end;
                     zerror:=true;
                 except
                     zerror:=false;
                 end;
                 AtualizaProcess;
             end;
             if xlocatecod_tar then begin
                if ParaProcesso then begin
                   Result:=false;
                   exit;
                end;
                if FileExists(xfileName_tar) then begin
                   zerror:=false;
                   xfileName_transfer:='/'+IntToStr(AxDadosUsr.cod_web)+'/'+MD5Hash(LstTables.Table[3]+'_'+'img_larg'+'_'+'cod_img'+'_'+IntToStr(xcod_Tarefa))+'.hws';
                   xMensaStat('Sincronizando Arquivo ['+xfileName_tar+'].');
                   While not zerror do begin
                      try
                        Application.ProcessMessages;
                        if IdFTP1.Connected then begin
                           //IdFTP1.TransferType := ftBinary;
                           xMensaStat('Enviando Arquivo ['+xfileName_tar+'].');
                           IdFTP1.Put(xfileName_tar, xfileName_transfer);
                           //IdFTP1.Quit;
                           Application.ProcessMessages;
                           if ParaProcesso then begin
                              xMensaStat('Envio cancelado...');
                              Result:=false;
                              exit;
                           end else begin
                              zerror:=true;
                              xMensaStat('Concluindo tarefa...');
                           end;
                        end;
                      except
                        try
                            if IdFTP1.Connected then IdFTP1.Quit;
                            if ParaProcesso then begin
                               xMensaStat('Envio cancelado...');
                               Result:=false;
                               exit;
                           end;
                        except
                        end;
                      end;
                      if not IdFTP1.Connected then IdFTP1.Connect;
                   end;
                   Application.ProcessMessages;
                   xfileStr_tar.Free;
                   xerrocountTar:=0;
                   zerror:=false;
                   ProgressBar3.Position:=0;
                   dm2.axshowingMNG:=true;
                   zPostBnok:=false;
                   While not zerror do begin
                      if ParaProcesso then begin
                         Result:=false;
                         exit;
                      end;
                      if not zPostBnok then begin
                         ProgressBar3.Position:=0;
                         zPostBnok:=dm2.PostBinaryStreamPHEnd(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(xcod_Tarefa),IntToStr(xtotFltar));
                         zerror:=zPostBnok;
                      end;
                      if zPostBnok then begin
                         Application.ProcessMessages;
                         if ParaProcesso then begin
                            Result:=false;
                            exit;
                         end;
                         With dm2.executa do begin
                           try
                              CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET xpk=:p0 '+
                                            'WHERE cod_img=:p1';
                              Params[0].AsInteger:=0;
                              Params[1].AsInteger:=xcod_Tarefa;
                              Execute;
                              zerror:=true;
                           except
                              zerror:=false;
                           end;
                         end;
                         if zerror then begin
                            xnumIMG:=ReturnFileType(xext_tar);
                            ListView_tarefas.Items.Item[xforIDtar].ImageIndex:=xnumIMG;
                            ListView_tarefas.Items.Item[xforIDtar].Caption:=xperTarStr+chr(13)+'Concluído 100%';
                            Application.ProcessMessages;
                         end;
                      end;
                      AtualizaProcess;
                   end;
                   xMensaStat('Tarefa ['+IntToStr(xcod_Tarefa)+'] concluída...'+chr(13));
                   {xMensaStat('Sincronizando Arquivo ['+xfileName_tar+'].');
                   xfileStr_tar:= TFileStream.Create(xfileName_tar,fmOpenRead);//fmCreate or fmOpenWrite or fmShareExclusive);
                   xfileStr_tar.Position:=0;
                   Application.ProcessMessages;
                   xFileTottar:=xfileStr_tar.Size;
                   xfileStr_tar.Position:=0;
                   xfileParOUT_tar.Clear;
                   xfileParOUT_tar.Position:=0;
                   ax_modTarID:=0;
                   ProgressBar2.Position:=0;
                   xperc:=100/xFileTottar;
                   if xiniFltar=0 then xposiniTar:=0
                   else xposiniTar:=((xiniFltar)*50000)+1;
                   //else xposiniTar:=;
                   xfileStr_tar.Position:=xposiniTar;
                   xposFileSetBool:=true;
                   if xiniFltar > 0 then ax_modPacoteTar:=xiniFltar-1
                   else ax_modPacoteTar:=0;
                   Application.ProcessMessages;
                   for xFilePostar:=xposiniTar to xFileTottar-1 do begin
                       if xposFileSetBool then begin
                          xposFileSetBool:=false;
                          xposFileSet:=xFilePostar;
                       end;
                       if ParaProcesso then begin
                          Result:=false;
                          exit;
                       end;
                       xpercax:=StrtoInt(formatfloat('0',xperc*xFilePostar));
                       if xpercax>100 then xpercax:=100;
                       ProgressBar2.Position:=xpercax;
                       ListView_tarefas.Items.Item[xforIDtar].Caption:=xperTarStr+chr(13)+'Enviando '+IntToStr(xpercax)+'%';
                       xfileStr_tar.Read(c_modTar, 1);
                       xfileParOUT_tar.Write(c_modTar,1);
                       Application.ProcessMessages;
                       if (ax_modTarID = 50000) or (xFilePostar=xFileTottar-1) then begin
                          Inc(ax_modPacoteTar);
                          if (ax_modPacoteTar>xiniFltar) then begin
                           //upload
                           Application.ProcessMessages;
                           ProgressBar3.Position:=0;
                           dm2.axshowingMNG:=true;
                           xerrocountTar:=0;
                           zerror:=false;
                           zPostBnok:=false;
                           While not zerror do begin
                             if ParaProcesso then begin
                                Result:=false;
                                exit;
                             end;
                             if not zPostBnok then begin
                                ProgressBar3.Position:=0;
                                CalcCnx(true);
                                xfileParOUT_tar.Position:=0;                                                                                                                                      //ax_modPacoteTar
                                zPostBnok:=dm2.PostBinaryStreamPHPart(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(xcod_Tarefa),IntToStr(xposFileSet+1),xfileParOUT_tar);
                                if zPostBnok then CalcCnx(false);
                                zerror:=zPostBnok;
                             end;
                             if zPostBnok then begin
                               if ParaProcesso then begin
                                  Result:=false;
                                  exit;
                               end;
                               With dm2.executa do begin
                                 try
                                  CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET xpi=:p0,xpp=:p1,xpk=:p2 '+
                                                'WHERE cod_img=:p3';
                                  Params[0].AsInteger:=ax_modPacoteTar;
                                  Params[1].AsInteger:=xpercax;
                                  Params[2].AsInteger:=1;
                                  Params[3].AsInteger:=xcod_Tarefa;
                                  Execute;
                                  zerror:=true;
                                 except
                                  zerror:=false;
                                 end;
                                 Application.ProcessMessages;
                               end;
                             end;
                             AtualizaProcess;
                           end;
                           ProgressBar3.Position:=0;
                           dm2.axshowingMNG:=false;
                          end;
                          xfileParOUT_tar.Clear;
                          xfileParOUT_tar.Position:=0;
                          xposFileSetBool:=true;
                          ax_modTarID:=0;
                       end else begin
                          Inc(ax_modTarID);
                       end;
                   end;
                   Application.ProcessMessages;
                   xfileStr_tar.Free;
                   xerrocountTar:=0;
                   zerror:=false;
                   ProgressBar3.Position:=0;
                   dm2.axshowingMNG:=true;
                   zPostBnok:=false;
                   While not zerror do begin
                      if ParaProcesso then begin
                         Result:=false;
                         exit;
                      end;
                      if not zPostBnok then begin
                         ProgressBar3.Position:=0;
                         zPostBnok:=dm2.PostBinaryStreamPHEnd(LstTables.Table[3],'INST','codigo','cod_img','img_ico','img_larg','img_ico_sz','img_larg_sz',IntToStr(xcod_Tarefa),IntToStr(xtotFltar));
                         zerror:=zPostBnok;
                      end;
                      if zPostBnok then begin
                         Application.ProcessMessages;
                         if ParaProcesso then begin
                            Result:=false;
                            exit;
                         end;
                         With dm2.executa do begin
                           try
                              CommandText:= 'UPDATE '+mdl_filemanager.LstTables.Table[2]+' SET xpk=:p0 '+
                                            'WHERE cod_img=:p1';
                              Params[0].AsInteger:=0;
                              Params[1].AsInteger:=xcod_Tarefa;
                              Execute;
                              zerror:=true;
                           except
                              zerror:=false;
                           end;
                         end;
                         if zerror then begin
                            xnumIMG:=ReturnFileType(xext_tar);
                            ListView_tarefas.Items.Item[xforIDtar].ImageIndex:=xnumIMG;
                            ListView_tarefas.Items.Item[xforIDtar].Caption:=xperTarStr+chr(13)+'Concluído 100%';
                            Application.ProcessMessages;
                         end;
                      end;
                      AtualizaProcess;
                   end;
                   xMensaStat('Tarefa ['+IntToStr(xcod_Tarefa)+'] concluída...'+chr(13));}
                end else begin
                   if ParaProcesso then begin
                      Result:=false;
                      exit;
                   end;
                   xhidID_tar:= copy(xfileName_tar,1,3);
                   xhidID_tar:=dm2.HDKeyNum(xhidID_tar);
                   if xhidID_tar<>xhid_tar then
                      xMensaStat('Arquivo ['+xfileName_tar+'] não localizado [Unidade de disco Incorreta].')
                   else xMensaStat('Arquivo ['+xfileName_tar+'] não localizado.');
                end;
             end else xMensaStat(IntToStr(xcod_Tarefa)+'Tarefa não localizada ou exluída.');
          end;
         end;
         dm2.ds_sql11.Close;
         dm2.ds_sql11.Open;
         EnabledBttTar(True);
         paradoRefresh;
         xMensaStat('Sincronização concluída com sucesso.');
         monta_table2(False,True, 0);
      end else begin
         xMensaStat('Parado.');
      end;
      xfileName_sizefile:=100;
      ProgressBar2.Position := 0;
      ProgressBar2.Max := xfileName_sizefile;
      Application.ProcessMessages;
      try
         if IdFTP1.Connected then IdFTP1.Quit;
      except
      end;
      inProcessTar:=false;
      Result:=true;
end;

procedure Tmdl_filemanager.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

procedure Tmdl_filemanager.IdFTP1Work(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
      ProgressBar2.Position := AWorkCount;
      Application.ProcessMessages;
      if axCancelProcess then begin
         xfileName_sizefile:=100;
         ProgressBar2.Position := 0;
         ProgressBar2.Max := xfileName_sizefile;
         IdFTP1.CancelWriteBuffer;
         IdFTP1.Quit;
      end;
end;

procedure Tmdl_filemanager.IdFTP1WorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
    ProgressBar2.Max := xfileName_sizefile;//IdFTP1.Size(('/midas.dll\');
    ProgressBar2.Position := 0;
end;

function Tmdl_filemanager.updtZip(xcod_galudp:Integer; set_galudp:Boolean):Integer;
var axcod: Integer;
    axshowing: Boolean;
    xfileok: Integer;
    execins_udp: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando arquivo...';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando arquivo...';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.Max:=100;
      loadx.Progressloading.position:=0;
      loadx.Progressloading2.Visible:=true;
      loadx.repaint;
      Application.ProcessMessages;
      //variaveis internas
      axcod:=dm2.GetCodMax(LstTables.Table[9],'codigo','');
      xfileok:=0;
      with dm2.executa do begin
           CommandText:= 'SELECT * FROM '+LstTables.Table[9]+
                         ' WHERE cod_web='+#39+IntToStr(AxDadosUsr.cod_web)+#39+
                         ' AND cod_gal='+#39+IntToStr(xcod_galudp)+#39+
                         ' AND cpup='+#39+'0'+#39;
           try
             Open;
             execins_udp:= (Fields[0].AsInteger>0);
           except
             execins_udp:= true;
             xfileok:=4;
           end;
           if ((not execins_udp) and (xfileok<>4)) then begin
              CommandText:= 'INSERT INTO '+LstTables.Table[9]+' (codigo,cod_web,cod_gal,cpup,cpdt,cppr) '+
                            'VALUES(:p0,:p1,:p2,:p3,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',:p4)';
              Params[0].AsInteger:=axcod;
              Params[1].AsInteger:=AxDadosUsr.cod_web;
              Params[2].AsInteger:=xcod_galudp;
              Params[3].AsInteger:=0;
              Params[4].AsInteger:=0;
              try
                  Execute;
                  xfileok:=1;
              except
                  xfileok:=2;
              end;
           end else xfileok:=3;
      end;
      loadx.Close;
      Case xfileok of
          1: hwsf.BtMensagem('Arquivo atualizado.');
          2: hwsf.BtMensagem('Erro ao atualizar arquivo.');
          3: hwsf.BtMensagem('Arquivo aguardando atualização.');
          4: hwsf.BtMensagem('Erro ao atualizar arquivo.');
      End;
      Result:=xfileok;
end;

procedure Tmdl_filemanager.SpeedButton9Click(Sender: TObject);
begin
    //Atualizar Zip
    if hwsf.BtConfirma('Gerar Arquivo Zip para a pasta selecionada?') then
       updtZip(axcod_gal,false);
end;

end.
