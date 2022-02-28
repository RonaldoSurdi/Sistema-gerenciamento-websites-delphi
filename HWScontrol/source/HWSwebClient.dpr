{###############################################################################
Programa: HWScontrol
Módulo: acesso ao sistema.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSwebClient;
{*****************************
parâmetros
HWSconectServer
/c - interface config   -  uconfig
*****************************}

uses
  Forms,
  Windows,
  hwsfunctions,
  SysUtils,
  udm in 'udm.pas' {dm: TDataModule},
  umenu in 'umenu.pas' {adm},
  umenu_update in 'umenu_update.pas' {menu_update};

{$R *.res}
Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    HprevHist := FindWindow(Nil, PChar('HWScontrol Client'));
    loadx.Progressloading.position:=30;
    if HprevHist = 0 then begin
       Application.Title := 'HWScontrol Client';
       loadx.Progressloading.position:=40;
       loadx.lbloading.Caption:='Módulo de dados';
       loadx.lbloading.Repaint;
       Application.CreateForm(Tdm, dm); 
       dm.winsysreg(1,false,false);
       loadx.Progressloading.position:=70;
       loadx.lbloading.Caption:='Módulo principal';
       loadx.lbloading.Repaint;
       loadx.Progressloading.position:=100;
       Try
          loadx.Free;
          if ParamStr(1) = '/c' then begin
             WinExec(PChar(ExtractFilePath(Application.ExeName)+'bin/HWSclientconfig.exe'),1);
             release;
          end else begin
             Application.CreateForm(Tadm, adm);
          end;
       Except
          dm.Free;
          exit;
       End;
       Application.Run;
    end else begin
       loadx.Free;
       ShowWindow(HprevHist,1);
    end;
end.

