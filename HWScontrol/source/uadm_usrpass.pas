{###############################################################################
Programa: HWScontrol pass user
Módulo: Trocar senha do usuário.
Data: 20 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
20/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_usrpass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan, AppEvnts;


type
  Tadm_usrpass = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    bt_del: TSpeedButton;
    bt_save: TSpeedButton;
    XPManifest1: TXPManifest;
    lbcp1: TLabeledEdit;
    lbcp2: TLabeledEdit;
    lbcp4: TLabeledEdit;
    lbcp3: TLabeledEdit;
    lbcp5: TLabeledEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    cv : string;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_usrpass: Tadm_usrpass;

implementation
uses udm, hwsfunctions, U_Cipher;

{$R *.dfm}

procedure Tadm_usrpass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=cafree;
end;

procedure Tadm_usrpass.FormCreate(Sender: TObject);
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
     adm_usrpass.Caption := AxDadosUsr.axtitle;
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Close;
end;

{procedure Tadm_usrpass.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_usrpass.bt_saveClick(Sender: TObject);
var axcod : integer;
begin
     if Length(lbcp1.Text)<6 then begin
        hwsf.BtMensagem('Nome do usuário inválido (de 6 à 30 digitos).');
        lbcp1.SetFocus;
        lbcp1.SelectAll;
        Exit;
     end;
     if Length(lbcp2.Text)<6 then begin
        hwsf.BtMensagem('Senha do usuário inválida inválido (de 6 à 30 digitos).');
        lbcp2.SetFocus;
        lbcp2.SelectAll;
        Exit;
     end;
     if Length(lbcp3.Text)<6 then begin
        hwsf.BtMensagem('Novo nome do usuário inválido inválido (de 6 à 30 digitos).');
        lbcp3.SetFocus;
        lbcp3.SelectAll;
        Exit;
     end;
     if Length(lbcp4.Text)<6 then begin
        hwsf.BtMensagem('Nova senha do usuário inválida (de 6 à 30 digitos).');
        lbcp4.SetFocus;
        lbcp4.SelectAll;
        Exit;
     end;
     if Length(lbcp5.Text)<6 then begin
        hwsf.BtMensagem('Redigite a nova senha do usuário (de 6 à 30 digitos).');
        lbcp5.SetFocus;
        lbcp5.SelectAll;
        Exit;
     end;
     if lbcp3.Text=lbcp4.Text then begin
        hwsf.BtMensagem('Usuário e senha são iguais.');
        lbcp4.Text:='';
        lbcp5.Text:='';
        lbcp4.SetFocus;
        Exit;
     end;
     if lbcp4.Text<>lbcp5.Text then begin
        hwsf.BtMensagem('Senhas digitadas diferentes.');
        lbcp5.Text:='';
        lbcp4.SetFocus;
        lbcp4.SelectAll;
        Exit;
     end;
     cv := 'B2d7485d9N';
     With dm.executa do begin
          Try
              CommandText:='Select * from '+EnDecryptString(Serverconect.vrf19,37249)+' Where usuario = '+#39+lbcp1.Text+#39+
                           ' AND password = '+#39+MD5Hash(lbcp2.Text)+#39+' AND stat = 1';
              Open;
              if Recordcount <=0 then begin
                 Close;
                 hwsf.BtMensagem('Autenticação inválida.');
                 lbcp2.Text:='';
                 lbcp1.SetFocus;
                 lbcp1.SelectAll;
                 Exit;
              end else begin
                 axcod:=fieldbyname('codigo').AsInteger;
                 Close;
              end;
          Except
              hwsf.BtMensagem('Ocorreu algum erro.');
              lbcp2.Text:='';
              lbcp1.SetFocus;
              lbcp1.SelectAll;
              Exit;
          End;
     end;
     //grava dados
     with dm.executa do begin
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf19,37249)+' SET usuario=:p0,password=:p1 '+
                     'WHERE codigo=:p2';
          Params[0].AsString:=lbcp3.Text;
          Params[1].AsString:=MD5Hash(lbcp4.Text);
          Params[2].AsInteger:=axcod;
     end;
     try
          dm.executa.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     hwsf.BtMensagem('Dados gravados com sucesso.');
     Close;
end;

procedure Tadm_usrpass.bt_delClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_usrpass.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
