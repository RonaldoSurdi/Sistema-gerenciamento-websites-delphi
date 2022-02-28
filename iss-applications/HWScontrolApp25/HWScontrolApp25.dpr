library HWScontrolApp25;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIThreadPool,
  ISAPIApp,
  http in 'http.pas' {HWSappdbBin: TWebModule},
  HWSwsFnImp in 'HWSwsFnImp.pas',
  HWSwsFnSrv in 'HWSwsFnSrv.pas';

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(THWSappdbBin, HWSappdbBin);
  Application.Run;
end.
