object msdm: Tmsdm
  OldCreateOrder = False
  Left = 630
  Top = 282
  Height = 456
  Width = 287
  object mstconnector: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbexpmysql.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=hwsfndwb'
      'User_Name=root'
      'Password=f397fjLFjf923JeIWXfl5a2cx3'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql.dll'
    Left = 40
    Top = 8
  end
  object mstq1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = mstconnector
    Left = 120
    Top = 8
  end
  object mstds1: TSimpleDataSet
    Aggregates = <>
    Connection = mstconnector
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 64
  end
  object ds1: TDataSource
    DataSet = mstds1
    Left = 112
    Top = 64
  end
  object mstds2: TSimpleDataSet
    Aggregates = <>
    Connection = mstconnector
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 120
  end
  object ds2: TDataSource
    DataSet = mstds2
    Left = 112
    Top = 120
  end
  object mstds3: TSimpleDataSet
    Aggregates = <>
    Connection = mstconnector
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 176
  end
  object ds3: TDataSource
    DataSet = mstds3
    Left = 112
    Top = 176
  end
  object mstds4: TSimpleDataSet
    Aggregates = <>
    Connection = mstconnector
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 232
  end
  object ds4: TDataSource
    DataSet = mstds4
    Left = 112
    Top = 232
  end
  object mstds5: TSimpleDataSet
    Aggregates = <>
    Connection = mstconnector
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 288
  end
  object ds5: TDataSource
    DataSet = mstds5
    Left = 112
    Top = 288
  end
  object mstds6: TSimpleDataSet
    Aggregates = <>
    Connection = mstconnector
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 40
    Top = 344
  end
  object ds6: TDataSource
    DataSet = mstds6
    Left = 112
    Top = 344
  end
end
