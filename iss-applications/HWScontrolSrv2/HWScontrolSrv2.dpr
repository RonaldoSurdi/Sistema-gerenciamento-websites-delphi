library HWScontrolSrv2;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIThreadPool,
  ISAPIApp,
  uHWShttp in 'uHWShttp.pas' {HWSappdbA: TWebModule},
  uHWSdb in 'uHWSdb.pas' {v: TSoapDataModule};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(THWSappdbA, HWSappdbA);
  Application.Run;
end.
