unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdComponent, IdTCPConnection, IdTCPClient, IdEcho, StdCtrls,
  IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze, IdSocks,
  IdServerIOHandlerSocket, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL,
  IdServerIOHandler, IdHTTP, IdGopher, IdFinger, ExtCtrls, IdRawBase,
  IdRawClient, IdIcmpClient;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    TimerPing: TTimer;
    Memo2: TMemo;
    ICMP: TIdIcmpClient;
    IdSocksInfo1: TIdSocksInfo;
    IdAntiFreeze1: TIdAntiFreeze;
    procedure TimerPingTimer(Sender: TObject);
    procedure ICMPReply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TesteSuccess: Boolean;

implementation

{$R *.dfm}

procedure TForm1.TimerPingTimer(Sender: TObject);
begin
    //TimerPing.Enabled := False;
    //ICMP.ReceiveTimeout := 3000;
    //Application.ProcessMessages;
    try
      //ICMP.Host := 'www.hws.com.br';
      ICMP.Ping();
      Memo2.Lines.Add('conectado');
    except
      Memo2.Lines.Add('erro');
      Application.ProcessMessages;
    end;       

end;

procedure TForm1.ICMPReply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
var TimeResponse: Integer;
begin
    Application.ProcessMessages;
    if AReplyStatus.ReplyStatusType = rsEcho then
        Memo1.Lines.Add('echo')
    else if AReplyStatus.ReplyStatusType = rsError then
        Memo1.Lines.Add('error')
    else if AReplyStatus.ReplyStatusType = rsTimeOut then
        Memo1.Lines.Add('timeout')
    else if AReplyStatus.ReplyStatusType = rsErrorUnreachable then
        Memo1.Lines.Add('Uerror')
    else if AReplyStatus.ReplyStatusType = rsErrorTTLExceeded then
        Memo1.Lines.Add('Eerror')
    else Memo1.Lines.Add('OUT');
    TimeResponse := AReplyStatus.MsRoundTripTime;
    Memo1.Lines.Add(IntToStr(TimeResponse));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
      Memo1.Clear;
      Memo2.Clear;
end;

end.
