{###############################################################################
Programa: HWSentidades
Módulo: acesso ao sistema.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
10/10/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWStradutor;

uses
  Forms,
  Windows,
  hwsfunctions,
  uadm_tradutor in 'uadm_tradutor.pas' {adm_tradutor};

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
    HprevHist := FindWindow(Nil, PChar('HWS Tradutor'));
    if HprevHist = 0 then begin
    Application.Title := 'HWS Tradutor';
    loadx.Progressloading.position:=40;
    loadx.Progressloading.position:=60;
    loadx.Progressloading.position:=80;
    Try
       loadx.Free;
       Application.CreateForm(Tadm_tradutor, adm_tradutor);
    Except
       exit;
    End;
    Application.Run;
    end else begin
       loadx.Free;
       ShowWindow(HprevHist,1);
    end;
end.
