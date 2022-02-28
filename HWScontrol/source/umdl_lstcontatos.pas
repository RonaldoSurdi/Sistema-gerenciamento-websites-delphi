{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_lstcontatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, yupack,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, Spin, ImgList, CheckLst, ValEdit, AppEvnts;

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
    ms_descricao : array[0..20] of String;
    ms_textft : array[0..20] of TStringList;
  End;
  Tmdl_lstcontatos = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    ImportarImgDialog: TOpenPictureDialog;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    Lb_countreg1: TLabel;
    Panel12: TPanel;
    ToolBar_web: TToolBar;
    Label7: TLabel;
    ComboBox_web: TComboBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Panel16: TPanel;
    ToolBar5: TToolBar;
    bt_save4: TSpeedButton;
    OpenBannerDialog: TOpenPictureDialog;
    GroupBox2: TGroupBox;
    ScrollBox2: TScrollBox;
    ToolBar1: TToolBar;
    bt_prior1: TSpeedButton;
    bt_next1: TSpeedButton;
    bt_new1: TSpeedButton;
    bt_del1: TSpeedButton;
    bt_save1: TSpeedButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label8: TLabel;
    bt_import: TSpeedButton;
    bt_clear: TSpeedButton;
    lb_razaosocial: TLabel;
    Label_size1: TLabel;
    Label5: TLabel;
    lbcb1: TLabeledEdit;
    lbcb2: TLabeledEdit;
    lbcb9: TLabeledEdit;
    lbcb10: TLabeledEdit;
    lbcb11: TMemo;
    lbcb3: TLabeledEdit;
    lbcb7: TLabeledEdit;
    lbcb8: TComboBox;
    lbcb5: TLabeledEdit;
    lbcb6: TComboBox;
    Panel7: TPanel;
    swf_logo1: TShockwaveFlash;
    ComboBox_model: TComboBox;
    GroupBox5: TGroupBox;
    cp18: TRichEdit;
    GroupBox6: TGroupBox;
    cp2: TCheckBox;
    cp3: TCheckBox;
    cp4: TCheckBox;
    cp5: TCheckBox;
    cp10: TCheckBox;
    cp9: TCheckBox;
    cp8: TCheckBox;
    cp7: TCheckBox;
    cp6: TCheckBox;
    GroupBox8: TGroupBox;
    ToolBar2: TToolBar;
    cp17_0: TRadioButton;
    cp17_1: TRadioButton;
    ToolBar3: TToolBar;
    SpeedButton1: TSpeedButton;
    cp1: TLabeledEdit;
    ComboBox_additem: TComboBox;
    Label2: TLabel;
    cp16: TLabeledEdit;
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
    GroupBox3: TGroupBox;
    cfg_cod: TLabel;
    Label22: TLabel;
    cfg_title: TEdit;
    TabSheet3: TTabSheet;
    Label18: TLabel;
    GroupBox11: TGroupBox;
    ToolBar_lng: TToolBar;
    Label16: TLabel;
    PageControl_languagens: TPageControl;
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
    GroupBox9: TGroupBox;
    PopupMenu_editor: TPopupMenu;
    Desfazer1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N2: TMenuItem;
    Fontemenu: TMenuItem;
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
    ToolbarImages: TImageList;
    ColorDialog1: TColorDialog;
    CoolBar1: TCoolBar;
    ToolBar10: TToolBar;
    FontName: TComboBox;
    ToolButton7: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    ToolBar11: TToolBar;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolBar12: TToolBar;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    JustifyAlign: TToolButton;
    BulletsButton: TToolButton;
    ToolBar13: TToolBar;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolBar14: TToolBar;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolBar9: TToolBar;
    ComboBox_campos: TComboBox;
    SpeedButton11: TSpeedButton;
    re_editor: TRxRichEdit;
    Splitter2: TSplitter;
    ScrollBox1: TScrollBox;
    Label10: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    msg_cp1: TCheckBox;
    msg_cp2_chk: TCheckBox;
    msg_cp3_chk: TCheckBox;
    msg_cp2: TSpinEdit;
    msg_cp3: TSpinEdit;
    msg_cp5: TCheckBox;
    msg_cp7: TComboBox;
    msg_cp8: TCheckBox;
    Panel_ftrcp: TPanel;
    GroupBox12: TGroupBox;
    cod_modelo: TLabel;
    ToolBar15: TToolBar;
    ComboBox_modelos: TComboBox;
    ToolBar16: TToolBar;
    Label13: TLabel;
    Label15: TLabel;
    ed_modelos: TMemo;
    cod_cfg2: TLabel;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    lbcb12: TComboBox;
    lbcb13: TComboBox;
    Label6: TLabel;
    PageControl_lstcampos: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    GroupBox10: TGroupBox;
    CheckListBox_campos: TCheckListBox;
    GroupBox13: TGroupBox;
    CheckListBox_campos2: TCheckListBox;
    ToolBar_lstcampos: TToolBar;
    bt_select: TSpeedButton;
    bt_unselect: TSpeedButton;
    Panel2: TPanel;
    ToolBar8: TToolBar;
    bt_default2: TSpeedButton;
    bt_new2: TSpeedButton;
    bt_del2: TSpeedButton;
    bt_save2: TSpeedButton;
    TabSheet6: TTabSheet;
    GroupBox14: TGroupBox;
    StringGrid_lstcampos: TStringGrid;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox_webChange(Sender: TObject);
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
    procedure bt_open3Click(Sender: TObject);
    procedure bt_limpar3Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure PageControl_languagens2Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bt_importClick(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure bt_new1Click(Sender: TObject);
    procedure bt_del1Click(Sender: TObject);
    procedure bt_save1Click(Sender: TObject);
    procedure KeyPressChange(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure lbcb6Change(Sender: TObject);
    procedure lbcb8Change(Sender: TObject);
    procedure lbcb5Change(Sender: TObject);
    procedure lbcb7Change(Sender: TObject);
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
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure bt_del2Click(Sender: TObject);
    procedure ComboBox_modelosChange(Sender: TObject);
    procedure bt_prior1Click(Sender: TObject);
    procedure bt_next1Click(Sender: TObject);
    procedure bt_default2Click(Sender: TObject);
    procedure bt_save2Click(Sender: TObject);
    procedure bt_selectClick(Sender: TObject);
    procedure bt_unselectClick(Sender: TObject);
    procedure CheckListBox_camposClick(Sender: TObject);
    procedure CheckListBox_camposClickCheck(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure PageControl_lstcamposChange(Sender: TObject);
    procedure bt_new2Click(Sender: TObject);
    procedure bts4Change(Sender: TObject);
    procedure StringGrid_lstcamposClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    //menus
    xinit,xupdatelogo1,xupdatebanner: Boolean;
    pathdefault,xdsqlfilter : string;
    LstTables: TLstTables;
    LstModels: TLstModels;
    listaLng: TlistaLng;
    listaAux: TlistaAux;
    xlogosz1,xbannersz,codmoddefault: Integer;
    xlogotmp1,xbannertmp: TMemoryStream;
    FUpdating: Boolean;
    axidcbmodelos,cod_frtcpCaption : Integer;
    Lista_ModFormail: TStringList;
    procedure monta_table1;
    procedure addreg;
    procedure addreg2;
    procedure cfg_bts2(xbt: Boolean);
    procedure atualiza_grade;
    procedure limpaphoto1(xupdateset:Boolean);
    procedure monta_table3;
    procedure atualiza_grade3;
    procedure atualiza_grade4;
    procedure atualiza_grade5;
    procedure atualiza_grade6;
    procedure CheckListBox_campos_uncheck(unckeck:Boolean;xitem:Integer);
    procedure limpaphoto3(xupdateset:Boolean);
    procedure getLogo1;
    procedure abretmplogo1;
    procedure getBanner;
    procedure abretmpbanner;
    function retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
    procedure save_cfg(xcodlng: Integer);
    procedure crialstmodelos(xdefault:Integer);
    procedure crialstftrcp(xcod_mdl,xcod_lng:Integer);
    procedure atualiza_Combobox_campos;
    procedure atualiza_funcoes;
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
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  mdl_lstcontatos: Tmdl_lstcontatos;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_lstcontatos.FormClose(Sender: TObject; var Action: TCloseAction);
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
     if dm.ds_sql6.Active then dm.ds_sql6.Close;
     if dm.ds_sql8.Active then dm.ds_sql8.Close;
     if dm.ds_sql9.Active then dm.ds_sql9.Close;
     if dm.ds_sql10.Active then dm.ds_sql10.Close;
     loadx.Progressloading.position:=75;
     dm.executa6.Close;
     dm.executa7.Close;
     if dm.executa3.Active then
        dm.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tmdl_lstcontatos.FormCreate(Sender: TObject);
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
     pathdefault:=ExtractFilePath(Application.ExeName);
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     mdl_lstcontatos.Caption := AxDadosUsr.axtitle;
     xinit:=true;
     xlogotmp1:= TMemoryStream.Create;
     xbannertmp:= TMemoryStream.Create;
     Lista_ModFormail:= TStringList.Create;
     axidcbmodelos:= 0;
     xupdatelogo1:=False;
     xupdatebanner:=False;
     processoand:=false;
     SelectionChange(Self);
     SendMessage(re_editor.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor.Justify;
     StringGrid_lstcampos.RowCount:=2;
     StringGrid_lstcampos.Cells[0,0]:='Campo';
     StringGrid_lstcampos.Cells[1,0]:='Texto';
     StringGrid_lstcampos.RowCount:=CheckListBox_campos.Items.Count+1;
     for xforcps:=0 to CheckListBox_campos.Items.Count-1 do begin
         StringGrid_lstcampos.Cells[0,xforcps+1]:=CheckListBox_campos.Items.Strings[xforcps];
         StringGrid_lstcampos.Cells[1,xforcps+1]:=CheckListBox_campos.Items.Strings[xforcps];
     end;
     loadx.Progressloading.position:=40;
     ComboBox_web.Clear;
     axid_web:=0;
     axid_web2:=0;
     codmoddefault:=0;
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
     loadx.Progressloading.position:=50;
     //Busca tabelas
     LstTables.Count:=0;
     axstr_filtro_stream:= TMemoryStream.Create;
     With dm.ds_sql11 do begin
          //CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
          CommandText:= 'SELECT A.codigo,A.mdl,B.codigo,B.cp1,B.cp2 FROM '+
                                EnDecryptString(Serverconect.vrf24,37249)+' A, '+ //modulos
                                EnDecryptString(Serverconect.vrf25,37249)+' B '+ //tabelas
                                'WHERE B.cod_grp=A.codigo AND A.mdl='+#39+ExtractFileName(Application.ExeName)+#39+
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
             if not axshowing then loadx.Close;
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
          CommandText:= 'SELECT * FROM '+LstTables.Table[2]+
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
     loadx.Progressloading.position:=60;
     DBGrid1.DataSource:=dm.source_sql;
     With DBGrid1.Columns do begin
          Clear;
          Add;
          Items[0].Title.Caption:='Código';
          Items[0].FieldName:='codigo';
          Add;
          Items[1].Title.Caption:='Nome';
          Items[1].FieldName:='nome';
          Add;
          Items[2].Title.Caption:='e-mail';
          Items[2].FieldName:='email';
          Add;
          Items[3].Title.Caption:='Telefone';
          Items[3].FieldName:='telefone';
          Add;
          Items[4].Title.Caption:='Celular';
          Items[4].FieldName:='celular';
     end;
     loadx.Progressloading.position:=70;
     With dm.executa6 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf35,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcb6.Clear;
        While not Eof do begin
            lbcb6.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
     lbcb6.ItemIndex:=0;
     loadx.Progressloading.position:=80;
     loadx.Progressloading.position:=90;
     monta_table1;
     monta_table3;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.atualiza_funcoes;
begin
    lbcb8.Clear;
    if dm.executa6.Locate('codigo',lbcb5.Text,[]) then begin
       lbcb6.Text:=dm.executa6.fieldbyname('descricao').AsString;
    end else begin
       lbcb8.Items.Add('É necessário selecionar uma função');
       lbcb8.ItemIndex:=0;
    end;
    With dm.executa7 do begin
        if Active then Close;
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf36,37249)+
                     ' WHERE cod_set='+#39+lbcb5.text+#39+
                     ' ORDER BY descricao';
        Open;
        First;
        While not Eof do begin
            lbcb8.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
end;

procedure Tmdl_lstcontatos.monta_table1;
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
        for listaLng_id:=1 to listaLng.count-1 do begin
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
                retorna_TTabSheet2(listaLng.count).Caption:=fieldbyname('descricao').AsString;
                Inc(listaLng.count);
                Next;
          end;
          if recordcount > 1 then ToolBar_lng.Visible:=true
          else ToolBar_lng.Visible:=false;
          Close;
     end;
     //Monta Lista de álbuns
     With dm.ds_sql do begin
          if Active then close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[0]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' ORDER BY codigo';
          Open;
          Filter:='';
          Filtered:=true;
          xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
          Filter:=xdsqlfilter;
     end;
     atualiza_grade;
     if not axshowing then loadx.Close;
end;

{procedure Tmdl_lstcontatos.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tmdl_lstcontatos.FormResize(Sender: TObject);
begin
    ComboBox_web.Width:=ToolBar_web.Width-53;
end;

procedure Tmdl_lstcontatos.FormActivate(Sender: TObject);
begin
      mdl_lstcontatos.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tmdl_lstcontatos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      //Case key of
        //VK_F1: bt_help.OnClick(self); //help
        //VK_F2: bt_del.Click; //salvar
        //VK_F3: bt_new.Click; //Novo
        //VK_F5: bt_update.Click; //Atualizar
      //End;
      if (Shift = [ssCtrl]) and (Key=VK_F4) then
         Close; //Fechar janela
//      if (Shift = [ssCtrl]) and (Key=VK_DELETE) then
//         bt_del.Click; //deletar registro
end;

procedure Tmdl_lstcontatos.addreg;
begin
     lbcb1.Text:='novo';
     lbcb2.Text:='';
     lbcb3.Text:='';
     lbcb9.Text:='';
     lbcb10.Text:='';
     lbcb11.Clear;
     limpaphoto1(False);
end;

procedure Tmdl_lstcontatos.addreg2;
begin
     cod_modelo.Caption:='novo';
     cod_cfg2.Caption:='novo';
     msg_cp1.Checked:=false;
     msg_cp2_chk.Checked:=false;
     msg_cp2.Value:=0;
     msg_cp3_chk.Checked:=false;
     msg_cp3.Value:=0;
     msg_cp5.Checked:=false;
     msg_cp7.ItemIndex:=0;
     re_editor.Clear;
     cfg_bts2(False);
     crialstftrcp(0,0);
     atualiza_grade5;
end;

procedure Tmdl_lstcontatos.cfg_bts2(xbt: Boolean);
begin
     PageControl_lstcampos.Enabled:=xbt;
     ToolBar_lstcampos.Enabled:=xbt;
     GroupBox11.Enabled:=xbt;
     bt_new2.Enabled:=xbt;
     bt_save2.Enabled:=not xbt;
     bt_del2.Enabled:=not xbt;
     bt_default2.Enabled:=xbt;
     if xbt then begin
        bt_del2.Caption:='Excluir';
        bt_del2.Hint:='Excluir modelo selecionado';
        ComboBox_modelos.Style:=csDropDownList;
        ComboBox_modelos.Items.Assign(Lista_ModFormail);
        ComboBox_modelos.ItemIndex:=axidcbmodelos;
        atualiza_grade4;
     end else begin
        bt_del2.Caption:='Cancelar';
        bt_del2.Hint:='Cancelar edição';
        ComboBox_modelos.Style:=csSimple;
        ComboBox_modelos.Clear;
     end;
end;

procedure Tmdl_lstcontatos.atualiza_grade;
var axshowing,xuplng: Boolean;
    axlocid: Integer;
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
      end else begin
         with dm.ds_sql do begin
            if lbcb1.Text=fieldbyname('codigo').AsString then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            lbcb1.Text:=fieldbyname('codigo').AsString;
            limpaphoto1(False);
            loadx.Progressloading.position:=20;
            lbcb2.Text:=fieldbyname('nome').AsString;
            lbcb3.Text:=fieldbyname('email').AsString;
            lbcb5.Text:=fieldbyname('cod_set').AsString;
            lbcb7.Text:=fieldbyname('cod_fc').AsString;
            lbcb9.Text:=fieldbyname('telefone').AsString;
            lbcb10.Text:=fieldbyname('celular').AsString;
            loadx.Progressloading.position:=30;
            lbcb11.Lines.Assign(fieldbyname('txt'));
            lbcb12.ItemIndex:=fieldbyname('tpc').AsInteger;
            lbcb13.ItemIndex:=fieldbyname('tpc2').AsInteger;
            loadx.Progressloading.position:=40;
            ComboBox_model.Enabled:=true;
            ComboBox_model.ItemIndex:=0;
            for axlocid:=0 to LstModels.Count-1 do begin
                if LstModels.codigo.Strings[axlocid]=fieldbyname('cod_psn').AsString then begin
                   ComboBox_model.ItemIndex:=axlocid;
                   break;
                end;
            end;
            loadx.Progressloading.position:=50;
         end;
      end;
      Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
      getLogo1;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.limpaphoto1(xupdateset:Boolean);
begin
     xupdatelogo1:=xupdateset;
     xlogotmp1.Clear;
     xlogotmp1.Seek(0,soFromBeginning);
     xlogosz1:=0;
     Label_size1.Caption:='0 kb';
     swf_logo1.Visible:=false;
     swf_logo1.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstcontatos.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_table1;
             monta_table3;
          end;
      end;
end;

procedure Tmdl_lstcontatos.getLogo1;
var axvarcod: string;
begin
     xlogotmp1.Clear;
     With dm.executa8 do begin
        if (lbcb1.Text = 'novo') then
           axvarcod:='0'
        else axvarcod:=lbcb1.Text;
        CommandText:='SELECT blb,sz FROM '+LstTables.Table[0]+' WHERE codigo='+#39+axvarcod+#39;
        Open;
        if not fields[0].IsNull then begin
           TBlobField(FieldByName('blb')).SaveToStream(xlogotmp1);
           Label_size1.Caption:=Formatfloat('0',(fieldbyname('sz').AsInteger/1000))+' kb';
        end;
        Close;
     end;
     abretmplogo1;
end;

procedure Tmdl_lstcontatos.abretmplogo1;
var erro: Boolean;
    ax_filenm: TFileName;
begin
    xlogotmp1.Seek(0,soFromBeginning);
    if xlogotmp1.Size <= 0 then begin
       swf_logo1.Visible:=false;
       exit;
    end;
    ax_filenm:= ExtractTempDir + 'tmpfild51.tmp';
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
        hwsf.BtMensagem('Ocorreu algum erro ao abrir a foto.');
    end;
end;

procedure Tmdl_lstcontatos.getBanner;
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

procedure Tmdl_lstcontatos.abretmpbanner;
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

procedure Tmdl_lstcontatos.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53; 
end;

procedure Tmdl_lstcontatos.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tmdl_lstcontatos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_lstcontatos.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tmdl_lstcontatos.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      atualiza_grade;
end;

function Tmdl_lstcontatos.retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_lstcontatos.PageControl_languagensChange(Sender: TObject);
begin
      lbcb1.Text:='0';
      xdsqlfilter:='cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens.TabIndex])+#39;
      dm.ds_sql.Filter:=xdsqlfilter;
      atualiza_grade;
end;

procedure Tmdl_lstcontatos.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_lstcontatos.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_lstcontatos.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_lstcontatos.save_cfg(xcodlng: Integer);
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
             CommandText:= 'UPDATE '+LstTables.Table[1]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp4=:p3,cp5=:p4,cp6=:p5,cp7=:p6,cp8=:p7,cp9=:p8,cp10=:p9,cp11=:p10,cp14=:p11,cp15=:p12,cp16=:p13,cp17=:p14,cp18=:p15 '+
                           'WHERE codigo=:p16';
             loadx.Progressloading.position:=30;
             Params[0].AsString:= cp1.Text;
             if cp2.Checked then Params[1].AsInteger:= 0
             else Params[1].AsInteger:= 1;
             if cp3.Checked then Params[2].AsInteger:= 0
             else Params[2].AsInteger:= 1;
             if cp4.Checked then Params[3].AsInteger:= 0
             else Params[3].AsInteger:= 1;
             if cp5.Checked then Params[4].AsInteger:= 0
             else Params[4].AsInteger:= 1;
             if cp6.Checked then Params[5].AsInteger:= 0
             else Params[5].AsInteger:= 1;
             if cp7.Checked then Params[6].AsInteger:= 0
             else Params[6].AsInteger:= 1;
             if cp8.Checked then Params[7].AsInteger:= 0
             else Params[7].AsInteger:= 1;
             if cp9.Checked then Params[8].AsInteger:= 0
             else Params[8].AsInteger:= 1;
             if cp10.Checked then Params[9].AsInteger:= 0
             else Params[9].AsInteger:= 1;
             Params[10].AsString:= cfg_title.Text;
             Params[11].AsInteger:= cp14.ItemIndex;
             Params[12].AsInteger:= cp15.ItemIndex;
             Params[13].AsString:= cp16.Text;
             if cp17_0.Checked then begin
                Params[14].AsInteger:= 0;
                Params[15].AsString:= '';
             end else begin
                Params[14].AsInteger:= 1;
                Params[15].Assign(cp18.Lines);
             end;
             Params[16].AsInteger:=StrtoInt(cfg_cod.Caption);
             loadx.Progressloading.position:=50;
     end;
     try
          loadx.Progressloading.position:=70;
          dm.executa.Execute;
          loadx.Progressloading.position:=90;
     except
          if not axshowing then loadx.Close;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     if xupdatebanner then begin
        xbannertmp.Seek(0,soFromBeginning);
        xupdatebanner:=dm.PostBinaryStream(LstTables.Table[1],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
     end;
     loadx.Progressloading.position:=100;
     xupdatebanner:=False;
     dm.ds_sql5.Close;
     dm.ds_sql5.Open;
     if not axshowing then loadx.Close;
     bt_save4.Enabled:=false;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_lstcontatos.monta_table3;
var listaLng_id,axcoddefault,xid_default: Integer;
    axshowing: Boolean;
    //inclui linguagens
    axListInsertLng: TStringList;
    axcod: Integer;
    xtxt1,xtxt2: String;
    axInc_traduzir: Boolean;
    xtotalreg,xIncludeCfg: Integer;
    axBannerStrm: TMemoryStream;
    axBannersz,axIdlng: Integer;
    banner_title : array[0..20] of String;
    cp16_trad : array[0..20] of String;
    axcp1: String;
    axcp2,axcp3,axcp4,axcp5,axcp6,axcp7,axcp8,axcp9,axcp10,axcp14,axcp15,axcp17,axcp19 : Integer;
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
     //With dm.ds_sql5 do begin
          if dm.ds_sql5.Active then dm.ds_sql5.close;
          dm.ds_sql5.CommandText:= 'SELECT codigo,cod_web,cod_lng,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp14,cp15,cp16,cp17,cp18,cp19 FROM '+LstTables.Table[1]+
                                ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' ORDER BY cod_lng';
          dm.ds_sql5.Open;
          dm.ds_sql5.Filter:='';
          dm.ds_sql5.Filtered:=true;
          xIncludeCfg:=0;
          if (dm.ds_sql5.recordcount>0) and xinit then begin
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
                    cp16_trad[listaLng_id]:='';
                    if listaLng.trd[listaLng_id]='English' then xid_default:=listaLng_id;
                end;
                for listaLng_id:=0 to listaLng.count-1 do begin
                    if not dm.ds_sql5.Locate('cod_lng',listaLng.cod_lng[listaLng_id],[]) then
                       axListInsertLng.Add(IntToStr(listaLng_id));
                end;
             end else begin
                for listaLng_id:=0 to listaLng.count-1 do begin
                    banner_title[listaLng_id]:='';
                    cp16_trad[listaLng_id]:='';
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
                      if not dm.ds_sql5.Locate('cod_lng',listaLng.cod_lng[xid_default],[]) then begin
                         if not dm.ds_sql5.Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                            dm.ds_sql5.First;
                            for listaLng_id:=0 to listaLng.count-1 do begin
                                if listaLng.cod_lng[listaLng_id]=dm.ds_sql5.fieldbyname('cod_lng').AsInteger then begin
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
                      if dm.ds_sql5.Locate('cod_lng',listaLng.cod_lng[axcoddefault],[]) then begin
                         xtxt1:= dm.ds_sql5.fieldbyname('cp11').AsString;
                         xtxt2:= dm.ds_sql5.fieldbyname('cp16').AsString;
                         axcp1:= dm.ds_sql5.fieldbyname('cp1').AsString;
                         axcp2:= dm.ds_sql5.fieldbyname('cp2').AsInteger;
                         axcp3:= dm.ds_sql5.fieldbyname('cp3').AsInteger;
                         axcp4:= dm.ds_sql5.fieldbyname('cp4').AsInteger;
                         axcp5:= dm.ds_sql5.fieldbyname('cp5').AsInteger;
                         axcp6:= dm.ds_sql5.fieldbyname('cp6').AsInteger;
                         axcp7:= dm.ds_sql5.fieldbyname('cp7').AsInteger;
                         axcp8:= dm.ds_sql5.fieldbyname('cp8').AsInteger;
                         axcp9:= dm.ds_sql5.fieldbyname('cp9').AsInteger;
                         axcp10:= dm.ds_sql5.fieldbyname('cp10').AsInteger;
                         axcp14:= dm.ds_sql5.fieldbyname('cp14').AsInteger;
                         axcp15:= dm.ds_sql5.fieldbyname('cp15').AsInteger;
                         axcp17:= dm.ds_sql5.fieldbyname('cp17').AsInteger;
                         axcp18.Assign(dm.ds_sql5.fieldbyname('cp18'));
                         axcp19:= dm.ds_sql5.fieldbyname('cp19').AsInteger;
                      end;
                   end else begin
                      xtxt1:= 'Contacts';
                      xtxt2:= 'Select the contact';
                      axcp1:= 'nome (e-mail)';
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
                      axcp17:= 0;
                      axcp19:= 0;
                      axcp18.Clear;
                   end;
                   loadx.Progressloading.position:=80;
                   //traduzindo textos
                   if axInc_traduzir then begin
                            loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(axcoddefault).Caption;
                            loadx.lbloading.Repaint;
                            if (xid_default=axcoddefault) then begin
                               banner_title[xid_default]:=xtxt1;
                               cp16_trad[xid_default]:=xtxt2;
                            end else begin
                               banner_title[axcoddefault]:=xtxt1;
                               cp16_trad[axcoddefault]:=xtxt2;
                               loadx.lbloading.Caption:='Traduzindo '+retorna_TTabSheet2(xid_default).Caption;
                               loadx.lbloading.Repaint;
                               xtxt1:=recebetraducao(xtxt1,listaLng.trd[axcoddefault],listaLng.trd[xid_default]);
                               if copy(xtxt1,1,7)='Error: ' then xtxt1:=banner_title[xid_default];
                               if xtxt1 = '<|erro|>' then begin
                                  loadx.Close;
                                  hwsf.BtMensagem('Erro na conexão');
                                  exit;
                               end;
                               xtxt2:=recebetraducao(xtxt2,listaLng.trd[axcoddefault],listaLng.trd[xid_default]);
                               if copy(xtxt2,1,7)='Error: ' then xtxt2:=cp16_trad[xid_default];
                               if xtxt2 = '<|erro|>' then begin
                                  loadx.Close;
                                  hwsf.BtMensagem('Erro na conexão');
                                  exit;
                               end;
                               banner_title[xid_default]:=xtxt1;
                               cp16_trad[xid_default]:=xtxt2;
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
                                   xtxt2:=recebetraducao(cp16_trad[xid_default],listaLng.trd[xid_default],listaLng.trd[StrToInt(axListInsertLng.Strings[listaLng_id])]);
                                   if copy(xtxt2,1,7)='Error: ' then xtxt2:=cp16_trad[xid_default];
                                   if xtxt2 = '<|erro|>' then begin
                                      loadx.Close;
                                      hwsf.BtMensagem('Erro na conexão');
                                      exit;
                                   end;
                                   cp16_trad[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt2;
                                end;
                            end;
                   end else begin
                            for listaLng_id:=0 to axListInsertLng.count-1 do begin
                                loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                                banner_title[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt1;
                                cp16_trad[StrToInt(axListInsertLng.Strings[listaLng_id])]:=xtxt2;
                            end;
                   end;
                   loadx.lbloading.Caption:='Gravando dados, aguarde.';
                   loadx.lbloading.Repaint;
                   for listaLng_id:=0 to axListInsertLng.count-1 do begin
                          loadx.Progressloading2.Position:=loadx.Progressloading2.Position+1;
                          axcod:=dm.GetCodMax(LstTables.Table[1],'codigo','');
                          with dm.executa do begin
                               CommandText:= 'INSERT INTO '+LstTables.Table[1]+' (codigo,cod_web,cod_lng,cp1,cp2,cp3,cp4,cp5,cp6,cp7,cp8,cp9,cp10,cp11,cp14,cp15,cp16,cp17,cp18,cp19) '+
                                          'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:cp12,:p13,:p14,:p15,:p16,:p17,:p18,:p19)';
                               Params[0].AsInteger:=axcod;
                               loadx.Progressloading.position:=20;
                               Params[1].AsInteger:=AxDadosUsr.cod_web;
                               Params[2].AsInteger:=listaLng.cod_lng[StrToInt(axListInsertLng.Strings[listaLng_id])];
                               Params[3].AsString:= axcp1;
                               Params[4].AsInteger:= axcp2;
                               Params[5].AsInteger:= axcp3;
                               Params[6].AsInteger:= axcp4;
                               Params[7].AsInteger:= axcp5;
                               Params[8].AsInteger:= axcp6;
                               Params[9].AsInteger:= axcp7;
                               Params[10].AsInteger:= axcp8;
                               Params[11].AsInteger:= axcp9;
                               Params[12].AsInteger:= axcp10;
                               loadx.Progressloading.position:=30;
                               axIdlng:=StrToInt(axListInsertLng.Strings[listaLng_id]);
                               Params[13].AsString:= banner_title[axIdlng];
                               Params[14].AsInteger:= axcp14;
                               Params[15].AsInteger:= axcp15;
                               Params[16].AsString:= cp16_trad[axIdlng];
                               Params[17].AsInteger:= axcp17;
                               Params[18].Assign(axcp18);
                               Params[19].AsInteger:= axcp19;
                               Execute;
                          end;
                          xbannertmp.Seek(0,soFromBeginning);
                          xupdatebanner:=dm.PostBinaryStream(LstTables.Table[1],'UPDT','codigo','','cp12','','cp13','',cfg_cod.Caption,xbannertmp,nil);
                   end;
                   axBannerStrm.Free;
               except
                    dm.ds_sql5.Close;
                    if not axshowing then loadx.Close;
                    hwsf.BtMensagem('Ocorreu algum erro, reinicie o módulo.');
                    Application.Terminate;
               end;
               //salva alterações
               dm.ds_sql5.Close;
               dm.ds_sql5.Open;
               loadx.Progressloading2.Visible:=false;
               loadx.Repaint;
             end;
             axListInsertLng.Free;
          end;
     //end;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.atualiza_grade3;
var axshowing: Boolean;
    axlocid: Integer;
begin
     //banner
     bt_save4.Enabled:=false;
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
               if not axshowing then loadx.Close;
               exit;
            end;
            limpaphoto3(False);
            loadx.Progressloading.position:=20;
            cfg_cod.Caption:=fieldbyname('codigo').AsString;
            loadx.Progressloading.position:=30;
            cfg_title.Text:=fieldbyname('cp11').AsString;
            //álbuns
            cp1.Text:=fieldbyname('cp1').AsString;
            cp2.Checked:=(fieldbyname('cp2').AsInteger=0);
            cp3.Checked:=(fieldbyname('cp3').AsInteger=0);
            cp4.Checked:=(fieldbyname('cp4').AsInteger=0);
            cp5.Checked:=(fieldbyname('cp5').AsInteger=0);
            cp6.Checked:=(fieldbyname('cp6').AsInteger=0);
            cp7.Checked:=(fieldbyname('cp7').AsInteger=0);
            cp8.Checked:=(fieldbyname('cp8').AsInteger=0);
            cp9.Checked:=(fieldbyname('cp9').AsInteger=0);
            cp10.Checked:=(fieldbyname('cp10').AsInteger=0);
            cp14.ItemIndex:=fieldbyname('cp14').AsInteger;
            cp15.ItemIndex:=fieldbyname('cp15').AsInteger;
            cp16.Text:=fieldbyname('cp16').AsString;
            if fieldbyname('cp17').AsInteger=0 then cp17_0.Checked:=true
            else cp17_1.Checked:=true;
            cp18.Lines.Assign(fieldbyname('cp18'));
            codmoddefault:=fieldbyname('cp19').AsInteger;
            loadx.Progressloading.position:=50;
         end else begin
            if not axshowing then loadx.Close;
            exit;
         end;
      end;
      getBanner;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.atualiza_grade4;
var axshowing: Boolean;
    axlocid: Integer;
begin
     //Formulário de envio
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
      if dm.ds_sql8.RecordCount <= 0 then begin
         addreg2;
      end else begin
         with dm.ds_sql8 do begin
            if cod_modelo.Caption=fieldbyname('codigo').AsString then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            bt_save2.Enabled:=(fieldbyname('cod_web').AsInteger>0);
            bt_del2.Enabled:=(fieldbyname('cod_web').AsInteger>0);
            cod_modelo.Caption:=fieldbyname('codigo').AsString;
            crialstftrcp(StrtoInt(cod_modelo.Caption),listaLng.cod_lng[PageControl_languagens.TabIndex]);
            loadx.Progressloading.position:=20;
            ed_modelos.Lines.Assign(fieldbyname('cp2'));
            loadx.Progressloading.position:=50;
            if codmoddefault=fieldbyname('codigo').AsInteger then bt_default2.Enabled:=false
            else bt_default2.Enabled:=true;
            atualiza_grade5;
         end;
      end;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.atualiza_grade5;
var axshowing: Boolean;
    st_stream: TMemoryStream;
    xforcps: Integer;
    xlstcps1,xlstcps2: String;
begin
     //Formulário de envio
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
      with dm.ds_sql10 do begin
         if RecordCount > 0 then begin
            if cod_cfg2.Caption=fieldbyname('codigo').AsString then begin
               atualiza_grade6;
               if not axshowing then loadx.Close;
               exit;
            end;
            cod_cfg2.Caption:=fieldbyname('codigo').AsString;
            loadx.Progressloading.position:=20;
            msg_cp1.Checked:=(fieldbyname('cp1').AsInteger=0);
            msg_cp2_chk.Checked:=(fieldbyname('cp2').AsInteger>0);
            msg_cp2.Value:=fieldbyname('cp2').AsInteger;
            msg_cp3_chk.Checked:=(fieldbyname('cp3').AsInteger>0);
            msg_cp3.Value:=fieldbyname('cp3').AsInteger;
            msg_cp5.Checked:=(fieldbyname('cp5').AsInteger=0);
            msg_cp7.ItemIndex:=fieldbyname('cp7').AsInteger;
            msg_cp8.Checked:=(fieldbyname('cp8').AsInteger=0);
            if msg_cp8.Checked then begin
               st_stream := TMemoryStream.Create;
               TBlobField(FieldByName('cp9')).SaveToStream(st_stream);
               st_stream.Seek(0,soFromBeginning);
               re_editor.Lines.LoadFromStream(st_stream);
               st_stream.Free;
            end;
            loadx.Progressloading.position:=50;
            xlstcps1:= fieldbyname('cp12').AsString;
            xlstcps2:= fieldbyname('cp14').AsString;
            for xforcps:=0 to CheckListBox_campos.Items.Count-1 do begin
                try
                    CheckListBox_campos.Checked[xforcps]:=(copy(xlstcps1,xforcps+1,1)='1');
                    CheckListBox_campos2.ItemEnabled[xforcps]:=(copy(xlstcps1,xforcps+1,1)='1');
                    CheckListBox_campos2.Checked[xforcps]:=(copy(xlstcps2,xforcps+1,1)='1');
                except
                    CheckListBox_campos.Checked[xforcps]:=true;
                    CheckListBox_campos2.ItemEnabled[xforcps]:=true;
                    CheckListBox_campos2.Checked[xforcps]:=true;
                end;
            end;
         end;
      end;
      atualiza_grade6;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.atualiza_grade6;
var xforcps: Integer;
    axshowing: Boolean;
begin
     //Formulário de envio
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
      with dm.ds_sql9 do begin
         if RecordCount <= 0 then begin
            for xforcps:=0 to CheckListBox_campos.Items.Count-1 do
                StringGrid_lstcampos.Cells[1,xforcps+1]:=CheckListBox_campos.Items.Strings[xforcps];
         end else begin
            if cod_frtcpCaption=fieldbyname('codigo').AsInteger then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            cod_frtcpCaption:=fieldbyname('codigo').AsInteger;
            if recordCount>0 then begin
               for xforcps:=0 to CheckListBox_campos.Items.Count-1 do begin
                   if Locate('cp1',xforcps,[]) then
                      StringGrid_lstcampos.Cells[1,xforcps+1]:=fieldbyname('cp2').AsString
                   else StringGrid_lstcampos.Cells[1,xforcps+1]:=CheckListBox_campos.Items.Strings[xforcps];
               end;
            end else begin
               for xforcps:=0 to CheckListBox_campos.Items.Count-1 do
                   StringGrid_lstcampos.Cells[1,xforcps+1]:=CheckListBox_campos.Items.Strings[xforcps];
            end;
            //textos
            loadx.Progressloading.position:=20;
            loadx.Progressloading.position:=50;
         end;
      end;
      atualiza_Combobox_campos;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.CheckListBox_campos_uncheck(unckeck:Boolean;xitem:Integer);
var xforcps: Integer;
begin
     Case xitem of
          0: begin
             for xforcps:=0 to CheckListBox_campos.Items.Count-1 do
                CheckListBox_campos.Checked[xforcps]:=unckeck;
          end;
          1: begin
             for xforcps:=0 to CheckListBox_campos2.Items.Count-1 do
                CheckListBox_campos2.Checked[xforcps]:=unckeck;
          end;
     end;
     atualiza_Combobox_campos;
end;

procedure Tmdl_lstcontatos.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstcontatos.bt_open3Click(Sender: TObject);
var xfilext: String;
    xerror: Boolean;
    codBitmap: TBitmap;
    codJpeg: TJPEGImage;
    axshowing: Boolean;
begin
      if OpenBannerDialog.Execute then begin
         bt_save4.Enabled:=true;
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
            if not axshowing then loadx.Close;
            hwsf.BtMensagem('Formato de arquivo inválido.');
            exit;
         end;
         xbannertmp.Seek(0,soFromBeginning);
         xbannersz:=xbannertmp.Size;
         if (xbannersz > 700000) then begin
            limpaphoto3(xupdatebanner);
            if not axshowing then loadx.Close;
            hwsf.BtMensagem('Tamanho do arquivo excedeu o limite de 700 kb.');
            exit;
         end;
         xupdatebanner:=true;
         if not axshowing then loadx.Close;
         xbannertmp.LoadFromFile(OpenBannerDialog.FileName);
         abretmpbanner;
      end;
end;

procedure Tmdl_lstcontatos.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
      bt_save4.Enabled:=true;
end;

procedure Tmdl_lstcontatos.bt_save4Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens.TabIndex]);
end;

procedure Tmdl_lstcontatos.PageControl_languagens2Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then begin
         if bt_save4.Enabled then
         if hwsf.BtConfirma('Gravar dados?') then
            bt_save4.Click;
         atualiza_grade3;
      end else if PageControl1.TabIndex=2 then crialstftrcp(StrtoInt(cod_modelo.Caption),listaLng.cod_lng[PageControl_languagens.TabIndex]);//atualiza_grade5;
end;

procedure Tmdl_lstcontatos.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade3
      else if PageControl1.TabIndex=2 then begin
         crialstmodelos(0);
      end;
end;

procedure Tmdl_lstcontatos.crialstmodelos(xdefault:Integer);
var axidcbmodelos2: Integer;
begin
     With dm.ds_sql8 do begin
          if Active then Close;
          CommandText:= 'SELECT * FROM '+LstTables.Table[6]+
                                ' WHERE cod_web='+#39+'0'+#39+' or cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                                ' ORDER BY cp1';
          Open;
          Filter:='';
          Filtered:=false;
          Lista_ModFormail.Clear;
          if RecordCount > 0 then begin
             First;
             axidcbmodelos:=0;
             axidcbmodelos2:=0;
             While not Eof do begin
                if xdefault = 0 then begin
                   if codmoddefault=fieldbyname('codigo').AsInteger then
                      axidcbmodelos:=axidcbmodelos2;
                end else begin
                   if xdefault=fieldbyname('codigo').AsInteger then
                      axidcbmodelos:=axidcbmodelos2;
                end;
                Lista_ModFormail.Add(fieldbyname('cp1').AsString);
                Inc(axidcbmodelos2);
                Next;
             end;
          end;
          ComboBox_modelos.Items.Assign(Lista_ModFormail);
          ComboBox_modelos.ItemIndex:=axidcbmodelos;
          Locate('cp1',ComboBox_modelos.Text,[]);
          atualiza_grade4;
     end;
end;

procedure Tmdl_lstcontatos.crialstftrcp(xcod_mdl,xcod_lng:Integer);
begin
     With dm.ds_sql9 do begin
          if (CommandText <> ('SELECT * FROM '+LstTables.Table[5]+
                              ' WHERE cod_mdl='+#39+InttoStr(xcod_mdl)+#39+' and cod_lng='+#39+InttoStr(xcod_lng)+#39+
                              ' ORDER BY cp1')) then begin
              if Active then Close;
              CommandText:= 'SELECT * FROM '+LstTables.Table[5]+
                             ' WHERE cod_mdl='+#39+InttoStr(xcod_mdl)+#39+' and cod_lng='+#39+InttoStr(xcod_lng)+#39+
                             ' ORDER BY cp1';
              Open;
              Filter:='';
              Filtered:=false;
              First;
          end;
     end;
     With dm.ds_sql10 do begin
          if (CommandText <> ('SELECT * FROM '+LstTables.Table[4]+
                                ' WHERE cod_mdl='+#39+InttoStr(xcod_mdl)+#39+' and cod_lng='+#39+InttoStr(xcod_lng)+#39)) then begin
              if Active then Close;
              CommandText:= 'SELECT * FROM '+LstTables.Table[4]+
                                    ' WHERE cod_mdl='+#39+InttoStr(xcod_mdl)+#39+' and cod_lng='+#39+InttoStr(xcod_lng)+#39;
              Open;
              Filter:='';
              Filtered:=false;
          end;
     end;
     atualiza_grade5;
end;

procedure Tmdl_lstcontatos.bt_importClick(Sender: TObject);
var xfilext: String;
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
         loadx.Progressloading.position:=20;
         limpaphoto1(True);
         xfilext:=ExtractFileExt(ImportarImgDialog.FileName);
         if (xfilext='.swf') then begin
            xlogotmp1.LoadFromFile(ImportarImgDialog.FileName);
            loadx.Progressloading.position:=40;
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
                 if not axshowing then loadx.Close;
                 hwsf.BtMensagem('Selecione o modelo para a galeria de fotos.');
                 ComboBox_model.SetFocus;
                 exit;
              end;
            end;
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
               if not axshowing then loadx.Close;
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
         if not axshowing then loadx.Close;
         abretmplogo1;
      end;
end;

procedure Tmdl_lstcontatos.bt_clearClick(Sender: TObject);
begin
      limpaphoto1(True);
      abretmplogo1;
end;

procedure Tmdl_lstcontatos.bt_new1Click(Sender: TObject);
begin
      addreg;
      lbcb2.SetFocus;
end;

procedure Tmdl_lstcontatos.bt_del1Click(Sender: TObject);
var axshowing: Boolean;
begin
     //banco de imagens
     axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Excluindo contato';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Excluindo contato';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if (dm.ds_sql.RecordCount>0) and (lbcb1.Text<>'novo') then begin
        if dm.deleta_reg(LstTables.Table[0],'codigo',lbcb1.Text,true) then begin
           loadx.Progressloading.position:=25;
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           atualiza_grade;
        end;
    end;
    if not axshowing then loadx.Close;
end;

procedure Tmdl_lstcontatos.bt_save1Click(Sender: TObject);
var axcod,axcod_set,axcod_fc,axcodmode : integer;
    axcolab : string;
    axshowing,xexecutaimg: Boolean;
begin
     if lbcb2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        lbcb2.SetFocus;
        exit;
     end;
     if lbcb3.Text='' then begin
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        lbcb3.SetFocus;
        exit;
     end else if not Verifyemail(lbcb3.Text) then begin
        hwsf.BtMensagem('É necessário digitar um e-mail válido.');
        lbcb3.SetFocus;
        Exit;
     end;
     axcod_set:=0;
     axcod_fc:=0;
     if lbcb5.Text <> '' then begin
        if dm.executa6.Locate('codigo',lbcb5.Text,[]) then begin
           axcod_set:=dm.executa6.fieldbyname('codigo').AsInteger;
        end;
        if (lbcb7.Text <> '') and (dm.executa7.Active) then
        if dm.executa7.Locate('codigo',lbcb7.Text,[]) then begin
           axcod_fc:=dm.executa7.fieldbyname('codigo').AsInteger;
        end else lbcb8.Text:='';
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
     loadx.Progressloading.position:=10;
     if lbcb1.Text = 'novo' then begin
        loadx.Progressloading.position:=30;
        axcod:=dm.GetCodMax(LstTables.Table[0],'codigo','');
        loadx.Progressloading.position:=50;
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_cnt,cod_web,cod_lng,cod_set,cod_fc,nome,email,telefone,celular,txt,cod_psn,tpc,tpc2) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=axcod;
            Params[2].AsInteger:=AxDadosUsr.cod_web;
            Params[3].AsInteger:=listaLng.cod_lng[PageControl_languagens.TabIndex];
            Params[4].AsInteger:=axcod_set;
            Params[5].AsInteger:=axcod_fc;
            Params[6].AsString:= lbcb2.Text;
            Params[7].AsString:= lbcb3.Text;
            Params[8].AsString:= lbcb9.Text;
            Params[9].AsString:= lbcb10.Text;
            Params[10].Assign(lbcb11.Lines);
            try
                axcodmode:=StrtoInt(LstModels.codigo[ComboBox_model.ItemIndex]);
            except
                axcodmode:=0;
            end;
            Params[11].AsInteger:=axcodmode;
            Params[12].AsInteger:=lbcb12.ItemIndex;
            Params[13].AsInteger:=lbcb13.ItemIndex;
        end;
        loadx.Progressloading.position:=60;
     end else begin
        axcod:=StrtoInt(lbcb1.Text);
        with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_set=:p0,cod_fc=:p1,nome=:p2,email=:p3,telefone=:p4,celular=:p5,txt=:p6,tpc=:p7,tpc2=:p8 '+
                          'WHERE codigo=:p9';
            Params[0].AsInteger:=axcod_set;
            Params[1].AsInteger:=axcod_fc;
            Params[2].AsString:= lbcb2.Text;
            Params[3].AsString:= lbcb3.Text;
            Params[4].AsString:= lbcb9.Text;
            Params[5].AsString:= lbcb10.Text;
            Params[6].Assign(lbcb11.Lines);
            Params[7].AsInteger:=lbcb12.ItemIndex;
            Params[8].AsInteger:=lbcb13.ItemIndex;
            Params[9].AsInteger:=axcod;
        end;
        loadx.Progressloading.position:=70;
     end;
     try
          loadx.Progressloading.position:=80;
          dm.executa.Execute;
          loadx.Progressloading.position:=90;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     Application.ProcessMessages;
     xlogotmp1.Seek(0,soFromBeginning);
     xexecutaimg:=true;
     {if lbcb1.Text = 'novo' then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[0],'INST','codigo','codigo','blb','','sz','',IntToStr(axcod),xlogotmp1,nil);
     end else if xupdatelogo1 then begin
        xexecutaimg:=dm.PostBinaryStreamPH(LstTables.Table[0],'UPDT','codigo','','blb','','sz','',IntToStr(axcod),xlogotmp1,nil);
     end;
     if not xexecutaimg then begin
        try loadx.Close; except end;
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;}
     loadx.Progressloading.position:=100;
     xupdatelogo1:=false;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     Lb_countreg1.Caption:=Inttostr(dm.ds_sql.RecordCount);
     dm.ds_sql.Locate('codigo',axcod,[]);
     if not axshowing then loadx.Close;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_lstcontatos.KeyPressChange(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_lstcontatos.SpeedButton1Click(Sender: TObject);
begin
      bt_save4.Enabled:=true;
      if ComboBox_additem.ItemIndex>-1 then begin
         if Length(cp1.Text)>0 then
            cp1.Text:=cp1.Text+' '+ComboBox_additem.Text
         else cp1.Text:=cp1.Text+ComboBox_additem.Text;
      end;
end;

procedure Tmdl_lstcontatos.lbcb6Change(Sender: TObject);
begin
     if dm.executa6.Locate('descricao',lbcb6.Text,[]) then begin
        lbcb5.Text:=dm.executa6.fieldbyname('codigo').AsString;
     end else lbcb5.Text:='';
end;

procedure Tmdl_lstcontatos.lbcb8Change(Sender: TObject);
begin
     if (dm.executa7.Active) then
     if dm.executa7.Locate('descricao',lbcb8.Text,[]) then begin
        lbcb7.Text:=dm.executa7.fieldbyname('codigo').AsString;
     end else lbcb7.Text:='';
end;

procedure Tmdl_lstcontatos.lbcb5Change(Sender: TObject);
begin
     if lbcb5.Text <> '' then
     if dm.executa6.Locate('codigo',lbcb5.Text,[]) then begin
        lbcb6.Text:=dm.executa6.fieldbyname('descricao').AsString;
        atualiza_funcoes;
     end else lbcb6.Text:='';
end;

procedure Tmdl_lstcontatos.lbcb7Change(Sender: TObject);
begin
     if (lbcb7.Text <> '') and (dm.executa7.Active) then
     if dm.executa7.Locate('codigo',lbcb7.Text,[]) then begin
        lbcb8.Text:=dm.executa7.fieldbyname('descricao').AsString;
     end else lbcb8.Text:='';
end;

procedure Tmdl_lstcontatos.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_lstcontatos.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor.CutToClipboard;
end;

procedure Tmdl_lstcontatos.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor.CopyToClipboard;
end;

procedure Tmdl_lstcontatos.Colar1Click(Sender: TObject);
begin
     //colar
     re_editor.PasteFromClipboard;
end;

procedure Tmdl_lstcontatos.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_lstcontatos.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_lstcontatos.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_lstcontatos.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_lstcontatos.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor.Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tmdl_lstcontatos.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_lstcontatos.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Tmdl_lstcontatos.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Tmdl_lstcontatos.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Tmdl_lstcontatos.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Tmdl_lstcontatos.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65,84: (Sender as TRxRichEdit).SelectAll;
  end;
end;

procedure Tmdl_lstcontatos.SelectionChange(Sender: TObject);
begin
  if processoand then exit;
  with re_editor.Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in re_editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in re_editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in re_editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(re_editor.SelAttributes.Size);
    FontName.Text := re_editor.SelAttributes.Name;
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

function Tmdl_lstcontatos.CurrText: TRxTextAttributes;
begin
  if re_editor.SelLength > 0 then Result := re_editor.SelAttributes
  else Result := re_editor.DefAttributes;
end;

procedure Tmdl_lstcontatos.SetEditRect;
var
  R: TRect;
begin
  with re_editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_lstcontatos.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(re_editor.Handle, EM_EXLINEFROMCHAR, 0,
    re_editor.SelStart);
  CharPos.X := (re_editor.SelStart -
    SendMessage(re_editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure Tmdl_lstcontatos.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure Tmdl_lstcontatos.FormShow(Sender: TObject);
begin
      UpdateCursorPos;
end;

procedure Tmdl_lstcontatos.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tmdl_lstcontatos.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tmdl_lstcontatos.bt_del2Click(Sender: TObject);
var axshowing: Boolean;
begin
     if not bt_new2.Enabled then begin
        cfg_bts2(True);
     end else begin
        //banco de imagens
        axshowing:= loadx.Showing;
         if not axshowing then begin
            loadx := Tloadx.Create(Application);
            loadx.lbloading.Caption:='Excluindo modelo';
            loadx.Show;
            loadx.Update;
         end else begin
            loadx.lbloading.Caption:='Excluindo modelo';
            loadx.lbloading.Repaint;
         end;
         loadx.Progressloading.position:=10;   
         if (dm.ds_sql8.RecordCount>0) and (cod_modelo.Caption<>'novo') then begin
            if dm.deleta_reg(LstTables.Table[6],'codigo',cod_modelo.Caption,true) then begin
              dm.deleta_reg(LstTables.Table[4],'cod_mdl',cod_modelo.Caption,false);
              dm.deleta_reg(LstTables.Table[5],'cod_mdl',cod_modelo.Caption,false);
              loadx.Progressloading.position:=25;
              dm.ds_sql8.Close;
              dm.ds_sql8.Open;
              dm.ds_sql9.Close;
              dm.ds_sql9.Open;
              dm.ds_sql10.Close;
              dm.ds_sql10.Open;
              crialstmodelos(0);
            end;
       end;
       if not axshowing then loadx.Close;
     end;
end;

procedure Tmdl_lstcontatos.ComboBox_modelosChange(Sender: TObject);
begin
      if cod_modelo.Caption<>'novo' then begin
         dm.ds_sql8.Locate('cp1',ComboBox_modelos.Text,[]);
         atualiza_grade4;
      end;
      bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.bt_prior1Click(Sender: TObject);
begin
    dm.ds_sql.Prior;
    atualiza_grade;
end;

procedure Tmdl_lstcontatos.bt_next1Click(Sender: TObject);
begin
    dm.ds_sql.Next;
    atualiza_grade;
end;

procedure Tmdl_lstcontatos.bt_default2Click(Sender: TObject);
var axshowing: Boolean;
begin
     axshowing:= loadx.Showing;
     if not axshowing then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Definindo como padrão';
        loadx.Show;
        loadx.Update;
     end else begin
        loadx.lbloading.Caption:='Definindo como padrão';
        loadx.lbloading.Repaint;
     end;
     loadx.Progressloading.position:=10;
    //definir como padrão
    if (dm.ds_sql8.RecordCount>0) and (cod_modelo.Caption<>'novo') then begin
       codmoddefault:=StrtoInt(cod_modelo.Caption);
       with dm.executa do begin
           CommandText:= 'UPDATE '+LstTables.Table[1]+' SET cp19=:p0 '+
                         'WHERE cod_web=:p1';
           Params[0].AsInteger:=codmoddefault;
           Params[1].AsInteger:=AxDadosUsr.cod_web;
           try
             loadx.Progressloading.position:=70;
             Execute;
             loadx.Progressloading.position:=90;
           except
             if not axshowing then loadx.Close;
             hwsf.BtMensagem('Ocorreu algum erro.');
             exit;
           end;
       end;
       dm.ds_sql5.Close;
       dm.ds_sql5.Open;
    end;
    if not axshowing then loadx.Close;
    bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.bt_save2Click(Sender: TObject);
var axcod,axcod2,axcod3,xforcps,xforcps2 : integer;
    st_stream : TMemoryStream;
    axshowing: Boolean;
    xstrTAGs: TStringList;
    xlstcps1,xlstcps2: String;
begin
     if ComboBox_modelos.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        ComboBox_modelos.SetFocus;
        exit;
     end;
     if cod_modelo.Caption = 'novo' then begin
         if dm.ds_sql8.Locate('cp1',ComboBox_modelos.Text,[]) then begin
            hwsf.BtMensagem('Descrição já cadastrada.');
            ComboBox_modelos.SelectAll;
            ComboBox_modelos.SetFocus;
            exit;
         end;
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
     loadx.Progressloading.position:=10;
     //Dados do modelo
     if cod_modelo.Caption = 'novo' then begin
        loadx.Progressloading.position:=30;
        axcod:=dm.GetCodMax(LstTables.Table[6],'codigo','');
        loadx.Progressloading.position:=50;
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+LstTables.Table[6]+' (codigo,cod_web,cp1,cp2) '+
                       'VALUES(:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=AxDadosUsr.cod_web;
            Params[2].AsString:= ComboBox_modelos.Text;
            Params[3].Assign(ed_modelos.Lines);
        end;
        loadx.Progressloading.position:=60;
     end else begin
        axcod:=StrtoInt(cod_modelo.Caption);
        with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[6]+' SET cp2=:p0 '+
                       'WHERE codigo=:p1';
            Params[0].Assign(ed_modelos.Lines);
            Params[1].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
          loadx.Progressloading.position:=70;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     //configurações
     xstrTAGs:= TStringList.Create;
     xlstcps1:='';
     xlstcps2:='';
     for xforcps:=0 to CheckListBox_campos.Items.Count-1 do begin
         if CheckListBox_campos.Checked[xforcps] then
              xlstcps1:=xlstcps1+'1'
         else xlstcps1:=xlstcps1+'0';
         if (CheckListBox_campos2.Checked[xforcps] and CheckListBox_campos2.ItemEnabled[xforcps]) then
              xlstcps2:=xlstcps2+'1'
         else xlstcps2:=xlstcps2+'0';
     end;
     if cod_modelo.Caption = 'novo' then begin
        loadx.Progressloading.position:=30;
        st_stream := TMemoryStream.Create;
        re_editor.Lines.SaveToStream(st_stream);
        for xforcps:=0 to listaLng.count-1 do begin
            axcod2:=dm.GetCodMax(LstTables.Table[4],'codigo','');
            with dm.executa do begin
                CommandText:= 'INSERT INTO '+LstTables.Table[4]+' (codigo,cod_mdl,cod_lng,cp1,cp2,cp3,cp5,cp7,cp8,cp9,cp10,cp11,cp12,cp14) '+
                           'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13)';
                Params[0].AsInteger:=axcod2;
                Params[1].AsInteger:=axcod;
                Params[2].AsInteger:=listaLng.cod_lng[xforcps];
                if msg_cp1.Checked then Params[3].AsInteger:=0
                else Params[3].AsInteger:=1;
                if msg_cp2_chk.Checked then Params[4].AsInteger:=msg_cp2.Value
                else Params[4].AsInteger:=0;
                if msg_cp3_chk.Checked then Params[5].AsInteger:=msg_cp3.Value
                else Params[5].AsInteger:=0;
                if msg_cp5.Checked then Params[6].AsInteger:=0
                else Params[6].AsInteger:=1;
                Params[7].AsInteger:= msg_cp7.ItemIndex;
                if msg_cp8.Checked then begin
                   Params[8].AsInteger:=0;
                   st_stream.Seek(0,soFromBeginning);
                   Params[9].LoadFromStream(st_stream,ftblob);
                   xstrTAGs.Clear;
                   xstrTAGs:= dm.RtfToHtml2('HWS web solution',true,re_editor);
                   Params[10].Assign(xstrTAGs);
                end else begin
                   Params[8].AsInteger:=1;
                   Params[9].AsString:='';
                   Params[10].AsString:='';
                end;
                Params[11].AsInteger:=0;
                Params[12].AsString:=xlstcps1;
                Params[13].AsString:=xlstcps2;
            end;
            try
                 dm.executa.Execute;
                 loadx.Progressloading.position:=70;
            except
                 hwsf.BtMensagem('Ocorreu algum erro.');
                 exit;
            end;
        end;
        st_stream.Free;
        loadx.Progressloading.position:=60;
     end else begin
        axcod2:=StrtoInt(cod_cfg2.Caption);
        with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[4]+' SET cp1=:p0,cp2=:p1,cp3=:p2,cp5=:p3,cp7=:p4,cp8=:p5,cp9=:p6,cp10=:p7,cp11=:p8,cp12=:p9,cp14=:p10 '+
                       'WHERE codigo=:p11';
            if msg_cp1.Checked then Params[0].AsInteger:=0
            else Params[0].AsInteger:=1;
            if msg_cp2_chk.Checked then Params[1].AsInteger:=msg_cp2.Value
            else Params[1].AsInteger:=0;
            if msg_cp3_chk.Checked then Params[2].AsInteger:=msg_cp3.Value
            else Params[2].AsInteger:=0;
            if msg_cp5.Checked then Params[3].AsInteger:=0
            else Params[3].AsInteger:=1;
            Params[4].AsInteger:= msg_cp7.ItemIndex;
            if msg_cp8.Checked then begin
               Params[5].AsInteger:=0;
               st_stream := TMemoryStream.Create;
               re_editor.Lines.SaveToStream(st_stream);
               st_stream.Seek(0,soFromBeginning);
               Params[6].LoadFromStream(st_stream,ftblob);
               xstrTAGs.Clear;
               xstrTAGs:= dm.RtfToHtml2('HWS web solution',true,re_editor);
               Params[7].Assign(xstrTAGs);
            end else begin
               Params[5].AsInteger:=1;
               Params[6].AsString:='';
               Params[7].AsString:='';
            end;
            Params[8].AsInteger:=0;
            Params[9].AsString:=xlstcps1;
            Params[10].AsString:=xlstcps2;
            Params[11].AsInteger:=axcod2;
        end;
        try
             dm.executa.Execute;
             loadx.Progressloading.position:=70;
        except
             hwsf.BtMensagem('Ocorreu algum erro.');
             exit;
        end;
     end;
     xstrTAGs.Free;
     //lista de campos
     if cod_modelo.Caption = 'novo' then begin
        loadx.Progressloading.position:=30;
        loadx.Progressloading.position:=50;
        with dm.executa do begin
             for xforcps:=0 to listaLng.count-1 do begin
                 for xforcps2:=0 to CheckListBox_campos.Items.Count-1 do begin
                     axcod3:=dm.GetCodMax(LstTables.Table[5],'codigo','');
                     CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_mdl,cod_lng,cp1,cp2) '+
                                   'VALUES(:p0,:p1,:p2,:p3,:p4)';
                     Params[0].AsInteger:=axcod3;
                     Params[1].AsInteger:=axcod;
                     Params[2].AsInteger:=listaLng.cod_lng[xforcps];
                     Params[3].AsInteger:=xforcps2;
                     Params[4].AsString:=StringGrid_lstcampos.Cells[1,xforcps2+1];
                     try
                        Execute;
                     except
                     end;
                 end;
             end;
        end;
        loadx.Progressloading.position:=60;
     end else begin
        with dm.executa do begin
             for xforcps2:=0 to CheckListBox_campos.Items.Count-1 do begin
                 if dm.ds_sql9.Locate('cp1',xforcps2,[]) then begin
                    CommandText:= 'UPDATE '+LstTables.Table[5]+' SET cp2=:p0 '+
                                  'WHERE codigo=:p1';
                    Params[0].AsString:=StringGrid_lstcampos.Cells[1,xforcps2+1];
                    Params[1].AsInteger:=dm.ds_sql9.fieldbyname('codigo').AsInteger;
                 end else begin
                    axcod3:=dm.GetCodMax(LstTables.Table[5],'codigo','');
                    CommandText:= 'INSERT INTO '+LstTables.Table[5]+' (codigo,cod_mdl,cod_lng,cp1,cp2) '+
                                  'VALUES(:p0,:p1,:p2,:p3,:p4)';
                    Params[0].AsInteger:=axcod3;
                    Params[1].AsInteger:=axcod;
                    Params[2].AsInteger:=listaLng.cod_lng[PageControl_languagens.TabIndex];
                    Params[3].AsInteger:=xforcps2;
                    Params[4].AsString:=StringGrid_lstcampos.Cells[1,xforcps2+1];
                 end;
                 try
                     Execute;
                 except
                 end;
             end;
        end;
     end;
     //finalizando e gravando dados
     loadx.Progressloading.position:=100;
     dm.ds_sql8.Close;
     dm.ds_sql8.Open;
     dm.ds_sql9.Close;
     dm.ds_sql9.Open;
     dm.ds_sql10.Close;
     dm.ds_sql10.Open;
     cod_modelo.Caption:=InttoStr(axcod);
     crialstmodelos(axcod);
     if not bt_new2.Enabled then cfg_bts2(True);
     if not axshowing then loadx.Close;
     hwsf.BtMensagem('Dados gravados com sucesso.');   
end;

procedure Tmdl_lstcontatos.bt_selectClick(Sender: TObject);
begin
      CheckListBox_campos_uncheck(True,PageControl_lstcampos.TabIndex);
      bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.bt_unselectClick(Sender: TObject);
begin
      CheckListBox_campos_uncheck(False,PageControl_lstcampos.TabIndex);
      bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.atualiza_Combobox_campos;
var xchkcp: Integer;
begin
      ComboBox_campos.Clear;
      for xchkcp:=0 to CheckListBox_campos.Items.Count-1 do begin
          if CheckListBox_campos.Checked[xchkcp] then begin
             ComboBox_campos.Items.Add(CheckListBox_campos.Items.Strings[xchkcp]);
             CheckListBox_campos2.ItemEnabled[xchkcp]:=true;
          end else begin
             CheckListBox_campos2.Checked[xchkcp]:=true;
             CheckListBox_campos2.ItemEnabled[xchkcp]:=true;
             CheckListBox_campos2.Checked[xchkcp]:=false;
          end;
      end;
end;

procedure Tmdl_lstcontatos.CheckListBox_camposClick(Sender: TObject);
begin
      atualiza_Combobox_campos;
      bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.CheckListBox_camposClickCheck(Sender: TObject);
begin
      atualiza_Combobox_campos;
      bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.SpeedButton11Click(Sender: TObject);
begin
      if ComboBox_campos.ItemIndex > -1 then
         re_editor.Text:=re_editor.Text+'['+ComboBox_campos.Text+']';
end;

procedure Tmdl_lstcontatos.SpeedButton3Click(Sender: TObject);
begin
      if OpenDialog1.Execute then
         re_editor.Lines.SaveToFile(OpenDialog1.FileName);
end;

procedure Tmdl_lstcontatos.PageControl_lstcamposChange(Sender: TObject);
begin
      ToolBar_lstcampos.Visible:=(PageControl_lstcampos.TabIndex<>2);
end;

procedure Tmdl_lstcontatos.bt_new2Click(Sender: TObject);
begin
      addreg2;
      ComboBox_modelos.SetFocus;
end;

procedure Tmdl_lstcontatos.bts4Change(Sender: TObject);
begin
      bt_save4.Enabled:=true;
end;

procedure Tmdl_lstcontatos.StringGrid_lstcamposClick(Sender: TObject);
begin
      bt_save2.Enabled:=true;
end;

procedure Tmdl_lstcontatos.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.

