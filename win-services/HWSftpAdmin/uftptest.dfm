object Form5: TForm5
  Left = 522
  Top = 257
  Width = 629
  Height = 496
  Caption = 'Testar Servidor FTP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 439
    Width = 613
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 613
    Height = 65
    ButtonHeight = 57
    Caption = 'ToolBar1'
    TabOrder = 1
    object Button1: TButton
      Left = 0
      Top = 2
      Width = 157
      Height = 57
      Caption = 'Ativar Servidor'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 157
      Top = 2
      Width = 157
      Height = 57
      Caption = 'Desativar Servidor'
      Enabled = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 65
    Width = 613
    Height = 374
    Align = alClient
    Caption = 'Status:'
    TabOrder = 2
    object RichEdit1: TRichEdit
      Left = 2
      Top = 15
      Width = 609
      Height = 357
      Align = alClient
      ScrollBars = ssBoth
      TabOrder = 0
    end
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
    Left = 416
    Top = 8
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 376
    Top = 8
  end
end
