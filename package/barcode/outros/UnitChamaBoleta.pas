unit UnitChamaBoleta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TChamaBoleta = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChamaBoleta: TChamaBoleta;

implementation

uses UnitBoleta;

{$R *.DFM}

procedure TChamaBoleta.Button1Click(Sender: TObject);
var F : TBoleta;
begin
  try
    F := TBoleta.Create(Self);
    F.DocImpr.Open;
    case TComponent(Sender).Tag of
      0 : F.QR.PreviewModal;
      1 : F.QR.Print;
    end;
  finally
    F.DocImpr.Close;
    F.Free;
  end;
end;

end.
