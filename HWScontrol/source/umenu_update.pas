unit umenu_update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, StdCtrls, ExtCtrls;

type
  Tmenu_update = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Timer_close: TTimer;
    bt_fechar: TSpeedButton;
    procedure Timer_closeTimer(Sender: TObject);
    procedure bt_fecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menu_update: Tmenu_update;

implementation
{$R *.dfm}

procedure Tmenu_update.Timer_closeTimer(Sender: TObject);
begin
      Close;
end;

procedure Tmenu_update.bt_fecharClick(Sender: TObject);
begin
      Close;
end;

end.
