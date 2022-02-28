program HWSwebserverInstaller;

uses
  Forms,
  umenuinst in 'umenuinst.pas' {menuinst},
  uselectdir in 'uselectdir.pas' {selectdir};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'HWSwebserver Installer';
  Application.CreateForm(Tmenuinst, menuinst);
  Application.Run;
end.
