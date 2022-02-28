unit uBt_exportimport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FileCtrl, ComCtrls, ShellCtrls;

type
  TBt_ei = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    barimg: TImage;
    pn_tit: TPanel;
    Image3: TImage;
    bt_fecharjn: TSpeedButton;
    Label11: TLabel;
    Image1: TImage;
    ShellComboBox1: TShellComboBox;
    ShellChangeNotifier1: TShellChangeNotifier;
    ShellListView1: TShellListView;
    FilterComboBox1: TFilterComboBox;
    Edit1: TEdit;
    ShellListView2: TShellListView;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
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
    procedure ShellListView1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Bt_Confere:string;
    mv_mouse : TPoint;
    cp_mouse : bool;
    { Public declarations }
  end;

var
  Bt_ei: TBt_ei;

implementation

{$R *.dfm}

procedure TBt_ei.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= caHide;
end;

procedure TBt_ei.FormShow(Sender: TObject);
begin
     Bt_Confere:='';
end;

procedure TBt_ei.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#27 then close;
     If key=#13 then begin
        Bt_Confere:='S';
        close;
     end;
end;

procedure TBt_ei.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key= VK_F4 then begin
        Bt_Confere:='S';
        close;
     end;
end;

procedure TBt_ei.SpeedButton1Click(Sender: TObject);
begin
     Bt_Confere:=Edit1.Text;
     Close;
end;

procedure TBt_ei.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TBt_ei.bt_fecharjnClick(Sender: TObject);
begin
     Close;
end;

procedure TBt_ei.Image3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_ei.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_ei.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if cp_mouse then begin
      Bt_ei.Left:= Bt_ei.Left-(mv_mouse.x-x);
      Bt_ei.Top:= Bt_ei.Top - (mv_mouse.y-y);
  end;
end;

procedure TBt_ei.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if cp_mouse then begin
      ReleaseCapture;
      cp_mouse := false;
      Bt_ei.Left := Bt_ei.Left - (mv_mouse.x -x);
      Bt_ei.Top := Bt_ei.Top - (mv_mouse.y - y);
  end;
end;

procedure TBt_ei.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      SetCapture(Bt_ei.Handle);
      cp_mouse := true;
      mv_mouse.X := x;
      mv_mouse.Y := Y;
end;

procedure TBt_ei.ShellListView1Click(Sender: TObject);
begin
      Edit1.Text:=ShellListView1.Selected.Caption;
end;

end.
