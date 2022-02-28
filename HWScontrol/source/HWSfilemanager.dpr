{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSfilemanager;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  umdl_filemanager in 'umdl_filemanager.pas' {mdl_filemanager},
  uBt_search_auto in 'uBt_search_auto.pas' {Bt_search_auto},
  uform_cmt1 in 'uform_cmt1.pas' {form_cmt1},
  uform_cmt2 in 'uform_cmt2.pas' {form_cmt2},
  uform_cmt3 in 'uform_cmt3.pas' {form_cmt3},
  udm2 in 'udm2.pas' {dm2: TDataModule},
  uform_usr in 'uform_usr.pas' {form_usr},
  uform_restrict in 'uform_restrict.pas' {form_restrict};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol File Manager';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    Application.Title := 'HWScontrol File Manager';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='Módulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = 'Å?Ö¤¶•') and (ParamStr(3) <> '')  and (ParamStr(4) <> '')then begin
          Application.CreateForm(Tdm2, dm2);
          dm2.winsysreg(1,false,false);
          if (dm2.conecta_bd(ParamStr(1),ParamStr(3),ParamStr(4))) then begin
             HprevHist := FindWindow(Nil, PChar('HWScontrol '+AxDadosUsr.axtitle));
             if HprevHist = 0 then begin
                Application.CreateForm(Tmdl_filemanager, mdl_filemanager);
                if (ParamStr(5) <> '') then
                    mdl_filemanager.xiniCodab:= StrToInt(ParamStr(5))
                else mdl_filemanager.xiniCodab:= 0;
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
       dm2.Free;
       exit;
    End;
    Application.Run;
end.
