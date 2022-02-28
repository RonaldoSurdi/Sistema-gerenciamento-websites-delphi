unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses uNTCursor;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
     NTCursor.start(true);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     NTCursor.start(false);
end;

end.
