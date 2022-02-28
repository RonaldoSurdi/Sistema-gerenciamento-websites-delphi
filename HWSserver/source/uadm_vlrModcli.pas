{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de cidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_vlrModcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan;


type
  Tadm_vlrModcli = class(TForm)
    Panel1: TPanel;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fechar: TSpeedButton;
    bt_sobre: TSpeedButton;
    YuSoftLabel2: TYuSoftLabel;
    biSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    bt_minimize: TSpeedButton;
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    bt_save: TSpeedButton;
    bt_maximiza: TSpeedButton;
    bt_prior: TSpeedButton;
    bt_next: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Panel_search: TPanel;
    Edit_search: TEdit;
    ComboBox_search: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar2: TToolBar;
    Label5: TLabel;
    Lb_countreg: TLabel;
    bt_search: TSpeedButton;
    lbcp3: TLabeledEdit;
    lbcp4: TComboBox;
    Label1: TLabel;
    XPManifest1: TXPManifest;
    lbcp5: TLabeledEdit;
    lbcp6: TLabeledEdit;
    Panel3: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure bt_saveClick(Sender: TObject);
    procedure bt_nextClick(Sender: TObject);
    procedure bt_priorClick(Sender: TObject);
    procedure Edit_searchChange(Sender: TObject);
    procedure bt_searchClick(Sender: TObject);
    procedure ComboBox_searchChange(Sender: TObject);
    procedure Edit_searchKeyPress(Sender: TObject; var Key: Char);
    procedure lbcp3Change(Sender: TObject);
    procedure lbcp4Change(Sender: TObject);
    procedure NumKeyPress(Sender: TObject; var Key: Char);
  private
    cv : string;
    cp_search : array[0..50] of string;
    tp_search : array[0..50] of integer;
    tm_search : array[0..50] of integer;
    procedure atualiza_grade;
    procedure filtrar_reg;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_vlrModcli: Tadm_vlrModcli;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_vlrModcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.ds_sql3.Filter:='';
     dm.ds_sql3.Filtered:=false;
     dm.ds_sql3.Close;
     dm.executa4.Close;
     Action:=cafree;
end;

procedure Tadm_vlrModcli.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_vlrModcli.FormCreate(Sender: TObject);
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
     DBGrid1.DataSource:=dm.source_sql3;
     ComboBox_search.Clear;
     ComboBox_search.Items.Add('Código');
     cp_search[0]:= 'codigo';
     tp_search[0]:= 0;
     tm_search[0]:= 11;
     ComboBox_search.Items.Add('Descricao');
     cp_search[1]:= 'descricao';
     tp_search[1]:= 1;
     tm_search[1]:= 255;
     ComboBox_search.ItemIndex:=1;
     loadx.Progressloading.position:=50;
     cv := 'B2d7485d9N';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[0].FieldName:='codigo';
     DBGrid1.Columns.Items[0].Title.Caption:='Código';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[1].FieldName:='descricao';
     DBGrid1.Columns.Items[1].Title.Caption:='Descrição';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[2].FieldName:='mdl';
     DBGrid1.Columns.Items[2].Title.Caption:='Módulo';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[3].FieldName:='lastver';
     DBGrid1.Columns.Items[3].Title.Caption:='Versão';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[4].FieldName:='cod_moe';
     DBGrid1.Columns.Items[4].Title.Caption:='Moeda';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[5].FieldName:='vlr';
     DBGrid1.Columns.Items[5].Title.Caption:='Valor Instalação';
     DBGrid1.Columns.Add;
     DBGrid1.Columns.Items[6].FieldName:='vlr2';
     DBGrid1.Columns.Items[6].Title.Caption:='Valor Mensal';
     With dm.ds_sql3 do begin
        CommandText:= 'SELECT codigo,descricao,mdl,lastver,cod_moe,vlr,vlr2 FROM '+EnDecryptString(Serverconect.vrf24[0],37249)+' ORDER BY codigo';
        Open;
        Filter:='';
        Filtered:=true;
     end;

     With dm.executa4 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf53,37249)+' ORDER BY descricao';
        Open;
        First;
        lbcp4.Clear;
        While not Eof do begin
            lbcp4.Items.Add(fieldbyname('descricao').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Free;
end;

procedure Tadm_vlrModcli.DBGrid1CellClick(Column: TColumn);
begin
      atualiza_grade;
end;

procedure Tadm_vlrModcli.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_vlrModcli.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      atualiza_grade;
end;

procedure Tadm_vlrModcli.atualiza_grade;
var axshowing: Boolean;
begin
      axshowing:= loadx.Showing;
      if not axshowing then begin
         loadx := Tloadx.Create(Application);
         loadx.lbloading.Caption:='Atualizando Dados';
         loadx.Show;
         loadx.Update;
      end else begin
         loadx.lbloading.Caption:='Atualizando Dados';
         loadx.lbloading.Repaint;
      end;
      loadx.Progressloading.position:=10;
      if dm.ds_sql3.RecordCount <= 0 then begin
        lbcp1.Text:='nulo';
        lbcp2.Text:= '';
        lbcp3.Text:= '';
        lbcp4.Text:= '';
        lbcp5.Text:= '0,00';
        lbcp6.Text:= '0,00';
      end else begin
         loadx.Progressloading.position:=30;
         with dm.ds_sql3 do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('descricao').AsString;
            lbcp3.Text:= fieldbyname('cod_moe').AsString;
            loadx.Progressloading.position:=60;
            lbcp5.Text:= FormatFloat('0.00',fieldbyname('vlr').AsFloat);
            lbcp6.Text:= FormatFloat('0.00',fieldbyname('vlr2').AsFloat);
            loadx.Progressloading.position:=80;
            if dm.executa4.Locate('xconf','-1',[]) then begin
               loadx.Progressloading.position:=90;
               lbcp3.Text:=dm.executa4.fieldbyname('codigo').AsString;
            end;
         end;
      end;
      loadx.Progressloading.position:=100;
      Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
      if not axshowing then loadx.Free;
end;

procedure Tadm_vlrModcli.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_vlrModcli.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_vlrModcli.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_vlrModcli.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_vlrModcli.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_vlrModcli.Left:= adm_vlrModcli.Left-(mv_mouse.x-x);
      adm_vlrModcli.Top:= adm_vlrModcli.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_vlrModcli.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_vlrModcli.Left := adm_vlrModcli.Left - (mv_mouse.x -x);
      adm_vlrModcli.Top := adm_vlrModcli.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_vlrModcli.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_vlrModcli.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tadm_vlrModcli.bt_maximizaClick(Sender: TObject);
begin
    if adm_vlrModcli.WindowState=wsMaximized then adm_vlrModcli.WindowState:=wsNormal
    else adm_vlrModcli.WindowState:=wsMaximized;
end;

procedure Tadm_vlrModcli.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_maximiza.Left:=bt_fechar.Left-15;
    bt_minimize.Left:=bt_maximiza.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
    Edit_search.Width:= Panel_search.Width-164;
    ComboBox_search.Left:= Edit_search.Width+5;
    bt_search.Left:= ComboBox_search.Left+ComboBox_search.Width+1;
end;

procedure Tadm_vlrModcli.bt_saveClick(Sender: TObject);
var axcod : integer;
    axvlr,axvlr2: Real;
begin
     if not dm.executa4.Locate('codigo',lbcp3.Text,[]) then begin
        hwsf.BtMensagem('Selecione uma Moeda.');
        lbcp4.SetFocus;
        Exit;
     end;
     try
        axvlr:=StrToFloat(lbcp5.Text);
     except
        hwsf.BtMensagem('Valor digitado Inválido.');
        lbcp5.SetFocus;
        Exit;
     end;
     try
        axvlr2:=StrToFloat(lbcp6.Text);
     except
        hwsf.BtMensagem('Valor digitado Inválido.');
        lbcp6.SetFocus;
        Exit;
     end;
     if lbcp1.Text = 'nulo' then begin
        hwsf.BtMensagem('Selecione o módulo.');
        DBGrid1.SetFocus;
        Exit;
     end else begin
        axcod:=StrtoInt(lbcp1.Text);
        with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf24[0],37249)+' SET cod_moe=:p0,vlr=:p1,vlr2=:p2 '+
                       'WHERE codigo=:p3';
            Params[0].AsString:=lbcp3.Text;
            Params[1].AsFloat:=axvlr;
            Params[2].AsFloat:=axvlr2;
            Params[3].AsInteger:=axcod;
        end;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     dm.ds_sql3.Close;
     dm.ds_sql3.Open;
     Lb_countreg.Caption:=Inttostr(dm.ds_sql3.RecordCount);
     hwsf.BtMensagem('Dados gravados com sucesso.');
end;

procedure Tadm_vlrModcli.bt_nextClick(Sender: TObject);
begin
    dm.ds_sql3.Next;
    atualiza_grade;
end;

procedure Tadm_vlrModcli.bt_priorClick(Sender: TObject);
begin
    dm.ds_sql3.Prior;
    atualiza_grade;
end;

procedure Tadm_vlrModcli.Edit_searchChange(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_vlrModcli.filtrar_reg;
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

procedure Tadm_vlrModcli.bt_searchClick(Sender: TObject);
begin
     filtrar_reg;
end;

procedure Tadm_vlrModcli.ComboBox_searchChange(Sender: TObject);
begin
     if ComboBox_search.ItemIndex>=0 then begin
        if ComboBox_search.ItemIndex = 2 then Edit_search.CharCase:=ecUpperCase
        else Edit_search.CharCase:=ecNormal;
        Edit_search.MaxLength:=tm_search[ComboBox_search.ItemIndex];
        Edit_search.Text:='';
        filtrar_reg;
     end;
end;

procedure Tadm_vlrModcli.Edit_searchKeyPress(Sender: TObject;
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

procedure Tadm_vlrModcli.lbcp3Change(Sender: TObject);
begin
     if lbcp3.Text <> '' then
     if dm.executa4.Locate('codigo',lbcp3.Text,[]) then begin
        lbcp4.Text:=dm.executa4.fieldbyname('descricao').AsString;
     end else lbcp4.Text:='';
end;

procedure Tadm_vlrModcli.lbcp4Change(Sender: TObject);
begin
     if dm.executa4.Locate('descricao',lbcp4.Text,[]) then begin
        lbcp3.Text:=dm.executa4.fieldbyname('codigo').AsString;
     end else lbcp3.Text:='';
end;

procedure Tadm_vlrModcli.NumKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = '.' then key:=',';
     Case key of
       '0'..'9' :;
       ',',#13, #8, #27:
     else
       Key := #0;
     end;
end;

end.
