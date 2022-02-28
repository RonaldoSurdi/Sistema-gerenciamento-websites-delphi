object dm2: Tdm2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 360
  Top = 267
  Height = 441
  Width = 646
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
    Left = 360
    Top = 16
  end
  object source_sql7: TDataSource
    DataSet = ds_sql7
    Left = 360
    Top = 64
  end
  object source_sql8: TDataSource
    DataSet = ds_sql8
    Left = 360
    Top = 112
  end
  object source_sql9: TDataSource
    DataSet = ds_sql9
    Left = 360
    Top = 160
  end
  object source_sql10: TDataSource
    DataSet = ds_sql10
    Left = 360
    Top = 208
  end
  object source_sql11: TDataSource
    DataSet = ds_sql11
    Left = 360
    Top = 264
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
    Left = 288
    Top = 16
  end
  object ds_sql7: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql7'
    RemoteServer = HWSconnection
    Left = 288
    Top = 64
  end
  object ds_sql8: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql8'
    RemoteServer = HWSconnection
    Left = 288
    Top = 112
  end
  object ds_sql9: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql9'
    RemoteServer = HWSconnection
    Left = 288
    Top = 160
  end
  object ds_sql10: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql10'
    RemoteServer = HWSconnection
    Left = 288
    Top = 208
  end
  object ds_sql11: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xds_sql11'
    RemoteServer = HWSconnection
    Left = 288
    Top = 264
  end
  object executa: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta'
    RemoteServer = HWSconnection
    Left = 488
    Top = 24
  end
  object executa2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta2'
    RemoteServer = HWSconnection
    Left = 488
    Top = 80
  end
  object executa3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta3'
    RemoteServer = HWSconnection
    Left = 488
    Top = 144
  end
  object executa4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'xexecuta4'
    RemoteServer = HWSconnection
    Left = 488
    Top = 200
  end
  object executa5: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta5'
    RemoteServer = HWSconnection
    Left = 568
    Top = 24
  end
  object executa6: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta6'
    RemoteServer = HWSconnection
    Left = 568
    Top = 80
  end
  object executa7: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta7'
    RemoteServer = HWSconnection
    Left = 568
    Top = 136
  end
  object executa8: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    DisableStringTrim = True
    Params = <>
    ProviderName = 'xexecuta8'
    RemoteServer = HWSconnection
    Left = 568
    Top = 200
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
    HTTPWebNode.OnPostingData = HWSconnectionAppHTTPWebNode1PostingData
    HTTPWebNode.OnReceivingData = HWSconnectionAppHTTPWebNode1ReceivingData
    Converter.Options = [soSendMultiRefObj, soTryAllSchema]
    Left = 48
    Top = 304
  end
end
