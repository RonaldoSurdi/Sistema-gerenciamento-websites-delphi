object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 37
  Top = 33
  Height = 619
  Width = 958
  object conecta_int: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbexpmysql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName='
      'Database='
      'User_Name='
      'Password='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql.dll'
    Left = 472
    Top = 7
  end
  object source_int: TDataSource
    DataSet = ds_int
    Left = 635
    Top = 53
  end
  object source_int3: TDataSource
    DataSet = ds_int3
    Left = 635
    Top = 151
  end
  object source_int4: TDataSource
    DataSet = ds_int4
    Left = 635
    Top = 203
  end
  object source_int5: TDataSource
    DataSet = ds_int5
    Left = 635
    Top = 255
  end
  object source_int2: TDataSource
    DataSet = ds_int2
    Left = 635
    Top = 103
  end
  object xdt_ds_int: TDataSetProvider
    DataSet = xds_int
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 528
    Top = 55
  end
  object ds_int: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_ds_int'
    Left = 584
    Top = 55
  end
  object xds_int: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 472
    Top = 55
  end
  object xdt_ds_int2: TDataSetProvider
    DataSet = xds_int2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 528
    Top = 103
  end
  object ds_int2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_ds_int2'
    Left = 584
    Top = 103
  end
  object xds_int2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 472
    Top = 103
  end
  object xdt_ds_int3: TDataSetProvider
    DataSet = xds_int3
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 528
    Top = 151
  end
  object ds_int3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_ds_int3'
    Left = 584
    Top = 151
  end
  object xds_int3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 472
    Top = 151
  end
  object xdt_ds_int4: TDataSetProvider
    DataSet = xds_int4
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 528
    Top = 203
  end
  object ds_int4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_ds_int4'
    Left = 584
    Top = 205
  end
  object xds_int4: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 472
    Top = 203
  end
  object xdt_ds_int5: TDataSetProvider
    DataSet = xds_int5
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 528
    Top = 255
  end
  object ds_int5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_ds_int5'
    Left = 584
    Top = 255
  end
  object xds_int5: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 472
    Top = 255
  end
  object xdt_executa_int: TDataSetProvider
    DataSet = xexecuta_int
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 12
  end
  object executa_int: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int'
    Left = 872
    Top = 12
  end
  object xexecuta_int: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 12
  end
  object xdt_executa_int2: TDataSetProvider
    DataSet = xexecuta_int2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 60
  end
  object executa_int2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int2'
    Left = 872
    Top = 60
  end
  object xexecuta_int2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 60
  end
  object xdt_executa_int3: TDataSetProvider
    DataSet = xexecuta_int3
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 108
  end
  object executa_int3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int3'
    Left = 872
    Top = 108
  end
  object xexecuta_int3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 108
  end
  object xdt_executa_int4: TDataSetProvider
    DataSet = xexecuta_int4
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 160
  end
  object executa_int4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int4'
    Left = 872
    Top = 160
  end
  object xexecuta_int4: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 160
  end
  object xdt_executa_int5: TDataSetProvider
    DataSet = xexecuta_int5
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 212
  end
  object executa_int5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int5'
    Left = 872
    Top = 212
  end
  object xexecuta_int5: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 212
  end
  object xdt_executa_int6: TDataSetProvider
    DataSet = xexecuta_int6
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 260
  end
  object executa_int6: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int6'
    Left = 872
    Top = 260
  end
  object xexecuta_int6: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 260
  end
  object xdt_executa_int7: TDataSetProvider
    DataSet = xexecuta_int7
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 308
  end
  object executa_int7: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int7'
    Left = 872
    Top = 308
  end
  object xexecuta_int7: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 308
  end
  object xdt_executa_int8: TDataSetProvider
    DataSet = xexecuta_int8
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 792
    Top = 360
  end
  object executa_int8: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'xdt_executa_int8'
    Left = 872
    Top = 360
  end
  object xexecuta_int8: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 360
  end
  object executabin_int: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conecta_int
    Left = 712
    Top = 416
  end
  object source_sql: TDataSource
    DataSet = ds_sql
    Left = 192
    Top = 16
  end
  object source_sql3: TDataSource
    DataSet = ds_sql3
    Left = 192
    Top = 112
  end
  object source_sql4: TDataSource
    DataSet = ds_sql4
    Left = 192
    Top = 160
  end
  object source_sql5: TDataSource
    DataSet = ds_sql5
    Left = 192
    Top = 208
  end
  object source_sql2: TDataSource
    DataSet = ds_sql2
    Left = 192
    Top = 64
  end
  object source_sql6: TDataSource
    DataSet = ds_sql6
    Left = 192
    Top = 256
  end
  object source_sql7: TDataSource
    DataSet = ds_sql7
    Left = 192
    Top = 304
  end
  object source_sql8: TDataSource
    DataSet = ds_sql8
    Left = 192
    Top = 352
  end
  object source_sql9: TDataSource
    DataSet = ds_sql9
    Left = 192
    Top = 400
  end
  object source_sql10: TDataSource
    DataSet = ds_sql10
    Left = 192
    Top = 448
  end
  object source_sql11: TDataSource
    DataSet = ds_sql11
    Left = 192
    Top = 504
  end
  object ds_sql: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql'
    RemoteServer = HWSconnection
    Left = 120
    Top = 16
  end
  object ds_sql2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql2'
    RemoteServer = HWSconnection
    Left = 120
    Top = 64
  end
  object ds_sql3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql3'
    RemoteServer = HWSconnection
    Left = 120
    Top = 112
  end
  object ds_sql4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql4'
    RemoteServer = HWSconnection
    Left = 120
    Top = 160
  end
  object ds_sql5: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql5'
    RemoteServer = HWSconnection
    Left = 120
    Top = 208
  end
  object ds_sql6: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql6'
    RemoteServer = HWSconnection
    Left = 120
    Top = 256
  end
  object ds_sql7: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql7'
    RemoteServer = HWSconnection
    Left = 120
    Top = 304
  end
  object ds_sql8: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql8'
    RemoteServer = HWSconnection
    Left = 120
    Top = 352
  end
  object ds_sql9: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql9'
    RemoteServer = HWSconnection
    Left = 120
    Top = 400
  end
  object ds_sql10: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql10'
    RemoteServer = HWSconnection
    Left = 120
    Top = 448
  end
  object ds_sql11: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql11'
    RemoteServer = HWSconnection
    Left = 120
    Top = 504
  end
  object executa: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta'
    RemoteServer = HWSconnection
    Left = 296
    Top = 16
  end
  object executa2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta2'
    RemoteServer = HWSconnection
    Left = 296
    Top = 72
  end
  object executa3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta3'
    RemoteServer = HWSconnection
    Left = 296
    Top = 136
  end
  object executa4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta4'
    RemoteServer = HWSconnection
    Left = 296
    Top = 192
  end
  object executa5: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta5'
    RemoteServer = HWSconnection
    Left = 376
    Top = 16
  end
  object executa6: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta6'
    RemoteServer = HWSconnection
    Left = 376
    Top = 72
  end
  object executa7: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta7'
    RemoteServer = HWSconnection
    Left = 376
    Top = 128
  end
  object executa8: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta8'
    RemoteServer = HWSconnection
    Left = 376
    Top = 192
  end
  object HWSconnection: TSoapConnection
    SOAPServerIID = 'IAppServerSOAP - {C99F4735-D6D2-495C-8CA2-E53E5A439E61}'
    UseSOAPAdapter = True
    OnAfterExecute = HWSconnectionAfterExecute
    Left = 40
    Top = 16
  end
  object HWSconnectionApp: THTTPRIO
    OnAfterExecute = HWSconnectionAppAfterExecute
    HTTPWebNode.Agent = 'Borland SOAP 1.1'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema]
    Left = 40
    Top = 96
  end
end
