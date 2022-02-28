{###############################################################################
Programa: HWShelpdesk
Módulo: Consultores suporte técnico.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit usuportecnico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ToolWin, DB, ExtDlgs,
  Grids, DBGrids, DBClient, SimpleDS, DBXpress, Provider;

type
  Tsuportecnico = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    biSystemMenu: TImage;
    bt_sobre: TSpeedButton;
    bt_minimize: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_fechar: TSpeedButton;
    tb_mnt: TLabel;
    pn_status: TPanel;
    Image4: TImage;
    pn_editor: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    db_solicitacoes: TDBGrid;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    ToolBar3: TToolBar;
    SpeedButton12: TSpeedButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3asdfasdf: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    ComboBox3: TComboBox;
    ComboBox1: TComboBox;
    SpeedButton8: TSpeedButton;
    Label6: TLabel;
    Label_hst: TLabel;
    OpenDialog_anexar: TOpenDialog;
    dt_entrega: TDateTimePicker;
    Label14: TLabel;
    CheckBox4: TCheckBox;
    lb_total: TLabel;
    Label16: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    count_grade: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Bevel1: TBevel;
    TabSheet3: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Panel3: TPanel;
    RichEditdesc: TRichEdit;
    Panel5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Panel6: TPanel;
    Label1: TLabel;
    db_arquivos: TDBGrid;
    ToolBar2: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel1: TPanel;
    db_processos: TDBGrid;
    ToolBar1: TToolBar;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label11: TLabel;
    Label_status: TLabel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    ComboBox6: TComboBox;
    SpeedButton10: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    Label17: TLabel;
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure bt_maximizaClick(Sender: TObject);
    procedure bt_minimizeClick(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure db_solicitacoesCellClick(Column: TColumn);
    procedure db_solicitacoesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure db_solicitacoesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure db_processosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_processosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_processosCellClick(Column: TColumn);
    procedure TabSheet2Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
  private
    cv : string;
    st_stream: TMemoryStream;
    procedure filtrasolicitacoes;
    procedure filtraprocessos;
    procedure filtraarquivos;
    procedure montasolicitacoes;
    procedure montaprocessos;
    procedure Adicionarsolicitacao;
    { Private declarations }
  public
     mv_mouse : TPoint;
     cp_mouse : bool;
     x_campo_form: string;
    { Public declarations }
  end;

var
  suportecnico: Tsuportecnico;

implementation

uses hwsfunctions, udm, SqlExpr, DateUtils, Math;

{$R *.dfm}

procedure Tsuportecnico.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(suportecnico.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tsuportecnico.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(suportecnico.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tsuportecnico.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      suportecnico.Left:= suportecnico.Left-(mv_mouse.x-x);
      suportecnico.Top:= suportecnico.Top - (mv_mouse.y-y);
  end;
end;

procedure Tsuportecnico.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      suportecnico.Left := suportecnico.Left - (mv_mouse.x -x);
      suportecnico.Top := suportecnico.Top - (mv_mouse.y - y);
  end;
end;

procedure Tsuportecnico.FormCreate(Sender: TObject);
begin
      //Application.OnMessage := tabtoenterpress;
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      DoubleBuffered:=True;
      pn_editor.DoubleBuffered:=True;
      //Brush.Style := BsClear;
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
      db_solicitacoes.Columns.Items[4].FieldName:='cod_apl';
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
      With dm.ds_sql do begin
          DataSet.CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf05,37249)+' order by dt_ini';
          Open;
          Filter:='';
          Filtered:=true;
          filtrasolicitacoes;
      end;
      count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
      dm.ds_sql.Last;

      db_processos.DataSource:=dm.source_sql3;
      db_processos.Columns.Clear;
      db_processos.Columns.Add;
      db_processos.Columns.Items[0].FieldName:='codigo';
      db_processos.Columns.Items[0].Title.Caption:='Controle';
      db_processos.Columns.Add;
      db_processos.Columns.Items[1].FieldName:='dtcad';
      db_processos.Columns.Items[1].Title.Caption:='Data';
      db_processos.Columns.Add;
      db_processos.Columns.Items[2].FieldName:='cod_atv';
      db_processos.Columns.Items[2].Title.Caption:='Atividade';
      db_processos.Columns.Add;
      db_processos.Columns.Items[3].FieldName:='hst';
      db_processos.Columns.Items[3].Title.Caption:='Horas trabalhadas';
      With dm.ds_sql3 do begin
          DataSet.CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf06,37249)+' order by dtcad';
          Open;
          filtraprocessos;
          Filtered:=true;
      end;
      dm.ds_sql3.Last;

      db_arquivos.DataSource:=dm.source_sql4;
      db_arquivos.Columns.Clear;
      db_arquivos.Columns.Add;
      db_arquivos.Columns.Items[0].FieldName:='cpn';
      db_arquivos.Columns.Items[0].Title.Caption:='Arquivo';
      db_arquivos.Columns.Add;
      db_arquivos.Columns.Items[1].FieldName:='cpd';
      db_arquivos.Columns.Items[1].Title.Caption:='Descrição';
      With dm.ds_sql4 do begin
          DataSet.CommandText:= 'select * from '+EnDecryptString(Helpdesk.vrf07,37249)+' order by cpn';
          Open;
          filtraarquivos;
          Filtered:=true;
      end;
      dm.ds_sql4.First;

      //responsaveis
      With dm.executa3 do begin
          SQL.Text:='select * from '+EnDecryptString(Helpdesk.vrf01,37249)+' order by descricao';
          Open;
      end;
      ComboBox2.Clear;
      ComboBox2.Items.Add('Todos');
      ComboBox5.Clear;
      dm.executa3.First;
      While not dm.executa3.Eof do begin
          ComboBox2.Items.Add(dm.executa3.fieldbyname('descricao').AsString);
          ComboBox5.Items.Add(dm.executa3.fieldbyname('descricao').AsString);
          dm.executa3.Next;
      end;
      ComboBox2.ItemIndex:=0;
      //setor
      With dm.executa4 do begin
          SQL.Text:='select * from '+EnDecryptString(Helpdesk.vrf02,37249)+' order by descricao';
          Open;
      end;
      ComboBox4.Clear;
      dm.executa4.First;
      While not dm.executa4.Eof do begin
          ComboBox4.Items.Add(dm.executa4.fieldbyname('descricao').AsString);
          dm.executa4.Next;
      end;
      //atividades
      With dm.executa5 do begin
          SQL.Text:='select * from '+EnDecryptString(Helpdesk.vrf03,37249)+' order by descricao';
          Open;
      end;
      ComboBox1.Clear;
      dm.executa5.First;
      While not dm.executa5.Eof do begin
          ComboBox1.Items.Add(dm.executa5.fieldbyname('descricao').AsString);
          dm.executa5.Next;
      end;
      //aplicativos
      With dm.executa6 do begin
          SQL.Text:='select * from '+EnDecryptString(Helpdesk.vrf04,37249)+' order by descricao';
          Open;
      end;
      ComboBox3.Clear;
      dm.executa6.First;
      While not dm.executa6.Eof do begin
          ComboBox3.Items.Add(dm.executa6.fieldbyname('descricao').AsString);
          dm.executa6.Next;
      end;
      //lista de usuarios
      cv := 'B2d7485d9N';
      With dm.executa7 do begin
        SQL.Text:= 'select codigo,usuario,cod_ent,cod_web from '+EnDecryptString(Serverconect.vrf19[0],37249);
        Open;
      end;
      ComboBox6.Clear;
      ComboBox6.Items.Add('Sistema');
      dm.executa7.First;
      While not dm.executa7.Eof do begin
          ComboBox6.Items.Add(dm.executa7.fieldbyname('usuario').AsString);
          dm.executa7.Next;
      end;
      ComboBox6.ItemIndex:=0;
end;

procedure Tsuportecnico.filtrasolicitacoes;
var filtra_usr : string;
begin
     filtra_usr:='';
     //if CheckBox1.Checked then filtra_usr:='cod_lp=1'
     //else filtra_usr:='cod_lp=0';
//     if CheckBox2.Checked then filtra_usr:=filtra_usr+' AND status = '+#39+'A'+#39;
//     else filtra_usr:=filtra_usr+' AND status <> '+#39+'A'+#39;
//     if CheckBox3.Checked then filtra_usr:=filtra_usr+' AND status = '+#39+'C'+#39;
//     else filtra_usr:=filtra_usr+' AND status <> '+#39+'C'+#39;
//     filtra_usr:=filtra_usr+' AND status <> '+#39+'X'+#39;
     if ComboBox2.ItemIndex>0 then begin
        if dm.executa3.Locate('descricao',ComboBox2.Text,[]) then begin
           if (dm.executa3.fieldbyname('codigo').AsInteger > 0) then
              filtra_usr:=filtra_usr+' AND cod_resp = '+#39+dm.executa3.fieldbyname('codigo').AsString+#39;
        end;
     end;
     dm.ds_sql.Filter:=filtra_usr;
     count_grade.Caption:= IntToStr(dm.ds_sql.RecordCount);
end;

procedure Tsuportecnico.filtraprocessos;
var filtra_usr : string;
begin
     if dm.ds_sql.RecordCount > 0 then begin
        filtra_usr:='cod_spt = '+Edit1.Text;
     end else begin
        filtra_usr:='cod_spt = 0';
     end;
     dm.ds_sql3.Filter:=filtra_usr;
     filtraarquivos;
end;

procedure Tsuportecnico.filtraarquivos;
var filtra_usr : string;
begin
     if dm.ds_sql3.RecordCount > 0 then begin
        filtra_usr:='cod_ms = '+dm.ds_sql3.fieldbyname('codigo').AsString;
     end else begin
        filtra_usr:='cod_ms = 0';
     end;
     dm.ds_sql4.Filter:=filtra_usr;
end;

procedure Tsuportecnico.montasolicitacoes;
var xhoras,xmin,xseg:integer;
    xwh,xwm,xws,xwl : word;
    xvalorht : real;
begin
     if dm.ds_sql.RecordCount>0 then begin
     Edit1.Text:=dm.ds_sql.fieldbyname('codigo').AsString;
     Edit2.Text:=dm.ds_sql.fieldbyname('descricao').AsString;
     Case dm.ds_sql.fieldbyname('descricao').AsInteger of
         0: RadioButton5.Checked:=true;
         1: RadioButton6.Checked:=true;
         2: RadioButton7.Checked:=true;
     End;
     dt_entrega.DateTime:=dm.ds_sql.fieldbyname('dt_fim').AsDateTime;
     if dm.ds_sql.fieldbyname('cod_lb').AsInteger=0 then CheckBox4.Checked:=false
     else  CheckBox4.Checked:=true;
     if dm.ds_sql.fieldbyname('status').asstring = 'C' then Label_status.Caption:='Concluído'
     else if dm.ds_sql.fieldbyname('status').asstring = 'A' then Label_status.Caption:='Andamento'
     else if dm.ds_sql.fieldbyname('status').asstring = 'X' then Label_status.Caption:='Cancelado';
     xvalorht:=0;
     if dm.executa5.Locate('codigo',dm.ds_sql.fieldbyname('cod_tip').AsInteger,[]) then begin
        ComboBox1.Text:=dm.executa5.fieldbyname('descricao').AsString;
        xvalorht:=dm.executa5.fieldbyname('vhst').AsFloat;
     end else ComboBox1.Text:='';
     if dm.executa6.Locate('codigo',dm.ds_sql.fieldbyname('cod_apli').AsInteger,[]) then
        ComboBox3.Text:=dm.executa6.fieldbyname('descricao').AsString
     else ComboBox3.Text:='';
     if dm.executa7.Locate('codigo',dm.ds_sql.fieldbyname('cod_resp').AsInteger,[]) then begin
        ComboBox6.Text:=dm.executa7.fieldbyname('usuario').AsString;
     end else begin
        ComboBox6.ItemIndex:=0;
     end;
     end else begin
         Edit1.Text:='0';
         Edit2.Text:='';
         ComboBox1.Text:='';
         ComboBox3.Text:='';
         ComboBox6.ItemIndex:=0;
         Label_status.Caption:='Nulo';
         RadioButton6.Checked:=true;
     end;
     if dm.ds_sql3.RecordCount > 0 then begin
        xhoras:=0;
        xmin:=0;
        xseg:=0;
        dm.ds_sql3.First;
        While not dm.ds_sql3.Eof do begin
             DecodeTime(dm.ds_sql3.fieldbyname('hst').AsDateTime,xwh,xwm,xws,xwl);
             xhoras:=xhoras+xwh;
             xmin:=xmin+xwm;
             xseg:=xseg+xws;
             if xseg >= 60 then begin
                xmin:=xmin+1;
                xseg:=xseg-60;
             end;
             if xmin >= 60 then begin
                xhoras:=xhoras+1;
                xmin:=xmin-60;
             end;
             dm.ds_sql3.Next;
        end;
        Label_hst.Caption:=InttoStr(xhoras)+' horas '+InttoStr(xmin)+' minutos';
        if xvalorht = 0 then lb_total.Caption:='0,00'
        else begin
            xvalorht:= (xvalorht * xhoras)+(xvalorht * (xmin/60));
            lb_total.Caption:=FormatFloat('#,##0.00',xvalorht);
        end;
     end else begin
        Label_hst.Caption:='0 horas 0 minutos';
        lb_total.Caption:='0,00';
     end;
end;

procedure Tsuportecnico.montaprocessos;
begin
     if dm.ds_sql3.RecordCount > 0 then begin
     Label8.Caption:=dm.ds_sql3.fieldbyname('cod_atv').AsString;
     if dm.executa4.Locate('codigo',dm.ds_sql3.fieldbyname('cod_atv').AsInteger,[]) then
        ComboBox4.Text:=dm.executa4.fieldbyname('descricao').AsString
     else ComboBox4.Text:='';
     if dm.executa3.Locate('codigo',dm.ds_sql3.fieldbyname('cod_resp').AsInteger,[]) then
        ComboBox5.Text:=dm.executa3.fieldbyname('descricao').AsString
     else ComboBox5.Text:='';
     RichEditdesc.Clear;
     try
       st_stream := TMemoryStream.Create;
       TBlobField(dm.ds_sql3.FieldByName('vdesc')).SaveToStream(st_stream);
       st_stream.Seek(0,soFromBeginning);
       RichEditdesc.Lines.LoadFromStream(st_stream);
     finally
       st_stream.Free;
     end;
     end else begin
         Label8.Caption:='0';
         ComboBox4.Text:='';
         ComboBox5.Text:='';
         RichEditdesc.Clear;
     end;
end;

procedure Tsuportecnico.FormClose(Sender: TObject;
  var Action: TCloseAction);
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
     dm.executa3.Close;
     dm.executa4.Close;
     dm.executa5.Close;
     dm.executa6.Close;
     dm.executa7.Close;
     suportecnico.Release;
     Action := caFree;
end;

procedure Tsuportecnico.bt_fecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tsuportecnico.bt_maximizaClick(Sender: TObject);
begin
    if suportecnico.WindowState=wsMaximized then suportecnico.WindowState:=wsNormal
    else suportecnico.WindowState:=wsMaximized;
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
end;

procedure Tsuportecnico.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tsuportecnico.bt_sobreClick(Sender: TObject);
begin
    hwsf.BtSobre;
end;

procedure Tsuportecnico.CheckBox1Click(Sender: TObject);
begin
     filtrasolicitacoes;
end;

procedure Tsuportecnico.CheckBox2Click(Sender: TObject);
begin
     filtrasolicitacoes; 
end;

procedure Tsuportecnico.CheckBox3Click(Sender: TObject);
begin
     filtrasolicitacoes;
end;

procedure Tsuportecnico.db_solicitacoesCellClick(Column: TColumn);
begin
     filtraprocessos;
end;

procedure Tsuportecnico.db_solicitacoesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     filtraprocessos;
end;

procedure Tsuportecnico.db_solicitacoesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     filtraprocessos;
end;

procedure Tsuportecnico.db_processosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      filtraarquivos;
      montaprocessos;
end;

procedure Tsuportecnico.db_processosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      filtraarquivos;
      montaprocessos;
end;

procedure Tsuportecnico.db_processosCellClick(Column: TColumn);
begin
      filtraarquivos;
      montaprocessos;
end;

procedure Tsuportecnico.TabSheet2Enter(Sender: TObject);
begin
     if dm.ds_sql.RecordCount <= 0 then begin
        Adicionarsolicitacao;
     end;
     montasolicitacoes;
     montaprocessos;
     if not (dm.conecta_sql.InTransaction) then begin
         TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
         TD.IsolationLevel := xilREADCOMMITTED;
         dm.conecta_sql.StartTransaction(TD);
     end;
end;

procedure Tsuportecnico.Adicionarsolicitacao;
begin
     if (dm.conecta_sql.InTransaction) then begin
        dm.conecta_sql.Rollback(TD);
     end;
     if not (dm.conecta_sql.InTransaction) then begin
         TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
         TD.IsolationLevel := xilREADCOMMITTED;
         dm.conecta_sql.StartTransaction(TD);
     end;
     Edit1.Text:=InttoStr(dm.GetCodMax(EnDecryptString(Helpdesk.vrf05,37249),1));
     Edit2.Text:='';
     ComboBox1.Text:='';
     ComboBox3.Text:='';
     filtraarquivos;
     montaprocessos;
     with dm.executa do begin
         Try
            SQL.Text:='INSERT INTO '+EnDecryptString(Helpdesk.vrf05,37249)+' (codigo,descricao,prioridade,cod_tip,cod_apli,status,dt_ini,dt_fim,cod_usr,cod_resp,cod_lb) VALUES (:p0,:p1,:p2,:p3,:p4,:p5,'+
                      '+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+'+','+
                      '+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+'+','+
                      ',:p6,:p7,:p8)';
            Params[0].AsInteger:=StrToInt(Edit1.Text);
            Params[1].AsString:='';
            Params[2].AsInteger:=1;
            Params[3].AsInteger:=0;
            Params[4].AsInteger:=0;
            Params[5].AsString:='A';
            Params[6].AsInteger:=0;
            Params[7].AsInteger:=0;
            Params[8].AsInteger:=0;
            ExecSQL;
         Except
         End;
         dt_entrega.Date:=Now;
         dt_entrega.Time:=StrtoTime('00:00:00');
     end;
end;

procedure Tsuportecnico.SpeedButton6Click(Sender: TObject);
begin
      Label8.Caption:=Inttostr(dm.GetCodMax(EnDecryptString(Helpdesk.vrf06,37249),1));
      with dm.executa do begin
         Try
            SQL.Text:='INSERT INTO '+EnDecryptString(Helpdesk.vrf06,37249)+' (codigo,cod_spt,cod_atv,cod_resp,dt_cad,vdesc,hst) VALUES (:p0,:p1,:p2,:p3,'+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',:p4,:p5)';
            Params[0].AsInteger:=StrToInt(Label8.Caption);
            Params[1].AsInteger:=StrToInt(Edit1.Text);
            Params[2].AsInteger:=0;
            Params[3].AsInteger:=0;
            Params[4].AsString:='';
            Params[5].AsTime:=StrToTime('00:00:00');
            ExecSQL;
         Except
         End;
         dm.ds_sql3.Refresh;
         dm.ds_sql3.Last;
         montaprocessos;
         filtraarquivos;
         ComboBox4.SetFocus;
      end;
end;

procedure Tsuportecnico.SpeedButton5Click(Sender: TObject);
begin
      if dm.deleta_reg(EnDecryptString(Helpdesk.vrf06,37249),'codigo',Label8.Caption,true) then begin
         dm.ds_sql4.First;
         While not dm.ds_sql4.Eof do begin
             dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249)+'_ax','cod_arq',dm.ds_sql4.fieldbyname('codigo').AsString,false);
             dm.ds_sql4.Next;
         end;
         dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249),'cod_ms',Label8.Caption,false);
         dm.ds_sql4.Refresh;
         dm.ds_sql4.Last;
         dm.ds_sql3.Refresh;
         dm.ds_sql3.Last;
         montaprocessos;
         filtraarquivos;
      end;
end;

procedure Tsuportecnico.SpeedButton1Click(Sender: TObject);
var desctx:string;
    axcod,axcod2,xind,xchr,index_arq,ax_arq,size_arq : integer;
    c_arq : byte;
    xarqtmp,OutMS_arq: TMemoryStream;
begin
  if OpenDialog_anexar.Execute then begin
     if not (dm.conecta_sql.InTransaction) then begin
        TD.TransactionID := HourOfTheYear(now)+MinuteOfTheMonth(now)+SecondOfTheYear(now);
        TD.IsolationLevel := xilREADCOMMITTED;
        dm.conecta_sql.StartTransaction(TD);
     end;
     desctx:=hwsf.BtDesc('');
     with dm.executa do begin
         Try
            axcod:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf07,37249),1);
            SQL.Text:='INSERT INTO '+EnDecryptString(Helpdesk.vrf07,37249)+' (codigo,cod_ms,cpn,cpd) VALUES (:p0,:p1,:p2,:p3)';
            Params[0].AsInteger:=axcod;
            Params[1].AsInteger:=StrToInt(Label8.Caption);
            Params[2].AsString:=OpenDialog_anexar.FileName;
            Params[3].AsString:=desctx;
            ExecSQL;
         Except
            hwsf.BtMensagem('Ocorreu algum erro.');
            dm.conecta_sql.RollBack(TD);
            exit;
         End;
     end;

     //deleta registro dos módulos binários
     with dm.executa do begin
          SQL.Text:= 'DELETE FROM '+EnDecryptString(Helpdesk.vrf07,37249)+'_ax '+
                     'WHERE cod_arq=:p0';
          Params[0].AsInteger:=axcod;
     end;
     try
          dm.executa.ExecSQL;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          dm.conecta_sql.RollBack(TD);
          exit;
     end;
     //insert registro dos módulos binários
     xarqtmp:= TMemoryStream.Create;
     xarqtmp.LoadFromFile(OpenDialog_anexar.FileName);
     xarqtmp.Seek(0,soFromBeginning);
     size_arq:=xarqtmp.Size;
     if size_arq > 0 then begin
       OutMS_arq:= TMemoryStream.Create;
       OutMS_arq.Clear;
       OutMS_arq.Seek(0,soFromBeginning);
       index_arq:=0;
       ax_arq:=0;
       for xind:=0 to size_arq do begin
          xarqtmp.Read(c_arq, 1);
          OutMS_arq.Write(c_arq,1);
          if (ax_arq = 500000) or (xind=size_arq) then begin
            with dm.executa do begin
               axcod2:=dm.GetCodMax(EnDecryptString(Helpdesk.vrf07,37249)+'_ax',1);
               xchr:=HexToInt(Inttostr(size_arq)+Inttostr(axcod2)+OpenDialog_anexar.FileName+Inttostr(axcod));
               SQL.Text:= 'INSERT INTO '+EnDecryptString(Helpdesk.vrf07,37249)+'_ax (codigo,cod_arq,ordem,cpa)'+
                          'VALUES(:p0,:p1,:p2,:p3)';
               Params[0].AsInteger:=axcod2;
               Params[1].AsInteger:=axcod;
               Params[2].AsInteger:=index_arq;
               OutMS_arq.Seek(0,soFromBeginning);
               Params[3].LoadFromStream(EnDecryptStream(OutMS_arq,xchr),ftblob);
            end;
            try
               dm.executa.ExecSQL;
            except
               hwsf.BtMensagem('Ocorreu algum erro.');
               dm.conecta_sql.RollBack(TD);
               exit;
            end;
            Inc(index_arq);
            ax_arq:=0;
            OutMS_arq.Clear;
            OutMS_arq.Seek(0,soFromBeginning);
          end else begin
            Inc(ax_arq);
          end;
       end;
       OutMS_arq.Free;
     end;
     dm.conecta_sql.Commit(TD);
     dm.ds_sql4.Refresh;
     dm.ds_sql4.Last;
  end;
end;

procedure Tsuportecnico.SpeedButton2Click(Sender: TObject);
begin
      if dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249),'codigo',dm.ds_sql4.fieldbyname('codigo').AsString,true) then begin
         dm.deleta_reg(EnDecryptString(Helpdesk.vrf07,37249)+'_ax','cod_arq',dm.ds_sql4.fieldbyname('codigo').AsString,false);
         dm.ds_sql4.Refresh;
         dm.ds_sql4.Last;
      end;
end;

procedure Tsuportecnico.SpeedButton3Click(Sender: TObject);
begin
     with dm.executa do begin
         Try
            SQL.Text:='UPDATE '+EnDecryptString(Helpdesk.vrf06,37249)+' SET cod_atv:p0,cod_resp:p1,vdesc:p2 WHERE codigo=:p3';
            if dm.executa4.Locate('descricao',ComboBox4.Text,[]) then
               Params[0].AsInteger:=dm.executa4.fieldbyname('codigo').AsInteger
            else Params[0].AsInteger:=0;
            if dm.executa3.Locate('descricao',ComboBox5.Text,[]) then
               Params[1].AsInteger:=dm.executa3.fieldbyname('codigo').AsInteger
            else Params[1].AsInteger:=0;
            try
                st_stream := TMemoryStream.Create;
                RichEditdesc.Lines.SaveToStream(st_stream);
                st_stream.Seek(0,soFromBeginning);
                Params[2].LoadFromStream(st_stream,ftBlob);
            finally
                st_stream.Free;
            end;
            Params[3].AsInteger:=StrToInt(Label8.Caption);
            ExecSQL;
         Except
         End;
         dm.ds_sql3.Refresh;
         dm.ds_sql3.Last;
      end;
end;

procedure Tsuportecnico.SpeedButton12Click(Sender: TObject);
begin
      with dm.executa do begin
         Try
            SQL.Text:='UPDATE '+EnDecryptString(Helpdesk.vrf05,37249)+' SET descricao=:p0,prioridade=:p1,cod_tip=:p2,cod_apli=:p3,dt_fim='+#39+FormatDateTime('yyyymmdd hh:nn:ss',Now)+#39+',cod_lb=:p5,cod_resp=:p6 WHERE codigo=:p7';
            Params[0].AsString:=Edit2.Text;
            if RadioButton5.Checked then Params[1].AsInteger:=0
            else if RadioButton6.Checked then Params[1].AsInteger:=1
            else Params[1].AsInteger:=2;
            if dm.executa5.Locate('descricao',ComboBox1.Text,[]) then
               Params[2].AsInteger:=dm.executa5.fieldbyname('codigo').AsInteger
            else Params[2].AsInteger:=0;
            if dm.executa6.Locate('descricao',ComboBox3.Text,[]) then
               Params[3].AsInteger:=dm.executa6.fieldbyname('codigo').AsInteger
            else Params[3].AsInteger:=0;
            if CheckBox4.Checked then Params[4].AsInteger:=1
            else Params[4].AsInteger:=0;
            dm.ds_sql3.Last;
            Params[5].AsInteger:=dm.ds_sql3.FieldByName('cod_resp').AsInteger;
            Params[6].AsInteger:=StrToInt(Edit1.Text);
            ExecSQL;
            if (dm.conecta_sql.InTransaction) then begin
                dm.conecta_sql.Commit(TD);
            end;
            dm.ds_sql.Refresh;
            dm.ds_sql.Last;
            PageControl1.TabIndex:=0;
         Except
         End;
     end;
end;

procedure Tsuportecnico.SpeedButton7Click(Sender: TObject);
begin
      if hwsf.BtConfirma('Cancelar solicitação?') then begin
      with dm.executa do begin
         Try
            SQL.Text:='UPDATE '+EnDecryptString(Helpdesk.vrf05,37249)+' SET status:p0 WHERE codigo=:p1';
            Params[0].AsString:='X';
            Params[1].AsInteger:=StrToInt(Edit1.Text);
            ExecSQL;
            if (dm.conecta_sql.InTransaction) then begin
                dm.conecta_sql.Commit(TD);
            end;
            dm.ds_sql.Refresh;
            dm.ds_sql.Last;
            PageControl1.TabIndex:=0;
         Except
         End;
     end;
     end;
end;

procedure Tsuportecnico.SpeedButton4Click(Sender: TObject);
begin
      if hwsf.BtConfirma('Cancelar solicitação?') then begin
      with dm.executa do begin
         Try
            SQL.Text:='UPDATE '+EnDecryptString(Helpdesk.vrf05,37249)+' SET status:p0 WHERE codigo=:p1';
            Params[0].AsString:='C';
            Params[1] .AsInteger:=StrToInt(Edit1.Text);
            ExecSQL;
            if (dm.conecta_sql.InTransaction) then begin
                dm.conecta_sql.Commit(TD);
            end;
            dm.ds_sql.Refresh;
            dm.ds_sql.Last;
            PageControl1.TabIndex:=0;
         Except
         End;
     end;
     end;
end;

procedure Tsuportecnico.SpeedButton8Click(Sender: TObject);
begin
      Adicionarsolicitacao;
end;

procedure Tsuportecnico.SpeedButton9Click(Sender: TObject);
begin
      if hwsf.BtConfirma('Concluir solicitação?') then begin
      with dm.executa do begin
         Try
            SQL.Text:='UPDATE '+EnDecryptString(Helpdesk.vrf05,37249)+' SET status:p0 WHERE codigo=:p1';
            Params[0].AsString:='C';
            Params[1].AsInteger:=StrToInt(Edit1.Text);
            ExecSQL;
            if (dm.conecta_sql.InTransaction) then begin
                dm.conecta_sql.Commit(TD);
            end;
            dm.ds_sql.Refresh;
            dm.ds_sql.Last;
            PageControl1.TabIndex:=0;
         Except
         End;
     end;
     end;
end;

procedure Tsuportecnico.ComboBox4Change(Sender: TObject);
begin
     if dm.executa4.Locate('descricao',ComboBox4.Text,[]) then begin
        ComboBox5.Clear;
        dm.executa3.First;
        While not dm.executa3.Eof do begin
            if (dm.executa4.fieldbyname('codigo').AsInteger=dm.executa3.fieldbyname('cod_set').AsInteger) then
               ComboBox5.Items.Add(dm.executa3.fieldbyname('descricao').AsString);
            dm.executa3.Next;
        end;
     end else begin
        ComboBox5.Clear;
     end;
end;

end.
