program HWSfileServer;

uses
  SvcMgr,
  rebapp in 'rebapp.pas' {HWSsffileServer: TService};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'HWS File Manager Server';
  Application.CreateForm(THWSsffileServer, HWSsffileServer);
  Application.Run;
end.

//HWSfileServer -install
//HWSfileServer -uninstall
