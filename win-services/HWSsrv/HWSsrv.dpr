program HWSsrv;

uses
  SvcMgr,
  rebapp in 'rebapp.pas' {HWSsfsrv: TService};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'HWSmonitor';
  Application.CreateForm(THWSsfsrv, HWSsfsrv);
  Application.Run;
end.

//HWSsrv -install
//HWSsrv -uninstall
