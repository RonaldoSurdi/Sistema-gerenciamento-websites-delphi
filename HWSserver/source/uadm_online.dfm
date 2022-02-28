object adm_online: Tadm_online
  Left = 264
  Top = 172
  BorderStyle = bsNone
  ClientHeight = 392
  ClientWidth = 735
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
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
    Width = 735
    Height = 355
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 382
      Height = 347
      Align = alClient
      Caption = 'Lista de registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 14
        Width = 378
        Height = 302
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
      end
      object ToolBar2: TToolBar
        Left = 2
        Top = 316
        Width = 378
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 1
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
    object GroupBox1: TGroupBox
      Left = 384
      Top = 2
      Width = 345
      Height = 347
      Align = alRight
      Caption = 'Ficha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 14
        Width = 341
        Height = 302
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 324
          Height = 294
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
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
          object lbcp4: TComboBox
            Left = 8
            Top = 139
            Width = 310
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 6
          end
          object lbcp5: TComboBox
            Left = 7
            Top = 177
            Width = 310
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 8
          end
          object lbcp2: TComboBox
            Left = 7
            Top = 65
            Width = 310
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 2
          end
          object lbcp3: TComboBox
            Left = 7
            Top = 102
            Width = 310
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 4
          end
          object CheckBox1: TCheckBox
            Left = 8
            Top = 48
            Width = 73
            Height = 17
            Caption = 'Entidades'
            TabOrder = 1
            OnClick = CheckBox1Click
          end
          object CheckBox2: TCheckBox
            Left = 8
            Top = 85
            Width = 73
            Height = 17
            Caption = 'Websites'
            TabOrder = 3
            OnClick = CheckBox2Click
          end
          object CheckBox4: TCheckBox
            Left = 8
            Top = 160
            Width = 73
            Height = 17
            Caption = 'Estados'
            TabOrder = 7
            OnClick = CheckBox4Click
          end
          object CheckBox3: TCheckBox
            Left = 8
            Top = 122
            Width = 73
            Height = 17
            Caption = 'Cidades'
            TabOrder = 5
            OnClick = CheckBox3Click
          end
        end
      end
      object ToolBar1: TToolBar
        Left = 2
        Top = 316
        Width = 341
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
        object bt_atualizar: TSpeedButton
          Left = 48
          Top = 2
          Width = 103
          Height = 22
          Hint = 'Atualizar dados'
          Caption = 'Atualizar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            9E030000424D9E03000000000000360200002800000012000000120000000100
            08000000000068010000120B0000120B0000800000000000000099333300E5C0
            AA0000FF0000B9966B00B15F5400FDF6E700BA936D00AD463300F8ECD000DCA3
            8900F7E4B900C47155008E69430099999900F1D5B300815F3400BD583200DDCB
            B400F1E3CD00A7845C00D0845A00FFFFFF00B0B5B600DF987600E7B39500F8EE
            D600835E3800B14C3300F8E1BB009E7B5300FCEAD300FFFAF500CB836B00BE73
            6300A84A4500F9EDE100AF8B6300C3A88600AB514600936E4800F5E6C5009C73
            5200CC663300DEBBA100DFAE9400BA9A6F00EADFCB008A653F00FEF0DD00EFCF
            AC00FCEACD00FCECCF00F9FDF800A33C3300CD927F00FFF9EE00916E4300C37E
            6D00B5967500CC8F7500CF7E590097704900C25F3300FFEFD600BC513500A786
            6500AB463700F7E8DF00E0AF9900F7DEB500B38F6700E2C8AA00FBF4E100A27B
            5500BB967000D8A69200D68D6D00F6E5BE00FDEAC90086613B00F6E6CF00BE9A
            7200B6543200AC493500AF875D00D6845A00F7F7DE00E8BCA500FFFCF800FFFF
            EF00F0D0B300F7D6B500C35A3100E6B69E00BD736B00E7B09100ECDECB00A542
            310093704500B59C7300E7C9AE00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000006565650D0D0D
            0D0D0D0D0D0D0D0D0D0D0D65000065651D3838272727270C0C2F2F4F4F0F0D65
            000065651D333333333333332828280A0A4F0D65000065651D08080808081E1E
            4E28284D4D1A0D65000065654933335A4B212604365A4D4D4D1A0D6500006565
            4908642053533535355E311C1C1A0D6500006565491909400B44502B39222828
            4D4F0D650000656513303C105D30303032323228282F0D650000656554482A3E
            19484830013B424E4E0C0D65000065652405552A57050540401B070832270D65
            0000656546375F2A140123573C521B19193D0D6500006565461F43172A2A2A3E
            5C4C5219193D0D65000065654A1F1F4318552A142C1F4312473D0D6500006565
            4A343434585858585811253A41130D65000065655115151515151534342E1F0E
            490D656500006565511515151515151515600E240D6565650000656551515151
            5151515106060616656565650000656565656565656565656565656565656565
            0000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_atualizarClick
        end
        object bt_limpar: TSpeedButton
          Left = 151
          Top = 2
          Width = 85
          Height = 22
          Hint = 'Exibir todos os registros'
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
          OnClick = bt_limparClick
        end
        object bt_executa: TSpeedButton
          Left = 236
          Top = 2
          Width = 103
          Height = 22
          Hint = 'Filtrar registros '
          Caption = 'Executar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_executaClick
        end
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
    object lb_title: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 92
      Height = 13
      Cursor = crHandPoint
      Hint = 'Website'
      Alignment = taCenter
      Caption = 'Usu'#225'rios on-line'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lb_titleClick
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
    Top = 375
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
    Left = 621
    Top = 45
  end
end
