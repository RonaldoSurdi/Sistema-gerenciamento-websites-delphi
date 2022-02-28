{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions
392
Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_photogalery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, AppEvnts;

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
    ab_textft : array[0..20] of TStringList;
    ab_blbft : array[0..20] of TMemoryStream;
    ms_descricao : array[0..20] of String;
    ms_textft : array[0..20] of TStringList;
    ms_blbft : array[0..20] of TMemoryStream;
  End;
  Tmdl_photogalery = class(TForm)
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
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    Lb_countreg1: TLabel;
    Panel12: TPanel;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Splitter2: TSplitter;
    Lb_countreg2: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    ToolBar4: TToolBar;
    bt_recursive: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_save2: TSpeedButton;
    Panel9: TPanel;
    Panel11: TPanel;
    DBGrid2: TDBGrid;
    Splitter3: TSplitter;
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
    bt_del2: TComboSpeedButton;
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
    Panel15: TPanel;
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
    GroupBox9: TGroupBox;
    Panel18: TPanel;
    ms_titulo: TEdit;
    Label8: TLabel;
    Label6: TLabel;
    ms_cod: TLabel;
    Salvarcomo1: TMenuItem;
    ExportarImgDialog: TSavePictureDialog;
    Panel20: TPanel;
    bt_help: TSpeedButton;
    StatusBar1: TStatusBar;
    Panel5: TPanel;
    Panel13: TPanel;
    Label10: TLabel;
    Label_size1: TLabel;
    chk_view1: TCheckBox;
    swf_logo1: TShockwaveFlash;
    Splitter4: TSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel8: TPanel;
    Panel19: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    ab_cod: TLabel;
    ComboBox_model: TComboBox;
    ab_titulo: TEdit;
    ab_default: TCheckBox;
    GroupBox8: TGroupBox;
    Panel3: TPanel;
    ToolBar2: TToolBar;
    bt_new1: TSpeedButton;
    bt_del1: TSpeedButton;
    bt_save1: TSpeedButton;
    ToolBar3: TToolBar;
    bt_open1: TSpeedButton;
    bt_limpar1: TSpeedButton;
    bt_view1: TSpeedButton;
    Panel10: TPanel;
    swf_logo2: TShockwaveFlash;
    Panel14: TPanel;
    Label12: TLabel;
    Label_size2: TLabel;
    chk_view2: TCheckBox;
    ToolBar1: TToolBar;
    bt_open2: TSpeedButton;
    bt_limpar2: TSpeedButton;
    ComboSpeedButton1: TComboSpeedButton;
    Splitter5: TSplitter;
    ab_detalhes: TRichEdit;
    ms_detalhes: TRichEdit;
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
    procedure ComboSpeedButton1Click(Sender: TObject);
    procedure Ampliar1Click(Sender: TObject);
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
    procedure Salvarcomo1Click(Sender: TObject);
    procedure bt_helpClick(Sender: TObject);
    procedure StatusBar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EVsaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EVsave2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit,xupdatelogo1,xupdatelogo2,xupdatebanner: Boolean;
    pathdefault : string;
    ax_ab_cod,axcod_gal,ax_ms_cod,axcod_img,axcod_ent: Integer;
    LstTables: TLstTables;
    LstModels: TLstModels;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xlogosz1,xlogosz2,xamplsz2,xbannersz: Integer;
    xlogotmp1,xlogotmp2,xampltmp2,xbannertmp: TMemoryStream;
    xlogotmp2_tmp,xampltmp2_tmp: TMemoryStream; //ax inserimg
    procedure monta_lng;
    procedure monta_table1;
    procedure monta_table2(xnewgal,xuplng:Boolean);
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
    function retorna_TTabSheet(xidxcod:Integer):TTabSheet;
    procedure save_cfg(xcodlng: Integer);
    function inserimg(xnamefile,xfilext:String;
                      xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
                      xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp:Integer;
                      xic_ajt,xic_pr,xil_ajt,xil_pr: Boolean):Boolean;
    { Private declarations }
  public
    mv_mouse: TPoint;
    cp_mouse: bool;
    xreceivetrad : String;
    xtimerresponse,
    xiniCodab: Integer;
    //processoand: Boolean;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_photogalery: Tmdl_photogalery;

implementation
uses udm, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd,
  umdl_photogalery_view;

{$R *.dfm}

procedure Tmdl_photogalery.FormClose(Sender: TObject; var Action: TCloseAction);
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
     loadx.Progressloading.position:=75;
     if dm.executa5.Active then
        dm.executa5.Close;
     if dm.executa3.Active then
        dm.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_photogalery.FormCreate(Sender: TObject);
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
     mdl_photogalery.Caption:= AxDadosUsr.axtitle;
     xinit:=true;
     axcod_ent:=0;
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
     monta_table3;
     loadx.Progressloading.position:=100;
     try loadx.Close; except end;
end;

procedure Tmdl_photogalery.monta_lng;
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

procedure Tmdl_photogalery.monta_table1;
var axshowing: Boolean;
    xdsqlfilter: String;
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

procedure Tmdl_photogalery.monta_table2(xnewgal,xuplng:Boolean);
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

{procedure Tmdl_photogalery.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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
end;}

procedure Tmdl_photogalery.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
    ToolBar_lng1.Width:=Panel1.Width-244;
    PageControl_languagens.Width:=ToolBar_lng1.Width-61;
    ComboBox_web.Width:=ToolBar_web.Width-53;
    GroupBox1.Height := strtoint(formatfloat('0',(GroupBox1.Height + GroupBox2.Height) / 2));
end;

procedure Tmdl_photogalery.FormActivate(Sender: TObject);
begin
      mdl_photogalery.Refresh;
      if xinit then begin
         xinit:=false;
         if (xiniCodab>0) then begin
             GroupBox1.Visible:=false;
             Splitter3.Visible:=false;
             dm.ds_sql.Locate('codigo',xiniCodab,[]);
         end;
      end;
end;

procedure Tmdl_photogalery.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tmdl_photogalery.addreg;
begin
     ComboBox_model.Enabled:=true;
     ab_cod.Caption:='novo';
     ax_ab_cod:=0;
     ab_titulo.Text:='';
     ab_detalhes.Clear;
     ab_default.Checked:=true;
     limpaphoto1(False);
     limpaphoto2(False);
     monta_table2(True,False);
     travaformImages(true);
     addreg2;
     travaformImages(false);
end;

procedure Tmdl_photogalery.travaformImages(xtrava: Boolean);
begin
     chk_view2.Enabled:=xtrava;
     Panel7.Visible:=xtrava;
     if xtrava then begin
        ms_titulo.Color:=clWindow;
        ms_detalhes.Color:=clWindow;
        DBGrid2.Color:=clWhite;
     end else begin
        ms_titulo.Color:=$00F5F5F5;
        ms_detalhes.Color:=$00F5F5F5;
        DBGrid2.Color:=$00F5F5F5;
     end;
     GroupBox2.Enabled:=xtrava;
end;

procedure Tmdl_photogalery.addreg2;
begin
     ms_cod.Caption:='novo';
     ax_ms_cod:=0;
     ms_titulo.Text:='';
     ms_detalhes.Clear;
     limpaphoto2(False);
end;

procedure Tmdl_photogalery.atualiza_grade;
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
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('textft')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            ab_detalhes.Lines.LoadFromStream(st_stream);
            st_stream.free;
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
            ComboBox_model.Enabled:=false;
            loadx.Progressloading.position:=50;
            monta_table2(False,xuplng);
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
      if chk_view1.Checked then getLogo1;
      try loadx.Close; except end;
end;

procedure Tmdl_photogalery.limpaphoto1(xupdateset:Boolean);
begin
     xupdatelogo1:=xupdateset;
     xlogotmp1.Clear;
     xlogotmp1.Seek(0,soFromBeginning);
     xlogosz1:=0;
     Label_size1.Caption:='0 kb';
     swf_logo1.Visible:=false;
     swf_logo1.LoadMovie(0,'lixo');
end;

procedure Tmdl_photogalery.atualiza_grade2;
var axshowing: Boolean;
    st_stream: TMemoryStream;
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
            loadx.Progressloading.position:=90;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('textft')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            ms_detalhes.Lines.LoadFromStream(st_stream);
            st_stream.free;
            loadx.Progressloading.position:=100;
            if chk_view2.Checked then getLogo2;
         end;
      end;
      Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      try loadx.Close; except end;
end;

procedure Tmdl_photogalery.limpaphoto2(xupdateset:Boolean);
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

procedure Tmdl_photogalery.bt_new1Click(Sender: TObject);
begin
      addreg;
      ab_titulo.SetFocus;
end;

procedure Tmdl_photogalery.bt_new2Click(Sender: TObject);
begin
      addreg2;
      ms_titulo.SetFocus;
end;

procedure Tmdl_photogalery.bt_del1Click(Sender: TObject);
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
    try loadx.Close; except end;
end;

procedure Tmdl_photogalery.bt_save1Click(Sender: TObject);
var axcod,axcod2,axgal_id,cod_model,xidxlng,xid_default,ax_ab_codinsert: integer;
    axshowing,xexecutaimg,axInc_traduzir: Boolean;
    xtxt1: String;
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
     if ab_cod.Caption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= ab_titulo.Text;
        xtxt2:= TStringList.Create;
        xtxt2.Clear;
        xtxt2.Assign(ab_detalhes.Lines);
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
                  listaAux.ab_textft[axgal_id].Clear;
                  if listaLng.trd[axgal_id]='English' then xid_default:=axgal_id;
              end;
              if (xid_default=xidxlng) then begin
                 listaAux.ab_descricao[xid_default]:=xtxt1;
                 listaAux.ab_textft[xid_default].Assign(xtxt2);
              end else begin
                 listaAux.ab_descricao[xidxlng]:=xtxt1;
                 listaAux.ab_textft[xidxlng].Assign(xtxt2);
                 loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet(xid_default).Caption;
                 loadx.lbloading.Repaint;
                 xtxt1:=recebetraducao(xtxt1,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
                 if copy(xtxt1,1,7)='Error: ' then xtxt1:=listaAux.ab_descricao[xid_default];
                 if xtxt1 = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 xtxt2.Text:=recebetraducao(xtxt2.Text,listaLng.trd[xidxlng],listaLng.trd[xid_default]);
                 if copy(xtxt2.Text,1,7)='Error: ' then begin
                    xtxt2.Clear;
                    xtxt2.Assign(listaAux.ab_textft[xid_default]);
                 end;
                 if xtxt2.Text = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 listaAux.ab_descricao[xid_default]:=xtxt1;
                 listaAux.ab_textft[xid_default].Assign(xtxt2);
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
                     xtxt2.Text:=recebetraducao(listaAux.ab_textft[xid_default].Text,listaLng.trd[xid_default],listaLng.trd[axgal_id]);
                     if copy(xtxt2.Text,1,7)='Error: ' then begin
                        xtxt2.Clear;
                        xtxt2.Assign(listaAux.ab_textft[xid_default]);
                     end;
                     if xtxt2.Text = '<|erro|>' then begin
                        loadx.Close;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     listaAux.ab_descricao[axgal_id]:=xtxt1;
                     listaAux.ab_textft[axgal_id].Assign(xtxt2);
                  end;
              end;
              loadx.lbloading.Caption:='Gravando dados, aguarde.';
              loadx.lbloading.Repaint;
        end else begin
              loadx.Progressloading2.Max:=listaLng.count*2;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  listaAux.ab_descricao[axgal_id]:=xtxt1;
                  listaAux.ab_textft[axgal_id].Assign(xtxt2);
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
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_gal,cod_web,cod_lng,cod_psn,cod_ls,descricao,textft,blb,xtp,cod_usrw) '+
                            'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10)';
                 Params[0].AsInteger:=axcod;
                 Params[1].AsInteger:=axcod_gal;
                 Params[2].AsInteger:=AxDadosUsr.cod_web;
                 Params[3].AsInteger:=listaLng.cod_lng[axgal_id];
                 Params[4].AsInteger:=cod_model;
                 Params[5].AsString:=BoolToStr(ab_default.Checked);
                 Params[6].AsString:=listaAux.ab_descricao[axgal_id];
                 Params[7].Assign(listaAux.ab_textft[axgal_id]);
                 //Params[8].Assign(listaAux.ab_textft[axgal_id]);
                 xtxt3:= TMemoryStream.Create;
                 xtxt3.Clear;
                 xtxt3.Seek(0,soFromBeginning);
                 listaAux.ab_textft[axgal_id].SaveToStream(xtxt3);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[8].LoadFromStream(xtxt3,ftblob);
                 Params[9].AsString:=AxDadosUsr.axparm;
                 Params[10].AsInteger:=axcod_ent;
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
                 xtxt3.Free;
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
            Params[1].Assign(ab_detalhes.Lines);
            xtxt3:= TMemoryStream.Create;
            xtxt3.Clear;
            xtxt3.Seek(0,soFromBeginning);
            ab_detalhes.Lines.SaveToStream(xtxt3);
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
            xtxt3.Free;
            ax_ab_codinsert:= ax_ab_cod;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_psn=:p0,cod_ls=:p1 '+
                          'WHERE cod_gal=:p2';
            loadx.Progressloading.position:=40;
            Params[0].AsInteger:=StrtoInt(LstModels.codigo[ComboBox_model.ItemIndex]);
            Params[1].AsString:=BoolToStr(ab_default.Checked);
            Params[2].AsInteger:=axcod_gal;
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

procedure Tmdl_photogalery.ComboBox_webChange(Sender: TObject);
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

procedure Tmdl_photogalery.bt_save2Click(Sender: TObject);
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
        hwsf.BtMensagem('É necessário gravar as alterações do álbum.');
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
     if ms_cod.Caption = 'novo' then begin
        loadx.Progressloading2.Visible:=true;
        loadx.repaint;
        xtxt1:= ms_titulo.Text;
        xtxt2:= TStringList.Create;
        xtxt2.Clear;
        xtxt2.Assign(ms_detalhes.Lines);
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
                  listaAux.ms_textft[axgal_id].Clear;
                  if listaLng.trd[axgal_id]='English' then xid_default:=axgal_id;
              end;
              if (xid_default=xidxlng) then begin
                 listaAux.ms_descricao[xid_default]:=xtxt1;
                 listaAux.ms_textft[xid_default].Assign(xtxt2);
              end else begin
                 listaAux.ms_descricao[xidxlng]:=xtxt1;
                 listaAux.ms_textft[xidxlng].Assign(xtxt2);
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
                 if copy(xtxt2.Text,1,7)='Error: ' then begin
                    xtxt2.Clear;
                    xtxt2.Assign(listaAux.ms_textft[xid_default]);
                 end;
                 if xtxt2.Text = '<|erro|>' then begin
                    loadx.Close;
                    hwsf.BtMensagem('Erro na conexão');
                    exit;
                 end;
                 listaAux.ms_descricao[xid_default]:=xtxt1;
                 listaAux.ms_textft[xid_default].Assign(xtxt2);
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
                     xtxt2.Text:=recebetraducao(listaAux.ms_textft[xid_default].Text,listaLng.trd[xid_default],listaLng.trd[axgal_id]);
                     if copy(xtxt2.Text,1,7)='Error: ' then begin
                        xtxt2.Clear;
                        xtxt2.Assign(listaAux.ms_textft[xid_default]);
                     end;
                     if xtxt2.Text = '<|erro|>' then begin
                        loadx.Close;
                        hwsf.BtMensagem('Erro na conexão');
                        exit;
                     end;
                     listaAux.ms_descricao[axgal_id]:=xtxt1;
                     listaAux.ms_textft[axgal_id].Assign(xtxt2);
                  end;
              end;
              axcodinsert:=axcod;
              loadx.lbloading.Caption:='Gravando dados, aguarde.';
              loadx.lbloading.Repaint;
        end else begin
              loadx.Progressloading2.Max:=listaLng.count*2;
              for axgal_id:=0 to listaLng.count-1 do begin
                  loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                  listaAux.ms_descricao[axgal_id]:=xtxt1;
                  listaAux.ms_textft[axgal_id].Assign(xtxt2);
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
                 Params[5].Assign(listaAux.ms_textft[axgal_id]);
                 xtxt3:= TMemoryStream.Create;
                 xtxt3.Clear;
                 xtxt3.Seek(0,soFromBeginning);
                 listaAux.ms_textft[axgal_id].SaveToStream(xtxt3);
                 xtxt3.Seek(0,soFromBeginning);
                 Params[6].LoadFromStream(xtxt3,ftblob);
                 try
                     Execute;
                 except
                     try loadx.Close; except end;
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
                 xtxt3.Free;
             end;
        end;
        loadx.Progressloading.position:=50;
        loadx.Progressloading2.Visible:=false;
        loadx.repaint;
     end else begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+LstTables.Table[2]+' SET descricao=:p0,textft=:p1,blb=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsString:=ms_titulo.Text;
            loadx.Progressloading.position:=20;
            Params[1].Assign(ms_detalhes.Lines);
            xtxt3:= TMemoryStream.Create;
            xtxt3.Clear;
            xtxt3.Seek(0,soFromBeginning);
            ms_detalhes.Lines.SaveToStream(xtxt3);
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
        xtxt3.Free;
        axcodinsert:=ax_ms_cod;
     end;
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

procedure Tmdl_photogalery.getLogo1;
var axcodBlb: Integer;
begin
     try
        axcodBlb:=StrtoInt(ab_cod.Caption);
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

procedure Tmdl_photogalery.abretmplogo1;
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

procedure Tmdl_photogalery.getLogo2;
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

procedure Tmdl_photogalery.abretmplogo2;
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

procedure Tmdl_photogalery.getBanner;
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

procedure Tmdl_photogalery.abretmpbanner;
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

procedure Tmdl_photogalery.bt_limpar1Click(Sender: TObject);
begin
      limpaphoto1(True);
      if hwsf.BtConfirma('Gravar dados do álbum?') then begin
         bt_save1.Click;
         if chk_view1.Checked then getLogo1;
      end;
end;

procedure Tmdl_photogalery.bt_limpar2Click(Sender: TObject);
begin
      limpaphoto2(True);
      if hwsf.BtConfirma('Gravar dados da imagem?') then begin
         bt_save2.Click;
         if chk_view2.Checked then getLogo2;
      end;
end;

procedure Tmdl_photogalery.bt_view1Click(Sender: TObject);
begin
      if dm.ds_sql.RecordCount>0 then begin
         Application.CreateForm(Tmdl_photogalery_view,mdl_photogalery_view);
         mdl_photogalery_view.TableImage.xcp_cod2:='codigo';
         mdl_photogalery_view.TableImage.xcp_descricao:='descricao';
         mdl_photogalery_view.TableImage.xcp_img:='icon';
         mdl_photogalery_view.TableImage.xcp_tableimg:=LstTables.Table[1];
         mdl_photogalery_view.TableImage.xcp_codimg:='cod_gal';
         mdl_photogalery_view.TableImage.xcp_table:= dm.ds_sql;
         mdl_photogalery_view.Show;
      end;
end;

procedure Tmdl_photogalery.bt_open1Click(Sender: TObject);
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
         xfilext:= LowerCase(ExtractFileExt(xnamefile));
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
         try loadx.Close; except end;
         bt_save1.Click;
      end;
end;

procedure Tmdl_photogalery.bt_open2Click(Sender: TObject);
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

procedure Tmdl_photogalery.chk_view1Click(Sender: TObject);
begin
      if chk_view1.Checked then getLogo1;
end;

procedure Tmdl_photogalery.chk_view2Click(Sender: TObject);
begin
      if chk_view2.Checked then getLogo2;
end;

procedure Tmdl_photogalery.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_photogalery.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_photogalery.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_photogalery.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_photogalery.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade;
end;

procedure Tmdl_photogalery.DBGrid2CellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tmdl_photogalery.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_photogalery.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tmdl_photogalery.DBGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade2;
end;

procedure Tmdl_photogalery.ComboSpeedButton1Click(Sender: TObject);
begin
      getLogo2;
end;

procedure Tmdl_photogalery.Ampliar1Click(Sender: TObject);
begin
      if dm.ds_sql3.RecordCount>0 then begin
         Application.CreateForm(Tmdl_photogalery_view,mdl_photogalery_view);
         mdl_photogalery_view.TableImage.xcp_cod2:='codigo';
         mdl_photogalery_view.TableImage.xcp_descricao:='descricao';
         mdl_photogalery_view.TableImage.xcp_img:='img_larg';
         mdl_photogalery_view.TableImage.xcp_tableimg:=LstTables.Table[3];
         mdl_photogalery_view.TableImage.xcp_codimg:='cod_img';
         mdl_photogalery_view.TableImage.xcp_table:= dm.ds_sql3;
         mdl_photogalery_view.Show;
      end;
end;

procedure Tmdl_photogalery.bt_recursiveClick(Sender: TObject);
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
      bt_search_ax:= hwsf.Btsearch_ax(pathdefault,axfilter);
      pathdefault:=bt_search_ax.pathdefault;
      if bt_search_ax.filelist.Count>0 then begin
         if RadioButton1.Checked then axInc_traduzir:=true
         else if RadioButton2.Checked then axInc_traduzir:=false
         else axInc_traduzir:=hwsf.BtConfirma('Traduzir automaticamente para outras linguagens?');
         mdl_photogalery.Repaint;
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
                  //gravar logo
                  zerror:=false;
                  While not zerror do begin
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

function Tmdl_photogalery.inserimg(xnamefile,xfilext:String;
                      xic_w,xic_h,xic_dpi,xic_cp,xil_w,xil_h,xil_dpi,xil_cp,
                      xic_h_tmp,xic_w_tmp,xil_h_tmp,xil_w_tmp:Integer;
                      xic_ajt,xic_pr,xil_ajt,xil_pr: Boolean):Boolean;
var codBitmap,codBitmap2: TBitmap;
    codJpeg: TJPEGImage;
    codAbrirtmp: TPicture;
    codGraphic,codGraphic2: TBitmap;
    codStream: TMemoryStream;
    xerror,xswf : Boolean;
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

function Tmdl_photogalery.retorna_TTabSheet(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_photogalery.PageControl_languagensChange(Sender: TObject);
begin
      if PageControl1.TabIndex=0 then begin
         ab_cod.Caption:='0';
         ms_cod.Caption:='0';
         dm.ds_sql.Filter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
         dm.ds_sql3.Filter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
         atualiza_grade;
      end else begin
         atualiza_grade3;
      end;
end;

procedure Tmdl_photogalery.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_photogalery.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_photogalery.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_photogalery.save_cfg(xcodlng: Integer);
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

procedure Tmdl_photogalery.monta_table3;
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

procedure Tmdl_photogalery.atualiza_grade3;
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

procedure Tmdl_photogalery.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_photogalery.bt_open3Click(Sender: TObject);
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

procedure Tmdl_photogalery.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
end;

procedure Tmdl_photogalery.bt_save3Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens.TabIndex]);
end;

procedure Tmdl_photogalery.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade3;
end;

procedure Tmdl_photogalery.MenuItem1Click(Sender: TObject);
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

procedure Tmdl_photogalery.bt_del2Click(Sender: TObject);
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

procedure Tmdl_photogalery.ComboBox_entChange(Sender: TObject);
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

procedure Tmdl_photogalery.Salvarcomo1Click(Sender: TObject);
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

procedure Tmdl_photogalery.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_photogalery.StatusBar1Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_photogalery.FormShow(Sender: TObject);
begin
      GroupBox1.Height := strtoint(formatfloat('0',(GroupBox1.Height + GroupBox2.Height) / 2));
end;

procedure Tmdl_photogalery.EVsaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save1.Click;
      end;
end;

procedure Tmdl_photogalery.EVsave2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //if processoand then exit;
      if (Shift = [ssCtrl]) then
      case Key of
        85: bt_save2.Click;
      end;
end;

procedure Tmdl_photogalery.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.


