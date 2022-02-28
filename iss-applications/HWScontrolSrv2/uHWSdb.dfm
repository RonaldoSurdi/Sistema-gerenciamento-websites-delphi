object HWSappdb: THWSappdb
  OldCreateOrder = False
  Left = 215
  Top = 195
  Height = 460
  Width = 694
  object ds_sql2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 64
  end
  object xds_sql2: TDataSetProvider
    DataSet = ds_sql2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 64
  end
  object xds_sql: TDataSetProvider
    DataSet = ds_sql1
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 16
  end
  object ds_sql1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 16
  end
  object HWSconnection: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbexpmysql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=201.76.40.136'
      'Database=hwsdb25'
      'User_Name=Fd37jK09fHfd34'
      'Password=38aaDJ9EKFds739skHhLPfIljpQ'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql.dll'
    Left = 32
    Top = 16
  end
  object ds_sql4: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 160
  end
  object xds_sql4: TDataSetProvider
    DataSet = ds_sql4
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 160
  end
  object xds_sql3: TDataSetProvider
    DataSet = ds_sql3
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 112
  end
  object ds_sql3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 112
  end
  object ds_sql6: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 258
  end
  object xds_sql6: TDataSetProvider
    DataSet = ds_sql6
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 258
  end
  object xds_sql5: TDataSetProvider
    DataSet = ds_sql5
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 210
  end
  object ds_sql5: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 210
  end
  object ds_sql8: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 354
  end
  object xds_sql8: TDataSetProvider
    DataSet = ds_sql8
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 354
  end
  object xds_sql7: TDataSetProvider
    DataSet = ds_sql7
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 192
    Top = 306
  end
  object ds_sql7: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 112
    Top = 306
  end
  object ds_sql10: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 64
  end
  object xds_sql10: TDataSetProvider
    DataSet = ds_sql10
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 64
  end
  object xds_sql9: TDataSetProvider
    DataSet = ds_sql9
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 16
  end
  object ds_sql9: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 16
  end
  object xds_sql12: TDataSetProvider
    DataSet = ds_sql12
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 160
  end
  object xds_sql11: TDataSetProvider
    DataSet = ds_sql11
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 112
  end
  object ds_sql14: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 258
  end
  object xds_sql14: TDataSetProvider
    DataSet = ds_sql14
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 258
  end
  object xds_sql13: TDataSetProvider
    DataSet = ds_sql13
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 210
  end
  object ds_sql13: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 210
  end
  object ds_sql16: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 354
  end
  object xds_sql16: TDataSetProvider
    DataSet = ds_sql16
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 354
  end
  object xds_sql15: TDataSetProvider
    DataSet = ds_sql15
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 360
    Top = 306
  end
  object ds_sql15: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 306
  end
  object executa2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 72
  end
  object xexecuta2: TDataSetProvider
    DataSet = executa2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 72
  end
  object xexecuta: TDataSetProvider
    DataSet = executa
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 24
  end
  object executa: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 24
  end
  object executa4: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 168
  end
  object xexecuta4: TDataSetProvider
    DataSet = executa4
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 168
  end
  object xexecuta3: TDataSetProvider
    DataSet = executa3
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 120
  end
  object executa3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 120
  end
  object executa6: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 266
  end
  object xexecuta6: TDataSetProvider
    DataSet = executa6
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 266
  end
  object xexecuta5: TDataSetProvider
    DataSet = executa5
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 218
  end
  object executa5: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 218
  end
  object executa8: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 362
  end
  object xexecuta8: TDataSetProvider
    DataSet = executa8
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 362
  end
  object xexecuta7: TDataSetProvider
    DataSet = executa7
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 592
    Top = 314
  end
  object executa7: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 512
    Top = 314
  end
  object ds_sql11: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 112
  end
  object ds_sql12: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 280
    Top = 160
  end
end
