program HWSsacInstaller;

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
  HprevHist := FindWindow(Nil, PChar('Instala��o HWSsac'));
  if HprevHist = 0 then begin
     Application.Title := 'Instala��o HWSsac';
     Application.CreateForm(Tmenuinst, menuinst);
     Application.Run;
  end else begin
     ShowWindow(HprevHist,1);
  end;
end.
