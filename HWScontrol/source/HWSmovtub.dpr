{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSmovtub;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  umdl_movtub in 'umdl_movtub.pas' {mdl_movtub};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Divulgação';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    Application.Title := 'HWScontrol Movies';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '')  and (ParamStr(4) <> '')then begin
          Application.CreateForm(Tdm, dm);
  dm.winsysreg(1,false,false);
          if (dm.conecta_bd(ParamStr(1),ParamStr(3),ParamStr(4))) then begin
             HprevHist := FindWindow(Nil, PChar('HWScontrol '+AxDadosUsr.axtitle));
             if HprevHist = 0 then begin
                Application.CreateForm(Tmdl_movtub, mdl_movtub);
                if (ParamStr(5) <> '') then
                    mdl_movtub.xiniCodab:= StrToInt(ParamStr(5))
                else mdl_movtub.xiniCodab:= 0;
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
