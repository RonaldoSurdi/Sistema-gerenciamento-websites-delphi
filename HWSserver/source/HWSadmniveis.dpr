{###############################################################################
Programa: HWSentidades
M�dulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat�rio de acessos:
10/10/2004 - Ronaldo Surdi //Codigica��o do m�dulo.
###############################################################################}

program HWSadmniveis;

uses
  Forms,
  Windows,
  hwsfunctions,
  uadm_niveis in 'uadm_niveis.pas' {adm_niveis},
  udm in 'udm.pas' {dm: TDataModule};

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
    HprevHist := FindWindow(Nil, PChar('HWS N�veis'));
    if HprevHist = 0 then begin
    Application.Title := 'HWS N�veis';
    Application.CreateForm(Tdm, dm);
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='M�dulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = '�?֤��') and (ParamStr(3) <> '') then begin
          if dm.conecta_bd(true,true,ParamStr(1),ParamStr(3)) then begin
             Application.CreateForm(Tadm_niveis, adm_niveis);
          end else begin
             hwsf.BtMensagem('Autentica��o inv�lida.');
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
    end else begin
       loadx.Free;
       ShowWindow(HprevHist,1);
    end;
end.
