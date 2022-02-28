{###############################################################################
Programa: HWShelpdesk
Módulo: Cadastro de atividades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_webmenuchat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, Menus, ImgList, backup,
  TrayIcon, AppEvnts, XPMan, RxRichEd;


type
  Tadm_webmenuchat = class(TForm)
    Panel1: TPanel;
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
    re_FindDialog: TFindDialog;
    bt_subst: TSpeedButton;
    re_ReplaceDialog: TReplaceDialog;
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
    Label5: TLabel;
    Bevel1: TBevel;
    lbcp_ax1: TLabeledEdit;
    lbcp3: TLabeledEdit;
    lbcp4: TComboBox;
    lbcp_ax2: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    re_editor: TRxRichEdit;
    Panel3: TPanel;
    ToolBar3: TToolBar;
    Panel8: TPanel;
    ToolBar4: TToolBar;
    CheckBox1: TCheckBox;
    Edit_autorefresh: TEdit;
    UpDown2: TUpDown;
    Label13: TLabel;
    Panel10: TPanel;
    CheckBox2: TCheckBox;
    Edit_online: TEdit;
    UpDown3: TUpDown;
    Label11: TLabel;
    ToolBar6: TToolBar;
    chk_avisar: TCheckBox;
    re_mensa: TRxRichEdit;
    re_mensa_tmp: TRxRichEdit;
    bt_atualizar: TSpeedButton;
    bt_msg4: TSpeedButton;
    Label_cnt: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_clearClick(Sender: TObject);
    procedure bt_sendClick(Sender: TObject);
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
    procedure bt_importClick(Sender: TObject);
    procedure bt_exportClick(Sender: TObject);
    procedure bt_msg4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure lbcp_ax2Change(Sender: TObject);
    procedure lbcp_ax1Change(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
    procedure lbcp4Change(Sender: TObject);
    procedure lbcp3Change(Sender: TObject);
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
    cv,axnameresp : string;
    st_stream_msg : TMemoryStream;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    FUpdating: Boolean;
    xchr: Word;
    procedure montacc(xtipo:byte);
    procedure montausuarios(cod_web: String; cod_usr: Integer);
    procedure filtrasnameusr;
    procedure montaresponsaveis(cod_setor: String; cod_resp: Integer);
    procedure filtrasnameresp;
    procedure sendmensa;
    procedure enviarmensagem(cod_rmt,cod_dto,xstatus:integer; xconf1,xconf2:Boolean; hst_up: TDateTime);
    function updatemensagem(xcodmsg,xstatus:integer; hst_up,hst_down: TDateTime): Boolean;
    function atualizaultimoacesso:Boolean;
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
    procedure atualizarmensa;
    { Public declarations }
  end;

var
  adm_webmenuchat: Tadm_webmenuchat;

implementation
uses udm, hwsfunctions, RichEdit, DateUtils, ShellAPI;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

procedure Tadm_webmenuchat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if not xdestruirjanela then begin
     Action := caNone;
     Application.Minimize;
     end else begin
     st_stream_msg.Free;
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
     Action:=cafree;
     end;
end;

procedure Tadm_webmenuchat.FormCreate(Sender: TObject);
var axshowing: Boolean;
    ax_codent: string;
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
      Application.Title := AxDadosUsr.axtitle;
      adm_webmenuchat.Caption := AxDadosUsr.axtitle;
      TrayIconini.Icon:= hwsf.HiconToIcon;
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
     st_stream_msg := TMemoryStream.Create;

     loadx.Progressloading.position:=20;
     cv := 'B2d7485d9N';
     loadx.Progressloading.position:=30;
     //lista de usuários filtro
      With dm.ds_sql8 do begin
           CommandText:= 'SELECT DISTINCT A.codigo,A.usuario,A.cod_ent,A.cod_web,B.nome,B.cod_set,B.cod_ent,C.razao_social,C.fantasia,D.descricao FROM '+
                                 EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                                 EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                                 EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                                 EnDecryptString(Serverconect.vrf35,37249)+' D '+  //setor
                                 'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent '+
                                 'ORDER BY A.codigo';
           Open;
           filter:='';
           filtered:=false;
           if Locate('codigo',Serverconect.vrf00,[]) then begin
              axnameresp:=dm.ds_sql8.fieldbyname('nome').AsString;
              ax_codent:=dm.ds_sql8.fieldbyname('cod_ent_1').AsString;
           end;
      end;
     loadx.Progressloading.position:=40;
     //lista de setores colaboradores
     With dm.ds_sql6 do begin
          CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf35,37249)+' ORDER BY descricao';
          Open;
          filter:='';
          filtered:=true;
      end;
     //lista de usuarios
     With dm.ds_sql7 do begin
          CommandText:= 'SELECT DISTINCT A.codigo,A.usuario,A.cod_ent,A.cod_web,B.cod_ent FROM '+
                                EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                                EnDecryptString(Serverconect.vrf34,37249)+' B '+ //colaborador
                                'WHERE B.codigo=A.cod_ent AND B.cod_ent='+#39+ax_codent+#39;
          Open;
          filter:='';
          filtered:=true;
     end;
     loadx.Progressloading.position:=50;
     //setores
      With dm.ds_sql3 do begin
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
      loadx.Progressloading.position:=80;
      loadx.Progressloading.position:=90;
      //lista de responsáveis filtro
      With dm.ds_sql4 do begin
           CommandText:= 'SELECT * FROM '+EnDecryptString(Helpdesk.vrf01,37249)+' ORDER BY descricao';
           Open;
           filter:='';
           filtered:=false;
      end;
      loadx.Progressloading.position:=100;
      montacc(1);
      //atualiza_grade;
      if not axshowing then loadx.Close;
end;

procedure Tadm_webmenuchat.FormResize(Sender: TObject);
begin
    Label_cnt.Width:=ToolBar3.Width-171;
end;

procedure Tadm_webmenuchat.bt_clearClick(Sender: TObject);
begin
    if hwsf.BtConfirma('Limpar formulário de envio de mensagem?') then begin
       re_editor.Clear;
       re_editor.SetFocus;
    end;
end;

procedure Tadm_webmenuchat.bt_sendClick(Sender: TObject);
begin
      sendmensa;
end;

procedure Tadm_webmenuchat.sendmensa;
var axcod_rmt,axcod_dto,xind_progress : integer;
    dtenviomsg: TDateTime;
    axshowing: bool;
    xcount_progress: Real;
begin
     if processoand then exit;
     processoand:=true;
     axcod_rmt:=Serverconect.vrf00;

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
        loadx.Progressloading.position:=90;
        if RadioButton1.Checked then enviarmensagem(axcod_rmt,axcod_dto,0,false,false,dtenviomsg)
        else enviarmensagem(axcod_rmt,axcod_dto,0,false,true,dtenviomsg);
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
                    enviarmensagem(axcod_rmt,axcod_dto,0,false,false,dtenviomsg);
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
                       enviarmensagem(axcod_rmt,axcod_dto,0,false,true,dtenviomsg);
                    end;
                    Next;
                end;
           end;
        end;
     end;
     re_mensa.Lines.Add('De '+axnameresp+' para '+lbcp4.Text+' '+DateTimeToStr(dtenviomsg)+':');
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

procedure Tadm_webmenuchat.enviarmensagem(cod_rmt,cod_dto,xstatus:integer; xconf1,xconf2:Boolean; hst_up: TDateTime);
var  axcod: Integer;
     st_stream: TMemoryStream;
begin
        axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf08,37249),'codigo','');
        with dm.executa do begin
            CommandText:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf08,37249)+' (codigo,cod_rmt,xconf1,cod_dto,xconf2,xmensa,hst_up,hst_down,xstatus) '+
                       'VALUES(:p0,:p1,:p2,:p3,:p4,:p5,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',hst_up)+#39+','+#39+FormatDateTime('yyyymmdd hh:nn:ss',hst_up)+#39+',:p6)';
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

function Tadm_webmenuchat.updatemensagem(xcodmsg,xstatus:integer; hst_up,hst_down: TDateTime): Boolean;
begin
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Helpdesk.vrf08,37249)+' set hst_up='+#39+FormatDateTime('yyyymmdd hh:nn:ss',hst_up)+#39+', hst_down='+#39+FormatDateTime('yyyymmdd hh:nn:ss',hst_down)+#39+', xstatus=:p0 '+
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

procedure Tadm_webmenuchat.Desfazer1Click(Sender: TObject);
begin
     //desfazer
     with re_editor do
          if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tadm_webmenuchat.Recortar1Click(Sender: TObject);
begin
     //recortar
     re_editor.CutToClipboard;
end;

procedure Tadm_webmenuchat.Copiar1Click(Sender: TObject);
begin
     //copiar
     re_editor.CopyToClipboard;
end;

procedure Tadm_webmenuchat.Colar1Click(Sender: TObject);
begin
     //colar
     re_editor.PasteFromClipboard;
end;

procedure Tadm_webmenuchat.Fonte1Click(Sender: TObject);
begin
     //formatar fontes
     FontDialog1.Font.Assign(re_editor.SelAttributes);
     if FontDialog1.Execute then
        CurrText.Assign(FontDialog1.Font);
     SelectionChange(Self);
     re_editor.SetFocus;
end;

procedure Tadm_webmenuchat.Cor1Click(Sender: TObject);
begin
     if FUpdating then Exit;
     if ColorDialog1.Execute then begin
        CurrText.Color := ColorDialog1.Color;
     end;
end;

procedure Tadm_webmenuchat.Negrito1Click(Sender: TObject);
begin
     //negrito
     if FUpdating then Exit;
     if not BoldButton.Down then CurrText.Style := CurrText.Style + [fsBold]
     else CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tadm_webmenuchat.Italico1Click(Sender: TObject);
begin
     //italico
     if FUpdating then Exit;
     if not ItalicButton.Down then CurrText.Style := CurrText.Style + [fsItalic]
     else CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tadm_webmenuchat.Sublinhado1Click(Sender: TObject);
begin
     //sublinhado
     if FUpdating then Exit;
     if not UnderlineButton.Down then CurrText.Style := CurrText.Style + [fsUnderline]
     else CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tadm_webmenuchat.Marcador1Click(Sender: TObject);
begin
     //marcador
     if FUpdating then Exit;
     re_editor.Paragraph.Numbering := TRxNumbering(not BulletsButton.Down);
end;

procedure Tadm_webmenuchat.esquerdo1Click(Sender: TObject);
begin
     LeftAlign.Click;
end;

procedure Tadm_webmenuchat.centro1Click(Sender: TObject);
begin
     CenterAlign.Click;
end;

procedure Tadm_webmenuchat.direita1Click(Sender: TObject);
begin
     RightAlign.Click;
end;

procedure Tadm_webmenuchat.justificado1Click(Sender: TObject);
begin
     JustifyAlign.Click;
end;

procedure Tadm_webmenuchat.AlignButtonClick(Sender: TObject);
begin
     //alinhamento do texto
     if FUpdating then Exit;
     re_editor.Paragraph.Alignment := TParaAlignment(TControl(Sender).Tag);
end;

procedure Tadm_webmenuchat.FontSizeChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tadm_webmenuchat.FontNameChange(Sender: TObject);
begin
     if FUpdating then Exit;
     CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tadm_webmenuchat.SelectionChange(Sender: TObject);
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

procedure Tadm_webmenuchat.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure Tadm_webmenuchat.FormShow(Sender: TObject);
begin
      if axrespinitx then begin
         axrespinitx:=false;
         if Serverconect.vrf00>0 then begin
            atualizaultimoacesso;
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

procedure Tadm_webmenuchat.re_editorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if processoand then exit;
  if (Shift = [ssCtrl]) then
  case Key of
    65: (Sender as TRichEdit).SelectAll;
  end;
end;

function Tadm_webmenuchat.CurrText: TRxTextAttributes;
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

procedure Tadm_webmenuchat.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure Tadm_webmenuchat.SetEditRect;
var
  R: TRect;
begin
  with re_editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure Tadm_webmenuchat.UpdateCursorPos;
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

procedure Tadm_webmenuchat.bt_importClick(Sender: TObject);
begin
      if OpenDialog.Execute then begin
         re_editor.Lines.LoadFromFile(OpenDialog.FileName);
      end;
end;

procedure Tadm_webmenuchat.bt_exportClick(Sender: TObject);
begin
      if SaveDialog.Execute then begin
         re_editor.Lines.SaveToFile(SaveDialog.FileName);
      end;
end;

procedure Tadm_webmenuchat.bt_msg4Click(Sender: TObject);
begin
    //localizar
    //re_FindDialog.Execute;
    if TrayIconini.Animate then TrayIconini.Animate:=false else
    TrayIconini.Animate:=true;
end;

procedure Tadm_webmenuchat.montacc(xtipo:byte);
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
             lbax1.Caption:='Selecione o setor';
             lbax2.Caption:='Selecione o usuário';
             //monta lista websites
             lbcp_ax2.Clear;
             lbcp_ax2.Items.Add('Todos');
             With dm.ds_sql6 do begin
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
             montausuarios('todos',0);
          end;
          1: begin
             lbax1.Caption:='Selecione o setor';
             lbax2.Caption:='Selecione o usuário';
             //monta setores
             lbcp_ax2.Clear;
             lbcp_ax2.Items.Add('Todos');
             With dm.ds_sql3 do begin
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

procedure Tadm_webmenuchat.montausuarios(cod_web: String; cod_usr: Integer);
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
                 lbcp4.Items.Add(fieldbyname('usuario').AsString);
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

procedure Tadm_webmenuchat.filtrasnameusr;
var xlocusr : boolean;
begin
     xlocusr:=false;
     if lbcp4.Text<>'' then begin
        With dm.ds_sql7 do begin
           First;
           While not Eof do begin
               if Fieldbyname('usuario').AsString=lbcp4.Text then begin
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

procedure Tadm_webmenuchat.montaresponsaveis(cod_setor: String; cod_resp: Integer);
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

procedure Tadm_webmenuchat.filtrasnameresp;
begin
     if dm.ds_sql5.Locate('descricao',lbcp4.Text,[]) then begin
        if LowerCase(lbcp_ax2.Text)<>'todos' then
           lbcp_ax1.Text:=dm.ds_sql5.fieldbyname('cod_set').AsString;
        lbcp3.Text:=dm.ds_sql5.fieldbyname('codigo').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_webmenuchat.RadioButton1Click(Sender: TObject);
begin
      montacc(0);
end;

procedure Tadm_webmenuchat.RadioButton2Click(Sender: TObject);
begin
      montacc(1);
end;

procedure Tadm_webmenuchat.NumKeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_webmenuchat.lbcp_ax2Change(Sender: TObject);
begin
     If RadioButton1.Checked then begin
        if dm.ds_sql6.Locate('descricao',lbcp_ax2.Text,[]) then lbcp_ax1.Text:=dm.ds_sql6.fieldbyname('codigo').AsString
        else lbcp_ax1.Text:='';
        if LowerCase(lbcp_ax2.Text)='todos' then montausuarios('todos',0)
        else if (lbcp3.Text<>'') and (lbcp4.Text<>'') then montausuarios(lbcp_ax1.Text,StrtoInt(lbcp3.Text))
        else montausuarios(lbcp_ax1.Text,0);
     end else begin
        if dm.ds_sql3.Locate('descricao',lbcp_ax2.Text,[]) then lbcp_ax1.Text:=dm.ds_sql3.fieldbyname('codigo').AsString
        else lbcp_ax1.Text:='';
        if LowerCase(lbcp_ax2.Text)='todos' then montaresponsaveis('todos',0)
        else if (lbcp3.Text<>'') and (lbcp4.Text<>'') then montaresponsaveis(lbcp_ax1.Text,StrtoInt(lbcp3.Text))
        else montaresponsaveis(lbcp_ax1.Text,0);
     end;
end;

procedure Tadm_webmenuchat.lbcp_ax1Change(Sender: TObject);
begin
     If RadioButton1.Checked then begin
        if lbcp_ax1.Text <> '' then
        if dm.ds_sql6.Locate('codigo',lbcp_ax1.Text,[]) then begin
           lbcp_ax2.Text:=dm.ds_sql6.fieldbyname('descricao').AsString;
        end else lbcp_ax2.Text:='';
     end else begin
        if lbcp_ax1.Text <> '' then
        if dm.ds_sql3.Locate('codigo',lbcp_ax1.Text,[]) then begin
           lbcp_ax2.Text:=dm.ds_sql3.fieldbyname('descricao').AsString;
        end else lbcp_ax2.Text:='';
     end;
end;

procedure Tadm_webmenuchat.lbcp4Change(Sender: TObject);
begin
     if RadioButton1.Checked then filtrasnameusr
     else filtrasnameresp;
end;

procedure Tadm_webmenuchat.lbcp3Change(Sender: TObject);
begin
     If RadioButton1.Checked then begin
        if lbcp3.Text <> '' then
        if dm.ds_sql7.Locate('codigo',lbcp3.Text,[]) then begin
           lbcp4.Text:=dm.ds_sql7.fieldbyname('usuario').AsString;
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

procedure Tadm_webmenuchat.re_FindDialogFind(Sender: TObject);
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

procedure Tadm_webmenuchat.bt_substClick(Sender: TObject);
begin
      //localizar e substituir
      re_ReplaceDialog.Execute;
end;

procedure Tadm_webmenuchat.re_ReplaceDialogFind(Sender: TObject);
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

procedure Tadm_webmenuchat.re_ReplaceDialogReplace(Sender: TObject);
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

procedure Tadm_webmenuchat.ApplicationEvents1Minimize(Sender: TObject);
begin
      ShowWindow(Application.Handle, SW_HIDE );
end;

procedure Tadm_webmenuchat.FormDestroy(Sender: TObject);
begin
        If TrayIconini <> Nil Then FreeAndNil(TrayIconini);
        adm_webmenuchat := Nil;
end;

procedure Tadm_webmenuchat.Finalizar1Click(Sender: TObject);
begin
      try
      if hwsf.BtConfirma('Finalizar HWSstChat?') then begin
         xdestruirjanela:=true;
         TrayIconini.Active := False;
         If TrayIconini <> Nil then FreeAndNil(TrayIconini);
         Application.Terminate;
      end;
      Except End;
end;

procedure Tadm_webmenuchat.Minimizar1Click(Sender: TObject);
begin
      try Close; Except End;
end;

procedure Tadm_webmenuchat.Sobre1Click(Sender: TObject);
begin
      try hwsf.BtSobre; Except End;
end;

procedure Tadm_webmenuchat.Maximizar1Click(Sender: TObject);
begin
      try
        ShowWindow(Application.Handle,SW_RESTORE);
        SetForegroundWindow(Application.Handle);
      Except End;
end;

procedure Tadm_webmenuchat.db_timerTimer(Sender: TObject);
begin
      atualizarmensa;
end;

procedure Tadm_webmenuchat.atualizarmensa;
var xreceivecount: Integer;
    xreceivecco,xreceivecco2: string;
    xchegoumsg: bool;
begin
      if processoand then exit;
      Try
        xchegoumsg:=false;
        //receber mensagens
        With dm.executa3 do begin
               CommandText:='SELECT * FROM '+EnDecryptString(Helpdesk.vrf08,37249)+
               ' WHERE cod_dto='+#39+IntToStr(Serverconect.vrf00)+#39+' AND xconf2='+BoolToStr(False)+' AND xstatus='+#39+'0'+#39+
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
                         if dm.ds_sql3.Locate('codigo',dm.ds_sql4.FieldByName('cod_set').AsString,[]) then
                            xreceivecco2:=dm.ds_sql3.FieldByName('descricao').AsString;
                         xreceivecco:=dm.ds_sql4.FieldByName('descricao').AsString+' ('+xreceivecco2+')';
                         xreceivecco2:='';
                      end;
                   end else begin
                      if dm.ds_sql8.Locate('codigo',FieldByName('cod_rmt').AsString,[]) then begin
                         xreceivecco:=dm.ds_sql8.FieldByName('nome').AsString;
                         xreceivecco2:='';
                      end;
                   end;
                   re_mensa.Lines.Add('De '+xreceivecco+' para '+axnameresp+' '+FieldByName('hst_up').AsString+':');
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
        if xchegoumsg then begin
          if chk_avisar.Checked then begin
             ShowWindow(Application.Handle, SW_RESTORE );
             SetForegroundWindow( Application.Handle );
             re_mensa.Perform( EM_SCROLLCARET, 0, 0 );
          end;
          re_mensa.SelLength := 0;
          re_mensa.SelStart:= re_mensa.GetTextLen;
          re_mensa.Perform( EM_SCROLLCARET, 0, 0 );
        end;
        statconect(true);
      Except
        statconect(false);
      End;
end;

procedure Tadm_webmenuchat.Timer_logadoTimer(Sender: TObject);
begin
      atualizaultimoacesso;
end;

function Tadm_webmenuchat.atualizaultimoacesso:Boolean;
begin
      if processoand then exit;
      With dm.executa5 do begin
           CommandText:='UPDATE '+EnDecryptString(Serverconect.vrf19,37249)+' SET xutl='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+' WHERE codigo=:p1';
           Params[0].AsInteger:=Serverconect.vrf00;
           Try
              Execute;
              statconect(true);
           Except
              statconect(false);
              exit;
           End;
      end;
end;

procedure Tadm_webmenuchat.FormActivate(Sender: TObject);
begin
      if xshowin then begin
         xshowin:=false;
         close;
      end;
end;

procedure Tadm_webmenuchat.UpDown2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
      db_timer.Interval:=UpDown2.Position*1000;
      CheckBox1.Hint:='Receber mensagens a cada '+IntToStr(UpDown2.Position)+' segundos';
end;

procedure Tadm_webmenuchat.CheckBox1Click(Sender: TObject);
begin
      db_timer.Enabled:=CheckBox1.Enabled;
end;

procedure Tadm_webmenuchat.bt_atualizarClick(Sender: TObject);
begin
      atualizarmensa;
end;

procedure Tadm_webmenuchat.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=VK_F5 then sendmensa;
      if key=VK_F6 then atualizarmensa;
      if key=VK_ESCAPE then close;
      if (ssCtrl in Shift) and (Key=VK_DELETE) then re_editor.Clear;
end;

procedure Tadm_webmenuchat.re_mensaURLClick(Sender: TObject;
  const URLText: String; Button: TMouseButton);
var axURLText: String;
begin
      if copy(URLText,1,7)='http://' then axURLText:=copy(URLText,8,Length(URLText))
      else axURLText:=URLText;
      JumpTo(axURLText);
end;

procedure Tadm_webmenuchat.UpDown3Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
      Timer_logado.Interval:=UpDown3.Position*1000;
      CheckBox2.Hint:='Enviar sinal on-line a cada '+IntToStr(UpDown3.Position)+' segundos';
end;

procedure Tadm_webmenuchat.statconect(xstatus: boolean);
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

procedure Tadm_webmenuchat.TrayIconiniClick(Sender: TObject);
begin
      try
        ShowWindow(Application.Handle,SW_RESTORE);
        SetForegroundWindow(Application.Handle);
      Except End;
end;

procedure Tadm_webmenuchat.CheckBox2Click(Sender: TObject);
begin
      Timer_logado.Enabled:=CheckBox2.Enabled;
end;

end.
