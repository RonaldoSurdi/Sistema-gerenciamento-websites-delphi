unit uselectdir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, ToolWin, ComCtrls, StdCtrls, ShellCtrls;

type
  Tselectdir = class(TForm)
    ToolBar1: TToolBar;
    bt_iniciar: TSpeedButton;
    bt_cancelar: TSpeedButton;
    Panel1: TPanel;
    ShellComboBox1: TShellComboBox;
    ShellTreeView1: TShellTreeView;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bt_iniciarClick(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ShellComboBox1Change(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure SetPath;
    { Private declarations }
  public
    pathselected,pastasys: string;
    { Public declarations }
  end;

var
  selectdir: Tselectdir;

implementation

{$R *.dfm}

procedure Tselectdir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=caHide;
end;

procedure Tselectdir.FormCreate(Sender: TObject);
begin
      pathselected:='';
end;

procedure Tselectdir.bt_iniciarClick(Sender: TObject);
begin
      if ((copy(Edit1.Text,2,2)<>':\') and
         (copy(Edit1.Text,2,2)<>':/')) or
         (not DirectoryExists(ShellTreeView1.Path)) then begin
         ShowMessage('Caminho selecionado inválido.');
         ShellTreeView1.SetFocus;
         exit;
      end;
      pathselected:=Edit1.Text;
      Close;
end;

procedure Tselectdir.ShellTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
      SetPath;
end;

procedure Tselectdir.ShellComboBox1Change(Sender: TObject);
begin
      SetPath;
end;

procedure Tselectdir.SetPath;
var axpath:string;
    axpath2:string;
begin
      axpath:=ShellTreeView1.Path;
      axpath2:=copy(axpath,Length(axpath),1);
      if (axpath2<>'\') and
         (axpath2<>'/') then
         axpath:=axpath+'\';
      Edit1.Text:=axpath+pastasys;
end;

procedure Tselectdir.bt_cancelarClick(Sender: TObject);
begin
      pathselected:='';
      Close;
end;

procedure Tselectdir.FormShow(Sender: TObject);
begin
      if pathselected<>'' then begin
         ShellTreeView1.Path:=pathselected;
      end;
end;

end.

