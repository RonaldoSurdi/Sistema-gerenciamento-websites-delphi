unit HWSwsFnSrv;

interface

uses
  InvokeRegistry, Types, XSBuiltIns;

type
  IHWSappdb = interface(IInvokable)
    ['{45865876-8E68-4B2D-BAD2-F5719B39DD12}']
    {ds_sql2: TSQLDataSet;stdcall;
    xds_sql2: TDataSetProvider;stdcall;
    xds_sql: TDataSetProvider;stdcall;
    ds_sql1: TSQLDataSet;stdcall;
    HWSconnection: TSQLConnection;stdcall;
    ds_sql4: TSQLDataSet;stdcall;
    xds_sql4: TDataSetProvider;stdcall;
    xds_sql3: TDataSetProvider;stdcall;
    ds_sql3: TSQLDataSet;stdcall;
    ds_sql6: TSQLDataSet;stdcall;
    xds_sql6: TDataSetProvider;stdcall;
    xds_sql5: TDataSetProvider;stdcall;
    ds_sql5: TSQLDataSet;stdcall;
    ds_sql8: TSQLDataSet;stdcall;
    xds_sql8: TDataSetProvider;stdcall;
    xds_sql7: TDataSetProvider;stdcall;
    ds_sql7: TSQLDataSet;stdcall;
    ds_sql10: TSQLDataSet;stdcall;
    xds_sql10: TDataSetProvider;stdcall;
    xds_sql9: TDataSetProvider;stdcall;
    ds_sql9: TSQLDataSet;stdcall;
    xds_sql12: TDataSetProvider;stdcall;
    xds_sql11: TDataSetProvider;stdcall;
    ds_sql14: TSQLDataSet;stdcall;
    xds_sql14: TDataSetProvider;stdcall;
    xds_sql13: TDataSetProvider;stdcall;
    ds_sql13: TSQLDataSet;stdcall;
    ds_sql16: TSQLDataSet;stdcall;
    xds_sql16: TDataSetProvider;stdcall;
    xds_sql15: TDataSetProvider;stdcall;
    ds_sql15: TSQLDataSet;stdcall;
    executa2: TSQLDataSet;stdcall;
    xexecuta2: TDataSetProvider;stdcall;
    xexecuta: TDataSetProvider;stdcall;
    executa: TSQLDataSet;stdcall;
    executa4: TSQLDataSet;stdcall;
    xexecuta4: TDataSetProvider;stdcall;
    xexecuta3: TDataSetProvider;stdcall;
    executa3: TSQLDataSet;stdcall;
    executa6: TSQLDataSet;stdcall;
    xexecuta6: TDataSetProvider;stdcall;
    xexecuta5: TDataSetProvider;stdcall;
    executa5: TSQLDataSet;stdcall;
    executa8: TSQLDataSet;stdcall;
    xexecuta8: TDataSetProvider;stdcall;
    xexecuta7: TDataSetProvider;stdcall;
    executa7: TSQLDataSet;stdcall;
    ds_sql11: TSQLDataSet;stdcall;
    ds_sql12: TSQLDataSet;stdcall;    }
  end;

implementation

initialization
  //InvRegistry.RegisterInterface(TypeInfo(IHWSwsFnApp), '', '');
  InvRegistry.RegisterInterface(TypeInfo(IHWSappdb));

end.
