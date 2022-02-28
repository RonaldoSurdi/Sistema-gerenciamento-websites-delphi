program HWSsacctconf;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm3 in 'udm3.pas' {dm3: TDataModule},
  uwebchat_admsac in 'uwebchat_admsac.pas' {webchat_admsac},
  uwebchat_msgReadConf in 'uwebchat_msgReadConf.pas';

{$R *.res}

var HprevHist : HWND;
    axwinsys: Boolean;
begin
    Application.Initialize;
    //Application.Title := 'HWSsac Chat Confer�ncia';
    Try
       axwinsys:= (ParamStr(1) <> '') and (ParamStr(2) = '�?֤��') and (ParamStr(3) <> '')  and (ParamStr(4) <> '') and (ParamStr(5) <> '')  and (ParamStr(6) <> '')  and
                  (ParamStr(7) <> '') and (ParamStr(8) <> '');
       if axwinsys then begin
          HprevHist := FindWindow(Nil, PChar('HWSsac Confer�ncia - '+ParamStr(8)));
          if HprevHist = 0 then begin
             loadx := Tloadx.Create(Application);
             loadx.Close;
             Application.CreateForm(Tdm3, dm3);
             axwinsys:=dm3.winsysreg(1,false,false);
             if axwinsys then begin
                dm3.axparmSAC:=ParamStr(5);
                axwinsys:=dm3.getTablesNms;
             end;
             if axwinsys then begin
                axwinsys:=(dm3.SACconecta_bd(ParamStr(1),ParamStr(3),ParamStr(4),ParamStr(6),''));
                if axwinsys then
                   Application.CreateForm(Twebchat_admsac, webchat_admsac);
             end;
          end else begin
             ShowWindow(HprevHist,1);
             exit;
          end;
       end;
       if not axwinsys then begin
          try
              dm3.free;
          except
          end;
          hwsf.BtMensagem('Plataforma inv�lida.');
          Application.Terminate;
       end;
    Except
       exit;
    End;
    if axwinsys then Application.Run;
end.
