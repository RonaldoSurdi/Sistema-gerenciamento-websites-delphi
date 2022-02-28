unit Tradutor;

interface

uses
ScktComp, Classes, Dialogs, SysUtils;

type

TTraduzir=procedure(Sender:TObject;Traducao:String) of object;
TAlgumErro=procedure(Sender:TObject;Erro:TErrorEvent) of object;

TTradutor=class(TComponent)
  private
    Socket:TClientSocket;
    FTexto:string;
    FTraduzido:string;
    FDe:string;
    FPara: string;
    FTradutor:TTraduzir;
    FErro:TAlgumErro;
    procedure Leitura(Sender:TObject;Socket:TCustomWinSocket);
    procedure Conecta(Sender:TObject;Socket:TCustomWinSocket);
    procedure ErroNoCliente(Sender:TObject;Socket:TCustomWinSocket;EventoDeErro:TErrorEvent;var CodigoErro:Integer);
    procedure Desconecta(Sender:TObject;Socket:TCustomWinSocket);
  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure Traduzir;
  published
    property TraduzirDe:string read FDe write FDe;
    property TraduzirPara:string read FPara write FPara;
    property Texto:string read FTexto write FTexto;
    property AoTraduzir: TTraduzir read FTradutor write FTradutor;
    property EmErroDeSocket: TAlgumErro read FErro write FErro;
end;

procedure Register;

implementation

function CodificarURL(const StringDecodificada:String):String;
var I:Integer;
begin
    Result:='';
    if Length(StringDecodificada)>0 then
    for I:=1 to Length(StringDecodificada) do begin
        if not (StringDecodificada[I] in ['0'..'9','a'..'z','A'..'Z',' ']) then
           Result:=Result+'%'+IntToHex(Ord(StringDecodificada[I]),2)
        else if not (StringDecodificada[I]=' ') then
           Result:=Result+StringDecodificada[I]
        else
           Result:=Result+'+';
    end;
end;

procedure TTradutor.Leitura(Sender:TObject;Socket:TCustomWinSocket);
begin
    FTraduzido:=FTraduzido+Socket.ReceiveText;
end;

procedure TTradutor.Conecta(Sender:TObject;Socket:TCustomWinSocket);
begin
    Socket.SendText(
    'GET /?sequence=core&language='+CodificarURL(FDe)+'%2F'+CodificarURL(FPara)+'&srctext='+CodificarURL(FTexto)+' HTTP/1.1'+#13#10+
    'Accept: */*'+#13#10+
    'Content-Type: application/x-www-form-urlencoded'+#13#10+
    'Accept-Encoding: gzip, deflate'+#13#10+
    'User-Agent: WOW Translator v1.0'+#13#10+
    'Host: ets.freetranslation.com'+#13#10+
    'Connection: Close'+#13#10#13#10
    );
end;

procedure TTradutor.Desconecta(Sender:TObject;Socket:TCustomWinSocket);
begin
    FTraduzido:=Copy(FTraduzido,Pos(#13#10#13#10,FTraduzido)+4,Length(FTraduzido));
    if Assigned(FTradutor) then FTradutor(self,FTraduzido);
    FTraduzido:='';
end;

procedure TTradutor.ErroNoCliente(Sender:TObject;Socket:TCustomWinSocket;EventoDeErro:TErrorEvent;var CodigoErro:Integer);
begin
    CodigoErro:=0;
    if Assigned(FErro) then FErro(Self,EventoDeErro);
end;

procedure TTradutor.Traduzir;
begin
    Socket.Open;
end;

constructor TTradutor.Create(AOwner:TComponent);
begin
inherited;
    Socket:=TClientSocket.Create(nil);
    with Socket do begin
        OnConnect:=Conecta;
        OnRead:=Leitura;
        OnError:=ErroNoCliente;
        OnDisconnect:=Desconecta;
        Address:='0.0.0.0';
        ClientType:=ctNonBlocking;
        Host:='ets.freetranslation.com';
        Port:=80;
    end;
end;

destructor TTradutor.Destroy;
begin
    Socket.Free;
    inherited;
end;

procedure Register;
begin
    RegisterComponents('HWS', [TTradutor]);
end;

end.
