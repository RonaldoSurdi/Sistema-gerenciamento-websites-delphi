{###############################################################################
Programa: HWScontrol
Módulo: acesso ao sistema.
Data: 19 de março de 2005.
By HWS Web Solutions

Relatório de acessos:
19/03/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSclientConfig;

uses
  Forms,
  Windows,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uconfig in 'uconfig.pas' {fconfig};

{$R *.res}
                                   
Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Configurações';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    HprevHist := FindWindow(Nil, PChar('HWScontrol Configurações'));
    if HprevHist = 0 then begin
    Application.Title := 'HWScontrol Configurações';
    Application.CreateForm(Tdm, dm);
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if dm.Autentica_usr then begin
          Application.CreateForm(Tfconfig, fconfig);
       end else begin
          hwsf.BtMensagem('Autenticação inválida.');
          Release;
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
