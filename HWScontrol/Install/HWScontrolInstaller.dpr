program HWScontrolInstaller;

uses
  Forms,
  Windows,
  SysUtils,
  umenuinst in 'umenuinst.pas' {menuinst},
  uselectdir in 'uselectdir.pas' {selectdir};

{$R *.res}
Var HprevHist : HWND;

begin
  Application.Initialize;
  HprevHist := FindWindow(Nil, PChar('Instala��o HWScontrol'));
  if HprevHist = 0 then begin
     Application.Title := 'Instala��o HWScontrol';
     Application.CreateForm(Tmenuinst, menuinst);
     Application.Run;
  end else begin
     ShowWindow(HprevHist,1);
  end;
end.
