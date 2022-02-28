program HWSmail;

uses
  SvcMgr,
  rebapp in 'rebapp.pas' {HWSsfMail: TService};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'HWSmail';
  Application.CreateForm(THWSsfMail, HWSsfMail);
  Application.Run;
end.

//HWSsrv -install
//HWSsrv -uninstall
