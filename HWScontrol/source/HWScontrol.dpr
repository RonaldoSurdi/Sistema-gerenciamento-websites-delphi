{###############################################################################
Programa: HWScontrol
Módulo: acesso ao sistema.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWScontrol;
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
    xparmtitle: String;
    //floading25: Tfloading25;
begin
    Application.Initialize;
    //floading25:= Tfloading25.Create(Application);
    loadx:= Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    xparmtitle:=ParamStr(3);
    if xparmtitle <>'' then xparmtitle:= ' - '+xparmtitle;
    HprevHist := FindWindow(Nil, PChar('HWScontrol Gerenciamento de Websites'+xparmtitle));
    loadx.Progressloading.position:=30;
    //if FileExists('c:\lixo.txt') then DeleteFile('c:\lixo.txt');
    //floading25.Update;
    if HprevHist = 0 then begin
       Application.Title := 'HWScontrol Gerenciamento de Websites';
       loadx.Progressloading.position:=40;
       loadx.lbloading.Caption:='HWScontrol';
       loadx.lbloading.Repaint;
       //floading25.Update;
       Application.CreateForm(Tdm, dm);
       //floading25.Update;
       dm.winsysreg(1,false,false);
       //floading25.Update;
       loadx.Progressloading.position:=70;
       loadx.lbloading.Caption:='HWScontrol';
       loadx.lbloading.Repaint;
       loadx.Progressloading.position:=100;
       Try
          loadx.Close;
          {floading25.Update;
          sleep(1000);
          floading25.free;}
          if ParamStr(1) = '/c' then begin
             WinExec(PChar(ExtractFilePath(Application.ExeName)+'bin/HWSclientconfig.exe'),1);
             Application.Terminate;
          end else begin
             {loadx:= Tloadx.Create(Application);
             loadx.lbloading.Caption:='HWScontrol';
             loadx.Show;
             loadx.Update;
             loadx.Close;}
             Application.CreateForm(Tadm, adm);
          end;
       Except
          dm.Free;
          exit;
       End;
       Application.Run;
    end else begin
       loadx.Close;
       ShowWindow(HprevHist,1);
    end;
end.

