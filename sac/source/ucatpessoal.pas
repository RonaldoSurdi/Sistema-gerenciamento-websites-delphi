unit ucatpessoal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tcatpessoal = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    bt_new: TSpeedButton;
    bt_edit: TSpeedButton;
    bt_exclui1: TSpeedButton;
    bt_finaliza1: TSpeedButton;
    ToolBar2: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    lbcp2: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  catpessoal: Tcatpessoal;

implementation

{$R *.dfm}

end.
