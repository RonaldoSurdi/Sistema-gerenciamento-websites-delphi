object adm_logs: Tadm_logs
  Left = 187
  Top = 194
  BorderStyle = bsNone
  ClientHeight = 393
  ClientWidth = 735
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 735
    Height = 356
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 2
      Top = 153
      Width = 727
      Height = 197
      Align = alClient
      Caption = 'Logs do sistema:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object count_grade: TLabel
        Left = 664
        Top = 1
        Width = 6
        Height = 14
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 672
        Top = 0
        Width = 48
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Splitter1: TSplitter
        Left = 334
        Top = 16
        Height = 179
        Align = alRight
      end
      object YuSoftLabel3: TYuSoftLabel
        Left = 560
        Top = 32
        Width = 69
        Height = 12
        Hint = 'Mostrar todos os logs'
        Caption = '&Mostrar todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel3Click
        OnMouseEnterState.Active = True
        OnMouseEnterState.BorderColor = 8454143
        OnMouseEnterState.BorderWidth = 1
        OnMouseEnterState.TextStyle = tsRecessed1
        OnMouseEnterState.ShadowColor = clWhite
        OnMouseEnterState.ShadowWidth = 0
        OnClickState.Active = True
        OnClickState.BorderColor = clBtnHighlight
        OnClickState.BorderWidth = 0
        OnClickState.TextStyle = tsRecessed2
        OnClickState.ShadowColor = 16769183
        OnClickState.ShadowWidth = 0
        OnExtendedState.Active = True
        OnExtendedState.BorderColor = clBtnHighlight
        OnExtendedState.BorderWidth = 1
        OnExtendedState.TextStyle = tsRecessed1
        OnExtendedState.ShadowColor = clWhite
        OnExtendedState.ShadowWidth = 0
        Transparent = True
      end
      object YuSoftLabel12: TYuSoftLabel
        Left = 517
        Top = 32
        Width = 31
        Height = 12
        Hint = 'Executar logs'
        Caption = '&Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnMouseEnterState.Active = True
        OnMouseEnterState.BorderColor = 8454143
        OnMouseEnterState.BorderWidth = 1
        OnMouseEnterState.TextStyle = tsRecessed1
        OnMouseEnterState.ShadowColor = clWhite
        OnMouseEnterState.ShadowWidth = 0
        OnClickState.Active = True
        OnClickState.BorderColor = clBtnHighlight
        OnClickState.BorderWidth = 0
        OnClickState.TextStyle = tsRecessed2
        OnClickState.ShadowColor = 16769183
        OnClickState.ShadowWidth = 0
        OnExtendedState.Active = True
        OnExtendedState.BorderColor = clBtnHighlight
        OnExtendedState.BorderWidth = 1
        OnExtendedState.TextStyle = tsRecessed1
        OnExtendedState.ShadowColor = clWhite
        OnExtendedState.ShadowWidth = 0
        Transparent = True
      end
      object YuSoftLabel1: TYuSoftLabel
        Left = 645
        Top = 32
        Width = 57
        Height = 12
        Hint = 'Limpar logs listados'
        Caption = '&Limpar logs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel1Click
        OnMouseEnterState.Active = True
        OnMouseEnterState.BorderColor = 8454143
        OnMouseEnterState.BorderWidth = 1
        OnMouseEnterState.TextStyle = tsRecessed1
        OnMouseEnterState.ShadowColor = clWhite
        OnMouseEnterState.ShadowWidth = 0
        OnClickState.Active = True
        OnClickState.BorderColor = clBtnHighlight
        OnClickState.BorderWidth = 0
        OnClickState.TextStyle = tsRecessed2
        OnClickState.ShadowColor = 16769183
        OnClickState.ShadowWidth = 0
        OnExtendedState.Active = True
        OnExtendedState.BorderColor = clBtnHighlight
        OnExtendedState.BorderWidth = 1
        OnExtendedState.TextStyle = tsRecessed1
        OnExtendedState.ShadowColor = clWhite
        OnExtendedState.ShadowWidth = 0
        Transparent = True
      end
      object YuSoftLabel5: TYuSoftLabel
        Left = 149
        Top = 0
        Width = 69
        Height = 12
        Hint = 'Mostrar todos os logs'
        Caption = '&Mostrar todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel3Click
        OnMouseEnterState.Active = True
        OnMouseEnterState.BorderColor = 8454143
        OnMouseEnterState.BorderWidth = 1
        OnMouseEnterState.TextStyle = tsRecessed1
        OnMouseEnterState.ShadowColor = clWhite
        OnMouseEnterState.ShadowWidth = 0
        OnClickState.Active = True
        OnClickState.BorderColor = clBtnHighlight
        OnClickState.BorderWidth = 0
        OnClickState.TextStyle = tsRecessed2
        OnClickState.ShadowColor = 16769183
        OnClickState.ShadowWidth = 0
        OnExtendedState.Active = True
        OnExtendedState.BorderColor = clBtnHighlight
        OnExtendedState.BorderWidth = 1
        OnExtendedState.TextStyle = tsRecessed1
        OnExtendedState.ShadowColor = clWhite
        OnExtendedState.ShadowWidth = 0
        Transparent = True
      end
      object YuSoftLabel7: TYuSoftLabel
        Left = 250
        Top = 0
        Width = 57
        Height = 12
        Hint = 'Limpar logs listados'
        Caption = '&Limpar logs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel1Click
        OnMouseEnterState.Active = True
        OnMouseEnterState.BorderColor = 8454143
        OnMouseEnterState.BorderWidth = 1
        OnMouseEnterState.TextStyle = tsRecessed1
        OnMouseEnterState.ShadowColor = clWhite
        OnMouseEnterState.ShadowWidth = 0
        OnClickState.Active = True
        OnClickState.BorderColor = clBtnHighlight
        OnClickState.BorderWidth = 0
        OnClickState.TextStyle = tsRecessed2
        OnClickState.ShadowColor = 16769183
        OnClickState.ShadowWidth = 0
        OnExtendedState.Active = True
        OnExtendedState.BorderColor = clBtnHighlight
        OnExtendedState.BorderWidth = 1
        OnExtendedState.TextStyle = tsRecessed1
        OnExtendedState.ShadowColor = clWhite
        OnExtendedState.ShadowWidth = 0
        Transparent = True
      end
      object db_logs: TDBGrid
        Left = 2
        Top = 16
        Width = 332
        Height = 179
        TabStop = False
        Align = alClient
        Color = clWhite
        FixedColor = 15066597
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        OnCellClick = db_logsCellClick
        OnKeyDown = db_logsKeyDown
        OnKeyUp = db_logsKeyUp
      end
      object cp_obs: TMemo
        Left = 337
        Top = 16
        Width = 388
        Height = 179
        Align = alRight
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel9: TPanel
      Left = 2
      Top = 2
      Width = 727
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 7
        Top = 8
        Width = 34
        Height = 12
        Caption = 'Filtrar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 522
        Top = 8
        Width = 7
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 194
        Top = 8
        Width = 7
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object SpeedButton2: TSpeedButton
        Left = 698
        Top = 2
        Width = 23
        Height = 22
        Hint = 'Filtrar'
        Flat = True
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D8000000120B0000120B00001000000000000000FFFFFF0033FF
          FF0033CCFF009B9B9B000099CC00006699005050500000000700FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000007600000000000000000000004760000000000000000000004
          1760000000000000000000004176000000000000000000004117600000000000
          0000000004017600000000000000005555201760000000000000000520110070
          0000000000000000521176000000000000000000050117600000000000000055
          5550117600000000000000050111001500000000000000005011760000000000
          0000000005011760000000000000000000501176000000000000000000044444
          000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object fip4: TEdit
        Left = 167
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 4
        Text = '0'
        OnExit = fip4Exit
      end
      object fip3: TEdit
        Left = 142
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnExit = fip3Exit
        OnKeyPress = fip3KeyPress
      end
      object fip2: TEdit
        Left = 117
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnExit = fip2Exit
        OnKeyPress = fip2KeyPress
      end
      object fip1: TEdit
        Left = 92
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnExit = fip1Exit
        OnKeyPress = fip1KeyPress
      end
      object CheckBox1: TCheckBox
        Left = 52
        Top = 9
        Width = 29
        Height = 12
        Caption = 'ip'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 318
        Top = 9
        Width = 43
        Height = 12
        Caption = 'Data'
        TabOrder = 5
      end
      object dt_inicio: TDateTimePicker
        Left = 365
        Top = 4
        Width = 148
        Height = 20
        Date = 38073.213566620370000000
        Time = 38073.213566620370000000
        TabOrder = 6
      end
      object dt_fim: TDateTimePicker
        Left = 540
        Top = 4
        Width = 149
        Height = 20
        Date = 38073.213566620370000000
        Time = 38073.213566620370000000
        TabOrder = 7
      end
      object fip8: TEdit
        Left = 280
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 8
        Text = '255'
      end
      object fip7: TEdit
        Left = 254
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 9
        Text = '255'
        OnKeyPress = fip3KeyPress
      end
      object fip6: TEdit
        Left = 228
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 10
        Text = '255'
        OnKeyPress = fip2KeyPress
      end
      object fip5: TEdit
        Left = 203
        Top = 5
        Width = 25
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 3
        ParentFont = False
        TabOrder = 11
        Text = '255'
        OnKeyPress = fip1KeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 33
      Width = 727
      Height = 120
      Align = alTop
      Caption = 'Selecione o usu'#225'rio:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object count_usr: TLabel
        Left = 664
        Top = 1
        Width = 6
        Height = 14
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 669
        Top = 1
        Width = 53
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 16
        Width = 723
        Height = 81
        Align = alClient
        Color = clWhite
        FixedColor = 15066597
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyDown = DBGrid1KeyDown
        OnKeyUp = DBGrid1KeyUp
      end
      object Panel2: TPanel
        Left = 2
        Top = 97
        Width = 723
        Height = 21
        Align = alBottom
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object RadioButton4: TRadioButton
          Left = 120
          Top = 2
          Width = 81
          Height = 17
          Caption = 'Bloqueados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadioButton4Click
        end
        object RadioButton5: TRadioButton
          Left = 60
          Top = 2
          Width = 57
          Height = 17
          Caption = 'Ativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton5Click
        end
        object RadioButton6: TRadioButton
          Left = 4
          Top = 2
          Width = 57
          Height = 17
          Caption = 'Todos'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TabStop = True
          OnClick = RadioButton6Click
        end
        object RadioButton7: TRadioButton
          Left = 206
          Top = 2
          Width = 81
          Height = 17
          Caption = 'Cancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = RadioButton7Click
        end
        object ed_colaborador: TEdit
          Left = 300
          Top = 2
          Width = 409
          Height = 15
          AutoSize = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object Edit1: TEdit
        Left = 304
        Top = 181
        Width = 402
        Height = 15
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 733
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object SpeedButton1: TSpeedButton
      Left = 718
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Fechar janela'
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 688
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Sobre'
      Caption = '?'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object YuSoftLabel2: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 103
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'WebServer - Logs'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = YuSoftLabel2Click
      OnMouseEnterState.Active = True
      OnMouseEnterState.BorderColor = clBtnHighlight
      OnMouseEnterState.BorderWidth = 1
      OnMouseEnterState.TextStyle = tsNone
      OnMouseEnterState.ShadowColor = clBtnShadow
      OnMouseEnterState.ShadowWidth = 0
      OnClickState.Active = False
      OnClickState.BorderColor = clBtnHighlight
      OnClickState.BorderWidth = 0
      OnClickState.TextStyle = tsNone
      OnClickState.ShadowColor = clBtnShadow
      OnClickState.ShadowWidth = 0
      OnExtendedState.Active = True
      OnExtendedState.BorderColor = clBtnHighlight
      OnExtendedState.BorderWidth = 0
      OnExtendedState.TextStyle = tsNone
      OnExtendedState.ShadowColor = clBtnShadow
      OnExtendedState.ShadowWidth = 0
      Transparent = True
    end
    object biSystemMenu: TImage
      Left = 4
      Top = 3
      Width = 15
      Height = 14
      Proportional = True
      Stretch = True
      Transparent = True
    end
    object bt_minimize: TSpeedButton
      Left = 703
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Minimizar janela'
      Caption = '-'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_minimizeClick
    end
  end
  object pn_status: TPanel
    Left = 0
    Top = 376
    Width = 735
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 729
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
end
