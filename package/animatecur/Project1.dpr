program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  uNTCursor in 'uNTCursor.pas' {NTCursor: TDataModule};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TNTCursor, NTCursor);
  Application.Run;
end.
