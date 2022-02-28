{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de entidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_entidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, MConnect, ObjBrkr, XPMan,
  AppEvnts;


type
  Tadm_entidades = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    lbcp3: TLabeledEdit;
    lbcp5: TLabeledEdit;
    lbcp4: TLabeledEdit;
    lbcp7: TLabeledEdit;
    lbcp6: TLabeledEdit;
    lbcp10: TLabeledEdit;
    lbcp8: TLabeledEdit;
    lbcp9: TLabeledEdit;
    lbcp11: TLabeledEdit;
    lbcp12: TLabeledEdit;
    lbcp13: TComboBox;
    Label1: TLabel;
    lbcp14: TLabeledEdit;
    lbcp15: TLabeledEdit;
    bt_save: TSpeedButton;
    lbcp16: TMemo;
    Label2: TLabel;
    bt_buscacep: TSpeedButton;
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_saveClick(Sender: TObject);
    procedure lbcp13Change(Sender: TObject);
    procedure lbcp4KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp5KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp11KeyPress(Sender: TObject; var Key: Char);
    procedure lbcp15KeyPress(Sender: TObject; var Key: Char);
    procedure bt_buscacepClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1ActionExecute(Action: TBasicAction;
      var Handled: Boolean);
  private
    procedure atualiza_grade;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_entidades: Tadm_entidades;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_entidades.FormClose(Sender: TObject; var Action: TCloseAction);
var axshowing: Boolean;
begin
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
     loadx.Progressloading.position:=25;
     dm.ds_sql.Filter:='';
     dm.ds_sql.Filtered:=false;
     loadx.Progressloading.position:=50;
     dm.ds_sql.Close;
     dm.executa3.Close;
     loadx.Progressloading.position:=100;
     loadx.Close;
     Action:=cafree;
end;

procedure Tadm_entidades.FormCreate(Sender: TObject);
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
     //Application.OnMessage := tabtoenterpress;
     Application.Title := AxDadosUsr.axtitle;
     adm_entidades.Caption := AxDadosUsr.axtitle;
     loadx.Progressloading.position:=20;
     With dm.ds_sql do begin
        CommandText:= 'SELECT * FROM '+EnDecryptString(Serverconect.vrf26,37249)+
                              ' WHERE codigo='+#39+InttoStr(AxDadosUsr.cod_ent_1)+#39;
        Open;
        Filter:='';
        Filtered:=true;
     end;
     loadx.Progressloading.position:=80;
     With dm.executa3 do begin
        CommandText:='SELECT * FROM '+EnDecryptString(Serverconect.vrf27,37249)+' ORDER BY cidade';
        Open;
        First;
        lbcp13.Clear;
        While not Eof do begin
            lbcp13.Items.Add(fieldbyname('cidade').AsString);
            Next;
        end;
     end;
     loadx.Progressloading.position:=100;
     atualiza_grade;
     if not axshowing then loadx.Close;
end;

procedure Tadm_entidades.atualiza_grade;
begin
         with dm.ds_sql do begin
            lbcp1.Text:= fieldbyname('codigo').AsString;
            lbcp2.Text:= fieldbyname('razao_social').AsString;
            lbcp3.Text:= fieldbyname('fantasia').AsString;
            lbcp4.Text:= fieldbyname('cnpj').AsString;
            lbcp5.Text:= fieldbyname('insc_est').AsString;
            lbcp6.Text:= fieldbyname('telefone1').AsString;
            lbcp7.Text:= fieldbyname('telefone2').AsString;
            lbcp8.Text:= fieldbyname('fax').AsString;
            lbcp9.Text:= fieldbyname('celular').AsString;
            lbcp10.Text:= fieldbyname('endereco').AsString;
            lbcp11.Text:= fieldbyname('numero').AsString;
            lbcp12.Text:= fieldbyname('complemento').AsString;
            if dm.executa3.Locate('codigo',fieldbyname('cod_cidade').AsString,[]) then begin
               lbcp13.Text:=dm.executa3.fieldbyname('cidade').AsString;
               lbcp14.Text:=dm.executa3.fieldbyname('uf').AsString;
            end else begin
               lbcp13.Text:='';
               lbcp14.Text:='';
            end;
            lbcp15.Text:= fieldbyname('cep').AsString;
            lbcp16.Lines.Assign(fieldbyname('obs'));
         end;
end;

procedure Tadm_entidades.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_entidades.Left:= adm_entidades.Left-(mv_mouse.x-x);
      adm_entidades.Top:= adm_entidades.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_entidades.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_entidades.Left := adm_entidades.Left - (mv_mouse.x -x);
      adm_entidades.Top := adm_entidades.Top - (mv_mouse.y - y);
  end;
end;

{procedure Tadm_entidades.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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
end;}

procedure Tadm_entidades.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     axcod:=StrtoInt(lbcp1.Text);
     try
         with dm.executa do begin
            CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf26,37249)+' SET razao_social=:p0,fantasia=:p1,cnpj=:p2,insc_est=:p3,telefone1=:p4,telefone2=:p5,fax=:p6,celular=:p7,endereco=:p8,numero=:p9,complemento=:p10,cod_cidade=:p11,cep=:p12,obs=:p13 '+
                       'WHERE codigo=:p14';
            Params[0].AsString:=lbcp2.Text;
            Params[1].AsString:=lbcp3.Text;
            try
                Params[2].AsFloat:=StrtoFloat(lbcp4.Text);
            except
                Params[2].AsFloat:=0;
            end;
            try
                Params[3].AsFloat:=StrtoFloat(lbcp5.Text);
            except
                Params[3].AsFloat:=0;
            end;
            Params[4].AsString:=lbcp6.Text;
            Params[5].AsString:=lbcp7.Text;
            Params[6].AsString:=lbcp8.Text;
            Params[7].AsString:=lbcp9.Text;
            Params[8].AsString:=lbcp10.Text;
            try
                Params[9].AsInteger:=StrtoInt(lbcp11.Text);
            except
                Params[9].AsInteger:=0;
            end;
            Params[10].AsString:=lbcp12.Text;
            if dm.executa3.Locate('cidade',lbcp13.Text,[]) then begin
               Params[11].AsInteger:=dm.executa3.fieldbyname('codigo').AsInteger;
            end else begin
               Params[11].AsInteger:=0;
            end;
            try
                Params[12].AsInteger:=StrtoInt(lbcp15.Text);
            except
                Params[12].AsInteger:=0;
            end;
            Params[13].Assign(lbcp16.Lines);
            Params[14].AsInteger:=axcod;
            Execute;
        end;
     except
        hwsf.BtMensagem('Ocorreu algum erro.');
        exit;
     end;
     dm.ds_sql.Close;
     dm.ds_sql.Open;
     hwsf.BtMensagem('Dados gravados com sucesso.');
     Close;
end;

procedure Tadm_entidades.lbcp13Change(Sender: TObject);
begin
     if dm.executa3.Locate('cidade',lbcp13.Text,[]) then begin
        lbcp14.Text:=dm.executa3.fieldbyname('uf').AsString;
     end;
end;

procedure Tadm_entidades.lbcp4KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.lbcp5KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.lbcp11KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.lbcp15KeyPress(Sender: TObject; var Key: Char);
begin
     Case key of
       '0'..'9' :;
       #13, #8, #27:
     else
       Key := #0;
     end;
end;

procedure Tadm_entidades.bt_buscacepClick(Sender: TObject);
begin
      JumpTo('www.correios.com.br/servicos/cep/cep_default.cfm');
end;

procedure Tadm_entidades.Timer1Timer(Sender: TObject);
begin
      Application.Terminate;
end;

procedure Tadm_entidades.ApplicationEvents1ActionExecute(
  Action: TBasicAction; var Handled: Boolean);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
