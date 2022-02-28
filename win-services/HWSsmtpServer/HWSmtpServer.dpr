program HWSmtpServer;

uses
  Forms,
  u_smtpserver in 'u_smtpserver.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
