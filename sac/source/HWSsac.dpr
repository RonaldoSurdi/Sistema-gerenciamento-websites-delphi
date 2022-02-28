{###############################################################################
Programa: HWSstChat
Módulo: acesso ao sistema.
Data: 13 de janeiro de 2005.
By HWS Web Solutions

Relatório de acessos:
13/01/2005 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

program HWSsac;

uses
  Forms,
  Windows,
  hwsfunctions,
  uwebchat_menu in 'uwebchat_menu.pas' {webchat_menu},
  udm3 in 'udm3.pas' {dm3: TDataModule},
  uwebchat_ListUsrMod in 'uwebchat_ListUsrMod.pas',
  uwebchat_msgMonitor in 'uwebchat_msgMonitor.pas';

{$R *.res}

Var HprevHist : HWND;
begin
    Application.Initialize;
    loadx := Tloadx.Create(Application);
    {loadx.lbloading.Caption:='HWScontrol Atendimento';
    loadx.Show;
    loadx.Update;}
    HprevHist := FindWindow(Nil, PChar('HWSsac atm'));
    if HprevHist = 0 then begin
       Application.Title := 'HWSsac atm';
       Try
          loadx.Close;
          Application.CreateForm(Tdm3, dm3);
          Application.CreateForm(Twebchat_menu, webchat_menu);
          Application.Run;
       Except
          Application.Terminate;
          exit;
       End;
    end else begin
       loadx.Close;
       ShowWindow(HprevHist,1);
    end;
end.
