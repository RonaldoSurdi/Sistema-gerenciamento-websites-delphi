program uninstall;

uses
  Forms,
  Dialogs,
  umenunist in 'umenunist.pas' {menuinst},
  udesinstalando in 'udesinstalando.pas' {desinstalando};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Desinstalador HWSwebserver';
  if (ParamStr(1)<>'') and (ParamStr(2)<>'') and (ParamStr(3)<>'') and
     (ParamStr(4)<>'') and (ParamStr(5)<>'')  then begin
     Application.CreateForm(Tdesinstalando, desinstalando);
     if ParamStr(1)='/sys=1' then desinstalando.ck1:=true
     else desinstalando.ck1:=false;
     if ParamStr(2)='/ico=1' then desinstalando.ck2:=true
     else desinstalando.ck2:=false;
     if ParamStr(3)='/lib=1' then desinstalando.ck3:=true
     else desinstalando.ck3:=false;
     if ParamStr(4)='/cfg=1' then desinstalando.ck4:=true
     else desinstalando.ck4:=false;
     desinstalando.dirdefault:=copy(ParamStr(5),6,Length(ParamStr(5)));
  end else Application.CreateForm(Tmenuinst, menuinst);
  Application.Run;
end.
