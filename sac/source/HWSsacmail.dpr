program HWSsacmail;

uses
  Forms,
  Windows,
  SysUtils,
  hwsfunctions,
  udm3 in 'udm3.pas' {dm3: TDataModule},
  uwebchat_mail in 'uwebchat_mail.pas' {webchat_mail};

{$R *.res}

var HprevHist : HWND;
    axwinsys: Boolean;
begin
    Application.Initialize;
    Try
       axwinsys:=(ParamStr(1) <> '') and (ParamStr(2) = '�?֤��') and (ParamStr(3) <> '')  and (ParamStr(4) <> '') and (ParamStr(5) <> '')  and (ParamStr(6) <> '')  and (ParamStr(7) <> '');
       if axwinsys then begin
          HprevHist := FindWindow(Nil, PChar('HWSsac Mail'));
          if (HprevHist = 0) then begin
             loadx := Tloadx.Create(Application);
             loadx.lbloading.Caption:='HWSsac Mail';
             loadx.Show;
             loadx.Update;
             loadx.Progressloading.Position:=25;
             Application.CreateForm(Tdm3, dm3);
             axwinsys:=dm3.winsysreg(1,false,false);
             loadx.Progressloading.Position:=50;
             loadx.Repaint;
             if axwinsys then begin
                dm3.axparmSAC:=ParamStr(5);
                axwinsys:=dm3.getTablesNms;
                loadx.Progressloading.Position:=75;
                loadx.Repaint;
             end;
             if axwinsys then begin
                axwinsys:=(dm3.SACconecta_bd(ParamStr(1),ParamStr(3),ParamStr(4),ParamStr(6),''));
                if axwinsys then begin
                   loadx.Progressloading.Position:=100;
                   loadx.Repaint;
                   Application.Title := 'HWSsac Mail';
                   loadx.Close;
                   Application.CreateForm(Twebchat_mail, webchat_mail);
                end;
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
