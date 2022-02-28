program uninstall;

uses
  Forms,
  Windows,
  SysUtils,
  umenunist in 'umenunist.pas' {menuinst};

{$R *.res}
Var HprevHist : HWND;

begin
  Application.Initialize;
  HprevHist := FindWindow(Nil, PChar('Desinstalar HWScontrol'));
  if HprevHist = 0 then begin
     Application.Title := 'Desinstalar HWScontrol';
     Application.CreateForm(Tmenuinst, menuinst);
     Application.Run;
  end else begin
     ShowWindow(HprevHist,1);
  end;
end.
