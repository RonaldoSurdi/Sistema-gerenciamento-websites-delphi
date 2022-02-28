unit umdl_inserttable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, Buttons, ToolWin;

type
  Tmdl_inserttable = class(TForm)
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    SpinEdit3: TSpinEdit;
    Label3: TLabel;
    SpinEdit4: TSpinEdit;
    Label4: TLabel;
    SpinEdit5: TSpinEdit;
    CheckBox1: TCheckBox;
    ToolBar1: TToolBar;
    bt_del1: TSpeedButton;
    bt_save1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdl_inserttable: Tmdl_inserttable;

implementation

{$R *.dfm}

end.
