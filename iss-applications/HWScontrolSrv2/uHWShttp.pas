{ SOAP WebModule }
unit uHWShttp;

interface

uses
  SysUtils, Classes, HTTPApp, InvokeRegistry, WSDLIntf, TypInfo,
  WebServExp, WSDLBind, XMLSchema, WSDLPub, SOAPPasInv, SOAPHTTPPasInv,
  SOAPHTTPDisp, WebBrokerSOAP;

type
  THWSappdbA = class(TWebModule)
    HTTPSoapDispatcher1: THTTPSoapDispatcher;
    HTTPSoapPascalInvoker1: THTTPSoapPascalInvoker;
    WSDLHTMLPublish1: TWSDLHTMLPublish;
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure HTTPSoapPascalInvoker1AfterDispatchEvent(
      const MethodName: String; SOAPResponse: TStream);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HWSappdbA: THWSappdbA;

implementation

uses hwsfunctions;

//Uses hwsfunctions,WebReq;

{$R *.dfm}

procedure THWSappdbA.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  WSDLHTMLPublish1.ServiceInfo(Sender, Request, Response, Handled);
end;

procedure THWSappdbA.HTTPSoapPascalInvoker1AfterDispatchEvent(
  const MethodName: String; SOAPResponse: TStream);
var memStream : TMemoryStream;
begin
  SOAPResponse.Position := 0;
  memStream := TMemoryStream.Create;
  CompressStream(SoapResponse, memStream);
  SoapResponse.Position := 0;
  memStream.Position := 0;
  SoapResponse.CopyFrom(memStream, memStream.Size);
  SoapResponse.Size := memStream.Size;
  Response.ContentLength := memStream.Size;
  memStream.Free;
end;

end.


