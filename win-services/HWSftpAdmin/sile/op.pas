unit op;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure gravar_log(xmensa:String);
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.gravar_log(xmensa:String);
var F: TextFile;
    S,xfilename,xtime: string;
begin
    xfilename:='c:\text.txt';
    AssignFile(F, xfilename);
    DateTimeToString(xtime,'yyyy-mm-dd hh:nn:ss',now);
    if FileExists(xfilename) then Append(F)
    else ReWrite(F);
    Writeln(F,xtime+' | '+xmensa);
    CloseFile(F);
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
gravar_log('log');
end;

end.
