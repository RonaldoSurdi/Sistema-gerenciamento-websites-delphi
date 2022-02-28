{###############################################################################
Programa: HWSwebServer
Módulo: Visualizador de imagens.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_logs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, XPMan;


type
  Tadm_logs = class(TForm)
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
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Edit1: TEdit;
    ed_colaborador: TEdit;
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
  adm_logs: Tadm_logs;
  text_filtro,cv2, filtra_usr : string;
  ay_cod:integer;
  cv : word;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_logs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_int.Filter:='';
     dm.ds_int.Filtered:=false;
     dm.ds_int.Close;
     dm.ds_sql2.Filter:='';
     dm.ds_sql2.Filtered:=false;
     dm.ds_sql2.Close;
     dm.ds_int3.Filter:='';
     dm.ds_int3.Filtered:=false;
     dm.ds_int3.Close;
     dm.desconecta_bases(2);
     Action:=cafree;
end;

procedure Tadm_logs.SpeedButton1Click(Sender: TObject);
begin
    close;
end;

procedure Tadm_logs.atualiza_obs;
begin
    cp_obs.Text:= EnDecryptString(dm.ds_int.FieldByName('obs').AsString,cv);
end;

procedure Tadm_logs.db_logsCellClick(Column: TColumn);
begin
    atualiza_obs;
end;

procedure Tadm_logs.db_logsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualiza_obs;
end;

procedure Tadm_logs.db_logsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    atualiza_obs;
end;

procedure Tadm_logs.FormActivate(Sender: TObject);
begin
     atualiza_obs;
end;

procedure Tadm_logs.FormCreate(Sender: TObject);
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
     loadx.Progressloading.position:=20;
     DBGrid1.DataSource:=dm.source_int3;
     db_logs.DataSource:=dm.source_int;
     cv:=3542;
     db_logs.Columns.Add;
     db_logs.Columns.Items[0].FieldName:='data_time';
     db_logs.Columns.Items[0].Title.Caption:='Acesso';
     db_logs.Columns.Add;
     db_logs.Columns.Items[1].FieldName:='ip';
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
     DBGrid1.Columns.Items[2].FieldName:='usuario';
     DBGrid1.Columns.Items[2].Title.Caption:='Usuário';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='dt_cad';
     DBGrid1.Columns.Items[3].Title.Caption:='Data de Cadastro';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cod_ent';
     DBGrid1.Columns.Items[4].Title.Caption:='Entidade';
     With dm.ds_int3 do begin
        DataSet.CommandText:= 'select stat,codigo,usuario,dt_cad,cod_ent from '+EnDecryptString(Serverconect.vrf19[1],37249);
        Open;
        Filter:='';
        Filtered:=true;
     end;
     count_usr.Caption:= IntToStr(dm.ds_int3.RecordCount);
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_logs.SQL_logs(xtxtfilter:String);
begin
     if xtxtfilter<>'' then xtxtfilter:=' WHERE '+xtxtfilter;
     With dm.ds_int do begin
        if Active then Close;
        DataSet.CommandText:= 'SELECT codigo,data_time,ip,obs,cod_usr from '+EnDecryptString(Serverconect.vrf22[1],37249)+
        xtxtfilter+
        ' ORDER BY data_time';
        Open;
        Filter:='';
        Filtered:=False;
     end;
     count_grade.Caption:= IntToStr(dm.ds_int.RecordCount);
end;

procedure Tadm_logs.YuSoftLabel1Click(Sender: TObject);
begin
    if not hwsf.BtConfirma('Limpar logs listados?'+#13+text_filtro+#13+filtra_usr) then
       exit;
    Try
      With dm.executa_int do begin
        if (text_filtro<>'') AND (filtra_usr<>'') then SQL.Text := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[1],37249)+' WHERE '+text_filtro+' AND '+filtra_usr
        else if (text_filtro<>'') then SQL.Text := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[1],37249)+' WHERE '+text_filtro
        else if (filtra_usr<>'') then SQL.Text := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[1],37249)+' WHERE '+filtra_usr
        else SQL.Text := 'DELETE FROM '+EnDecryptString(Serverconect.vrf22[1],37249);
        ExecSQL;
      end;
    Except
      hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
      exit;
    End;
    dm.ds_int.Refresh;
    count_grade.Caption:= IntToStr(dm.ds_int.RecordCount);
    dm.gravar_logsys('Limpar Logs');
    hwsf.BtMensagem('Processo efetuado com êxito.');
end;

procedure Tadm_logs.CheckBox1Click(Sender: TObject);
begin
    if (CheckBox1.Checked) then begin
      fip1.SelectAll;
      fip1.SetFocus;
    end;
end;

procedure Tadm_logs.fip1KeyPress(Sender: TObject; var Key: Char);
begin
    if (key=#13) or (key=#9) then begin
       fip2.SelectAll;
       fip2.SetFocus;
    end;
end;

procedure Tadm_logs.fip2KeyPress(Sender: TObject; var Key: Char);
begin
    if (key=#13) or (key=#9) then begin
       fip3.SelectAll;
       fip3.SetFocus;
    end;
end;

procedure Tadm_logs.fip3KeyPress(Sender: TObject; var Key: Char);
begin
    if (key=#13) or (key=#9) then begin
       fip4.SelectAll;
       fip4.SetFocus;
    end;
end;

procedure Tadm_logs.YuSoftLabel3Click(Sender: TObject);
begin
     text_filtro:='';
     filtra_usr:='';
     SQL_logs('');
end;

procedure Tadm_logs.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_logs.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_logs.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_logs.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dm.ds_int3.FieldByName('stat').AsInteger=2 then begin
        //DBGrid1.Canvas.Brush.Color:= $00F4F4F4;
        Dbgrid1.Canvas.Font.Color:= clBlue;
     end else if dm.ds_int3.FieldByName('stat').AsInteger=3 then begin
        Dbgrid1.Canvas.Font.Color:= clRed;
     end;
     Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure Tadm_logs.RadioButton6Click(Sender: TObject);
begin
      dm.ds_int3.Filter:='';
end;

procedure Tadm_logs.RadioButton5Click(Sender: TObject);
begin
      dm.ds_int3.Filter:='stat=1';
end;

procedure Tadm_logs.RadioButton4Click(Sender: TObject);
begin
      dm.ds_int3.Filter:='stat=2';
end;

procedure Tadm_logs.RadioButton7Click(Sender: TObject);
begin
      dm.ds_int3.Filter:='stat=3';
end;

procedure Tadm_logs.atualiza_grade;
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
      if dm.ds_int3.RecordCount > 0 then begin
         loadx.Progressloading.position:=20;
         filtra_usr:='cod_usr='+#39+dm.ds_int3.FieldbyName('codigo').AsString+#39;
         if (text_filtro<>'') then SQL_logs(filtra_usr+' AND '+text_filtro)
         else SQL_logs(filtra_usr);
         loadx.Progressloading.position:=30;
         With dm.ds_sql2 do begin
              if Active then Close;
              loadx.Progressloading.position:=50;
              DataSet.CommandText:= 'SELECT DISTINCT A.codigo,A.nome,B.razao_social FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                                    EnDecryptString(Serverconect.vrf26,37249)+' B '+
                                    'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+dm.ds_int3.FieldbyName('cod_ent').AsString+#39;
              loadx.Progressloading.position:=50;
              Open;
              loadx.Progressloading.position:=70;
              ed_colaborador.Text:=dm.ds_int3.FieldbyName('cod_ent').AsString + ' - ' + FieldbyName('nome').AsString + ' - ' + FieldbyName('razao_social').AsString;
              loadx.Progressloading.position:=90;
         end;
      end else begin
          SQL_logs('cod_usr='+#39+'0'+#39);
          ed_colaborador.Text:='';
      end;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Free;
      Panel1.Enabled:=true;
end;

procedure Tadm_logs.SpeedButton2Click(Sender: TObject);
begin
      text_filtro :='';
      if (CheckBox1.Checked) then begin
         text_filtro:='(ip>='+#39+fip1.Text+'.'+fip2.Text+'.'+fip3.Text+'.'+fip4.Text+#39+' AND '+
                      'ip<='+#39+fip5.Text+'.'+fip6.Text+'.'+fip7.Text+'.'+fip8.Text+#39+')';
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

procedure Tadm_logs.SpeedButton4Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_logs.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_logs.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_logs.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_logs.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_logs.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_logs.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_logs.Left:= adm_logs.Left-(mv_mouse.x-x);
      adm_logs.Top:= adm_logs.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_logs.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_logs.Left := adm_logs.Left - (mv_mouse.x -x);
      adm_logs.Top := adm_logs.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_logs.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_logs.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_logs.fip1Exit(Sender: TObject);
begin
    fip5.Text:=fip1.Text;
end;

procedure Tadm_logs.fip2Exit(Sender: TObject);
begin
    fip6.Text:=fip2.Text;
end;

procedure Tadm_logs.fip3Exit(Sender: TObject);
begin
    fip7.Text:=fip3.Text;
end;

procedure Tadm_logs.fip4Exit(Sender: TObject);
begin
      if fip4.Text = '0' then fip8.Text := '255'
      else fip8.Text:=fip4.Text;
end;

end.
