Unit uHWSdb;

interface

uses SysUtils, Classes, InvokeRegistry, Midas, SOAPMidas, SOAPDm, FMTBcd,
  DBXpress, DB, SqlExpr, Provider, DBClient, SimpleDS;

type
  IHWSappdb = interface(IAppServerSOAP)
    ['{45865876-8E68-4B2D-BAD2-F5719B39DD12}']
  end;

  THWSappdb = class(TSoapDataModule, IHWSappdb, IAppServerSOAP, IAppServer)
    ds_sql2: TSQLDataSet;
    xds_sql2: TDataSetProvider;
    xds_sql: TDataSetProvider;
    ds_sql1: TSQLDataSet;
    HWSconnection: TSQLConnection;
    ds_sql4: TSQLDataSet;
    xds_sql4: TDataSetProvider;
    xds_sql3: TDataSetProvider;
    ds_sql3: TSQLDataSet;
    ds_sql6: TSQLDataSet;
    xds_sql6: TDataSetProvider;
    xds_sql5: TDataSetProvider;
    ds_sql5: TSQLDataSet;
    ds_sql8: TSQLDataSet;
    xds_sql8: TDataSetProvider;
    xds_sql7: TDataSetProvider;
    ds_sql7: TSQLDataSet;
    ds_sql10: TSQLDataSet;
    xds_sql10: TDataSetProvider;
    xds_sql9: TDataSetProvider;
    ds_sql9: TSQLDataSet;
    xds_sql12: TDataSetProvider;
    xds_sql11: TDataSetProvider;
    ds_sql14: TSQLDataSet;
    xds_sql14: TDataSetProvider;
    xds_sql13: TDataSetProvider;
    ds_sql13: TSQLDataSet;
    ds_sql16: TSQLDataSet;
    xds_sql16: TDataSetProvider;
    xds_sql15: TDataSetProvider;
    ds_sql15: TSQLDataSet;
    executa2: TSQLDataSet;
    xexecuta2: TDataSetProvider;
    xexecuta: TDataSetProvider;
    executa: TSQLDataSet;
    executa4: TSQLDataSet;
    xexecuta4: TDataSetProvider;
    xexecuta3: TDataSetProvider;
    executa3: TSQLDataSet;
    executa6: TSQLDataSet;
    xexecuta6: TDataSetProvider;
    xexecuta5: TDataSetProvider;
    executa5: TSQLDataSet;
    executa8: TSQLDataSet;
    xexecuta8: TDataSetProvider;
    xexecuta7: TDataSetProvider;
    executa7: TSQLDataSet;
    ds_sql11: TSQLDataSet;
    ds_sql12: TSQLDataSet;
  private
  
  public

  end;

implementation

{$R *.DFM}

procedure THWSappdbCreateInstance(out obj: TObject);
begin
 obj := THWSappdb.Create(nil);
end;

initialization
   InvRegistry.RegisterInvokableClass(THWSappdb, THWSappdbCreateInstance);
   InvRegistry.RegisterInterface(TypeInfo(IHWSappdb));
end.
