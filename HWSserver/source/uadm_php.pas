{###############################################################################
Programa: HWSwebServer
Módulo: Gerar php file.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_php;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack,
  IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, IdTrivialFTP,
  ToolWin, XPMan;


type
  Tadm_php = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    SpeedButton2: TSpeedButton;
    pn_tit: TPanel;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    YuSoftLabel5: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    SaveDialog_php: TSaveDialog;
    editor_php: TRichEdit;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    OpenDialog_php: TOpenDialog;
    bt_novo: TSpeedButton;
    bt_abrir: TSpeedButton;
    bt_salvar: TSpeedButton;
    lbtitlephp: TLabel;
    Bevel1: TBevel;
    ComboBox_predefinidos: TComboBox;
    bt_selecionar: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    group_servera: TGroupBox;
    Label10: TLabel;
    Label4: TLabel;
    ed_host: TEdit;
    ComboBox_cbx: TComboBox;
    ed_db: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    ed_user: TEdit;
    ed_pass: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    ed_lib: TEdit;
    YuSoftLabel3: TYuSoftLabel;
    DBGrid1: TDBGrid;
    ToolBar2: TToolBar;
    Label9: TLabel;
    ed_entidade: TEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    ToolBar3: TToolBar;
    br_localizarbase1: TSpeedButton;
    ed_online: TEdit;
    SpeedButton3: TSpeedButton;
    ToolBar4: TToolBar;
    SpeedButton6: TSpeedButton;
    br_localizarbase2: TSpeedButton;
    ed_contador: TEdit;
    ToolBar5: TToolBar;
    Label3: TLabel;
    ed_inccount: TEdit;
    bt_executarvisitas: TSpeedButton;
    TabSheet6: TTabSheet;
    ToolBar6: TToolBar;
    Label1: TLabel;
    ed_tabelas: TEdit;
    DBGrid2: TDBGrid;
    TabSheet7: TTabSheet;
    ToolBar7: TToolBar;
    Label2: TLabel;
    ed_campos: TEdit;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    count_tab: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel3: TPanel;
    count_grade: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lb_nomeentidade: TLabel;
    lb_codusr: TLabel;
    Panel5: TPanel;
    count_campos: TLabel;
    Label16: TLabel;
    lb_tab: TLabel;
    XPManifest1: TXPManifest;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure YuSoftLabel5Click(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_executarvisitasClick(Sender: TObject);
    procedure br_localizarbase1Click(Sender: TObject);
    procedure br_localizarbase2Click(Sender: TObject);
    procedure bt_abrirClick(Sender: TObject);
    procedure bt_salvarClick(Sender: TObject);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_selecionarClick(Sender: TObject);
    procedure YuSoftLabel3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ed_inccountKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
  private
    ax_cod_y3:Integer;
    procedure abre_cnx;
    procedure atualiza_grade;
    procedure atualizacampos;
    function verifica_usr:boolean;
    { Private declarations }
  public
    cv: string;
    ax_cod : integer;
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_php: Tadm_php;
  cv: string;
  sp_usr : integer;

implementation
uses udm, hwsfunctions, DateUtils, Math, uBt_bases;

{$R *.dfm}

procedure Tadm_php.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (dm.conecta_int.InTransaction) then dm.conecta_int.Rollback(TD);
     Action:=cafree;
end;

procedure Tadm_php.SpeedButton1Click(Sender: TObject);
begin
    close;
end;

procedure Tadm_php.FormCreate(Sender: TObject);
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
     abre_cnx;
     loadx.Progressloading.position:=20;
     DBGrid1.DataSource:=dm.source_sql;
     DBGrid2.DataSource:=dm.source_sql3;
     DBGrid3.DataSource:=dm.source_sql4;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='stat';
     DBGrid1.Columns.Items[0].Title.Caption:='Status';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='codigo';
     DBGrid1.Columns.Items[1].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='decode(usuario,'+chr(39)+cv+chr(39)+')';
     DBGrid1.Columns.Items[2].Title.Caption:='Usuário';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='dt_cad';
     DBGrid1.Columns.Items[3].Title.Caption:='Data de Cadastro';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cod_ent';
     DBGrid1.Columns.Items[4].Title.Caption:='Entidade';
     With dm.ds_sql do begin
        CommandText:= 'select stat,codigo,decode(usuario,'+chr(39)+cv+chr(39)+'),decode(password,'+chr(39)+cv+chr(39)+'),dt_cad,cod_ent from '+EnDecryptString(Serverconect.vrf19[0],37249);
        Open;
     end;
     loadx.Progressloading.position:=50;
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[0].FieldName:='codigo';
     DBGrid2.Columns.Items[0].Title.Caption:='Código';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[1].FieldName:='cod_usr';
     DBGrid2.Columns.Items[1].Title.Caption:='Usuário';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[2].FieldName:='mod';
     DBGrid2.Columns.Items[2].Title.Caption:='Permissões';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[3].FieldName:='tabela';
     DBGrid2.Columns.Items[3].Title.Caption:='Tabela';
     DBGrid2.Columns.Add;
     DBGrid2.Columns.Items[4].FieldName:='desc_tab';
     DBGrid2.Columns.Items[4].Title.Caption:='Descrição';
     With dm.ds_sql3 do begin
        CommandText:= 'select * from '+EnDecryptString(Serverconect.vrf20,37249);
        Open;
     end;
     loadx.Progressloading.position:=80;
     dm.ds_sql3.Filtered:=true;
     count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
     count_tab.Caption:= IntToStr(dm.ds_sql3.RecordCount);
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[0].FieldName:='codigo';
     DBGrid3.Columns.Items[0].Title.Caption:='Código';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[1].FieldName:='cod_tab';
     DBGrid3.Columns.Items[1].Title.Caption:='Tabela';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[2].FieldName:='campo';
     DBGrid3.Columns.Items[2].Title.Caption:='Campo';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[3].FieldName:='desc_campo';
     DBGrid3.Columns.Items[3].Title.Caption:='Cabeçalho';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[4].FieldName:='tipo_campo';
     DBGrid3.Columns.Items[4].Title.Caption:='tipo';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[5].FieldName:='form_campo';
     DBGrid3.Columns.Items[5].Title.Caption:='Form';
     DBGrid3.Columns.Add;
     DBGrid3.Columns.Items[6].FieldName:='size_campo';
     DBGrid3.Columns.Items[6].Title.Caption:='Tamanho';
     lb_tab.Caption:= dm.ds_sql3.fieldbyname('tabela').AsString;
     with dm.ds_sql4 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf21,37249);
        Open;
        Filter:= 'cod_tab=0';
        Filtered:=true;
        count_campos.Caption:= IntToStr(RecordCount);
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_php.SpeedButton4Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_php.YuSoftLabel5Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_php.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_php.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_php.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_php.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_php.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_php.Left:= adm_php.Left-(mv_mouse.x-x);
      adm_php.Top:= adm_php.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_php.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_php.Left := adm_php.Left - (mv_mouse.x -x);
      adm_php.Top := adm_php.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_php.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_php.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_php.bt_executarvisitasClick(Sender: TObject);
var xcount : integer;
begin
     Try
        StrtoInt(ed_inccount.text);
     Except
        hwsf.BtMensagem('Número digitado inválido.');
        ed_inccount.SelectAll;
        ed_inccount.SetFocus;
        exit;
     end;
     dm.gravar_logsys('Inserir ['+ed_inccount.Text+'] Visitas -->'+ed_contador.Text);
     loadx := Tloadx.Create(Application);
     loadx.lbloading.Caption:='Incluindo visitas';
     loadx.Show;
     loadx.Update;
     loadx.Progressloading.position:=0;
     loadx.Progressloading.Max:=StrtoInt(ed_inccount.Text);
     For xcount:=1 to StrtoInt(ed_inccount.Text) do begin
         loadx.Progressloading.position:=xcount;
         With dm.executa do begin
              CommandText:='INSERT INTO '+ed_contador.Text+' (timestamp,ip,arquivo) Values(:p0,:p1,:p2)';
              Params[0].AsInteger:=YearOf(Now)+MinuteOfTheYear(Now)+xcount;
              Params[1].AsString:='0.0.0.0';
              Params[2].AsString:='forçada';
              Try
                 Execute;
              Except End;
         end;
         Application.ProcessMessages;
     end;
     loadx.Free;
     hwsf.BtMensagem('Visitas incluidas');
end;

procedure Tadm_php.br_localizarbase1Click(Sender: TObject);
begin
     Try
          Application.CreateForm(TBt_bases, Bt_bases);
          Bt_bases.ShowModal;
          if Bt_bases.Bt_Confere then begin
             ed_online.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
             Try
                With dm.executa do begin
                    CommandText:='SELECT timestamp,ip,arquivo FROM '+dm.ds_sql3.fieldbyname('tabela').AsString;
                    Open;
                    Close;
                end;
             Except
                hwsf.BtMensagem('Tabela selecionada não é de válida.');
                exit;
             End;
          end;
     Finally
          Bt_bases.Free;
     End;
     atualizacampos;
     Try
        if dm.executa3.RecordCount<=0 then begin
           ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf23,37249),1);
           With dm.executa do begin
                CommandText:='INSERT INTO '+EnDecryptString(Serverconect.vrf23,37249)+' (codigo,cod_usr,cod_tab1,cod_tab2) '+
                          'VALUES (:p0,:p1,:p2,:p3)';
                Params[0].AsInteger:= ax_cod_y3;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Params[2].AsInteger:= 0;
                Params[3].AsInteger:= dm.ds_sql3.fieldbyname('codigo').AsInteger;
                Execute;
           end;
        end else begin
           With dm.executa do begin
                CommandText:='UPDATE '+EnDecryptString(Serverconect.vrf23,37249)+' SET cod_tab2=:pr0 '+
                          'WHERE cod_usr=:pr1';
                Params[0].AsInteger:= dm.ds_sql3.fieldbyname('codigo').AsInteger;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Execute;
           end;
        end;
        dm.executa3.Refresh;
     Except End;
end;

procedure Tadm_php.br_localizarbase2Click(Sender: TObject);
begin
     Try
          Application.CreateForm(TBt_bases, Bt_bases);
          Bt_bases.ShowModal;
          if Bt_bases.Bt_Confere then begin
             ed_contador.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
             Try
                With dm.executa do begin
                    CommandText:='SELECT timestamp,ip,arquivo FROM '+dm.ds_sql3.fieldbyname('tabela').AsString;
                    Open;
                    Close;
                end;
             Except
                hwsf.BtMensagem('Tabela selecionada não é de válida.');
                exit;
             End;
          end;
     Finally
          Bt_bases.Free;
     End;
     atualizacampos;
     Try
        if dm.executa3.RecordCount<=0 then begin
           ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf23,37249),1);
           With dm.executa do begin
                CommandText:='INSERT INTO '+EnDecryptString(Serverconect.vrf23,37249)+' (codigo,cod_usr,cod_tab1,cod_tab2) '+
                          'VALUES (:p0,:p1,:p2,:p3)';
                Params[0].AsInteger:= ax_cod_y3;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Params[2].AsInteger:= dm.ds_sql3.fieldbyname('codigo').AsInteger;
                Params[3].AsInteger:= 0;
                Execute;
           end;
        end else begin
           With dm.executa do begin
                CommandText:='UPDATE '+EnDecryptString(Serverconect.vrf23,37249)+' SET cod_tab1=:pr0 '+
                          'WHERE cod_usr=:pr1';
                Params[0].AsInteger:= dm.ds_sql3.fieldbyname('codigo').AsInteger;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Execute;
           end;
        end;
        dm.executa3.Refresh;
     Except End;
end;

procedure Tadm_php.bt_abrirClick(Sender: TObject);
begin
     OpenDialog_php.InitialDir:=  ExtractFilePath(Application.ExeName);
     If OpenDialog_php.Execute then begin
        editor_php.Lines.LoadFromFile(OpenDialog_php.FileName);
        lbtitlephp.Caption:=OpenDialog_php.FileName;
        dm.gravar_logsys('Abrir php -->'+OpenDialog_php.FileName);
     end;
end;

procedure Tadm_php.bt_salvarClick(Sender: TObject);
begin
      if editor_php.Text<>'' then begin
          SaveDialog_php.InitialDir:= ExtractFilePath(Application.ExeName);
          if SaveDialog_php.Execute then begin
             SavetoTextFile(editor_php.Lines,SaveDialog_php.FileName);
             lbtitlephp.Caption:=SaveDialog_php.FileName;
             dm.gravar_logsys('Salvar php -->'+SaveDialog_php.FileName);
          end;
      end;
end;

procedure Tadm_php.bt_novoClick(Sender: TObject);
begin
     editor_php.Clear;
     lbtitlephp.Caption:='<Arquivo novo>';
end;

procedure Tadm_php.bt_selecionarClick(Sender: TObject);
var axphp1,axphp2 : string;
    axinitab : boolean;
begin
     if not ComboBox_predefinidos.ItemIndex>=0 then begin
        hwsf.BtMensagem('Selecione um item na lista.');
        exit;
     end;
     dm.gravar_logsys('Gerar php ['+ComboBox_predefinidos.Text+'] --> Online:'+ed_online.Text+' Contador:'+ed_contador.Text);
     Case ComboBox_predefinidos.ItemIndex of
        0: begin
           With editor_php do begin
                  Clear;
                  Lines.Add('<?');
                  Lines.Add(#9+'$db_host = "'+ed_host.Text+'";');
                  Lines.Add(#9+'$db_user = "'+ed_user.Text+'";');
                  Lines.Add(#9+'$db_pass = "'+ed_pass.Text+'";');
                  Lines.Add(#9+'$db_bdad = "'+ed_db.Text+'";');
                  Lines.Add(#9+'mysql_pconnect($db_host, $db_user, $db_pass, $db_bdad) or die (mysql_error());');
                  Lines.Add('?>');
           end;
        end;
        1: begin
           With editor_php do begin
              Clear;
              Lines.Add('<?');
              Lines.Add(#9+'require('+#39+'conect.php'+#39+');');
              Lines.Add(#9+'$timestamp=time();');
              Lines.Add(#9+'$timeout=time()-300;');
              Lines.Add(#9+'$timestamp=time(); ');
              Lines.Add(#9+'if ($atualiza_count == "y") {');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "SELECT DISTINCT ip FROM '+ed_online.Text+'") or die(mysql_error());');
              Lines.Add(#9+#9+'$usuarios=mysql_num_rows($result);');
              Lines.Add(#9+'$result=mysql_db_query($db_bdad, "SELECT * FROM '+ed_contador.Text+'") or die(mysql_error());');
              Lines.Add(#9+'$contador=mysql_num_rows($result);');
              Lines.Add(#9+'} else {');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "INSERT INTO '+ed_online.Text+' VALUES ('+#39+'$timestamp'+#39+','+#39+'$REMOTE_ADDR'+#39+','+#39+'$PHP_SELF'+#39+')");');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "DELETE FROM '+ed_online.Text+' WHERE timestamp<$timeout");');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "SELECT DISTINCT ip FROM '+ed_online.Text+'") or die(mysql_error());');
              Lines.Add(#9+#9+'$usuarios=mysql_num_rows($result);');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "INSERT INTO '+ed_contador.Text+' VALUES ('+#39+'$timestamp'+#39+','+#39+'$REMOTE_ADDR'+#39+','+#39+'$PHP_SELF'+#39+')");');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "SELECT * FROM '+ed_contador.Text+'") or die(mysql_error());');
              Lines.Add(#9+#9+'$contador=mysql_num_rows($result);');
              Lines.Add(#9+'}');
              Lines.Add(#9+'mysql_close();');
              Lines.Add(#9+'echo "&contador="; echo urlencode($contador);');
              Lines.Add(#9+'echo "&usuarios="; echo urlencode($usuarios);');
              Lines.Add('?>');
           end;
        end;
        2: begin
           With editor_php do begin
              Clear;
              Lines.Add('<?');
              Lines.Add(#9+'require('+#39+'conect.php'+#39+');');
              Lines.Add(#9+'$timestamp=time();');
              Lines.Add(#9+'$timeout=time()-300;');
              Lines.Add(#9+'$timestamp=time(); ');
              Lines.Add(#9+'if ($atualiza_count == "y") {');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "SELECT DISTINCT ip FROM '+ed_online.Text+'") or die(mysql_error());');
              Lines.Add(#9+#9+'$usuarios=mysql_num_rows($result);');
              Lines.Add(#9+'$result=mysql_db_query($db_bdad, "SELECT * FROM '+ed_contador.Text+'") or die(mysql_error());');
              Lines.Add(#9+'$contador=mysql_num_rows($result);');
              Lines.Add(#9+'} else {');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "INSERT INTO '+ed_online.Text+' VALUES ('+#39+'$timestamp'+#39+','+#39+'$REMOTE_ADDR'+#39+','+#39+'$PHP_SELF'+#39+')");');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "DELETE FROM '+ed_online.Text+' WHERE timestamp<$timeout");');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "SELECT DISTINCT ip FROM '+ed_online.Text+'") or die(mysql_error());');
              Lines.Add(#9+#9+'$usuarios=mysql_num_rows($result);');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "INSERT INTO '+ed_contador.Text+' VALUES ('+#39+'$timestamp'+#39+','+#39+'$REMOTE_ADDR'+#39+','+#39+'$PHP_SELF'+#39+')");');
              Lines.Add(#9+#9+'$result=mysql_db_query($db_bdad, "SELECT * FROM '+ed_contador.Text+'") or die(mysql_error());');
              Lines.Add(#9+#9+'$contador=mysql_num_rows($result);');
              Lines.Add(#9+'}');
              Lines.Add(#9+'mysql_close();');
              Lines.Add(#9+'echo "$contador visitas  -  $usuarios usuários on-line";');
              Lines.Add('?>');
           end;
        end;
        3: begin
           With editor_php do begin
              Clear;
              Lines.Add('<?');
              Lines.Add(#9+'require('+#39+'conect.php'+#39+');');
              Lines.Add(#9+'$result_crc="ok";');

              Lines.Add(#9+'$executa = mysql_db_query($db_bdad, "SELECT * FROM '+lb_tab.Caption+' WHERE codigo = '+#39+'$codigo'+#39+';"); ');
		          Lines.Add(#9+'if not ($executa) { ');
              Lines.Add(#9+#9+'$result_crc=$result_crc. "x"; ');
              Lines.Add(#9+'} else { ');
              Lines.Add(#9+#9+'while($lista_sql = mysql_fetch_array($executa)) { ');
              dm.ds_sql4.First;
              While not dm.ds_sql4.Eof do begin
                    if dm.ds_sql4.fieldbyname('campo').AsString <> 'codigo' then
                    Lines.Add(#9+#9+#9+'$'+dm.ds_sql4.fieldbyname('campo').AsString+' = $lista_sql['+dm.ds_sql4.fieldbyname('campo').AsString+']; ');
                    dm.ds_sql4.Next;
              end;
              Lines.Add(#9+#9+'} ');
              Lines.Add(#9+'} ');
              dm.ds_sql4.First;
              While not dm.ds_sql4.Eof do begin
                    if dm.ds_sql4.fieldbyname('campo').AsString <> 'codigo' then
                    Lines.Add(#9+'echo "&'+dm.ds_sql4.fieldbyname('campo').AsString+'="; echo urlencode($'+dm.ds_sql4.fieldbyname('campo').AsString+');');
                    dm.ds_sql4.Next;
              end;
              Lines.Add(#9+'mysql_close();');
	            Lines.Add(#9+'echo "&result_crc="; echo urlencode($result_crc);');
              Lines.Add('?>');
           end;
        end;
        4: begin
           With editor_php do begin
              Clear;
              Lines.Add('<?');
              Lines.Add(#9+'require('+#39+'conect.php'+#39+');');
              Lines.Add(#9+'$result_crc="ok";');
              Lines.Add(#9+'$codigo_crc = 0;');
		          Lines.Add(#9+'$executa=mysql_db_query($db_bdad, "SELECT MAX(codigo) FROM '+lb_tab.Caption+'") or die(mysql_error());');
		          Lines.Add(#9+'if ($executa) {');
		          Lines.Add(#9+#9+'while($lista_sql2 = mysql_fetch_array($executa)) {');
				      Lines.Add(#9+#9+#9+'$codigo_crc = $lista_sql2[0];');
				      Lines.Add(#9+#9+#9+'$codigo_crc = $codigo_crc + 1;');
		          Lines.Add(#9+#9+'}');
		          Lines.Add(#9+'} else {');
		          Lines.Add(#9+#9+'$codigo_crc = 1;');
		          Lines.Add(#9+'}');
              axinitab:=true;
              axphp1:=#9+'$executa = mysql_db_query($db_bdad, "INSERT INTO '+lb_tab.Caption+' (';
              axphp2:=#9+'VALUES (';
              dm.ds_sql4.First;
              While not dm.ds_sql4.Eof do begin
                  if axinitab then begin
                     axphp1:=axphp1+dm.ds_sql4.fieldbyname('campo').AsString;
                     axphp2:=axphp2+#39+'$'+dm.ds_sql4.fieldbyname('campo').AsString+#39;
                     axinitab:=false;
                  end else begin
                     axphp1:=axphp1+','+dm.ds_sql4.fieldbyname('campo').AsString;
                     axphp2:=axphp2+','+#39+'$'+dm.ds_sql4.fieldbyname('campo').AsString+#39;
                  end;
                  dm.ds_sql4.Next;
              end;
              axphp1:=axphp1+') ';
              axphp2:=axphp2+'"); ';
              Lines.Add(axphp1);
              Lines.Add(axphp2);
		          Lines.Add(#9+'if not ($executa) { $result_crc=$result_crc. "x"; }');
              Lines.Add(#9+'mysql_close();');
	            Lines.Add(#9+'echo "&result_crc="; echo urlencode($result_crc);');
              Lines.Add('?>');
           end;
        end;
        5: begin
           With editor_php do begin
              Clear;
              Lines.Add('<?');
              Lines.Add(#9+'require('+#39+'conect.php'+#39+');');
              Lines.Add(#9+'$result_crc="ok";');
              axinitab:=true;
              axphp1:=#9+'$executa = mysql_db_query($db_bdad, "UPDATE '+lb_tab.Caption+' SET ';
              axphp2:=#9+'WHERE codigo = '+#39+'$codigo'+#39+';");';
              dm.ds_sql4.First;
              While not dm.ds_sql4.Eof do begin
                  if dm.ds_sql4.fieldbyname('campo').AsString='codigo' then begin
                     //
                  end else if not axinitab then begin
                     axphp1:=axphp1+dm.ds_sql4.fieldbyname('campo').AsString+'='+#39+'$'+dm.ds_sql4.fieldbyname('campo').AsString+#39;
                     axinitab:=false;
                  end else begin
                     axphp1:=axphp1+','+dm.ds_sql4.fieldbyname('campo').AsString+'='+#39+'$'+dm.ds_sql4.fieldbyname('campo').AsString+#39;
                  end;
                  dm.ds_sql4.Next;
              end;
              Lines.Add(axphp1);
              Lines.Add(axphp2);
		          Lines.Add(#9+'if not ($executa) { $result_crc=$result_crc. "x"; }');
              Lines.Add(#9+'mysql_close();');
	            Lines.Add(#9+'echo "&result_crc="; echo urlencode($result_crc);');
              Lines.Add('?>');
           end;
        end;
        6: begin
           With editor_php do begin
              Clear;
              Lines.Add('<?');
              Lines.Add(#9+'require('+#39+'conect.php'+#39+');');
              Lines.Add(#9+'$result_crc="ok";');
              axinitab:=true;
              axphp1:=#9+'$executa = mysql_db_query($db_bdad, "DELETE FROM '+lb_tab.Caption+' ';
              axphp2:=#9+'WHERE codigo = '+#39+'$codigo'+#39+';");';
		          Lines.Add(#9+'if not ($executa) { $result_crc=$result_crc. "x"; }');
              Lines.Add(#9+'mysql_close();');
	            Lines.Add(#9+'echo "&result_crc="; echo urlencode($result_crc);');
              Lines.Add('?>');
           end;
        end;
     End;
end;

procedure Tadm_php.abre_cnx;
begin
     ComboBox_cbx.Clear;
     ComboBox_cbx.Items.Add('DB2Connection');
     ComboBox_cbx.Items.Add('IBConnection');
     ComboBox_cbx.Items.Add('InformixConnection');
     ComboBox_cbx.Items.Add('MSSQLConnection');
     ComboBox_cbx.Items.Add('MySQLConnection');
     ComboBox_cbx.Items.Add('OracleConnection');
     With Serverconect do begin
          ComboBox_cbx.ItemIndex:=vrf09[0];
          ed_host.Text:= EnDecryptString(vrf10[0],37249);
          ed_user.Text:= EnDecryptString(vrf12[0],37249);
          ed_pass.Text:= EnDecryptString(vrf13[0],37249);
          ed_db.Text:= EnDecryptString(vrf11[0],37249);
          ed_lib.Text:= EnDecryptString(vrf15[0],12527);
     end;
end;

procedure Tadm_php.YuSoftLabel3Click(Sender: TObject);
begin
     abre_cnx;
end;

procedure Tadm_php.SpeedButton3Click(Sender: TObject);
var ax_codtabela:integer;
begin
      With dm.executa do begin
           CommandText:='CREATE TABLE '+ed_online.Text+' ('+
                        'timestamp int(15) NOT NULL default '+#39+'0'+#39+','+
                        'ip varchar(40) NOT NULL default '+#39+#39+','+
                        'arquivo varchar(100) NOT NULL default '+#39+#39+','+
                        'PRIMARY KEY (timestamp)'+
                        ')';
           Try
              Execute;
           Except
              hwsf.BtMensagem('Erro ao criar tabela ou tabela já existe'+#13+ed_online.Text);
              exit;
           End;
           hwsf.BtMensagem('Processo concluído.');
      end;
      Try
          ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf20,37249),1);
          ax_codtabela:=ax_cod_y3;
          With dm.executa do begin
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf20,37249)+' (codigo,cod_usr,tabela,desc_tab,mod) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4)';
               Params[0].AsInteger  := ax_cod_y3;
               Params[1].AsInteger  := Strtoint(lb_codusr.caption);
               Params[2].AsString   := ed_online.Text;
               Params[3].AsString   := 'Usuários on-line';
               Params[4].AsString   := 'xxxx';
               Execute;
          end;

          ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf21,37249),1);
          With dm.executa do begin
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod_y3;
               Params[1].AsInteger  := ax_codtabela;
               Params[2].AsString   := 'timestamp';
               Params[3].AsString   := 'timestamp';
               Params[4].AsInteger  := 3;
               Params[5].AsInteger  := 1;
               Params[6].AsInteger  := 15;
               Params[7].AsString   := '';
               Execute;
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod_y3+1;
               Params[1].AsInteger  := ax_codtabela;
               Params[2].AsString   := 'ip';
               Params[3].AsString   := 'ip';
               Params[4].AsInteger  := 1;
               Params[5].AsInteger  := 1;
               Params[6].AsInteger  := 40;
               Params[7].AsString   := '';
               Execute;
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod_y3+2;
               Params[1].AsInteger  := ax_codtabela;
               Params[2].AsString   := 'arquivo';
               Params[3].AsString   := 'arquivo';
               Params[4].AsInteger  := 1;
               Params[5].AsInteger  := 1;
               Params[6].AsInteger  := 100;
               Params[7].AsString   := '';
               Execute;
          end;

          if dm.executa3.RecordCount<=0 then begin
           ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf23,37249),1);
           With dm.executa do begin
                CommandText:='INSERT INTO '+EnDecryptString(Serverconect.vrf23,37249)+' (codigo,cod_usr,cod_tab1,cod_tab2) '+
                          'VALUES (:p0,:p1,:p2,:p3)';
                Params[0].AsInteger:= ax_cod_y3;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Params[2].AsInteger:= 0;
                Params[3].AsInteger:= ax_codtabela;
                Execute;
           end;
          end else begin
           With dm.executa do begin
                CommandText:='UPDATE '+EnDecryptString(Serverconect.vrf23,37249)+' SET cod_tab2=:pr0 '+
                          'WHERE cod_usr=:pr1';
                Params[0].AsInteger:= ax_codtabela;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Execute;
           end;
          end;
          dm.executa3.Refresh;
          dm.ds_sql3.Refresh;
          dm.ds_sql4.Refresh;
          atualiza_grade;
          atualizacampos;
     Except End;
end;

procedure Tadm_php.SpeedButton6Click(Sender: TObject);
var ax_codtabela:Integer;
begin
      With dm.executa do begin
           CommandText:='CREATE TABLE '+ed_contador.Text+' ('+
                        'timestamp int(15) NOT NULL default '+#39+'0'+#39+','+
                        'ip varchar(40) NOT NULL default '+#39+#39+','+
                        'arquivo varchar(100) NOT NULL default '+#39+#39+','+
                        'PRIMARY KEY (timestamp)'+
                        ')';
           Try
              Execute;
           Except
              hwsf.BtMensagem('Erro ao criar tabela ou tabela já existe'+#13+ed_contador.Text);
              exit;
           End;
           hwsf.BtMensagem('Processo concluído.');
      end;
      Try
          ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf20,37249),1);
          ax_codtabela:=ax_cod_y3;
          With dm.executa do begin
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf20,37249)+' (codigo,cod_usr,tabela,desc_tab,mod) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4)';
               Params[0].AsInteger  := ax_cod_y3;
               Params[1].AsInteger  := Strtoint(lb_codusr.caption);
               Params[2].AsString   := ed_contador.Text;
               Params[3].AsString   := 'Contador de Visitas';
               Params[4].AsString   := 'xxxx';
               Execute;
          end;

          ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf21,37249),1);
          With dm.executa do begin
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod_y3;
               Params[1].AsInteger  := ax_codtabela;
               Params[2].AsString   := 'timestamp';
               Params[3].AsString   := 'timestamp';
               Params[4].AsInteger  := 3;
               Params[5].AsInteger  := 1;
               Params[6].AsInteger  := 15;
               Params[7].AsString   := '';
               Execute;
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod_y3+1;
               Params[1].AsInteger  := ax_codtabela;
               Params[2].AsString   := 'ip';
               Params[3].AsString   := 'ip';
               Params[4].AsInteger  := 1;
               Params[5].AsInteger  := 1;
               Params[6].AsInteger  := 40;
               Params[7].AsString   := '';
               Execute;
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod_y3+2;
               Params[1].AsInteger  := ax_codtabela;
               Params[2].AsString   := 'arquivo';
               Params[3].AsString   := 'arquivo';
               Params[4].AsInteger  := 1;
               Params[5].AsInteger  := 1;
               Params[6].AsInteger  := 100;
               Params[7].AsString   := '';
               Execute;
          end;

          if dm.executa3.RecordCount<=0 then begin
           ax_cod_y3:=dm.GetCodMax(EnDecryptString(Serverconect.vrf23,37249),1);
           With dm.executa do begin
                CommandText:='INSERT INTO '+EnDecryptString(Serverconect.vrf23,37249)+' (codigo,cod_usr,cod_tab1,cod_tab2) '+
                          'VALUES (:p0,:p1,:p2,:p3)';
                Params[0].AsInteger:= ax_cod_y3;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Params[2].AsInteger:= ax_codtabela;
                Params[3].AsInteger:= 0;
                Execute;
           end;
          end else begin
           With dm.executa do begin
                CommandText:='UPDATE '+EnDecryptString(Serverconect.vrf23,37249)+' SET cod_tab1=:pr0 '+
                          'WHERE cod_usr=:pr1';
                Params[0].AsInteger:= ax_codtabela;
                Params[1].AsInteger:= StrToInt(lb_codusr.Caption);
                Execute;
           end;
          end;
          dm.executa3.Refresh;
          dm.ds_sql3.Refresh;
          dm.ds_sql4.Refresh;
          atualiza_grade;
          atualizacampos;
     Except End;
end;

procedure Tadm_php.ed_inccountKeyPress(Sender: TObject; var Key: Char);
begin
   Case key of
     '0'..'9' :;
     #13, #8, #27:
   else
     Key := #0;
   end;
   if (key='.') or (key=',') then key:=#0;
end;

procedure Tadm_php.atualiza_grade;
begin
      Try
      if (verifica_usr) then begin
        //dm.executa_cad.CommandText:='select CLI_RAZAO_SOCIAL from entidades where CLI_CODIGO = :op0';
        //dm.executa_cad.Params[0].AsInteger:= dm.ds_sql.FieldbyName('cod_ent').AsInteger;
        //dm.executa_cad.Open;
        lb_nomeentidade.Caption:=dm.ds_sql.FieldbyName('cod_ent').AsString + ' - ';// + dm.executa_cad.Fields[0].AsString;
        //dm.executa_cad.Close;
        dm.ds_sql3.Filter:='cod_usr='+dm.ds_sql.FieldbyName('codigo').AsString;
        lb_codusr.Caption:= dm.ds_sql.FieldbyName('codigo').AsString;
        With dm.executa3 do begin
             Close;
             CommandText:='Select * from '+EnDecryptString(Serverconect.vrf23,37249)+' Where cod_usr='+lb_codusr.Caption;
             Open;
        end;
        count_tab.Caption:= IntToStr(dm.ds_sql3.RecordCount);
        if dm.executa3.RecordCount>0 then begin
           if dm.executa3.fieldbyname('cod_tab1').AsInteger>0 then begin
              if dm.ds_sql3.Locate('CODIGO',dm.executa3.fieldbyname('cod_tab1').AsInteger,[]) then
                 ed_contador.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
           end;
           if dm.executa3.fieldbyname('cod_tab2').AsInteger>0 then begin
              if dm.ds_sql3.Locate('CODIGO',dm.executa3.fieldbyname('cod_tab2').AsInteger,[]) then
                  ed_online.Text:=dm.ds_sql3.fieldbyname('tabela').AsString;
           end;
        end;
        atualizacampos;
      end;
      Except End;
end;

procedure Tadm_php.atualizacampos;
begin
     Try
     lb_tab.Caption:= dm.ds_sql3.fieldbyname('tabela').AsString;
     with dm.ds_sql4 do begin
         Filter:= 'cod_tab='+dm.ds_sql3.fieldbyname('codigo').AsString;
         count_campos.Caption:= IntToStr(RecordCount);
     end;
     Except End;
end;

function Tadm_php.verifica_usr:boolean;
begin
    if dm.ds_sql.RecordCount = 0 then begin
        Result:=false;
    end else Result:=true;
end;


procedure Tadm_php.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_php.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_php.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_php.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualizacampos;
end;

procedure Tadm_php.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualizacampos;
end;

procedure Tadm_php.DBGrid2CellClick(Column: TColumn);
begin
      atualizacampos;
end;

procedure Tadm_php.PageControl1Change(Sender: TObject);
begin
      PageControl1.Repaint;
end;

end.
