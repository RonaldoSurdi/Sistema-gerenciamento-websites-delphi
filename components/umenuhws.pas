unit umenuhws;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, yupack, StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    pn2: TPanel;
    YuSoftLabel2: TYuSoftLabel;
    Panel3: TPanel;
    YuSoftButton1: TYuSoftButton;
    YuSoftButton2: TYuSoftButton;
    pn1: TPanel;
    YuSoftLabel1: TYuSoftLabel;
    YuSoftLabel6: TYuSoftLabel;
    MainMenu1: TMainMenu;
    asdf1: TMenuItem;
    asdf2: TMenuItem;
    asdf3: TMenuItem;
    procedure YuSoftLabel6Click(Sender: TObject);
    procedure YuSoftLabel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.YuSoftLabel6Click(Sender: TObject);
begin
    if pn2.Visible then begin
      pn1.Color:=$00F5F5F5;
      pn2.Visible:=false;
    end else begin
      pn1.Color:=$00E1E1E1;
      pn2.Visible:=true;
    end;
end;

procedure TForm1.YuSoftLabel6MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
    pn1.BevelInner:=bvLowered;
end;

end.
