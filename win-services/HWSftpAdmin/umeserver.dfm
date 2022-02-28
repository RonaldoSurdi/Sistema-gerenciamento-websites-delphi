object Form1: TForm1
  Left = 588
  Top = 216
  Width = 507
  Height = 482
  Caption = 'HWServer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit_log: TRichEdit
    Left = 0
    Top = 0
    Width = 491
    Height = 293
    Align = alClient
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 405
    Width = 491
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object GroupBox_monitor: TGroupBox
    Left = 0
    Top = 293
    Width = 491
    Height = 112
    Align = alBottom
    Caption = 'Status do Servidor:'
    TabOrder = 2
    Visible = False
    object Panel1: TPanel
      Left = 344
      Top = 15
      Width = 145
      Height = 95
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 75
        Top = 24
        Width = 60
        Height = 13
        Caption = 'milisegundos'
      end
      object Label2: TLabel
        Left = 75
        Top = 72
        Width = 58
        Height = 13
        Caption = '% mem. livre'
      end
      object Label3: TLabel
        Left = 10
        Top = 3
        Width = 56
        Height = 13
        Caption = 'Frequ'#234'ncia:'
      end
      object SpinEdit1: TSpinEdit
        Left = 8
        Top = 21
        Width = 62
        Height = 22
        Increment = 100
        MaxValue = 999999
        MinValue = 100
        TabOrder = 0
        Value = 500
      end
      object CheckBox2: TCheckBox
        Left = 9
        Top = 49
        Width = 73
        Height = 17
        Caption = 'Auto Reboot'
        TabOrder = 1
      end
      object SpinEdit2: TSpinEdit
        Left = 8
        Top = 67
        Width = 62
        Height = 22
        Increment = 5
        MaxValue = 100
        MinValue = 70
        TabOrder = 2
        Value = 95
      end
    end
    object GroupBox2: TGroupBox
      Left = 153
      Top = 15
      Width = 191
      Height = 95
      Align = alRight
      Caption = 'Mem'#243'ria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label5: TLabel
        Left = 101
        Top = 19
        Width = 72
        Height = 12
        Caption = 'mem. avaliada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object PhysMem: TLabel
        Left = 3
        Top = 19
        Width = 95
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object AvalRes: TLabel
        Left = 3
        Top = 34
        Width = 95
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 101
        Top = 34
        Width = 52
        Height = 12
        Caption = 'mem. livre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object FreeRes: TLabel
        Left = 2
        Top = 50
        Width = 187
        Height = 18
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object ProgressBar_mem: TProgressBar
        Left = 2
        Top = 68
        Width = 187
        Height = 25
        Align = alBottom
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 9
      Top = 15
      Width = 144
      Height = 95
      Align = alRight
      Caption = 'Sistema:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label11: TLabel
        Left = 29
        Top = 31
        Width = 40
        Height = 12
        Caption = 'Vers'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 29
        Top = 45
        Width = 39
        Height = 12
        Caption = 'Builder:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object OSBuilder: TLabel
        Left = 72
        Top = 45
        Width = 65
        Height = 12
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object stOSVersao: TLabel
        Left = 72
        Top = 31
        Width = 65
        Height = 12
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object stOS: TLabel
        Left = 8
        Top = 16
        Width = 127
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object CPUt: TLabel
        Left = 9
        Top = 69
        Width = 27
        Height = 12
        Caption = 'CPU:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object FreeCPUFreq: TLabel
        Left = 42
        Top = 69
        Width = 93
        Height = 12
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 213
    Top = 264
  end
  object TimerLog: TTimer
    Interval = 1800000
    Left = 248
    Top = 264
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 288
    Top = 264
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 256
    object Usurios1: TMenuItem
      Caption = 'Usu'#225'rios'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
      object Grupos1: TMenuItem
        Caption = 'Grupos'
        OnClick = Grupos1Click
      end
    end
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Configuraes1: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = Configuraes1Click
      end
      object Monitorar1: TMenuItem
        Caption = 'Monitorar'
        OnClick = Monitorar1Click
      end
      object estarServidor1: TMenuItem
        Caption = 'Testar Servidor'
        OnClick = estarServidor1Click
      end
      object Logs1: TMenuItem
        Caption = 'Logs'
        OnClick = Logs1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sobre1: TMenuItem
        Caption = 'Sobre'
        OnClick = Sobre1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object OpenDialog1_logs: TOpenDialog
    DefaultExt = 'hws'
    Filter = 'Logs|*.hws'
    Title = 'Abrir Logs'
    Left = 152
    Top = 256
  end
end
