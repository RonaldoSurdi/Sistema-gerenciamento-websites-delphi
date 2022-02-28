{###############################################################################
Programa: HWSwebServer
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSwebServer;
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
  umenu in 'umenu.pas' {adm};

{$R *.res}
Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWS Web Server';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    HprevHist := FindWindow(Nil,'HWS Web Server');
    loadx.Progressloading.position:=30;
    if HprevHist = 0 then begin
       Application.Title := 'HWS Web Server';
       loadx.Progressloading.position:=40;
       loadx.lbloading.Caption:='Módulo de dados';
       loadx.lbloading.Repaint;
       Application.CreateForm(Tdm, dm);
       loadx.Progressloading.position:=70;
       loadx.lbloading.Caption:='Módulo principal';
       loadx.lbloading.Repaint;
       loadx.Progressloading.position:=100;
       Try
          loadx.Free;
          if ParamStr(1) = '/c' then begin
             WinExec(pchar(ExtractFilePath(Application.ExeName)+'bin/HWSserverconfig.exe'),1);
             Application.Terminate;
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

