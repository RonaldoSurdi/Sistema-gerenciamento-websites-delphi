{###############################################################################
Programa: HWSentidades
M�dulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat�rio de acessos:
10/10/2004 - Ronaldo Surdi //Codigica��o do m�dulo.
###############################################################################}

program HWSentidades;

uses
  Forms,
  Windows,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  uadm_entidades in 'uadm_entidades.pas' {adm_entidades};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Entidade';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    HprevHist := FindWindow(Nil, PChar('HWScontrol Entidade'));
    if HprevHist = 0 then begin
    Application.Title := 'HWScontrol Entidade';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='M�dulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = '�?֤��') and (ParamStr(3) <> '') then begin
          Application.CreateForm(Tdm, dm);
  dm.winsysreg(1,false,false);
          if dm.conecta_bd(ParamStr(1),ParamStr(3),'') then begin
             Application.CreateForm(Tadm_entidades, adm_entidades);
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
    end else begin
       loadx.Free;
       ShowWindow(HprevHist,1);
    end;
end.
