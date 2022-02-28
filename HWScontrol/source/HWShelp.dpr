{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSHelp;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uadm_help in 'uadm_help.pas' {adm_help};

{$R *.res}

Var HprevHist : HWND;
    xcodlng: Integer;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Help';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    HprevHist := FindWindow(Nil, PChar('HWScontrol Help'));
    //if HprevHist = 0 then begin
    Application.Title := 'HWScontrol Tópicos de Ajuda';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '') then begin
          Application.CreateForm(Tdm, dm);
  dm.winsysreg(1,false,true);
          if ParamStr(4)<>'' then xcodlng:=StrtoInt(ParamStr(4))
          else xcodlng:=1;
          if (dm.conecta_bd(ParamStr(1),ParamStr(3),'')) and (xcodlng>0) then begin
             Application.CreateForm(Tadm_help, adm_help);
             adm_help.xcod_lng:=xcodlng;
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
    {end else begin
       loadx.Free;
       ShowWindow(HprevHist,1);
    end;}
end.
