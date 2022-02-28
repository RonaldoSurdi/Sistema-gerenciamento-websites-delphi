{###############################################################################
Programa: HWScontrol
Módulo: Configurações do sistema.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uconfig;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, yupack, Buttons, StdCtrls, ExtCtrls, Messages, Grids, ComCtrls,
  ToolWin, XPMan, AppEvnts;

type
  Tfconfig = class(TForm)
    gbxCabecalho: TGroupBox;
    OpenDialog_cp: TOpenDialog;
    OpenDialog_importar: TOpenDialog;
    SaveDialog_exportar: TSaveDialog;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    XPManifest1: TXPManifest;
    xvrf01: TCheckBox;
    xvrf02: TCheckBox;
    xvrf38: TCheckBox;
    xvrf39: TCheckBox;
    xvrf40_ax1: TCheckBox;
    xvrf40_ax2: TEdit;
    xvrf40: TUpDown;
    Label51: TLabel;
    GroupBox1: TGroupBox;
    xvrf17: TEdit;
    Label9: TLabel;
    xvrf16: TEdit;
    Label8: TLabel;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure xvrf40_ax2Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    procedure carregaconfig;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;       
    //procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  fconfig: Tfconfig;

implementation
uses udm, hwsfunctions;
{$R *.dfm}

procedure Tfconfig.carregaconfig;
begin
      With Controlcnfg do begin
          xvrf01.Checked:=vrf01;     //iniciar com o windows
          xvrf02.Checked:=vrf02;     //conectar automaticamento no login
          xvrf16.Text:=EnDecryptString(vrf16,37249); //usuario login sistema
          xvrf17.Text:=EnDecryptString(vrf17,37249); //senha login sistema
          xvrf38.Checked:=vrf38;
          xvrf39.Checked:=vrf39;
          xvrf40.Position:=vrf40;
      end;
end;

procedure Tfconfig.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(fconfig.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tfconfig.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      fconfig.Left:= fconfig.Left-(mv_mouse.x-x);
      fconfig.Top:= fconfig.Top - (mv_mouse.y-y);
  end;
end;

procedure Tfconfig.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      fconfig.Left := fconfig.Left - (mv_mouse.x -x);
      fconfig.Top := fconfig.Top - (mv_mouse.y - y);
  end;
end;

procedure Tfconfig.FormCreate(Sender: TObject);
var xcombobox : TStringList;
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
      //Application.OnMessage := tabtoenterpress;
      fconfig.Caption:='HWScontrol Configurações';
      xcombobox:= TStringList.Create;
      xcombobox.Clear;
      loadx.Progressloading.position:=50;
      xcombobox.Add('DB2Connection');
      xcombobox.Add('IBConnection');
      xcombobox.Add('InformixConnection');
      xcombobox.Add('MSSQLConnection');
      xcombobox.Add('MySQLConnection');
      xcombobox.Add('OracleConnection');
      xcombobox.Free;
      carregaconfig;
      loadx.Progressloading.position:=100;
      if not axshowing then loadx.Close;
end;

procedure Tfconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=caFree;
end;

{procedure Tfconfig.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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


procedure Tfconfig.SpeedButton3Click(Sender: TObject);
begin
       if not hwsf.BtConfirma('Confirma atualização dos dados?') then
          exit;
       With Controlcnfg do begin
          vrf01:=xvrf01.Checked;     //iniciar com o windows
          vrf02:=xvrf02.Checked;     //conectar automaticamento no login
          vrf16:=EnDecryptString(xvrf16.Text,37249); //usuario login sistema
          vrf17:=EnDecryptString(xvrf17.Text,37249); //senha login sistema
          vrf38:=xvrf38.Checked;
          vrf39:=xvrf39.Checked;
          vrf40:=xvrf40.Position;
       end;
       if dm.winsysreg(2,false,false) then
          hwsf.BtMensagem('Configurações atualizadas com êxito.')
       else hwsf.BtMensagem('Ocorreu algum erro na atualização dos dados.');
       Close;
end;

procedure Tfconfig.xvrf40_ax2Change(Sender: TObject);
begin
      if xvrf40.Position=0 then xvrf40_ax1.Checked:=false
      else xvrf40_ax1.Checked:=true;
end;

procedure Tfconfig.SpeedButton4Click(Sender: TObject);
begin
      carregaconfig;
end;

procedure Tfconfig.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
      hwsf.BtMensagem('AVISO: Falha na conexão.');
end;

end.
