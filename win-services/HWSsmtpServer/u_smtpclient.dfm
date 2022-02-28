object Form2: TForm2
  Left = 435
  Top = 124
  Width = 1088
  Height = 563
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 776
    Top = 40
    Width = 265
    Height = 441
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object smtpHWS: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 5000
    Host = 'smtp.hwshost.com.br'
    Port = 26
    AuthenticationType = atLogin
    MailAgent = 'HWSmail'
    HeloName = 'www.hwshost.com.br'
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
    Left = 56
    Top = 152
  end
end
