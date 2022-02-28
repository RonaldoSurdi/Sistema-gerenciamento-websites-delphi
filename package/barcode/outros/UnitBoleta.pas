{=============================================================================================
ESTE É SOMENTE UM EXEMPLO QUE NÃO PODE SER USADO SEM ALTERAÇÕES DE ACORDO COM AS NORMAS E
PADRÕES ADOTADOS POR CADA BANCO, QUE PODE SE DIFERENCIAR DE BANCA PARA BANCO.
=============================================================================================}

unit UnitBoleta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, DBTables, Db, Barcode;

type
  TBoleta = class(TForm)
    QR: TQuickRep;
    DetailBand1: TQRBand;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    LocalPagamento1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel30: TQRLabel;
    LabelAgenciaCedente3: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    Vencimento3: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel33: TQRLabel;
    LabelNumeroDigitavel3: TQRLabel;
    LabelValorNumeroDigitavel3: TQRLabel;
    DS: TDataSource;
    QRLabel26: TQRDBText;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRImage1: TQRImage;
    LabelBanco3: TQRLabel;
    NomePessoa: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    Logo1: TQRImage;
    DocImpr: TTable;
    QRLabel37: TQRLabel;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    LocalPagamento2: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel66: TQRLabel;
    LabelAgenciaCedente2: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel73: TQRLabel;
    LabelNumeroDigitavel2: TQRLabel;
    LabelValorNumeroDigitavel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel77: TQRLabel;
    Logo2: TQRImage;
    QRShape24: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    LocalPagamento3: TQRLabel;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRLabel107: TQRLabel;
    LabelAgenciaCedente1: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel114: TQRLabel;
    LabelNumeroDigitavel1: TQRLabel;
    LabelValorNumeroDigitavel1: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRLabel118: TQRLabel;
    Logo3: TQRImage;
    QRLabel25: TQRDBText;
    Especie3: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    NossoNumero3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    Linha1: TQRDBText;
    Linha2: TQRDBText;
    Linha3: TQRDBText;
    Linha4: TQRDBText;
    Linha5: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    DocImprNumeroBanco: TFloatField;
    DocImprNumeroAgencia: TFloatField;
    DocImprCodigoCarteira: TStringField;
    DocImprCodigoCedente: TStringField;
    DocImprCedente: TStringField;
    DocImprNossoNumero: TStringField;
    DocImprCarteira: TStringField;
    DocImprValorDocumento: TCurrencyField;
    DocImprEspecieDocumento: TStringField;
    DocImprAceite: TStringField;
    DocImprLinha1: TStringField;
    DocImprLinha2: TStringField;
    DocImprLinha3: TStringField;
    DocImprLinha4: TStringField;
    DocImprLinha5: TStringField;
    DocImprCampoLivre: TStringField;
    DocImprNomeSacado: TStringField;
    DocImprEnderecoSacado: TStringField;
    DocImprBairroSacado: TStringField;
    DocImprCEPSacado: TStringField;
    DocImprCidadeSacado: TStringField;
    DocImprUFSacado: TStringField;
    DocImprVencimento: TDateField;
    DocImprNumeroDocumento: TStringField;
    function Modulo11(N : string) : string;
    function Modulo10(N : string) : string;
    procedure FormCreate(Sender: TObject);
    procedure QRBeforePrint(Sender: TQuickRep; var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses Clipbrd;

{$R *.DFM}

function StrZero(S : string; n : Byte) : string;
var
  Zeros : string;
  f : Integer;
begin
  Zeros := '';
  for f := 1 to N do
    Zeros := Zeros + '0';
  S := Copy(Zeros, 1, n - Length(S)) + S;
  Result := S;
end;

function Right(S : string; n : Byte) : string;
begin
  Result := Copy(S, Length(S)-n+1, n);
end;

function TBoleta.Modulo11(N : string) : string;
var
  Somatorio,m,f : Integer;
begin
  m := 2;
  Somatorio := 0;
  for f := Length(N) downto 1 do
    begin
      Somatorio := Somatorio + (StrToInt(N[f]) * m);
      inc(m);
      if m = 10 then m := 2;
    end;
  m := Somatorio div 11;
  m := 11 - (Somatorio - (m * 11));
  if m = 10 then m := 0;
  if m = 11 then m := 1;
  Result := IntToStr(m);
end;

function TBoleta.Modulo10(N : string) : string;
var
  Somatorio,m,k,f : Integer;
begin
  Somatorio := 0;
  if Odd(Length(N))
    then m := 2
    else m := 1;
  for f := 1 to Length(N) do
    begin
      k := StrToInt(N[f]) * m;
      if k > 9 then k := 1 + (k - 10);
      Somatorio := Somatorio + k;
      if m = 1
        then m := 2
        else m := 1;
    end;
  m := 1000 - Somatorio;
  Result := Copy(IntToStr(m), Length(IntToStr(m)), 1);
end;

procedure TBoleta.FormCreate(Sender: TObject);
begin
  Logo2.Picture.Assign(Logo1.Picture);
  Logo3.Picture.Assign(Logo1.Picture);
  DocImpr.DatabaseName := ExtractFilePath(Application.ExeName);
  ///////////////////////
  DetailBand1.Height := 1062;
end;

procedure TBoleta.QRBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  PrintReport := DocImpr.RecordCount <> 0;
end;

{=============================================================================================
ESTE É SOMENTE UM EXEMPLO QUE NÃO PODE SER USADO SEM ALTERAÇÕES DE ACORDO COM AS NORMAS E
PADRÕES ADOTADOS POR CADA BANCO, QUE PODE SE DIFERENCIAR DE BANCA PARA BANCO.
=============================================================================================}

procedure TBoleta.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  CampoLivre : string[20];
  CodigoCarteira,
  DVBarras,
  DVCampo1,
  DVCampo2,
  DVCampo3  : string[1];
  Banco, Agencia : string[4];
  ValorInt : string[12];
  ValorFrac : string[2];
  Campo1,
  Campo2,
  Campo3  : string[15];
  Barcode : TBarcode;
begin
  if DocImpr.RecordCount = 0
    then Exit;
  try
    Banco := StrZero(DocImpr.FieldByName('NumeroBanco').AsString, 3);
    Agencia := StrZero(IntToStr(DocImpr.FieldByName('NumeroAgencia').AsInteger), 4);
    CodigoCarteira := DocImpr.FieldByName('CodigoCarteira').AsString;
    CampoLivre := DocImpr.FieldByName('CampoLivre').AsString;
    {Codigo de Barras}
    ValorInt := StrZero(IntToStr(Trunc(DocImpr.FieldByName('ValorDocumento').AsFloat)), 12);
    ValorFrac := Right(FloatToStrF(DocImpr.FieldByName('ValorDocumento').AsFloat, ffFixed, 10,2), 2);
    DVBarras := Modulo11(Banco + '9' + ValorInt + ValorFrac + CodigoCarteira + Agencia + CampoLivre);
    if DVBarras = '0' then DVBarras := '1';
    try
      Barcode := TBarcode.Create(Self);
      Barcode.BarcodeType := btInterleaved2of5;
      Barcode.Digits := Banco + '9' + DVBarras + ValorInt + ValorFrac + CodigoCarteira + Agencia + CampoLivre;
      Barcode.BarcodeCopy;
    finally
      Barcode.Free;
    end;
    try
      QRImage1.Picture.Assign(Clipboard);
    except
      ShowMessage('Erro capturando Clipboard');
    end;
    {Linha Digitavel}
    DVCampo1 := Modulo10(Banco + '9' + CodigoCarteira + Agencia);
    Campo1 := Banco + '9' + CodigoCarteira + Agencia + DVCampo1;
    DVCampo2 := Modulo10(Copy(CampoLivre, 1, 10));
    Campo2 := Copy(CampoLivre, 1, 10) + DVCampo2;
    DVCampo3 := Modulo10(Copy(CampoLivre, 11, 10));
    Campo3 := Copy(CampoLivre, 11, 10) + DVCampo3;
    LabelNumeroDigitavel3.Caption :=
      Copy(Campo1, 1, 5) + '.' + Copy(Campo1, 6, 5) + ' ' +
      Copy(Campo2, 1, 5) + '.' + Copy(Campo2, 6, 6) + ' ' +
      Copy(Campo3, 1, 5) + '.' + Copy(Campo3, 6, 6) + ' ' +
      DVBarras;
    LabelNumeroDigitavel2.Caption := LabelNumeroDigitavel3.Caption;
    LabelNumeroDigitavel1.Caption := LabelNumeroDigitavel3.Caption;
    LabelValorNumeroDigitavel3.Caption := IntToStr(StrToInt(ValorInt+ValorFrac));
    LabelValorNumeroDigitavel2.Caption := LabelValorNumeroDigitavel3.Caption;
    LabelValorNumeroDigitavel1.Caption := LabelValorNumeroDigitavel3.Caption;
    {Agência / Código Cedente}
    LabelAgenciaCedente3.Caption := Agencia + ' / ' + DocImpr.FieldByName('CodigoCedente').AsString;
    LabelAgenciaCedente2.Caption := LabelAgenciaCedente3.Caption;
    LabelAgenciaCedente1.Caption := LabelAgenciaCedente3.Caption;
  except
    on E : Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TBoleta.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  Value := Right(Value, Length(Value) - 2);
end;

procedure TBoleta.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  Value := Copy(Value, 1, 2) + '.' + Copy(Value, 3, 3) + '-' + Copy(Value, 6, 3);
end;

end.

{=============================================================================================
ESTE É SOMENTE UM EXEMPLO QUE NÃO PODE SER USADO SEM ALTERAÇÕES DE ACORDO COM AS NORMAS E
PADRÕES ADOTADOS POR CADA BANCO, QUE PODE SE DIFERENCIAR DE BANCA PARA BANCO.
=============================================================================================}
