{###############################################################################
Programa: HWSwebServer
Módulo: Contador de acessos.
Data: 16 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
16/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit umdl_lstreg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ComCtrls, yupack,
  Mask, DBCtrls, OleCtrls, XPMan, ExtDlgs, hwsfunctions, Menus, ToolWin,
  ShockwaveFlashObjects_TLB, Jpeg, BmpToJpg, JpgToBmp, ComboSpeedButton,
  Tradutor, RxRichEd, Spin, ImgList, CheckLst, ValEdit;

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
  Tmdl_lstreg = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    lb_title: TYuSoftLabel;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    XPManifest1: TXPManifest;
    bt_help: TYuSoftButton;
    ImportarImgDialog: TOpenPictureDialog;
    Tradutor1: TTradutor;
    Timer_traduz: TTimer;
    PageControl1: TPageControl;
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
    OpenDialog1: TOpenDialog;
    Importar1: TMenuItem;
    GroupBox3: TGroupBox;
    cfg_cod: TLabel;
    Label22: TLabel;
    cfg_title: TEdit;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    cp5: TCheckBox;
    cp6: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cp7: TSpinEdit;
    Label5: TLabel;
    cp8: TCheckBox;
    cp21: TCheckBox;
    cp27: TCheckBox;
    cp22: TCheckBox;
    cp26: TLabeledEdit;
    cp23: TLabeledEdit;
    cp24: TLabeledEdit;
    cp25: TLabeledEdit;
    Label6: TLabel;
    cp18: TCheckBox;
    cp19: TCheckBox;
    cp20: TCheckBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Bevel1: TBevel;
    TabSheet3: TTabSheet;
    PageControl_clc: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    ToolBar3: TToolBar;
    x2_bt_prior: TSpeedButton;
    x2_bt_next: TSpeedButton;
    x2_bt_new: TSpeedButton;
    x2_bt_del: TSpeedButton;
    x2_bt_save: TSpeedButton;
    GroupBox4: TGroupBox;
    Splitter1: TSplitter;
    Lb_countreg1: TLabel;
    Panel12: TPanel;
    x2_DBGrid: TDBGrid;
    TabSheet7: TTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    x1_bt_import: TSpeedButton;
    x1_bt_clear: TSpeedButton;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    x1_codigo: TLabeledEdit;
    x1_cp1: TLabeledEdit;
    x1_cp15: TLabeledEdit;
    x1_cp15_cbx: TComboBox;
    Panel8: TPanel;
    x1_ShockwaveFlash: TShockwaveFlash;
    x1_mod_img: TComboBox;
    ToolBar6: TToolBar;
    x1_bt_prior: TSpeedButton;
    x1_bt_next: TSpeedButton;
    x1_bt_new: TSpeedButton;
    x1_bt_del: TSpeedButton;
    x1_bt_save: TSpeedButton;
    GroupBox6: TGroupBox;
    Splitter2: TSplitter;
    Label28: TLabel;
    Panel9: TPanel;
    x1_DBGrid: TDBGrid;
    ScrollBox2: TScrollBox;
    Panel6: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    x2_bt_import: TSpeedButton;
    x2_bt_clear: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    x2_codigo: TLabeledEdit;
    x2_descricao: TLabeledEdit;
    x2_cp14: TLabeledEdit;
    x2_cp14_cbx: TComboBox;
    Panel7: TPanel;
    x2_ShockwaveFlash: TShockwaveFlash;
    x2_mod_img: TComboBox;
    GroupBox10: TGroupBox;
    CoolBar3: TCoolBar;
    ToolBar19: TToolBar;
    ComboBox8: TComboBox;
    ToolButton23: TToolButton;
    Edit2: TEdit;
    UpDown3: TUpDown;
    ToolBar20: TToolBar;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolBar21: TToolBar;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolBar22: TToolBar;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolBar23: TToolBar;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    re_editor2: TRxRichEdit;
    ToolBar_web: TToolBar;
    Label7: TLabel;
    ComboBox_web: TComboBox;
    GroupBox9: TGroupBox;
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
    ToolButton1: TToolButton;
    ToolBar14: TToolBar;
    ToolButton10: TToolButton;
    ToolButton8: TToolButton;
    ToolBar2: TToolBar;
    CheckBox_ab: TCheckBox;
    ComboBox_ab: TComboBox;
    re_editor1: TRxRichEdit;
    x1_cp2: TLabeledEdit;
    x1_cp3: TCheckBox;
    Label12: TLabel;
    Label18: TLabel;
    x1_cp4_date: TDateTimePicker;
    x1_cp4_time: TDateTimePicker;
    x1_cp5_time: TDateTimePicker;
    x1_cp5_date: TDateTimePicker;
    Label14: TLabel;
    Label23: TLabel;
    x1_cp16: TLabeledEdit;
    x1_cp16_cbx: TComboBox;
    Label25: TLabel;
    x1_cp17: TLabeledEdit;
    x1_cp17_cbx: TComboBox;
    Label26: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_helpClick(Sender: TObject);
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
    procedure re_editor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure ComboBox_webChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure x1_bt_newClick(Sender: TObject);
    procedure x1_bt_saveClick(Sender: TObject);
    procedure x1_cp3Click(Sender: TObject);
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
    ComboBox_abCod: TStringList;
    procedure addreg;
    procedure monta_ab;
    procedure monta_table1;
    procedure atualiza_grade;
    procedure monta_table3;
    procedure atualiza_grade3;
    procedure limpaphoto3(xupdateset:Boolean);
    procedure getBanner;
    procedure abretmpbanner;
    function retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
    procedure save_cfg(xcodlng: Integer);
    function retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
    { Private declarations }
  public
    processoand: Boolean;
    xreceivetrad : String;
    xtimerresponse : Integer;
    function CurrText: TRxTextAttributes;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    { Public declarations }
  end;

var
  mdl_lstreg: Tmdl_lstreg;

implementation
uses udm, RichEdit, DBClient, DBXpress, DateUtils, SimpleDS, SqlExpr, Math, Clipbrd;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tmdl_lstreg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     if dm.executa3.Active then dm.executa3.Close;
     Action:=cafree;
end;

procedure Tmdl_lstreg.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tmdl_lstreg.FormCreate(Sender: TObject);
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
     pathdefault:=ExtractFilePath(Application.ExeName);
     lb_title.Caption:=AxDadosUsr.axtitle;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
     xinit:=true;
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     xbannertmp:= TMemoryStream.Create;
     xupdatebanner:=False;
     processoand:=false;
     SelectionChange(Self);
     SendMessage(re_editor1.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     SendMessage(re_editor2.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor1.Justify;
     re_editor2.Justify;
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
             if not axshowing then loadx.Close;
             hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
             Application.Terminate;
             exit;
          end;
          Close;
     end;
     loadx.Progressloading.position:=60;
     monta_ab;
     loadx.Progressloading.position:=70;
     loadx.Progressloading.position:=80;
     loadx.Progressloading.position:=90;
     monta_table1;
     monta_table3;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

procedure Tmdl_lstreg.monta_ab;
begin
     ComboBox_ab.Clear;
     ComboBox_abCod.Clear;
     With dm.ds_sql4 do begin
          if Active then Close;
          CommandText:= 'SELECT codigo,descricao FROM '+LstTables.Table[2]+
                        ' WHERE cod_web='+#39+InttoStr(AxDadosUsr.cod_web)+#39+
                        ' AND cod_lng='+#39+IntToStr(listaLng.cod_lng[PageControl_languagens2.TabIndex])+#39+
                        ' ORDER BY descricao';
          Open;
          First;
          While not Eof do begin
                ComboBox_ab.Items.Add(fieldbyname('descricao').AsString);
                ComboBox_abCod.Add(fieldbyname('codigo').AsString);
                Next;
          end;
     end;
end;

procedure Tmdl_lstreg.monta_table1;
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
                                ' ORDER BY B.pdr,B.descricao';
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
     if not axshowing then loadx.Close;
end;

procedure Tmdl_lstreg.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tmdl_lstreg.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tmdl_lstreg.bt_maximizaClick(Sender: TObject);
begin
    if mdl_lstreg.WindowState=wsMaximized then mdl_lstreg.WindowState:=wsNormal
    else mdl_lstreg.WindowState:=wsMaximized;
end;

procedure Tmdl_lstreg.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    bt_help.Left:=bt_sobre.Left-17;
end;

procedure Tmdl_lstreg.FormActivate(Sender: TObject);
begin
      mdl_lstreg.Refresh;
      if xinit then begin
         xinit:=false;
      end;
end;

procedure Tmdl_lstreg.bt_helpClick(Sender: TObject);
begin
      //Tópicos de ajuda
      WinExec(PChar(ExtractFilePath(Application.ExeName)+'HWShelp.exe'+' '+AxDadosUsr.usr+' '+AxDadosUsr.operador+' '+AxDadosUsr.pass+' 1 '+InttoStr(AxDadosUsr.cod_grp)), SW_SHOW);
end;

procedure Tmdl_lstreg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      Case key of
        VK_F1: bt_help.OnClick(self); //help
        //VK_F2: bt_del.Click; //salvar
        //VK_F3: bt_new.Click; //Novo
        //VK_F5: bt_update.Click; //Atualizar
        VK_F9: hwsf.BtSobre; //Sobre
        VK_F10: bt_minimize.Click; //salvar
        VK_F11: bt_maximiza.Click; //salvar
      End;
      if (Shift = [ssCtrl]) and (Key=VK_F4) then
         bt_fechar.Click; //Fechar janela
//      if (Shift = [ssCtrl]) and (Key=VK_DELETE) then
//         bt_del.Click; //deletar registro
end;

procedure Tmdl_lstreg.atualiza_grade;
var axshowing,xuplng: Boolean;
    axlocid,xid_ab: Integer;
    st_stream: TMemoryStream;
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
               if not axshowing then loadx.Close;
               exit;
            end;
            xcodunit:=fieldbyname('codigo').AsInteger;
            if FieldByName('cod_gal').AsInteger>0 then begin
               for xid_ab:=0 to ComboBox_abCod.Count-1 do begin
                   if ComboBox_abCod.Strings[xid_ab] = FieldByName('cod_gal').AsString then begin
                       ComboBox_ab.ItemIndex:=xid_ab;
                       break;
                   end;
               end;
            end else begin
               CheckBox_ab.Checked:=false;
               ComboBox_ab.ItemIndex:=-1;
            end;
            re_editor1.Clear;
            st_stream := TMemoryStream.Create;
            TBlobField(FieldByName('blb')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            re_editor1.Lines.LoadFromStream(st_stream);
            loadx.Progressloading.position:=20;
            st_stream.Free;
            loadx.Progressloading.position:=50;
         end;
      end;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstreg.getBanner;
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

procedure Tmdl_lstreg.abretmpbanner;
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

procedure Tmdl_lstreg.Splitter1Moved(Sender: TObject);
begin
      ComboBox_web.Width:=ToolBar_web.Width-53; 
end;

function Tmdl_lstreg.retorna_TTabSheet2(xidxcod:Integer):TTabSheet;
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

procedure Tmdl_lstreg.Timer_traduzTimer(Sender: TObject);
begin
      Inc(xtimerresponse);
end;

procedure Tmdl_lstreg.Tradutor1AoTraduzir(Sender: TObject;
  Traducao: String);
begin
    xreceivetrad:=Traducao;
end;

function Tmdl_lstreg.recebetraducao(xtrad_text,xtrad_de,xtrad_para: String):String;
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

procedure Tmdl_lstreg.save_cfg(xcodlng: Integer);
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
     with dm.executa do begin                                 //codigo, cod_web, cod_lng, cp5, cp6, cp7, cp11, cp12, cp13, cp14, cp15, cp16, cp8, cp9, cp10, cp17, cp18, cp19, cp20, cp21, cp22, cp23, cp24, cp25, cp26, cp27
             CommandText:= 'UPDATE '+LstTables.Table[1]+' SET cp11=:p0,cp14=:p1,cp15=:p2,cp16=:p3,cp5=:p4,cp6=:p5,cp7=:p6,cp8=:p7,cp9=:p8,cp10=:p9,cp17=:p10,cp18=:p11,cp19=:p12,cp20=:p13,cp21=:p14,cp22=:p15,cp23=:p16,cp24=:p17,cp25=:p18,cp26=:p19,cp27=:p20 '+
                           'WHERE codigo=:p21';
             loadx.Progressloading.position:=30;
             Params[1].AsString:= cfg_title.Text;
             Params[2].AsInteger:= cp14.ItemIndex;
             Params[3].AsInteger:= cp15.ItemIndex;
             Params[4].AsString:= AxDadosUsr.axparm;
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
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_lstreg.monta_table3;
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
          CommandText:= 'SELECT codigo,cod_web,cod_lng,cp11,cp14,cp15 FROM '+LstTables.Table[1]+
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
                              CommandText:='SELECT cp12,cp13 FROM '+LstTables.Table[1]+' WHERE codigo='+#39+fieldbyname('codigo').AsString+#39;
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
                      xtxt1:= 'Text';
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
                    if not axshowing then loadx.Close;
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
     if not axshowing then loadx.Close;
end;

procedure Tmdl_lstreg.atualiza_grade3;
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
               if not axshowing then loadx.Close;
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
            if not axshowing then loadx.Close;
            exit;
         end;
      end;
      getBanner;
      if not axshowing then loadx.Close;
end;

procedure Tmdl_lstreg.limpaphoto3(xupdateset:Boolean);
begin
     xupdatebanner:=xupdateset;
     xbannertmp.Clear;
     xbannertmp.Seek(0,soFromBeginning);
     xbannersz:=0;
     Label_size3.Caption:='0 kb';
     swf_banner.Visible:=false;
     swf_banner.LoadMovie(0,'lixo');
end;

procedure Tmdl_lstreg.bt_open3Click(Sender: TObject);
var xfilext: String;
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

procedure Tmdl_lstreg.bt_limpar3Click(Sender: TObject);
begin
      limpaphoto3(true);
end;

procedure Tmdl_lstreg.bt_save4Click(Sender: TObject);
begin
      save_cfg(listaLng.cod_lng[PageControl_languagens2.TabIndex]);
end;

procedure Tmdl_lstreg.PageControl_languagens2Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then begin
         atualiza_grade3;
      end else begin
         monta_ab;
         if not dm.ds_sql.Locate('cod_lng',listaLng.cod_lng[PageControl_languagens2.TabIndex],[]) then
            dm.ds_sql.First;
         atualiza_grade;
      end;
end;

procedure Tmdl_lstreg.PageControl1Change(Sender: TObject);
begin
      if PageControl1.TabIndex=1 then atualiza_grade3;
      //ToolBar_lng.Visible:=(PageControl1.TabIndex>0);
end;

procedure Tmdl_lstreg.KeyPressChange(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tmdl_lstreg.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with retorna_TRxRichEdit(PageControl1.TabIndex) do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tmdl_lstreg.Recortar1Click(Sender: TObject);
begin
     //recortar
     retorna_TRxRichEdit(PageControl1.TabIndex).CutToClipboard;
end;

procedure Tmdl_lstreg.Copiar1Click(Sender: TObject);
begin
     //copiar
     retorna_TRxRichEdit(PageControl1.TabIndex).CopyToClipboard;
end;

procedure Tmdl_lstreg.Colar1Click(Sender: TObject);
begin
     //colar
     retorna_TRxRichEdit(PageControl1.TabIndex).PasteFromClipboard;
end;

procedure Tmdl_lstreg.Cor1Click(Sender: TObject);
begin
     //cor da fonte
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tmdl_lstreg.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tmdl_lstreg.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tmdl_lstreg.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tmdl_lstreg.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControl1.TabIndex).Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tmdl_lstreg.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     retorna_TRxRichEdit(PageControl1.TabIndex).Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tmdl_lstreg.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Tmdl_lstreg.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Tmdl_lstreg.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Tmdl_lstreg.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Tmdl_lstreg.re_editor1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65,84: (Sender as TRxRichEdit).SelectAll;
  end;
end;

procedure Tmdl_lstreg.SelectionChange(Sender: TObject);
begin
  if processoand then exit;
  with retorna_TRxRichEdit(PageControl1.TabIndex).Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Style;
    ItalicButton.Down := fsItalic in retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Size);
    FontName.Text := retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes.Name;
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

function Tmdl_lstreg.CurrText: TRxTextAttributes;
begin
  if retorna_TRxRichEdit(PageControl1.TabIndex).SelLength > 0 then Result := retorna_TRxRichEdit(PageControl1.TabIndex).SelAttributes
  else Result := retorna_TRxRichEdit(PageControl1.TabIndex).DefAttributes;
end;

procedure Tmdl_lstreg.SetEditRect;
var
  R: TRect;
begin
  with retorna_TRxRichEdit(PageControl1.TabIndex) do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tmdl_lstreg.UpdateCursorPos;
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

procedure Tmdl_lstreg.FormPaint(Sender: TObject);
begin
      SetEditRect;
end;

procedure Tmdl_lstreg.FormShow(Sender: TObject);
begin
      UpdateCursorPos;
end;

procedure Tmdl_lstreg.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tmdl_lstreg.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tmdl_lstreg.Importar1Click(Sender: TObject);
begin
      if OpenDialog1.Execute then
         retorna_TRxRichEdit(PageControl1.TabIndex).Lines.SaveToFile(OpenDialog1.FileName);
end;

procedure Tmdl_lstreg.addreg;
begin
     re_editor1.Clear;
     CheckBox_ab.Checked:=false;
     ComboBox_ab.ItemIndex:=-1;
     FontName.ItemIndex:=0;
     UpDown1.Position:=12;
end;

procedure Tmdl_lstreg.ComboBox_webChange(Sender: TObject);
begin
      if (not xinit) and (dm.executa3.Active) then begin
          if dm.executa3.Locate('website',ComboBox_web.Text,[]) then begin
             AxDadosUsr.cod_web:=dm.executa3.fieldbyname('codigo').AsInteger;
             monta_ab;
             monta_table1;
             atualiza_grade;
             monta_table3;
          end;
      end;
end;

procedure Tmdl_lstreg.Timer1Timer(Sender: TObject);
begin
      Timer1.Enabled:=false;
      atualiza_grade;
end;

procedure Tmdl_lstreg.x1_bt_newClick(Sender: TObject);
begin
      addreg;
end;

procedure Tmdl_lstreg.x1_bt_saveClick(Sender: TObject);
var axshowing: Boolean;
    st_stream: TMemoryStream;
    xstrTAGs: TStringList;
    xforcps: integer;
begin
     if CheckBox_ab.Checked and (ComboBox_ab.ItemIndex<0) then begin
        hwsf.BtMensagem('Selecione o álbum de fotos.');
        ComboBox_ab.SetFocus;
        exit;
     end;
     xstrTAGs:= TStringList.Create;
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
     st_stream := TMemoryStream.Create;
     re_editor1.Lines.SaveToStream(st_stream);
     xstrTAGs.Clear;
     xstrTAGs:= dm.RtfToHtml2('',false,re_editor1);
     if xcodunit = 0 then begin
        loadx.Progressloading.position:=30;
        for xforcps:=0 to listaLng.count-1 do begin
            xcodunit:=dm.GetCodMax(LstTables.Table[0],'codigo','');
            with dm.executa do begin
                 CommandText:= 'INSERT INTO '+LstTables.Table[0]+' (codigo,cod_web,cod_lng,cod_gal,xtp,blb,txt) '+
                               'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6)';
                 Params[0].AsInteger:=xcodunit;
                 Params[1].AsInteger:=AxDadosUsr.cod_web;
                 Params[2].AsInteger:=listaLng.cod_lng[xforcps];
                 if CheckBox_ab.Checked then Params[3].AsInteger:=StrtoInt(ComboBox_abCod.Strings[ComboBox_ab.ItemIndex])
                 else Params[3].AsInteger:=0;
                 Params[4].AsString:=AxDadosUsr.axparm;
                 st_stream.Seek(0,soFromBeginning);
                 Params[5].LoadFromStream(st_stream,ftblob);
                 Params[6].Assign(xstrTAGs);
                 try
                     Execute;
                 except
                     hwsf.BtMensagem('Ocorreu algum erro.');
                     exit;
                 end;
            end;
        end;
        loadx.Progressloading.position:=60;
     end else begin
        with dm.executa do begin
            loadx.Progressloading.position:=60;
            CommandText:= 'UPDATE '+LstTables.Table[0]+' SET cod_gal=:p0,blb=:p1,txt=:p2 '+
                          'WHERE codigo=:p3';
            if CheckBox_ab.Checked then Params[0].AsInteger:=StrtoInt(ComboBox_abCod.Strings[ComboBox_ab.ItemIndex])
            else Params[0].AsInteger:=0;
            st_stream.Seek(0,soFromBeginning);
            Params[1].LoadFromStream(st_stream,ftblob);
            Params[2].Assign(xstrTAGs);
            Params[3].AsInteger:=xcodunit;
            try
               loadx.Progressloading.position:=80;
               Execute;
               loadx.Progressloading.position:=90;
            except
               hwsf.BtMensagem('Ocorreu algum erro.');
               exit;
            end;
        end;
        loadx.Progressloading.position:=70;
     end;
     loadx.Progressloading.position:=100;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     xstrTAGs.Free;
     st_stream.Free;
     if not axshowing then loadx.Close;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tmdl_lstreg.x1_cp3Click(Sender: TObject);
begin
      x1_cp4_date.Enabled:= x1_cp3.Checked;
      x1_cp4_time.Enabled:= x1_cp3.Checked;
      x1_cp5_date.Enabled:= x1_cp3.Checked;
      x1_cp5_time.Enabled:= x1_cp3.Checked;
end;

function Tmdl_lstreg.retorna_TRxRichEdit(xidxcod:Integer):TRxRichEdit;
begin
      Case xidxcod of
          0: Result:=re_editor1;
          1: Result:=re_editor2;
      End;
end;


end.

