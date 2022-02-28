{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de usuários para websites.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_st;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, ExtDlgs, DBGridBoolean,
  ImgList, ClipBrd, Menus, backup, XPMan, RxRichEd;

type
  Tadm_st = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    ImageList_prioridade: TImageList;
    PageControl_geral: TPageControl;
    TabSheet_solicitacoes: TTabSheet;
    Panel2: TPanel;
    PageControl2: TPageControl;
    GroupBox2: TGroupBox;
    db_solicitacoes: TDBGrid;
    Panel_search: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    bt_search: TSpeedButton;
    Label7: TLabel;
    Bevel1: TBevel;
    ComboBox_search: TComboBox;
    Edit_search: TComboBox;
    CheckBox_ativas: TCheckBox;
    CheckBox_canceladas: TCheckBox;
    CheckBox_concluidas: TCheckBox;
    ToolBar3: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    TabSheet_processos: TTabSheet;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel8: TPanel;
    Label15: TLabel;
    lbcp_dtcad: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lbcp8: TComboBox;
    lbcp7: TLabeledEdit;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    GroupBox3: TGroupBox;
    rbcp1: TRadioButton;
    rbcp2: TRadioButton;
    rbcp3: TRadioButton;
    cbcp1: TCheckBox;
    lbcp11: TDateTimePicker;
    lbcp12: TComboBoxEx;
    lbcp9: TLabeledEdit;
    lbcp10: TComboBox;
    ToolBar4: TToolBar;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    bt_new: TSpeedButton;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    bt_detail4: TSpeedButton;
    bt_detail3: TSpeedButton;
    Edresp2: TComboBox;
    Label18: TLabel;
    Edresp1: TLabeledEdit;
    bt_detail5: TSpeedButton;
    ComboBoxEx2: TComboBoxEx;
    Label19: TLabel;
    ComboBox_listapublica: TComboBox;
    Label20: TLabel;
    Panel1: TPanel;
    PageControl3: TPageControl;
    GroupBox4: TGroupBox;
    db_processos: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    bt_search2: TSpeedButton;
    ComboBox_search2: TComboBox;
    Edit_search2: TComboBox;
    ToolBar2: TToolBar;
    Label9: TLabel;
    Lb_countreg2: TLabel;
    PageControl_processos: TPageControl;
    TabSheet_ficha: TTabSheet;
    GroupBox5: TGroupBox;
    ScrollBox2: TScrollBox;
    Panel4: TPanel;
    lbcb_dtcad: TLabel;
    Label26: TLabel;
    lbcb1: TLabeledEdit;
    ToolBar1: TToolBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    TabSheet_anexos: TTabSheet;
    GroupBox8: TGroupBox;
    ToolBar6: TToolBar;
    bt_prior4: TSpeedButton;
    bt_next5: TSpeedButton;
    bt_new4: TSpeedButton;
    bt_del4: TSpeedButton;
    bt_save4: TSpeedButton;
    db_arquivos: TDBGrid;
    Panel6: TPanel;
    lbce1: TLabeledEdit;
    lbce2: TLabeledEdit;
    GroupBox7: TGroupBox;
    lbcp_ax1: TLabeledEdit;
    lbcp_ax2: TComboBox;
    lbcp3: TLabeledEdit;
    lbcp4: TComboBox;
    bt_detail1: TSpeedButton;
    bt_detail6: TSpeedButton;
    Label2: TLabel;
    Label21: TLabel;
    GroupBox9: TGroupBox;
    lbcp_ax3: TLabeledEdit;
    lbcp5: TLabeledEdit;
    lbcp_ax4: TComboBox;
    Label27: TLabel;
    Label16: TLabel;
    lbcp6: TComboBox;
    bt_detail2: TSpeedButton;
    bt_detail7: TSpeedButton;
    GroupBox6: TGroupBox;
    GroupBox10: TGroupBox;
    cbcp2: TCheckBox;
    Label8: TLabel;
    lb_restrict: TLabel;
    autofiltro_checkbox: TCheckBox;
    TabSheet_descricao: TTabSheet;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    lbcb3: TDateTimePicker;
    Label30: TLabel;
    lbcb5: TDateTimePicker;
    Label17: TLabel;
    Panel5: TPanel;
    re_editor_title: TEdit;
    Label31: TLabel;
    ToolbarImages: TImageList;
    OpenDialog: TOpenDialog;
    FontDialog1: TFontDialog;
    SaveDialog: TSaveDialog;
    ColorDialog1: TColorDialog;
    CoolBar1: TCoolBar;
    ToolBar7: TToolBar;
    FontName: TComboBox;
    ToolButton7: TToolButton;
    FontSize: TEdit;
    UpDown1: TUpDown;
    ToolBar8: TToolBar;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolBar9: TToolBar;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    JustifyAlign: TToolButton;
    BulletsButton: TToolButton;
    ToolBar10: TToolBar;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
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
    ToolBar11: TToolBar;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    ToolBar5: TToolBar;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    lbcb2: TDateTimePicker;
    lbcb4: TDateTimePicker;
    Label29: TLabel;
    lbcb6: TDateTimePicker;
    cbcb2: TCheckBox;
    cbcb1: TCheckBox;
    lb_restrict2: TLabel;
    lbcb11: TLabeledEdit;
    lbcb12: TComboBox;
    Label25: TLabel;
    bt_detail12: TSpeedButton;
    GroupBox13: TGroupBox;
    bt_download4: TSpeedButton;
    bt_upload4: TSpeedButton;
    lbce4: TLabel;
    Label32: TLabel;
    lbce_dtcad: TLabel;
    lbce3: TLabel;
    CompressStream: TBackupFile;
    Lb_countreg3: TLabel;
    lbcb1_ax: TLabel;
    XPManifest1: TXPManifest;
    re_editor: TRxRichEdit;
    re_usr: TRichEdit;
    re_resp: TRichEdit;
    Panel_resp: TPanel;
    GroupBox14: TGroupBox;
    rb_proc1: TRadioButton;
    rb_proc2: TRadioButton;
    rb_proc3: TRadioButton;
    SpeedButton1: TSpeedButton;
    autofiltro_button: TSpeedButton;
    Label10: TLabel;
    chkproc1: TCheckBox;
    chkproc2: TCheckBox;
    chkproc3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
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
    procedure Edit_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure bt_searchClick(Sender: TObject);
    procedure db_solicitacoesCellClick(Column: TColumn);
    procedure db_solicitacoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_solicitacoesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure lbcp4Change(Sender: TObject);
    procedure lbcp3Change(Sender: TObject);
    procedure lbcp6Change(Sender: TObject);
    procedure lbcp5Change(Sender: TObject);
    procedure lbcp8Change(Sender: TObject);
    procedure lbcp7Change(Sender: TObject);
    procedure lbcp10Change(Sender: TObject);
    procedure lbcp9Change(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure bt_detail1Click(Sender: TObject);
    procedure bt_detail2Click(Sender: TObject);
    procedure bt_detail3Click(Sender: TObject);
    procedure bt_detail4Click(Sender: TObject);
    procedure bt_detail5Click(Sender: TObject);
    procedure Edresp1Change(Sender: TObject);
    procedure Edresp2Change(Sender: TObject);
    procedure CheckBox_ativasClick(Sender: TObject);
    procedure CheckBox_concluidasClick(Sender: TObject);
    procedure CheckBox_canceladasClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure bt_newClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure lbcp_ax2Change(Sender: TObject);
    procedure lbcp_ax1Change(Sender: TObject);
    procedure ComboBoxEx2Change(Sender: TObject);
    procedure ComboBox_listapublicaChange(Sender: TObject);
    procedure db_solicitacoesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure lbcp_ax4Change(Sender: TObject);
    procedure lbcp_ax3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure db_solicitacoesTitleClick(Column: TColumn);
    procedure autofiltro_buttonClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure db_processosCellClick(Column: TColumn);
    procedure db_processosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_processosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbcb11Change(Sender: TObject);
    procedure lbcb12Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure bt_detail7Click(Sender: TObject);
    procedure bt_detail12Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Italico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Marcador1Click(Sender: TObject);
    procedure esquerdo1Click(Sender: TObject);
    procedure centro1Click(Sender: TObject);
    procedure direita1Click(Sender: TObject);
    procedure justificado1Click(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure re_editorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure bt_prior4Click(Sender: TObject);
    procedure bt_next5Click(Sender: TObject);
    procedure bt_new4Click(Sender: TObject);
    procedure db_arquivosCellClick(Column: TColumn);
    procedure db_arquivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_arquivosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_del4Click(Sender: TObject);
    procedure bt_upload4Click(Sender: TObject);
    procedure bt_download4Click(Sender: TObject);
    procedure bt_save4Click(Sender: TObject);
    procedure Edit_search2Change(Sender: TObject);
    procedure ComboBox_search2Change(Sender: TObject);
    procedure bt_search2Click(Sender: TObject);
    procedure db_processosTitleClick(Column: TColumn);
    procedure PageControl_geralChange(Sender: TObject);
    procedure Edresp2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chkproc1Click(Sender: TObject);
    procedure chkproc2Click(Sender: TObject);
    procedure chkproc3Click(Sender: TObject);
  private
    st_stream, xmodtmp : TMemoryStream;
    cv : string;
    cp_search,cp_search2 : array[0..50] of string;
    tp_search,tp_search2 : array[0..50] of integer;
    tm_search,tm_search2 : array[0..50] of integer;
    axproc_codresp,axproc_codusr,axsolicita_codusr,axsolicita_codresp,
    axrespcodx: Integer;
    axlstcodusr: TStringList;
    axmontaprocessos,axrespinitx,xmodupdate: Boolean;
    procedure atualiza_grade;
    procedure atualiza_grade2;
    procedure atualiza_grade3;
    procedure addreg;
    procedure addreg2;
    procedure addreg3;
    procedure filtrar_reg;
    procedure filtrar_reg2;
    procedure montasolicitacoes;
    procedure montaprocessos;
    procedure montaarquivos;
    procedure montausuarios(cod_web: String; cod_usr: Integer);
    procedure filtrasnameusr;
    procedure montaresponsaveis(cod_setor: String; cod_resp: Integer);
    procedure filtrasnameresp;
    procedure detail_entidades(axvar_cod,axvar_desc,axvar_cod2,axvar_desc2: String; xdata: TClientDataSet);
    procedure detail_entidades2(axvar_cod:Integer);
    procedure detail_responsavel(axvar_cod,axvar_desc:string; xdata: TClientDataSet);
    procedure detail_responsavel2(axvar_cod:Integer);
    procedure detail_setor(axvar_cod,axvar_desc:string);
    procedure detail_atividade(axvar_cod,axvar_desc:string);
    procedure detail_aplicativo(axvar_cod,axvar_desc:string);
    function importa_arquivo: Boolean;
    function savearquivoas: boolean;
    function atualiza_modbin(axt_codigo,size_mod: Integer; axt_mdl,axt_ver: string; xat_xmodtmp: TMemoryStream):boolean;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    FUpdating: Boolean;
    ordem_dbsolicitacoes,ordem_dbprocessos: string;
    processoand : boolean;
    function CurrText: TRxTextAttributes;
    procedure GetFontNames;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_st: Tadm_st;

implementation
uses udm, hwsfunctions, RichEdit, DateUtils, ShellAPI, Math;

const
  RulerAdj = 4/3;
  GutterWid = 6;


{$R *.dfm}

procedure Tadm_st.FormClose(Sender: TObject; var Action: TCloseAction);
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
     dm.ds_sql5.Filter:='';
     dm.ds_sql5.Filtered:=false;
     dm.ds_sql5.Close;
     dm.ds_sql6.Filter:='';
     dm.ds_sql6.Filtered:=false;
     dm.ds_sql6.Close;
     dm.ds_sql7.Filter:='';
     dm.ds_sql7.Filtered:=false;
     dm.ds_sql7.Close;
     dm.ds_sql8.Filter:='';
     dm.ds_sql8.Filtered:=false;
     dm.ds_sql8.Close;
     dm.ds_sql9.Filter:='';
     dm.ds_sql9.Filtered:=false;
     dm.ds_sql9.Close;
     dm.executa5.Close;
     dm.executa6.Close;
     dm.executa7.Close;
     Action:=cafree;
end;

procedure Tadm_st.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_st.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_st.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_st.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_st.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_st.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_st.Left:= adm_st.Left-(mv_mouse.x-x);
      adm_st.Top:= adm_st.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_st.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_st.Left := adm_st.Left - (mv_mouse.x -x);
      adm_st.Top := adm_st.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_st.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_st.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_st.bt_maximizaClick(Sender: TObject);
begin
    if adm_st.WindowState=wsMaximized then adm_st.WindowState:=wsNormal
    else adm_st.WindowState:=wsMaximized;
end;

procedure Tadm_st.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
    Panel_resp.Width:=PageControl_geral.Width-199;
    SetEditRect;
    SelectionChange(Sender);
end;

procedure Tadm_st.Edit_searchChange(Sender: TObject);
begin
     if autofiltro_checkbox.Checked then filtrar_reg;
end;

procedure Tadm_st.Edit_searchKeyPress(Sender: TObject; var Key: Char);
begin
      if tp_search[ComboBox_search.ItemIndex]=0 then begin
         Case key of
           '0'..'9' :;
           #13, #8, #27:
         else
           Key := #0;
         end;
      end;
end;

procedure Tadm_st.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_st.addreg;
var xidcod: integer;
begin
     lbcp1.Text:='novo';
     lbcp2.Text:= '';
     lbcp3.Text:= '';
     lbcp4.Text:= '';
     lbcp_ax3.Text:='';
     lbcp_ax4.Text:='';
     if dm.ds_sql9.Locate('codigo',Edresp1.Text,[]) then begin
        lbcp_ax3.Text:=dm.ds_sql9.fieldbyname('cod_set').AsString;
        montaresponsaveis(lbcp_ax3.Text,0);
        lbcp5.Text:=Edresp1.Text;
     end;
     lbcp_ax3.Enabled:=false;
     lbcp_ax4.Enabled:=false;
     lbcp5.Enabled:=false;
     lbcp6.Enabled:=false;
     lbcp7.Text:= '';
     lbcp8.Text:= '';
     lbcp9.Text:= '';
     lbcp11.Date:=Now;
     lbcp12.ItemIndex:=2;
     rbcp1.Checked:=true;
     lbcp_ax1.Text:= '';
     lbcp_ax2.Text:= '';
     lbcp_dtcad.Caption:=DateTimeToStr(Now);
     cbcp1.Checked:=false;
     cbcp2.Checked:=false;
     lb_restrict.Caption:='';
     lb_restrict.Transparent:=true;
     lbcp_ax1.Text:='';
     lbcp_ax2.Text:='';
     axsolicita_codusr:=0;
     axsolicita_codresp:=0;
     TabSheet_processos.TabVisible:=false;
end;

procedure Tadm_st.addreg2;
begin
     lbcb1.Text:='novo';
     lbcb1_ax.Caption:='novo';
     lbcb2.DateTime:= Now;
     lbcb3.DateTime:= Now;
     lbcb4.DateTime:= Now;
     lbcb5.DateTime:= Now;
     lbcb6.DateTime:= Now;
     lbcb11.Text:= lbcp7.Text;
     lbcb12.Text:= lbcp8.Text;
     lbcb_dtcad.Caption:=DateTimeToStr(Now);
     cbcb1.Checked:=false;
     cbcb2.Checked:=false;
     lb_restrict2.Caption:='';
     lb_restrict2.Transparent:=true;
     re_editor_title.Text:='';
     re_editor.Clear;
     re_editor.Font.Size:=8;
     rb_proc1.Checked:=true;
     TabSheet_anexos.TabVisible:=false;
end;

procedure Tadm_st.addreg3;
begin
     lbce1.Text:='novo';
     lbce2.Text:= '';
     lbce3.Caption:= '<clique em Importar arquivo>';
     lbce4.Caption:= '0';
     lbce_dtcad.Caption:=DateTimeToStr(Now);
end;

procedure Tadm_st.filtrar_reg;
var axsearch : string;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
        else dm.ds_sql.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
     if (ComboBoxEx2.ItemIndex>0) then begin
        if dm.ds_sql.filter<>'' then axsearch:=dm.ds_sql.filter+' AND '
        else axsearch:='';
        axsearch:=axsearch+'prioridade='+#39+InttoStr(ComboBoxEx2.ItemIndex)+#39;
        dm.ds_sql.filter:=axsearch;
     end;
     if (ComboBox_listapublica.ItemIndex>0) then begin
        if dm.ds_sql.filter<>'' then axsearch:=dm.ds_sql.filter+' AND '
        else axsearch:='';
        Case ComboBox_listapublica.ItemIndex of
            1: axsearch:=axsearch+'cod_lp='+#39+'1'+#39;
            2: axsearch:=axsearch+'cod_lp='+#39+'0'+#39;
        End;
        dm.ds_sql.filter:=axsearch;
     end;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
end;

procedure Tadm_st.filtrar_reg2;
var axsearch : string;
begin
     if ComboBox_search2.ItemIndex<0 then exit;
     if Edit_search2.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if tp_search2[ComboBox_search2.ItemIndex]=1 then
           dm.ds_sql3.filter:= cp_search2[ComboBox_search2.ItemIndex]+' LIKE '+QuotedStr(Edit_search2.Text+'%')
        else dm.ds_sql3.filter:= cp_search2[ComboBox_search2.ItemIndex]+'='+QuotedStr(Edit_search2.Text);
     end;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tadm_st.db_solicitacoesCellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_st.db_solicitacoesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_st.db_solicitacoesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_st.FormCreate(Sender: TObject);
var axshowing: Boolean;
    xlstusr: TStringList;
    xlstmaster: Boolean;
    xlstid: Integer;
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
     processoand:=false;
     xmodupdate:=false;
     xmodtmp:= TMemoryStream.Create;
     SendMessage(re_editor.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     GetFontNames;
     SelectionChange(Self);
     re_editor.Justify;

     axmontaprocessos:=false;
     biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap; 
     Image3.Picture.Bitmap:= GetImg(1);
     Image4.Picture.Bitmap:= GetImg(1);
     db_solicitacoes.DataSource:=dm.source_sql;
     //order by
     ordem_dbsolicitacoes:='prioridade';
     ordem_dbprocessos:='codigo';
     //filtro
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Descrição');
     cp_search[1]:= 'descricao';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.Items.Add('Cód. Atividade');
     cp_search[2]:= 'cod_tip';
     tp_search[2]:= 0;
     tm_search[2]:= 11;
     ComboBox_search.Items.Add('Cód. Aplicação');
     cp_search[3]:= 'cod_apli';
     tp_search[3]:= 0;
     tm_search[3]:= 11;
     ComboBox_search.Items.Add('Cód. Usuário');
     cp_search[4]:= 'cod_usr';
     tp_search[4]:= 0;
     tm_search[4]:= 11;
     ComboBox_search.Items.Add('Cód. Responsável');
     cp_search[5]:= 'cod_resp';
     tp_search[5]:= 0;
     tm_search[5]:= 11;
     ComboBox_search.ItemIndex:=1;
     //filtro2
     ComboBox_search2.Clear;
     ComboBox_search2.Items.Add('Código');
     cp_search2[0]:= 'codigo';
     tp_search2[0]:= 0;
     tm_search2[0]:= 11;
     ComboBox_search2.Items.Add('Descrição');
     cp_search2[1]:= 'descricao';
     tp_search2[1]:= 1;
     tm_search2[1]:= 255;
     ComboBox_search2.Items.Add('Cód. Atividade');
     cp_search2[2]:= 'cod_atv';
     tp_search2[2]:= 0;
     tm_search2[2]:= 11;
     ComboBox_search2.Items.Add('Cód. Usuário');
     cp_search2[3]:= 'cod_usr';
     tp_search2[3]:= 0;
     tm_search2[3]:= 11;
     ComboBox_search2.Items.Add('Cód. Responsável');
     cp_search2[4]:= 'cod_resp';
     tp_search2[4]:= 0;
     tm_search2[4]:= 11;
     ComboBox_search2.ItemIndex:=1;
     loadx.Progressloading.position:=20;
     cv := 'B2d7485d9N';
     lbcp11.DateTime:=Now;
     ComboBoxEx2.ItemIndex:=0;
     //lista de solicitações
     db_solicitacoes.DataSource:=dm.source_sql;
     db_solicitacoes.Columns.Clear;
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[0].FieldName:='codigo';
     db_solicitacoes.Columns.Items[0].Title.Caption:='Controle';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[1].FieldName:='status';
     db_solicitacoes.Columns.Items[1].Title.Caption:='Status';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[2].FieldName:='prioridade';
     db_solicitacoes.Columns.Items[2].Title.Caption:='Prioridade';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[3].FieldName:='cod_tip';
     db_solicitacoes.Columns.Items[3].Title.Caption:='Atividade';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[4].FieldName:='cod_apli';
     db_solicitacoes.Columns.Items[4].Title.Caption:='Aplicação';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[5].FieldName:='dt_ini';
     db_solicitacoes.Columns.Items[5].Title.Caption:='Data de Inicio';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[6].FieldName:='dt_fim';
     db_solicitacoes.Columns.Items[6].Title.Caption:='Data de entrega';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[7].FieldName:='descricao';
     db_solicitacoes.Columns.Items[7].Title.Caption:='Descrição';
     db_solicitacoes.Columns.Items[2].Title.Color:=$00ADADAD;
     //lista de processos
     db_processos.DataSource:=dm.source_sql3;
     db_processos.Columns.Clear;
     db_processos.Columns.Add;
     db_processos.Columns.Items[0].FieldName:='codigo';
     db_processos.Columns.Items[0].Title.Caption:='Controle';
     db_processos.Columns.Add;
     db_processos.Columns.Items[1].FieldName:='cod_atv';
     db_processos.Columns.Items[1].Title.Caption:='Atividade';
     db_processos.Columns.Add;
     db_processos.Columns.Items[2].FieldName:='cod_usr';
     db_processos.Columns.Items[2].Title.Caption:='Usuário';
     db_processos.Columns.Add;
     db_processos.Columns.Items[3].FieldName:='cod_resp';
     db_processos.Columns.Items[3].Title.Caption:='Responsável';
     db_processos.Columns.Add;
     db_processos.Columns.Items[4].FieldName:='hst_ini';
     db_processos.Columns.Items[4].Title.Caption:='Inicio';
     db_processos.Columns.Add;
     db_processos.Columns.Items[5].FieldName:='hst_fim';
     db_processos.Columns.Items[5].Title.Caption:='Fim';
     db_processos.Columns.Add;
     db_processos.Columns.Items[6].FieldName:='hst_interval';
     db_processos.Columns.Items[6].Title.Caption:='Intervalos';
     db_processos.Columns.Add;
     db_processos.Columns.Items[7].FieldName:='descricao';
     db_processos.Columns.Items[7].Title.Caption:='Descrição';
     db_processos.Columns.Add;
     db_processos.Columns.Items[8].FieldName:='dtcad';
     db_processos.Columns.Items[8].Title.Caption:='Data';
     db_processos.Columns.Items[0].Title.Color:=$00ADADAD;
     //lista de arquivos anexo dos processos
     db_arquivos.DataSource:=dm.source_sql4;
     db_arquivos.Columns.Clear;
     db_arquivos.Columns.Add;
     db_arquivos.Columns.Items[0].FieldName:='codigo';
     db_arquivos.Columns.Items[0].Title.Caption:='Codigo';
     db_arquivos.Columns.Add;
     db_arquivos.Columns.Items[1].FieldName:='cpd';
     db_arquivos.Columns.Items[1].Title.Caption:='Descrição';
     //atividades
     With dm.executa5 do begin
          CommandText:='select * from '+EnDecryptString(Helpdesk.vrf03,37249)+' order by descricao';
          Open;
          lbcp8.Clear;
          lbcb12.Clear;
          First;
          While not Eof do begin
              lbcp8.Items.Add(fieldbyname('descricao').AsString);
              lbcb12.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
     end;
     loadx.Progressloading.position:=30;
     //aplicativos
     With dm.executa6 do begin
          CommandText:='select * from '+EnDecryptString(Helpdesk.vrf04,37249)+' order by descricao';
          Open;
          lbcp10.Clear;
          First;
          While not Eof do begin
              lbcp10.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
     end;
     loadx.Progressloading.position:=40;
     //lista de websites
     With dm.ds_sql6 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf29,37249)+' ORDER BY website';
          Open;
          lbcp_ax2.Clear;
          First;
          While not Eof do begin
              lbcp_ax2.Items.Add(fieldbyname('website').AsString);
              Next;
          end;
     end;
     loadx.Progressloading.position:=50;
     //lista de usuarios
     With dm.ds_sql7 do begin
          CommandText:= 'select codigo,decode(usuario,'+chr(39)+cv+chr(39)+'),cod_ent,cod_web from '+EnDecryptString(Serverconect.vrf19[0],37249);
          Open;
          filter:='';
          filtered:=true;
          lbcp4.Clear;
     end;
     loadx.Progressloading.position:=60;
     //lista de usuarios2
     With dm.ds_sql8 do begin
          CommandText:= 'select codigo,decode(usuario,'+chr(39)+cv+chr(39)+'),cod_ent,cod_web from '+EnDecryptString(Serverconect.vrf19[0],37249);
          Open;
          filter:='';
          filtered:=true;
     end;
     loadx.Progressloading.position:=70;
     //lista de responsáveis
     With dm.ds_sql5 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+' ORDER BY descricao';
          Open;
          filter:='';
          filtered:=true;
          axrespinitx:=true;
          axrespcodx:=-1;
          xlstusr:= TStringList.Create;
          xlstusr.Clear;
          axlstcodusr:= TStringList.Create;
          axlstcodusr.Clear;
          xlstmaster:=false;
          if Locate('cod_usr',Serverconect.vrf00,[]) then begin
             xlstmaster:=StrToBool(fieldbyname('xconf').AsString);
             if not xlstmaster then Filter:='cod_usr='+#39+IntToStr(Serverconect.vrf00)+#39;
          end;
          First;
          While not Eof do begin
              if (axrespcodx=-1) and (fieldbyname('cod_usr').AsInteger=Serverconect.vrf00) then axrespcodx:=axlstcodusr.Count;
              axlstcodusr.Add(fieldbyname('codigo').AsString);
              xlstusr.Add(fieldbyname('descricao').AsString);
              Next;
          end;
          Edresp2.Clear;
          if xlstusr.Count>1 then Edresp2.Items.Add('Todos');
          Edresp2.Items.AddStrings(xlstusr);
          Filter:='';
          xlstusr.Free;
     end;
     loadx.Progressloading.position:=80;
     //lista de responsáveis2
     With dm.ds_sql9 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+' ORDER BY descricao';
          Open;
          filter:='';
          filtered:=true;
     end;
     loadx.Progressloading.position:=90;
     //setores
      With dm.executa7 do begin
          CommandText:='select * from '+EnDecryptString(Helpdesk.vrf02,37249)+' order by descricao';
          Open;
          lbcp_ax4.Clear;
          First;
          While not Eof do begin
              lbcp_ax4.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
      end;
      loadx.Progressloading.position:=100;
     //executa sql
     if not axshowing then loadx.Close;
end;

procedure Tadm_st.montausuarios(cod_web: String; cod_usr: Integer);
var axindcount,axindusr: integer;
    xcount_progress: Real;
    xind_progress: Integer;
    axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando lista de usuários';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando lista de usuários';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     axindusr:=0;
     axindcount:=0;
     if cod_web='' then cod_web:='0';
     With dm.ds_sql7 do begin
          Filter:='cod_web='+#39+cod_web+#39;
          lbcp4.Clear;
          First;
          try
              xcount_progress:=100/RecordCount;
          except xcount_progress:=50; end;
          xind_progress:=1;
          While not Eof do begin
              loadx.Progressloading.position:=StrtoInt(Formatfloat('0',xcount_progress*xind_progress));
              Inc(xind_progress);
              if FieldByName('codigo').AsInteger=cod_usr then axindusr:=axindcount;
              Inc(axindcount);
              lbcp4.Items.Add(fieldbyname('decode(usuario,'+chr(39)+cv+chr(39)+')').AsString);
              Next;
          end;
          lbcp4.ItemIndex:=axindusr;
          filtrasnameusr;
     end;
     if not axshowing then loadx.Close;
end;

procedure Tadm_st.montasolicitacoes;
var axfiltro1,axfiltro2:string;
    axftboll: bool;
    axshowing: Boolean;
    axlstid: Integer;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando solicitação';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando solicitação';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     axfiltro1:='';
     axftboll:=false;
     if Edresp2.ItemIndex>-1 then begin
        if Edresp2.Text='Todos' then begin
           axfiltro1:='';
           for axlstid:=0 to axlstcodusr.Count-1 do begin
               if axfiltro1<>'' then axfiltro1:=axfiltro1+' OR ';
               axfiltro1:=axfiltro1+'cod_resp='+#39+axlstcodusr.Strings[axlstid]+#39;
           end;
        end else begin
          if axlstcodusr.Count>1 then axlstid:=Edresp2.ItemIndex-1
          else axlstid:=Edresp2.ItemIndex;
          axfiltro1:='cod_resp='+#39+axlstcodusr.Strings[axlstid]+#39;
        end;
     end else axfiltro1:='cod_resp='+#39+'0'+#39;
     if axfiltro1<>'' then axfiltro1:=axfiltro1+' AND ';
     axfiltro1:=axfiltro1+'(';
     loadx.Progressloading.position:=50;
     if CheckBox_ativas.Checked then axfiltro1:=axfiltro1+'status='+#39+'A'+#39
     else axfiltro1:=axfiltro1+'status<>'+#39+'A'+#39;
     loadx.Progressloading.position:=25;
     if not CheckBox_ativas.Checked and
        not CheckBox_concluidas.Checked and
        not CheckBox_canceladas.Checked then axfiltro1:=axfiltro1+' AND '
     else axfiltro1:=axfiltro1+' OR ';
     if CheckBox_concluidas.Checked then axfiltro1:=axfiltro1+'status='+#39+'C'+#39
     else axfiltro1:=axfiltro1+'status<>'+#39+'C'+#39;
     if not CheckBox_ativas.Checked and
        not CheckBox_concluidas.Checked and
        not CheckBox_canceladas.Checked then axfiltro1:=axfiltro1+' AND '
     else axfiltro1:=axfiltro1+' OR ';
     if CheckBox_canceladas.Checked then axfiltro1:=axfiltro1+'status='+#39+'X'+#39
     else axfiltro1:=axfiltro1+'status<>'+#39+'X'+#39;
     axfiltro1:=axfiltro1+')';
     loadx.Progressloading.position:=75;
     if axfiltro1<>'' then axfiltro1:=' WHERE '+axfiltro1;
     loadx.Progressloading.position:=90;
     With dm.ds_sql do begin
          if CommandText<>axfiltro1 then begin
            if Active then begin
               axfiltro2:=Filter;
               Close;
            end else begin
               axfiltro2:='';
            end;
            CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf05,37249)+
            axfiltro1+' order by '+ordem_dbsolicitacoes;
            Open;
            Filter:=axfiltro2;
            Filtered:=true;
          end;
          Lb_countreg.Caption:=Inttostr(RecordCount);
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Close;
end;

procedure Tadm_st.atualiza_grade;
var axshowing: Boolean;
begin
      if axrespinitx then exit;
      lbcp_ax3.Enabled:=true;
      lbcp_ax4.Enabled:=true;
      lbcp5.Enabled:=true;
      lbcp6.Enabled:=true;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando solicitação';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando solicitação';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql.RecordCount <= 0 then begin
         addreg;
      end else begin
         TabSheet_processos.TabVisible:=true;
         with dm.ds_sql do begin
            loadx.Progressloading.position:=50;
            if lbcp1.Text=fieldbyname('codigo').AsString then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            if dm.ds_sql8.Locate('codigo',fieldbyname('cod_usr').AsString,[]) then begin
               lbcp_ax1.Text:=dm.ds_sql8.fieldbyname('cod_web').AsString;
               montausuarios(lbcp_ax1.Text,fieldbyname('cod_usr').AsInteger)
            end else begin
               lbcp_ax1.Text:=''; 
               lbcp3.Text:='';
            end;
            if dm.ds_sql9.Locate('codigo',fieldbyname('cod_resp').AsString,[]) then begin
               lbcp_ax3.Text:=dm.ds_sql9.fieldbyname('cod_set').AsString;
               montaresponsaveis(lbcp_ax3.Text,fieldbyname('cod_resp').AsInteger);
            end else begin
               lbcp_ax3.Text:='';
               lbcp5.Text:='';
            end;
            axsolicita_codusr:=fieldbyname('cod_usr').AsInteger;
            axsolicita_codresp:=fieldbyname('cod_usr').AsInteger;
            lbcp7.Text:= fieldbyname('cod_tip').AsString;
            lbcp9.Text:= fieldbyname('cod_apli').AsString;
            lbcp_dtcad.Caption:=DateTimeToStr(fieldbyname('dt_ini').AsDateTime);
            lbcp11.Date:= fieldbyname('dt_fim').AsDateTime;
            lbcp12.ItemIndex:= fieldbyname('prioridade').AsInteger-1;
            if fieldbyname('status').AsString='A' then rbcp1.Checked:=true
            else if fieldbyname('status').AsString='C' then rbcp2.Checked:=true
            else if fieldbyname('status').AsString='X' then rbcp3.Checked:=true;
            Case fieldbyname('cod_lp').AsInteger of
                0: cbcp1.Checked:=false;
                1: cbcp1.Checked:=true;
            End;
            cbcp2.Checked:=StrToBool(fieldbyname('xconf').AsString);
            if cbcp2.Checked then begin
               lb_restrict.Caption:='Restrito aos administradores';
               lb_restrict.Transparent:=false;
            end else begin
               lb_restrict.Caption:='';
               lb_restrict.Transparent:=true;
            end;
            loadx.Progressloading.position:=100;
            if lbcp3.Text <> '' then
            if dm.ds_sql7.Locate('codigo',lbcp3.Text,[]) then begin
               montausuarios(dm.ds_sql7.fieldbyname('cod_web').AsString,dm.ds_sql7.fieldbyname('codigo').AsInteger);
            end;
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql.RecordCount);
      if not axshowing then loadx.Close;
end;

procedure Tadm_st.atualiza_grade2;
var xchr: Integer;
    axshowing: Boolean;
begin
      if not axmontaprocessos then exit;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando processo';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando processo';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql3.RecordCount <= 0 then begin
         addreg2;
      end else begin
         TabSheet_anexos.TabVisible:=true;
         with dm.ds_sql3 do begin
            loadx.Progressloading.position:=50;
            if lbcb1.Text=fieldbyname('codigo').AsString then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            lbcb1.Text:= fieldbyname('codigo').AsString;
            lbcb1_ax.Caption:= lbcb1.Text;
            lbcb2.DateTime:= fieldbyname('hst_ini').AsDateTime;
            lbcb3.DateTime:= fieldbyname('hst_ini').AsDateTime;
            lbcb4.DateTime:= fieldbyname('hst_fim').AsDateTime;
            lbcb5.DateTime:= fieldbyname('hst_fim').AsDateTime;
            lbcb6.Time:= fieldbyname('hst_interval').AsDateTime;
            axproc_codusr:=fieldbyname('cod_usr').AsInteger;
            detail_entidades2(axproc_codusr);
            axproc_codresp:=fieldbyname('cod_usr').AsInteger;
            detail_responsavel2(axproc_codresp);
            lbcb11.Text:= fieldbyname('cod_atv').AsString;
            lbcb_dtcad.Caption:=DateTimeToStr(fieldbyname('dtcad').AsDateTime);
            cbcb1.Checked:=StrToBool(fieldbyname('xconf').AsString);
            cbcb2.Checked:=StrToBool(fieldbyname('xconf2').AsString);
            if cbcb1.Checked then begin
               lb_restrict2.Caption:='Restrito aos administradores';
               lb_restrict2.Transparent:=false;
            end else begin
               lb_restrict2.Caption:='';
               lb_restrict2.Transparent:=true;
            end;
            if cbcb2.Checked then begin
               if lb_restrict2.Caption<>'' then lb_restrict2.Caption:=lb_restrict2.Caption+'/usuário'
               else lb_restrict2.Caption:='Restrito ao usuário';
               lb_restrict2.Transparent:=false;
            end;
            if fieldbyname('status').AsString='A' then rb_proc1.Checked:=true
            else if fieldbyname('status').AsString='C' then rb_proc2.Checked:=true
            else if fieldbyname('status').AsString='X' then rb_proc3.Checked:=true;
            loadx.Progressloading.position:=100;
            re_editor_title.Text:=fieldbyname('descricao').AsString;
            st_stream := TMemoryStream.Create;
            xchr:=HexToInt(lbcb1.Text+lbcb_dtcad.Caption);
            TBlobField(FieldByName('obs')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            st_stream:=EnDecryptStream(st_stream,xchr);
            st_stream.Seek(0,soFromBeginning);              
            re_editor.Lines.LoadFromStream(st_stream);
            st_stream.Free;
         end;
      end;
      Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      if not axshowing then loadx.Close;
      montaarquivos;
end;

procedure Tadm_st.detail_entidades2(axvar_cod:Integer);
var xdetalhesnow : TStringList;
    axvar_codent,axvar_cod2,axvar_desc,axvar_desc2:string;
begin
     if axvar_cod=0 then exit;
     if dm.ds_sql8.Locate('codigo',axvar_cod,[]) then begin
        axvar_desc:=dm.ds_sql8.fieldbyname('decode(usuario,'+chr(39)+cv+chr(39)+')').AsString;
        axvar_cod2:=dm.ds_sql8.fieldbyname('cod_web').AsString;
        axvar_codent:=dm.ds_sql8.fieldbyname('cod_ent').AsString;
        if dm.ds_sql6.Locate('codigo',axvar_cod2,[]) then
           axvar_desc2:=dm.ds_sql6.fieldbyname('website').AsString
        else axvar_desc2:='';
     end else exit;
     re_usr.Clear;
     With dm.executa4 do begin
          if Active then Close;
          CommandText:= 'SELECT DISTINCT A.codigo,A.nome,A.cod_ent,B.razao_social,B.telefone1,B.telefone2,B.fax,B.celular FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                     EnDecryptString(Serverconect.vrf26,37249)+' B '+
                     'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+axvar_codent+#39;
          Open;
          re_usr.Lines.Add(' Código.....: '+InttoStr(axvar_cod));
          re_usr.Lines.Add(' Usuário....: '+axvar_desc);
          re_usr.Lines.Add(' Colaborador: '+FieldbyName('codigo').AsString+' - '+FieldbyName('nome').AsString);
          re_usr.Lines.Add(' Empresa....: '+FieldbyName('cod_ent').AsString+' - '+FieldbyName('razao_social').AsString);
          re_usr.Lines.Add(' Website....: '+axvar_cod2+' - '+axvar_desc2);
          if Active then Close;
          Close;
     end;
end;

procedure Tadm_st.detail_responsavel2(axvar_cod:Integer);
var xdetalhesnow : TStringList;
    axvar_desc,xcod_ent,xusr : String;
begin
     if axvar_cod=0 then exit;
     if dm.ds_sql9.Locate('codigo',axvar_cod,[]) then begin
        axvar_desc:=dm.ds_sql9.fieldbyname('descricao').AsString;
     end else exit;
     re_resp.Clear;
     With dm.executa4 do begin
          if dm.executa_int.Active then Close;
          dm.executa_int.CommandText:= 'SELECT codigo,cod_ent,decode(usuario,'+#39+cv+#39+') FROM '+EnDecryptString(Serverconect.vrf19[1],37249)+
                     ' WHERE codigo='+#39+InttoStr(axvar_cod)+#39;
          dm.executa_int.Open;
          xcod_ent:=dm.executa_int.Fields[1].AsString;
          xusr:=dm.executa_int.Fields[2].AsString;
          dm.executa_int.Close;
          if Active then Close;
          CommandText:= 'SELECT DISTINCT A.codigo,A.nome,A.cod_ent,B.razao_social FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                     EnDecryptString(Serverconect.vrf26,37249)+' B '+
                     'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+xcod_ent+#39;
          Open;
          re_resp.Lines.Add(' Código.....: '+InttoStr(axvar_cod));
          re_resp.Lines.Add(' Usuário....: '+axvar_desc);
          re_resp.Lines.Add(' Colaborador: '+xcod_ent+' - '+FieldbyName('nome').AsString);
          re_resp.Lines.Add(' Empresa....: '+FieldbyName('cod_ent').AsString+' - '+FieldbyName('razao_social').AsString);
          Close;
     end;
end;

procedure Tadm_st.atualiza_grade3;
var axshowing: Boolean;
begin
      if not axmontaprocessos then exit;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando anexos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando anexos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      xmodupdate:=false;
      xmodtmp.Clear;
      if dm.ds_sql4.RecordCount <= 0 then begin
         addreg3;
      end else begin
         with dm.ds_sql4 do begin
            loadx.Progressloading.position:=50;
            if lbce1.Text=fieldbyname('codigo').AsString then begin
               if not axshowing then loadx.Close;
               exit;
            end;
            lbce1.Text:= fieldbyname('codigo').AsString;
            lbce2.Text:= fieldbyname('cpd').AsString;
            lbce3.Caption:= EnDecryptString(fieldbyname('cpn').AsString,2341);
            lbce4.Caption:= fieldbyname('xsize').AsString;
            lbce_dtcad.Caption:=DateTimeToStr(fieldbyname('dtcad').AsDateTime);
         end;
      end;
      Lb_countreg3.Caption:=Inttostr(dm.ds_sql4.RecordCount);
      if not axshowing then loadx.Close;
end;

procedure Tadm_st.montaprocessos;
var axfiltro:string;
    axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando processos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando processos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if dm.ds_sql.RecordCount > 0 then
        axfiltro:=' WHERE cod_spt='+#39+dm.ds_sql.fieldbyname('codigo').AsString+#39
     else axfiltro:=' WHERE cod_spt='+#39+'0'+#39;
     if axfiltro<>'' then axfiltro:=axfiltro+' AND ';
     axfiltro:=axfiltro+'(';
     loadx.Progressloading.position:=50;
     if chkproc1.Checked then axfiltro:=axfiltro+'status='+#39+'A'+#39
     else axfiltro:=axfiltro+'status<>'+#39+'A'+#39;
     loadx.Progressloading.position:=25;
     if not chkproc1.Checked and
        not chkproc2.Checked and
        not chkproc3.Checked then axfiltro:=axfiltro+' AND '
     else axfiltro:=axfiltro+' OR ';
     if chkproc2.Checked then axfiltro:=axfiltro+'status='+#39+'C'+#39
     else axfiltro:=axfiltro+'status<>'+#39+'C'+#39;
     if not chkproc1.Checked and
        not chkproc2.Checked and
        not chkproc3.Checked then axfiltro:=axfiltro+' AND '
     else axfiltro:=axfiltro+' OR ';
     if chkproc3.Checked then axfiltro:=axfiltro+'status='+#39+'X'+#39
     else axfiltro:=axfiltro+'status<>'+#39+'X'+#39;
     axfiltro:=axfiltro+')';
     loadx.Progressloading.position:=90;
     With dm.ds_sql3 do begin
          if Active then Close;
          CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf06,37249)+
          axfiltro+' order by '+ordem_dbprocessos;
          Open;
          Filtered:=false;
     end;
     dm.ds_sql3.Last;
     if not axshowing then loadx.Close;
     atualiza_grade2;
end;

procedure Tadm_st.montaarquivos;
var axfiltro:string;
    axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando anexos';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando anexos';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     if dm.ds_sql3.RecordCount > 0 then
        axfiltro:=' WHERE cod_ms='+#39+dm.ds_sql3.fieldbyname('codigo').AsString+#39
     else axfiltro:=' WHERE cod_ms='+#39+'0'+#39;
     loadx.Progressloading.position:=50;
     With dm.ds_sql4 do begin
          if Active then Close;
          CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf07,37249)+
          axfiltro+' order by cpn';
          loadx.Progressloading.position:=60;
          Open;
          loadx.Progressloading.position:=80;
          Filtered:=false;
     end;
     loadx.Progressloading.position:=100;
     dm.ds_sql4.First;
     if not axshowing then loadx.Close;
     atualiza_grade3;
end;


procedure Tadm_st.lbcp4Change(Sender: TObject);
begin
     filtrasnameusr;
end;

procedure Tadm_st.filtrasnameusr;
var xlocusr : boolean;
begin
     xlocusr:=false;
     if lbcp4.Text<>'' then begin
        With dm.ds_sql7 do begin
           First;
           While not Eof do begin
               if Fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString=lbcp4.Text then begin
                  lbcp3.Text:=Fieldbyname('codigo').AsString;
                  lbcp_ax1.Text:=dm.ds_sql7.fieldbyname('cod_web').AsString;
                  xlocusr:=true;
                  break;
               end;
               Next;
           end;
        end;
     end;
     if not xlocusr then lbcp3.Text:='';
end;

procedure Tadm_st.lbcp3Change(Sender: TObject);
begin
     if lbcp3.Text <> '' then
     if dm.ds_sql7.Locate('codigo',lbcp3.Text,[]) then begin
        lbcp4.Text:=dm.ds_sql7.fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString;
        lbcp_ax1.Text:=dm.ds_sql7.fieldbyname('cod_web').AsString;
     end else lbcp4.Text:='';
end;

procedure Tadm_st.lbcp6Change(Sender: TObject);
begin
     filtrasnameresp;
end;

procedure Tadm_st.lbcp5Change(Sender: TObject);
begin
     if lbcp5.Text <> '' then
     if dm.ds_sql5.Locate('codigo',lbcp5.Text,[]) then begin
        lbcp_ax3.Text:=dm.ds_sql5.fieldbyname('cod_set').AsString;
        lbcp6.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
     end else lbcp6.Text:='';
end;

procedure Tadm_st.lbcp8Change(Sender: TObject);
begin
     if dm.executa5.Locate('descricao',lbcp8.Text,[]) then begin
        lbcp7.Text:=dm.executa5.fieldbyname('codigo').AsString;
     end else lbcp7.Text:='';
end;

procedure Tadm_st.lbcp7Change(Sender: TObject);
begin
     if lbcp7.Text <> '' then
     if dm.executa5.Locate('codigo',lbcp7.Text,[]) then begin
        lbcp8.Text:=dm.executa5.fieldbyname('descricao').AsString;
     end else lbcp8.Text:='';
end;

procedure Tadm_st.lbcp10Change(Sender: TObject);
begin
     if dm.executa6.Locate('descricao',lbcp10.Text,[]) then begin
        lbcp9.Text:=dm.executa6.fieldbyname('codigo').AsString;
     end else lbcp9.Text:='';
end;

procedure Tadm_st.lbcp9Change(Sender: TObject);
begin
     if lbcp9.Text <> '' then
     if dm.executa6.Locate('codigo',lbcp9.Text,[]) then begin
        lbcp10.Text:=dm.executa6.fieldbyname('descricao').AsString;
     end else lbcp10.Text:='';
end;

procedure Tadm_st.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_st.bt_detail1Click(Sender: TObject);
begin
     detail_entidades(lbcp3.Text,lbcp4.Text,lbcp_ax1.Text,lbcp_ax2.Text,dm.ds_sql7);
end;

procedure Tadm_st.detail_entidades(axvar_cod,axvar_desc,axvar_cod2,axvar_desc2:string; xdata: TClientDataSet);
var xdetalhesnow : TStringList;
begin
     if axvar_cod='' then exit;
     if not xdata.Locate('codigo',axvar_cod,[]) then begin
        hwsf.BtMensagem('Entidade selecionada inválida.');
        exit;
     end;
     xdetalhesnow:=TStringList.Create;
     xdetalhesnow.Clear;
     With dm.executa4 do begin
          if Active then Close;
          CommandText:= 'SELECT DISTINCT A.codigo,A.nome,B.razao_social,B.telefone1,B.telefone2,B.fax,B.celular FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                     EnDecryptString(Serverconect.vrf26,37249)+' B '+
                     'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+xdata.fieldbyname('cod_ent').AsString+#39;
          Open;
          xdetalhesnow.Add('DETALHES DA ENTIDADE:');
          xdetalhesnow.Add(' ');
          xdetalhesnow.Add('Usuário....: '+axvar_cod+' - '+axvar_desc);
          xdetalhesnow.Add('Colaborador: '+xdata.fieldbyname('cod_ent').AsString+' - '+FieldbyName('nome').AsString);
          xdetalhesnow.Add('Empresa....: '+FieldbyName('razao_social').AsString);
          xdetalhesnow.Add('Telefone 1.: '+FieldbyName('telefone1').AsString);
          xdetalhesnow.Add('Telefone 2.: '+FieldbyName('telefone2').AsString);
          xdetalhesnow.Add('Fax........: '+FieldbyName('fax').AsString);
          xdetalhesnow.Add('Celular....: '+FieldbyName('celular').AsString);
          if Active then Close;
          xdetalhesnow.Add(' ');
          xdetalhesnow.Add('Website....: '+axvar_cod2+' - '+axvar_desc2);
          Close;
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
end;

procedure Tadm_st.detail_responsavel(axvar_cod,axvar_desc:string; xdata: TClientDataSet);
var xdetalhesnow : TStringList;
    xcod_ent,xusr : String;
begin
     if axvar_cod='' then exit;
     if not xdata.Locate('codigo',axvar_cod,[]) then begin
        hwsf.BtMensagem('Responsável selecionado inválido.');
        exit;
     end;
     xdetalhesnow:=TStringList.Create;
     xdetalhesnow.Clear;
     With dm.executa4 do begin
          if dm.executa_int.Active then Close;
          dm.executa_int.CommandText:= 'SELECT codigo,cod_ent,decode(usuario,'+#39+cv+#39+') FROM '+EnDecryptString(Serverconect.vrf19[1],37249)+
                     ' WHERE codigo='+#39+xdata.fieldbyname('cod_usr').AsString+#39;
          dm.executa_int.Open;
          xcod_ent:=dm.executa_int.Fields[1].AsString;
          xusr:=dm.executa_int.Fields[2].AsString;
          dm.executa_int.Close;
          if Active then Close;
          CommandText:= 'SELECT DISTINCT A.codigo,A.nome,B.razao_social FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                     EnDecryptString(Serverconect.vrf26,37249)+' B '+
                     'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+xcod_ent+#39;
          Open;
          xdetalhesnow.Add('DETALHES DO RESPONSÁVEL:');
          xdetalhesnow.Add(' ');
          xdetalhesnow.Add('Usuário Suporte: '+axvar_cod+' - '+axvar_desc);
          xdetalhesnow.Add('Administrador: '+xdata.fieldbyname('cod_usr').AsString+' - '+xusr);
          xdetalhesnow.Add('Colaborador: '+xcod_ent+' - '+FieldbyName('nome').AsString);
          xdetalhesnow.Add('Empresa: '+FieldbyName('razao_social').AsString);
          Close;
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
end;

procedure Tadm_st.detail_setor(axvar_cod,axvar_desc:string);
var xdetalhesnow,xdetalhesobs : TStringList;
begin
     if axvar_cod='' then exit;
     if not dm.executa7.Locate('codigo',axvar_cod,[]) then begin
        hwsf.BtMensagem('Setor selecionado inválido.');
        exit;
     end;
     xdetalhesnow:=TStringList.Create;
     xdetalhesobs:=TStringList.Create;
     xdetalhesnow.Clear;
     xdetalhesobs.Clear;
     xdetalhesnow.Add('DETALHES DO SETOR:');
     xdetalhesnow.Add(' ');
     xdetalhesnow.Add('Código: '+axvar_cod);
     xdetalhesnow.Add('Descrição: '+axvar_desc);
     xdetalhesnow.Add(' ');
     xdetalhesobs.Assign(dm.executa7.fieldbyname('obs'));
     if xdetalhesobs.Count > 0 then begin
        xdetalhesnow.Add('Observações: ');
        xdetalhesnow.AddStrings(xdetalhesobs);
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
     xdetalhesobs.Free;
end;

procedure Tadm_st.detail_atividade(axvar_cod,axvar_desc:string);
var xdetalhesnow,xdetalhesobs : TStringList;
begin
     if axvar_cod='' then exit;
     if not dm.executa5.Locate('codigo',axvar_cod,[]) then begin
        hwsf.BtMensagem('Atividade selecionada inválida.');
        exit;
     end;
     xdetalhesnow:=TStringList.Create;
     xdetalhesobs:=TStringList.Create;
     xdetalhesnow.Clear;
     xdetalhesobs.Clear;
     xdetalhesnow.Add('DETALHES DA ATIVIDADE:');
     xdetalhesnow.Add(' ');
     xdetalhesnow.Add('Código: '+axvar_cod);
     xdetalhesnow.Add('Descrição: '+axvar_desc);
     xdetalhesnow.Add(' ');
     xdetalhesobs.Assign(dm.executa5.fieldbyname('obs'));
     if xdetalhesobs.Count > 0 then begin
        xdetalhesnow.Add('Observações: ');
        xdetalhesnow.AddStrings(xdetalhesobs);
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
     xdetalhesobs.Free;
end;

procedure Tadm_st.detail_aplicativo(axvar_cod,axvar_desc:string);
var xdetalhesnow,xdetalhesobs : TStringList;
begin
     if axvar_cod='' then exit;
     if not dm.executa6.Locate('codigo',axvar_cod,[]) then begin
        hwsf.BtMensagem('Atividade selecionada inválida.');
        exit;
     end;
     xdetalhesnow:=TStringList.Create;
     xdetalhesobs:=TStringList.Create;
     xdetalhesnow.Clear;
     xdetalhesobs.Clear;
     xdetalhesnow.Add('DETALHES DA ATIVIDADE:');
     xdetalhesnow.Add(' ');
     xdetalhesnow.Add('Código: '+axvar_cod);
     xdetalhesnow.Add('Descrição: '+axvar_desc);
     xdetalhesnow.Add(' ');
     xdetalhesobs.Assign(dm.executa6.fieldbyname('obs'));
     if xdetalhesobs.Count > 0 then begin
        xdetalhesnow.Add('Observações: ');
        xdetalhesnow.AddStrings(xdetalhesobs);
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
     xdetalhesobs.Free;
end;

procedure Tadm_st.bt_detail2Click(Sender: TObject);
begin
     detail_responsavel(lbcp5.Text,lbcp6.Text,dm.ds_sql5);
end;

procedure Tadm_st.bt_detail3Click(Sender: TObject);
begin
      detail_atividade(lbcp7.Text,lbcp8.Text);
end;

procedure Tadm_st.bt_detail4Click(Sender: TObject);
begin
      detail_aplicativo(lbcp9.Text,lbcp10.Text);
end;

procedure Tadm_st.bt_detail5Click(Sender: TObject);
var xdetalhesnow : TStringList;
    xcod_ent,xusr : String;
begin
     if Edresp1.Text='' then exit;
     if not dm.ds_sql5.Locate('codigo',Edresp1.Text,[]) then begin
        hwsf.BtMensagem('Responsável selecionado inválido.');
        Edresp2.SetFocus;
        exit;
     end;
     xdetalhesnow:=TStringList.Create;
     xdetalhesnow.Clear;
     With dm.executa4 do begin
          if dm.executa_int.Active then Close;
          dm.executa_int.CommandText:= 'SELECT codigo,cod_ent,decode(usuario,'+#39+cv+#39+') FROM '+EnDecryptString(Serverconect.vrf19[1],37249)+
                     ' WHERE codigo='+#39+dm.ds_sql5.fieldbyname('cod_usr').AsString+#39;
          dm.executa_int.Open;
          xcod_ent:=dm.executa_int.Fields[1].AsString;
          xusr:=dm.executa_int.Fields[2].AsString;
          dm.executa_int.Close;
          if Active then Close;
          CommandText:= 'SELECT DISTINCT A.codigo,A.nome,B.razao_social FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                     EnDecryptString(Serverconect.vrf26,37249)+' B '+
                     'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+xcod_ent+#39;
          Open;
          xdetalhesnow.Add('DETALHES DO RESPONSÁVEL:');
          xdetalhesnow.Add(' ');
          xdetalhesnow.Add('Usuário Suporte: '+Edresp1.Text+' - '+Edresp2.Text);
          xdetalhesnow.Add('Administrador: '+dm.ds_sql5.fieldbyname('cod_usr').AsString+' - '+xusr);
          xdetalhesnow.Add('Colaborador: '+xcod_ent+' - '+FieldbyName('nome').AsString);
          xdetalhesnow.Add('Empresa: '+FieldbyName('razao_social').AsString);
          Close;
     end;
     hwsf.BtAviso(xdetalhesnow);
     xdetalhesnow.Free;
end;

procedure Tadm_st.Edresp1Change(Sender: TObject);
var axidx,axidxlocate: Integer;
begin
      if Edresp1.Text='' then begin
        if Edresp2.ItemIndex>-1 then Edresp2.ItemIndex:=-1
        else if not axrespinitx then exit;
     end else begin
        axidx:=-1;
        for axidxlocate:=0 to axlstcodusr.Count-1 do begin
            if Edresp1.Text=axlstcodusr.Strings[axidxlocate] then begin
               axidx:=axidxlocate;
               break;
            end;
        end;
        if axidx=-1 then begin
           if Edresp2.ItemIndex>-1 then Edresp2.ItemIndex:=-1
           else if not axrespinitx then exit;
        end else begin
           if axlstcodusr.Count>1 then axidx:=axidx+1;
           if Edresp2.ItemIndex<>axidx then Edresp2.ItemIndex:=axidx
           else if not axrespinitx then exit;
        end;
     end;
     axrespinitx:=false;
     Panel_resp.Caption:='Responsável: '+Edresp1.Text+' - '+Edresp2.Text;
     if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_st.Edresp2Change(Sender: TObject);
var axidx: Integer;
begin
     if axrespinitx then exit;
     if (Edresp2.ItemIndex<0) or (Edresp2.Text='Todos') then begin
        if Edresp1.Text<>'' then Edresp1.Text:=''
        else exit;
     end else begin
        if axlstcodusr.Count>1 then axidx:=Edresp2.ItemIndex-1
        else axidx:=Edresp2.ItemIndex;
        if Edresp1.Text<>axlstcodusr.Strings[axidx] then
           Edresp1.Text:=axlstcodusr.Strings[axidx]
        else exit;
     end;
     Panel_resp.Caption:='Responsável: '+Edresp1.Text+' - '+Edresp2.Text;
     if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_st.CheckBox_ativasClick(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;         
end;

procedure Tadm_st.CheckBox_concluidasClick(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_st.CheckBox_canceladasClick(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_st.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        if autofiltro_checkbox.Checked then filtrar_reg;
     end;
end;

procedure Tadm_st.bt_newClick(Sender: TObject);
begin
    addreg;
    lbcp2.SetFocus;
end;

procedure Tadm_st.bt_delClick(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        montaprocessos;
        montaarquivos;
        if dm.deleta_reg(EnDecryptString(Helpdesk.vrf05,37249),'codigo',lbcp1.Text,true) then begin
           dm.ds_sql4.First;
           While not dm.ds_sql4.Eof do begin
                 dm.deleta_reg(EnDecryptString(Helpdesk.vrf07+'_ax',37249),'cod_arq',dm.ds_sql4.fieldbyname('codigo').AsString,false);
                 dm.ds_sql4.Next;
           end;
           dm.ds_sql3.First;
           While not dm.ds_sql3.Eof do begin
                 dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249),'cod_ms',dm.ds_sql3.fieldbyname('codigo').AsString,false);
                 dm.ds_sql3.Next;
           end;
           dm.deleta_reg(EnDecryptString(Helpdesk.vrf06,37249),'cod_spt',lbcp1.Text,false);
           dm.ds_sql.Close;
           dm.ds_sql.Open;
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_st.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql.Prior;
    atualiza_grade;
end;

procedure Tadm_st.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql.Next;
    atualiza_grade;
end;

procedure Tadm_st.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if lbcp2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição da solicitação.');
        lbcp2.SetFocus;
        exit;
     end;
     if lbcp3.Text='' then begin
        hwsf.BtMensagem('É necessário selecionar a entidade.');
        lbcp4.SetFocus;
        exit;
     end else if not dm.ds_sql7.Locate('codigo',lbcp3.Text,[]) then begin
        hwsf.BtMensagem('Entidade selecionada inválida.');
        lbcp4.SetFocus;
        exit;
     end;
     if lbcp5.Text='' then begin
        hwsf.BtMensagem('É necessário selecionar responsável.');
        lbcp6.SetFocus;
        exit;
     end else if (lbcp1.Text='novo') AND (lbcp5.Text<>Edresp1.Text) then begin
        hwsf.BtMensagem('Para novos registro é obrigatório que o responsável seja o seu usuário.');
        lbcp5.Text:=Edresp1.Text;
        lbcp6.SetFocus;
        exit;
     end else if not dm.ds_sql5.Locate('codigo',lbcp5.Text,[]) then begin
        hwsf.BtMensagem('Responsável selecionado inválido.');
        lbcp6.SetFocus;
        exit;
     end;
     if lbcp7.Text='' then begin
        hwsf.BtMensagem('É necessário selecionar a atividade.');
        lbcp8.SetFocus;
        exit;
     end else if not dm.executa5.Locate('codigo',lbcp7.Text,[]) then begin
        hwsf.BtMensagem('Atividade selecionada inválida.');
        lbcp8.SetFocus;
        exit;
     end;
     if lbcp9.Text='' then begin
        hwsf.BtMensagem('É necessário selecionar o aplicativo.');
        lbcp10.SetFocus;
        exit;
     end else if not dm.executa6.Locate('codigo',lbcp9.Text,[]) then begin
        hwsf.BtMensagem('Aplicativo selecionado inválido.');
        lbcp10.SetFocus;
        exit;
     end;
     if lbcp12.ItemIndex < 0 then begin
        hwsf.BtMensagem('É necessário selecionar a prioridade da solicitação.');
        lbcp12.SetFocus;
        exit;
     end;
     lbcp11.Time:=Now;

     if lbcp1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf05,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf05,37249)+' (codigo,descricao,cod_usr,cod_resp,cod_tip,cod_apli,prioridade,dt_ini,dt_fim,status,cod_lp,xconf) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,:p6,'+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',Now)+#39+','+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',lbcp11.DateTime)+#39+',:p7,:p9,:p9)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp2.Text;
            Params[2].AsInteger:=Strtoint(lbcp3.Text);
            Params[3].AsInteger:=Strtoint(lbcp5.Text);
            Params[4].AsInteger:=Strtoint(lbcp7.Text);
            Params[5].AsInteger:=Strtoint(lbcp9.Text);
            Params[6].AsInteger:=lbcp12.ItemIndex+1;
            if rbcp1.Checked then Params[7].AsString:='A'
            else if rbcp2.Checked then Params[7].AsString:='C'
            else if rbcp3.Checked then Params[7].AsString:='X';
            if cbcp1.Checked then Params[8].AsInteger:=1
            else Params[8].AsInteger:=0;
            Params[9].AsString:= BoolToStr(cbcp2.Checked);
        end;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf05,37249)+' SET descricao=:p0,cod_usr=:p1,cod_resp=:p2,cod_tip=:p3,cod_apli=:p4,prioridade=:p5,'+
                          'dt_fim='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',lbcp11.DateTime)+#39+',status=:p6,cod_lp=:p7,xconf=:8 '+
                          'WHERE codigo=:p9';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsInteger:=Strtoint(lbcp3.Text);
            Params[2].AsInteger:=Strtoint(lbcp5.Text);
            Params[3].AsInteger:=Strtoint(lbcp7.Text);
            Params[4].AsInteger:=Strtoint(lbcp9.Text);
            Params[5].AsInteger:=lbcp12.ItemIndex+1;
            if rbcp1.Checked then Params[6].AsString:='A'
            else if rbcp2.Checked then Params[6].AsString:='C'
            else if rbcp3.Checked then Params[6].AsString:='X';
            if cbcp1.Checked then Params[7].AsInteger:=1
            else Params[7].AsInteger:=0;
            Params[8].AsString:= BoolToStr(cbcp2.Checked);
            Params[9].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     lbcp1.Text:=InttoStr(axcod);
     lbcp_ax3.Enabled:=true;
     lbcp_ax4.Enabled:=true;
     lbcp5.Enabled:=true;
     lbcp6.Enabled:=true;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_st.lbcp_ax2Change(Sender: TObject);
begin
     if dm.ds_sql6.Locate('website',lbcp_ax2.Text,[]) then begin
        lbcp_ax1.Text:=dm.ds_sql6.fieldbyname('codigo').AsString;
     end else lbcp_ax1.Text:='';
     if (lbcp3.Text<>'') and (lbcp4.Text<>'') then montausuarios(lbcp_ax1.Text,StrtoInt(lbcp3.Text))
     else montausuarios(lbcp_ax1.Text,0);
end;

procedure Tadm_st.lbcp_ax1Change(Sender: TObject);
begin
     if lbcp_ax1.Text <> '' then
     if dm.ds_sql6.Locate('codigo',lbcp_ax1.Text,[]) then begin
        lbcp_ax2.Text:=dm.ds_sql6.fieldbyname('website').AsString;
     end else lbcp_ax2.Text:='';
end;

procedure Tadm_st.ComboBoxEx2Change(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then filtrar_reg;
end;

procedure Tadm_st.ComboBox_listapublicaChange(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then filtrar_reg;
end;

procedure Tadm_st.db_solicitacoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    With db_solicitacoes do begin
      Case dm.ds_sql.fieldbyname('prioridade').AsInteger of
         1: Canvas.Font.Color:= clRed;
         2: Canvas.Font.Color:= clGreen;
         3: Canvas.Font.Color:= clBlack;
      End;
      DefaultDrawDataCell(Rect, columns[datacol].field, State);
    End;
end;

procedure Tadm_st.lbcp_ax4Change(Sender: TObject);
begin
     if dm.executa7.Locate('descricao',lbcp_ax4.Text,[]) then begin
        lbcp_ax3.Text:=dm.executa7.fieldbyname('codigo').AsString;
     end else lbcp_ax3.Text:='';
     if (lbcp5.Text<>'') and (lbcp6.Text<>'') then montaresponsaveis(lbcp_ax3.Text,StrtoInt(lbcp5.Text))
     else montaresponsaveis(lbcp_ax3.Text,0);
end;

procedure Tadm_st.lbcp_ax3Change(Sender: TObject);
begin
     if lbcp_ax3.Text <> '' then
     if dm.executa7.Locate('codigo',lbcp_ax3.Text,[]) then begin
        lbcp_ax4.Text:=dm.executa7.fieldbyname('descricao').AsString;
     end else lbcp_ax4.Text:='';
end;

procedure Tadm_st.montaresponsaveis(cod_setor: String; cod_resp: Integer);
var axindcount,axindusr: integer;
    xcount_progress: Real;
    xind_progress: Integer;
    axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Montando lista de usuários';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Montando lista de usuários';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
     axindusr:=0;
     axindcount:=0;
     if cod_setor='' then cod_setor:='0';
     With dm.ds_sql5 do begin
          Filter:='cod_set='+#39+cod_setor+#39;
          lbcp6.Clear;
          First;
          try
              xcount_progress:=100/RecordCount;
          except xcount_progress:=50 end;
          if xcount_progress >= 100 then xcount_progress:=1;
          xind_progress:=1;
          While not Eof do begin
              loadx.Progressloading.position:=StrtoInt(Formatfloat('0',xcount_progress*xind_progress));
              Inc(xind_progress);
              if FieldByName('codigo').AsInteger=cod_resp then axindusr:=axindcount;
              Inc(axindcount);
              lbcp6.Items.Add(fieldbyname('descricao').AsString);
              Next;
          end;
          lbcp6.ItemIndex:=axindusr;
          filtrasnameresp;
     end;
     if not axshowing then loadx.Close;
end;

procedure Tadm_st.filtrasnameresp;
begin
     if dm.ds_sql5.Locate('descricao',lbcp6.Text,[]) then begin
        lbcp_ax3.Text:=dm.ds_sql5.fieldbyname('cod_set').AsString;
        lbcp5.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
     end else lbcp5.Text:='';
end;

procedure Tadm_st.FormShow(Sender: TObject);
begin
      if axrespinitx then begin
         PageControl_geral.TabIndex:=0;
         PageControl_processos.TabIndex:=0;
         if axlstcodusr.Count>1 then Edresp2.ItemIndex:=axrespcodx+1
         else Edresp2.ItemIndex:=axrespcodx;
         Edresp1.Text:=axlstcodusr.Strings[axrespcodx];
         if axlstcodusr.Count=1 then begin
            Edresp1.Enabled:=false;
            Edresp2.Enabled:=false;
         end;
      end;
      UpdateCursorPos;
      DragAcceptFiles(Handle, True);
end;

procedure Tadm_st.db_solicitacoesTitleClick(Column: TColumn);
var xinddbs: integer;
begin
      ordem_dbsolicitacoes:=column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
      application.processmessages; // para considerar algo que aconteça no dbgrid durante a entrada nesta procedure
      for xinddbs:=0 to db_solicitacoes.Columns.Count-1 do begin
          db_solicitacoes.Columns.Items[xinddbs].Title.Color:=$00E5E5E5;
      end;
      db_solicitacoes.Columns.Items[Column.Index].Title.Color:=$00ADADAD;
      montasolicitacoes;
end;

procedure Tadm_st.autofiltro_buttonClick(Sender: TObject);
begin
      montasolicitacoes;
      filtrar_reg;
end;

function Tadm_st.CurrText: TRxTextAttributes;
begin
  if re_editor.SelLength > 0 then Result := re_editor.SelAttributes
  else Result := re_editor.DefAttributes;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure Tadm_st.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure Tadm_st.SetEditRect;
var
  R: TRect;
begin
  with re_editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tadm_st.UpdateCursorPos;
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

procedure Tadm_st.SpeedButton14Click(Sender: TObject);
begin
     re_editor.Clear;
     re_editor.Modified:=true;
end;

procedure Tadm_st.db_processosCellClick(Column: TColumn);
begin
      atualiza_grade2;
end;

procedure Tadm_st.db_processosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tadm_st.db_processosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade2;
end;

procedure Tadm_st.lbcb11Change(Sender: TObject);
begin
     if lbcb11.Text <> '' then
     if dm.executa5.Locate('codigo',lbcb11.Text,[]) then begin
        lbcb12.Text:=dm.executa5.fieldbyname('descricao').AsString;
     end else lbcb12.Text:='';
end;

procedure Tadm_st.lbcb12Change(Sender: TObject);
begin
     if dm.executa5.Locate('descricao',lbcb12.Text,[]) then begin
        lbcb11.Text:=dm.executa5.fieldbyname('codigo').AsString;
     end else lbcb11.Text:='';
end;

procedure Tadm_st.SpeedButton4Click(Sender: TObject);
begin
    addreg2;
    lbcb2.SetFocus;
end;

procedure Tadm_st.SpeedButton2Click(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade2;
end;

procedure Tadm_st.SpeedButton3Click(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade2;
end;

procedure Tadm_st.SpeedButton5Click(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Helpdesk.vrf06,37249),'codigo',lbcb1.Text,true) then begin
           dm.ds_sql4.First;
           While not dm.ds_sql4.Eof do begin
                 dm.deleta_reg(EnDecryptString(Helpdesk.vrf07+'_ax',37249),'cod_arq',dm.ds_sql4.fieldbyname('codigo').AsString,false);
                 dm.ds_sql4.Next;
           end;
           dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249),'cod_ms',dm.ds_sql3.fieldbyname('codigo').AsString,false);
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade2;
        end;
    end;
end;

procedure Tadm_st.SpeedButton6Click(Sender: TObject);
var axcod,xchr : integer;
    dt_cad: TDateTime;
    xexecutaimg: Boolean;
begin
     db_processos.SetFocus;
     if lbcb11.Text='' then begin
        hwsf.BtMensagem('É necessário selecionar a atividade.');
        lbcb12.SetFocus;
        exit;
     end else if not dm.executa5.Locate('codigo',lbcb11.Text,[]) then begin
        hwsf.BtMensagem('Atividade selecionada inválida.');
        lbcb12.SetFocus;
        exit;
     end;
     if re_editor_title.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição.');
        PageControl_processos.TabIndex:=1;
        re_editor_title.SetFocus;
        exit;
     end;
     processoand:=true;
     if lbcb1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf06,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf06,37249)+' (codigo,cod_spt,hst_ini,hst_fim,hst_interval,cod_usr,cod_resp,cod_atv,xconf,xconf2,descricao,dtcad,status) '+
                       'VALUES(:p0,:p1,'+
                       #39+FormatDateTime('yyyymmdd hh:mm:ss.000',StrToDateTime(DateToStr(lbcb2.Date)+' '+TimeToStr(lbcb3.Time)))+#39+','+
                       #39+FormatDateTime('yyyymmdd hh:mm:ss.000',StrToDateTime(DateToStr(lbcb4.Date)+' '+TimeToStr(lbcb5.Time)))+#39+','+
                       #39+FormatDateTime('yyyymmdd hh:mm:ss.000',StrToDateTime(DateToStr(lbcb4.Date)+' '+TimeToStr(lbcb6.Time)))+#39+','+
                       ':p2,:p3,:p4,:p5,:p6,:p7,'+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',Now)+#39+',:p8)';
            Params[0].AsInteger:=axcod;
            Params[1].AsString:=lbcp1.Text;
            Params[2].AsInteger:=axsolicita_codusr;
            Params[3].AsInteger:=axsolicita_codresp;
            Params[4].AsInteger:=Strtoint(lbcb11.Text);
            Params[5].AsString:= BoolToStr(cbcb1.Checked);
            Params[6].AsString:= BoolToStr(cbcb2.Checked);
            Params[7].AsString:= re_editor_title.Text;
            dt_cad:=Now;
            lbcb_dtcad.Caption:=DateTimetoStr(dt_cad);
            if rb_proc1.Checked then Params[8].AsString:='A'
            else if rb_proc2.Checked then Params[8].AsString:='C'
            else if rb_proc3.Checked then Params[8].AsString:='X';
        end;
     end else begin
        axcod:=StrtoInt(lbcb1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf06,37249)+' SET '+
                          'hst_ini='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',StrToDateTime(DateToStr(lbcb2.Date)+' '+TimeToStr(lbcb3.Time)))+#39+','+
                          'hst_fim='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',StrToDateTime(DateToStr(lbcb4.Date)+' '+TimeToStr(lbcb5.Time)))+#39+','+
                          'hst_interval='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',StrToDateTime(DateToStr(lbcb4.Date)+' '+TimeToStr(lbcb6.Time)))+#39+','+
                          'cod_usr=:p0,cod_resp=:p1,cod_atv=:p2,xconf=:p3,xconf2=:p4,descricao=:p5,status=:6 '+
                          'WHERE codigo=:p7';
            Params[0].AsInteger:=axproc_codusr;
            Params[1].AsInteger:=axproc_codresp;
            Params[2].AsInteger:=Strtoint(lbcb11.Text);
            Params[3].AsString:= BoolToStr(cbcb1.Checked);
            Params[4].AsString:= BoolToStr(cbcb2.Checked);
            Params[5].AsString:= re_editor_title.Text;
            if rb_proc1.Checked then Params[6].AsString:='A'
            else if rb_proc2.Checked then Params[6].AsString:='C'
            else if rb_proc3.Checked then Params[6].AsString:='X';
            Params[7].AsInteger:=axcod;
        end;
     end;
     processoand:=false;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     Application.ProcessMessages;
     xchr:=HexToInt(Inttostr(axcod)+lbcb_dtcad.Caption);
     st_stream := TMemoryStream.Create;
     re_editor.Lines.SaveToStream(st_stream);
     st_stream.Seek(0,soFromBeginning);
     st_stream:=EnDecryptStream(st_stream,xchr);
     st_stream.Seek(0,soFromBeginning);
     xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Helpdesk.vrf06,37249),'UPDT','codigo','','obs','','','',IntToStr(axcod),st_stream,nil);
     if not xexecutaimg then begin
        hwsf.BtMensagem('Erro ao gravar dados binários.');
        exit;
     end;
     st_stream.Free;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg2.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     lbcb1.Text:=InttoStr(axcod);
     lbcb1_ax.Caption:=lbcb1.Text;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_st.bt_detail7Click(Sender: TObject);
begin
     detail_setor(lbcp_ax3.Text,lbcp_ax4.Text);
end;

procedure Tadm_st.bt_detail12Click(Sender: TObject);
begin
      detail_atividade(lbcb11.Text,lbcb12.Text);
end;

procedure Tadm_st.SpeedButton15Click(Sender: TObject);
begin
      re_editor_title.Text:=dm.ds_sql3.fieldbyname('descricao').AsString;
      Try
          st_stream := TMemoryStream.Create;
          TBlobField(dm.ds_sql3.FieldByName('obs')).SaveToStream(st_stream);
          st_stream.Seek(0,soFromBeginning);
          re_editor.Lines.LoadFromStream(st_stream);
      Finally
          st_stream.Free;
      End;
end;

procedure Tadm_st.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tadm_st.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor.CutToClipboard;
end;

procedure Tadm_st.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor.CopyToClipboard;
end;

procedure Tadm_st.Colar1Click(Sender: TObject);
begin
     //colar
     re_editor.PasteFromClipboard;
end;

procedure Tadm_st.Fonte1Click(Sender: TObject);
begin
     //formatar fontes
     FontDialog1.Font.Assign(re_editor.SelAttributes);
     if FontDialog1.Execute then
        CurrText.Assign(FontDialog1.Font);
     SelectionChange(Self);
     re_editor.SetFocus;
end;

procedure Tadm_st.Cor1Click(Sender: TObject);
begin
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tadm_st.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tadm_st.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tadm_st.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tadm_st.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor.Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tadm_st.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Tadm_st.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Tadm_st.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Tadm_st.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Tadm_st.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tadm_st.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tadm_st.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tadm_st.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65: (Sender as TRichEdit).SelectAll;
  end;
end;

procedure Tadm_st.SelectionChange(Sender: TObject);
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
      //iline:=Editor.Perform(EM_LINEFROMCHAR,Editor.SelStart, 0);
      //Editor.lines[iline]:=Justificatxt(Editor.lines[iline],60);
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure Tadm_st.FormPaint(Sender: TObject);
begin
    SetEditRect;
end;

procedure Tadm_st.bt_prior4Click(Sender: TObject);
begin
    dm.ds_sql4.Prior;
    atualiza_grade3;
end;

procedure Tadm_st.bt_next5Click(Sender: TObject);
begin
    dm.ds_sql4.Next;
    atualiza_grade3;
end;

procedure Tadm_st.bt_new4Click(Sender: TObject);
begin
    addreg3;
    if not importa_arquivo then
    hwsf.BtMensagem('Para inclusão do registro é necessário importar um arquivo.');
    lbce2.SetFocus;
end;

procedure Tadm_st.db_arquivosCellClick(Column: TColumn);
begin
      atualiza_grade3;
end;

procedure Tadm_st.db_arquivosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tadm_st.db_arquivosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade3;
end;

procedure Tadm_st.bt_del4Click(Sender: TObject);
begin
    if (dm.ds_sql.RecordCount>0) and (lbcp1.Text<>'novo') then begin
        if dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249),'codigo',lbce1.Text,true) then begin
           dm.deleta_reg(EnDecryptString(Helpdesk.vrf07+'_ax',37249),'cod_arq',dm.ds_sql4.fieldbyname('codigo').AsString,false);
           dm.ds_sql4.Close;
           dm.ds_sql4.Open;
           atualiza_grade3;
        end;
    end;
end;

procedure Tadm_st.bt_upload4Click(Sender: TObject);
begin
     importa_arquivo;
end;

function Tadm_st.importa_arquivo: Boolean;
var StrLst : TStringList;
    od_title, od_filter : string;
begin
     od_title:= OpenDialog.Title;
     od_filter:=OpenDialog.Filter;
     OpenDialog.Title:='Importar arquivo';
     OpenDialog.Filter:='Todos os arquivos|*.*';
     if OpenDialog.Execute then begin
        loadx := Tloadx.Create(Application);
        loadx.lbloading.Caption:='Importando arquivo';
        try loadx.Show; except end;
        try loadx.Update; except end;
        loadx.Progressloading.position:=0;
        try
           StrLst := TStringList.Create;
           StrLst.Clear;
           xmodupdate:=true;
           xmodtmp.Clear;
           StrLst.Add(OpenDialog.FileName);
           CompressStream.BackupToStream(StrLst,xmodtmp);
           lbce3.Caption:= ExtractFileName(OpenDialog.FileName);
           xmodtmp.Seek(0,soFromBeginning);
           lbce4.Caption:= IntToStr(xmodtmp.Size);
        finally
          StrLst.Free;
        end;
        loadx.Close;
        Result:=true;
     end else Result:=false;
     OpenDialog.Title:= od_title;
     OpenDialog.Filter:= od_filter;
end;

function Tadm_st.savearquivoas: boolean;
var OutMS_mod,OutMS_tmp: TMemoryStream;
    xchr,xcmod,xordtmp,xpercax,xpercax2: integer;
    c_mod : byte;
    od_filter,xfilepath_mod,xfilename,xfileren: String;
    Success,recoverbkpfile: Boolean;
    xperc: Real;
begin
     if lbce1.Text = 'novo' then begin
        Result:=true;
        exit;
     end else Result:=true;
     od_filter:=SaveDialog.Filter;
     SaveDialog.Filter:='Todos os arquivos|*.*';
     xfilename:=lbce3.Caption;
     SaveDialog.FileName:=xfilename;
     if SaveDialog.Execute then begin
        xfilepath_mod:= ExtractFilePath(SaveDialog.FileName);
        if FileExists(SaveDialog.FileName) then
        if not hwsf.BtConfirma('Arquivo ['+SaveDialog.FileName+'] já existe, substituir?') then begin
           Result:=true;
           exit;
        end else DeleteFile(SaveDialog.FileName);
        if xfilename<>SaveDialog.FileName then begin
           if FileExists(xfilepath_mod+xfileren) then begin
              recoverbkpfile:=true;
              RenameFile(xfilepath_mod+xfileren,xfilepath_mod+xfileren+'.bkp');
           end else recoverbkpfile:=false;
           xfileren:=SaveDialog.FileName;
        end else xfileren:='';
     end else begin
        Result:=true;
        exit;
     end;
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Salvando arquivo';
     try loadx.Show; except end;
     try loadx.Update; except end;
     loadx.Progressloading.position:=0;
     Try
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_tmp:= TMemoryStream.Create;
       OutMS_tmp.Clear;
       With dm.ds_sql10 do begin
            CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf07,37249)+'_ax '+
                       'WHERE cod_arq='+#39+lbce1.Text+#39' ORDER BY ordem';
            Open;
            First;
            OutMS_mod.Seek(0,soFromBeginning);
            xperc:=100/RecordCount;
            xpercax2:=1;
            While not Eof do begin
                xpercax:=StrtoInt(formatfloat('0',xperc*xpercax2));
                if xpercax > 100 then xpercax:=100;
                loadx.Progressloading.Position:=xpercax;
                Inc(xpercax2);
                OutMS_tmp.Clear;
                OutMS_tmp.Seek(0,soFromBeginning);
                TBlobField(FieldByName('cpa')).SaveToStream(OutMS_tmp);
                OutMS_tmp.Seek(0,soFromBeginning);
                xchr:=HexToInt(lbce1.Text+fieldbyname('codigo').AsString+lbce3.Caption+lbce4.Caption+lbce_dtcad.Caption);
                OutMS_tmp:=EnDecryptStream(OutMS_tmp,xchr);
                OutMS_tmp.Seek(0,soFromBeginning);
                for xcmod:=0 to OutMS_tmp.Size-1 do begin
                   OutMS_tmp.Read(c_mod,1);
                   OutMS_mod.Write(c_mod,1);
                end;
                Next;
            end;
            Close;
       end;
       if OutMS_mod.Size > 0 then
       OutMS_mod.Seek(0,soFromBeginning);
       Success := CompressStream.RestoreFromStream(OutMS_mod,xfilepath_mod);
       if xfileren<>'' then begin
          RenameFile(xfilepath_mod+xfilename,xfilepath_mod+xfileren);
          if recoverbkpfile then RenameFile(xfilepath_mod+xfileren+'.bkp',xfilepath_mod+xfileren);
       end;
       if not Success then begin
          Result:=false;
       end else begin
          Result:=true;
       end;
       OutMS_mod.Free;
     Except
       OutMS_mod.Free;
       if FileExists(xfilepath_mod+xfilename) then
          DeleteFile(Pchar(xfilepath_mod+xfilename));
       if xfileren<>'' then
       if FileExists(xfilepath_mod+xfileren) then
          DeleteFile(Pchar(xfilepath_mod+xfileren));
       Result:=false;
     End;
     loadx.Close;
     SaveDialog.Filter:= od_filter;
     SaveDialog.FileName:='';
end;

procedure Tadm_st.bt_download4Click(Sender: TObject);
begin
      savearquivoas;
      //if not savearquivoas then
      //if hwsf.BtConfirma('Não foi possível salvar arquivo, tentar novamente?') then bt_save4.Click;
end;

procedure Tadm_st.bt_save4Click(Sender: TObject);
var axcod: integer;
    dt_cad: TDateTime;
begin
{     if not (dm.conecta_sql.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_sql.StartTransaction(TD);
     end;     }
     if lbce2.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a descrição do anexo.');
        lbce2.SetFocus;
        exit;
     end;
     if lbce4.Caption='0' then begin
        axcod:=1;
        if hwsf.BtConfirma('É necessário importar um arquivo, importar agora?') then begin
           if not importa_arquivo then axcod:=0;
        end else axcod:=0;
        if axcod=0 then begin
           hwsf.BtMensagem('Anexo não foi gravado.');
           exit;
        end;
     end;

     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Gravando dados';
     loadx.Progressloading2.Visible:=true;
     try loadx.Show; except end;
     try loadx.Update; except end;
     loadx.Progressloading.position:=0;
     if lbce1.Text = 'novo' then begin
        axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf07,37249),1);
        loadx.Progressloading.position:=25;
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf07,37249)+' (codigo,cod_ms,cpd,cpn,xsize,dtcad) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,'+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',Now)+#39+')';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrToInt(lbcb1.Text);
            Params[2].AsString:=lbce2.Text;
            Params[3].AsString:=EnDecryptString(lbce3.Caption,2341);
            Params[4].AsInteger:=StrToInt(lbce4.Caption);
            dt_cad:=Now;
            lbce_dtcad.Caption:=DateTimetoStr(dt_cad);
        end;
     end else begin
        axcod:=StrtoInt(lbce1.Text);
        loadx.Progressloading.position:=25;
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf07,37249)+' SET cpd=:p0,cpn=:p1,xsize=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsString:=lbce2.Text;
            Params[1].AsString:=EnDecryptString(lbce3.Caption,2341);
            Params[2].AsInteger:=StrToInt(lbce4.Caption);
            Params[3].AsInteger:=axcod;
        end;
     end;
     loadx.Progressloading.position:=50;
     try
          dm.executa.Execute;
     except
//          dm.conecta_sql.RollBack(TD);
          loadx.Progressloading2.Visible:=false;
          loadx.Close;
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     loadx.Progressloading.position:=75;
     if xmodupdate then begin
        if not atualiza_modbin(axcod,StrtoInt(lbce4.Caption),lbce3.Caption,lbce_dtcad.Caption,xmodtmp) then begin
           loadx.Progressloading2.Visible:=false;
           loadx.Close;
//           dm.conecta_sql.RollBack(TD);
           hwsf.BtMensagem('Ocorreu algum erro.');
           exit;
        end;
        xmodupdate:=false;
     end;
     loadx.Progressloading.position:=100;
//     dm.conecta_sql.Commit(TD);
     dm.ds_sql4.Close;
     dm.ds_sql4.Open;
     Lb_countreg3.Caption:=Inttostr(dm.ds_sql4.RecordCount);
     lbce1.Text:=InttoStr(axcod);
     loadx.Progressloading2.Visible:=false;
     loadx.Close;
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

function Tadm_st.atualiza_modbin(axt_codigo,size_mod: Integer; axt_mdl,axt_ver: string; xat_xmodtmp: TMemoryStream):boolean;
var OutMS_mod: TMemoryStream;
    axcod2,index_mod,xchr,xpercax: integer;
    xperc: Real;
    xind,ax_mod: Longint;
    c_mod : byte;
    xexecutaimg: Boolean;
begin
     //deleta registro dos módulos binários
      Result:= True;
      with dm.executa do begin
            CommandText:= 'DELETE FROM '+EnDecryptString(Helpdesk.vrf07,37249)+'_ax '+
                       'WHERE cod_arq=:p0';
            Params[0].AsInteger:=axt_codigo;
      end;
      try
          dm.executa.Execute;
      except
          Result:= False;
          exit;
      end;
      //insert registro dos módulos binários
      if size_mod > 0 then begin
       xat_xmodtmp.Seek(0,soFromBeginning);
       OutMS_mod:= TMemoryStream.Create;
       OutMS_mod.Clear;
       OutMS_mod.Seek(0,soFromBeginning);
       index_mod:=0;
       ax_mod:=0;
       xpercax:=30;
       xperc:=70/size_mod;
       for xind:=0 to size_mod-1 do begin
          xpercax:=StrtoInt(formatfloat('0',xperc*xind))+30;
          if xpercax > 100 then xpercax:=100;
          if loadx.Progressloading2.Visible then
             loadx.Progressloading2.Position:=xpercax
          else loadx.Progressloading.Position:=xpercax;
          xat_xmodtmp.Read(c_mod, 1);
          OutMS_mod.Write(c_mod,1);
          if (ax_mod = 500000) or (xind=size_mod-1) then begin
            with dm.executa do begin
               axcod2:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf07,37249)+'_ax',1);
               CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf07,37249)+'_ax (codigo,cod_arq,ordem)'+
                          'VALUES(:p0,:p1,:p2)';
               Params[0].AsInteger:=axcod2;
               Params[1].AsInteger:=axt_codigo;
               Params[2].AsInteger:=index_mod;
            end;
            try
               dm.executa.Execute;
            except
               Result:= False;
               exit;
            end;
            xchr:=HexToInt(Inttostr(axt_codigo)+Inttostr(axcod2)+axt_mdl+Inttostr(size_mod)+axt_ver);
            OutMS_mod.Seek(0,soFromBeginning);
            OutMS_mod:=EnDecryptStream(OutMS_mod,xchr);
            OutMS_mod.Seek(0,soFromBeginning);
            xexecutaimg:=dm.PostBinaryStream(EnDecryptString(Helpdesk.vrf06,37249),'UPDT','codigo','','cpa','','','',IntToStr(axcod2),OutMS_mod,nil);
            if not xexecutaimg then begin
               Result:= False;
               exit;
            end;
            Inc(index_mod);
            ax_mod:=0;
            OutMS_mod.Clear;
            OutMS_mod.Seek(0,soFromBeginning);
          end else begin
            Inc(ax_mod);
          end;
       end;
       OutMS_mod.Free;
       xat_xmodtmp.Clear;
       xat_xmodtmp.Seek(0,soFromBeginning);
      end;
end;

procedure Tadm_st.Edit_search2Change(Sender: TObject);
begin
     filtrar_reg2;
end;

procedure Tadm_st.ComboBox_search2Change(Sender: TObject);
begin
     if ComboBox_search2.ItemIndex>=0 then begin
        Edit_search2.MaxLength:=tm_search2[ComboBox_search2.ItemIndex];
        Edit_search2.Text:='';
        filtrar_reg2;
     end;
end;

procedure Tadm_st.bt_search2Click(Sender: TObject);
begin
     filtrar_reg2;
end;

procedure Tadm_st.db_processosTitleClick(Column: TColumn);
var xinddbs: integer;
begin
      ordem_dbprocessos:=column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
      application.processmessages; // para considerar algo que aconteça no dbgrid durante a entrada nesta procedure
      for xinddbs:=0 to db_processos.Columns.Count-1 do begin
          db_processos.Columns.Items[xinddbs].Title.Color:=$00E5E5E5;
      end;
      db_processos.Columns.Items[Column.Index].Title.Color:=$00ADADAD;
      montaprocessos;
end;

procedure Tadm_st.PageControl_geralChange(Sender: TObject);
begin
      Case PageControl_geral.TabIndex of
           0: begin
              axmontaprocessos:=false;
           end;
           1: begin
              PageControl_processos.TabIndex:=0;
              axmontaprocessos:=true;
              montaprocessos;
           end;
      End;
end;

procedure Tadm_st.Edresp2KeyPress(Sender: TObject; var Key: Char);
begin
      key:=#0;
end;

procedure Tadm_st.SpeedButton1Click(Sender: TObject);
begin
     if Panel_search.Visible then begin
        Panel_search.Visible:=false;
        autofiltro_checkbox.Visible:=false;
     end else begin
        Panel_search.Visible:=true;
        autofiltro_checkbox.Visible:=true;
     end;
end;

procedure Tadm_st.chkproc1Click(Sender: TObject);
begin
      montaprocessos; 
end;

procedure Tadm_st.chkproc2Click(Sender: TObject);
begin
      montaprocessos;
end;

procedure Tadm_st.chkproc3Click(Sender: TObject);
begin
      montaprocessos;
end;

end.

