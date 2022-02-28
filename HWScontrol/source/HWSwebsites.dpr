{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSwebsites;

uses
  Forms,
  Windows,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uadm_websites in 'uadm_websites.pas' {adm_websites},
  uadm_edsound in 'uadm_edsound.pas' {adm_edsound},
  uadm_edtpmn in 'uadm_edtpmn.pas' {adm_edtpmn};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol websites';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    HprevHist := FindWindow(Nil, PChar('HWScontrol websites'));
    if HprevHist = 0 then begin
    Application.Title := 'HWScontrol websites';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '') then begin
          Application.CreateForm(Tdm, dm);
          dm.winsysreg(1,false,false);
          if dm.conecta_bd(ParamStr(1),ParamStr(3),'') then begin
             Application.CreateForm(Tadm_websites, adm_websites);
          end else begin
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
