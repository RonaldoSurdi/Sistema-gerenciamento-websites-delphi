{###############################################################################
Programa: HWSentidades
M�dulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat�rio de acessos:
10/10/2004 - Ronaldo Surdi //Codigica��o do m�dulo.
###############################################################################}

program HWSuscnf;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  umdl_uscnf in 'umdl_uscnf.pas' {mdl_uscnf};

{$R *.res}
{$D-,L-,Y-}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol RichText';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    Application.Title := 'HWScontrol Contas para envio de Mensagens';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='M�dulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = '�?֤��') and (ParamStr(3) <> '') then begin
          Application.CreateForm(Tdm, dm);
  dm.winsysreg(1,false,false);
          if (dm.conecta_bd(ParamStr(1),ParamStr(3),'')) then begin
             HprevHist := FindWindow(Nil, PChar('HWScontrol '+AxDadosUsr.axtitle));
             if HprevHist = 0 then begin
                //Application.Title := 'HWScontrol '+AxDadosUsr.axtitle;
                Application.CreateForm(Tmdl_uscnf, mdl_uscnf);
             end else begin
                ShowWindow(HprevHist,1);
             end;
          end else begin
             Application.Terminate;
          end;
       end else begin
          hwsf.BtMensagem('Plataforma inv�lida.');
          Application.Terminate;
       end;
    Except
       dm.Free;
       exit;
    End;
    Application.Run;
end.
