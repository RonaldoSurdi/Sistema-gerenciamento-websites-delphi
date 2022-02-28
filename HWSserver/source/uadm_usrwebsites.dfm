object adm_usrwebsites: Tadm_usrwebsites
  Left = 205
  Top = 175
  BorderStyle = bsNone
  ClientHeight = 640
  ClientWidth = 737
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 392
    Height = 603
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
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 384
      Height = 595
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 384
      Height = 595
      Align = alClient
      Caption = 'Lista de registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 73
        Width = 380
        Height = 491
        Align = alClient
        Color = clWhite
        DataSource = dm.source_sql
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
        OnKeyDown = DBGrid1KeyDown
        OnKeyUp = DBGrid1KeyUp
      end
      object Panel_search: TPanel
        Left = 2
        Top = 14
        Width = 380
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        Color = 16119285
        TabOrder = 1
        object Label3: TLabel
          Left = 6
          Top = 0
          Width = 49
          Height = 12
          Caption = 'Localizar:'
        end
        object Label4: TLabel
          Left = 221
          Top = -1
          Width = 39
          Height = 12
          Caption = 'Campo:'
        end
        object bt_search: TSpeedButton
          Left = 352
          Top = 10
          Width = 24
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
        object Label11: TLabel
          Left = 7
          Top = 40
          Width = 34
          Height = 12
          Caption = 'Filtrar:'
        end
        object ComboBox_search: TComboBox
          Left = 219
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
          Width = 214
          Height = 20
          ItemHeight = 12
          MaxLength = 255
          TabOrder = 1
          OnChange = Edit_searchChange
          OnKeyPress = Edit_searchKeyPress
        end
        object rb_filtro1: TRadioButton
          Left = 60
          Top = 38
          Width = 52
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
        end
        object rb_filtro2: TRadioButton
          Left = 119
          Top = 38
          Width = 54
          Height = 17
          Caption = 'Ativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object rb_filtro3: TRadioButton
          Left = 177
          Top = 38
          Width = 80
          Height = 17
          Caption = 'Bloqueados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object rb_filtro4: TRadioButton
          Left = 262
          Top = 38
          Width = 81
          Height = 17
          Caption = 'Cancelados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object ToolBar2: TToolBar
        Left = 2
        Top = 564
        Width = 380
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 2
        object Label5: TLabel
          Left = 0
          Top = 2
          Width = 106
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total de Registros: '
          Layout = tlCenter
        end
        object Lb_countreg: TLabel
          Left = 106
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
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 735
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = FormMouseDown
    end
    object bt_fechar: TSpeedButton
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
      OnClick = bt_fecharClick
    end
    object bt_sobre: TSpeedButton
      Left = 672
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
      OnClick = bt_sobreClick
    end
    object YuSoftLabel2: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 112
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'Websites - usu'#225'rios'
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
      Left = 687
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
    object bt_maximiza: TSpeedButton
      Left = 703
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Maximizar'
      Caption = #143
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_maximizaClick
    end
  end
  object pn_status: TPanel
    Left = 0
    Top = 623
    Width = 737
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 731
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object PageControl2: TPageControl
    Left = 392
    Top = 20
    Width = 345
    Height = 603
    ActivePage = TabSheet1
    Align = alRight
    Style = tsFlatButtons
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Ficha'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 572
        Align = alClient
        Caption = 'Ficha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 14
          Width = 333
          Height = 527
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 317
            Height = 257
            BevelOuter = bvNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label15: TLabel
              Left = 76
              Top = 83
              Width = 120
              Height = 12
              Caption = 'Selecione o colaborador'
            end
            object Label1: TLabel
              Left = 76
              Top = 46
              Width = 99
              Height = 12
              Caption = 'Selecione o website'
            end
            object Label2: TLabel
              Left = 60
              Top = 120
              Width = 87
              Height = 12
              Caption = '(de 6 '#224' 30 digitos)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 65
              Top = 156
              Width = 87
              Height = 12
              Caption = '(de 6 '#224' 30 digitos)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object lbcp_dtcad: TLabel
              Left = 152
              Top = 21
              Width = 161
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Layout = tlCenter
            end
            object Label12: TLabel
              Left = 225
              Top = 6
              Width = 86
              Height = 12
              Alignment = taRightJustify
              Caption = 'Date de cadastro'
            end
            object lbcp4: TLabeledEdit
              Left = 9
              Top = 97
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 3
              OnChange = lbcp4Change
              OnKeyPress = lbcp4KeyPress
            end
            object lbcp5: TComboBox
              Left = 74
              Top = 97
              Width = 239
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 4
              OnChange = lbcp5Change
            end
            object lbcp1: TLabeledEdit
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
            object lbcp6: TLabeledEdit
              Left = 8
              Top = 135
              Width = 304
              Height = 20
              EditLabel.Width = 39
              EditLabel.Height = 12
              EditLabel.Caption = 'Usu'#225'rio'
              MaxLength = 30
              TabOrder = 5
            end
            object lbcp3: TComboBox
              Left = 74
              Top = 60
              Width = 239
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 2
              OnChange = lbcp3Change
            end
            object lbcp2: TLabeledEdit
              Left = 9
              Top = 60
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 1
              OnChange = lbcp2Change
              OnKeyPress = lbcp2KeyPress
            end
            object lbcp7: TLabeledEdit
              Left = 8
              Top = 172
              Width = 151
              Height = 20
              EditLabel.Width = 48
              EditLabel.Height = 12
              EditLabel.Caption = 'Password'
              MaxLength = 30
              TabOrder = 6
            end
            object GroupBox3: TGroupBox
              Left = 9
              Top = 195
              Width = 304
              Height = 41
              Caption = 'Status'
              TabOrder = 8
              object lbcp_rb1: TRadioButton
                Left = 11
                Top = 16
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
                Left = 101
                Top = 16
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
                Left = 211
                Top = 16
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
            object lbcp8: TLabeledEdit
              Left = 160
              Top = 172
              Width = 151
              Height = 20
              EditLabel.Width = 101
              EditLabel.Height = 12
              EditLabel.Caption = 'Redigite o Password'
              MaxLength = 30
              TabOrder = 7
            end
          end
          object chk_master: TCheckBox
            Left = 16
            Top = 248
            Width = 180
            Height = 17
            Hint = 
              'Acessar todos os recursos referentes a'#13#10'sua entidade.'#13#10'ex.: usu'#225 +
              'rios, logs, ...'
            Caption = 'Usu'#225'rio com privi'#233'gios master'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
        object ToolBar1: TToolBar
          Left = 2
          Top = 541
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
          object bt_prior: TSpeedButton
            Left = 0
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
            OnClick = bt_priorClick
          end
          object bt_next: TSpeedButton
            Left = 24
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
            OnClick = bt_nextClick
          end
          object bt_new: TSpeedButton
            Left = 48
            Top = 2
            Width = 90
            Height = 22
            Hint = 'Incluir novo registro'
            Caption = 'Novo'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E020000424D9E02000000000000360100002800000012000000120000000100
              08000000000068010000120B0000120B00004000000000000000835C36005A85
              AD0000FF0000F2D4B100E1C9AB004E7BA60000CCFF009966660082FEFE009999
              9900EDF1F100CCFFFF008A633D00AE885E008DA6BD003253760033CCFF00FDF1
              DD00E1C7A300FBE9C400FEFCF100C6A584009E794D00B0B6B500FEF8EF00FDF0
              D700E4D1BC00956E4700FEF6E600A5835F00FFFFFF00B8956A00FCEED00042D5
              FE00E9D8C300E2D3B900FFF7DE00FEFAF600E4D3B900816039008B664000B18A
              63008CAAC500537CA50095744D008F6B4300FEFCF700F4D3B200E9D8BD00FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000313131313131
              3131313131313131313131310000313131313131090909090909090909093131
              00003131313131161B1B2D282828272700093131000031313131311D11111120
              2013131300093131000031313131311D1C111111202020130009313100003131
              3131310D1C1C1C111120202000093131000031313131312918181C1C11111120
              0009313100003131313131291818181C1C111111000931310000313131313107
              252518181C222204000931310000310605311E072E0E0B182315152C00093131
              0000310A062B0807010B2E2E2614141200093131000031310B06100F081E1E2E
              1A252F00093131310000312B2B101E100101012A1A0300093131313100001E1E
              101E1E1E10080B1E1F1F173131313131000031312B101E100605313131313131
              313131310000312B0831212B08062B3131313131313131310000310A31311E2B
              310A063131313131313131310000313131311E31313131313131313131313131
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_newClick
          end
          object bt_del: TSpeedButton
            Left = 138
            Top = 2
            Width = 90
            Height = 22
            Hint = 'Excluir registro selecionado'
            Caption = 'Excluir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E020000424D9E02000000000000360100002800000012000000120000000100
              08000000000068010000120B0000120B0000400000000000000012148A0000FF
              0000999999003130E4002E2CC5008485F3005B5BEF004240ED002326DF009495
              F7006865F1003C3CCE005354F80017128B003B3BE7007976FB007372F7006668
              F6003C3CEE00151587003333CC009B9DF5008588F100494AEE006869F7001115
              8B003A42E6005D5FF3003F3ECA008D8FF50017158C002826DE003131C3009599
              F8004447EF006866F5009999FF00FFFFFF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000252525252525
              2525252525252525252525250000252525252525252525252525252525252525
              00002525252502132525252525250200252525250000252525021E101F252525
              250213180425252500002525021910081F032525020D230E0920252500002525
              250213061F0303021311120920252525000025252525021306030E0011120920
              252525250000252525252502131B0E0E071D2025252525250000252525252525
              02001112072025252525252500002525252525021E11120A2222142525252525
              000025252525021E110E05141017170B2525252500002525250200110E052002
              00100C0C0B252525000025250219100E1604252502130F0C210B252500002525
              25021E1520252525250213211C252525000025252525021E2525252525250219
              2525252500002525252525252525252525252525252525250000252525252525
              2525252525252525252525250000252525252525252525252525252525252525
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_delClick
          end
          object bt_save: TSpeedButton
            Left = 228
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
            OnClick = bt_saveClick
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Colaborador'
      ImageIndex = 2
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 572
        Align = alClient
        Caption = 'Ficha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ScrollBox2: TScrollBox
          Left = 2
          Top = 14
          Width = 333
          Height = 527
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 315
            Height = 706
            BevelOuter = bvNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object bt_buscacep: TSpeedButton
              Left = 240
              Top = 558
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
              OnClick = bt_buscacepClick
            end
            object Label20: TLabel
              Left = 9
              Top = 587
              Width = 67
              Height = 12
              Caption = 'Observa'#231#245'es'
            end
            object Label21: TLabel
              Left = 9
              Top = 508
              Width = 35
              Height = 12
              Caption = 'Cidade'
            end
            object Label22: TLabel
              Left = 9
              Top = 321
              Width = 104
              Height = 12
              Caption = 'Data de nascimento:'
            end
            object Label23: TLabel
              Left = 76
              Top = 247
              Width = 36
              Height = 12
              Caption = 'Fun'#231#227'o'
            end
            object Label24: TLabel
              Left = 76
              Top = 167
              Width = 44
              Height = 12
              Caption = 'Entidade'
            end
            object Label25: TLabel
              Left = 76
              Top = 207
              Width = 27
              Height = 12
              Caption = 'Setor'
            end
            object Label8: TLabel
              Left = 8
              Top = 45
              Width = 22
              Height = 12
              Caption = 'Foto'
              Transparent = True
              Layout = tlCenter
            end
            object bt_import: TSpeedButton
              Left = 6
              Top = 57
              Width = 85
              Height = 19
              Hint = 'Importar logomarca da entidade'
              Caption = 'Importar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                E6030000424DE603000000000000360200002800000017000000120000000100
                080000000000B0010000120B0000120B00008000000000000000FFFFFF00D0FA
                FF00CEFBFE00CEFAFE00B7FCFF00CDFAFD0092FAFF0091FAFF0092F9FF0091F9
                FF0096F8FF0091F9FE0094F9FE0090F8FD00A9F1FF008AF2FE00A6F0FF0086F2
                FE0088F2FD0087F0FE0088F0FF0087EFFE0085EEFF0088EEFF0087EEFF0086EC
                FF0083EAFF0085E9FF007CE7FE007BE7FE007DE7FF007FE7FF00A1E6F5007EE7
                FD007DE7FE007DE6FD00FFE8CB007AE6FE0078E7FC007BE6FF007DE6FF007DE6
                FE007BE6FE0080E5FF007DE5FE007CE5FE007CE4FE007EE5FE007CE5FF0074DD
                FE0072DDFF0075DDFE0073DDFE0076DCFF0073DCFF0074DCFE00BDD8E40075DA
                EC00FFD9A90065CBE00064C9E1005EC4E00052BBE40067B7DD0083B4C800B7B5
                B200B4B0AD0066C582005DACD40000D16E0049ACCC0042A8CC003199CE00319A
                CB003399CE003399CD003597CD0066B066002D92C6002C92C30000AF42002287
                BB002187B8002187BB002489B400288F8D00009F2F00009E2C001275A7006D6D
                6C006767670065666A0003649300646667006567670068666600666765006467
                6500646666006665670065646600007C000002466700114053000B2D62000000
                0000FFFFFF000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000006A6A6A6A6A6A
                6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A006A6A6A6A6A6A4242424242424242
                4242424242426A6A6A006A6A6A6A6A405B5B5B5B5B5B5B5B5B5B5B595C426A6A
                6A006A6A6A6A6A5C3C1A2121212121212121093958426A6A6A006A6A6A6A4054
                08080808080808080808084658426A6A6A006A6A6A6A5C3B0F0F0F0F0F0F0F0F
                0F1818585C426A6A6A006A6A6A4054132A2A2A2A2A2A2A2A2A16476766426A6A
                6A006A6A6A5C3D2F33333333333333333333583869426A6A6A006A6A40540404
                0404040404040404043E55000069416A6A006A6A5C5353535353535353535353
                535856000000696A6A006A6A6A6A6A53196900003A4550506857004300696A6A
                6A006A6A6A6A6A4E1919690024564550574D000069426A6A6A006A6A6A6A6A4B
                201B1B6900245665574D00695C426A6A6A006A6A6A6A6A4810031E1E6900243A
                24006952526A6A6A6A006A6A6A6A6A443F0E05050569002400696A6A6A6A6A6A
                6A006A6A6A6A6A6A44494C4C4F6A6900696A6A6A6A6A6A6A6A006A6A6A6A6A6A
                6A6A6A6A6A6A6A696A6A6A6A6A6A6A6A6A006A6A6A6A6A6A6A6A6A6A6A6A6A6A
                6A6A6A6A6A6A6A6A6A00}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_importClick
            end
            object bt_clear: TSpeedButton
              Left = 5
              Top = 77
              Width = 79
              Height = 19
              Hint = 'Limpar logomarca'
              Caption = 'Limpar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                56010000424D5601000000000000560000002800000010000000100000000100
                08000000000000010000120B0000120B00000800000000000000FFFFFF0000FF
                FF000000FF000000990000000000FFFFFF000000000000000000000000000000
                0000000000000000000000020004040404040404040404040202000202040100
                0100010001000102020000000202000100010001000102030000000000030200
                0100010001020204000000000004020200010001020201040000000000040102
                0200010202010004000000000004000102020202010001040000000000040100
                0102020200010004000000000004000100020202020001040000000000040100
                0202010002020004000000000004000202010001040202040000000000040202
                0100010004010203000000000003020100010001040404020200000002020404
                0404040404040000020200020200000000000000000000000002}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_clearClick
            end
            object lbcb1: TLabeledEdit
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
            object lbcb2: TLabeledEdit
              Left = 8
              Top = 144
              Width = 304
              Height = 20
              EditLabel.Width = 108
              EditLabel.Height = 12
              EditLabel.Caption = 'Nome do respons'#225'vel'
              MaxLength = 255
              TabOrder = 2
            end
            object lbcb11: TLabeledEdit
              Left = 8
              Top = 372
              Width = 151
              Height = 20
              EditLabel.Width = 53
              EditLabel.Height = 12
              EditLabel.Caption = 'Telefone 1'
              MaxLength = 20
              TabOrder = 11
            end
            object lbcb12: TLabeledEdit
              Left = 160
              Top = 372
              Width = 151
              Height = 20
              EditLabel.Width = 53
              EditLabel.Height = 12
              EditLabel.Caption = 'Telefone 2'
              MaxLength = 20
              TabOrder = 12
            end
            object lbcb13: TLabeledEdit
              Left = 8
              Top = 408
              Width = 151
              Height = 20
              EditLabel.Width = 18
              EditLabel.Height = 12
              EditLabel.Caption = 'Fax'
              MaxLength = 20
              TabOrder = 13
            end
            object lbcb14: TLabeledEdit
              Left = 160
              Top = 408
              Width = 151
              Height = 20
              EditLabel.Width = 36
              EditLabel.Height = 12
              EditLabel.Caption = 'Celular'
              MaxLength = 20
              TabOrder = 14
            end
            object lbcb15: TLabeledEdit
              Left = 8
              Top = 447
              Width = 246
              Height = 20
              EditLabel.Width = 47
              EditLabel.Height = 12
              EditLabel.Caption = 'Endere'#231'o'
              MaxLength = 255
              TabOrder = 15
            end
            object lbcb16: TLabeledEdit
              Left = 255
              Top = 447
              Width = 55
              Height = 20
              EditLabel.Width = 39
              EditLabel.Height = 12
              EditLabel.Caption = 'N'#250'mero'
              MaxLength = 11
              TabOrder = 16
              OnKeyPress = lbcb16KeyPress
            end
            object lbcb17: TLabeledEdit
              Left = 8
              Top = 485
              Width = 304
              Height = 20
              EditLabel.Width = 69
              EditLabel.Height = 12
              EditLabel.Caption = 'Complemento'
              MaxLength = 255
              TabOrder = 17
            end
            object lbcb18: TComboBox
              Left = 8
              Top = 523
              Width = 249
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 18
              OnChange = lbcb18Change
            end
            object lbcb19: TLabeledEdit
              Left = 259
              Top = 523
              Width = 51
              Height = 20
              TabStop = False
              Color = 16119285
              EditLabel.Width = 14
              EditLabel.Height = 12
              EditLabel.Caption = 'UF'
              MaxLength = 2
              ReadOnly = True
              TabOrder = 19
            end
            object lbcb20: TLabeledEdit
              Left = 8
              Top = 560
              Width = 233
              Height = 20
              EditLabel.Width = 22
              EditLabel.Height = 12
              EditLabel.Caption = 'CEP'
              MaxLength = 9
              TabOrder = 20
              OnKeyPress = lbcb20KeyPress
            end
            object lbcb21: TMemo
              Left = 8
              Top = 601
              Width = 304
              Height = 93
              ScrollBars = ssBoth
              TabOrder = 21
            end
            object lbcb9: TLabeledEdit
              Left = 8
              Top = 299
              Width = 304
              Height = 20
              EditLabel.Width = 32
              EditLabel.Height = 12
              EditLabel.Caption = 'e-mail'
              MaxLength = 255
              TabOrder = 9
            end
            object lbcb10: TDateTimePicker
              Left = 8
              Top = 335
              Width = 303
              Height = 20
              Date = 38239.881269664350000000
              Time = 38239.881269664350000000
              TabOrder = 10
            end
            object lbcb7: TLabeledEdit
              Left = 9
              Top = 261
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 7
              OnChange = lbcb7Change
              OnKeyPress = lbcb7KeyPress
            end
            object lbcb8: TComboBox
              Left = 74
              Top = 261
              Width = 239
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 8
              OnChange = lbcb8Change
            end
            object lbcb3: TLabeledEdit
              Left = 9
              Top = 181
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 3
              OnChange = lbcb3Change
              OnKeyPress = lbcb3KeyPress
            end
            object lbcb4: TComboBox
              Left = 74
              Top = 181
              Width = 239
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 4
              OnChange = lbcb4Change
            end
            object lbcb5: TLabeledEdit
              Left = 9
              Top = 221
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 5
              OnChange = lbcb5Change
              OnKeyPress = lbcb5KeyPress
            end
            object lbcb6: TComboBox
              Left = 74
              Top = 221
              Width = 239
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 6
              OnChange = lbcb6Change
            end
            object Panel7: TPanel
              Left = 96
              Top = 43
              Width = 214
              Height = 83
              BevelInner = bvLowered
              Caption = 'Logomarca'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object swf_logo: TShockwaveFlash
                Left = 2
                Top = 2
                Width = 210
                Height = 79
                Align = alClient
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                Visible = False
                ControlData = {
                  6755665510070000B41500002A08000008000200000000000800000000000800
                  0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                  08000A0000004800690067006800000008000200000000000B00FFFF08000200
                  0000000008000E00000061006C00770061007900730000000800100000005300
                  68006F00770041006C006C0000000B0000000B00000008000200000000000800
                  02000000000008000200000000000D0000000000000000000000000000000000
                  0B0001000B000000080000000000030000000000}
              end
            end
          end
        end
        object ToolBar3: TToolBar
          Left = 2
          Top = 541
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
          object bt_prior2: TSpeedButton
            Left = 0
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
            Left = 24
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
          object bt_new2: TSpeedButton
            Left = 48
            Top = 2
            Width = 90
            Height = 22
            Hint = 'Incluir novo registro'
            Caption = 'Novo'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E020000424D9E02000000000000360100002800000012000000120000000100
              08000000000068010000120B0000120B00004000000000000000835C36005A85
              AD0000FF0000F2D4B100E1C9AB004E7BA60000CCFF009966660082FEFE009999
              9900EDF1F100CCFFFF008A633D00AE885E008DA6BD003253760033CCFF00FDF1
              DD00E1C7A300FBE9C400FEFCF100C6A584009E794D00B0B6B500FEF8EF00FDF0
              D700E4D1BC00956E4700FEF6E600A5835F00FFFFFF00B8956A00FCEED00042D5
              FE00E9D8C300E2D3B900FFF7DE00FEFAF600E4D3B900816039008B664000B18A
              63008CAAC500537CA50095744D008F6B4300FEFCF700F4D3B200E9D8BD00FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000313131313131
              3131313131313131313131310000313131313131090909090909090909093131
              00003131313131161B1B2D282828272700093131000031313131311D11111120
              2013131300093131000031313131311D1C111111202020130009313100003131
              3131310D1C1C1C111120202000093131000031313131312918181C1C11111120
              0009313100003131313131291818181C1C111111000931310000313131313107
              252518181C222204000931310000310605311E072E0E0B182315152C00093131
              0000310A062B0807010B2E2E2614141200093131000031310B06100F081E1E2E
              1A252F00093131310000312B2B101E100101012A1A0300093131313100001E1E
              101E1E1E10080B1E1F1F173131313131000031312B101E100605313131313131
              313131310000312B0831212B08062B3131313131313131310000310A31311E2B
              310A063131313131313131310000313131311E31313131313131313131313131
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_new2Click
          end
          object bt_del2: TSpeedButton
            Left = 138
            Top = 2
            Width = 90
            Height = 22
            Hint = 'Excluir registro selecionado'
            Caption = 'Excluir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E020000424D9E02000000000000360100002800000012000000120000000100
              08000000000068010000120B0000120B0000400000000000000012148A0000FF
              0000999999003130E4002E2CC5008485F3005B5BEF004240ED002326DF009495
              F7006865F1003C3CCE005354F80017128B003B3BE7007976FB007372F7006668
              F6003C3CEE00151587003333CC009B9DF5008588F100494AEE006869F7001115
              8B003A42E6005D5FF3003F3ECA008D8FF50017158C002826DE003131C3009599
              F8004447EF006866F5009999FF00FFFFFF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000252525252525
              2525252525252525252525250000252525252525252525252525252525252525
              00002525252502132525252525250200252525250000252525021E101F252525
              250213180425252500002525021910081F032525020D230E0920252500002525
              250213061F0303021311120920252525000025252525021306030E0011120920
              252525250000252525252502131B0E0E071D2025252525250000252525252525
              02001112072025252525252500002525252525021E11120A2222142525252525
              000025252525021E110E05141017170B2525252500002525250200110E052002
              00100C0C0B252525000025250219100E1604252502130F0C210B252500002525
              25021E1520252525250213211C252525000025252525021E2525252525250219
              2525252500002525252525252525252525252525252525250000252525252525
              2525252525252525252525250000252525252525252525252525252525252525
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_del2Click
          end
          object bt_save2: TSpeedButton
            Left = 228
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
    object TabSheet4: TTabSheet
      Caption = 'Menus'
      ImageIndex = 3
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 324
        Align = alClient
        Caption = 'Ficha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ToolBar4: TToolBar
          Left = 2
          Top = 293
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 0
          object bt_prior4: TSpeedButton
            Left = 0
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
            OnClick = bt_prior4Click
          end
          object bt_next5: TSpeedButton
            Left = 24
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
            OnClick = bt_next5Click
          end
          object bt_new4: TSpeedButton
            Left = 48
            Top = 2
            Width = 90
            Height = 22
            Hint = 'Incluir novo registro'
            Caption = 'Novo'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E020000424D9E02000000000000360100002800000012000000120000000100
              08000000000068010000120B0000120B00004000000000000000835C36005A85
              AD0000FF0000F2D4B100E1C9AB004E7BA60000CCFF009966660082FEFE009999
              9900EDF1F100CCFFFF008A633D00AE885E008DA6BD003253760033CCFF00FDF1
              DD00E1C7A300FBE9C400FEFCF100C6A584009E794D00B0B6B500FEF8EF00FDF0
              D700E4D1BC00956E4700FEF6E600A5835F00FFFFFF00B8956A00FCEED00042D5
              FE00E9D8C300E2D3B900FFF7DE00FEFAF600E4D3B900816039008B664000B18A
              63008CAAC500537CA50095744D008F6B4300FEFCF700F4D3B200E9D8BD00FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000313131313131
              3131313131313131313131310000313131313131090909090909090909093131
              00003131313131161B1B2D282828272700093131000031313131311D11111120
              2013131300093131000031313131311D1C111111202020130009313100003131
              3131310D1C1C1C111120202000093131000031313131312918181C1C11111120
              0009313100003131313131291818181C1C111111000931310000313131313107
              252518181C222204000931310000310605311E072E0E0B182315152C00093131
              0000310A062B0807010B2E2E2614141200093131000031310B06100F081E1E2E
              1A252F00093131310000312B2B101E100101012A1A0300093131313100001E1E
              101E1E1E10080B1E1F1F173131313131000031312B101E100605313131313131
              313131310000312B0831212B08062B3131313131313131310000310A31311E2B
              310A063131313131313131310000313131311E31313131313131313131313131
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_new4Click
          end
          object bt_del4: TSpeedButton
            Left = 138
            Top = 2
            Width = 90
            Height = 22
            Hint = 'Excluir registro selecionado'
            Caption = 'Excluir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E020000424D9E02000000000000360100002800000012000000120000000100
              08000000000068010000120B0000120B0000400000000000000012148A0000FF
              0000999999003130E4002E2CC5008485F3005B5BEF004240ED002326DF009495
              F7006865F1003C3CCE005354F80017128B003B3BE7007976FB007372F7006668
              F6003C3CEE00151587003333CC009B9DF5008588F100494AEE006869F7001115
              8B003A42E6005D5FF3003F3ECA008D8FF50017158C002826DE003131C3009599
              F8004447EF006866F5009999FF00FFFFFF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000252525252525
              2525252525252525252525250000252525252525252525252525252525252525
              00002525252502132525252525250200252525250000252525021E101F252525
              250213180425252500002525021910081F032525020D230E0920252500002525
              250213061F0303021311120920252525000025252525021306030E0011120920
              252525250000252525252502131B0E0E071D2025252525250000252525252525
              02001112072025252525252500002525252525021E11120A2222142525252525
              000025252525021E110E05141017170B2525252500002525250200110E052002
              00100C0C0B252525000025250219100E1604252502130F0C210B252500002525
              25021E1520252525250213211C252525000025252525021E2525252525250219
              2525252500002525252525252525252525252525252525250000252525252525
              2525252525252525252525250000252525252525252525252525252525252525
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_del4Click
          end
          object bt_save4: TSpeedButton
            Left = 228
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
            OnClick = bt_save4Click
          end
        end
        object DBGrid3: TDBGrid
          Left = 2
          Top = 14
          Width = 333
          Height = 190
          Hint = 'Duplo clique para incluir m'#243'dulo'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          OnKeyDown = DBGrid3KeyDown
          OnKeyUp = DBGrid3KeyUp
        end
        object Panel8: TPanel
          Left = 2
          Top = 204
          Width = 333
          Height = 89
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object bt_clear4: TSpeedButton
            Left = 167
            Top = 37
            Width = 24
            Height = 19
            Hint = 'Limpar icone'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              56010000424D5601000000000000560000002800000010000000100000000100
              08000000000000010000120B0000120B00000800000000000000FFFFFF0000FF
              FF000000FF000000990000000000FFFFFF000000000000000000000000000000
              0000000000000000000000020004040404040404040404040202000202040100
              0100010001000102020000000202000100010001000102030000000000030200
              0100010001020204000000000004020200010001020201040000000000040102
              0200010202010004000000000004000102020202010001040000000000040100
              0102020200010004000000000004000100020202020001040000000000040100
              0202010002020004000000000004000202010001040202040000000000040202
              0100010004010203000000000003020100010001040404020200000002020404
              0404040404040000020200020200000000000000000000000002}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_clear4Click
          end
          object bt_import4: TSpeedButton
            Left = 167
            Top = 16
            Width = 24
            Height = 21
            Hint = 'Importar icone'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              E6030000424DE603000000000000360200002800000017000000120000000100
              080000000000B0010000120B0000120B00008000000000000000FFFFFF00D0FA
              FF00CEFBFE00CEFAFE00B7FCFF00CDFAFD0092FAFF0091FAFF0092F9FF0091F9
              FF0096F8FF0091F9FE0094F9FE0090F8FD00A9F1FF008AF2FE00A6F0FF0086F2
              FE0088F2FD0087F0FE0088F0FF0087EFFE0085EEFF0088EEFF0087EEFF0086EC
              FF0083EAFF0085E9FF007CE7FE007BE7FE007DE7FF007FE7FF00A1E6F5007EE7
              FD007DE7FE007DE6FD00FFE8CB007AE6FE0078E7FC007BE6FF007DE6FF007DE6
              FE007BE6FE0080E5FF007DE5FE007CE5FE007CE4FE007EE5FE007CE5FF0074DD
              FE0072DDFF0075DDFE0073DDFE0076DCFF0073DCFF0074DCFE00BDD8E40075DA
              EC00FFD9A90065CBE00064C9E1005EC4E00052BBE40067B7DD0083B4C800B7B5
              B200B4B0AD0066C582005DACD40000D16E0049ACCC0042A8CC003199CE00319A
              CB003399CE003399CD003597CD0066B066002D92C6002C92C30000AF42002287
              BB002187B8002187BB002489B400288F8D00009F2F00009E2C001275A7006D6D
              6C006767670065666A0003649300646667006567670068666600666765006467
              6500646666006665670065646600007C000002466700114053000B2D62000000
              0000FFFFFF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000006A6A6A6A6A6A
              6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A006A6A6A6A6A6A4242424242424242
              4242424242426A6A6A006A6A6A6A6A405B5B5B5B5B5B5B5B5B5B5B595C426A6A
              6A006A6A6A6A6A5C3C1A2121212121212121093958426A6A6A006A6A6A6A4054
              08080808080808080808084658426A6A6A006A6A6A6A5C3B0F0F0F0F0F0F0F0F
              0F1818585C426A6A6A006A6A6A4054132A2A2A2A2A2A2A2A2A16476766426A6A
              6A006A6A6A5C3D2F33333333333333333333583869426A6A6A006A6A40540404
              0404040404040404043E55000069416A6A006A6A5C5353535353535353535353
              535856000000696A6A006A6A6A6A6A53196900003A4550506857004300696A6A
              6A006A6A6A6A6A4E1919690024564550574D000069426A6A6A006A6A6A6A6A4B
              201B1B6900245665574D00695C426A6A6A006A6A6A6A6A4810031E1E6900243A
              24006952526A6A6A6A006A6A6A6A6A443F0E05050569002400696A6A6A6A6A6A
              6A006A6A6A6A6A6A44494C4C4F6A6900696A6A6A6A6A6A6A6A006A6A6A6A6A6A
              6A6A6A6A6A6A6A696A6A6A6A6A6A6A6A6A006A6A6A6A6A6A6A6A6A6A6A6A6A6A
              6A6A6A6A6A6A6A6A6A00}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_import4Click
          end
          object Label9: TLabel
            Left = 158
            Top = 2
            Width = 29
            Height = 12
            Caption = 'Icone'
            Transparent = True
            Layout = tlCenter
          end
          object bt_acima4: TSpeedButton
            Left = 283
            Top = 2
            Width = 24
            Height = 21
            Hint = 'Mover para cima'
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
              1414141414172D1522320A13312714141414141414142731130A010D2B141414
              141414141414142B0D01291B1733331414141414143333171B29292420063333
              06060606333306202429011229181833331818333318182912010A2A0B252525
              333333332525250B2A0A3215211F050505333305050505211532320223080909
              09090909090908230232323216070F1018181818100F07163232323232300C04
              0F14140F040C30323232323232322C0323000023032C32323232}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_acima4Click
          end
          object bt_abaixo4: TSpeedButton
            Left = 307
            Top = 2
            Width = 24
            Height = 21
            Hint = 'Mover para baixo'
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
              1414141414172D1522320A13312714141433331414142731130A010D2B141414
              333333331414142B0D01291B1714143333141433331414171B29292420063333
              06060606333306202429011229333318181818181833332912010A2A0B252525
              252525252525250B2A0A3215211F050505050505050505211532320223080909
              09090909090908230232323216070F1018181818100F07163232323232300C04
              0F14140F040C30323232323232322C0323000023032C32323232}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_abaixo4Click
          end
          object SpeedButton1: TSpeedButton
            Left = 259
            Top = 2
            Width = 24
            Height = 21
            Hint = 'Reorganizar'
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
              1414141414172D1522320A13312714143314141414142731130A010D2B141414
              333314141414142B0D01291B1714141433333314141414171B29292420060606
              33333333060606202429011229181818333333331818182912010A2A0B252525
              333333252525250B2A0A3215211F050533330505050505211532320223080909
              33090909090908230232323216070F1018181818100F07163232323232300C04
              0F14140F040C30323232323232322C0323000023032C32323232}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object lbce1: TLabeledEdit
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
          object Panel9: TPanel
            Left = 190
            Top = 1
            Width = 67
            Height = 56
            BevelInner = bvLowered
            Caption = '<nulo>'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object swf_logo4: TShockwaveFlash
              Left = 2
              Top = 2
              Width = 63
              Height = 52
              Align = alClient
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              Visible = False
              ControlData = {
                6755665510070000830600006005000008000200000000000800000000000800
                0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                08000A0000004800690067006800000008000200000000000B00FFFF08000200
                0000000008000E00000061006C00770061007900730000000800100000005300
                68006F00770041006C006C0000000B0000000B00000008000200000000000800
                02000000000008000200000000000D0000000000000000000000000000000000
                0B0001000B000000080000000000030000000000}
            end
          end
          object lbce2: TLabeledEdit
            Left = 8
            Top = 62
            Width = 321
            Height = 20
            EditLabel.Width = 51
            EditLabel.Height = 12
            EditLabel.Caption = 'Descri'#231#227'o'
            MaxLength = 255
            TabOrder = 2
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'N'#237'veis de acesso'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 572
        Align = alClient
        Caption = 'M'#243'dulos  dispon'#237'veis para o website:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ToolBar5: TToolBar
          Left = 2
          Top = 541
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 0
          object bt_prior3: TSpeedButton
            Left = 0
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
            OnClick = bt_prior3Click
          end
          object bt_next3: TSpeedButton
            Left = 24
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
            OnClick = bt_next3Click
          end
          object bt_automdl: TSpeedButton
            Left = 48
            Top = 2
            Width = 129
            Height = 22
            Hint = 'Autom'#225'tico'
            Caption = 'Copiar Menu'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              1E020000424D1E02000000000000B60000002800000012000000120000000100
              08000000000068010000120B0000120B00002000000000000000FFFFFF0066FF
              FF0033FFFF0033CCCC00B2B2B20090A9AD003399CC0033999900009999008686
              860077777700008080005555550000333300800000000808080000000000FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000111111111111
              111111080B0D100F0F0D0B1100001111111111111111080B010307070B08080B
              000011111111111111110D03000307070B08060D000011111111111111110D03
              000307070B08060F000011111111111111110D03000303070707061000001111
              1111111111110D030E0E0E0E030806100000110A0A0A0A0A0A0A0D07050E0E0E
              03080610000000000000000000000D070E0E0E0E030806100000000C0C0C0C0C
              0C040D0E0E0E010E01030810000000000000000004040E0E0E00000000000110
              0000000C0C0C0C0C090E0E0E000101010102070B00000000000000000E0E0E00
              0B0D0D0D0D0B0B110000000C0C0C0C0C040E000000000A111111111100000000
              000000000000000000000A11111111110000000C0C0C0C0C0C0C0C0C00000A11
              1111111100000000000000000000000000000A11111111110000000C0C0C0C0C
              0C0C0C0C00000A11111111110000000000000000000000000000111111111111
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_automdlClick
          end
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 112
          Width = 333
          Height = 429
          Hint = 'Duplo clique para incluir m'#243'dulo'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
          OnKeyDown = DBGrid2KeyDown
          OnKeyUp = DBGrid2KeyUp
        end
        object Panel6: TPanel
          Left = 2
          Top = 14
          Width = 333
          Height = 98
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 2
          object Label13: TLabel
            Left = 7
            Top = 2
            Width = 31
            Height = 12
            Caption = 'Menu:'
          end
          object Label10: TLabel
            Left = 7
            Top = 34
            Width = 46
            Height = 12
            Caption = 'M'#243'dulos:'
          end
          object ComboBox_menu: TComboBox
            Left = 2
            Top = 15
            Width = 330
            Height = 20
            ItemHeight = 12
            TabOrder = 0
            OnChange = ComboBox_menuChange
          end
          object mod_combo: TComboBox
            Left = 3
            Top = 47
            Width = 329
            Height = 20
            Hint = 'Selecione o m'#243'dulo e clique em adiocionar'
            ItemHeight = 12
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object ToolBar6: TToolBar
            Left = 186
            Top = 69
            Width = 147
            Height = 25
            Align = alNone
            ButtonHeight = 21
            Caption = 'ToolBar1'
            EdgeBorders = []
            TabOrder = 2
            TabStop = True
            object mod_add: TSpeedButton
              Left = 0
              Top = 2
              Width = 24
              Height = 21
              Hint = 'Adicionar m'#243'dulo'
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
                1433331414172D1522320A13312714141433331414142731130A010D2B141414
                143333141414142B0D01291B1714141414333314141414171B29292420333333
                33333333333333202429011229333333333333333333332912010A2A0B252525
                253333252525250B2A0A3215211F050505333305050505211532320223080909
                09333309090908230232323216070F1018333318100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = mod_addClick
            end
            object mod_del: TSpeedButton
              Left = 24
              Top = 2
              Width = 24
              Height = 21
              Hint = 'Excluir m'#243'dulo'
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
                1414141414172D1522320A13312714141414141414142731130A010D2B141414
                141414141414142B0D01291B1714141414141414141414171B29292420333333
                33333333333333202429011229333333333333333333332912010A2A0B252525
                252525252525250B2A0A3215211F050505050505050505211532320223080909
                09090909090908230232323216070F1018181818100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = mod_delClick
            end
            object mod_clear: TSpeedButton
              Left = 48
              Top = 2
              Width = 24
              Height = 21
              Hint = 'Limpar todos os itens'
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
                1414141414172D1522320A13312714141414141414142731130A010D2B141433
                333333333314142B0D01291B1714143333333333331414171B29292420060633
                33333333330606202429011229181833333333333318182912010A2A0B252533
                333333333325250B2A0A3215211F053333333333330505211532320223080909
                09090909090908230232323216070F1018181818100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = mod_clearClick
            end
            object SpeedButton2: TSpeedButton
              Left = 72
              Top = 2
              Width = 24
              Height = 21
              Hint = 'Reorganizar'
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
                1414141414172D1522320A13312714143314141414142731130A010D2B141414
                333314141414142B0D01291B1714141433333314141414171B29292420060606
                33333333060606202429011229181818333333331818182912010A2A0B252525
                333333252525250B2A0A3215211F050533330505050505211532320223080909
                33090909090908230232323216070F1018181818100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object bt_acima3: TSpeedButton
              Left = 96
              Top = 2
              Width = 24
              Height = 21
              Hint = 'Mover para cima'
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
                1414141414172D1522320A13312714141414141414142731130A010D2B141414
                141414141414142B0D01291B1733331414141414143333171B29292420063333
                06060606333306202429011229181833331818333318182912010A2A0B252525
                333333332525250B2A0A3215211F050505333305050505211532320223080909
                09090909090908230232323216070F1018181818100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_acima3Click
            end
            object bt_abaixo3: TSpeedButton
              Left = 120
              Top = 2
              Width = 24
              Height = 21
              Hint = 'Mover para baixo'
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
                1414141414172D1522320A13312714141433331414142731130A010D2B141414
                333333331414142B0D01291B1714143333141433331414171B29292420063333
                06060606333306202429011229333318181818181833332912010A2A0B252525
                252525252525250B2A0A3215211F050505050505050505211532320223080909
                09090909090908230232323216070F1018181818100F07163232323232300C04
                0F14140F040C30323232323232322C0323000023032C32323232}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_abaixo3Click
            end
          end
          object Edit_mod: TEdit
            Left = 4
            Top = 74
            Width = 178
            Height = 20
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 16119285
            ReadOnly = True
            TabOrder = 3
          end
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
    Left = 320
    Top = 336
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 349
    Top = 336
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
end
