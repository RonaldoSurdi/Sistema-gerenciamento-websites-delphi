{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de tabelas customizadas.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_tab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, ImgList, XPMan;


type
  Tadm_tab = class(TForm)
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    Panel6: TPanel;
    db_tabelas: TListBox;
    Panel7: TPanel;
    Label2: TLabel;
    YuSoftLabel2: TYuSoftLabel;
    Label1: TLabel;
    tab_name: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    count_grade: TLabel;
    Label5: TLabel;
    YuSoftLabel1: TYuSoftLabel;
    YuSoftLabel3: TYuSoftLabel;
    lb_codusr: TLabel;
    YuSoftLabel4: TYuSoftLabel;
    pn_alterar: TPanel;
    lb_tabela: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    YuSoftLabel5: TYuSoftLabel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    count_tab: TLabel;
    Label8: TLabel;
    YuSoftLabel6: TYuSoftLabel;
    GroupBox4: TGroupBox;
    YuSoftLabel7: TYuSoftLabel;
    YuSoftLabel8: TYuSoftLabel;
    lb_tab: TLabel;
    count_campos: TLabel;
    Label10: TLabel;
    DBGrid3: TDBGrid;
    ImageList1: TImageList;
    pn_campo: TPanel;
    lb_campo: TLabel;
    YuSoftLabel10: TYuSoftLabel;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    Label3: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    tx_campo: TEdit;
    tx_campo_t: TEdit;
    tx_campo_s: TEdit;
    tx_combo_t: TComboBox;
    pn_campos: TPanel;
    YuSoftLabel9: TYuSoftLabel;
    SpeedButton3: TSpeedButton;
    Label12: TLabel;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    cp_sg4: TStringGrid;
    GroupBox6: TGroupBox;
    db_campos: TListBox;
    pn_campos2: TGroupBox;
    cp_sg1: TStringGrid;
    Label15: TLabel;
    tx_campo_y: TEdit;
    tx_combo_y: TComboBox;
    cp_sg2: TStringGrid;
    cp_sg3: TStringGrid;
    pn_tipo: TPanel;
    Label16: TLabel;
    tx_list_t: TListBox;
    pn_form: TPanel;
    Label17: TLabel;
    tx_list_y: TListBox;
    tx_str_y: TMemo;
    Panel4: TPanel;
    Panel5: TPanel;
    YuSoftLabel13: TYuSoftLabel;
    YuSoftLabel12: TYuSoftLabel;
    tx_str_y2: TMemo;
    Label18: TLabel;
    pn_tit: TPanel;
    Image3: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    YuSoftLabel15: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label19: TLabel;
    Label20: TLabel;
    ed_colaborador: TRichEdit;
    Panel8: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    XPManifest1: TXPManifest;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_tabelasClick(Sender: TObject);
    procedure YuSoftLabel4Click(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure YuSoftLabel1Click(Sender: TObject);
    procedure YuSoftLabel3Click(Sender: TObject);
    procedure YuSoftLabel5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure YuSoftLabel6Click(Sender: TObject);
    procedure YuSoftLabel8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure YuSoftLabel9Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure YuSoftLabel10Click(Sender: TObject);
    procedure YuSoftLabel7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tx_combo_tChange(Sender: TObject);
    procedure tx_campo_tChange(Sender: TObject);
    procedure tx_campo_tKeyPress(Sender: TObject; var Key: Char);
    procedure tx_campo_sKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure tx_combo_yChange(Sender: TObject);
    procedure tx_campo_yKeyPress(Sender: TObject; var Key: Char);
    procedure tx_campo_yChange(Sender: TObject);
    procedure cp_sg1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cp_sg3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YuSoftLabel12Click(Sender: TObject);
    procedure YuSoftLabel13Click(Sender: TObject);
    procedure db_camposClick(Sender: TObject);
    procedure cp_sg4Click(Sender: TObject);
    procedure cp_sg3Click(Sender: TObject);
    procedure cp_sg2Click(Sender: TObject);
    procedure cp_sg1Click(Sender: TObject);
    procedure YuSoftLabel15Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure tx_list_yClick(Sender: TObject);
    procedure tx_list_yKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tx_list_yKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    cv: string;
    ax_cod : integer;
    tx_list_str : TStrings;
    procedure executa_sql(tipo:integer);
    function verifica_usr:boolean;
    procedure atualiza_grade;
    procedure motrastrlx;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_tab: Tadm_tab;
  function db_DataType(tipo: integer): String;
  function dbdt(tipo: integer): Integer;
  function db_comboform(tipo:integer): String;

implementation
uses udm, hwsfunctions, DateUtils;

{$R *.dfm}

procedure Tadm_tab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     dm.ds_sql.Close;
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
     dm.desconecta_bases(2);
     Action:=cafree;
end;

procedure Tadm_tab.SpeedButton1Click(Sender: TObject);
begin
    close;
end;

procedure Tadm_tab.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dm.ds_sql.FieldByName('stat').AsInteger=2 then
        Dbgrid1.Canvas.Font.Color:= clRed
     else if dm.ds_sql.FieldByName('stat').AsInteger=3 then
        Dbgrid1.Canvas.Font.Color:= clSilver;
     Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

end;

procedure Tadm_tab.RadioButton6Click(Sender: TObject);
begin
      dm.ds_sql.Filter:='';
      dm.ds_sql.Filtered:=false;
end;

procedure Tadm_tab.RadioButton5Click(Sender: TObject);
begin
      dm.ds_sql.Filter:='stat=1';
      dm.ds_sql.Filtered:=true;
end;

procedure Tadm_tab.RadioButton4Click(Sender: TObject);
begin
      dm.ds_sql.Filter:='stat=2';
      dm.ds_sql.Filtered:=true;
end;

procedure Tadm_tab.RadioButton7Click(Sender: TObject);
begin
      dm.ds_sql.Filter:='stat=3';
      dm.ds_sql.Filtered:=true;
end;

procedure Tadm_tab.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_tab.atualiza_grade;
begin
      if (verifica_usr) then begin
        ed_colaborador.Clear;
        With dm.ds_sql2 do begin
              if Active then Close;
              CommandText:= 'SELECT DISTINCT A.codigo,A.nome,B.razao_social FROM '+EnDecryptString(Serverconect.vrf34,37249)+' A, '+
                                    EnDecryptString(Serverconect.vrf26,37249)+' B '+
                                    'WHERE B.codigo=A.cod_ent AND A.codigo='+#39+dm.ds_sql.FieldbyName('cod_ent').AsString+#39;
              Open;
              ed_colaborador.Lines.Add('Cód. colaborador: '+dm.ds_sql.FieldbyName('cod_ent').AsString);
              ed_colaborador.Lines.Add('Nome: '+FieldbyName('nome').AsString);
              ed_colaborador.Lines.Add('Empresa: '+FieldbyName('razao_social').AsString);
         end;
         With dm.ds_sql5 do begin
              if Active then Close;
              CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf29,37249)+
                                    ' WHERE codigo='+#39+dm.ds_sql.FieldbyName('cod_web').AsString+#39;
              Open;
              ed_colaborador.Lines.Add(' ');
              ed_colaborador.Lines.Add('Website: '+dm.ds_sql.FieldbyName('cod_web').AsString);
              ed_colaborador.Lines.Add(FieldbyName('website').AsString);
         end;
         dm.ds_sql3.Filter:='cod_usr='+dm.ds_sql.FieldbyName('codigo').AsString;
         lb_codusr.Caption:= dm.ds_sql.FieldbyName('codigo').AsString;
         count_tab.Caption:= IntToStr(dm.ds_sql3.RecordCount);
      end;
end;

procedure Tadm_tab.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_tab.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_tab.db_tabelasClick(Sender: TObject);
begin
      tab_name.Caption:= db_tabelas.Items.Strings[db_tabelas.ItemIndex];
end;

procedure Tadm_tab.YuSoftLabel4Click(Sender: TObject);
begin
      tab_name.Caption:= 'Selecione uma tabela na lista abaixo.';
      Edit1.Text:='';
      CheckBox1.Checked:=true;
      CheckBox2.Checked:=true;
      CheckBox3.Checked:=true;
      CheckBox4.Checked:=true;
      Edit1.SetFocus;
end;

procedure Tadm_tab.executa_sql(tipo:integer);
var ax_for, ax_cod2 : integer;
    ax_mod : string[4];
begin
    dm.gravar_logsys('Tabelas executa sql '+InttoStr(tipo));
    if (verifica_usr=false) then exit;
    Try
      if not (dm.conecta_sql.InTransaction) then begin
         TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
         TD.IsolationLevel := xilREADCOMMITTED;
         dm.conecta_sql.StartTransaction(TD);
      end;
      ax_mod:='';
      With dm.executa do begin
        if (tipo = 1) then begin
           if (tab_name.Caption = 'Selecione uma tabela na lista abaixo.') then begin
               hwsf.BtMensagem('Selecione a tabela que desejas incluir.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
               exit;
           end;
           if (dm.ds_sql3.Locate('tabela',tab_name.Caption,[])) then begin
              hwsf.BtMensagem('A tabela selecionada já foi cadastrada.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
              exit;
           end;
           if (Edit1.text = '') then begin
               hwsf.BtMensagem('É necessário digitar a descrição da tabela.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
               Edit1.SetFocus;
               exit;
           end else if (dm.ds_sql3.Locate('desc_tab',Edit1.Text,[])) then begin
              hwsf.BtMensagem('A descrição da tabela já foi cadastrada.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
              Edit1.SelectAll;
              Edit1.SetFocus;
              exit;
           end;
           CommandText := 'SELECT MAX(codigo) FROM '+EnDecryptString(Serverconect.vrf20,37249);
           Open;
           if RecordCount > 0 then ax_cod:= Fields[0].AsInteger+1
           else ax_cod := 1;
           Close;
           CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf20,37249)+' (codigo,cod_usr,tabela,desc_tab,mod) '+
                       'VALUES (:p0,:p1,:p2,:p3,:p4)';
           Params[0].AsInteger  := ax_cod;
           Params[1].AsInteger  := dm.ds_sql.FieldbyName('codigo').AsInteger;
           Params[2].AsString   := tab_name.Caption;
           Params[3].AsString   := Edit1.Text;
           if CheckBox1.Checked then ax_mod:='x' else ax_mod:='-';
           if CheckBox2.Checked then ax_mod:=ax_mod+'x' else ax_mod:=ax_mod+'-';
           if CheckBox3.Checked then ax_mod:=ax_mod+'x' else ax_mod:=ax_mod+'-';
           if CheckBox4.Checked then ax_mod:=ax_mod+'x' else ax_mod:=ax_mod+'-';
           Params[4].AsString   := ax_mod;
        end else if (tipo = 2) then begin
           if (dm.ds_sql3.RecordCount = 0) then begin
               hwsf.BtMensagem('Não há cadastros de tabelas para o usuário.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
               exit;
           end;
           CommandText := 'UPDATE '+EnDecryptString(Serverconect.vrf20,37249)+' SET desc_tab=:p0,mod=:p1 '+
                       'WHERE codigo=:P2 ';
           Params[0].AsString   := Edit2.Text;
           if CheckBox5.Checked then ax_mod:='x' else ax_mod:='-';
           if CheckBox6.Checked then ax_mod:=ax_mod+'x' else ax_mod:=ax_mod+'-';
           if CheckBox7.Checked then ax_mod:=ax_mod+'x' else ax_mod:=ax_mod+'-';
           if CheckBox8.Checked then ax_mod:=ax_mod+'x' else ax_mod:=ax_mod+'-';
           Params[1].AsString   := ax_mod;
           Params[2].AsInteger  := dm.ds_sql3.FieldbyName('codigo').AsInteger;
           pn_alterar.Visible:=false;
           GroupBox1.Enabled:=true;
           GroupBox2.Enabled:=true;
           GroupBox3.Enabled:=true;
        end else if (tipo = 3) then begin
           if (dm.ds_sql3.RecordCount = 0) then begin
               hwsf.BtMensagem('Não há cadastros de tabelas para o usuário.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
               exit;
           end;
           if not hwsf.BtConfirma('Excluir a tabela '+dm.ds_sql3.FieldbyName('tabela').AsString+' do usuário?') then begin
              if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
              exit;
           end;
           ax_cod := dm.ds_sql3.FieldbyName('codigo').AsInteger;
           CommandText := 'DELETE FROM '+EnDecryptString(Serverconect.vrf20,37249)+
                       ' WHERE codigo=:p0 ';
           Params[0].AsInteger  := ax_cod;
        end else if (tipo = 4) then begin
           for ax_for:=1 to db_campos.Items.Count do begin
               CommandText := 'SELECT MAX(codigo) FROM '+EnDecryptString(Serverconect.vrf21,37249);
               Open;
               if RecordCount > 0 then ax_cod2:= Fields[0].AsInteger+1
               else ax_cod2 := 1;
               Close;
               CommandText := 'INSERT INTO '+EnDecryptString(Serverconect.vrf21,37249)+' (codigo,cod_tab,campo,desc_campo,tipo_campo,form_campo,size_campo,str_campo) '+
                           'VALUES (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7)';
               Params[0].AsInteger  := ax_cod2;
               Params[1].AsInteger  := ax_cod;
               Params[2].AsString   := db_campos.Items.Strings[(ax_for-1)];
               Params[3].AsString   := cp_sg4.Cells[0,(ax_for-1)];
               Params[4].AsInteger  := StrToInt(cp_sg1.Cells[0,(ax_for-1)]);
               Params[5].AsInteger  := StrToInt(cp_sg3.Cells[0,(ax_for-1)]);
               Params[6].AsInteger  := StrToInt(cp_sg2.Cells[0,(ax_for-1)]);
               Params[7].AsString   := tx_list_str.Strings[(ax_for-1)];
               Execute;
           end;
           pn_campos.Visible:=false;
           GroupBox1.Enabled:=true;
           GroupBox2.Enabled:=true;
           GroupBox3.Enabled:=true;
        end else if (tipo = 5) then begin
           if (dm.ds_sql4.RecordCount = 0) then begin
               hwsf.BtMensagem('Não há cadastros de campos para a tabela.');
               if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
               exit;
           end;
           CommandText := 'UPDATE '+EnDecryptString(Serverconect.vrf21,37249)+' SET desc_campo=:p0,tipo_campo=:p1,form_campo=:p2,size_campo=:p3,str_campo=:p4 '+
                       'WHERE codigo=:p5 ';
           Params[0].AsString   := tx_campo.Text;
           Params[1].AsInteger  := StrToInt(tx_campo_t.Text);
           Params[2].AsInteger  := StrToInt(tx_campo_y.Text);
           Params[3].AsInteger  := StrToInt(tx_campo_s.Text);
           Params[4].AsString   := tx_str_y2.Text;
           Params[5].AsInteger  := dm.ds_sql4.FieldbyName('codigo').AsInteger;
        end;
        if (tipo <> 4) then Execute;
        if (tipo = 1) then begin
           pn_campos.Visible:=true;
           GroupBox1.Enabled:=false;
           GroupBox2.Enabled:=false;
           GroupBox3.Enabled:=false;
           dm.conecta_sql.GetFieldNames(db_tabelas.Items.Strings[db_tabelas.ItemIndex],db_campos.Items);
           cp_sg4.RowCount:= db_campos.Items.Count;
           for ax_for:=1 to db_campos.Items.Count do begin
               cp_sg4.Cells[0,(ax_for-1)]:= db_campos.Items.Strings[(ax_for-1)];
           end;
           CommandText:='select * from '+db_tabelas.Items.Strings[db_tabelas.ItemIndex];
           Open;
           cp_sg1.RowCount:= db_campos.Items.Count;
           cp_sg2.RowCount:= db_campos.Items.Count;
           cp_sg3.RowCount:= db_campos.Items.Count;
           for ax_for:=1 to cp_sg1.RowCount do begin
               cp_sg1.Cells[0,ax_for-1]:=Variant(dm.executa.FieldByName(db_campos.Items.Strings[ax_for-1]).DataType);
               cp_sg2.Cells[0,ax_for-1]:=IntToStr(dm.executa.FieldByName(db_campos.Items.Strings[ax_for-1]).DataSize);
               cp_sg3.Cells[0,ax_for-1]:= IntToStr(dbdt(Variant(dm.executa.FieldByName(db_campos.Items.Strings[ax_for-1]).DataType)));
               tx_list_str.Add('');
           end;
           dm.executa.Close;
           cp_sg4.SetFocus;
        end else if (tipo = 3) then begin
           CommandText := 'DELETE FROM '+EnDecryptString(Serverconect.vrf21,37249)+
                       ' WHERE cod_tab=:p0 ';
           Params[0].AsInteger  := ax_cod;
           Execute;
        end;
      end;
    Except
      pn_alterar.Visible:=false;
      pn_campo.Visible:=false;
      pn_campos.Visible:=false;
      pn_campos.Visible:=false;
      GroupBox1.Enabled:=true;
      GroupBox2.Enabled:=true;
      GroupBox3.Enabled:=true;
      if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Rollback(TD);
      hwsf.BtMensagem('Ocorreu um erro ao gravar os dados.');
      exit;
    End;
    if (tipo <> 1) then begin
      if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
      if (tipo = 5) then begin
         dm.ds_sql4.Close;
         dm.ds_sql4.Open;
         pn_campo.Visible:=false;
         GroupBox1.Enabled:=true;
         GroupBox2.Enabled:=true;
         GroupBox3.Enabled:=true;
         GroupBox4.Enabled:=true;
      end else begin
         dm.ds_sql3.Close;
         dm.ds_sql3.Open;
      end;
      count_tab.Caption:= IntToStr(dm.ds_sql3.RecordCount);
      hwsf.BtMensagem('Processo efetuado com êxito.');
      if (tipo = 5) then DBGrid3.SetFocus
      else DBGrid2.SetFocus;
    end;
end;

procedure Tadm_tab.YuSoftLabel2Click(Sender: TObject);
begin
    executa_sql(1);
end;

procedure Tadm_tab.YuSoftLabel1Click(Sender: TObject);
begin
    pn_alterar.Visible:=true;
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox3.Enabled:=false;
    lb_tabela.Caption:= dm.ds_sql3.FieldbyName('tabela').AsString;
    Edit2.Text:= dm.ds_sql3.FieldbyName('desc_tab').AsString;
    if copy(dm.ds_sql3.FieldbyName('mod').AsString,1,1) = 'x' then CheckBox5.Checked:=true else CheckBox5.Checked:=false;
    if copy(dm.ds_sql3.FieldbyName('mod').AsString,2,1) = 'x' then CheckBox6.Checked:=true else CheckBox6.Checked:=false;
    if copy(dm.ds_sql3.FieldbyName('mod').AsString,3,1) = 'x' then CheckBox7.Checked:=true else CheckBox7.Checked:=false;
    if copy(dm.ds_sql3.FieldbyName('mod').AsString,4,1) = 'x' then CheckBox8.Checked:=true else CheckBox8.Checked:=false;
end;

procedure Tadm_tab.YuSoftLabel3Click(Sender: TObject);
begin
    executa_sql(3);
end;

procedure Tadm_tab.YuSoftLabel5Click(Sender: TObject);
begin
     executa_sql(2);
end;

procedure Tadm_tab.SpeedButton2Click(Sender: TObject);
begin
     pn_alterar.Visible:=false;
     GroupBox1.Enabled:=true;
     GroupBox2.Enabled:=true;
     GroupBox3.Enabled:=true;
end;

function Tadm_tab.verifica_usr:boolean;
begin
    if dm.ds_sql.RecordCount = 0 then begin
        GroupBox2.Caption:= GroupBox2.Caption + 'É necessário efetuar o cadastro de usuários.';
        Result:=false;
    end else Result:=true;
end;

procedure Tadm_tab.YuSoftLabel6Click(Sender: TObject);
begin
    if dm.ds_sql3.RecordCount = 0 then begin
       hwsf.BtMensagem('É necessário efetuar o cadastro de tabelas.');
       exit;
    end;
    lb_tab.Caption:= dm.ds_sql3.fieldbyname('tabela').AsString;
    with dm.ds_sql4 do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf21,37249);
        Open;
        Filter:= 'cod_tab='+dm.ds_sql3.fieldbyname('codigo').AsString;
        Filtered:=true;
        count_campos.Caption:= IntToStr(RecordCount);
    end;
    GroupBox4.Visible:=true;
end;

procedure Tadm_tab.YuSoftLabel8Click(Sender: TObject);
begin
     GroupBox4.Visible:=false;
     lb_tab.Caption:='';
     dm.ds_sql4.Filter:='';
     dm.ds_sql4.Filtered:=false;
     dm.ds_sql4.Close;
end;

procedure Tadm_tab.SpeedButton3Click(Sender: TObject);
begin
     if (dm.conecta_sql.InTransaction) then dm.conecta_sql.Commit(TD);
     pn_campos.Visible:=false;
     GroupBox1.Enabled:=true;
     GroupBox2.Enabled:=true;
     GroupBox3.Enabled:=true;
end;

procedure Tadm_tab.YuSoftLabel9Click(Sender: TObject);
begin
     executa_sql(4);
end;

procedure Tadm_tab.SpeedButton4Click(Sender: TObject);
begin
     pn_campo.Visible:=false;
     GroupBox1.Enabled:=true;
     GroupBox2.Enabled:=true;
     GroupBox3.Enabled:=true;
     GroupBox4.Enabled:=true;
end;

procedure Tadm_tab.YuSoftLabel10Click(Sender: TObject);
begin
     executa_sql(5);
end;

procedure Tadm_tab.YuSoftLabel7Click(Sender: TObject);
begin
    pn_campo.Visible:=true;
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox4.Enabled:=false;
    lb_campo.Caption:= dm.ds_sql4.FieldbyName('campo').AsString;
    tx_campo.Text:= dm.ds_sql4.FieldbyName('desc_campo').AsString;
    tx_campo_t.Text:= dm.ds_sql4.FieldbyName('tipo_campo').AsString;
    tx_campo_y.Text:= dm.ds_sql4.FieldbyName('form_campo').AsString;
    tx_campo_s.Text:= dm.ds_sql4.FieldbyName('size_campo').AsString;
    tx_str_y2.Text:= dm.ds_sql4.FieldbyName('str_campo').AsString;
    tx_combo_t.ItemIndex:= dm.ds_sql4.FieldbyName('tipo_campo').AsInteger;
    tx_combo_y.ItemIndex:= dm.ds_sql4.FieldbyName('form_campo').AsInteger;
end;

function db_comboform(tipo:integer): String;
begin
    Case tipo of
      0:  Result:='Label';
      1:  Result:='Edit';
      2:  Result:='Memo';
      3:  Result:='RichEdit';
      4:  Result:='Data';
      5:  Result:='Hora';
      6:  Result:='RadioGroup';
      7:  Result:='CheckBox';
      8:  Result:='Image';
      9:  Result:='ComboBox';
      10: Result:='DataTime';
    end;
end;

function db_DataType(tipo: integer): String;
begin
    Case tipo of
      0:  Result:='ftUnknown';
      1:  Result:='ftString';
      2:  Result:='ftSmallint';
      3:  Result:='ftInteger';
      4:  Result:='ftWord';
      5:  Result:='ftBoolean';
      6:  Result:='ftFloat';
      7:  Result:='ftCurrency';
      8:  Result:='ftBCD';
      9:  Result:='ftDate';
      10: Result:='ftTime';
      11: Result:='ftDateTime';
      12: Result:='ftBytes';
      13: Result:='ftVarBytes';
      14: Result:='ftAutoInc';
      15: Result:='ftBlob';
      16: Result:='ftMemo';
      17: Result:='ftGraphic';
      18: Result:='ftFmtMemo';
      19: Result:='ftParadoxOle';
      20: Result:='ftDBaseOle';
      21: Result:='ftTypedBinary';
      22: Result:='ftCursor';
      23: Result:='ftFixedChar';
      24: Result:='ftWideString';
      25: Result:='ftLargeint';
      26: Result:='ftADT';
      27: Result:='ftArray';
      28: Result:='ftReference';
      29: Result:='ftDataSet';
      30: Result:='ftOraBlob';
      31: Result:='ftOraClob';
      32: Result:='ftVariant';
      33: Result:='ftInterface';
      34: Result:='ftIDispatch';
      35: Result:='ftGuid	globally';
      36: Result:='ftTimeStamp';
      37: Result:='ftFMTBcd';
    end;
end;

procedure Tadm_tab.FormCreate(Sender: TObject);
var y_for : integer;
    axshowing: Boolean;
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
     DBGrid1.DataSource:=dm.source_sql;
     DBGrid2.DataSource:=dm.source_sql3;
     DBGrid3.DataSource:=dm.source_sql4;
     loadx.Progressloading.position:=20;
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
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='cod_web';
     DBGrid1.Columns.Items[5].Title.Caption:='Website';
     With dm.ds_sql do begin
        CommandText:= 'select stat,codigo,decode(usuario,'+chr(39)+cv+chr(39)+'),decode(password,'+chr(39)+cv+chr(39)+'),dt_cad,cod_ent,cod_web from '+EnDecryptString(Serverconect.vrf19[0],37249);
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
     loadx.Progressloading.position:=60;
     dm.ds_sql3.Filtered:=true;
     count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
     count_tab.Caption:= IntToStr(dm.ds_sql3.RecordCount);
     dm.conecta_sql.GetTableNames(db_tabelas.Items,False);
     loadx.Progressloading.position:=70;
     atualiza_grade;
     loadx.Progressloading.position:=80;
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
     loadx.Progressloading.position:=90;
     tx_combo_t.Clear;
     for y_for:=0 to 37 do begin
         tx_combo_t.Items.Add(db_DataType(y_for));
         tx_list_t.Items.Add(db_DataType(y_for));
     end;
     tx_combo_y.Clear;
     for y_for:=0 to 9 do begin
         tx_combo_y.Items.Add(db_comboform(y_for));
         tx_list_y.Items.Add(db_comboform(y_for));
     end;
     tx_list_str:=TStringList.Create;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Free;
end;

procedure Tadm_tab.tx_combo_tChange(Sender: TObject);
begin
     tx_campo_t.Text:= IntToStr(tx_combo_t.ItemIndex);
end;

procedure Tadm_tab.tx_campo_tChange(Sender: TObject);
begin
     if tx_campo_t.Text <> '' then exit;
        tx_combo_t.ItemIndex:= StrToInt(tx_campo_t.Text);
end;

procedure Tadm_tab.tx_campo_tKeyPress(Sender: TObject; var Key: Char);
begin
   Case key of
     '0'..'9' :;
     #13, #8, #27:
   else
     Key := #0;
   end;
   if (key='.') or (key=',') then key:=#0;
end;

procedure Tadm_tab.tx_campo_sKeyPress(Sender: TObject; var Key: Char);
begin
   Case key of
     '0'..'9' :;
     #13, #8, #27:
   else
     Key := #0;
   end;
   if (key='.') or (key=',') then key:=#0;
end;

function dbdt(tipo: integer): Integer;
var teste_tipo : integer;
begin
    teste_tipo:=1;
    Case tipo of
      0:  teste_tipo:=0; //'Unknown or undetermined';
      1:  teste_tipo:=1; //'Character or string field';
      2:  teste_tipo:=1; //'16-bit integer field';
      3:  teste_tipo:=1; //'32-bit integer field';
      4:  teste_tipo:=1; //'16-bit unsigned integer field';
      5:  teste_tipo:=7; //'Boolean field';
      6:  teste_tipo:=1; //'Floating-point numeric field';
      7:  teste_tipo:=1; //'Money field';
      8:  teste_tipo:=3; //'Binary-Coded Decimal field that can be converted to Currency type without a loss of precision.';
      9:  teste_tipo:=4; //'Date field';
      10: teste_tipo:=5; //'Time field';
      11: teste_tipo:=10; //'Date and time field';
      12: teste_tipo:=1; //'Fixed number of bytes (binary storage)';
      13: teste_tipo:=1; //'Variable number of bytes (binary storage)';
      14: teste_tipo:=1; //'Auto-incrementing 32-bit integer counter field';
      15: teste_tipo:=1; //'Binary Large OBject field';
      16: teste_tipo:=2; //'Text memo field';
      17: teste_tipo:=8; //'Bitmap field';
      18: teste_tipo:=3; //'Formatted text memo field';
      19: teste_tipo:=0; //'Paradox OLE field';
      20: teste_tipo:=0; //'dBASE OLE field';
      21: teste_tipo:=3; //'Typed binary field';
      22: teste_tipo:=0; //'Output cursor from an Oracle stored procedure (TParam only)';
      23: teste_tipo:=1; //'Fixed character field';
      24: teste_tipo:=1; //'Wide string field';
      25: teste_tipo:=1; //'Large integer field';
      26: teste_tipo:=1; //'Abstract Data Type field';
      27: teste_tipo:=9; //'Array field';
      28: teste_tipo:=0; //'REF field';
      29: teste_tipo:=0; //'DataSet field';
      30: teste_tipo:=8; //'BLOB fields in Oracle 8 tables';
      31: teste_tipo:=0; //'CLOB fields in Oracle 8 tables';
      32: teste_tipo:=0; //'Data of unknown or undetermined type';
      33: teste_tipo:=0; //'References to interfaces (IUnknown)';
      34: teste_tipo:=0; //'References to IDispatch interfaces';
      35: teste_tipo:=0; //'unique identifier (GUID) values';
      36: teste_tipo:=0; //'Date and time field accessed through dbExpress';
      37: teste_tipo:=0; //'Binary-Coded Decimal field that is too large for ftBCD.';
    end;
    Result:=teste_tipo;
end;


procedure Tadm_tab.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 Case key of
     '0'..'9' :;
     #13, #8, #27:
   else
     Key := #0;
   end;
   if (key='.') or (key=',') then key:=#0;
end;

procedure Tadm_tab.tx_combo_yChange(Sender: TObject);
begin
     tx_campo_y.Text:= IntToStr(tx_combo_y.ItemIndex);
end;

procedure Tadm_tab.tx_campo_yKeyPress(Sender: TObject; var Key: Char);
begin
   Case key of
     '0'..'9' :;
     #13, #8, #27:
   else
     Key := #0;
   end;
   if (key='.') or (key=',') then key:=#0;
end;

procedure Tadm_tab.tx_campo_yChange(Sender: TObject);
begin
     if tx_campo_y.Text <> '' then
        tx_combo_y.ItemIndex:= StrToInt(tx_campo_y.Text);
end;

procedure Tadm_tab.cp_sg1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_F5 then begin
       pn_tipo.Visible:=true;
       tx_list_t.Selected[StrToInt(cp_sg1.Cells[0,cp_sg1.Row])];
    end;
end;

procedure Tadm_tab.cp_sg3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_F5 then begin
       pn_form.Visible:=true;
       tx_list_y.Selected[StrToInt(cp_sg3.Cells[0,cp_sg3.Row])];
    end;
end;

procedure Tadm_tab.YuSoftLabel12Click(Sender: TObject);
begin
     cp_sg1.Cells[0,cp_sg1.Row]:= IntToStr(tx_list_t.ItemIndex);
     pn_tipo.Visible:=false;
end;

procedure Tadm_tab.YuSoftLabel13Click(Sender: TObject);
begin
     cp_sg3.Cells[0,cp_sg3.Row]:= IntToStr(tx_list_y.ItemIndex);
     tx_list_str.ValueFromIndex[cp_sg3.Row]:=tx_str_y.Text;
     pn_form.Visible:=false;
end;

procedure Tadm_tab.db_camposClick(Sender: TObject);
begin
    cp_sg1.Row:=db_campos.ItemIndex;
    cp_sg2.Row:=db_campos.ItemIndex;
    cp_sg3.Row:=db_campos.ItemIndex;
    cp_sg4.Row:=db_campos.ItemIndex;
end;

procedure Tadm_tab.cp_sg4Click(Sender: TObject);
begin
    db_campos.ItemIndex:=cp_sg4.Row;
    cp_sg1.Row:=cp_sg4.Row;
    cp_sg2.Row:=cp_sg4.Row;
    cp_sg3.Row:=cp_sg4.Row;
end;

procedure Tadm_tab.cp_sg3Click(Sender: TObject);
begin
    db_campos.ItemIndex:=cp_sg3.Row;
    cp_sg1.Row:=cp_sg3.Row;
    cp_sg2.Row:=cp_sg3.Row;
    cp_sg4.Row:=cp_sg3.Row;
end;

procedure Tadm_tab.cp_sg2Click(Sender: TObject);
begin
    db_campos.ItemIndex:=cp_sg2.Row;
    cp_sg1.Row:=cp_sg2.Row;
    cp_sg3.Row:=cp_sg2.Row;
    cp_sg4.Row:=cp_sg2.Row;
end;

procedure Tadm_tab.cp_sg1Click(Sender: TObject);
begin
    db_campos.ItemIndex:=cp_sg1.Row;
    cp_sg2.Row:=cp_sg1.Row;
    cp_sg3.Row:=cp_sg1.Row;
    cp_sg4.Row:=cp_sg1.Row;
end;

procedure Tadm_tab.YuSoftLabel15Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_tab.SpeedButton5Click(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_tab.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_tab.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_tab.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_tab.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_tab.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_tab.Left:= adm_tab.Left-(mv_mouse.x-x);
      adm_tab.Top:= adm_tab.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_tab.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_tab.Left := adm_tab.Left - (mv_mouse.x -x);
      adm_tab.Top := adm_tab.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_tab.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_tab.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_tab.SpeedButton6Click(Sender: TObject);
begin
      pn_tipo.Visible:=false;
end;

procedure Tadm_tab.SpeedButton7Click(Sender: TObject);
begin
     pn_form.Visible:=false;
end;

procedure Tadm_tab.tx_list_yClick(Sender: TObject);
begin
     motrastrlx;
end;

procedure Tadm_tab.motrastrlx;
begin
    Case tx_list_y.ItemIndex of
         2,3,6,9: begin
            tx_str_y.Color:=clWindow;
            Label9.Enabled:=true;
            tx_str_y.Enabled:=true;
         end else begin
            tx_str_y.Color:=clMenu;
            tx_str_y.Clear;
            Label9.Enabled:=false;
            tx_str_y.Enabled:=false;
         end;
     end;
end;

procedure Tadm_tab.tx_list_yKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     motrastrlx;
end;

procedure Tadm_tab.tx_list_yKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     motrastrlx;
end;

end.
