{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSadmcustomHelp;

uses
  Forms,
  Windows,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uadm_admcustomhelp in 'uadm_admcustomhelp.pas' {adm_admcustomhelp},
  uadm_customSelectImg in 'uadm_customSelectImg.pas' {adm_customSelectImg};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWS Web Server';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    HprevHist := FindWindow(Nil, PChar('HWS Editor Ajuda'));
    if HprevHist = 0 then begin
    Application.Title := 'HWS  Editor de Ajudas Server';
  Application.CreateForm(Tdm, dm);
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '') then begin
          if dm.conecta_bd(true,true,ParamStr(1),ParamStr(3)) then begin
             Application.CreateForm(Tadm_admcustomhelp, adm_admcustomhelp);
          end else begin
             hwsf.BtMensagem('Autenticação inválida.');
             Application.Terminate;
          end;
       end else begin
          hwsf.BtMensagem('Plataforma inválida.');
          Application.Terminate;
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
