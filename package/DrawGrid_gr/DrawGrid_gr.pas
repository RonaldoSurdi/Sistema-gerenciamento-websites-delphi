unit DrawGrid_gr;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Grids, Graphics, Forms, Dialogs;

type
  TDrawCellEvent_gr = procedure (Sender: TObject; ACol, ARow: Longint;
    Rect: TRect; State: TGridDrawState) of object;

  TDrawGrid_gr = class(TDrawGrid)
  private
    FOnDrawCell_gr: TDrawCellEvent_gr;
    { Private declarations }
  protected
    { Protected declarations }
    procedure DrawCell_gr(Sender: TObject; ACol, ARow: Integer;
              Rect: TRect; State: TGridDrawState);
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
    destructor Destroy;override;
  published
    property Columns stored False; //StoreColumns;
    property OnDrawCell_gr: TDrawCellEvent_gr read FOnDrawCell_gr write FOnDrawCell_gr;
    //property bt_mais: TBitmap read GetGlyph write SetGlyph;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('HWS', [TDrawGrid_gr]);
end;

constructor TDrawGrid_gr.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDrawGrid_gr.Destroy;
begin
   inherited Destroy;
end;

procedure TDrawGrid_gr.DrawCell_gr(Sender: TObject; ACol, ARow: Integer;
                       Rect: TRect; State: TGridDrawState);
begin
//
end;

end.
