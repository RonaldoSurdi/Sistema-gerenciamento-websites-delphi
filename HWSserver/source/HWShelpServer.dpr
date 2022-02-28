{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWShelpServer;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uadm_helpServer in 'uadm_helpServer.pas' {adm_helpServer};

{$R *.res}

Var HprevHist : HWND;
    xcodlng: Integer;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWS Help Server';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    HprevHist := FindWindow(Nil, PChar('HWS Help Server'));
    if HprevHist = 0 then begin
    Application.Title := 'HWS Help Server';
    Application.CreateForm(Tdm, dm);
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '') and (ParamStr(4) <> '') then begin
          xcodlng:=StrtoInt(ParamStr(4));
          if (dm.conecta_bd(true,true,ParamStr(1),ParamStr(3))) and
             (xcodlng>0) then begin
             Application.CreateForm(Tadm_helpServer, adm_helpServer);
             adm_helpServer.xcod_lng:=xcodlng;
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
