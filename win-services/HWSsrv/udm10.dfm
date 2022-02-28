object dm10: Tdm10
  OldCreateOrder = False
  Left = 649
  Top = 287
  Height = 340
  Width = 364
  object executabin: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 120
    Top = 24
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
    Left = 40
    Top = 24
  end
  object SQLquery: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 40
    Top = 96
  end
  object executaconf: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = HWSconnection
    Left = 120
    Top = 96
  end
end
