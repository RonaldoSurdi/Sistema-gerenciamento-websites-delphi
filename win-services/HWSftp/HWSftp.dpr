program HWSftp;

uses
  SvcMgr,
  rebapp in 'rebapp.pas' {HWSsfftp: TService};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'HWS FTP Server';
  Application.CreateForm(THWSsfftp, HWSsfftp);
  Application.Run;
end.

//HWSftp -install
//HWSftp -uninstall
