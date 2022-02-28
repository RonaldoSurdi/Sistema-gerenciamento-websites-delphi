object HWSsffileServer: THWSsffileServer
  OldCreateOrder = False
  DisplayName = 'HWSfileServer'
  Left = 556
  Top = 232
  Height = 386
  Width = 425
  object ApplicationEvents1: TApplicationEvents
    Left = 176
    Top = 24
  end
  object TimerINI: TTimer
    Interval = 2000
    OnTimer = TimerINITimer
    Left = 40
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
      'HostName=localhost'
      'Database=hwsdb25'
      'User_Name=Fd37jK09fHfd34'
      'Password=38aaDJ9EKFds739skHhLPfIljpQ'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql.dll'
    Left = 176
    Top = 96
  end
  object executabinTB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 160
  end
  object SQLqueryTB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 216
  end
  object SQLqueryEX: TDataSetProvider
    DataSet = SQLqueryTB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 216
  end
  object executabinEX: TDataSetProvider
    DataSet = executabinTB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 160
  end
  object executabin: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'executabinEX'
    Left = 328
    Top = 160
  end
  object SQLquery: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX'
    Left = 328
    Top = 216
  end
  object TimerZipFiles: TTimer
    Interval = 60000
    OnTimer = TimerZipFilesTimer
    Left = 40
    Top = 80
  end
  object SQLquery2TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 272
  end
  object SQLqueryEX2: TDataSetProvider
    DataSet = SQLquery2TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 272
  end
  object SQLquery2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX2'
    Left = 328
    Top = 272
  end
end
