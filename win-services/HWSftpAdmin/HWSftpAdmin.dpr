program HWSftpAdmin;

uses
  Forms,
  Windows,
  umeserver in 'umeserver.pas' {Form1},
  uconfig in 'uconfig.pas' {Form2},
  uusers in 'uusers.pas' {Form3},
  ugroups in 'ugroups.pas' {Form4},
  uBt_Digitarsenha in 'uBt_digitarsenha.pas' {Bt_digitarsenha},
  uBt_Mensagem in 'uBt_Mensagem.pas' {Bt_Mensagem},
  uBt_Confirma in 'uBt_Confirma.pas' {Bt_Confirma},
  uSobre in 'uSobre.pas' {Sobre},
  uftptest in 'uftptest.pas' {Form5};

{$R *.res}
Var HprevHist : HWND;
begin
  Application.Initialize;
  HprevHist := FindWindow(Nil, PChar('HWS Server'));
  if HprevHist = 0 then begin
  Application.Title := 'HWS FTP Server';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSobre, Sobre);
  Application.Run;
  end;
end.
