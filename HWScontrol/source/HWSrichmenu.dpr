{###############################################################################
Programa: HWSentidades
M?dulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relat?rio de acessos:
10/10/2004 - Ronaldo Surdi //Codigica??o do m?dulo.
###############################################################################}

program HWSrichmenu;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm in 'udm.pas' {dm: TDataModule},
  umdl_richmenu in 'umdl_richmenu.pas' {mdl_richmenu},
  umdl_richgalery_view in 'umdl_richgalery_view.pas' {mdl_richgalery_view},
  uBt_search_auto in 'uBt_search_auto.pas' {Bt_search_auto};

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    loadx.lbloading.Caption:='HWScontrol Not?cias';
    loadx.Show;
    loadx.Update;
    loadx.Progressloading.position:=20;
    loadx.Progressloading.position:=30;
    loadx.Progressloading.position:=40;
    loadx.lbloading.Caption:='Autenticando';
    loadx.lbloading.Repaint;
    Application.Title := 'HWScontrol Menus';
    loadx.Progressloading.position:=60;
    loadx.lbloading.Caption:='M?dulo principal';
    loadx.lbloading.Repaint;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       if (ParamStr(1) <> '') and (ParamStr(2) = '??֤??') and (ParamStr(3) <> '') and (ParamStr(4) <> '') then begin
          Application.CreateForm(Tdm, dm);
          dm.winsysreg(1,false,false);
          if (dm.conecta_bd(ParamStr(1),ParamStr(3),ParamStr(4))) then begin
             HprevHist := FindWindow(Nil, PChar('HWScontrol '+AxDadosUsr.axtitle));
             if HprevHist = 0 then begin
                Application.CreateForm(Tmdl_richmenu, mdl_richmenu);
                if (ParamStr(5) <> '') then
                    mdl_richmenu.xiniCodab:= StrToInt(ParamStr(5))
                else mdl_richmenu.xiniCodab:= 0;
             end else begin
                ShowWindow(HprevHist,1);
             end;
          end else begin
             Application.Terminate;
          end;
       end else begin
          hwsf.BtMensagem('Plataforma inv?lida.');
          Application.Terminate;
       end;
    Except
       dm.Free;
       exit;
    End;
    Application.Run;
end.
