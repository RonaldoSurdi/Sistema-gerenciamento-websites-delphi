unit uBt_bases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TBt_bases = class(TForm)
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
    combobases: TComboBox;
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
  Bt_bases: TBt_bases;

implementation
Uses hwsfunctions, udm;

{$R *.dfm}

procedure TBt_bases.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= caHide;
end;

procedure TBt_bases.FormShow(Sender: TObject);
begin
     Bt_Confere:=false;
end;

procedure TBt_bases.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_bases.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        Bt_Confere:=true;
        close;
     end;
end;

procedure TBt_bases.SpeedButton1Click(Sender: TObject);
begin
     if not (combobases.Text<>'') and not (combobases.ItemIndex>=0) then begin
        hwsf.BtMensagem('Tabela selecionada inválida.');
        exit;
     end;
     Bt_Confere:=true;
     Close;
end;

procedure TBt_bases.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_bases.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_bases.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_bases.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_bases.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      Bt_bases.Left:= Bt_bases.Left-(mv_mouse.x-x);
      Bt_bases.Top:= Bt_bases.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_bases.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_bases.Left := Bt_bases.Left - (mv_mouse.x -x);
      Bt_bases.Top := Bt_bases.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_bases.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_bases.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_bases.FormCreate(Sender: TObject);
begin
      biSystemMenu.Picture.Bitmap:= hwsf.HiconToBitmap;
      dm.conecta_sql.GetTableNames(combobases.Items,False);
end;

end.
