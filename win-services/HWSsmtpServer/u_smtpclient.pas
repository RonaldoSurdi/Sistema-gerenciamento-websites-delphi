unit u_smtpclient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP;

type
  TForm2 = class(TForm)
    smtpHWS: TIdSMTP;
    MessageHWS: TIdMessage;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var xmWeb,xmWebdom,xmUsersmtp,xmUser,xmPass,xmName: String;
    xRmt_Name,xRmt_Address,xRmt_Assunto: String;
    xRmt_Priority: Integer;
    axmBody,axmBodyRDP,axmBodyTMP: WideString;
    xDst_cp3,xDst_cp13: String;
    xerrorID: String;

    function finalizaERRO(xmsgerror:String):Boolean;
    begin
        Memo1.Lines.Add(xmsgerror);
        Result:=true;
    end;
    function SendHWSmail:Boolean;
    var emailMessege: TIdMessage;
        axResMes: Boolean;
    begin
      try
          axResMes:=false;
          emailMessege := TIdMessage.Create(nil);
          emailMessege.CharSet:='iso-8859-1';
          emailMessege.ContentType:='text/html';
          emailMessege.Encoding:=meMIME;
          emailMessege.Organization:=xmWeb;
          emailMessege.From.Name:= xRmt_Name;
          emailMessege.From.Address:= xRmt_Address;
          emailMessege.Sender.Name:= xmName;
          emailMessege.Sender.Address:= xmUser;
          Case xRmt_Priority of
              0: emailMessege.Priority := mpHighest;
              1: emailMessege.Priority := mpHigh;
              2: emailMessege.Priority := mpNormal;
              3: emailMessege.Priority := mpLow;
              4: emailMessege.Priority := mpLowest;
          end;
          emailMessege.Subject := xRmt_Assunto;
          emailMessege.Body.Clear;
          emailMessege.Body.Add(axmBody);
          //emailMessege.Recipients.EMailAddresses:= xDst_cp13;
          emailMessege.Recipients.Clear;
          emailMessege.Recipients.Add;
          emailMessege.Recipients.Items[0].Name:=xDst_cp3;
          emailMessege.Recipients.Items[0].Address:=xDst_cp13;
          try
              if not smtpHWS.Connected then begin
                 smtpHWS.Connect;
                 smtpHWS.Authenticate;
              end;
              if not smtpHWS.Connected then
                 xerrorID:='N8_15_11['+xmUsersmtp+'|'+xmUser+']';
              smtpHWS.Send(emailMessege);
              axResMes:=true;
          except
              Result:=finalizaERRO('SMTP '+xmUsersmtp+' ['+xDst_cp13+'] Atend');
          end;
      finally
          emailMessege.Free;
          Result:=axResMes;
      end;
    end;


begin
//xmWeb,
    xmWeb:='hws.com.br';
    xmWebdom:=copy(xmWeb,5,length(xmWeb));
    //xmUsersmtp:='200.234.205.210';
    //xmUser:='webmaster@hws.com.br';
    xmUsersmtp:='smtp.'+xmWebdom;
    xmUser:='webmaster@'+xmWebdom;
    xmPass:='1d23a1KDLJS';
    xmName:=xmWebdom;

    try
          if smtpHWS.Connected then
             smtpHWS.Disconnect;
          smtpHWS.Host := 'localhost';//xmUsersmtp;
          smtpHWS.Port := 26;
          smtpHWS.Username := 'phmrdiort';//xmUser;
          smtpHWS.Password := '985jgfktg3fg';//xmPass;
          smtpHWS.HeloName := xmName;
          smtpHWS.Connect;
          smtpHWS.Authenticate;
    except
          finalizaERRO('ERRO SERVIDOR SMTP ('+xmWebdom+'/'+xmUsersmtp+'/'+xmUser+')');
          exit;
    end;

    xRmt_Name:='Ronaldo';
    xRmt_Address:='ronaldo@hws.com.br';

    xDst_cp3:='Ronaldo';
    xDst_cp13:='ronaldo@hws.com.br';
    axmBody:='teste';
    xRmt_Assunto:='teste';
    xRmt_Priority:=2;

    if SendHWSmail then finalizaERRO('Mensagem enviada...')
    else finalizaERRO('Erro ao enviar Mensagem...');

end;

end.
