{###############################################################################
Programa: HWShelpdesk
Módulo: Cadastro de atividades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_stmenuchat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, Menus, ImgList, backup,
  TrayIcon, AppEvnts, XPMan, RxRichEd;


type
  Tadm_stmenuchat = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_maximiza: TSpeedButton;
    CompressStream: TBackupFile;
    FontDialog1: TFontDialog;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ColorDialog1: TColorDialog;
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
    PageControl_processos: TPageControl;
    TabSheet_ficha: TTabSheet;
    TabSheet_anexos: TTabSheet;
    GroupBox2: TGroupBox;
    db_solicitacoes: TDBGrid;
    ToolBar2: TToolBar;
    Lb_countreg: TLabel;
    bt_hst3: TSpeedButton;
    bt_hst1: TSpeedButton;
    autofiltro_checkbox: TCheckBox;
    Panel3: TPanel;
    ToolBar3: TToolBar;
    bt_msg1: TSpeedButton;
    bt_msg2: TSpeedButton;
    bt_msg3: TSpeedButton;
    bt_msg4: TSpeedButton;
    GroupBox_msg: TGroupBox;
    ToolBar1: TToolBar;
    bt_import: TSpeedButton;
    bt_export: TSpeedButton;
    bt_clear: TSpeedButton;
    bt_send: TSpeedButton;
    Panel2: TPanel;
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
    ToolBar5: TToolBar;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    lb_codmsg: TLabel;
    bt_hst2: TSpeedButton;
    bt_hst4: TSpeedButton;
    pn_detail: TPanel;
    Label9: TLabel;
    re_remetente: TRichEdit;
    re_destinatario: TRichEdit;
    Label1: TLabel;
    lb_remetente: TLabel;
    lb_destinatario: TLabel;
    re_detalhes: TRichEdit;
    Label8: TLabel;
    CoolBar2: TCoolBar;
    Panel4: TPanel;
    Edit_search: TEdit;
    ComboBox_search: TComboBox;
    bt_search: TSpeedButton;
    Label4: TLabel;
    Label3: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    filtramsg1: TComboBox;
    filtramsg2: TComboBox;
    Label7: TLabel;
    filtramsg3: TComboBox;
    filtramsg4: TComboBox;
    Label20: TLabel;
    filtramsg5: TComboBox;
    Label6: TLabel;
    filtramsg6: TComboBox;
    autofiltro_buttonvs: TPanel;
    autofiltro_button: TSpeedButton;
    re_FindDialog: TFindDialog;
    bt_subst: TSpeedButton;
    re_ReplaceDialog: TReplaceDialog;
    Panel8: TPanel;
    db_timer: TTimer;
    TrayIconini: TTrayIcon;
    ImageList_icon: TImageList;
    PopupMenu_icon: TPopupMenu;
    HWSstChat1: TMenuItem;
    N1: TMenuItem;
    Finalizar1: TMenuItem;
    Minimizar1: TMenuItem;
    Maximizar1: TMenuItem;
    Sobre1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Timer_logado: TTimer;
    XPManifest1: TXPManifest;
    pn_cc: TPanel;
    lbax2: TLabel;
    lbax1: TLabel;
    bt_detail1: TSpeedButton;
    bt_detail6: TSpeedButton;
    Label5: TLabel;
    Bevel1: TBevel;
    Label10: TLabel;
    bt_detail2: TSpeedButton;
    lbcp_ax1: TLabeledEdit;
    lbcp3: TLabeledEdit;
    lbcp4: TComboBox;
    lbcp_ax2: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    lbcp5: TLabeledEdit;
    lbcp6: TComboBox;
    re_editor: TRxRichEdit;
    re_mensa: TRxRichEdit;
    ToolBar4: TToolBar;
    CheckBox1: TCheckBox;
    Edit_autorefresh: TEdit;
    Label13: TLabel;
    UpDown2: TUpDown;
    Panel_cnt: TPanel;
    Label_cnt: TLabel;
    ToolBar6: TToolBar;
    Label12: TLabel;
    rb_receive1: TRadioButton;
    rb_receive2: TRadioButton;
    re_mensa_tmp: TRxRichEdit;
    chk_avisar: TCheckBox;
    Panel9: TPanel;
    bt_atualizar: TSpeedButton;
    CheckBox2: TCheckBox;
    Edit_online: TEdit;
    UpDown3: TUpDown;
    Label11: TLabel;
    Panel10: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure db_solicitacoesCellClick(Column: TColumn);
    procedure db_solicitacoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_solicitacoesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_sobreClick(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_maximizaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure bt_sendClick(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure PageControl_processosChange(Sender: TObject);
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
    procedure SelectionChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure re_editorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_msg1Click(Sender: TObject);
    procedure bt_importClick(Sender: TObject);
    procedure bt_msg2Click(Sender: TObject);
    procedure bt_exportClick(Sender: TObject);
    procedure bt_msg3Click(Sender: TObject);
    procedure bt_msg4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure lbcp_ax2Change(Sender: TObject);
    procedure lbcp_ax1Change(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure lbcp4Change(Sender: TObject);
    procedure lbcp3Change(Sender: TObject);
    procedure bt_detail1Click(Sender: TObject);
    procedure bt_detail6Click(Sender: TObject);
    procedure detail_entidades(axvar_cod,axvar_desc,axvar_cod2,axvar_desc2: String; xdata: TClientDataSet);
    procedure detail_responsavel(axvar_cod,axvar_desc:string; xdata: TClientDataSet);
    procedure detail_setor(axvar_cod,axvar_desc:string);
    procedure db_solicitacoesTitleClick(Column: TColumn);
    procedure Edit_searchChange(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure filtramsg1Change(Sender: TObject);
    procedure filtramsg2Change(Sender: TObject);
    procedure filtramsg3Change(Sender: TObject);
    procedure filtramsg4Change(Sender: TObject);
    procedure filtramsg5Change(Sender: TObject);
    procedure filtramsg6Change(Sender: TObject);
    procedure bt_hst4Click(Sender: TObject);
    procedure lbcp6Change(Sender: TObject);
    procedure lbcp5Change(Sender: TObject);
    procedure autofiltro_buttonClick(Sender: TObject);
    procedure bt_hst2Click(Sender: TObject);
    procedure bt_hst1Click(Sender: TObject);
    procedure bt_hst3Click(Sender: TObject);
    procedure re_FindDialogFind(Sender: TObject);
    procedure bt_substClick(Sender: TObject);
    procedure re_ReplaceDialogFind(Sender: TObject);
    procedure re_ReplaceDialogReplace(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Maximizar1Click(Sender: TObject);
    procedure db_timerTimer(Sender: TObject);
    procedure rb_receive1Click(Sender: TObject);
    procedure rb_receive2Click(Sender: TObject);
    procedure Timer_logadoTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure UpDown2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure re_mensaURLClick(Sender: TObject; const URLText: String;
      Button: TMouseButton);
    procedure UpDown3Changing(Sender: TObject; var AllowChange: Boolean);
    procedure TrayIconiniClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    cv,axrespcodx : string;
    st_stream_msg : TMemoryStream;
    st_receive_msg,st_receive_msg2,st_receive_resp,st_receive_resp2: TStringList;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    FUpdating: Boolean;
    xchr: Word;
    procedure atualiza_grade;
    procedure filtrar_reg;
    procedure montacc(xtipo:byte);
    procedure montausuarios(cod_web: String; cod_usr: Integer);
    procedure filtrasnameusr;
    procedure montaresponsaveis(cod_setor: String; cod_resp: Integer);
    procedure filtrasnameresp;
    procedure montasolicitacoes;
    procedure montacc_filtro(xtipo: byte);
    procedure sendmensa;
    procedure enviarmensagem(cod_rmt,cod_dto,xstatus:integer; xconf1,xconf2:Boolean; hst_up: TDateTime);
    function updatemensagem(xcodmsg,xstatus:integer; hst_up,hst_down: TDateTime): Boolean;
    procedure atualiza_lista_msg(xlocate:bool);
    function atualizaultimoacesso(xtabelaup: string; xcodigoup: Integer):Boolean;
    procedure statconect(xstatus: boolean);
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    xdestruirjanela,axrespinitx,processoand : boolean;
    ordem_dbsolicitacoes: string;
    xshowin : boolean;
    function CurrText: TRxTextAttributes;
    procedure GetFontNames;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    procedure atualizarmensa;
    { Public declarations }
  end;

var
  adm_stmenuchat: Tadm_stmenuchat;

implementation
uses udm, hwsfunctions, RichEdit, DateUtils, ShellAPI;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tadm_stmenuchat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if not xdestruirjanela then begin
         Action := caNone;
         Application.Minimize;
     end else begin
         Action:=cafree;
     end;
end;

procedure Tadm_stmenuchat.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_stmenuchat.FormCreate(Sender: TObject);
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
     TrayIconini.Icon:=hwsf.HiconToIcon;
     statconect(true);
     processoand:=false;
     xshowin:=false;
     xdestruirjanela:=false;
     GetFontNames;
     SelectionChange(Self);
     SendMessage(re_editor.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     SendMessage(re_mensa.Handle, EM_LIMITTEXT, 0, $FFFFFF);
     re_editor.Justify;
     re_mensa.Justify;
     re_mensa_tmp.Justify;
     st_receive_msg:= TStringList.Create;
     st_receive_msg2:= TStringList.Create;
     st_receive_resp:= TStringList.Create;
     st_receive_resp2:= TStringList.Create;
     st_stream_msg := TMemoryStream.Create;

     db_solicitacoes.DataSource:=dm.source_sql3;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Cód. Remetente');
     cp_search[1]:= 'cod_rmt';
     tp_search[1]:= 0;
     tm_search[1]:= 11;
     ComboBox_search.Items.Add('Cód. Destinatário');
     cp_search[2]:= '';
     tp_search[2]:= 0;
     tm_search[2]:= 11;
     ComboBox_search.Items.Add('Data/hora envio');
     cp_search[3]:= 'hst_up';
     tp_search[3]:= 1;
     tm_search[3]:= 14;
     ComboBox_search.Items.Add('Data/hora envio');
     cp_search[4]:= 'hst_down';
     tp_search[4]:= 1;
     tm_search[4]:= 14;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=20;
     ordem_dbsolicitacoes:='codigo';
     cv := 'B2d7485d9N';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[0].FieldName:='codigo';
     db_solicitacoes.Columns.Items[0].Title.Caption:='Código';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[1].FieldName:='xstatus';
     db_solicitacoes.Columns.Items[1].Title.Caption:='Status';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[2].FieldName:='cod_rmt';
     db_solicitacoes.Columns.Items[2].Title.Caption:='Remetente';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[3].FieldName:='xconf1';
     db_solicitacoes.Columns.Items[3].Title.Caption:='Administrador';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[4].FieldName:='cod_dto';
     db_solicitacoes.Columns.Items[4].Title.Caption:='Destinatário';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[5].FieldName:='xconf2';
     db_solicitacoes.Columns.Items[5].Title.Caption:='Administrador';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[6].FieldName:='hst_up';
     db_solicitacoes.Columns.Items[6].Title.Caption:='Data/hora Envio';
     db_solicitacoes.Columns.Add;
     db_solicitacoes.Columns.Items[7].FieldName:='hst_down';
     db_solicitacoes.Columns.Items[7].Title.Caption:='Data/hora Recebimento';
     db_solicitacoes.Columns.Items[0].Title.Color:=$00ADADAD;
     loadx.Progressloading.position:=30;
     //lista de websites
     With dm.ds_sql6 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf29,37249)+' ORDER BY website';
          Open;
     end;
     loadx.Progressloading.position:=40;
     //lista de usuarios
     With dm.ds_sql7 do begin
          CommandText:= 'select codigo,decode(usuario,'+chr(39)+cv+chr(39)+'),cod_ent,cod_web from '+EnDecryptString(Serverconect.vrf19[0],37249);
          Open;
          filter:='';
          filtered:=true;
     end;
     loadx.Progressloading.position:=50;
     //setores
      With dm.executa7 do begin
          CommandText:='select * from '+EnDecryptString(Helpdesk.vrf02,37249)+' order by descricao';
          Open;
      end;
      loadx.Progressloading.position:=60;
      //lista de responsáveis
      With dm.ds_sql5 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+' ORDER BY descricao';
          Open;
          filter:='';
          filtered:=true;
      end;
      loadx.Progressloading.position:=70;
      //lista de responsáveis filtro
      With dm.ds_sql2 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+
                                ' WHERE cod_usr='+#39+IntToStr(Serverconect.vrf00)+#39+
                                ' ORDER BY descricao';
          Open;
          filter:='';
          filtered:=false;
          lbcp6.Clear;
          st_receive_resp.Clear;
          First;
          While not Eof do begin
             lbcp6.Items.Add(fieldbyname('descricao').AsString);
             st_receive_resp.Add(fieldbyname('codigo').AsString);
             Next;
          end;
          st_receive_resp2.Assign(lbcp6.Items);
          axrespinitx:=true;
      end;
      loadx.Progressloading.position:=80;
      //lista de usuários filtro
      With dm.ds_sql8 do begin
           CommandText:= 'SELECT DISTINCT A.codigo,decode(A.usuario,'+chr(39)+cv+chr(39)+'),A.cod_ent,A.cod_web,B.nome,C.razao_social,C.fantasia,D.website FROM '+
                                 EnDecryptString(Serverconect.vrf19[0],37249)+' A, '+ //usuario
                                 EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                                 EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                                 EnDecryptString(Serverconect.vrf29,37249)+' D '+  //website
                                 'WHERE B.codigo=A.cod_ent AND D.codigo=A.cod_web AND C.codigo=B.cod_ent '+
                                 'ORDER BY A.codigo';
           Open;
           filter:='';
           filtered:=false;
      end;
      loadx.Progressloading.position:=90;
      //lista de responsáveis filtro
      With dm.ds_sql4 do begin
           CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+' ORDER BY descricao';
           Open;
           filter:='';
           filtered:=false;
      end;
      loadx.Progressloading.position:=100;
      montacc(0);
      //atualiza_grade;
      if not axshowing then loadx.Free;
end;

procedure Tadm_stmenuchat.montacc_filtro(xtipo: byte);
begin
      filtramsg2.Clear;
      Case xtipo of
          0: begin
             With dm.ds_sql4 do begin
                  First;
                  While not Eof do begin
                      filtramsg2.Items.Add(fieldbyname('descricao').AsString);
                      Next;
                  end;
             end;
             if lbcp6.Items.Count>0 then begin
                if lbcp6.ItemIndex<0 then lbcp6.ItemIndex:=0;
                filtramsg2.ItemIndex:=lbcp6.ItemIndex;
             end;
          end;
          1: begin
             With dm.ds_sql8 do begin
                  First;
                  While not Eof do begin
                      filtramsg2.Items.Add(Fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString);
                      Next;
                  end;
             end;
          end;
      end;
end;

procedure Tadm_stmenuchat.db_solicitacoesCellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_stmenuchat.db_solicitacoesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_stmenuchat.db_solicitacoesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_stmenuchat.atualiza_grade;
var xlida: bool;
    st_stream: TMemoryStream;
begin
      if PageControl_processos.TabIndex=1 then
      if dm.ds_sql3.RecordCount <= 0 then begin
         re_editor.Clear;
      end else begin
         re_remetente.Clear;
         re_destinatario.Clear;
         re_detalhes.Clear;
         with dm.ds_sql3 do begin
            lb_codmsg.Caption:= fieldbyname('codigo').AsString;
            //detalhes remetente
            re_remetente.Lines.Add('Código: '+fieldbyname('cod_rmt').AsString);
            if StrToBool(fieldbyname('xconf1').AsString) then begin
               lb_remetente.Caption:='Administrador';
               if dm.ds_sql5.Locate('codigo',fieldbyname('cod_rmt').AsString,[]) then begin
                  re_remetente.Lines.Add('Nome: '+dm.ds_sql5.fieldbyname('descricao').AsString);
                  if dm.executa7.Locate('codigo',dm.ds_sql5.fieldbyname('cod_set').AsString,[]) then
                     re_remetente.Lines.Add('Setor: '+dm.ds_sql5.fieldbyname('cod_set').AsString+' - '+dm.executa7.fieldbyname('descricao').AsString);
               end;
            end else begin
               lb_remetente.Caption:='Usuário';
               if dm.ds_sql7.Locate('codigo',fieldbyname('cod_rmt').AsString,[]) then begin
                  re_remetente.Lines.Add('Nome: '+dm.ds_sql7.fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString);
                  if dm.ds_sql6.Locate('codigo',dm.ds_sql7.fieldbyname('cod_web').AsString,[]) then
                     re_remetente.Lines.Add('Website: '+dm.ds_sql7.fieldbyname('cod_web').AsString+' - '+dm.ds_sql6.fieldbyname('website').AsString);
               end;
            end;
            //detalhes destinatário
            re_destinatario.Lines.Add('Código: '+fieldbyname('cod_dto').AsString);
            if StrToBool(fieldbyname('xconf1').AsString) then begin
               lb_destinatario.Caption:='Administrador';
               if dm.ds_sql5.Locate('codigo',fieldbyname('cod_dto').AsString,[]) then begin
                  re_destinatario.Lines.Add('Nome: '+dm.ds_sql5.fieldbyname('descricao').AsString);
                  if dm.executa7.Locate('codigo',dm.ds_sql5.fieldbyname('cod_set').AsString,[]) then
                     re_destinatario.Lines.Add('Setor: '+dm.ds_sql5.fieldbyname('cod_set').AsString+' - '+dm.executa7.fieldbyname('descricao').AsString);
               end;
            end else begin
               lb_destinatario.Caption:='Usuário';
               if dm.ds_sql7.Locate('codigo',fieldbyname('cod_dto').AsString,[]) then begin
                  re_destinatario.Lines.Add('Nome: '+dm.ds_sql7.fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString);
                  if dm.ds_sql6.Locate('codigo',dm.ds_sql7.fieldbyname('cod_web').AsString,[]) then
                     re_destinatario.Lines.Add('Website: '+dm.ds_sql7.fieldbyname('cod_web').AsString+' - '+dm.ds_sql6.fieldbyname('website').AsString);
               end;
            end;
            //detalhes adicionais
            xlida:=false;
            Case fieldbyname('xstatus').AsInteger of
                 0: re_detalhes.Lines.Add('Mensagem não lida');
                 1: re_detalhes.Lines.Add('Mensagem lida');
                 2: re_detalhes.Lines.Add('Mensagem não lida - excluída');
                 3: re_detalhes.Lines.Add('Mensagem lida - excluída');
                 1-3: xlida:=true;
            End;
            if xlida then begin
               re_detalhes.Lines.Add('Data/hora envio: '+fieldbyname('hst_up').AsString);
               re_detalhes.Lines.Add('Data/hora recebimento: '+fieldbyname('hst_down').AsString);
            end else re_detalhes.Lines.Add('Data envio: '+fieldbyname('hst_up').AsString);
            //mensagem
            st_stream := TMemoryStream.Create;
            xchr:=HexToInt(fieldbyname('codigo').AsString+fieldbyname('cod_rmt').AsString+fieldbyname('cod_dto').AsString+fieldbyname('hst_up').AsString);
            TBlobField(FieldByName('xmensa')).SaveToStream(st_stream);
            st_stream.Seek(0,soFromBeginning);
            st_stream:=EnDecryptStream(st_stream,xchr);
            st_stream.Seek(0,soFromBeginning);
            re_editor.Lines.LoadFromStream(st_stream);
            st_stream.Free;
         end;
      end;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
end;

procedure Tadm_stmenuchat.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_stmenuchat.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_stmenuchat.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_stmenuchat.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_stmenuchat.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_stmenuchat.Left:= adm_stmenuchat.Left-(mv_mouse.x-x);
      adm_stmenuchat.Top:= adm_stmenuchat.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_stmenuchat.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_stmenuchat.Left := adm_stmenuchat.Left - (mv_mouse.x -x);
      adm_stmenuchat.Top := adm_stmenuchat.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_stmenuchat.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_stmenuchat.bt_maximizaClick(Sender: TObject);
begin
    if adm_stmenuchat.WindowState=wsMaximized then adm_stmenuchat.WindowState:=wsNormal
    else adm_stmenuchat.WindowState:=wsMaximized;
end;

procedure Tadm_stmenuchat.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_sobre.Left:=bt_maximiza.Left-15;
    Edit_search.Width:= CoolBar2.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
    Panel_cnt.Left:=PageControl_processos.Width-Panel_cnt.Width;
end;

procedure Tadm_stmenuchat.bt_clearClick(Sender: TObject);
begin
    if hwsf.BtConfirma('Limpar formulário de envio de mensagem?') then begin
       re_editor.Clear;
       re_editor.SetFocus;
    end;
end;

procedure Tadm_stmenuchat.bt_sendClick(Sender: TObject);
begin
      sendmensa;
end;

procedure Tadm_stmenuchat.sendmensa;
var axcod_rmt,axcod_dto,xind_progress : integer;
    dtenviomsg: TDateTime;
    axshowing: bool;
    xcount_progress: Real;
begin
     if processoand then exit;
     processoand:=true;
     if lbcp6.Items.Count=0 then begin
        hwsf.BtMensagem('É necessário o cadastro de um usuário para o Suporte Técnico.');
        processoand:=false;
        exit;
     end;
     if lbcp6.Items.Count>0 then begin
        if lbcp6.ItemIndex<0 then lbcp6.ItemIndex:=0;
     end;
     axcod_rmt:=StrtoInt(lbcp5.Text);

     if re_editor.Lines.Text='' then begin
        hwsf.BtMensagem('É necessário digitar a mensagem.');
        re_editor.SetFocus;
        processoand:=false;
        exit;
     end;

     if lbcp4.Items.Count<=1 then begin
        if RadioButton1.Checked then hwsf.BtMensagem('Não existem usuários cadastrados para o website.')
        else hwsf.BtMensagem('Não existem administradores cadastrados para o setor.');
        lbcp_ax2.SetFocus;
        processoand:=false;
        exit;
     end;
     axcod_dto:=0;
     dtenviomsg:=Now;
     axshowing:=loadx.Showing;
     if not axshowing then loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Enviando mensagem';
     try if not axshowing then loadx.Show; except end;
     try loadx.Update; except end;
     loadx.Progressloading.position:=0;
     if lbcp4.ItemIndex>0 then begin
        loadx.Progressloading.position:=25;
        If RadioButton1.Checked then begin
           if dm.ds_sql7.Locate('codigo',lbcp3.Text,[]) then
              axcod_dto:=dm.ds_sql7.fieldbyname('codigo').AsInteger;
        end else begin
           if dm.ds_sql5.Locate('codigo',lbcp3.Text,[]) then
              axcod_dto:=dm.ds_sql5.fieldbyname('codigo').AsInteger;
        end;
        loadx.Progressloading.position:=60;
        if axcod_dto=0 then begin
           loadx.Close;
           hwsf.BtMensagem('É necessário selecionar o destinatário.');
           lbcp4.SetFocus;
           processoand:=false;
           exit;
        end;
        if (RadioButton2.Checked) and (axcod_rmt=axcod_dto) then begin
           loadx.Close;
           hwsf.BtMensagem('Remetente e destinatário iguais.');
           lbcp4.SetFocus;
           processoand:=false;
           exit;
        end;
        loadx.Progressloading.position:=90;
        if RadioButton1.Checked then enviarmensagem(axcod_rmt,axcod_dto,0,true,false,dtenviomsg)
        else enviarmensagem(axcod_rmt,axcod_dto,0,true,true,dtenviomsg);
     end else begin
        If RadioButton1.Checked then begin
           With dm.ds_sql7 do begin
                try xcount_progress:=90/RecordCount;
                except xcount_progress:=50; end;
                xind_progress:=1;
                First;
                While not Eof do begin
                    loadx.Progressloading.position:=StrtoInt(Formatfloat('0',xcount_progress*xind_progress));
                    Inc(xind_progress);
                    axcod_dto:=FieldByName('codigo').AsInteger;
                    enviarmensagem(axcod_rmt,axcod_dto,0,true,false,dtenviomsg);
                    Next;
                end;
           end;
        end else begin
           With dm.ds_sql5 do begin
                try xcount_progress:=90/RecordCount;
                except xcount_progress:=50; end;
                xind_progress:=1;
                First;
                While not Eof do begin
                    loadx.Progressloading.position:=StrtoInt(Formatfloat('0',xcount_progress*xind_progress));
                    Inc(xind_progress);
                    if axcod_rmt<>FieldByName('codigo').AsInteger then begin
                       axcod_dto:=FieldByName('codigo').AsInteger;
                       enviarmensagem(axcod_rmt,axcod_dto,0,true,true,dtenviomsg);
                    end;
                    Next;
                end;
           end;
        end;
     end;
     re_mensa.Lines.Add('De '+lbcp6.Text+' para '+lbcp4.Text+' '+DateTimeToStr(dtenviomsg)+':');
     re_editor.SelectAll;
     re_editor.CopyToClipboard;
     re_editor.Clear;
     re_mensa.ReadOnly:=false;
     re_mensa.PasteFromClipboard;
     re_mensa.ReadOnly:=true;
     re_mensa.Lines.Add('');
     loadx.Progressloading.position:=100;
     loadx.lbloading.Caption:='Mensagem enviada com sucesso';
     loadx.lbloading.Repaint;
     Sleep(500);
     loadx.Close;
     processoand:=false;
end;

procedure Tadm_stmenuchat.enviarmensagem(cod_rmt,cod_dto,xstatus:integer; xconf1,xconf2:Boolean; hst_up: TDateTime);
var  axcod: Integer;
     st_stream: TMemoryStream;
begin
        axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf08,37249),1);
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf08,37249)+' (codigo,cod_rmt,xconf1,cod_dto,xconf2,xmensa,hst_up,hst_down,xstatus) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,'+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',hst_up)+#39+','+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',hst_up)+#39+',:p6)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=cod_rmt;
            Params[2].AsString:=BoolToStr(xconf1);
            Params[3].AsInteger:=cod_dto;
            Params[4].AsString:=BoolToStr(xconf2);
            Try
                xchr:=HexToInt(Inttostr(axcod)+Inttostr(cod_rmt)+Inttostr(cod_dto)+DateTimetoStr(hst_up));
                st_stream := TMemoryStream.Create;
                re_editor.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[5].LoadFromStream(EnDecryptStream(st_stream,xchr),ftBlob);
            Finally
                st_stream.Free;
            End;
            Params[6].AsInteger:=xstatus;
            try
                Execute;
            except
                hwsf.BtMensagem('Ocorreu algum erro ao enviar mensagem.');
                exit;
            end;
        end;
end;

function Tadm_stmenuchat.updatemensagem(xcodmsg,xstatus:integer; hst_up,hst_down: TDateTime): Boolean;
begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf08,37249)+' set hst_up='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',hst_up)+#39+', hst_down='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',hst_down)+#39+', xstatus=:p0 '+
                       'WHERE codigo=:p1';
            Params[0].AsInteger:=xstatus;
            Params[1].AsInteger:=xcodmsg;
            try
                Execute;
            except
                Result:=false;
                hwsf.BtMensagem('Ocorreu algum erro.');
                exit;
            end;
        end;
        Result:=true;
end;

procedure Tadm_stmenuchat.filtrar_reg;
begin
     if ComboBox_search.ItemIndex<0 then exit;
     if Edit_search.Text='' then begin
        dm.ds_sql3.Filter:='';
     end else begin
        if tp_search[ComboBox_search.ItemIndex]=1 then
           dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+' LIKE '+QuotedStr(Edit_search.Text+'%')
        else dm.ds_sql3.filter:= cp_search[ComboBox_search.ItemIndex]+'='+QuotedStr(Edit_search.Text);
     end;
end;

procedure Tadm_stmenuchat.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_stmenuchat.PageControl_processosChange(Sender: TObject);
begin
      Case PageControl_processos.TabIndex of
          0: begin
             GroupBox_msg.Caption:='Enviar mensagem:';
             pn_detail.Visible:=false;
             pn_cc.Visible:=true;
             ToolBar1.Visible:=true;
             CoolBar1.Visible:=true;
             re_editor.ReadOnly:=false;
             lb_codmsg.Visible:=false;
             re_editor.Clear;
          end;
          1: begin
             GroupBox_msg.Caption:='Detalhes da mensagem selecionada:';
             pn_detail.Visible:=true;
             pn_cc.Visible:=false;
             ToolBar1.Visible:=false;
             CoolBar1.Visible:=false;
             re_editor.ReadOnly:=true;
             lb_codmsg.Visible:=true;
             //lista de mensagens
             With dm.ds_sql3 do begin
                if not Active then begin
                   CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf08,37249)+' ORDER BY codigo';
                   Open;
                   Filter:='';
                   Filtered:=true;
                end else begin
                   Close;
                   Open;
                end;
             end;
             montacc_filtro(0);
             montasolicitacoes;
          end;
      End;
end;

procedure Tadm_stmenuchat.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tadm_stmenuchat.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor.CutToClipboard;
end;

procedure Tadm_stmenuchat.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor.CopyToClipboard;
end;

procedure Tadm_stmenuchat.Colar1Click(Sender: TObject);
begin
     //colar
     re_editor.PasteFromClipboard;
end;

procedure Tadm_stmenuchat.Fonte1Click(Sender: TObject);
begin
     //formatar fontes
     FontDialog1.Font.Assign(re_editor.SelAttributes);
     if FontDialog1.Execute then
        CurrText.Assign(FontDialog1.Font);
     SelectionChange(Self);
     re_editor.SetFocus;
end;

procedure Tadm_stmenuchat.Cor1Click(Sender: TObject);
begin
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tadm_stmenuchat.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tadm_stmenuchat.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tadm_stmenuchat.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tadm_stmenuchat.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor.Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tadm_stmenuchat.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Tadm_stmenuchat.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Tadm_stmenuchat.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Tadm_stmenuchat.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Tadm_stmenuchat.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tadm_stmenuchat.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tadm_stmenuchat.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tadm_stmenuchat.SelectionChange(Sender: TObject);
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

procedure Tadm_stmenuchat.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure Tadm_stmenuchat.FormShow(Sender: TObject);
begin
      if axrespinitx then begin
         if lbcp6.Items.Count>0 then begin
            lbcp6.ItemIndex:=0;
            if dm.ds_sql2.Locate('descricao',lbcp6.Text,[]) then begin
               lbcp5.Text:=dm.ds_sql2.fieldbyname('codigo').AsString;
               if StrToBool(dm.ds_sql2.fieldbyname('xconf').AsString) then
                  TabSheet_anexos.TabVisible:=True
               else TabSheet_anexos.TabVisible:=False;
            end;
            axrespinitx:=false;
            atualizaultimoacesso(EnDecryptString(Helpdesk.vrf01,37249),StrtoInt(st_receive_msg.Strings[0]));
         end else begin
            hwsf.BtMensagem('Nenhum usuário para o Chat cadastrado, contate o Administrador.');
            xdestruirjanela:=true;
            TrayIconini.Active := False;
            If TrayIconini <> Nil then FreeAndNil(TrayIconini);
            Application.Terminate;
         end;
      end;
      UpdateCursorPos;
      DragAcceptFiles(Handle, True);
end;

procedure Tadm_stmenuchat.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65: (Sender as TRichEdit).SelectAll;
  end;
end;

function Tadm_stmenuchat.CurrText: TRxTextAttributes;
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

procedure Tadm_stmenuchat.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure Tadm_stmenuchat.SetEditRect;
var
  R: TRect;
begin
  with re_editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tadm_stmenuchat.UpdateCursorPos;
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

procedure Tadm_stmenuchat.bt_msg1Click(Sender: TObject);
begin
      if OpenDialog.Execute then begin
         re_mensa.Lines.LoadFromFile(OpenDialog.FileName);
      end;
end;

procedure Tadm_stmenuchat.bt_importClick(Sender: TObject);
begin
      if OpenDialog.Execute then begin
         re_editor.Lines.LoadFromFile(OpenDialog.FileName);
      end;
end;

procedure Tadm_stmenuchat.bt_msg2Click(Sender: TObject);
begin
      if SaveDialog.Execute then begin
         re_mensa.Lines.SaveToFile(SaveDialog.FileName);
      end;
end;

procedure Tadm_stmenuchat.bt_exportClick(Sender: TObject);
begin
      if SaveDialog.Execute then begin
         re_editor.Lines.SaveToFile(SaveDialog.FileName);
      end;
end;

procedure Tadm_stmenuchat.bt_msg3Click(Sender: TObject);
begin
    re_mensa.Clear;
end;

procedure Tadm_stmenuchat.bt_msg4Click(Sender: TObject);
begin
    //localizar
    //re_FindDialog.Execute;
    if TrayIconini.Animate then TrayIconini.Animate:=false else
    TrayIconini.Animate:=true;
end;

procedure Tadm_stmenuchat.montacc(xtipo:byte);
var axshowing: bool;
begin
      axshowing:=loadx.Showing;
      if not axshowing then loadx := Tloadx.Create(Application);
      loadx.lbloading.Caption:='Lista de usuários';
      try if not axshowing then loadx.Show; except end;
      try loadx.Update; except end;
      loadx.Progressloading.position:=0;
      Case xtipo of
          0: begin
             lbax1.Caption:='Selecione o website';
             lbax2.Caption:='Selecione o usuário';
             //monta lista websites
             lbcp_ax2.Clear;
             lbcp_ax2.Items.Add('Todos');
             With dm.ds_sql6 do begin
                 Close;
                 Open;
                 First;
                 While not Eof do begin
                      lbcp_ax2.Items.Add(fieldbyname('website').AsString);
                      Next;
                 end;
             end;
             lbcp_ax1.Text:='';
             lbcp_ax2.ItemIndex:=0;
             montausuarios('todos',0);
          end;
          1: begin
             lbax1.Caption:='Selecione o setor';
             lbax2.Caption:='Selecione o usuário';
             //monta setores
             lbcp_ax2.Clear;
             lbcp_ax2.Items.Add('Todos');
             With dm.executa7 do begin
                 Close;
                 Open;
                 First;
                 While not Eof do begin
                      lbcp_ax2.Items.Add(fieldbyname('descricao').AsString);
                      Next;
                 end;
             end;
             lbcp_ax1.Text:='';
             lbcp_ax2.ItemIndex:=0;
             montaresponsaveis('todos',0);
          end;
      End;
      loadx.Close;
end;

procedure Tadm_stmenuchat.montausuarios(cod_web: String; cod_usr: Integer);
var axindcount,axindusr: integer;
    xcount_progress: Real;
    xind_progress: Integer;
    axshowing: bool;
begin
     Try
     axshowing:=loadx.Showing;
     if not axshowing then loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Lista de usuários';
     try if not axshowing then loadx.Show; except end;
     try loadx.Update; except end;
     loadx.Progressloading.position:=0;
     axindusr:=0;
     axindcount:=0;
     if cod_web='' then cod_web:='0';
     With dm.ds_sql7 do begin
          if LowerCase(cod_web)='todos' then Filter:=''
          else Filter:='cod_web='+#39+cod_web+#39;
          lbcp4.Clear;
          Close;
          Open;
          if RecordCount > 0 then begin
             lbcp4.Items.Add('Todos');
             First;
             try xcount_progress:=100/RecordCount;
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
          end else lbcp4.Items.Add('Nenhum cadastrado');
          lbcp4.ItemIndex:=axindusr;
          filtrasnameusr;
     end;
     Finally
         if not axshowing then loadx.Close;
     End;
end;

procedure Tadm_stmenuchat.filtrasnameusr;
var xlocusr : boolean;
begin
     xlocusr:=false;
     if lbcp4.Text<>'' then begin
        With dm.ds_sql7 do begin
           First;
           While not Eof do begin
               if Fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString=lbcp4.Text then begin
                  lbcp3.Text:=Fieldbyname('codigo').AsString;
                  if LowerCase(lbcp_ax2.Text)<>'todos' then
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

procedure Tadm_stmenuchat.montaresponsaveis(cod_setor: String; cod_resp: Integer);
var axindcount,axindusr: integer;
    xcount_progress: Real;
    xind_progress: Integer;
    axshowing: bool;
begin
     Try
     axshowing:=loadx.Showing;
     if not axshowing then loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Lista de usuários';
     try if not axshowing then loadx.Show; except end;
     try loadx.Update; except end;
     loadx.Progressloading.position:=0;
     axindusr:=0;
     axindcount:=0;
     if cod_setor='' then cod_setor:='0';
     With dm.ds_sql5 do begin
          if LowerCase(cod_setor)='todos' then Filter:=''
          else Filter:='cod_set='+#39+cod_setor+#39;
          lbcp4.Clear;
          Close;
          Open;
          if RecordCount > 0 then begin
             lbcp4.Items.Add('Todos');
             First;
             try xcount_progress:=100/RecordCount;
             except xcount_progress:=50 end;
             if xcount_progress >= 100 then xcount_progress:=1;
             xind_progress:=1;
             While not Eof do begin
                 loadx.Progressloading.position:=StrtoInt(Formatfloat('0',xcount_progress*xind_progress));
                 Inc(xind_progress);
                 if FieldByName('codigo').AsInteger=cod_resp then axindusr:=axindcount;
                 Inc(axindcount);
                 lbcp4.Items.Add(fieldbyname('descricao').AsString);
                 Next;
             end;
          end else lbcp4.Items.Add('Nenhum cadastrado');
          lbcp4.ItemIndex:=axindusr;
          filtrasnameresp;
     end;
     Finally
         if not axshowing then loadx.Close;
     End;
end;

procedure Tadm_stmenuchat.filtrasnameresp;
begin
     if dm.ds_sql5.Locate('descricao',lbcp4.Text,[]) then begin
        if LowerCase(lbcp_ax2.Text)<>'todos' then
           lbcp_ax1.Text:=dm.ds_sql5.fieldbyname('cod_set').AsString;
        lbcp3.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_stmenuchat.RadioButton1Click(Sender: TObject);
begin
      montacc(0);
end;

procedure Tadm_stmenuchat.RadioButton2Click(Sender: TObject);
begin
      montacc(1);
end;

procedure Tadm_stmenuchat.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_stmenuchat.lbcp_ax2Change(Sender: TObject);
begin
     If RadioButton1.Checked then begin
        if dm.ds_sql6.Locate('website',lbcp_ax2.Text,[]) then lbcp_ax1.Text:=dm.ds_sql6.fieldbyname('codigo').AsString
        else lbcp_ax1.Text:='';
        if LowerCase(lbcp_ax2.Text)='todos' then montausuarios('todos',0)
        else if (lbcp3.Text<>'') and (lbcp4.Text<>'') then montausuarios(lbcp_ax1.Text,StrtoInt(lbcp3.Text))
        else montausuarios(lbcp_ax1.Text,0);
     end else begin
        if dm.executa7.Locate('descricao',lbcp_ax2.Text,[]) then lbcp_ax1.Text:=dm.executa7.fieldbyname('codigo').AsString
        else lbcp_ax1.Text:='';
        if LowerCase(lbcp_ax2.Text)='todos' then montaresponsaveis('todos',0)
        else if (lbcp3.Text<>'') and (lbcp4.Text<>'') then montaresponsaveis(lbcp_ax1.Text,StrtoInt(lbcp3.Text))
        else montaresponsaveis(lbcp_ax1.Text,0);
     end;
end;

procedure Tadm_stmenuchat.lbcp_ax1Change(Sender: TObject);
begin
     If RadioButton1.Checked then begin
        if lbcp_ax1.Text <> '' then
        if dm.ds_sql6.Locate('codigo',lbcp_ax1.Text,[]) then begin
           lbcp_ax2.Text:=dm.ds_sql6.fieldbyname('website').AsString;
        end else lbcp_ax2.Text:='';
     end else begin
        if lbcp_ax1.Text <> '' then
        if dm.executa7.Locate('codigo',lbcp_ax1.Text,[]) then begin
           lbcp_ax2.Text:=dm.executa7.fieldbyname('descricao').AsString;
        end else lbcp_ax2.Text:='';
     end;
end;

procedure Tadm_stmenuchat.lbcp4Change(Sender: TObject);
begin
     if RadioButton1.Checked then filtrasnameusr
     else filtrasnameresp;
end;

procedure Tadm_stmenuchat.lbcp3Change(Sender: TObject);
begin
     If RadioButton1.Checked then begin
        if lbcp3.Text <> '' then
        if dm.ds_sql7.Locate('codigo',lbcp3.Text,[]) then begin
           lbcp4.Text:=dm.ds_sql7.fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString;
           if LowerCase(lbcp_ax2.Text)<>'todos' then
              lbcp_ax1.Text:=dm.ds_sql7.fieldbyname('cod_web').AsString;
        end else lbcp4.Text:='';
     end else begin
        if lbcp3.Text <> '' then
        if dm.ds_sql5.Locate('codigo',lbcp3.Text,[]) then begin
           lbcp4.Text:=dm.ds_sql5.fieldbyname('descricao').AsString;
           if LowerCase(lbcp_ax2.Text)<>'todos' then
              lbcp_ax1.Text:=dm.ds_sql5.fieldbyname('cod_set').AsString;
        end else lbcp4.Text:='';
     end;
end;

procedure Tadm_stmenuchat.bt_detail1Click(Sender: TObject);
begin
     if RadioButton1.Checked then detail_entidades(lbcp3.Text,lbcp4.Text,lbcp_ax1.Text,lbcp_ax2.Text,dm.ds_sql7)
     else detail_setor(lbcp_ax1.Text,lbcp_ax2.Text);
end;

procedure Tadm_stmenuchat.bt_detail6Click(Sender: TObject);
begin
     if RadioButton1.Checked then detail_entidades(lbcp3.Text,lbcp4.Text,lbcp_ax1.Text,lbcp_ax2.Text,dm.ds_sql7)
     else detail_responsavel(lbcp3.Text,lbcp4.Text,dm.ds_sql5);
end;

procedure Tadm_stmenuchat.detail_entidades(axvar_cod,axvar_desc,axvar_cod2,axvar_desc2:string; xdata: TClientDataSet);
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

procedure Tadm_stmenuchat.detail_responsavel(axvar_cod,axvar_desc:string; xdata: TClientDataSet);
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

procedure Tadm_stmenuchat.detail_setor(axvar_cod,axvar_desc:string);
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

procedure Tadm_stmenuchat.db_solicitacoesTitleClick(Column: TColumn);
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

procedure Tadm_stmenuchat.montasolicitacoes;
var axfiltro_test,axfiltro1,axfiltro2:string;
    axshowing: bool;
begin
     Try
     axshowing:=loadx.Showing;
     if not axshowing then loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Mensagens';
     try if not axshowing then loadx.Show; except end;
     try loadx.Update; except end;
     loadx.Progressloading.position:=0;
     axfiltro1:='';
     axfiltro_test:='';
     Case filtramsg1.ItemIndex of
          1: if dm.ds_sql4.Locate('descricao',filtramsg2.Text,[]) then begin
                axfiltro_test:=dm.ds_sql4.fieldbyname('codigo').AsString;
          end;
          2: begin
             With dm.ds_sql8 do begin
                First;
                While not Eof do begin
                    if Fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString=filtramsg2.Text then begin
                       axfiltro_test:=Fieldbyname('codigo').AsString;
                       break;
                    end;
                    Next;
                end;
             end;
          end;
     End;
     if axfiltro_test <> '' then begin
        Case filtramsg3.ItemIndex of
             0: axfiltro1:='(cod_rmt='+#39+axfiltro_test+#39+' OR cod_dto='+#39+axfiltro_test+#39+')';
             1: axfiltro1:='cod_rmt='+#39+axfiltro_test+#39;
             2: axfiltro1:='cod_dto='+#39+axfiltro_test+#39;
        End;
     end;
     if filtramsg4.ItemIndex>0 then begin
       if axfiltro1<>'' then axfiltro1:=axfiltro1+' AND '
       else axfiltro1:=axfiltro1+' ';
       axfiltro1:=axfiltro1+'xstatus='+#39+InttoStr(filtramsg4.ItemIndex-1)+#39;
     end;
     if filtramsg5.ItemIndex>0 then begin
       if axfiltro1<>'' then axfiltro1:=axfiltro1+' AND '
       else axfiltro1:=axfiltro1+' ';
       Case filtramsg5.ItemIndex of
            1: axfiltro1:=axfiltro1+'xconf1='+#39+'0'+#39;
            2: axfiltro1:=axfiltro1+'xconf1='+#39+'-1'+#39;
       End;
     end;
     if filtramsg6.ItemIndex>0 then begin
       if axfiltro1<>'' then axfiltro1:=axfiltro1+' AND '
       else axfiltro1:=axfiltro1+' ';
       Case filtramsg6.ItemIndex of
            1: axfiltro1:=axfiltro1+'xconf1='+#39+'0'+#39;
            2: axfiltro1:=axfiltro1+'xconf1='+#39+'-1'+#39;
       End;
     end;
     if axfiltro1<>'' then axfiltro1:=' WHERE '+axfiltro1;
     loadx.Progressloading.position:=75;
     With dm.ds_sql3 do begin
          if CommandText<>axfiltro1 then begin
            if Active then begin
               axfiltro2:=Filter;
               Close;
            end else begin
               axfiltro2:='';
            end;
            CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf08,37249)+
            axfiltro1+' order by '+ordem_dbsolicitacoes;
            Open;
            Filter:=axfiltro2;
            Filtered:=true;
          end;
          Lb_countreg.Caption:=Inttostr(RecordCount);
     end;
     loadx.Progressloading.position:=100;
     Finally
         if not axshowing then loadx.Close;
     End;
     atualiza_grade;
end;

procedure Tadm_stmenuchat.Edit_searchChange(Sender: TObject);
begin
     if autofiltro_checkbox.Checked then filtrar_reg;
end;

procedure Tadm_stmenuchat.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        if autofiltro_checkbox.Checked then filtrar_reg;
     end;
end;

procedure Tadm_stmenuchat.Edit_searchKeyPress(Sender: TObject;
  var Key: Char);
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

procedure Tadm_stmenuchat.filtramsg1Change(Sender: TObject);
begin
      filtramsg2.Text:='';
      Case filtramsg1.ItemIndex of
          0: begin
             filtramsg2.Clear;
             if autofiltro_checkbox.Checked then montasolicitacoes;
          end;
          1: montacc_filtro(0);
          2: montacc_filtro(1);
      End;
end;

procedure Tadm_stmenuchat.filtramsg2Change(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then
      Case filtramsg1.ItemIndex of
          1: if dm.ds_sql4.Locate('descricao',filtramsg2.Text,[]) then begin
                montasolicitacoes;
          end;
          2: begin
             With dm.ds_sql8 do begin
                First;
                While not Eof do begin
                    if Fieldbyname('decode(usuario,'+#39+cv+#39+')').AsString=filtramsg2.Text then begin
                       montasolicitacoes;
                       break;
                    end;
                    Next;
                end;
             end;
          end;
     End;
end;

procedure Tadm_stmenuchat.filtramsg3Change(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_stmenuchat.filtramsg4Change(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_stmenuchat.filtramsg5Change(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_stmenuchat.filtramsg6Change(Sender: TObject);
begin
      if autofiltro_checkbox.Checked then montasolicitacoes;
end;

procedure Tadm_stmenuchat.bt_hst4Click(Sender: TObject);
begin
      autofiltro_checkbox.Checked:=false;
      filtramsg1.ItemIndex:=1;
      montacc_filtro(0);
      filtramsg3.ItemIndex:=0;
      filtramsg4.ItemIndex:=0;
      filtramsg5.ItemIndex:=0;
      filtramsg6.ItemIndex:=0;
      montasolicitacoes;
end;

procedure Tadm_stmenuchat.lbcp6Change(Sender: TObject);
begin
     if dm.ds_sql2.Locate('descricao',lbcp6.Text,[]) then begin
        lbcp5.Text:=dm.ds_sql2.fieldbyname('codigo').AsString;
        atualiza_lista_msg(false);
     end else lbcp5.Text:='';
end;

procedure Tadm_stmenuchat.atualiza_lista_msg(xlocate:bool);
begin
      st_receive_msg.Clear;
      st_receive_msg2.Clear;
      if rb_receive1.Checked then begin
         if xlocate then begin
            if dm.ds_sql2.Locate('codigo',lbcp5.Text,[]) then begin
               st_receive_msg.Add(lbcp5.Text);
               st_receive_msg2.Add(lbcp6.Text);
            end;
         end else begin
            st_receive_msg.Add(lbcp5.Text);
            st_receive_msg2.Add(lbcp6.Text);
         end;
      end else begin
         st_receive_msg.Assign(st_receive_resp);
         st_receive_msg2.Assign(st_receive_resp2);
      end;
end;

procedure Tadm_stmenuchat.lbcp5Change(Sender: TObject);
begin
      if lbcp5.Text <> '' then
      if dm.ds_sql2.Locate('codigo',lbcp5.Text,[]) then begin
         lbcp6.Text:=dm.ds_sql2.fieldbyname('descricao').AsString;
         atualiza_lista_msg(false);
      end else lbcp6.Text:='';
end;

procedure Tadm_stmenuchat.autofiltro_buttonClick(Sender: TObject);
begin
      montasolicitacoes;
end;

procedure Tadm_stmenuchat.bt_hst2Click(Sender: TObject);
begin
    if processoand then exit;
    if (dm.ds_sql3.RecordCount>0) then begin
        if dm.deleta_reg(EnDecryptString(Helpdesk.vrf08,37249),'codigo',dm.ds_sql3.fieldbyname('codigo').AsString,true) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
        end;
    end;
end;

procedure Tadm_stmenuchat.bt_hst1Click(Sender: TObject);
begin
    if processoand then exit;
    if (dm.ds_sql3.RecordCount>0) then begin
        if dm.ds_sql3.fieldbyname('xstatus').AsInteger>1 then hwsf.BtMensagem('Mensagem já está marcada como exluída')
        else if updatemensagem(dm.ds_sql3.fieldbyname('codigo').AsInteger,(dm.ds_sql3.fieldbyname('xstatus').AsInteger+2),dm.ds_sql3.fieldbyname('hst_up').AsDateTime,Now) then begin
           dm.ds_sql3.Close;
           dm.ds_sql3.Open;
           atualiza_grade;
           hwsf.BtMensagem('Mensagem marcada como excluída.');
        end;
    end;
end;

procedure Tadm_stmenuchat.bt_hst3Click(Sender: TObject);
var axshowing: bool;
begin
    if processoand then exit;
    processoand:=true;
    if (dm.ds_sql3.RecordCount>0) then begin
        if hwsf.BtConfirma('CUIDADO!!! Tem certeza que desejas limpar mensagens listadas?') then begin
           db_solicitacoes.Enabled:=false;
           axshowing:=loadx.Showing;
           if not axshowing then loadx := Tloadx.Create(Application);
           loadx.lbloading.Caption:='Limpando Mensagens';
           try if not axshowing then loadx.Show; except end;
           try loadx.Update; except end;
           loadx.Progressloading.position:=0;
           With dm.ds_sql3 do begin
                First;
                While not Eof do begin
                   dm.deleta_reg(EnDecryptString(Helpdesk.vrf08,37249),'codigo',dm.ds_sql3.fieldbyname('codigo').AsString,false);
                   Next;
                end;
                Close;
                Open;
           end;
           db_solicitacoes.Enabled:=true;
           loadx.Close;
           atualiza_grade;
           hwsf.BtMensagem('Mensagens eliminadas com sucesso.');
        end;
    end;
    processoand:=false;
end;

procedure Tadm_stmenuchat.re_FindDialogFind(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
begin
  with re_mensa do begin
    if SelLength <> 0 then StartPos := SelStart + SelLength
    else StartPos := 0;
    ToEnd := Length(Text) - StartPos;
    FoundAt := FindText(re_FindDialog.FindText, StartPos, ToEnd, [stMatchCase]);
    if FoundAt <> -1 then begin
      SetFocus;
      SelStart := FoundAt;
      SelLength := Length(re_FindDialog.FindText);
    end;
  end;
end;

procedure Tadm_stmenuchat.bt_substClick(Sender: TObject);
begin
      //localizar e substituir
      re_ReplaceDialog.Execute;
end;

procedure Tadm_stmenuchat.re_ReplaceDialogFind(Sender: TObject);
var FoundAt: LongInt;
    StartPos, ToEnd: Integer;
begin
  with re_editor do begin
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

procedure Tadm_stmenuchat.re_ReplaceDialogReplace(Sender: TObject);
var SelPos: Integer;
begin
  with TReplaceDialog(Sender) do begin
    SelPos := Pos(FindText, re_editor.Lines.Text);
    if SelPos > 0 then begin
      re_editor.SelStart := SelPos - 1;
      re_editor.SelLength := Length(FindText);
      re_editor.SelText := ReplaceText;
    end;  // else hwsf.BtMensagem('Texto não localizado.'); //'+FindText+'
  end;
end;

procedure Tadm_stmenuchat.ApplicationEvents1Minimize(Sender: TObject);
begin
      ShowWindow(Application.Handle, SW_HIDE );
end;

procedure Tadm_stmenuchat.FormDestroy(Sender: TObject);
begin
        If TrayIconini <> Nil Then FreeAndNil(TrayIconini);
        adm_stmenuchat := Nil;
end;

procedure Tadm_stmenuchat.Finalizar1Click(Sender: TObject);
begin
      try
      if hwsf.BtConfirma('Finalizar HWSstChat?') then begin
         xdestruirjanela:=true;
         TrayIconini.Active := False;
         If TrayIconini <> Nil then FreeAndNil(TrayIconini);
         Application.Terminate;
      end else xdestruirjanela:=false;
      Except End;
end;

procedure Tadm_stmenuchat.Minimizar1Click(Sender: TObject);
begin
      try Close; Except End;
end;

procedure Tadm_stmenuchat.Sobre1Click(Sender: TObject);
begin
      try hwsf.BtSobre; Except End;
end;

procedure Tadm_stmenuchat.Maximizar1Click(Sender: TObject);
begin
      try
      ShowWindow(Application.Handle,SW_RESTORE);
      SetForegroundWindow(Application.Handle);
      Except End;
end;

procedure Tadm_stmenuchat.db_timerTimer(Sender: TObject);
begin
      atualizarmensa;
end;

procedure Tadm_stmenuchat.atualizarmensa;
var xreceivecount: Integer;
    xreceivecco,xreceivecco2: string;
    xchegoumsg: bool;
begin
      if processoand then exit;
      if lbcp5.Text='' then exit;
      Try
        xchegoumsg:=false;
        for xreceivecount:=0 to (st_receive_msg.Count-1) do begin
          //receber mensagens
          With dm.executa3 do begin
               CommandText:='SELECT * FROM '+EnDecryptString(Helpdesk.vrf08,37249)+
               ' WHERE cod_dto='+#39+st_receive_msg.Strings[xreceivecount]+#39+' AND xconf2='+BooltoStr(True)+' AND xstatus='+#39+'0'+#39+
               ' ORDER BY hst_up';
               Open;
               //Filter:='cod_dto='+#39+st_receive_msg.Strings[xreceivecount]+#39;
               Close;
               Open;
               First;
               While not Eof do begin
                   //load cabeçalho
                   xreceivecco:='';
                   if StrToBool(FieldByName('xconf1').AsString) then begin
                      if dm.ds_sql4.Locate('codigo',FieldByName('cod_rmt').AsString,[]) then begin
                         if dm.executa7.Locate('codigo',dm.ds_sql4.FieldByName('cod_set').AsString,[]) then
                            xreceivecco2:=dm.executa7.FieldByName('descricao').AsString;
                         xreceivecco:=dm.ds_sql4.FieldByName('descricao').AsString+' ('+xreceivecco2+')';
                         xreceivecco2:='';
                      end;
                   end else begin
                      if dm.ds_sql8.Locate('codigo',FieldByName('cod_rmt').AsString,[]) then begin
                         xreceivecco:=dm.ds_sql8.FieldByName('decode(A.usuario,'+#39+cv+#39+')').AsString+' ('+dm.ds_sql8.FieldByName('nome').AsString+')';
                         xreceivecco2:='('+dm.ds_sql8.FieldByName('razao_social').AsString+'/'+
                                           dm.ds_sql8.FieldByName('website').AsString+')';
                      end;
                   end;
                   re_mensa.Lines.Add('De '+xreceivecco+' para '+st_receive_msg2.Strings[xreceivecount]+' '+FieldByName('hst_up').AsString+':');
                   if xreceivecco2<>'' then
                      re_mensa.Lines.Add(xreceivecco2);
                   //load mensagem
                   xchr:=HexToInt(fieldbyname('codigo').AsString+fieldbyname('cod_rmt').AsString+fieldbyname('cod_dto').AsString+fieldbyname('hst_up').AsString);
                   st_stream_msg.Clear;
                   st_stream_msg.Seek(0,soFromBeginning);
                   TBlobField(FieldByName('xmensa')).SaveToStream(st_stream_msg);
                   st_stream_msg.Seek(0,soFromBeginning);
                   st_stream_msg:=EnDecryptStream(st_stream_msg,xchr);
                   st_stream_msg.Seek(0,soFromBeginning);
                   re_mensa_tmp.Lines.LoadFromStream(st_stream_msg);
                   //copia mensgem
                   re_mensa_tmp.SelectAll;
                   re_mensa_tmp.CopyToClipboard;
                   re_mensa_tmp.Clear;
                   re_mensa.ReadOnly:=false;
                   re_mensa.PasteFromClipboard;
                   re_mensa.ReadOnly:=true;
                   re_mensa.Lines.Add('');
                   //update registro mensa como lida
                   updatemensagem(fieldbyname('codigo').AsInteger,1,fieldbyname('hst_up').AsDateTime,Now);
                   //próximo
                   xchegoumsg:=true;
                   Next;
               end;
               Close;
          end;
        end;
        if xchegoumsg then begin
          if chk_avisar.Checked then begin
             ShowWindow(Application.Handle, SW_RESTORE );
             SetForegroundWindow( Application.Handle );
             PageControl_processos.TabIndex:=0;
          end;
          //re_mensa.SelLength := 0;
          //re_mensa.SelStart:= re_mensa.GetTextLen;
          //re_mensa.Perform( EM_SCROLLCARET, 0, 0 );
          re_mensa.SelStart:= re_mensa.GetTextLen;
        end;
        statconect(true);
      Except
        statconect(false);
      End;
end;

procedure Tadm_stmenuchat.rb_receive1Click(Sender: TObject);
begin
      atualiza_lista_msg(true);
end;

procedure Tadm_stmenuchat.rb_receive2Click(Sender: TObject);
begin
      atualiza_lista_msg(true);
end;

procedure Tadm_stmenuchat.Timer_logadoTimer(Sender: TObject);
begin
      atualizaultimoacesso(EnDecryptString(Helpdesk.vrf01,37249),StrtoInt(st_receive_msg.Strings[0]));
end;

function Tadm_stmenuchat.atualizaultimoacesso(xtabelaup: string; xcodigoup: Integer):Boolean;
begin
      if processoand then exit;
      With dm.executa5 do begin
           CommandText:='UPDATE '+xtabelaup+' SET xutl='+#39+FormatDateTime('yyyymmdd hh:mm:ss.000',Now)+#39+' WHERE codigo=:p0';
           Params[0].AsInteger:=xcodigoup;
           Try
              Execute;
              statconect(true);
           Except
              statconect(false);
              exit;
           End;
      end;
end;

procedure Tadm_stmenuchat.FormActivate(Sender: TObject);
begin
      if xshowin then begin
         xshowin:=false;
         close;
      end;
end;

procedure Tadm_stmenuchat.UpDown2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
      db_timer.Interval:=UpDown2.Position*1000;
      CheckBox1.Hint:='Receber mensagens a cada '+IntToStr(UpDown2.Position)+' segundos';
end;

procedure Tadm_stmenuchat.CheckBox1Click(Sender: TObject);
begin
      db_timer.Enabled:=CheckBox1.Enabled;
end;

procedure Tadm_stmenuchat.bt_atualizarClick(Sender: TObject);
begin
      atualizarmensa;
end;

procedure Tadm_stmenuchat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_F5 then sendmensa;
      if key=VK_F6 then atualizarmensa;
      if key=VK_ESCAPE then close;
      if (ssCtrl in Shift) and (Key=VK_DELETE) then re_editor.Clear;
end;

procedure Tadm_stmenuchat.re_mensaURLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
var axURLText: String;
begin
      if copy(URLText,1,7)='http://' then axURLText:=copy(URLText,8,Length(URLText))
      else axURLText:=URLText;
      JumpTo(axURLText);
end;

procedure Tadm_stmenuchat.UpDown3Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
      Timer_logado.Interval:=UpDown3.Position*1000;
      CheckBox2.Hint:='Enviar sinal on-line a cada '+IntToStr(UpDown3.Position)+' segundos';
end;

procedure Tadm_stmenuchat.statconect(xstatus: boolean);
begin
      if xstatus then begin
         if Label_cnt.Caption='Conectado' then exit;
         Label_cnt.Caption:='Conectado';
         Label_cnt.Font.Color:=clGreen;
         TrayIconini.Hint:='Chat - Suporte técnico'+#13+'Conectado';
         if re_mensa.Lines.Text<>'' then
            re_mensa.Lines.Add('');
         re_mensa.SelAttributes.Color:=clGreen;
         re_mensa.SelAttributes.Style:=[fsBold];
         re_mensa.Lines.Add('Chat conectado '+TimeToStr(Now));
         re_mensa.SelAttributes.Style:=[];
         re_mensa.SelAttributes.Color:=clBlack;
         re_mensa.Lines.Add('');
      end else begin
         if Label_cnt.Caption='Desconectado' then exit;
         Label_cnt.Caption:='Desconectado';
         Label_cnt.Font.Color:=clRed;
         TrayIconini.Hint:='Chat - Suporte técnico'+#13+'Desconectado';
         re_mensa.Lines.Add('');
         re_mensa.SelAttributes.Color:=clRed;
         re_mensa.SelAttributes.Style:=[fsBold];
         re_mensa.Lines.Add('Chat desconectado '+TimeToStr(Now));
         re_mensa.SelAttributes.Style:=[];
         re_mensa.SelAttributes.Color:=clBlack;
         re_mensa.Lines.Add('');
      end;
end;

procedure Tadm_stmenuchat.TrayIconiniClick(Sender: TObject);
begin
      try
      ShowWindow(Application.Handle,SW_RESTORE);
      SetForegroundWindow(Application.Handle);
      Except End;
end;

procedure Tadm_stmenuchat.CheckBox2Click(Sender: TObject);
begin
      Timer_logado.Enabled:=CheckBox2.Enabled;
end;

end.

