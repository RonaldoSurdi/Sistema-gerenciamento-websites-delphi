unit UnitEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, DBTables, Db, Barcode;

type
  TEtiqueta = class(TForm)
    QR: TQuickRep;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    Barcode1: TBarcode;
    procedure QRNeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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

procedure TEtiqueta.QRNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  Tag := Tag + 1;
  MoreData := Tag <= 39;
end;

procedure TEtiqueta.QRBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Tag := 0;
end;

procedure TEtiqueta.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Barcode1.Digits := StrZero(IntToStr(Tag), 10);
  Barcode1.BarcodeCopy;
  QRImage1.Picture.Assign(Clipboard);
end;

end.

