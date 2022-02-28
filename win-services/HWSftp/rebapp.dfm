object HWSsfftp: THWSsfftp
  OldCreateOrder = False
  DisplayName = 'HWSsfftpII'
  Left = 537
  Top = 202
  Height = 668
  Width = 506
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 176
    Top = 24
  end
  object TimerINI: TTimer
    Interval = 2000
    OnTimer = TimerINITimer
    Left = 40
    Top = 16
  end
  object IdFTPServer1: TIdFTPServer
    OnStatus = IdFTPServer1Status
    Bindings = <>
    CommandHandlers = <
      item
        CmdDelimiter = ' '
        Command = 'XCRC'
        Disconnect = False
        Name = 'TIdCommandHandler0'
        OnCommand = IdFTPServer1TIdCommandHandler0Command
        ParamDelimiter = ' '
        ReplyExceptionCode = 0
        ReplyNormal.NumericCode = 0
        Tag = 0
      end>
    DefaultPort = 21
    Greeting.NumericCode = 220
    Greeting.Text.Strings = (
      'HWS FTP Server.')
    Greeting.TextCode = '220'
    MaxConnectionReply.NumericCode = 0
    MaxConnections = 500
    OnConnect = IdFTPServer1Connect
    OnExecute = IdFTPServer1Execute
    OnDisconnect = IdFTPServer1Disconnect
    OnException = IdFTPServer1Exception
    OnListenException = IdFTPServer1ListenException
    OnNoCommandHandler = IdFTPServer1NoCommandHandler
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 500
    ReplyUnknownCommand.Text.Strings = (
      'Comando inv'#225'lido.')
    ReplyUnknownCommand.TextCode = '500'
    AnonymousAccounts.Strings = (
      'anonymous'
      'ftp'
      'guest')
    AnonymousPassStrictCheck = False
    EmulateSystem = ftpsUNIX
    HelpReply.Strings = (
      'http://www.hws.com.br/')
    SystemType = 'WIN32'
    OnChangeDirectory = IdFTPServer1ChangeDirectory
    OnGetCustomListFormat = IdFTPServer1GetCustomListFormat
    OnGetFileSize = IdFTPServer1GetFileSize
    OnUserLogin = IdFTPServer1UserLogin
    OnListDirectory = IdFTPServer1ListDirectory
    OnRenameFile = IdFTPServer1RenameFile
    OnDeleteFile = IdFTPServer1DeleteFile
    OnRetrieveFile = IdFTPServer1RetrieveFile
    OnStoreFile = IdFTPServer1StoreFile
    OnMakeDirectory = IdFTPServer1MakeDirectory
    OnRemoveDirectory = IdFTPServer1RemoveDirectory
    Left = 272
    Top = 24
  end
end
