unit uabertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxGIF, ExtCtrls, StdCtrls, ComCtrls;

type
  Tabertura = class(TForm)
    Image1: TImage;
    Progressloading: TProgressBar;
    lbloading: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  abertura: Tabertura;

implementation

{$R *.dfm}

procedure Tabertura.FormCreate(Sender: TObject);
begin
      Brush.Style := BsClear;
end;

end.
