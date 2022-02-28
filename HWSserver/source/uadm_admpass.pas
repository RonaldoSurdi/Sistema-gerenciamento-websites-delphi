{###############################################################################
Programa: HWSwebServer
Módulo: Cadastro de cidades.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uadm_admpass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr, Grids, DBGrids,
  DBClient, SimpleDS, DBXpress, Provider, ComCtrls, yupack, Mask, DBCtrls,
  ToolWin, OleCtrls, ShockwaveFlashObjects_TLB, XPMan;


type
  Tadm_admpass = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_sobreClick(Sender: TObject);
    procedure YuSoftLabel2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_minimizeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure bt_delClick(Sender: TObject);
  private
    cv : string;
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
    { Public declarations }
  end;

var
  adm_admpass: Tadm_admpass;

implementation
uses udm, hwsfunctions;

{$R *.dfm}

procedure Tadm_admpass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=cafree;
end;

procedure Tadm_admpass.bt_fecharClick(Sender: TObject);
begin
    close;
end;

procedure Tadm_admpass.FormCreate(Sender: TObject);
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
     loadx.Progressloading.position:=100;
     if not axshowing then loadx.Free;
end;

procedure Tadm_admpass.bt_sobreClick(Sender: TObject);
begin
      hwsf.BtSobre;
end;

procedure Tadm_admpass.YuSoftLabel2Click(Sender: TObject);
begin
      JumpTo('www.hws.com.br');
end;

procedure Tadm_admpass.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(adm_admpass.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure Tadm_admpass.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      adm_admpass.Left:= adm_admpass.Left-(mv_mouse.x-x);
      adm_admpass.Top:= adm_admpass.Top - (mv_mouse.y-y);
  end;
end;

procedure Tadm_admpass.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      adm_admpass.Left := adm_admpass.Left - (mv_mouse.x -x);
      adm_admpass.Top := adm_admpass.Top - (mv_mouse.y - y);
  end;
end;

procedure Tadm_admpass.bt_minimizeClick(Sender: TObject);
begin
     Application.Minimize;
end;

procedure Tadm_admpass.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
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

procedure Tadm_admpass.FormResize(Sender: TObject);
begin
    bt_fechar.Left:=pn_tit.Width-18;
    bt_minimize.Left:=bt_fechar.Left-15;
    bt_sobre.Left:=bt_minimize.Left-15;
end;

procedure Tadm_admpass.bt_saveClick(Sender: TObject);
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
     With dm.executa_int do begin
          Try
              CommandText:='Select * from '+EnDecryptString(Serverconect.vrf19[1],37249)+' Where decode(usuario,'+#39+cv+#39+') = '+#39+lbcp1.Text+#39+
                        ' AND decode(password,'+#39+cv+#39+') = '+#39+lbcp2.Text+#39+' AND stat = 1';
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
     with dm.executa_int do begin
          CommandText:= 'UPDATE '+EnDecryptString(Serverconect.vrf19[1],37249)+' SET usuario=encode(:p0,:p1),password=encode(:p2,:p3) '+
                     'WHERE codigo=:p4';
          Params[0].AsString:=lbcp3.Text;
          Params[1].AsString:=cv;
          Params[2].AsString:=lbcp4.Text;
          Params[3].AsString:=cv;
          Params[4].AsInteger:=axcod;
     end;
     try
          dm.executa_int.Execute;
     except
          hwsf.BtMensagem('Ocorreu algum erro.');
          exit;
     end;
     hwsf.BtMensagem('Dados gravados com sucesso.');
     Close;
end;

procedure Tadm_admpass.bt_delClick(Sender: TObject);
begin
    close;
end;

end.
