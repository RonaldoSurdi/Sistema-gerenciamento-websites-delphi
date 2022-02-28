object formFlash: TformFlash
  Left = 0
  Top = 0
  Width = 700
  Height = 428
  HorzScrollBar.Range = 737
  HorzScrollBar.Visible = False
  VertScrollBar.Range = 493
  VertScrollBar.Visible = False
  Background.Fixed = False
  HandleTabs = False
  Title = 'Features Demo'
  SupportedBrowsers = [brIE, brNetscape6]
  DesignLeft = 392
  DesignTop = 124
  object IWFlash1: TIWFlash
    Left = 224
    Top = 16
    Width = 468
    Height = 60
    Align = faNone
    ZIndex = 0
    AutoPlay = True
    BGColor = clNone
    EnableMenu = True
    FlashFile.Filename = 'W:\source\IntraWeb31\Demos\Delphi\Features\Files\intraweb.swf'
    Loop = True
    Quality = fqHigh
    SAlign = fsNone
    Scale = fsDefault
    SWLiveConnect = False
  end
  object IWURL1: TIWURL
    Left = 376
    Top = 80
    Width = 153
    Height = 17
    ZIndex = 0
    Caption = 'Click here for IntraWeb!'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TargetOptions.Height = 300
    TargetOptions.Left = 200
    TargetOptions.Resizable = True
    TargetOptions.Scrollbars = True
    TargetOptions.Toolbar = True
    TargetOptions.Top = 25
    TargetOptions.Width = 700
    TargetOptions.WindowName = 'IntraWeb'
    TerminateApp = False
    UseTarget = True
    URL = 'http://www.atozedsoftware.com/'
  end
  object IWText1: TIWText
    Left = 216
    Top = 112
    Width = 521
    Height = 17
    ZIndex = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Lines.Strings = (
      'Flash Demo Text')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  inline framMenu1: TframMenu
    Width = 203
    Height = 493
    Align = alLeft
  end
end
