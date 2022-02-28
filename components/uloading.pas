{###############################################################################
Programa: Loading
Módulo: Form de inicialização e processamendo.
Data: 27 de setembro de 2004.
By HWS Web Solutions

Relatório de acessos:
27/09/2004 - Ronaldo Surdi //Codigicação do módulo.
###############################################################################}

unit uloading;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls;

type
  Tfloading = class(TForm)
    pn_tit: TPanel;
    Image3: TImage;
    Progressloading: TProgressBar;
    lbloading: TLabel;
    Progressloading2: TProgressBar;
    logosoft: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  floading: Tfloading;

implementation

{$R *.dfm}
uses hwsfunctions, Math;

procedure Tfloading.FormCreate(Sender: TObject);
begin
      Image3.Picture.Bitmap:= GetImg(1);
      logosoft.Picture.Bitmap:= hwsf.HiconToBitmap;
end;

procedure Tfloading.FormShow(Sender: TObject);
begin
      if Progressloading2.Visible then Progressloading.Height:=10
      else Progressloading.Height:=20;
end;

end.




