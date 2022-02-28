program HWSmtpClient;

uses
  Forms,
  u_smtpclient in 'u_smtpclient.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
