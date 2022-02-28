{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSusrcontact;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  umdl_usrcontact in 'umdl_usrcontact.pas' {mdl_usrcontact};

{$R *.res}
{$D-,L-,Y-}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Catálogo de Contatos';
    loadx.Show;
    loadx.Update;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    Application.Title := 'HWScontrol Catálogo de Contatos';
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    Try
       loadx.Close;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '') and (ParamStr(4) <> '') then begin
          Application.CreateForm(Tdm, dm);
          dm.winsysreg(1,false,false);
          if (dm.conecta_bd(ParamStr(1),ParamStr(3),ParamStr(4))) then begin
             HprevHist := FindWindow(Nil, PChar('HWScontrol '+AxDadosUsr.axtitle));
             if HprevHist = 0 then begin
                //Application.Title := 'HWScontrol '+AxDadosUsr.axtitle;
                Application.CreateForm(Tmdl_usrcontact, mdl_usrcontact);
             end else begin
                ShowWindow(HprevHist,1);
             end;
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
end.
