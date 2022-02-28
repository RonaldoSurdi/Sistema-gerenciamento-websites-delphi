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
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, ShellAPI, XPMan,
  AppEvnts;


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
    ed_colaborador: TRichEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    bt_printhtml: TSpeedButton;
    SaveDialog_print: TSaveDialog;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure fip1Exit(Sender: TObject);
    procedure fip2Exit(Sender: TObject);
    procedure fip3Exit(Sender: TObject);
    procedure fip4Exit(Sender: TObject);
    procedure bt_printhtmlClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    userxmaster,xclose: Boolean;
    xcodent: String;
    procedure SQL_logs(xtxtfilter:String);
    procedure atualiza_obs;
    procedure atualiza_grade;
    function StrToHtml(mStr: string; mFont: TFont = nil): string;
    function ColorToHtml(mColor: TColor): string;
    function DBGridToHtmlTable(mDBGrid: TDBGrid; mStrings: TStrings; mCaption: TCaption = ''): Boolean;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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
var axshowing: Boolean;
begin
     xclose:= true;
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
     loadx.Progressloading.position:=50;
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     loadx.Progressloading.position:=100;  
     loadx.Close;
     Action:=cafree;
end;

procedure Tadm_clilogs.atualiza_obs;
begin
    if (not xclose) then
    cp_obs.Text:= dm.ds_sql.FieldByName('obs').AsString;
//    cp_obs.Text:= EnDecryptString(dm.ds_sql.FieldByName('obs').AsString,cv);
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
      xclose:= false;
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
     adm_clilogs.Caption := AxDadosUsr.axtitle;
     DBGrid1.DataSource:=dm.source_sql3;
     db_logs.DataSource:=dm.source_sql;
     cv:=21535;
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
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='cod_web';
     DBGrid1.Columns.Items[5].Title.Caption:='Website';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT DISTINCT A.codigo,A.usuario,A.cod_ent,A.cod_web,A.stat,A.xconf,A.dt_cad,B.nome,B.cod_set,B.cod_ent,C.razao_social,C.fantasia,D.descricao,E.website FROM '+
                              EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                              EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                              EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                              EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                              EnDecryptString(Serverconect.vrf29,37249)+' E '+  //website
                              'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web '+
                              'AND A.codigo='+#39+InttoStr(Serverconect.vrf00)+#39+
                              ' ORDER BY A.codigo';
        Open;
        filter:='';
        filtered:=false;
        if RecordCount>0 then begin
           userxmaster:=StrToBool(fieldbyname('xconf').AsString);
           xcodent:=fieldbyname('cod_ent_1').AsString;
        end else begin
           hwsf.BtMensagem('Ocorreu algum erro, contate o administrador.');
           Application.Terminate;
           exit;
        end;
        if userxmaster then begin
           loadx.lbloading.Caption:='Montando usuário master';
           loadx.lbloading.Repaint;
           Close;
           CommandText:= 'SELECT DISTINCT A.codigo,A.usuario,A.cod_ent,A.cod_web,A.stat,A.xconf,A.dt_cad,B.nome,B.cod_set,B.cod_ent,C.razao_social,C.fantasia,D.descricao,E.website FROM '+
                              EnDecryptString(Serverconect.vrf19,37249)+' A, '+ //usuario
                              EnDecryptString(Serverconect.vrf34,37249)+' B, '+ //colaborador
                              EnDecryptString(Serverconect.vrf26,37249)+' C, '+  //entidade
                              EnDecryptString(Serverconect.vrf35,37249)+' D, '+  //setor
                              EnDecryptString(Serverconect.vrf29,37249)+' E '+  //website
                              'WHERE B.codigo=A.cod_ent AND D.codigo=B.cod_set AND C.codigo=B.cod_ent AND E.codigo=A.cod_web '+
                              'AND C.codigo='+#39+xcodent+#39+
                              ' ORDER BY A.codigo';
           Open;
        end;
     end;
     count_usr.Caption:= IntToStr(dm.ds_sql3.RecordCount);
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Close;
end;

procedure Tadm_clilogs.SQL_logs(xtxtfilter:String);
begin
     //lista de usuários filtro
     if xtxtfilter<>'' then begin
        xtxtfilter:=' WHERE '+xtxtfilter+' AND xconf='+#39+BoolToStr(True)+#39;
     end else begin
        xtxtfilter:=' WHERE xconf='+#39+BoolToStr(True)+#39;
     end;
     With dm.ds_sql do begin
        if Active then Close;
        CommandText:= 'SELECT codigo,data_time,ip,obs,cod_usr from '+EnDecryptString(Serverconect.vrf22,37249)+
        xtxtfilter+
        ' ORDER BY data_time';
        Open;
        Filter:='';
        Filtered:=False;
     end;
     count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
end;

procedure Tadm_clilogs.YuSoftLabel1Click(Sender: TObject);
var axshowing: Boolean;
begin
      if not hwsf.BtConfirma('Limpar logs listados?') then
      exit;
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Limpando logs selecionados';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Limpando logs selecionados';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      Try
          With dm.executa do begin
               if (text_filtro<>'') AND (filtra_usr<>'') then CommandText := 'UPDATE '+EnDecryptString(Serverconect.vrf22,37249)+' SET xconf=:p0 WHERE '+text_filtro+' AND '+filtra_usr
               else if (text_filtro<>'') then CommandText := 'UPDATE '+EnDecryptString(Serverconect.vrf22,37249)+' SET xconf=:p0 WHERE '+text_filtro
               else if (filtra_usr<>'') then CommandText := 'UPDATE '+EnDecryptString(Serverconect.vrf22,37249)+' SET xconf=:p0 WHERE '+filtra_usr
               else CommandText := 'UPDATE '+EnDecryptString(Serverconect.vrf22,37249)+' SET xconf=:p0';
               Params[0].AsString:=BoolToStr(False);
               Execute;
          end;
      Except
          hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
          exit;
      End;
      dm.ds_sql.Close;
      dm.ds_sql.Open;
      count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
      if not axshowing then loadx.Close;
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
     //filtra_usr:='';
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
             filtra_usr:='cod_usr='+#39+'0'+#39;
             SQL_logs(filtra_usr);
             loadx.Progressloading.position:=90;
         end;
      end;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Close;
      Panel1.Enabled:=true;
end;

procedure Tadm_clilogs.SpeedButton2Click(Sender: TObject);
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

{procedure Tadm_clilogs.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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
end;}

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

function Tadm_clilogs.DBGridToHtmlTable(mDBGrid: TDBGrid; mStrings: TStrings;
  mCaption: TCaption = ''): Boolean;
const
  cAlignText: array[TAlignment] of string = ('LEFT', 'RIGHT', 'CENTER');
var
  vColFormat: string;
  vColText: string;
  vAllWidth: Integer;
  vWidths: array of Integer;
  vBookmark: string;
  I, J: Integer;
begin
  Result := False;
  if not Assigned(mStrings) then Exit;
  if not Assigned(mDBGrid) then Exit;
  if not Assigned(mDBGrid.DataSource) then Exit;
  if not Assigned(mDBGrid.DataSource.DataSet) then Exit;
  if not mDBGrid.DataSource.DataSet.Active then Exit;
  vBookmark := mDBGrid.DataSource.DataSet.Bookmark;
  mDBGrid.DataSource.DataSet.DisableControls;
  try
    J := 0;
    vAllWidth := 0;
    for I := 0 to mDBGrid.Columns.Count - 1 do
      if mDBGrid.Columns[I].Visible then begin
        Inc(J);
        SetLength(vWidths, J);
        vWidths[J - 1] := mDBGrid.Columns[I].Width;
        Inc(vAllWidth, mDBGrid.Columns[I].Width);
      end;
    if J <= 0 then Exit;
    mStrings.Clear;
    mStrings.Add(Format('<TABLE BGCOLOR="%s" BORDER=1 WIDTH="100%%">',
      [ColorToHtml(mDBGrid.Color)]));
    if mCaption <> '' then
      mStrings.Add(Format('<CAPTION>%s</CAPTION>', [mCaption])); //StrToHtml(mCaption)

    vColFormat := '';
    vColText := '';
    vColFormat := vColFormat + '<TR>'#13#10;
    vColText := vColText + '<TR>'#13#10;
    J := 0;
    for I := 0 to mDBGrid.Columns.Count - 1 do
      if mDBGrid.Columns[I].Visible then begin
          vColFormat := vColFormat + Format('  <TD BGCOLOR="%s" ALIGN=%s WIDTH="%d%%">DisplayText%d</TD>'#13#10,
          [ColorToHtml(mDBGrid.Columns[I].Color),
          cAlignText[mDBGrid.Columns[I].Alignment],
          Round(vWidths[J] / vAllWidth * 100), J]);
          vColText := vColText + Format('  <TD BGCOLOR="%s" ALIGN=%s WIDTH="%d%%">%s</TD>'#13#10,
          [ColorToHtml(mDBGrid.Columns[I].Title.Color),
          cAlignText[mDBGrid.Columns[I].Alignment],
          Round(vWidths[J] / vAllWidth * 100),
          StrToHtml(mDBGrid.Columns[I].Title.Caption,
          mDBGrid.Columns[I].Title.Font)]);
          Inc(J);
      end;
    vColFormat := vColFormat + '</TR>'#13#10;
    vColText := vColText + '</TR>'#13#10;
    mStrings.Text := mStrings.Text + vColText;
    mDBGrid.DataSource.DataSet.First;
    while not mDBGrid.DataSource.DataSet.Eof do begin
      J := 0;
      vColText := vColFormat;
      for I := 0 to mDBGrid.Columns.Count - 1 do
        if mDBGrid.Columns[I].Visible then begin
          vColText := StringReplace(vColText, Format('>DisplayText%d<', [J]),
             Format('>%s<', [StrToHtml(mDBGrid.Columns[I].Field.DisplayText,
               mDBGrid.Columns[I].Font)]),
            [rfReplaceAll]);
          Inc(J);
        end;
      mStrings.Text := mStrings.Text + vColText;
      mDBGrid.DataSource.DataSet.Next;
    end;
    mStrings.Add('</TABLE>');
    mStrings.Add('');
    mStrings.Add('<p align="center"><a href="http://www.hws.com.br"><font size="2" face="Verdana">Desenvolvido por HWS Web Solution Ltda</font></a></p>');
  finally
    mDBGrid.DataSource.DataSet.Bookmark := vBookmark;
    mDBGrid.DataSource.DataSet.EnableControls;
    vWidths := nil;
  end;
  Result := True;
end; { DBGridToHtmlTable }

function Tadm_clilogs.StrToHtml(mStr: string; mFont: TFont = nil): string;
var
  vLeft, vRight: string;
begin
  Result := mStr;
  Result := StringReplace(Result, '&', '&AMP;', [rfReplaceAll]);
  Result := StringReplace(Result, '<', '&LT;', [rfReplaceAll]);
  Result := StringReplace(Result, '>', '&GT;', [rfReplaceAll]);
  if not Assigned(mFont) then Exit;
  vLeft := Format('<FONT FACE="%s" COLOR="%s">',
    [mFont.Name, ColorToHtml(mFont.Color)]);
  vRight := '</FONT>';
  if fsBold in mFont.Style then begin
    vLeft := vLeft + '<B>';
    vRight := '</B>' + vRight;
  end;
  if fsItalic in mFont.Style then begin
    vLeft := vLeft + '<I>';
    vRight := '</I>' + vRight;
  end;
  if fsUnderline in mFont.Style then begin
    vLeft := vLeft + '<U>';
    vRight := '</U>' + vRight;
  end;
  if fsStrikeOut in mFont.Style then begin
    vLeft := vLeft + '<S>';
    vRight := '</S>' + vRight;
  end;
  Result := vLeft + Result + vRight;
end; { StrToHtml }

function Tadm_clilogs.ColorToHtml(mColor: TColor): string;
begin
  mColor := ColorToRGB(mColor);
  Result := Format('#%.2x%.2x%.2x',
    [GetRValue(mColor), GetGValue(mColor), GetBValue(mColor)]);
end; { ColorToHtml }

procedure Tadm_clilogs.bt_printhtmlClick(Sender: TObject);
var xexphtml : TStringList;
    title_html : string;
begin
     SaveDialog_print.Filter:='Todos os arquivos (*.*)|*.*|HTML publish file (*.html)|*.html';
     SaveDialog_print.DefaultExt:='html';
     SaveDialog_print.FilterIndex:=2;
     if SaveDialog_print.Execute then begin
        Try
          xexphtml:= TStringList.Create;
          xexphtml.Clear;
          title_html:='<p align="center"><b><font face="Verdana" size="4" color="#000000">'+
                      'Relatório de logs do sistema HWScontrol: '+InttoStr(AxDadosUsr.cod_web)+' | '+AxDadosUsr.website+
                      '</font></b></p>';
          DBGridToHtmlTable(db_logs, xexphtml, title_html);//Caption
          xexphtml.SaveToFile(SaveDialog_print.FileName);
          ShellExecute(Handle, nil, PChar(SaveDialog_print.FileName), nil, nil, SW_SHOW);
        Finally
          xexphtml.Free;
        End;
     end;
end;

procedure Tadm_clilogs.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
