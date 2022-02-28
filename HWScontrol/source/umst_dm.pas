unit umst_dm;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, SqlExpr, DB, DBClient, SimpleDS;

type
  Tmsdm = class(TDataModule)
    mstconnector: TSQLConnection;
    mstq1: TSQLQuery;
    mstds1: TSimpleDataSet;
    ds1: TDataSource;
    mstds2: TSimpleDataSet;
    ds2: TDataSource;
    mstds3: TSimpleDataSet;
    ds3: TDataSource;
    mstds4: TSimpleDataSet;
    ds4: TDataSource;
    mstds5: TSimpleDataSet;
    ds5: TDataSource;
    mstds6: TSimpleDataSet;
    ds6: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  msdm: Tmsdm;

implementation

{$R *.dfm}

end.
