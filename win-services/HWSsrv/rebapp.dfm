object HWSsfsrv: THWSsfsrv
  OldCreateOrder = False
  DisplayName = 'HWSsfsrv'
  Left = 537
  Top = 202
  Height = 668
  Width = 506
  object Timermn: TTimer
    Interval = 121000
    OnTimer = TimermnTimer
    Left = 40
    Top = 72
  end
  object TimerUSRonline: TTimer
    Interval = 3725000
    OnTimer = TimerUSRonlineTimer
    Left = 40
    Top = 280
  end
  object TimerConf: TTimer
    Interval = 73000
    OnTimer = TimerConfTimer
    Left = 40
    Top = 136
  end
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
  object TimerUSRsac: TTimer
    Interval = 195000
    OnTimer = TimerUSRsacTimer
    Left = 40
    Top = 208
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
    Top = 408
  end
  object SQLquery2TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 464
  end
  object SQLqueryEX: TDataSetProvider
    DataSet = SQLqueryTB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 408
  end
  object SQLqueryEX2: TDataSetProvider
    DataSet = SQLquery2TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 464
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
    Top = 408
  end
  object SQLquery2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX2'
    Left = 328
    Top = 464
  end
  object executabin2TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 224
  end
  object executabin2EX: TDataSetProvider
    DataSet = executabin2TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 224
  end
  object executabin2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'executabin2EX'
    Left = 328
    Top = 224
  end
  object executabin3TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 288
  end
  object executabin3EX: TDataSetProvider
    DataSet = executabin3TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 288
  end
  object executabin3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'executabin3EX'
    Left = 328
    Top = 288
  end
  object TimerUSRAtendimt: TTimer
    Interval = 210000
    OnTimer = TimerUSRAtendimtTimer
    Left = 40
    Top = 344
  end
  object executabin4TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 176
    Top = 352
  end
  object executabin4EX: TDataSetProvider
    DataSet = executabin4TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 256
    Top = 352
  end
  object executabin4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'executabin4EX'
    Left = 328
    Top = 352
  end
end
