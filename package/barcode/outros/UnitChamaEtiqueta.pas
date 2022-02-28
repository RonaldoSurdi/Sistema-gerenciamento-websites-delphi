unit UnitChamaEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TChamaEtiqueta = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChamaEtiqueta: TChamaEtiqueta;

implementation

uses UnitEtiqueta;

{$R *.DFM}

procedure TChamaEtiqueta.Button1Click(Sender: TObject);
var F : TEtiqueta;
begin
  try
    F := TEtiqueta.Create(Self);
    case TComponent(Sender).Tag of
      0 : F.QR.PreviewModal;
      1 : F.QR.Print;
    end;
  finally
    F.Free;
  end;
end;

end.
