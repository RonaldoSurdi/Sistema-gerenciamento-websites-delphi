object adm_online: Tadm_online
  Left = 264
  Top = 172
  Width = 743
  Height = 426
  Color = 16119285
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
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
    Height = 373
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
    object Splitter1: TSplitter
      Left = 431
      Top = 2
      Height = 336
      Align = alRight
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 429
      Height = 336
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
        Width = 425
        Height = 320
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
        OnKeyDown = DBGrid1KeyDown
        OnKeyUp = DBGrid1KeyUp
      end
    end
    object ToolBar2: TToolBar
      Left = 2
      Top = 338
      Width = 727
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
      object lbcp3: TComboBox
        Left = 48
        Top = 3
        Width = 217
        Height = 20
        Style = csDropDownList
        ItemHeight = 12
        MaxLength = 255
        TabOrder = 0
      end
      object bt_atualizar: TSpeedButton
        Left = 265
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
        Left = 368
        Top = 2
        Width = 85
        Height = 22
        Hint = 'Limpar filtro'
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
        Left = 453
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
      object Label5: TLabel
        Left = 556
        Top = 2
        Width = 106
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total de Registros: '
        Layout = tlCenter
      end
      object Lb_countreg: TLabel
        Left = 662
        Top = 2
        Width = 59
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
    object GroupBox1: TGroupBox
      Left = 434
      Top = 2
      Width = 295
      Height = 336
      Align = alRight
      Caption = 'Resolver IP:'
      TabOrder = 2
      object ToolBar1: TToolBar
        Left = 2
        Top = 33
        Width = 291
        Height = 26
        ButtonHeight = 20
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 2
          Width = 4
          Height = 20
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
        end
        object ed_geip: TEdit
          Left = 4
          Top = 2
          Width = 186
          Height = 20
          TabOrder = 0
        end
        object bt_getip: TSpeedButton
          Left = 190
          Top = 2
          Width = 98
          Height = 20
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
      object StatusBar_getip: TStatusBar
        Left = 2
        Top = 315
        Width = 291
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
        Top = 59
        Width = 291
        Height = 256
        Align = alClient
        ItemHeight = 12
        TabOrder = 2
      end
      object ToolBar3: TToolBar
        Left = 2
        Top = 14
        Width = 291
        Height = 19
        ButtonHeight = 17
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 3
        object Label1: TLabel
          Left = 0
          Top = 2
          Width = 105
          Height = 17
          AutoSize = False
          Caption = '  Selecione o tipo:'
          Layout = tlCenter
        end
        object RadioButton_getip1: TRadioButton
          Left = 105
          Top = 2
          Width = 42
          Height = 17
          Caption = 'IP'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadioButton_getip2: TRadioButton
          Left = 147
          Top = 2
          Width = 57
          Height = 17
          Caption = 'Host'
          TabOrder = 1
        end
        object CheckBox_getip: TCheckBox
          Left = 204
          Top = 2
          Width = 82
          Height = 17
          Caption = 'Autom'#225'tico'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 373
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
    Left = 581
    Top = 85
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end