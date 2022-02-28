{###############################################################################
Programa: Bt_confirma
Módulo: Dialog Corfima operação.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_Confirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TBt_Confirma = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    Confirma_Texto: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Bt_Confere:boolean;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_Confirma: TBt_Confirma;

implementation
Uses hwsfunctions;

{$R *.dfm}

procedure TBt_Confirma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Confirma_Texto.Caption:='';
     Action:= caHide;
end;

procedure TBt_Confirma.FormShow(Sender: TObject);
begin
     Bt_Confere:=false;
end;

procedure TBt_Confirma.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_Confirma.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_Confirma.SpeedButton1Click(Sender: TObject);
begin
     Bt_Confere:=true;
     Close;
end;

procedure TBt_Confirma.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_Confirma.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_Confirma.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_Confirma.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Confirma.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      Bt_Confirma.Left:= Bt_Confirma.Left-(mv_mouse.x-x);
      Bt_Confirma.Top:= Bt_Confirma.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_Confirma.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_Confirma.Left := Bt_Confirma.Left - (mv_mouse.x -x);
      Bt_Confirma.Top := Bt_Confirma.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_Confirma.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_Confirma.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Confirma.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

end.
