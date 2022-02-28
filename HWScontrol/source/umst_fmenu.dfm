object fmenu: Tfmenu
  Left = 81
  Top = 196
  Width = 962
  Height = 657
  Caption = 'fmenu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 604
    Align = alLeft
    Caption = 'Resolver IP:'
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 2
      Top = 34
      Width = 325
      Height = 26
      ButtonHeight = 21
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 2
        Width = 4
        Height = 21
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
      end
      object ed_geip: TEdit
        Left = 4
        Top = 2
        Width = 186
        Height = 21
        TabOrder = 0
      end
      object bt_getip: TSpeedButton
        Left = 190
        Top = 2
        Width = 131
        Height = 21
        Hint = 'Filtrar registros '
        Caption = 'Resolver'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Glyph.Data = {
          BE010000424DBE01000000000000560000002800000012000000120000000100
          08000000000068010000120B0000120B0000080000000000000000000000CED3
          D6008400000084828400FFFFFF00C6C3C6000000000000000000010101010101
          0101010101010101010101010000010101010100000000010101010000000001
          0000010101010100010000010101010001000001000001010101010001000000
          0100000001000001000001010101010000000000000001000000000100000101
          0202020000010000050001000000000100000101020101010000000005000000
          0000010100000101020103030001000000000100000001010000010102010101
          0100000000000000000101010000010102010303010001000303000100010101
          0000010102010101010000000101000000010101000001010201030301030301
          0303010201010101000001010201010101010101010101020101010100000101
          0202020202020202020202020101010100000101020102020102020102020102
          0101010100000101020202020202020202020202010101010000010101010101
          0101010101010101010101010000010101010101010101010101010101010101
          0000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_getipClick
      end
    end
    object ToolBar3: TToolBar
      Left = 2
      Top = 15
      Width = 325
      Height = 19
      ButtonHeight = 17
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 225
        Height = 17
        AutoSize = False
        Caption = '  Selecione o tipo:'
        Layout = tlCenter
      end
      object RadioButton_getip1: TRadioButton
        Left = 225
        Top = 2
        Width = 42
        Height = 17
        Caption = 'IP'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton_getip2: TRadioButton
        Left = 267
        Top = 2
        Width = 57
        Height = 17
        Caption = 'Host'
        TabOrder = 1
      end
    end
    object StatusBar_getip: TStatusBar
      Left = 2
      Top = 583
      Width = 325
      Height = 19
      Panels = <
        item
          Width = 230
        end
        item
          Bevel = pbNone
          Width = 50
        end>
      ParentColor = True
    end
    object AddressListBox: TListBox
      Left = 2
      Top = 60
      Width = 325
      Height = 523
      Align = alClient
      ItemHeight = 13
      TabOrder = 3
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 604
    Width = 954
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
  end
  object GroupBox2: TGroupBox
    Left = 329
    Top = 0
    Width = 417
    Height = 604
    Align = alClient
    Caption = 'Busca Avan'#231'ada:'
    TabOrder = 2
    object ToolBar2: TToolBar
      Left = 2
      Top = 15
      Width = 413
      Height = 29
      Caption = 'ToolBar2'
      TabOrder = 0
      object Conectar: TBitBtn
        Left = 0
        Top = 2
        Width = 105
        Height = 22
        Caption = 'Conectar'
        TabOrder = 0
        OnClick = ConectarClick
      end
      object CheckBox1: TCheckBox
        Left = 105
        Top = 2
        Width = 48
        Height = 22
        Caption = 'db1'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 153
        Top = 2
        Width = 48
        Height = 22
        Caption = 'db2'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBox3: TCheckBox
        Left = 201
        Top = 2
        Width = 48
        Height = 22
        Caption = 'db3'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBox4: TCheckBox
        Left = 249
        Top = 2
        Width = 48
        Height = 22
        Caption = 'db4'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CheckBox5: TCheckBox
        Left = 297
        Top = 2
        Width = 48
        Height = 22
        Caption = 'db5'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CheckBox6: TCheckBox
        Left = 345
        Top = 2
        Width = 48
        Height = 22
        Caption = 'db6'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 44
      Width = 413
      Height = 189
      ActivePage = TabSheet5
      Align = alTop
      Style = tsFlatButtons
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'db1'
        object Label4: TLabel
          Left = 0
          Top = 25
          Width = 63
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Exten'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 41
          Width = 405
          Height = 117
          Align = alClient
          DataSource = msdm.ds1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 0
          Width = 405
          Height = 25
          DataSource = msdm.ds1
          Align = alTop
          TabOrder = 1
          OnClick = DBNavigator1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'db2'
        ImageIndex = 1
        object Label5: TLabel
          Left = 0
          Top = 25
          Width = 47
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'e-mail'#39's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNavigator2: TDBNavigator
          Left = 0
          Top = 0
          Width = 432
          Height = 25
          DataSource = msdm.ds2
          Align = alTop
          TabOrder = 0
          OnClick = DBNavigator2Click
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 41
          Width = 432
          Height = 117
          Align = alClient
          DataSource = msdm.ds2
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'db3'
        ImageIndex = 2
        object Label6: TLabel
          Left = 0
          Top = 25
          Width = 166
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Lista de dom'#237'nios principais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNavigator3: TDBNavigator
          Left = 0
          Top = 0
          Width = 432
          Height = 25
          DataSource = msdm.ds3
          Align = alTop
          TabOrder = 0
          OnClick = DBNavigator3Click
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 41
          Width = 432
          Height = 117
          Align = alClient
          DataSource = msdm.ds3
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'db4'
        ImageIndex = 3
        object Label9: TLabel
          Left = 0
          Top = 25
          Width = 158
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Lista de e-mail'#39's principais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNavigator4: TDBNavigator
          Left = 0
          Top = 0
          Width = 432
          Height = 25
          DataSource = msdm.ds4
          Align = alTop
          TabOrder = 0
          OnClick = DBNavigator4Click
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 41
          Width = 432
          Height = 117
          Align = alClient
          DataSource = msdm.ds4
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'db5'
        ImageIndex = 4
        object Label7: TLabel
          Left = 0
          Top = 25
          Width = 405
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Dom'#237'nios Localizados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNavigator5: TDBNavigator
          Left = 0
          Top = 0
          Width = 405
          Height = 25
          DataSource = msdm.ds5
          Align = alTop
          TabOrder = 0
          OnClick = DBNavigator5Click
        end
        object DBGrid5: TDBGrid
          Left = 0
          Top = 41
          Width = 405
          Height = 117
          Align = alClient
          DataSource = msdm.ds5
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'db6'
        ImageIndex = 5
        object Label8: TLabel
          Left = 0
          Top = 25
          Width = 198
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'E-mail'#39's Localizados por dom'#237'nio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNavigator6: TDBNavigator
          Left = 0
          Top = 0
          Width = 405
          Height = 25
          DataSource = msdm.ds6
          Align = alTop
          TabOrder = 0
          OnClick = DBNavigator6Click
        end
        object DBGrid6: TDBGrid
          Left = 0
          Top = 41
          Width = 405
          Height = 117
          Align = alClient
          DataSource = msdm.ds6
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 233
      Width = 413
      Height = 147
      Align = alTop
      Caption = 'Propriedades'
      TabOrder = 2
      object Label2: TLabel
        Left = 16
        Top = 104
        Width = 48
        Height = 13
        Caption = 'Iniciar em:'
      end
      object Label3: TLabel
        Left = 132
        Top = 104
        Width = 15
        Height = 13
        Caption = 'at'#233
      end
      object CheckBox7: TCheckBox
        Left = 16
        Top = 22
        Width = 57
        Height = 17
        Caption = 'a-z'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CheckBox8: TCheckBox
        Left = 16
        Top = 46
        Width = 57
        Height = 17
        Caption = '0-9'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object SpinEdit1: TSpinEdit
        Left = 72
        Top = 102
        Width = 52
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 2
      end
      object SpinEdit2: TSpinEdit
        Left = 160
        Top = 102
        Width = 52
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 3
        Value = 30
      end
      object Edit1: TEdit
        Left = 154
        Top = 66
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '_'
      end
      object CheckBox9: TCheckBox
        Left = 16
        Top = 70
        Width = 129
        Height = 17
        Caption = 'Caracteres opcionais:'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
    end
    object ToolBar4: TToolBar
      Left = 2
      Top = 380
      Width = 413
      Height = 47
      ButtonHeight = 42
      Caption = 'ToolBar2'
      TabOrder = 3
      object BitBtn1: TBitBtn
        Left = 0
        Top = 2
        Width = 409
        Height = 42
        Caption = 'Iniciar'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 746
    Top = 0
    Width = 208
    Height = 604
    Align = alRight
    Caption = 'Progress'
    TabOrder = 3
    object Panel1: TPanel
      Left = 2
      Top = 356
      Width = 204
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 1
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 0
      end
      object ProgressBar2: TProgressBar
        Left = 0
        Top = 9
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 1
      end
      object ProgressBar3: TProgressBar
        Left = 0
        Top = 17
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 2
      end
      object ProgressBar4: TProgressBar
        Left = 0
        Top = 25
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 3
      end
      object ProgressBar5: TProgressBar
        Left = 0
        Top = 33
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 4
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 397
      Width = 204
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object ProgressBar6: TProgressBar
        Left = 0
        Top = 1
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 0
      end
      object ProgressBar7: TProgressBar
        Left = 0
        Top = 9
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 1
      end
      object ProgressBar8: TProgressBar
        Left = 0
        Top = 17
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 2
      end
      object ProgressBar9: TProgressBar
        Left = 0
        Top = 25
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 3
      end
      object ProgressBar10: TProgressBar
        Left = 0
        Top = 33
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 4
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 438
      Width = 204
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object ProgressBar11: TProgressBar
        Left = 0
        Top = 1
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 0
      end
      object ProgressBar12: TProgressBar
        Left = 0
        Top = 9
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 1
      end
      object ProgressBar13: TProgressBar
        Left = 0
        Top = 17
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 2
      end
      object ProgressBar14: TProgressBar
        Left = 0
        Top = 25
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 3
      end
      object ProgressBar15: TProgressBar
        Left = 0
        Top = 33
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 4
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 479
      Width = 204
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object ProgressBar16: TProgressBar
        Left = 0
        Top = 1
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 0
      end
      object ProgressBar17: TProgressBar
        Left = 0
        Top = 9
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 1
      end
      object ProgressBar18: TProgressBar
        Left = 0
        Top = 17
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 2
      end
      object ProgressBar19: TProgressBar
        Left = 0
        Top = 25
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 3
      end
      object ProgressBar20: TProgressBar
        Left = 0
        Top = 33
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 4
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 520
      Width = 204
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object ProgressBar21: TProgressBar
        Left = 0
        Top = 1
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 0
      end
      object ProgressBar22: TProgressBar
        Left = 0
        Top = 9
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 1
      end
      object ProgressBar23: TProgressBar
        Left = 0
        Top = 17
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 2
      end
      object ProgressBar24: TProgressBar
        Left = 0
        Top = 25
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 3
      end
      object ProgressBar25: TProgressBar
        Left = 0
        Top = 33
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 4
      end
    end
    object Panel7: TPanel
      Left = 2
      Top = 561
      Width = 204
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
      object ProgressBar26: TProgressBar
        Left = 0
        Top = 1
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 0
      end
      object ProgressBar27: TProgressBar
        Left = 0
        Top = 9
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 1
      end
      object ProgressBar28: TProgressBar
        Left = 0
        Top = 17
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 2
      end
      object ProgressBar29: TProgressBar
        Left = 0
        Top = 25
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 3
      end
      object ProgressBar30: TProgressBar
        Left = 0
        Top = 33
        Width = 204
        Height = 8
        Align = alBottom
        TabOrder = 4
      end
    end
    object Memo_stat: TMemo
      Left = 2
      Top = 15
      Width = 204
      Height = 341
      Align = alClient
      ReadOnly = True
      TabOrder = 6
    end
  end
  object XPManifest1: TXPManifest
    Left = 651
    Top = 313
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
