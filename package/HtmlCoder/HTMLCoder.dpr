program HTMLCoder;

uses
  Forms,
  U_main in 'U_main.pas' {frmMain},
  U_keyword in 'U_keyword.pas' {frmKeyword},
  U_about in 'U_about.pas' {AboutBox};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'HTML Coder';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
