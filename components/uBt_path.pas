{###############################################################################
Programa: Bt_path
Módulo: Localizar caminho.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

Unit uBt_path;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, ShellCtrls;

type
  TBt_path = class(TForm)
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
    ShellTreeView1: TShellTreeView;
    ShellComboBox1: TShellComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
  Bt_path: TBt_path;

implementation
Uses hwsfunctions;

{$R *.dfm}

procedure TBt_path.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= caHide;
end;

procedure TBt_path.FormShow(Sender: TObject);
begin
     Bt_Confere:=false;
end;

procedure TBt_path.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_path.SpeedButton1Click(Sender: TObject);
begin
     Bt_Confere:=true;
     Close;
end;

procedure TBt_path.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_path.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_path.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_path.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_path.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      bt_path.Left:= bt_path.Left-(mv_mouse.x-x);
      bt_path.Top:= bt_path.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_path.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      bt_path.Left := bt_path.Left - (mv_mouse.x -x);
      bt_path.Top := bt_path.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_path.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(bt_path.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_path.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      Image3.Picture.Bitmap:= GetImg(1);
      barimg.Picture.Bitmap:= GetImg(1);
end;

end.
