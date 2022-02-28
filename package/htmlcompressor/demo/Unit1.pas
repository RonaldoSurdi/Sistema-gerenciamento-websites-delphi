unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, HTMLCompressor;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    CompressBtn: TBitBtn;
    OpenHTMLDialog: TOpenDialog;
    HTMLCompressor: THTMLCompressor;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CompressBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenHTMLDialog.Execute then
   Edit1.Text := OpenHTMLDialog.FileName;
end;

procedure TForm1.CompressBtnClick(Sender: TObject);
begin
  if HTMLCompressor.LoadFromFile(Edit1.Text) then
   begin
    HTMLCompressor.Compress;
    HTMLCompressor.SaveToFile(Edit2.Text);
   end;
end;

end.
