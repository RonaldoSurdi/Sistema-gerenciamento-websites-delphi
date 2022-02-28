{###############################################################################
Programa: HWSwebServer
Módulo: Visualizador de imagens.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_clilogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, XPMan;


type
  Tadm_clilogs = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    count_grade: TLabel;
    Label5: TLabel;
    db_logs: TDBGrid;
    cp_obs: TMemo;
    Splitter1: TSplitter;
    Panel9: TPanel;
    Label3: TLabel;
    fip4: TEdit;
    fip3: TEdit;
    fip2: TEdit;
    fip1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    dt_inicio: TDateTimePicker;
    Label1: TLabel;
    dt_fim: TDateTimePicker;
    GroupBox1: TGroupBox;
    count_usr: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    fip8: TEdit;
    fip7: TEdit;
    fip6: TEdit;
    fip5: TEdit;
    YuSoftLabel3: TYuSoftLabel;
    YuSoftLabel12: TYuSoftLabel;
    YuSoftLabel1: TYuSoftLabel;
    YuSoftLabel5: TYuSoftLabel;
    YuSoftLabel7: TYuSoftLabel;
    SpeedButton2: TSpeedButton;
    pn_tit: TPanel;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    ed_colaborador: TRichEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    XPManifest1: TXPManifest;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure db_logsCellClick(Column: TColumn);
    procedure db_logsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_logsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YuSoftLabel1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure fip1KeyPress(Sender: TObject; var Key: Char);
    procedure fip2KeyPress(Sender: TObject; var Key: Char);
    procedure fip3KeyPress(Sender: TObject; var Key: Char);
    procedure YuSoftLabel3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure fip1Exit(Sender: TObject);
    procedure fip2Exit(Sender: TObject);
    procedure fip3Exit(Sender: TObject);
    procedure fip4Exit(Sender: TObject);
  private
    procedure SQL_logs(xtxtfilter:String);
    procedure atualiza_obs;
    procedure atualiza_grade;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_clilogs: Tadm_clilogs;
  text_filtro,cv2, filtra_usr : string;
  ay_cod:integer;
  cv : word;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_clilogs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.desconecta_bases(2);
     Action:=cafree;
end;

procedure Tadm_clilogs.SpeedButton1Click(Sender: TObject);
begin
    close;
end;

procedure Tadm_clilogs.atualiza_obs;
begin
    cp_obs.Text:= EnDecryptString(dm.ds_sql.FieldByName('obs').AsString,cv);
end;

procedure Tadm_clilogs.db_logsCellClick(Column: TColumn);
begin
    atualiza_obs;
end;

procedure Tadm_clilogs.db_logsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualiza_obs;
end;

procedure Tadm_clilogs.db_logsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualiza_obs;
end;

procedure Tadm_clilogs.FormActivate(Sender: TObject);
begin
     atualiza_obs;
end;

procedure Tadm_clilogs.FormCreate(Sender: TObject);
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
     //DoubleBuffered:=True;
     //Brush.Style := BsClear;
     DBGrid1.DataSource:=dm.source_sql3;
     db_logs.DataSource:=dm.source_sql;
     cv:=3542;
     db_logs.Columns.Add;
     db_logs.Columns.Items[0].FieldName:='data_time';
     db_logs.Columns.Items[0].Title.Caption:='Acesso';
     db_logs.Columns.Add;
     db_logs.Columns.Items[1].FieldName:='decode(ip,'+#39+'3542'+#39+')';
     db_logs.Columns.Items[1].Title.Caption:='ip';

     dt_inicio.DateTime:=now;
     dt_fim.DateTime:=now;
     loadx.Progressloading.position:=50;
     filtra_usr:='';
     cv2 := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='stat';
     DBGrid1.Columns.Items[0].Title.Caption:='Status';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='codigo';
     DBGrid1.Columns.Items[1].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='decode(A.usuario,'+#39+cv2+#39+')';
     DBGrid1.Columns.Items[2].Title.Caption:='Usuário';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='dt_cad';
     DBGrid1.Columns.Items[3].Title.Caption:='Data de Cadastro';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cod_ent';
     DBGrid1.Columns.Items[4].Title.Caption:='Entidade';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='cod_web';
     DBGrid1.Columns.Items[5].Title.Caption:='Website';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT DISTINCT A.codigo,decode(A.usuario,'+chr(39)+cv2+chr(39)+'),A.cod_ent,A.cod_web,A.stat,A.xconf,A.dt_cad,B.nome,B.cod_set,B.cod_ent,C.razao_social,C.fantasia,D.descricao,E.website FROM '+
                              EnDecryptString(Serverconect.vrf19[0],37249)+' A, '+ //usuario
                              EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                              EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                              EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                              EnDecryptString(Serverconect.vrf29,37249)+' E '+  //website
                              'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web '+
                              ' ORDER BY A.codigo';
        Open;
        filter:='';
        filtered:=false;
     end;
     count_usr.Caption:= IntToStr(dm.ds_sql3.RecordCount);
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_clilogs.SQL_logs(xtxtfilter:String);
begin
     if xtxtfilter<>'' then xtxtfilter:=' WHERE '+xtxtfilter;
     With dm.ds_sql do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,data_time,decode(ip,'+#39+'3542'+#39+'),obs,cod_usr from '+EnDecryptString(Serverconect.vrf22[0],37249)+
        xtxtfilter+
        ' ORDER BY data_time';
        Open;
        Filter:='';
        Filtered:=False;
     end;
     count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
end;

procedure Tadm_clilogs.YuSoftLabel1Click(Sender: TObject);
begin
    if not hwsf.BtConfirma('Limpar logs listados?'+#13+text_filtro+#13+filtra_usr) then
       exit;
    Try
      With dm.executa do begin
        if (text_filtro<>'') AND (filtra_usr<>'') then CommandText := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[0],37249)+' WHERE '+text_filtro+' AND '+filtra_usr
        else if (text_filtro<>'') then CommandText := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[0],37249)+' WHERE '+text_filtro
        else if (filtra_usr<>'') then CommandText := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[0],37249)+' WHERE '+filtra_usr
        else CommandText := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[0],37249);
        Execute;
      end;
    Except
      hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
      exit;
    End;
    dm.ds_sql.Close;
    dm.ds_sql.Open;
    count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
    dm.gravar_logsys('Limpar Logs');
    hwsf.BtMensagem('Processo efetuado com êxito.');
end;

procedure Tadm_clilogs.CheckBox1Click(Sender: TObject);
begin
    if (CheckBox1.Checked) then begin
      fip1.SelectAll;
      fip1.SetFocus;
    end;
end;

procedure Tadm_clilogs.fip1KeyPress(Sender: TObject; var Key: Char);
begin
    if (key=#13) or (key=#9) then begin
       fip2.SelectAll;
       fip2.SetFocus;
    end;
end;

procedure Tadm_clilogs.fip2KeyPress(Sender: TObject; var Key: Char);
begin
    if (key=#13) or (key=#9) then begin
       fip3.SelectAll;
       fip3.SetFocus;
    end;
end;

procedure Tadm_clilogs.fip3KeyPress(Sender: TObject; var Key: Char);
begin
    if (key=#13) or (key=#9) then begin
       fip4.SelectAll;
       fip4.SetFocus;
    end;
end;

procedure Tadm_clilogs.YuSoftLabel3Click(Sender: TObject);
begin
     text_filtro:='';
     filtra_usr:='';
     SQL_logs('');
end;

procedure Tadm_clilogs.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_clilogs.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_clilogs.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_clilogs.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dm.ds_sql3.FieldByName('stat').AsInteger=2 then begin
        //DBGrid1.Canvas.Brush.Color:= $00F4F4F4;
        Dbgrid1.Canvas.Font.Color:= clBlue;
     end else if dm.ds_sql3.FieldByName('stat').AsInteger=3 then begin
        Dbgrid1.Canvas.Font.Color:= clRed;
     end;
     Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure Tadm_clilogs.RadioButton6Click(Sender: TObject);
begin
      dm.ds_sql3.Filter:='';
end;

procedure Tadm_clilogs.RadioButton5Click(Sender: TObject);
begin
      dm.ds_sql3.Filter:='stat=1';
end;

procedure Tadm_clilogs.RadioButton4Click(Sender: TObject);
begin
      dm.ds_sql3.Filter:='stat=2';
end;

procedure Tadm_clilogs.RadioButton7Click(Sender: TObject);
begin
      dm.ds_sql3.Filter:='stat=3';
end;

procedure Tadm_clilogs.atualiza_grade;
var axshowing: Boolean;
begin
      Panel1.Enabled:=false;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando dados';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      ed_colaborador.Clear;
      With dm.ds_sql3 do begin
         if RecordCount > 0 then begin
            filtra_usr:='cod_usr='+#39+FieldbyName('codigo').AsString+#39;
            if (text_filtro<>'') then SQL_logs(filtra_usr+' AND '+text_filtro)
            else SQL_logs(filtra_usr);
            loadx.Progressloading.position:=20;
            ed_colaborador.Lines.Add('Cód. colaborador: '+FieldbyName('cod_ent').AsString);
            ed_colaborador.Lines.Add('Nome: '+FieldbyName('nome').AsString);
            ed_colaborador.Lines.Add('Empresa: '+FieldbyName('razao_social').AsString);
            loadx.Progressloading.position:=50;
            loadx.Progressloading.position:=60;
            loadx.Progressloading.position:=70;
            ed_colaborador.Lines.Add(' ');
            ed_colaborador.Lines.Add('Website: '+FieldbyName('cod_web').AsString);
            ed_colaborador.Lines.Add(FieldbyName('website').AsString);
            loadx.Progressloading.position:=90;
         end else begin
             SQL_logs('cod_usr='+#39+'0'+#39);
             loadx.Progressloading.position:=90;
         end;
      end;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Free;
      Panel1.Enabled:=true;
end;

procedure Tadm_clilogs.SpeedButton2Click(Sender: TObject);
begin
      text_filtro :='';
      if (CheckBox1.Checked) then begin
         text_filtro:='(decode(ip,'+#39+'3542'+#39+')>='+#39+fip1.Text+'.'+fip2.Text+'.'+fip3.Text+'.'+fip4.Text+#39+' AND '+
                      'decode(ip,'+#39+'3542'+#39+')<='+#39+fip5.Text+'.'+fip6.Text+'.'+fip7.Text+'.'+fip8.Text+#39+')';
      end;
      if (CheckBox2.Checked) then begin
         if (text_filtro<>'') then text_filtro:=text_filtro+' AND ';
         text_filtro:=text_filtro+'data_time>='+#39+DateToStr(dt_inicio.Date)+' 00:00:00'+#39+' AND data_time<='+#39+DateToStr(dt_fim.Date)+' 23:59:59'+#39;
      end;
      if (text_filtro<>'') then begin
         try
            if (filtra_usr<>'') then SQL_logs(filtra_usr+' AND '+text_filtro)
            else SQL_logs(text_filtro);
         except
            SQL_logs(filtra_usr);
            hwsf.BtMensagem('O filtro selecionado contém algum erro.');
         end;
      end;
end;

procedure Tadm_clilogs.SpeedButton4Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_clilogs.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_clilogs.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_clilogs.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_clilogs.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_clilogs.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_clilogs.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_clilogs.Left:= adm_clilogs.Left-(mv_mouse.x-x);
      adm_clilogs.Top:= adm_clilogs.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_clilogs.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_clilogs.Left := adm_clilogs.Left - (mv_mouse.x -x);
      adm_clilogs.Top := adm_clilogs.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_clilogs.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_clilogs.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or
  (Screen.ActiveControl is TCustomGrid) or
  (Screen.ActiveForm.ClassName = 'TMessageForm')) then
  begin
  If Msg.message = WM_KEYDOWN then
  begin
  Case Msg.wParam of
  VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
  VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
  end;
  end;
  end;
end;

procedure Tadm_clilogs.fip1Exit(Sender: TObject);
begin
    fip5.Text:=fip1.Text;
end;

procedure Tadm_clilogs.fip2Exit(Sender: TObject);
begin
    fip6.Text:=fip2.Text;
end;

procedure Tadm_clilogs.fip3Exit(Sender: TObject);
begin
    fip7.Text:=fip3.Text;
end;

procedure Tadm_clilogs.fip4Exit(Sender: TObject);
begin
      if fip4.Text = '0' then fip8.Text := '255'
      else fip8.Text:=fip4.Text;
end;

end.
