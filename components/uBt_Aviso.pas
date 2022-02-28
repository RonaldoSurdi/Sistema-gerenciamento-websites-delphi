{###############################################################################
Programa: Bt_aviso
Módulo: Dialog Aviso.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uBt_Aviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TBt_Aviso = class(TForm)
    Panel2: TPanel;
    PrintDialog: TPrintDialog;
    Panel1: TPanel;
    Aviso_Texto: TRichEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    biSystemMenu: TImage;
    procedure Bitbtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_fecharjnClick(Sender: TObject);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_Aviso: TBt_Aviso;

implementation
Uses hwsfunctions;

{$R *.dfm}

procedure TBt_Aviso.Bitbtn1Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_Aviso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Aviso_Texto.Clear;
     Action:= caHide;
end;

procedure TBt_Aviso.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then close;
end;

procedure TBt_Aviso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then close;
end;

procedure TBt_Aviso.SpeedButton1Click(Sender: TObject);
var FFileName : string;
begin
     if PrintDialog.Execute then begin
        FFileName:='Fechamento do caixa';
        Aviso_Texto.Print(FFileName);
        close;
     end;
end;

procedure TBt_Aviso.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_Aviso.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_Aviso.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Aviso.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if cp_mouse then begin
      Bt_Aviso.Left:= Bt_Aviso.Left-(mv_mouse.x-x);
      Bt_Aviso.Top:= Bt_Aviso.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_Aviso.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_Aviso.Left := Bt_Aviso.Left - (mv_mouse.x -x);
      Bt_Aviso.Top := Bt_Aviso.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_Aviso.bt_fecharjnClick(Sender: TObject);
begin
    Close;
end;

procedure TBt_Aviso.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_Aviso.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_Aviso.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

end.
