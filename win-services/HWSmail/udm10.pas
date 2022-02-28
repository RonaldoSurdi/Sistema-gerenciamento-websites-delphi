unit udm10;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, SqlExpr, DB, DBClient;

type
  Tdm10 = class(TDataModule)
    executabin: TSQLDataSet;
    HWSconnection: TSQLConnection;
    SQLquery: TSQLDataSet;
    executaconf: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm10: Tdm10;

implementation

{$R *.dfm}

end.
