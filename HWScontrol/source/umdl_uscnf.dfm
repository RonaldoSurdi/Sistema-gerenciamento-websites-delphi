object mdl_uscnf: Tmdl_uscnf
  Left = 194
  Top = 139
  Width = 743
  Height = 426
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 369
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
      Width = 374
      Height = 361
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 374
      Height = 361
      Align = alClient
      Caption = 'Lista de registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel_search: TPanel
        Left = 2
        Top = 14
        Width = 370
        Height = 68
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
        object Label1: TLabel
          Left = 8
          Top = 32
          Width = 44
          Height = 12
          Alignment = taRightJustify
          Caption = 'Website:'
          Layout = tlCenter
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
        object ComboBox_web: TComboBox
          Left = 4
          Top = 44
          Width = 346
          Height = 20
          Style = csDropDownList
          ItemHeight = 12
          TabOrder = 2
          OnChange = ComboBox_webChange
        end
      end
      object ToolBar2: TToolBar
        Left = 2
        Top = 330
        Width = 370
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
        object Lb_countreg2: TLabel
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
      object DBGrid2: TDBGrid
        Left = 2
        Top = 82
        Width = 370
        Height = 248
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
        OnKeyDown = DBGrid2KeyDown
        OnKeyUp = DBGrid2KeyUp
      end
    end
  end
  object PageControl2: TPageControl
    Left = 382
    Top = 0
    Width = 345
    Height = 369
    ActivePage = TabSheet2
    Align = alRight
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Cadastro de contas'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 338
        Align = alClient
        Caption = 'Dados cadastrais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ScrollBox3: TScrollBox
          Left = 2
          Top = 14
          Width = 333
          Height = 293
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 316
            Height = 292
            BevelOuter = bvNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lbcp_dtcad2: TLabel
              Left = 152
              Top = 21
              Width = 161
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Layout = tlCenter
            end
            object Label27: TLabel
              Left = 225
              Top = 6
              Width = 86
              Height = 12
              Alignment = taRightJustify
              Caption = 'Date de cadastro'
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
            object xcpw2: TLabeledEdit
              Left = 9
              Top = 66
              Width = 304
              Height = 20
              EditLabel.Width = 33
              EditLabel.Height = 12
              EditLabel.Caption = 'Nome:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              MaxLength = 255
              TabOrder = 1
            end
            object xcpw3: TLabeledEdit
              Left = 12
              Top = 103
              Width = 304
              Height = 20
              EditLabel.Width = 36
              EditLabel.Height = 12
              EditLabel.Caption = 'e-mail:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              MaxLength = 255
              TabOrder = 2
            end
            object xcpw5: TLabeledEdit
              Left = 12
              Top = 177
              Width = 149
              Height = 20
              EditLabel.Width = 43
              EditLabel.Height = 12
              EditLabel.Caption = 'Usu'#225'rio:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              MaxLength = 255
              TabOrder = 4
            end
            object xcpw4: TLabeledEdit
              Left = 12
              Top = 140
              Width = 304
              Height = 20
              EditLabel.Width = 79
              EditLabel.Height = 12
              EditLabel.Caption = 'Servidor SMTP:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              MaxLength = 255
              TabOrder = 3
            end
            object xcpw6: TLabeledEdit
              Left = 166
              Top = 176
              Width = 149
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'Senha:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              MaxLength = 255
              PasswordChar = '*'
              TabOrder = 5
            end
            object xcpw7: TLabeledEdit
              Left = 12
              Top = 214
              Width = 133
              Height = 20
              EditLabel.Width = 31
              EditLabel.Height = 12
              EditLabel.Caption = 'Porta:'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clBlack
              EditLabel.Font.Height = -9
              EditLabel.Font.Name = 'Verdana'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              MaxLength = 255
              TabOrder = 6
              Text = '25'
            end
            object xcpw8: TCheckBox
              Left = 171
              Top = 214
              Width = 142
              Height = 17
              Caption = 'Usar autentica'#231#227'o'
              Checked = True
              State = cbChecked
              TabOrder = 7
            end
            object xcpw9: TCheckBox
              Left = 14
              Top = 254
              Width = 99
              Height = 17
              Caption = 'Conta Padr'#227'o'
              Checked = True
              State = cbChecked
              TabOrder = 8
            end
          end
        end
        object ToolBar4: TToolBar
          Left = 2
          Top = 307
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
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
          object bt_new2: TSpeedButton
            Left = 56
            Top = 2
            Width = 86
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
            Left = 142
            Top = 2
            Width = 85
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
            Left = 227
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 369
    Width = 727
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
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
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end