object HWSsfMail: THWSsfMail
  OldCreateOrder = False
  DisplayName = 'HWSsfMail'
  Left = 792
  Top = 138
  Height = 624
  Width = 507
  object TimerGetMsg: TTimer
    Enabled = False
    Interval = 180000
    OnTimer = TimerGetMsgTimer
    Left = 24
    Top = 80
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 104
    Top = 24
  end
  object TimerINI: TTimer
    Interval = 10000
    OnTimer = TimerINITimer
    Left = 24
    Top = 24
  end
  object executabinTB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 304
  end
  object HWSconnection: TSQLConnection
    ConnectionName = 'MySQL40Connection'
    DriverName = 'MySQL40'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbexpmysql40.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL40'
      'HostName=177.54.155.9'
      'Database=hwsdb25'
      'User_Name=Fd37jK09fHfd34'
      'Password=38aaDJ9EKFds739skHhLPfIljpQ'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000')
    VendorLib = 'libmysql40.dll'
    Left = 104
    Top = 80
  end
  object SQLqueryTB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 352
  end
  object SQLquery2TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 400
  end
  object smtpHWS: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 5000
    Port = 587
    AuthenticationType = atLogin
    MailAgent = 'HWSmail'
    Left = 24
    Top = 152
  end
  object MessageHWS: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CharSet = 'iso-8859-1'
    CCList = <>
    ContentType = 'text/html'
    Encoding = meMIME
    Organization = 'HWS Web Solution'
    Recipients = <>
    ReplyTo = <>
    Left = 104
    Top = 152
  end
  object SQLqueryEX: TDataSetProvider
    DataSet = SQLqueryTB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 352
  end
  object SQLqueryEX2: TDataSetProvider
    DataSet = SQLquery2TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 400
  end
  object executabinEX: TDataSetProvider
    DataSet = executabinTB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 304
  end
  object executabin: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'executabinEX'
    Left = 424
    Top = 304
  end
  object SQLquery: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX'
    Left = 424
    Top = 352
  end
  object SQLquery2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX2'
    Left = 424
    Top = 400
  end
  object SQLquery3TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 448
  end
  object SQLqueryEX3: TDataSetProvider
    DataSet = SQLquery3TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 448
  end
  object SQLquery3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX3'
    Left = 424
    Top = 448
  end
  object SQLDataSet1: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 8
  end
  object executaNavBin1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 424
    Top = 8
  end
  object SQLDataSet2: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 56
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 56
  end
  object executaNavBin2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 424
    Top = 56
  end
  object SQLDataSet3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 104
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 104
  end
  object executaNavBin3: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DataSetProvider3'
    Left = 424
    Top = 104
  end
  object SQLDataSet4: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 152
  end
  object DataSetProvider4: TDataSetProvider
    DataSet = SQLDataSet4
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 152
  end
  object executaNavBin4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DataSetProvider4'
    Left = 424
    Top = 152
  end
  object SQLDataSet5: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 200
  end
  object DataSetProvider5: TDataSetProvider
    DataSet = SQLDataSet5
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 200
  end
  object executaNavBin5: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DataSetProvider5'
    Left = 424
    Top = 200
  end
  object SQLDataSet6: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 248
  end
  object DataSetProvider6: TDataSetProvider
    DataSet = SQLDataSet6
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 248
  end
  object executaNavBin6: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DataSetProvider6'
    Left = 424
    Top = 248
  end
  object SQLquery4TB: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 240
    Top = 504
  end
  object SQLqueryEX4: TDataSetProvider
    DataSet = SQLquery4TB
    Options = [poAllowMultiRecordUpdates, poAllowCommandText]
    Left = 330
    Top = 504
  end
  object SQLquery4: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    AutoCalcFields = False
    Params = <>
    ProviderName = 'SQLqueryEX4'
    Left = 424
    Top = 504
  end
end
