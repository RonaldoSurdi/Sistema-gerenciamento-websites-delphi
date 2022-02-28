object adm_clilogs: Tadm_clilogs
  Left = 187
  Top = 194
  Width = 743
  Height = 427
  Color = 16119285
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 374
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
      Top = 154
      Width = 727
      Height = 214
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
        Height = 196
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
        Height = 196
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
        Height = 196
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
        Left = 516
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
        Left = 670
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
      object bt_printhtml: TSpeedButton
        Left = 693
        Top = 2
        Width = 31
        Height = 22
        Hint = 'Exportar relat'#243'rio formatado para Internet'
        Flat = True
        Glyph.Data = {
          E6050000424DE605000000000000360400002800000016000000120000000100
          080000000000B0010000120B0000120B000000010000000000003C1709009999
          990000FF0000AC471000F1D5B30093310F0033CCFF0042891100C0F07A00AE8B
          6300C1C2C000876F5D00644B1F0099FFFF00D67F3500FBEED70054231300ECB3
          640083704B001ECA6A00E7FFDE000242010080A95E0066524000A5ADAC00E47D
          4400D06E440051AA3D0085613B00B1722E00FEFBF700C97D4900AAA89600FAED
          D5001EA503006A6D1700A6987B00A1A78400D65D350058530800925B2E00E3C9
          A500727B3200F9EACF00CAAD9E00E3CB9500AB8A5D002F4C07009FF694001A34
          0400BE9A7200CD63240085D85E007D3C2000E6A95900A8855A00C4932D00F3E4
          9F004C7A5D005343330066663300FDF5E6009E754E00F2A74500DFCBA800AF61
          360066666600B4916600D9A35C00D2673B00975611001D5F0000F8E7C8005E54
          320046991900ECC48300DA9C42008A777400D9DA9200B2AFAA0093908C00946D
          4600E6D3B80073472A00533C2C0050572C0063483A00D39045007C5713009999
          6600957D71008D613200DE944C00FFFFFF0082400F00C2A6830031861E00F1FA
          A90041170B00BC956E00D26D4D007D4A3000D87B4A00CD7C4200FDF8EF00AB8E
          73006A413200AFB8BB0073612C00DC5D2A00705D38008C492200B1B5B6003357
          050089824B00855E38004D8F2000E6FAE3009F785200D8942900D0714A009FA3
          A400FFF7DE0093745500B9511C00DE703C003F160D00EBDAC0008D603A00F9F2
          DF00E6D7BD00FEFCF80097371900C3C8C900F4C165009A968300A29C8900593F
          3800E69E4600897F7F008E939200FCF2E100BB977100B5956C0093734800F9EB
          D000BCB9B100D37639006A493900CDB89D0065534800CE734000ADAD9400D761
          320066666600B4B5AC007A4B2B0099663300D66B4A00794E3D00D27F5200D87E
          4300E6FFE600A17F5400D8734600FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A5A5A5A5A5A5
          A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A50000A5010101010101010101A5A5A5A5
          A5A5A5A5A5A5A5A50000511C1C1C1C1C1C1C1C01A5A57001508C18A5A5A5A5A5
          0000378D8D0F0F2B2B4853010A0B9F946A9456426BA5A5A50000093D3D818121
          9195104D9C846F997D19A1416579A5A5000009683D3D81819542067E0503717C
          6D7D0E4C1F89A5A50000436868683D8D69750D06625E157133A41A9397498BA5
          00008F1E1E68683D3D2C750D067E470000661A45265596A5000043838383817F
          824080140D0600067E57A07864463BA50000635D5D83525F3E3E3E28140D0606
          7E8A5C671D2754A500008E5D5D5D821E1E29765B35140D067E11443A232F17A5
          0000325D5D5D526804A3016C140D0D0D7E4B774A07315AA50000325D5D5D5204
          0901A56E3C127B905B2D3F22600C4FA5000032326363636370A5A5201B133061
          392D36745887A5A50000A5A5A5A5A5A5A5A5A5A5201634084E86382A8885A5A5
          0000A5A5A5A5A5A5A5A5A5A5A5922559722E249BA5A5A5A50000A5A5A5A5A5A5
          A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A50000A5A5A5A5A5A5A5A5A5A5A5A5A5A5
          A5A5A5A5A5A5A5A50000}
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_printhtmlClick
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
        Width = 145
        Height = 20
        Date = 38073.213566620370000000
        Time = 38073.213566620370000000
        TabOrder = 6
      end
      object dt_fim: TDateTimePicker
        Left = 525
        Top = 4
        Width = 144
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
      Height = 121
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
        TabOrder = 0
      end
      object ed_colaborador: TRichEdit
        Left = 472
        Top = 16
        Width = 253
        Height = 103
        TabStop = False
        Align = alRight
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 2
        Top = 16
        Width = 470
        Height = 103
        Align = alClient
        BevelOuter = bvNone
        Color = 16119285
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 470
          Height = 82
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
          Left = 0
          Top = 82
          Width = 470
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
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 374
    Width = 735
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
  object SaveDialog_print: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Todos os arquivos (*.*)|*.*|Arquivo de Texto (*.txt)|*.txt'
    FilterIndex = 2
    Title = 'Exportar relat'#243'rio para arquivo'
    Left = 418
    Top = 186
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
