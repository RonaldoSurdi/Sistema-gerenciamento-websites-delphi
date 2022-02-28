object Form1: TForm1
  Left = 348
  Top = 190
  Width = 870
  Height = 640
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
    Left = 24
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 312
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 48
    Top = 264
    Width = 681
    Height = 313
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 512
    Top = 40
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object TimerPing: TTimer
    Interval = 3000
    OnTimer = TimerPingTimer
    Left = 176
    Top = 80
  end
  object ICMP: TIdIcmpClient
    Host = 'www.hws.com.br'
    Port = 80
    ReceiveTimeout = 1000
    OnReply = ICMPReply
    Left = 56
    Top = 160
  end
  object IdSocksInfo1: TIdSocksInfo
    Left = 120
    Top = 88
  end
  object IdAntiFreeze1: TIdAntiFreeze
    ApplicationHasPriority = False
    OnlyWhenIdle = False
    Left = 152
    Top = 136
  end
end
