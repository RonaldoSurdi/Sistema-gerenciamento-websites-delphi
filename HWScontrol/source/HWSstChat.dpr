{###############################################################################
Programa: HWSstChat
Módulo: acesso ao sistema.
Data: 13 de janeiro de 2005.
By HWS Web Solutions

Relatório de acessos:
13/01/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSstChat;

uses
  Forms,
  Windows,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uadm_stmenuchat in 'uadm_stmenuchat.pas' {adm_stmenuchat};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Chat';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    HprevHist := FindWindow(Nil, PChar('HWScontrol Chat'));
    if HprevHist = 0 then begin
       Application.Title := 'HWScontrol Chat';
       loadx.Progressloading.position:=40;
       loadx.lbloading.Caption:='Autenticando';
       loadx.lbloading.Repaint;
       loadx.Progressloading.position:=60;
       loadx.lbloading.Caption:='Módulo principal';
       loadx.lbloading.Repaint;
       loadx.Progressloading.position:=80;
       Try
          loadx.Free;
          if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '') then begin
             Application.CreateForm(Tdm, dm);
  dm.winsysreg(1,true,false);
             if dm.conecta_bd(ParamStr(1),ParamStr(3),'') then begin
                Application.CreateForm(Tadm_stmenuchat, adm_stmenuchat);
                if ParamStr(4)='/h' then adm_stmenuchat.xshowin:=true
                else adm_stmenuchat.xshowin:=false;
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
       if ParamStr(4)<>'/h' then
          ShowWindow(HprevHist,1);
    end;
end.
