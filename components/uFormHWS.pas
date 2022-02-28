{###############################################################################
Programa: FormHWS
Módulo: Formulário padrão do sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uFormHWS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, yupack, Buttons, ExtCtrls, Grids, Shellapi, hwsfunctions;

type
  TFormHWS = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    btClose: TSpeedButton;
    btHelp: TSpeedButton;
    btSystemMenu: TImage;
    pn_status: TPanel;
    Image4: TImage;
    hwsite: TYuSoftLabel;
    btMaximize: TSpeedButton;
    btMinimize: TSpeedButton;
    title: TLabel;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btCloseClick(Sender: TObject);
    procedure btMinimizeClick(Sender: TObject);
    procedure btHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mv_mouse : TPoint;
    cp_mouse : bool;
    constructor Create (Sender: TObject);
    destructor Destroy; override;
    procedure tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
  end;

var
  FormHWS: TFormHWS;

implementation

{$R *.dfm}

constructor TFormHWS.Create (Sender: TObject);
var xpos : integer;
begin
     With FormHWS do begin
          title.Caption:=FormHWS.title.Caption;
          if not (biSystemMenu in BorderIcons) then
             btSystemMenu.Visible:=false;
          if not (biHelp in BorderIcons) then
             btHelp.Visible:=true;
          if not (biMinimize in BorderIcons) then
             btMinimize.Visible:=true;
          if not (biMaximize in BorderIcons) then
             btMaximize.Visible:=true;
          xpos:=Width-20;
          btClose.Left:=xpos;
          if btMaximize.Visible then begin
             xpos:=xpos-14;
             btMaximize.Left:=xpos;
          end;
          if btMinimize.Visible then begin
             xpos:=xpos-14;
             btMinimize.Left:=xpos;
          end;
          if btHelp.Visible then begin
             xpos:=xpos-14;
             btHelp.Left:=xpos;
          end;
          if btSystemMenu.Visible then begin
             btSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
          end;
     end;
     Application.OnMessage := tabtoenterpress;
end;

destructor TFormHWS.Destroy;
begin
     FormHWS.Release;
end;

procedure TFormHWS.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(FormHWS.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TFormHWS.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      FormHWS.Left:= FormHWS.Left-(mv_mouse.x-x);
      FormHWS.Top:= FormHWS.Top - (mv_mouse.y-y);
  end;
end;

procedure TFormHWS.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      FormHWS.Left := FormHWS.Left - (mv_mouse.x -x);
      FormHWS.Top := FormHWS.Top - (mv_mouse.y - y);
  end;
end;

procedure TFormHWS.btCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TFormHWS.tabtoenterpress(var Msg: TMsg; var Handled: Boolean);
begin
  If not ((Screen.ActiveControl is TCustomMemo) or
         (Screen.ActiveControl is TCustomGrid) or
         (Screen.ActiveForm.ClassName = 'TMessageForm')) then begin
     If Msg.message = WM_KEYDOWN then begin
        Case Msg.wParam of
          VK_RETURN,VK_DOWN : Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
          VK_UP : Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
        end;
     end;
  end;
end;

procedure TFormHWS.btMinimizeClick(Sender: TObject);
begin
    Application.Minimize;
end;

procedure TFormHWS.btHelpClick(Sender: TObject);
begin
     hwsf.BtSobre;
end;

end.
