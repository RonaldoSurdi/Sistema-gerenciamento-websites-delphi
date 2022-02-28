object Form1: TForm1
  Left = 192
  Top = 124
  Width = 1088
  Height = 563
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 416
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 72
    Top = 432
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 72
    Top = 448
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object ToLabel: TLabel
    Left = 72
    Top = 320
    Width = 39
    Height = 13
    Caption = 'ToLabel'
  end
  object FromLabel: TLabel
    Left = 72
    Top = 352
    Width = 49
    Height = 13
    Caption = 'FromLabel'
  end
  object SubjectLabel: TLabel
    Left = 72
    Top = 384
    Width = 62
    Height = 13
    Caption = 'SubjectLabel'
  end
  object Label4: TLabel
    Left = 72
    Top = 464
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Memo1: TMemo
    Left = 192
    Top = 32
    Width = 345
    Height = 217
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 192
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object IdSMTPServer1: TIdSMTPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 26
    Greeting.NumericCode = 220
    Greeting.Text.Strings = (
      'Welcome to the INDY SMTP Server')
    Greeting.TextCode = '220'
    MaxConnectionReply.NumericCode = 0
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 500
    ReplyUnknownCommand.Text.Strings = (
      'Syntax Error')
    ReplyUnknownCommand.TextCode = '500'
    AuthMode = True
    Messages.NoopReply = 'Ok'
    Messages.RSetReply = 'Ok'
    Messages.QuitReply = 'Signing Off'
    Messages.ErrorReply = 'Syntax Error - Command not understood: %s'
    Messages.XServer = 'Indy SMTP Server'
    Messages.ReceivedHeader = 'by DNSName [127.0.0.1] running Indy SMTP'
    Messages.SyntaxErrorReply = 'Syntax Error - Command not understood: %s'
    Messages.Greeting.EHLONotSupported = 'Command Not Recognised'
    Messages.Greeting.HelloReply = 'Hello %s'
    Messages.Greeting.NoHello = 'Polite people say HELO'
    Messages.Greeting.AuthFailed = 'Authentication Failed'
    Messages.Greeting.EHLOReply.Strings = (
      '250-MetalRender-PC'
      '250-AUTH LOGIN'
      '250 HELP')
    Messages.RcpReplies.AddressOkReply = '%s Address Okay'
    Messages.RcpReplies.AddressErrorReply = '%s Address Error'
    Messages.RcpReplies.AddressWillForwardReply = 'User not local, Will forward'
    Messages.DataReplies.StartDataReply = 'Start mail input; end with <CRLF>.<CRLF>'
    Messages.DataReplies.EndDataReply = 'Ok'
    OnReceiveRaw = IdSMTPServer1ReceiveRaw
    OnReceiveMessage = IdSMTPServer1ReceiveMessage
    OnReceiveMessageParsed = IdSMTPServer1ReceiveMessageParsed
    ReceiveMode = rmRaw
    AllowEHLO = True
    NoDecode = False
    NoEncode = False
    OnCommandRCPT = IdSMTPServer1CommandRCPT
    OnCommandMAIL = IdSMTPServer1CommandMAIL
    CheckUser = IdSMTPServer1CheckUser
    RawStreamType = stFileStream
    OnCommandHELP = IdSMTPServer1CommandHELP
    OnCommandSOML = IdSMTPServer1CommandSOML
    OnCommandSEND = IdSMTPServer1CommandSEND
    OnCommandSAML = IdSMTPServer1CommandSAML
    OnCommandVRFY = IdSMTPServer1CommandVRFY
    OnCommandTURN = IdSMTPServer1CommandTURN
    Left = 56
    Top = 64
  end
end
