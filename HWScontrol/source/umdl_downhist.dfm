object mdl_downhist: Tmdl_downhist
  Left = 346
  Top = 138
  Width = 831
  Height = 637
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 580
    Width = 815
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 0
    Width = 815
    Height = 110
    Align = alTop
    Caption = 'Filtro:'
    TabOrder = 1
    object ToolBar3: TToolBar
      Left = 2
      Top = 15
      Width = 811
      Height = 29
      ButtonHeight = 25
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      TabOrder = 0
      object Label6: TLabel
        Left = 0
        Top = 2
        Width = 50
        Height = 25
        AutoSize = False
        Caption = 'Per'#237'odo:'
        Layout = tlCenter
      end
      object RadioButton2: TRadioButton
        Left = 50
        Top = 2
        Width = 67
        Height = 25
        Caption = 'Semanal'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RadioButton2Click
      end
      object RadioButton3: TRadioButton
        Left = 117
        Top = 2
        Width = 62
        Height = 25
        Caption = 'Mensal'
        TabOrder = 1
        OnClick = RadioButton3Click
      end
      object RadioButton4: TRadioButton
        Left = 179
        Top = 2
        Width = 55
        Height = 25
        Caption = 'Anual'
        TabOrder = 2
        OnClick = RadioButton4Click
      end
      object Label9: TLabel
        Left = 234
        Top = 2
        Width = 68
        Height = 25
        AutoSize = False
        Caption = '   Per'#237'odo de'
        Layout = tlCenter
      end
      object DateTimePicker1: TDateTimePicker
        Left = 302
        Top = 2
        Width = 237
        Height = 25
        Date = 40745.715128437500000000
        Time = 40745.715128437500000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Label10: TLabel
        Left = 539
        Top = 2
        Width = 31
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'at'#233
        Layout = tlCenter
      end
      object DateTimePicker2: TDateTimePicker
        Left = 570
        Top = 2
        Width = 237
        Height = 25
        Date = 40745.715128437500000000
        Time = 40745.715128437500000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object ToolBar5: TToolBar
      Left = 2
      Top = 74
      Width = 811
      Height = 30
      ButtonHeight = 24
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      TabOrder = 1
      DesignSize = (
        811
        28)
      object Label7: TLabel
        Left = 0
        Top = 2
        Width = 63
        Height = 24
        AutoSize = False
        Caption = 'Downloads:'
        Layout = tlCenter
      end
      object HistDown_CheckBox1: TCheckBox
        Left = 63
        Top = 2
        Width = 73
        Height = 24
        Caption = 'Iniciados'
        TabOrder = 1
      end
      object HistDown_CheckBox2: TCheckBox
        Left = 136
        Top = 2
        Width = 77
        Height = 24
        Caption = 'Conlu'#237'dos'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object HistDown_CheckBox3: TCheckBox
        Left = 213
        Top = 2
        Width = 85
        Height = 24
        Caption = 'Cancelados'
        TabOrder = 3
      end
      object HistDown_CheckBox4: TCheckBox
        Left = 298
        Top = 2
        Width = 53
        Height = 24
        Caption = 'Erros'
        TabOrder = 2
      end
      object Label8: TLabel
        Left = 351
        Top = 2
        Width = 43
        Height = 24
        AutoSize = False
        Caption = 'Ordem:'
        Layout = tlCenter
      end
      object HistDown_ini: TComboBox
        Left = 394
        Top = 3
        Width = 102
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'ID'
        Items.Strings = (
          'ID'
          'Inicio'
          'Conclus'#227'o'
          'Menu'
          'Pasta'
          'Arquivo'
          'Usu'#225'rio'
          'Status')
      end
      object Bevel2: TBevel
        Left = 496
        Top = 2
        Width = 74
        Height = 24
        Anchors = [akRight]
        Shape = bsRightLine
      end
      object SpeedButton1: TSpeedButton
        Left = 570
        Top = 2
        Width = 236
        Height = 24
        Hint = 'Aplicar Filtro'
        Caption = 'Aplicar Filtro'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Glyph.Data = {
          8E060000424D8E06000000000000360400002800000018000000190000000100
          08000000000058020000120B0000120B000000010000A6000000FFFFFF00FFF1
          BF00F9EACA00FEE8B400FAE6BC00FCE8B200FFE6A900FEE3A100FCE29B00FFE0
          9E00FFDDA500FBDE9700FED99600FBDB9200EFD1AE00F7CEB000FCD88D00F4D1
          A200FED29400FED48B00FBD38E00FBCBA600FED09000EDC8AB00F9C9A300FFCF
          8400E8C5AF00F0CE8A00FFCB8000F4C79000FDC97F00FFC98000EAC49700FCC4
          9200FEC78200FCC39000F7C78600FDC77F00E6C19A00F3C28D00EBC28F00FAC6
          7E00FFC38200FEC08E00F3BF8F00E4BB9F00E5BC9B00F3C08200E9BA9800F2C0
          7F00FAC17600E7B99800FDBE8200F1C07C00E3B99800FDC07300F9BA8400F0BF
          7A00E2B69B00DCB79500E8BA8800FABE7200FDBE6F00FBBB7200E3B39700E7BB
          7B00E3B38F00FBBB6A00F7B67C00E1B19200FDB96D00E0B09500E3B67B00FBB7
          6A00E1B28400FCB37900E2B08C00F9B47500F1B56F00FDB46D00F7B46D00F6B4
          6C00EDB37100E0AD8B00F5B56B00FDB07300FCB26B00E7AF7200FEB26300D7AE
          7B00EBAF6D00E4AD7900DFAA8400FAAF6300DEAD7100FAAE6200FEAD5F00E4AB
          6F00FCA96A00E1A77300FBA76600E3A66800F0A75D00FBA75800DBA46F00D6A4
          6C00CB9D8000E5A35F00D5A26800F6A35800DE9F6200FB9F5100CE9C6800E29C
          5B00F99B5200D99A6100EA9B5500F59C4C00F89A4B00BB917800F7984B00F796
          4B00EA975000F6974600F1954800EF954B00F5954800F5954700E8944F00D593
          5A00E8924B00E2925000E6924F00C08E5F00EF904200CA8D5900F18F3F00DD8D
          5000F18E3E00D68B5000D68C4D00BF875E00D88A4C00B9895B00B7876200CB89
          5100D1854D00B0826200CF844A00BF835400A57C6500BE7C4A00A7785900B677
          4700B9754900A5725200996D5100A26E4C008D6C5A009E6D4C00A56C4700AF6C
          4200A8684100806351009E6442008D5F47000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000095918C8C9497A0000000000000000000000000000000876B666D757B7B
          7C8292A40000000000000000000000006E545D563423232355798684A1000000
          000000000000006532462A2C4242402D1715648A80A200000000000000006829
          37225B6A00000000003A0F628889A500000000000000351C1C61770000000000
          00004718727D9A0000000000004A14193190000000000000000000304B7E8B9E
          00000000003C0C135E000000000000000000004C3878839C0000000000280910
          6C000000000000000000005344767A9B000000000020060D6900000000000000
          0000005C4D6F7498000000000026030B4800000000000000990000634F677196
          00000000002E04071B8F0000000000004E859D5A605F810000000000001A0E01
          08419300000000002F39575158508D0000000000000036020559000000000000
          27253D493F73000000000000000000333B000000000000001D1F433E529F0000
          00000000000000000000000000000000110A12122470A3000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
    end
    object ToolBar6: TToolBar
      Left = 2
      Top = 44
      Width = 811
      Height = 30
      ButtonHeight = 23
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      TabOrder = 2
      DesignSize = (
        811
        28)
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 54
        Height = 23
        AutoSize = False
        Caption = 'Usu'#225'rios:'
        Layout = tlCenter
      end
      object RadioButton1: TRadioButton
        Left = 54
        Top = 2
        Width = 54
        Height = 23
        Caption = 'Todos'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
      object RadioButton5: TRadioButton
        Left = 108
        Top = 2
        Width = 111
        Height = 23
        Caption = 'Baixaram Arquivos'
        TabOrder = 4
      end
      object RadioButton6: TRadioButton
        Left = 219
        Top = 2
        Width = 135
        Height = 23
        Caption = 'N'#227'o Baixaram Arquivos'
        TabOrder = 5
      end
      object Label13: TLabel
        Left = 354
        Top = 2
        Width = 97
        Height = 23
        AutoSize = False
        Caption = '  Status do Usu'#225'rio:'
        Layout = tlCenter
      end
      object CheckBox1: TCheckBox
        Left = 451
        Top = 2
        Width = 49
        Height = 23
        Caption = 'Ativo'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox2: TCheckBox
        Left = 500
        Top = 2
        Width = 76
        Height = 23
        Caption = 'Bloqueado'
        TabOrder = 0
      end
      object CheckBox3: TCheckBox
        Left = 576
        Top = 2
        Width = 75
        Height = 23
        Caption = 'Cancelado'
        TabOrder = 2
      end
      object Bevel1: TBevel
        Left = 651
        Top = 2
        Width = 5
        Height = 23
        Anchors = [akRight]
        Shape = bsRightLine
      end
      object CheckBoxdadoscad: TCheckBox
        Left = 656
        Top = 2
        Width = 151
        Height = 23
        Caption = 'Visualizar dados cadastrais'
        TabOrder = 6
        OnClick = CheckBoxdadoscadClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 815
    Height = 470
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 265
      Top = 0
      Height = 470
    end
    object GroupBox7: TGroupBox
      Left = 0
      Top = 0
      Width = 265
      Height = 470
      Align = alLeft
      Caption = 'Hist'#243'rico Downloads:'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 2
        Top = 219
        Width = 261
        Height = 4
        Cursor = crVSplit
        Align = alBottom
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 15
        Width = 261
        Height = 204
        Align = alClient
        Caption = 'Downloads - '#193'udios Unit'#225'rios:'
        TabOrder = 0
        object DBGrid5: TDBGrid
          Left = 2
          Top = 15
          Width = 257
          Height = 156
          Align = alClient
          Color = clWhite
          FixedColor = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid5DrawColumnCell
        end
        object ToolBar4: TToolBar
          Left = 2
          Top = 171
          Width = 257
          Height = 31
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
          object HistDown_export: TSpeedButton
            Left = 0
            Top = 2
            Width = 95
            Height = 22
            Hint = 'Exportar relat'#243'rio selecionado para HTML'
            Caption = 'Exportar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              E6000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000000000000FFFFFF00CC99
              FF00FFFFCC00FFCCCC00CCCCCC00FFCC9900FF99990099999900000099006666
              66003333330000000000FFFFFF0000000000000000000000000000079BBBBB70
              00000079642544770000075200225AAAAAA00A2002253A0777A00A3000825A00
              00A00A2088881A0A77A00A3800825A0000A00A2002253A07AAA00A3000225A00
              A700095026666AAAA00009566325246570000762323255569000007763255699
              00000000779977000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = HistDown_exportClick
          end
          object Label11: TLabel
            Left = 95
            Top = 2
            Width = 81
            Height = 22
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Subtotal:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object HistDown_Lb_countreTOTAL1: TLabel
            Left = 176
            Top = 2
            Width = 162
            Height = 22
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 223
        Width = 261
        Height = 204
        Align = alBottom
        Caption = 'Downloads - Pacotes (zip):'
        TabOrder = 1
        object DBGrid6: TDBGrid
          Left = 2
          Top = 15
          Width = 257
          Height = 156
          Align = alClient
          Color = clWhite
          FixedColor = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid6DrawColumnCell
        end
        object ToolBar8: TToolBar
          Left = 2
          Top = 171
          Width = 257
          Height = 31
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
          object HistDown_export2: TSpeedButton
            Left = 0
            Top = 2
            Width = 95
            Height = 22
            Hint = 'Exportar relat'#243'rio selecionado para HTML'
            Caption = 'Exportar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              E6000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000000000000FFFFFF00CC99
              FF00FFFFCC00FFCCCC00CCCCCC00FFCC9900FF99990099999900000099006666
              66003333330000000000FFFFFF0000000000000000000000000000079BBBBB70
              00000079642544770000075200225AAAAAA00A2002253A0777A00A3000825A00
              00A00A2088881A0A77A00A3800825A0000A00A2002253A07AAA00A3000225A00
              A700095026666AAAA00009566325246570000762323255569000007763255699
              00000000779977000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = HistDown_export2Click
          end
          object Label12: TLabel
            Left = 95
            Top = 2
            Width = 81
            Height = 22
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Subtotal:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object HistDown_Lb_countreTOTAL2: TLabel
            Left = 176
            Top = 2
            Width = 162
            Height = 22
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
      object ToolBar1: TToolBar
        Left = 2
        Top = 427
        Width = 261
        Height = 41
        Align = alBottom
        ButtonHeight = 32
        Caption = 'ToolBar1'
        TabOrder = 2
        object Label2: TLabel
          Left = 0
          Top = 2
          Width = 113
          Height = 32
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total Geral:  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object HistDown_Lb_countreTOTALGERAL: TLabel
          Left = 113
          Top = 2
          Width = 191
          Height = 32
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -27
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
    object GroupBox8: TGroupBox
      Left = 268
      Top = 0
      Width = 210
      Height = 470
      Align = alClient
      Caption = 'Usu'#225'rios:'
      TabOrder = 1
      object GroupBox2: TGroupBox
        Left = 2
        Top = 15
        Width = 206
        Height = 453
        Align = alClient
        Caption = 'Downloads - Lista de Usu'#225'rios:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel_search: TPanel
          Left = 2
          Top = 14
          Width = 202
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 0
          object Label3: TLabel
            Left = 6
            Top = 0
            Width = 49
            Height = 12
            Caption = 'Localizar:'
          end
          object Label4: TLabel
            Left = 317
            Top = -1
            Width = 39
            Height = 12
            Caption = 'Campo:'
          end
          object bt_search: TSpeedButton
            Left = 448
            Top = 9
            Width = 29
            Height = 22
            Hint = 'Localizar'
            Flat = True
            Glyph.Data = {
              8A020000424D8A02000000000000360100002800000011000000110000000100
              08000000000054010000120B0000120B0000400000000000000060412A00FFB3
              7800A4988F0085695200DED8D300D5C4B200F5DDBF006E554300BEB2A9008C78
              6A00FFDCAE00FFEDD600B7ABA200EEEEEE008B746400CCCCCC009D979200FCEA
              D40080604500D5BB9E00FFE4C100C6C6C600FFF6EA00E7E7E700FFC78E00FFF7
              C500BF9D780077615100BBBBBB0086706000997C6100FFDDB20098847600F5EC
              E100FFE8CB00D4D4D400DEDEDE00705745007B685800FCDFBC00FFF1DF00FFE3
              AE00B6B6B600D5C8BC0080624800FFE6C4007A645300856D5A00D5BCA100BFA0
              800091847B00FBF4EB00755E4E00F9E1C300FFFFFF0000000000000000000000
              000000000000000000000000000000000000000000000000000036360D363636
              36363636363636363636360000003623150F2436363636363636363636363600
              00001D0007101C24363636363636363636363600000000191900101C24363636
              363636363636360000002E29292900100F17360D0D0D36363636360000000400
              181818072A0F0F1515150F240D3636000000360400010100321B25000034321C
              230D360000003636042E00012F2B3333332B2F261C2436000000363636360C2F
              212828282828212F320F36000000363636361D050B000B0B0B000B0534150D00
              0000363636362E112200222222002211001C1700000036363636002D2D2C1E1E
              1E2C141400150D00000036363636002D2731002700312735000F360000003636
              36360E301F1F121F121F1F302E2436000000363636360803350A1A001A0A0603
              020D360000003636363636200313270A271303090D3636000000363636363636
              080E0000001D0C36363636000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_searchClick
          end
          object ComboBox_search: TComboBox
            Left = 315
            Top = 12
            Width = 132
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 0
            OnChange = ComboBox_searchChange
          end
          object Edit_search: TComboBox
            Left = 3
            Top = 12
            Width = 310
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 1
            OnChange = Edit_searchChange
            OnKeyPress = Edit_searchKeyPress
          end
          object CheckBoxUsrDown: TCheckBox
            Left = 8
            Top = 35
            Width = 345
            Height = 17
            Caption = 'Exibir lista de downloads de acordo com Usu'#225'rio Selecionado.'
            TabOrder = 2
            OnClick = CheckBoxUsrDownClick
          end
        end
        object ToolBar2: TToolBar
          Left = 2
          Top = 422
          Width = 202
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
          object SpeedButton2: TSpeedButton
            Left = 0
            Top = 2
            Width = 95
            Height = 22
            Hint = 'Exportar relat'#243'rio selecionado para HTML'
            Caption = 'Exportar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              E6000000424DE6000000000000007600000028000000100000000E0000000100
              04000000000070000000120B0000120B00001000000000000000FFFFFF00CC99
              FF00FFFFCC00FFCCCC00CCCCCC00FFCC9900FF99990099999900000099006666
              66003333330000000000FFFFFF0000000000000000000000000000079BBBBB70
              00000079642544770000075200225AAAAAA00A2002253A0777A00A3000825A00
              00A00A2088881A0A77A00A3800825A0000A00A2002253A07AAA00A3000225A00
              A700095026666AAAA00009566325246570000762323255569000007763255699
              00000000779977000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object Label5: TLabel
            Left = 95
            Top = 2
            Width = 106
            Height = 22
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total de Usu'#225'rios: '
            Layout = tlCenter
          end
          object Lb_countregUsrTOTAL: TLabel
            Left = 201
            Top = 2
            Width = 91
            Height = 22
            AutoSize = False
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 71
          Width = 202
          Height = 289
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
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
          OnDrawColumnCell = DBGrid2DrawColumnCell
          OnKeyDown = DBGrid2KeyDown
          OnKeyUp = DBGrid2KeyUp
        end
        object ToolBar9: TToolBar
          Left = 2
          Top = 360
          Width = 202
          Height = 31
          Align = alBottom
          ButtonHeight = 23
          Caption = 'ToolBar1'
          TabOrder = 3
          object Lb_countregUsrON: TLabel
            Left = 0
            Top = 2
            Width = 14
            Height = 23
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label14: TLabel
            Left = 14
            Top = 2
            Width = 142
            Height = 23
            AutoSize = False
            Caption = '  Baixaram Arquivos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
        object ToolBar10: TToolBar
          Left = 2
          Top = 391
          Width = 202
          Height = 31
          Align = alBottom
          ButtonHeight = 23
          Caption = 'ToolBar1'
          TabOrder = 4
          object Lb_countregUsrOFF: TLabel
            Left = 0
            Top = 2
            Width = 14
            Height = 23
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object Label16: TLabel
            Left = 14
            Top = 2
            Width = 172
            Height = 23
            AutoSize = False
            Caption = '  N'#227'o Baixaram Arquivos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
        end
      end
    end
    object GroupBox4: TGroupBox
      Left = 478
      Top = 0
      Width = 337
      Height = 470
      Align = alRight
      Caption = 'Dados cadastrais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      object ScrollBox3: TScrollBox
        Left = 2
        Top = 14
        Width = 333
        Height = 390
        VertScrollBar.Position = 390
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = -390
          Width = 316
          Height = 862
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 316
            Height = 129
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object Label25: TLabel
              Left = 66
              Top = 87
              Width = 87
              Height = 12
              Caption = '(de 4 '#224' 30 digitos)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 61
              Top = 51
              Width = 87
              Height = 12
              Caption = '(de 4 '#224' 30 digitos)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 225
              Top = 6
              Width = 86
              Height = 12
              Alignment = taRightJustify
              Caption = 'Date de cadastro'
            end
            object lbcp_dtcad2: TLabel
              Left = 152
              Top = 21
              Width = 161
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Layout = tlCenter
            end
            object xcodigo2: TLabeledEdit
              Left = 7
              Top = 21
              Width = 135
              Height = 20
              TabStop = False
              Color = 16119285
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              ReadOnly = True
              TabOrder = 0
            end
            object xcpw6: TLabeledEdit
              Left = 9
              Top = 66
              Width = 304
              Height = 20
              EditLabel.Width = 37
              EditLabel.Height = 12
              EditLabel.Caption = 'Usu'#225'rio'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = [fsBold]
              EditLabel.ParentFont = False
              MaxLength = 30
              TabOrder = 1
            end
            object xcpw7: TLabeledEdit
              Left = 9
              Top = 103
              Width = 151
              Height = 20
              EditLabel.Width = 48
              EditLabel.Height = 12
              EditLabel.Caption = 'Password'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = [fsBold]
              EditLabel.ParentFont = False
              MaxLength = 30
              PasswordChar = '*'
              TabOrder = 2
            end
            object xcpw7_ax: TLabeledEdit
              Left = 161
              Top = 103
              Width = 151
              Height = 20
              EditLabel.Width = 102
              EditLabel.Height = 12
              EditLabel.Caption = 'Redigite o Password'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = [fsBold]
              EditLabel.ParentFont = False
              MaxLength = 30
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 168
            Width = 316
            Height = 153
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object xcpw9: TLabeledEdit
              Left = 9
              Top = 13
              Width = 304
              Height = 20
              EditLabel.Width = 81
              EditLabel.Height = 12
              EditLabel.Caption = 'Dica para senha'
              MaxLength = 200
              TabOrder = 0
            end
            object xcpw3: TLabeledEdit
              Left = 9
              Top = 53
              Width = 304
              Height = 20
              EditLabel.Width = 64
              EditLabel.Height = 12
              EditLabel.Caption = 'Raz'#227'o Social'
              MaxLength = 255
              TabOrder = 1
            end
            object xcpw5: TLabeledEdit
              Left = 8
              Top = 90
              Width = 304
              Height = 20
              EditLabel.Width = 138
              EditLabel.Height = 12
              EditLabel.Caption = 'Respons'#225'vel pela entidade:'
              MaxLength = 100
              TabOrder = 2
            end
            object xcpw22: TLabeledEdit
              Left = 9
              Top = 131
              Width = 152
              Height = 20
              EditLabel.Width = 73
              EditLabel.Height = 12
              EditLabel.Caption = 'Insc. Estadual'
              MaxLength = 255
              TabOrder = 3
            end
            object xcpw23: TLabeledEdit
              Left = 160
              Top = 131
              Width = 151
              Height = 20
              EditLabel.Width = 53
              EditLabel.Height = 12
              EditLabel.Caption = 'CNPJ/CPF'
              MaxLength = 255
              TabOrder = 4
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 321
            Width = 316
            Height = 78
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object Label29: TLabel
              Left = 76
              Top = 2
              Width = 106
              Height = 12
              Caption = 'Setor do respons'#225'vel'
            end
            object Label30: TLabel
              Left = 76
              Top = 39
              Width = 115
              Height = 12
              Caption = 'Fun'#231#227'o do respons'#225'vel'
            end
            object xcpw24: TLabeledEdit
              Left = 9
              Top = 17
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 0
              Text = '0'
              OnChange = xcpw24Change
              OnKeyPress = edKeyPress
            end
            object xcpw24_ax: TComboBox
              Left = 74
              Top = 17
              Width = 239
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 1
              OnChange = xcpw24_axChange
            end
            object xcpw25_ax: TComboBox
              Left = 74
              Top = 55
              Width = 239
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 2
              OnChange = xcpw25_axChange
            end
            object xcpw25: TLabeledEdit
              Left = 9
              Top = 55
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 3
              Text = '0'
              OnChange = xcpw25Change
              OnKeyPress = edKeyPress
            end
          end
          object Panel14: TPanel
            Left = 0
            Top = 399
            Width = 316
            Height = 463
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 3
            object Label31: TLabel
              Left = 9
              Top = -2
              Width = 90
              Height = 12
              Caption = 'Data do Contrato:'
            end
            object SpeedButton8: TSpeedButton
              Left = 241
              Top = 279
              Width = 70
              Height = 22
              Hint = 'Busca cep'
              Caption = 'Busca'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                36020000424D3602000000000000360100002800000010000000100000000100
                08000000000000010000120B0000120B000040000000000000003D363000E8E8
                E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
                C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
                CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
                61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
                7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
                DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
                6900FFFFFF000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000032323232320A
                012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
                190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
                0033151414172D1522320A13312714140033151414142731130A010D2B141414
                131A11141414142B0D01291B1714141423332314141414171B29292420060606
                1E33331C060606202429011229182017170B33332F18182912010A2A0B250D33
                000200333125250B2A0A3215211F02333333333313050521153232022308090B
                0C002408090908230232323216070F1018181818100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton8Click
            end
            object Label33: TLabel
              Left = 9
              Top = 350
              Width = 67
              Height = 12
              Caption = 'Observa'#231#245'es'
            end
            object Label32: TLabel
              Left = 9
              Top = 229
              Width = 35
              Height = 12
              Caption = 'Cidade'
            end
            object xcpw4: TDateTimePicker
              Left = 8
              Top = 13
              Width = 303
              Height = 20
              Date = 38239.881269664350000000
              Time = 38239.881269664350000000
              TabOrder = 0
            end
            object xcpw10: TLabeledEdit
              Left = 8
              Top = 54
              Width = 151
              Height = 20
              EditLabel.Width = 53
              EditLabel.Height = 12
              EditLabel.Caption = 'Telefone 1'
              MaxLength = 16
              TabOrder = 1
            end
            object xcpw11: TLabeledEdit
              Left = 160
              Top = 54
              Width = 151
              Height = 20
              EditLabel.Width = 53
              EditLabel.Height = 12
              EditLabel.Caption = 'Telefone 2'
              MaxLength = 16
              TabOrder = 2
            end
            object xcpw12: TLabeledEdit
              Left = 8
              Top = 90
              Width = 151
              Height = 20
              EditLabel.Width = 36
              EditLabel.Height = 12
              EditLabel.Caption = 'Celular'
              MaxLength = 16
              TabOrder = 3
            end
            object xcpw13: TLabeledEdit
              Left = 8
              Top = 130
              Width = 304
              Height = 20
              EditLabel.Width = 32
              EditLabel.Height = 12
              EditLabel.Caption = 'e-mail'
              MaxLength = 255
              TabOrder = 4
            end
            object xcpw16: TLabeledEdit
              Left = 255
              Top = 168
              Width = 55
              Height = 20
              EditLabel.Width = 39
              EditLabel.Height = 12
              EditLabel.Caption = 'N'#250'mero'
              MaxLength = 11
              TabOrder = 6
              OnKeyPress = edKeyPress
            end
            object xcpw15: TLabeledEdit
              Left = 8
              Top = 168
              Width = 246
              Height = 20
              EditLabel.Width = 47
              EditLabel.Height = 12
              EditLabel.Caption = 'Endere'#231'o'
              MaxLength = 255
              TabOrder = 5
            end
            object xcpw17: TLabeledEdit
              Left = 8
              Top = 206
              Width = 304
              Height = 20
              EditLabel.Width = 69
              EditLabel.Height = 12
              EditLabel.Caption = 'Complemento'
              MaxLength = 255
              TabOrder = 7
            end
            object xcpw18_axuf: TLabeledEdit
              Left = 259
              Top = 244
              Width = 51
              Height = 20
              TabStop = False
              Color = 16119285
              EditLabel.Width = 14
              EditLabel.Height = 12
              EditLabel.Caption = 'UF'
              MaxLength = 2
              ReadOnly = True
              TabOrder = 8
            end
            object xcpw18_ax: TComboBox
              Left = 8
              Top = 244
              Width = 249
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 9
              OnChange = xcpw18_axChange
            end
            object xcpw19: TLabeledEdit
              Left = 8
              Top = 281
              Width = 233
              Height = 20
              EditLabel.Width = 97
              EditLabel.Height = 12
              EditLabel.Caption = 'CEP (00.000-000)'
              MaxLength = 10
              TabOrder = 10
            end
            object xcpw31: TCheckBox
              Left = 13
              Top = 308
              Width = 204
              Height = 17
              Caption = 'Receber not'#237'cias e informativos'
              TabOrder = 11
            end
            object xcpw33: TCheckBox
              Left = 13
              Top = 328
              Width = 124
              Height = 17
              Caption = 'Usu'#225'rio master'
              TabOrder = 12
            end
            object xcpw27: TMemo
              Left = 8
              Top = 364
              Width = 304
              Height = 93
              ScrollBars = ssBoth
              TabOrder = 13
            end
          end
          object Panel11: TPanel
            Left = 0
            Top = 129
            Width = 316
            Height = 39
            Align = alTop
            BevelOuter = bvNone
            Caption = '..'
            ParentColor = True
            TabOrder = 4
            object xcpw8: TLabeledEdit
              Left = 9
              Top = 14
              Width = 304
              Height = 20
              EditLabel.Width = 69
              EditLabel.Height = 12
              EditLabel.Caption = 'Frase secreta'
              MaxLength = 200
              PasswordChar = '*'
              TabOrder = 0
            end
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 404
        Width = 333
        Height = 35
        Align = alBottom
        Caption = 'Status da conta'
        TabOrder = 1
        object lbcp_rb1: TRadioButton
          Left = 11
          Top = 13
          Width = 54
          Height = 17
          Caption = 'Ativo'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object lbcp_rb2: TRadioButton
          Left = 77
          Top = 13
          Width = 80
          Height = 17
          Caption = 'Bloqueado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object lbcp_rb3: TRadioButton
          Left = 155
          Top = 13
          Width = 81
          Height = 17
          Caption = 'Cancelado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object ToolBar7: TToolBar
        Left = 2
        Top = 439
        Width = 333
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 2
        OnResize = ToolBar7Resize
        object Panel6: TPanel
          Left = 0
          Top = 2
          Width = 8
          Height = 22
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          Visible = False
        end
        object bt_prior2: TSpeedButton
          Left = 8
          Top = 2
          Width = 24
          Height = 22
          Hint = 'Registro anterior'
          Flat = True
          Glyph.Data = {
            9E030000424D9E03000000000000360200002800000012000000120000000100
            08000000000068010000120B0000120B00008000000000000000905D4900D88D
            660000FF0000F8C2A400A4878000B0836100E7A88200B4ABA700FFEDDE00B562
            4600C8846100D4997200F7AC8600FFF8F5009B6A5A00FED7C100C0C1BF00C080
            6200BD714D00E49C7400AC978800FFE0D300FCB58F0092706000C3936900A786
            7D00AA715800E5AC8500C7775A00D7946D00E3A57C00E09F7800FFF3E700A47C
            7000F9B48C00FFDCCF00A7948500BFC4C200A68A6B00CF886300F0AF8900BAB1
            AD00DD926C00B17F6300B59F8D00CE9772008C615200AA927E009E7B5900FFF7
            FF00E39E7D00C08E6A00FDB69400FEE8DD00EEA78100F7B08B00FDDEC900FFF0
            E700BDC2C000B0A18E00F0B18500E1977300BD765100BD6D4E00C28C6B00E9B3
            8A00AA8E83008C6B5200D1856800A1756400EBA37B00D88C6800B58B6100FEE4
            D600977C6800DD9D7400FFFFFF00E1A77D00BBB6AD00AD9B8A00CC996600C5C5
            C500EB9F7B00C2755500E6A58C00C37C5A00D6947300FFD8C600FEF5F200AF98
            8200AA868000D1835F00FDFCF800C2BFBB0096634F00C2C3BF00ECB48B00FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000616161616161
            616161616161616161616161000061616161610704172E434A24296161616161
            000061616110191A2D4D4D1F0B2D2B4F3A616161000061615D2111601E1D2A2A
            2A4B4B332F256161000061615A40414B3E3F231B012A1313404F616100006107
            1A1B4B12093857572A3D13524B054E6100006119561F530957235C01012A3D46
            36182C610000610E1E0A0957235C53531C1C44520C322661000061001F555757
            4949352020202020282830610000615E4B272038155C5C4C4C4C4C1537373061
            000061450B2A5B5835353D46360C3716160626610000614240132A470D393936
            0C373434342D2C61000061292B1313133D310808373434343C334E6100006161
            144032363636080316161616183B6161000061615F2F33320C0C223434342818
            595161610000616161514F0518322222062D482C51616161000061616161614E
            4F263030263B4E61616161610000616161616161616161616161616161616161
            0000}
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_prior2Click
        end
        object bt_next2: TSpeedButton
          Left = 32
          Top = 2
          Width = 24
          Height = 22
          Hint = 'Pr'#243'ximo registro'
          Flat = True
          Glyph.Data = {
            9E030000424D9E03000000000000360200002800000012000000120000000100
            08000000000068010000120B0000120B00008000000000000000905D4900D88D
            660000FF0000F8C2A400A4878000B0836100E7A88200B4ABA700FFEDDE00B562
            4600C8846100D4997200F7AC8600FFF8F5009B6A5A00FED7C100C0C1BF00C080
            6200BD714D00E49C7400AC978800FFE0D300FCB58F0092706000C3936900A786
            7D00AA715800E5AC8500C7775A00D7946D00E3A57C00E09F7800FFF3E700A47C
            7000F9B48C00FFDCCF00A7948500BFC4C200A68A6B00CF886300F0AF8900BAB1
            AD00DD926C00B17F6300B59F8D00CE9772008C615200AA927E009E7B5900FFF7
            FF00E39E7D00C08E6A00FDB69400FEE8DD00EEA78100F7B08B00FDDEC900FFF0
            E700BDC2C000B0A18E00F0B18500E1977300BD765100BD6D4E00C28C6B00E9B3
            8A00AA8E83008C6B5200D1856800A1756400EBA37B00D88C6800B58B6100FEE4
            D600977C6800DD9D7400FFFFFF00E1A77D00BBB6AD00AD9B8A00CC996600C5C5
            C500EB9F7B00C2755500E6A58C00C37C5A00D6947300FFD8C600FEF5F200AF98
            8200AA868000D1835F00FDFCF800C2BFBB0096634F00C2C3BF00ECB48B00FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000616161616161
            6161616161616161616161610000616161616129244A432E1704076161616161
            00006161613A4F2B2D0B1F4D4D2D1A191061616100006161252F334B4B2A2A2A
            1D1E6011215D6161000061614F4013132A011B233F3E4B41405A61610000614E
            054B52133D2A57573809124B1B1A07610000612C1836463D2A01015C23570953
            1F56196100006126320C52441C1C53535C2357090A1E0E610000613028282020
            2020203549495757551F0061000061303737154C4C4C4C5C5C153820274B5E61
            00006126061616370C36463D3535585B2A0B45610000612C2D343434370C3639
            390D472A134042610000614E333C343434370808313D1313132B296100006161
            3B1816161616030836363632401461610000616151591828343434220C0C3233
            2F5F61610000616161512C482D0622223218054F51616161000061616161614E
            3B263030264F4E61616161610000616161616161616161616161616161616161
            0000}
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_next2Click
        end
        object Panel2: TPanel
          Left = 56
          Top = 2
          Width = 169
          Height = 22
          BevelOuter = bvNone
          TabOrder = 1
        end
        object bt_save2: TSpeedButton
          Left = 225
          Top = 2
          Width = 105
          Height = 22
          Hint = 'Gravar dados do regsistro'
          Caption = 'Gravar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            1E020000424D1E02000000000000B60000002800000014000000120000000100
            08000000000068010000120B0000120B00002000000000000000FFFFFF00FFF9
            EC00EDEDED00F7ECD800F2E7D300F0E4D000EBD8B600D9C8AB00C7B49200C2AF
            8D00BFAC8A00BAA78500B7A48200B4A17F0099999900AF9C7A00A18E6C008673
            5100A06C4800806D4B006D5A38006E502F005C4927004E392100140D0000FFFF
            FF00000000000000000000000000000000000000000000000000191919191919
            1919191919191919191919191919191919191919190E0E0E0E0E0E0E0E0E0E0E
            0E191919191919191217171515151515151717170E19191919191919120B0F00
            0202020202160C170E19191919191919120B0F00130A000202160C170E191919
            190E0E0E120A0D001413000202160C170E1919191217171512090D0000000000
            00160C170E191919120B0F001208080C0C0C0C0C0C0C0C170E191919120B0F00
            120801030303030405110C170E191919120A0D00120801030303030405110717
            0E19191912090D001208010303030304051810170E1919191208080C12060101
            0101010101140B170E1919191208010312121212121212121212121219191919
            1208010303030304051107170E19191919191919120801030303030405181017
            0E19191919191919120601010101010101140B170E1919191919191912121212
            1212121212121212191919191919191919191919191919191919191919191919
            1919}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_save2Click
        end
      end
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Exportar imagem'
    Left = 264
    Top = 232
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 293
    Top = 232
  end
  object XPManifest1: TXPManifest
    Left = 321
    Top = 232
  end
  object SaveDialog_print: TSaveDialog
    Title = 'Exportar relat'#243'rio'
    Left = 314
    Top = 274
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 229
    Top = 272
  end
end
