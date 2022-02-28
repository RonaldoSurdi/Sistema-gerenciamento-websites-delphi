{###############################################################################
Programa: Bt_mensagem
Módulo: Dialog Mensagem.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_Mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TBt_Mensagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Mensagem_Texto: TLabel;
    procedure Bitbtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_Mensagem: TBt_Mensagem;

implementation

{$R *.dfm}

procedure TBt_Mensagem.Bitbtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_Mensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Mensagem_Texto.Caption:='';
     Action:= caHide;
end;

procedure TBt_Mensagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then close;
end;

procedure TBt_Mensagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then close;
end;

procedure TBt_Mensagem.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_Mensagem.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_Mensagem.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Mensagem.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      Bt_Mensagem.Left:= Bt_Mensagem.Left-(mv_mouse.x-x);
      Bt_Mensagem.Top:= Bt_Mensagem.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_Mensagem.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_Mensagem.Left := Bt_Mensagem.Left - (mv_mouse.x -x);
      Bt_Mensagem.Top := Bt_Mensagem.Top - (mv_mouse.y - y);
  end;
end;

end.
