object mdl_lstcontatos: Tmdl_lstcontatos
  Left = 227
  Top = 238
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
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 392
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
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 727
      Height = 384
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Lista de registros'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 383
          Height = 354
          Align = alClient
          Caption = 'Lista de '#225'lbuns:'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 378
            Top = 14
            Height = 338
            Align = alRight
            OnMoved = Splitter1Moved
          end
          object Lb_countreg1: TLabel
            Left = 707
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object Panel12: TPanel
            Left = 2
            Top = 14
            Width = 376
            Height = 338
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object ToolBar_web: TToolBar
              Left = 0
              Top = 0
              Width = 376
              Height = 24
              ButtonHeight = 20
              EdgeBorders = []
              TabOrder = 0
              object Label7: TLabel
                Left = 0
                Top = 2
                Width = 50
                Height = 20
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Website:'
                Layout = tlCenter
              end
              object ComboBox_web: TComboBox
                Left = 50
                Top = 2
                Width = 320
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                TabOrder = 0
                OnChange = ComboBox_webChange
              end
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 24
              Width = 376
              Height = 314
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
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnCellClick = DBGrid1CellClick
              OnKeyDown = DBGrid1KeyDown
              OnKeyUp = DBGrid1KeyUp
              OnMouseDown = DBGrid1MouseDown
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 383
          Top = 0
          Width = 336
          Height = 354
          Align = alRight
          Caption = 'Cadastro do contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object ScrollBox2: TScrollBox
            Left = 2
            Top = 14
            Width = 332
            Height = 309
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object Panel6: TPanel
              Left = 0
              Top = -1
              Width = 315
              Height = 601
              BevelOuter = bvNone
              Color = 16119285
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label1: TLabel
                Left = 9
                Top = 446
                Width = 67
                Height = 12
                Caption = 'Observa'#231#245'es'
              end
              object Label23: TLabel
                Left = 76
                Top = 370
                Width = 36
                Height = 12
                Caption = 'Fun'#231#227'o'
              end
              object Label25: TLabel
                Left = 76
                Top = 330
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
                Left = 188
                Top = 145
                Width = 88
                Height = 22
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
                Left = 277
                Top = 145
                Width = 34
                Height = 22
                Hint = 'Limpar logomarca'
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
              object lb_razaosocial: TLabel
                Left = 306
                Top = 0
                Width = 4
                Height = 13
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 12615680
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Label_size1: TLabel
                Left = 286
                Top = 44
                Width = 22
                Height = 12
                Alignment = taRightJustify
                Caption = '0 kb'
              end
              object Label5: TLabel
                Left = 9
                Top = 134
                Width = 101
                Height = 12
                Alignment = taRightJustify
                Caption = 'Selecione o modelo:'
              end
              object Label18: TLabel
                Left = 8
                Top = 247
                Width = 163
                Height = 12
                Caption = 'Selecione o tipo de caixa postal:'
              end
              object Label6: TLabel
                Left = 14
                Top = 286
                Width = 111
                Height = 12
                Caption = 'Publicar contato para:'
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
                Top = 183
                Width = 304
                Height = 20
                EditLabel.Width = 29
                EditLabel.Height = 12
                EditLabel.Caption = 'Nome'
                MaxLength = 255
                TabOrder = 3
              end
              object lbcb9: TLabeledEdit
                Left = 8
                Top = 422
                Width = 151
                Height = 20
                EditLabel.Width = 53
                EditLabel.Height = 12
                EditLabel.Caption = 'Telefone 1'
                MaxLength = 20
                TabOrder = 10
              end
              object lbcb10: TLabeledEdit
                Left = 160
                Top = 422
                Width = 151
                Height = 20
                EditLabel.Width = 36
                EditLabel.Height = 12
                EditLabel.Caption = 'Celular'
                MaxLength = 20
                TabOrder = 11
              end
              object lbcb11: TMemo
                Left = 8
                Top = 460
                Width = 304
                Height = 136
                ScrollBars = ssBoth
                TabOrder = 12
              end
              object lbcb3: TLabeledEdit
                Left = 8
                Top = 221
                Width = 304
                Height = 20
                EditLabel.Width = 32
                EditLabel.Height = 12
                EditLabel.Caption = 'e-mail'
                MaxLength = 255
                TabOrder = 4
              end
              object lbcb7: TLabeledEdit
                Left = 9
                Top = 384
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 8
                OnChange = lbcb7Change
                OnKeyPress = KeyPressChange
              end
              object lbcb8: TComboBox
                Left = 74
                Top = 384
                Width = 239
                Height = 20
                ItemHeight = 12
                MaxLength = 255
                TabOrder = 9
                OnChange = lbcb8Change
              end
              object lbcb5: TLabeledEdit
                Left = 9
                Top = 344
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 6
                OnChange = lbcb5Change
                OnKeyPress = KeyPressChange
              end
              object lbcb6: TComboBox
                Left = 74
                Top = 344
                Width = 239
                Height = 20
                ItemHeight = 12
                MaxLength = 255
                TabOrder = 7
                OnChange = lbcb6Change
              end
              object Panel7: TPanel
                Left = 6
                Top = 57
                Width = 304
                Height = 75
                BevelInner = bvLowered
                Caption = 'Foto'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object swf_logo1: TShockwaveFlash
                  Left = 2
                  Top = 2
                  Width = 300
                  Height = 71
                  Cursor = crHandPoint
                  Hint = 'Icone do '#225'lbum'
                  TabStop = False
                  Align = alClient
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  ControlData = {
                    6755665510070000021F00005707000008000200000000000800000000000800
                    0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                    08000A0000004800690067006800000008000200000000000B00FFFF08000200
                    0000000008000E00000061006C00770061007900730000000800100000005300
                    68006F00770041006C006C0000000B0000000B00000008000200000000000800
                    02000000000008000200000000000D0000000000000000000000000000000000
                    0B0001000B00000008000000000003000000000008000800000061006C006C00
                    000008000C000000660061006C00730065000000}
                end
              end
              object ComboBox_model: TComboBox
                Left = 8
                Top = 147
                Width = 177
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                TabOrder = 2
              end
              object lbcb12: TComboBox
                Left = 8
                Top = 262
                Width = 305
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                MaxLength = 255
                TabOrder = 5
                Items.Strings = (
                  'Enviar para todas as contas'
                  'Somente conta de e-mail'
                  'Somente e-mail virtual (banco de dados)')
              end
              object lbcb13: TComboBox
                Left = 8
                Top = 301
                Width = 305
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                MaxLength = 255
                TabOrder = 13
                Text = 'Todos os m'#243'dulos'
                Items.Strings = (
                  'Todos os m'#243'dulos'
                  'M'#243'dulos p'#250'blicos'
                  'M'#243'dulos restritos')
              end
            end
          end
          object ToolBar1: TToolBar
            Left = 2
            Top = 323
            Width = 332
            Height = 29
            Align = alBottom
            Caption = 'ToolBar1'
            TabOrder = 1
            object bt_prior1: TSpeedButton
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
              OnClick = bt_prior1Click
            end
            object bt_next1: TSpeedButton
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
              OnClick = bt_next1Click
            end
            object bt_new1: TSpeedButton
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
              OnClick = bt_new1Click
            end
            object bt_del1: TSpeedButton
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
              OnClick = bt_del1Click
            end
            object bt_save1: TSpeedButton
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
              OnClick = bt_save1Click
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Personaliza'#231#245'es'
        ImageIndex = 1
        object GroupBox4: TGroupBox
          Left = 0
          Top = 222
          Width = 719
          Height = 108
          Align = alBottom
          Caption = 'Configura'#231#245'es:'
          TabOrder = 0
          object GroupBox5: TGroupBox
            Left = 515
            Top = 14
            Width = 202
            Height = 92
            Align = alRight
            Caption = 'Rodap'#233':'
            TabOrder = 0
            object cp18: TRichEdit
              Left = 2
              Top = 33
              Width = 198
              Height = 57
              Align = alClient
              TabOrder = 0
              OnChange = bts4Change
            end
            object ToolBar2: TToolBar
              Left = 2
              Top = 14
              Width = 198
              Height = 19
              ButtonHeight = 17
              Caption = 'ToolBar2'
              EdgeBorders = []
              TabOrder = 1
              object cp17_0: TRadioButton
                Left = 0
                Top = 2
                Width = 89
                Height = 17
                Caption = 'autom'#225'tico'
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = bts4Change
              end
              object cp17_1: TRadioButton
                Left = 89
                Top = 2
                Width = 97
                Height = 17
                Caption = 'personalizado'
                TabOrder = 1
                OnClick = bts4Change
              end
            end
          end
          object GroupBox6: TGroupBox
            Left = 298
            Top = 14
            Width = 217
            Height = 92
            Align = alRight
            Caption = 'Dados a serem exibidos ao selecionar:'
            TabOrder = 1
            object cp2: TCheckBox
              Left = 8
              Top = 12
              Width = 57
              Height = 17
              Caption = 'Nome'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = bts4Change
            end
            object cp3: TCheckBox
              Left = 8
              Top = 27
              Width = 73
              Height = 17
              Caption = 'Telefone'
              TabOrder = 1
              OnClick = bts4Change
            end
            object cp4: TCheckBox
              Left = 8
              Top = 42
              Width = 65
              Height = 17
              Caption = 'Celular'
              TabOrder = 2
              OnClick = bts4Change
            end
            object cp5: TCheckBox
              Left = 8
              Top = 57
              Width = 57
              Height = 17
              Caption = 'e-mail'
              Checked = True
              State = cbChecked
              TabOrder = 3
              OnClick = bts4Change
            end
            object cp10: TCheckBox
              Left = 96
              Top = 58
              Width = 113
              Height = 17
              Caption = 'Agrupor por setor'
              TabOrder = 4
              OnClick = bts4Change
            end
            object cp9: TCheckBox
              Left = 96
              Top = 42
              Width = 89
              Height = 17
              Caption = 'Observa'#231#245'es'
              TabOrder = 5
              OnClick = bts4Change
            end
            object cp8: TCheckBox
              Left = 8
              Top = 72
              Width = 49
              Height = 17
              Caption = 'Foto'
              TabOrder = 6
              OnClick = bts4Change
            end
            object cp7: TCheckBox
              Left = 96
              Top = 27
              Width = 65
              Height = 17
              Caption = 'Fun'#231#227'o'
              TabOrder = 7
              OnClick = bts4Change
            end
            object cp6: TCheckBox
              Left = 96
              Top = 12
              Width = 57
              Height = 17
              Caption = 'Setor'
              TabOrder = 8
              OnClick = bts4Change
            end
          end
          object GroupBox8: TGroupBox
            Left = 2
            Top = 14
            Width = 296
            Height = 92
            Align = alClient
            Caption = 'Lista de itens:'
            TabOrder = 2
            object Label2: TLabel
              Left = 8
              Top = 50
              Width = 73
              Height = 12
              Caption = 'Incluir campo:'
              Layout = tlCenter
            end
            object ToolBar3: TToolBar
              Left = 111
              Top = 60
              Width = 25
              Height = 22
              Align = alNone
              ButtonHeight = 18
              Caption = 'ToolBar2'
              EdgeBorders = []
              TabOrder = 0
              object SpeedButton1: TSpeedButton
                Left = 0
                Top = 2
                Width = 23
                Height = 18
                Hint = 'Incluir campo selecionado'
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
                OnClick = SpeedButton1Click
              end
            end
            object cp1: TLabeledEdit
              Left = 138
              Top = 61
              Width = 151
              Height = 20
              TabStop = False
              EditLabel.Width = 63
              EditLabel.Height = 12
              EditLabel.Caption = 'Formata'#231#227'o:'
              MaxLength = 255
              TabOrder = 1
              Text = 'Nome (Email)'
              OnChange = bts4Change
            end
            object ComboBox_additem: TComboBox
              Left = 9
              Top = 62
              Width = 104
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 2
              OnChange = bts4Change
              Items.Strings = (
                'Nome'
                'Telefone'
                'Celular'
                'Email'
                'Setor'
                'Fun'#231#227'o'
                'Abre par'#234'nteses "("'
                ') Fecha par'#234'nteses ")"'
                'H'#237'fen "-"'
                'Espa'#231'o')
            end
            object cp16: TLabeledEdit
              Left = 8
              Top = 27
              Width = 281
              Height = 20
              EditLabel.Width = 33
              EditLabel.Height = 12
              EditLabel.Caption = 'T'#237'tulo:'
              TabOrder = 3
              OnChange = bts4Change
            end
          end
        end
        object Panel16: TPanel
          Left = 0
          Top = 330
          Width = 719
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 1
          object ToolBar5: TToolBar
            Left = 557
            Top = 0
            Width = 162
            Height = 24
            Align = alRight
            AutoSize = True
            Caption = 'pn_barra'
            EdgeBorders = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object bt_save4: TSpeedButton
              Left = 0
              Top = 2
              Width = 162
              Height = 22
              Hint = 'Gravar dados'
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
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 43
          Width = 719
          Height = 179
          Align = alClient
          Caption = 'Banner:'
          TabOrder = 2
          object Label_size3: TLabel
            Left = 707
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object swf_banner: TShockwaveFlash
            Left = 2
            Top = 14
            Width = 486
            Height = 163
            Cursor = crHandPoint
            Hint = 'Icone do '#225'lbum'
            TabStop = False
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ControlData = {
              67556655000300003B320000060D000008000200000000000800020000000000
              080002000000000008000E000000570069006E0064006F00770000000B00FFFF
              0B00FFFF08000A0000004800690067006800000008000200000000000B00FFFF
              080002000000000008000E00000061006C007700610079007300000008001000
              0000530068006F00770041006C006C0000000B0000000B000000080002000000
              0000080002000000000008000200000000000D00000000000000000000000000
              000000000B000100}
          end
          object Panel17: TPanel
            Left = 488
            Top = 14
            Width = 229
            Height = 163
            Align = alRight
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 1
            object Label21: TLabel
              Left = 18
              Top = 13
              Width = 33
              Height = 12
              Caption = 'Estilo:'
            end
            object Label3: TLabel
              Left = 8
              Top = 37
              Width = 44
              Height = 12
              Caption = 'Posi'#231#227'o:'
            end
            object cp14: TComboBox
              Left = 56
              Top = 8
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 2
              Text = 'Auto ajustar proporcional'
              OnChange = bts4Change
              Items.Strings = (
                'Auto ajustar proporcional'
                'Auto ajustar esticado'
                'Manter tamanho original')
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 139
              Width = 229
              Height = 24
              Align = alBottom
              AutoSize = True
              Caption = 'pn_barra'
              EdgeBorders = []
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object bt_open3: TSpeedButton
                Left = 0
                Top = 2
                Width = 124
                Height = 22
                Hint = 'Importar imagem'
                Caption = '&Importar'
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
                OnClick = bt_open3Click
              end
              object bt_limpar3: TSpeedButton
                Left = 124
                Top = 2
                Width = 104
                Height = 22
                Hint = 'Limpar imagem'
                Caption = '&Limpar'
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
                OnClick = bt_limpar3Click
              end
            end
            object cp15: TComboBox
              Left = 56
              Top = 32
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 0
              Text = 'Centralizado'
              OnChange = bts4Change
              Items.Strings = (
                'Centralizado'
                'Superior Centralizado'
                'Superior Esquerdo'
                'Superior Direito'
                'Inferior Centralizado'
                'Inferior Esquerdo'
                'Inferior Direito')
            end
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 719
          Height = 43
          Align = alTop
          Caption = 'Textos do m'#243'dulo:'
          TabOrder = 3
          object cfg_cod: TLabel
            Left = 707
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object Label22: TLabel
            Left = 9
            Top = 20
            Width = 33
            Height = 12
            Alignment = taRightJustify
            Caption = 'Texto:'
          end
          object cfg_title: TEdit
            Left = 46
            Top = 16
            Width = 665
            Height = 20
            MaxLength = 255
            TabOrder = 0
            OnChange = bts4Change
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Formul'#225'rio de envio de mensagens'
        ImageIndex = 2
        object GroupBox11: TGroupBox
          Left = 402
          Top = 0
          Width = 317
          Height = 328
          Align = alRight
          Caption = 'Configura'#231#245'es:'
          TabOrder = 0
          object Splitter2: TSplitter
            Left = 2
            Top = 131
            Width = 313
            Height = 4
            Cursor = crVSplit
            Align = alTop
            Beveled = True
          end
          object cod_cfg2: TLabel
            Left = 306
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object GroupBox9: TGroupBox
            Left = 2
            Top = 135
            Width = 313
            Height = 191
            Align = alClient
            Caption = 'Formata'#231#227'o de texto para e-mail resposta'
            TabOrder = 0
            object CoolBar1: TCoolBar
              Left = 2
              Top = 14
              Width = 309
              Height = 76
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar10
                  ImageIndex = -1
                  Width = 244
                end
                item
                  Break = False
                  Control = ToolBar14
                  ImageIndex = -1
                  Width = 63
                end
                item
                  Control = ToolBar11
                  ImageIndex = -1
                  Width = 87
                end
                item
                  Break = False
                  Control = ToolBar12
                  ImageIndex = -1
                  Width = 132
                end
                item
                  Break = False
                  Control = ToolBar13
                  ImageIndex = -1
                  Width = 86
                end
                item
                  Control = ToolBar9
                  ImageIndex = -1
                  MinHeight = 22
                  Width = 309
                end>
              EdgeBorders = []
              object ToolBar10: TToolBar
                Left = 9
                Top = 0
                Width = 231
                Height = 25
                Align = alClient
                AutoSize = True
                Color = 16119285
                EdgeBorders = []
                Flat = True
                Images = ToolbarImages
                Indent = 4
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Transparent = True
                Wrapable = False
                object FontName: TComboBox
                  Left = 4
                  Top = 1
                  Width = 166
                  Height = 20
                  Hint = 'Selecione a fonte'
                  Ctl3D = False
                  DropDownCount = 10
                  ItemHeight = 12
                  ItemIndex = 0
                  ParentCtl3D = False
                  TabOrder = 0
                  Text = 'Arial'
                  OnChange = FontNameChange
                  Items.Strings = (
                    'Arial'
                    'Arial Narrow'
                    'Arial Black'
                    'Comic Scans MS'
                    'Courier'
                    'System'
                    'Times New Roman'
                    'Verdana'
                    'Wingdings')
                end
                object ToolButton7: TToolButton
                  Left = 170
                  Top = 0
                  Width = 8
                  ImageIndex = 8
                  Style = tbsSeparator
                end
                object FontSize: TEdit
                  Left = 178
                  Top = 0
                  Width = 37
                  Height = 22
                  Hint = 'Selecione o tamanho da fonte'
                  TabOrder = 1
                  Text = '12'
                  OnChange = FontSizeChange
                end
                object UpDown1: TUpDown
                  Left = 215
                  Top = 0
                  Width = 16
                  Height = 22
                  Associate = FontSize
                  Position = 12
                  TabOrder = 2
                end
              end
              object ToolBar11: TToolBar
                Left = 9
                Top = 27
                Width = 74
                Height = 25
                Align = alClient
                AutoSize = True
                Color = 16119285
                EdgeBorders = []
                Flat = True
                Images = ToolbarImages
                Indent = 4
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                Transparent = True
                Wrapable = False
                object BoldButton: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Negrito'
                  ImageIndex = 13
                  MenuItem = Negrito1
                  Style = tbsCheck
                end
                object ItalicButton: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'It'#225'lico'
                  ImageIndex = 15
                  MenuItem = Italico1
                  Style = tbsCheck
                end
                object UnderlineButton: TToolButton
                  Left = 50
                  Top = 0
                  Caption = 'Sublinhado'
                  ImageIndex = 16
                  MenuItem = Sublinhado1
                  Style = tbsCheck
                end
              end
              object ToolBar12: TToolBar
                Left = 98
                Top = 27
                Width = 119
                Height = 25
                Align = alClient
                Color = 16119285
                EdgeBorders = []
                Flat = True
                Images = ToolbarImages
                Indent = 4
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                Transparent = True
                Wrapable = False
                object LeftAlign: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'esquerdo'
                  Grouped = True
                  ImageIndex = 17
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object CenterAlign: TToolButton
                  Tag = 2
                  Left = 27
                  Top = 0
                  Caption = 'centro'
                  Grouped = True
                  ImageIndex = 18
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object RightAlign: TToolButton
                  Tag = 1
                  Left = 50
                  Top = 0
                  Caption = 'direita'
                  Grouped = True
                  ImageIndex = 19
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object JustifyAlign: TToolButton
                  Tag = 3
                  Left = 73
                  Top = 0
                  Caption = 'justificado'
                  Grouped = True
                  ImageIndex = 20
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object BulletsButton: TToolButton
                  Left = 96
                  Top = 0
                  Caption = 'Marcador'
                  ImageIndex = 21
                  MenuItem = Marcador1
                  Style = tbsCheck
                end
              end
              object ToolBar13: TToolBar
                Left = 232
                Top = 27
                Width = 73
                Height = 25
                Align = alClient
                Color = 16119285
                EdgeBorders = []
                Flat = True
                Images = ToolbarImages
                Indent = 4
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                Transparent = True
                Wrapable = False
                object ToolButton11: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Recortar'
                  ImageIndex = 6
                  MenuItem = Recortar1
                end
                object ToolButton13: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'Copiar'
                  ImageIndex = 7
                  MenuItem = Copiar1
                end
                object ToolButton14: TToolButton
                  Left = 50
                  Top = 0
                  Caption = 'Colar'
                  ImageIndex = 8
                  MenuItem = Colar1
                end
              end
              object ToolBar14: TToolBar
                Left = 255
                Top = 0
                Width = 50
                Height = 25
                Align = alClient
                AutoSize = True
                Color = 16119285
                EdgeBorders = []
                Flat = True
                Images = ToolbarImages
                Indent = 4
                ParentColor = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                Transparent = True
                Wrapable = False
                object ToolButton10: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Cor'
                  ImageIndex = 10
                  MenuItem = Cor1
                end
                object ToolButton8: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'Desfazer'
                  ImageIndex = 4
                  MenuItem = Desfazer1
                end
              end
              object ToolBar9: TToolBar
                Left = 9
                Top = 54
                Width = 298
                Height = 22
                Align = alNone
                AutoSize = True
                ButtonHeight = 20
                Caption = 'ToolBar1'
                EdgeBorders = []
                TabOrder = 5
                object ComboBox_campos: TComboBox
                  Left = 0
                  Top = 2
                  Width = 131
                  Height = 20
                  Style = csDropDownList
                  ItemHeight = 0
                  TabOrder = 0
                  Items.Strings = (
                    'Raz'#227'o Social'
                    'Fantasia'
                    'Nome'
                    'Data de nascimento'
                    'Apelido'
                    'Usu'#225'rio'
                    'Senha'
                    'Frase secreta'
                    'Dica para senha'
                    'Telefone 1'
                    'Telefone 2'
                    'Celular'
                    'e-mail'
                    'Website'
                    'Endere'#231'o'
                    'N'#250'mero'
                    'Complemento'
                    'Cidade/UF'
                    'Cep'
                    'CNPJ'
                    'Inscri'#231#227'o Estadual'
                    'RG'
                    'CPF'
                    'Setor'
                    'Fun'#231#227'o'
                    #193'rea de atua'#231#227'o da Empresa'
                    'Dados adicionais'
                    'Data de cadastro'
                    'Data do '#250'ltimo acesso'
                    'Data '#250'ltima atualiza'#231#227'o'
                    'Receber noticias'
                    'Mensagem Texto')
                end
                object SpeedButton11: TSpeedButton
                  Left = 131
                  Top = 2
                  Width = 86
                  Height = 20
                  Hint = 'Adicionar campo selecionado'
                  Caption = 'Adicionar'
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
                  OnClick = SpeedButton11Click
                end
                object SpeedButton3: TSpeedButton
                  Left = 217
                  Top = 2
                  Width = 81
                  Height = 20
                  Hint = 'Importar texto de arquivo'
                  Caption = 'Importar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    E6040000424DE604000000000000360000002800000013000000140000000100
                    180000000000B0040000C30E0000C30E00000000000000000000CED3D6CED3D6
                    CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
                    D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CC
                    D1D4CCD1D4CCD1D4CCD1D4CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
                    CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6C7C5C39D99999D99
                    999C98999C98989A98989B97979B97979B97979B9999CCD1D4CED3D6CED3D6CE
                    D3D6CED3D6CED3D6CED3D6000000CED3D6CED3D67F573A4D3921513C254D3821
                    4D38214C38216D593F523F284F3B259B9999CCD1D4CED3D6CED3D6CED3D6CED3
                    D6CED3D6CED3D6000000CED3D6CED3D6966A49BEA38BC4AD918F6142E1D0C574
                    523DCAB39FD5BDB94C3A2A9C9999C4C8CBC6CACCCACFD1CDD2D4CACFD2CED3D6
                    CED3D6000000CED3D6CED3D6966A4AC7AE94C7B2939264459967479C6A48C7AC
                    9AC8B4944C3A2A9B99999B97979C98989B98999B99999A9999CED3D6CED3D600
                    0000CED3D6CED3D6916546C9B197CAAF9DC7AF98C7AF95C7AC94C7AE95C7B393
                    4C3A299C99995242325142334F40305848359E9797CED3D6CED3D6000000CED3
                    D6CED3D6916344CBB69B8860469767469666459B68479E714FC7AF944C3A299C
                    9999DECFCEDECFCEDEC7CE594A3A9F9595CED3D6CED3D6000000CED3D6CCCED0
                    8F6244DED3C99D6A48F1E8E1EFE4DDEEE5DD9A6D4DC7B0924C3A299D9999E7D3
                    D6E7D3D6DECFD65142339B9594CED3D6CED3D6000000CED3D6CCCED08F6244EF
                    E7E7946545885E429C6946A06C49926A4BC5AF9156442F9E9797E7DFDEE7DFDE
                    E7D3D64736259A9696CBD0D3CED3D6000000CED3D6CCCED0906244F3E9E8ECE5
                    E8ECDEE0E4DAD7CCB89DCAB498C6B29156442F9C9595EFDFDEEFDFDEE7DFDE49
                    36249E9494C4C8CACED3D6000000CED3D6CCCED09E6B47976746976746976746
                    9A6846976746976746996A48996846EDE2E1EFE3E7EFE3E7EFDFDE4936249E94
                    94C6CACCCED3D6000000CED3D6CED3D6CED3D6CED3D6CED3D6CCCECFA06C48F0
                    EDE9F7F7F7F7F7F7F5F3F2956545EFE3DFEFEBEFEFE3E74937249D9595C9CDD0
                    CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3D6CDD1D3A06C48E6D1C8FFF7
                    F7FEF4F4FAEFEC8F61439B6A46F7EFEFEFE3E74937249C9797CDD2D5CED3D600
                    0000CED3D6CED3D6CED3D6CED3D6CED3D6CDD1D3A06C489C6A47936445976746
                    A06B479565449F6B477C5740EFE7E74B39269C9797CED3D6CED3D6000000CED3
                    D6CED3D6CED3D6CED3D6CED3D6CDD1D3A06C48E7DACFFDFBFAFDFCFBFFFBFF8E
                    6144936444F2EAE4EFE7E74A37239D9798C6CBCECED3D6000000CED3D6CED3D6
                    CED3D6CED3D6CED3D6CED3D6A06C48E5D6CCF9F6F4F9F6F4F6EDEC916344E2D2
                    CCF1E7E4E7D8D44B38239E9797B7BBBCCED3D6000000CED3D6CED3D6CED3D6CE
                    D3D6CED3D6CDD0D2A06C48A06C48A06C48A06C48A06C48A06C489F6B479F6B47
                    9E6A479D6946CCD0D2CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3
                    D6CED3D6CDD1D3CED3D5CED3D6CED3D6CED3D6CCCFD0CED3D6CED3D6CED3D6CE
                    D3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
                    CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
                    D6CED3D6CED3D6000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton3Click
                end
              end
            end
            object re_editor: TRxRichEdit
              Left = 2
              Top = 90
              Width = 309
              Height = 99
              Align = alClient
              PopupMenu = PopupMenu_editor
              TabOrder = 1
              OnKeyDown = re_editorKeyDown
              OnSelectionChange = SelectionChange
            end
          end
          object ScrollBox1: TScrollBox
            Left = 2
            Top = 14
            Width = 313
            Height = 117
            Align = alTop
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 1
            object Label10: TLabel
              Left = 241
              Top = 44
              Width = 63
              Height = 12
              Caption = '(0-ilimitado)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6052956
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label9: TLabel
              Left = 241
              Top = 23
              Width = 63
              Height = 12
              Caption = '(0-ilimitado)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6052956
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label4: TLabel
              Left = 4
              Top = 82
              Width = 184
              Height = 12
              Caption = 'Forma de apresenta'#231#227'o dos campos:'
              Transparent = True
            end
            object Label14: TLabel
              Left = 143
              Top = 100
              Width = 144
              Height = 12
              Caption = '(pr'#233'-requisito campo e-mail)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6052956
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object msg_cp1: TCheckBox
              Left = 4
              Top = 4
              Width = 171
              Height = 17
              Caption = 'Recurso para edi'#231#227'o de texto'
              TabOrder = 0
            end
            object msg_cp2_chk: TCheckBox
              Left = 4
              Top = 23
              Width = 169
              Height = 17
              Caption = 'Tamanho m'#237'nimo (caracters)'
              TabOrder = 1
            end
            object msg_cp3_chk: TCheckBox
              Left = 4
              Top = 45
              Width = 169
              Height = 17
              Caption = 'Tamanho m'#225'ximo (caracters)'
              TabOrder = 2
            end
            object msg_cp2: TSpinEdit
              Left = 174
              Top = 22
              Width = 65
              Height = 21
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 0
            end
            object msg_cp3: TSpinEdit
              Left = 174
              Top = 44
              Width = 65
              Height = 21
              MaxValue = 0
              MinValue = 0
              TabOrder = 4
              Value = 0
            end
            object msg_cp5: TCheckBox
              Left = 4
              Top = 63
              Width = 173
              Height = 17
              Caption = 'Exibir bot'#227'o limpar formul'#225'rio'
              TabOrder = 5
            end
            object msg_cp7: TComboBox
              Left = 192
              Top = 78
              Width = 113
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 6
              Text = 'Esquerda'
              Items.Strings = (
                'Esquerda'
                'Superior')
            end
            object msg_cp8: TCheckBox
              Left = 4
              Top = 98
              Width = 137
              Height = 17
              Caption = 'Enviar e-mail resposta'
              TabOrder = 7
            end
          end
        end
        object Panel_ftrcp: TPanel
          Left = 0
          Top = 0
          Width = 402
          Height = 328
          Align = alClient
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 402
            Height = 106
            Align = alTop
            Caption = 'Selecione o modelo de formul'#225'rio:'
            TabOrder = 0
            object cod_modelo: TLabel
              Left = 391
              Top = 0
              Width = 7
              Height = 12
              Alignment = taRightJustify
              Caption = '0'
              Transparent = True
            end
            object ToolBar15: TToolBar
              Left = 2
              Top = 14
              Width = 398
              Height = 23
              ButtonHeight = 20
              Caption = 'ToolBar1'
              EdgeBorders = []
              TabOrder = 0
              object Label13: TLabel
                Left = 0
                Top = 2
                Width = 65
                Height = 20
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Modelo: '
                Layout = tlCenter
              end
              object ComboBox_modelos: TComboBox
                Left = 65
                Top = 2
                Width = 332
                Height = 20
                Style = csDropDownList
                ItemHeight = 0
                TabOrder = 0
                OnChange = ComboBox_modelosChange
              end
            end
            object ToolBar16: TToolBar
              Left = 2
              Top = 37
              Width = 398
              Height = 60
              AutoSize = True
              ButtonHeight = 58
              Caption = 'ToolBar1'
              EdgeBorders = []
              TabOrder = 1
              object Label15: TLabel
                Left = 0
                Top = 2
                Width = 65
                Height = 58
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Descri'#231#227'o: '
              end
              object ed_modelos: TMemo
                Left = 65
                Top = 2
                Width = 331
                Height = 58
                ScrollBars = ssBoth
                TabOrder = 0
              end
            end
          end
          object PageControl_lstcampos: TPageControl
            Left = 0
            Top = 106
            Width = 402
            Height = 222
            ActivePage = TabSheet6
            Align = alClient
            Style = tsFlatButtons
            TabOrder = 1
            OnChange = PageControl_lstcamposChange
            object TabSheet4: TTabSheet
              Caption = 'Campos'
              object GroupBox10: TGroupBox
                Left = 0
                Top = 0
                Width = 394
                Height = 192
                Align = alClient
                Caption = 'Selecione os campos a serem exibidos:'
                TabOrder = 0
                object CheckListBox_campos: TCheckListBox
                  Left = 2
                  Top = 14
                  Width = 390
                  Height = 176
                  OnClickCheck = CheckListBox_camposClickCheck
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Columns = 2
                  ItemHeight = 12
                  Items.Strings = (
                    'Raz'#227'o Social'
                    'Fantasia'
                    'Nome'
                    'Data de nascimento'
                    'Apelido'
                    'Usu'#225'rio'
                    'Senha'
                    'Frase secreta'
                    'Dica para senha'
                    'Telefone 1'
                    'Telefone 2'
                    'Celular'
                    'e-mail'
                    'Website'
                    'Endere'#231'o'
                    'N'#250'mero'
                    'Complemento'
                    'Cidade/UF'
                    'Cep'
                    'CNPJ'
                    'Inscri'#231#227'o Estadual'
                    'RG'
                    'CPF'
                    'Setor'
                    'Fun'#231#227'o'
                    #193'rea de atua'#231#227'o da Empresa'
                    'Dados adicionais'
                    'Data de cadastro'
                    'Data do '#250'ltimo acesso'
                    'Data '#250'ltima atualiza'#231#227'o'
                    'Receber noticias'
                    'Mensagem Texto')
                  TabOrder = 0
                  OnClick = CheckListBox_camposClick
                end
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Obrigat'#243'rios'
              ImageIndex = 1
              object GroupBox13: TGroupBox
                Left = 0
                Top = 0
                Width = 394
                Height = 192
                Align = alClient
                Caption = 'Selecione os campos obrigat'#243'rios:'
                TabOrder = 0
                object CheckListBox_campos2: TCheckListBox
                  Left = 2
                  Top = 14
                  Width = 390
                  Height = 176
                  OnClickCheck = CheckListBox_camposClickCheck
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  Columns = 2
                  ItemHeight = 12
                  Items.Strings = (
                    'Raz'#227'o Social'
                    'Fantasia'
                    'Nome'
                    'Data de nascimento'
                    'Apelido'
                    'Usu'#225'rio'
                    'Senha'
                    'Frase secreta'
                    'Dica para senha'
                    'Telefone 1'
                    'Telefone 2'
                    'Celular'
                    'e-mail'
                    'Website'
                    'Endere'#231'o'
                    'N'#250'mero'
                    'Complemento'
                    'Cidade/UF'
                    'Cep'
                    'CNPJ'
                    'Inscri'#231#227'o Estadual'
                    'RG'
                    'CPF'
                    'Setor'
                    'Fun'#231#227'o'
                    #193'rea de atua'#231#227'o da Empresa'
                    'Dados adicionais'
                    'Data de cadastro'
                    'Data do '#250'ltimo acesso'
                    'Data '#250'ltima atualiza'#231#227'o'
                    'Receber noticias'
                    'Mensagem Texto')
                  TabOrder = 0
                  OnClick = CheckListBox_camposClick
                end
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'Textos'
              ImageIndex = 2
              object GroupBox14: TGroupBox
                Left = 0
                Top = 0
                Width = 394
                Height = 155
                Align = alClient
                Caption = 'Edite os textos para exibi'#231#227'o dos campos:'
                TabOrder = 0
                object StringGrid_lstcampos: TStringGrid
                  Left = 2
                  Top = 14
                  Width = 390
                  Height = 139
                  Align = alClient
                  ColCount = 2
                  DefaultRowHeight = 20
                  FixedColor = 15066597
                  RowCount = 2
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
                  TabOrder = 0
                  OnClick = StringGrid_lstcamposClick
                  ColWidths = (
                    141
                    223)
                end
              end
            end
          end
          object ToolBar_lstcampos: TToolBar
            Left = 238
            Top = 106
            Width = 164
            Height = 24
            Align = alNone
            Caption = 'ToolBar1'
            EdgeBorders = []
            TabOrder = 2
            object bt_select: TSpeedButton
              Left = 0
              Top = 2
              Width = 80
              Height = 22
              Hint = 'Selecionar todos os campos'
              Caption = 'Todos'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                16010000424D160100000000000046000000280000000D0000000D0000000100
                080000000000D0000000120B0000120B00000400000000000000FFFFFF00BFBF
                BF007F7F7F000000000000000000000000000000000000000000020101010101
                0101010101010000000002030000000000000000000100000000020300000003
                0000000000010000000002030000030303000000000100000000020300030303
                0303000000010000000002030003030003030300000100000000020300030000
                0003030300010000000002030000000000000303000100000000020300000000
                0000000300010000000002030000000000000000000100000000020303030303
                0303030303010000000002020202020202020202020200000000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_selectClick
            end
            object bt_unselect: TSpeedButton
              Left = 80
              Top = 2
              Width = 80
              Height = 22
              Hint = 'Deselecionar todos os campos'
              Caption = 'Limpar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                3E020000424D3E0200000000000036000000280000000D0000000D0000000100
                18000000000008020000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00808085A2A2A6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBDBDC0FBFBFF007B7B7B00000D0101FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFBFBFBFFFFFFF007F7F7F000000FFFFFF0000FFFFFF
                FF929292FFFFFFFFFFFFFFFFFF0000FFFFFFFFBFBFBFFFFFFF007F7F7F000000
                FFFFFFFFFFFF0000FF929292929292FFFFFF0000FFFFFFFFFFFFFFBFBFBFFFFF
                FF007F7F7F000000FFFFFF9292929292920000FF9292920000FFFFFFFFFFFFFF
                FFFFFFBFBFBFFFFFFF007F7F7F000000FFFFFF929292929292FFFFFF0000FF92
                9292929292FFFFFFFFFFFFBFBFBFFFFFFF007F7F7F000000FFFFFF929292FFFF
                FF0000FFFFFFFF0000FF929292929292FFFFFFBFBFBFFFFFFF007F7F7F000000
                FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FF929292FFFFFFBFBFBFFFFF
                FF007F7F7F000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
                FFFFFFBFBFBFFFFFFF007F7F7F0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFBFBFBFFFFFFF007F7F7F00000F0000070000000000
                00000000000000000000000000000000000000B4B4C3FDFDFF007F7F7F7B7B83
                7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FF7F7
                FD00}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_unselectClick
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 328
          Width = 719
          Height = 26
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 2
          object ToolBar8: TToolBar
            Left = 357
            Top = 0
            Width = 362
            Height = 26
            Align = alRight
            AutoSize = True
            ButtonHeight = 24
            Caption = 'pn_barra'
            EdgeBorders = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object bt_default2: TSpeedButton
              Left = 0
              Top = 2
              Width = 92
              Height = 24
              Hint = 'Definir como padr'#227'o'
              Caption = 'Padr'#227'o'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                16020000424D160200000000000036010000280000000E0000000E0000000100
                080000000000E0000000120B0000120B00004000000000000000FFFFFF0000FF
                990000FF660000FE580000D8A90000D3A00000CC990000D5380000D13C0000CE
                3F0000ABAB0000CC330000CC270000AC7F0000A3740000AF290000A334000062
                46000070000000621F00006219000066000000523700004C4C00004D39000052
                2100004A31000052170000550000003F300000420000003A0000002000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000002121212100000000000000000000001F
                0B060C0A210000000000000000001E070103041D1C21000000000000001E0801
                02051A1512210000000000001E0901020618151220000000000000002019161B
                161515200000000000000000001F100E0F0D2000000000000000000000001311
                1417000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_default2Click
            end
            object bt_new2: TSpeedButton
              Left = 92
              Top = 2
              Width = 90
              Height = 24
              Hint = 'Incluir novo modelo'
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
              Left = 182
              Top = 2
              Width = 90
              Height = 24
              Hint = 'Excluir modelo selecionado'
              Caption = 'Excluir'
              Enabled = False
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
              Left = 272
              Top = 2
              Width = 90
              Height = 24
              Hint = 'Gravar dados do modelo'
              Caption = 'Gravar'
              Enabled = False
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
    object ToolBar_lng: TToolBar
      Left = 425
      Top = 2
      Width = 300
      Height = 24
      Align = alNone
      ButtonHeight = 19
      EdgeBorders = []
      TabOrder = 1
      Visible = False
      object Label16: TLabel
        Left = 0
        Top = 2
        Width = 58
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Linguagem:'
        Layout = tlCenter
      end
      object PageControl_languagens: TPageControl
        Left = 58
        Top = 2
        Width = 239
        Height = 19
        ActivePage = lngtbc1
        Align = alLeft
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PageControl_languagensChange
        object lngtbc1: TTabSheet
          Caption = 'lngtb1'
        end
        object lngtbc2: TTabSheet
          Caption = 'lngtb2'
          ImageIndex = 1
          TabVisible = False
        end
        object lngtbc3: TTabSheet
          Caption = 'lngtb3'
          ImageIndex = 2
          TabVisible = False
        end
        object lngtbc4: TTabSheet
          Caption = 'lngtb4'
          ImageIndex = 3
          TabVisible = False
        end
        object lngtbc5: TTabSheet
          Caption = 'lngtb5'
          ImageIndex = 4
          TabVisible = False
        end
        object lngtbc6: TTabSheet
          Caption = 'lngtb6'
          ImageIndex = 5
          TabVisible = False
        end
        object lngtbc7: TTabSheet
          Caption = 'lngtb7'
          ImageIndex = 6
          TabVisible = False
        end
        object lngtbc8: TTabSheet
          Caption = 'lngtb8'
          ImageIndex = 7
          TabVisible = False
        end
        object lngtbc9: TTabSheet
          Caption = 'lngtb9'
          ImageIndex = 8
          TabVisible = False
        end
        object lngtbc10: TTabSheet
          Caption = 'lngtb10'
          ImageIndex = 9
          TabVisible = False
        end
        object lngtbc11: TTabSheet
          Caption = 'lngtb11'
          ImageIndex = 10
          TabVisible = False
        end
        object lngtbc12: TTabSheet
          Caption = 'lngtb12'
          ImageIndex = 11
          TabVisible = False
        end
        object lngtbc13: TTabSheet
          Caption = 'lngtb13'
          ImageIndex = 12
          TabVisible = False
        end
        object lngtbc14: TTabSheet
          Caption = 'lngtb14'
          ImageIndex = 13
          TabVisible = False
        end
        object lngtbc15: TTabSheet
          Caption = 'lngtb15'
          ImageIndex = 14
          TabVisible = False
        end
        object lngtbc16: TTabSheet
          Caption = 'lngtb16'
          ImageIndex = 15
          TabVisible = False
        end
        object lngtbc17: TTabSheet
          Caption = 'lngtb17'
          ImageIndex = 16
          TabVisible = False
        end
        object lngtbc18: TTabSheet
          Caption = 'lngtb18'
          ImageIndex = 17
          TabVisible = False
        end
        object lngtbc19: TTabSheet
          Caption = 'lngtb19'
          ImageIndex = 18
          TabVisible = False
        end
        object lngtbc20: TTabSheet
          Caption = 'lngtb20'
          ImageIndex = 19
          TabVisible = False
        end
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 328
    Top = 78
  end
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf)|*.jpg;*.jpeg;*' +
      '.bmp;*.ico,*.swf|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|' +
      '*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Flash (*.swf)|' +
      '*.swf'
    Title = 'Importar imagem'
    Left = 206
    Top = 77
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 298
    Top = 78
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 268
    Top = 78
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf)|*.jpg;*.jpeg;*.bmp;*' +
      '.swf|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|*.jpeg|Bitma' +
      'ps (*.bmp)|*.bmp|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 238
    Top = 77
  end
  object PopupMenu_editor: TPopupMenu
    Images = ToolbarImages
    OwnerDraw = True
    Left = 272
    Top = 108
    object Desfazer1: TMenuItem
      Caption = 'Desfazer'
      ImageIndex = 4
      ShortCut = 16474
      OnClick = Desfazer1Click
    end
    object Recortar1: TMenuItem
      Caption = 'Recortar'
      ImageIndex = 6
      ShortCut = 16466
      OnClick = Recortar1Click
    end
    object Copiar1: TMenuItem
      Caption = 'Copiar'
      ImageIndex = 7
      ShortCut = 16451
      OnClick = Copiar1Click
    end
    object Colar1: TMenuItem
      Caption = 'Colar'
      ImageIndex = 8
      ShortCut = 16470
      OnClick = Colar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Fontemenu: TMenuItem
      Caption = 'Formatar fonte'
      ImageIndex = 9
      object Negrito1: TMenuItem
        Caption = 'Negrito'
        ImageIndex = 13
        ShortCut = 16462
        OnClick = Negrito1Click
      end
      object Italico1: TMenuItem
        Caption = 'It'#225'lico'
        ImageIndex = 15
        ShortCut = 16457
        OnClick = Italico1Click
      end
      object Sublinhado1: TMenuItem
        Caption = 'Sublinhado'
        ImageIndex = 16
        ShortCut = 16469
        OnClick = Sublinhado1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cor1: TMenuItem
        Caption = 'Cor'
        ImageIndex = 10
        OnClick = Cor1Click
      end
    end
    object Formatarpargrafo1: TMenuItem
      Caption = 'Formatar par'#225'grafo'
      ImageIndex = 17
      object esquerdo1: TMenuItem
        Caption = 'esquerdo'
        ImageIndex = 17
        OnClick = esquerdo1Click
      end
      object centro1: TMenuItem
        Caption = 'centro'
        ImageIndex = 18
        OnClick = centro1Click
      end
      object direita1: TMenuItem
        Caption = 'direita'
        ImageIndex = 19
        OnClick = direita1Click
      end
      object justificado1: TMenuItem
        Caption = 'justificado'
        ImageIndex = 20
        OnClick = justificado1Click
      end
    end
    object Marcador1: TMenuItem
      Caption = 'Marcador'
      ImageIndex = 21
      ShortCut = 16461
      OnClick = Marcador1Click
    end
  end
  object ToolbarImages: TImageList
    Left = 240
    Top = 108
    Bitmap = {
      494C01011C001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2A2B002B2A2B002B2A2B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00002B2A2B00CED2D500CED2D5002B2A2B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00808080008080800000000000FFFFFF0000FFFF0000000000FFFFFF008080
      8000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000B54A6300FFDE
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFCECE000000000000000000000000000000000000000000000000000000
      0000000000002B2A2B00ADAEAD00ADAEAD004241420000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00808080000000000000000000000000000000000080808000FFFF
      FF0080808000FFFFFF008080800000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000B54A6300FFEF
      EF00000000000000000000000000FFF7F700FFDEE700E7B5BD00000000000000
      0000FFDEDE000000000000000000000000000000000000000000000000000000
      0000000000002B2A2B00ADAEAD00ADAEAD0084828400424142002B2A2B004241
      4200000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000000000000063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000B54A63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFEF0094394A0000000000000000000000000000000000424142004241
      420042414200ADAEAD00ADAEAD00ADAEAD00ADAEAD00ADAEAD00ADAEAD008482
      8400424142004241420000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00808080000000000000000000000000006363630000FFFF0000FF
      FF000000000000000000CED6D6000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000007B7B
      7B00AD395200AD395200AD3952007BAD31007BAD3100AD395200AD395200B54A
      63007B7B7B000000000000000000000000000000000042414200ADAEAD00CED2
      D500CED2D500CED2D500ADAEAD009966000099660000ADAEAD00ADAEAD00ADAE
      AD00ADAEAD008482840042414200000000000000000000000000FFFFFF008080
      8000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0080808000FFFFFF000000000000000000000000006363630000FFFF0000FF
      FF000000000000000000CED6D6000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      00007BAD31007BAD3100EFD684007BAD31007BAD3100F7E79C00E7C673007BAD
      3100ADADB50000000000000000000000000042414200ADAEAD00CED2D500CED2
      D500CED2D500CED2D500ADAEAD00FF7D5A00FF7D5A00CED2D500ADAEAD00ADAE
      AD00ADAEAD00ADAEAD0084828400424142000000000000000000000000000000
      0000000000000000000000000000008080000080800000000000000000000000
      000000000000000000000000000000000000000000006363630000FFFF0000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      00009CC65A00E7C67300CEDEB500FFEFBD00FFEFBD00B5D67B00EFD684007BAD
      3100ADADB5000000000000000000000000002B2A2B00CED2D500CED2D500CED2
      D500CED2D500CED2D500CED2D500BD79000099660000ADAEAD00CED2D500CED2
      D500ADAEAD00ADAEAD00ADAEAD002B2A2B000000000000000000000000008000
      000000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF0080000000000000000000000000000000000000006363630000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      00009CC65A00B5D67B00FFEFBD00FFF7D600FFEFBD009CC65A00E7C673007BAD
      3100ADADB5000000000000000000000000002B2A2B000000000000000000CED2
      D500CED2D500CED2D500CED2D500FF7D5A0099660000BD790000ADAEAD00CED2
      D500CED2D500CED2D500CED2D5002B2A2B000000000000000000000000008000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0080000000800000008000
      000080000000000000000000000000000000000000006363630000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      0000E7848400EFD68400FFF7D600FFFFEF00FFF7D6007BAD31007BAD3100C66B
      7B00000000000000000000000000000000002B2A2B0000000000000000000000
      000000000000F7CFA500FFAE8C00CED2D500FFAE8C0099660000BD790000CED2
      D500CED2D500CED2D500CED2D5002B2A2B000000000000000000000000008000
      0000FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF008000000000FFFF008000
      000000000000000000000000000000000000000000006363630000FFFF000000
      0000CED6D600CED6D600CED6D6000000000000FFFF0000000000A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CBD7B00E7848400E78484009CC65A009CC65A00C66B7B00C66B7B00ADAD
      B5000000000000000000000000000000000042414200CED2D500000000000000
      000000000000BD790000BD790000FF7D5A00FF7D5A0099660000BD7900000000
      0000CED2D500CED2D500ADAEAD00424142000000000000000000000000008000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0080000000800000000000
      000000000000000000000000000000000000000000006363630000FFFF000000
      0000CED6D600CED6D600CED6D6000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CBD7B00E7848400E78484009CBD7B00CED6C6000000
      000000000000000000000000000000000000000000002B2A2B00CED2D5000000
      000000000000FFD7D600BD7900009966000099660000BD790000F7CFA5000000
      000000000000ADAEAD0042414200000000000000000000000000000000008000
      0000FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF0080000000000000000000
      0000000000000000000000000000000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B2A2B004241
      4200CED2D500CED2D500CED2D500F7CFA500F7CFA5000000000000000000ADAE
      AD002B2A2B004241420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424142002B2A2B002B2A2B002B2A2B002B2A2B002B2A2B002B2A2B004241
      4200000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000390039003100
      3100310031000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B08
      100000000000000000000000000063001000630010006B081000731818008429
      1800000000000000000000000000000000000000000000000000000000000000
      00006B081000000000000000000063001000630010006B081000731818008429
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000630010006B08
      1000943121009C39210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3921009431
      21006B0810006300100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000390039002900
      2900290029000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063001000630010006B081000731818007B21
      1800943121009C39210000000000000000000000000000000000000000000000
      000000000000000000000000000063001000630010006B081000731818007B21
      1800943121009C39210000000000000000000000000000000000000000000000
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
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080008001800
      1000180810000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
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
      000000000000000000000000000000000000000000009C9C9C00000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADB500ADADB500ADADB500ADADB500ADADB50000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A594
      520000E7E70094310000A5945200BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000E7E7009431000094310000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADB500ADAD
      B500ADADB5000000000000000000ADADB500ADADB500ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A594520094310000FFEFBD008C94730094310000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B54A6300AD395200B54A
      6300000000000000000000000000B54A6300AD39520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007363080000000000FFEFBD00CEDEB50073844A0094310000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B54A
      6300000000000000000000000000AD3952000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007363080063F7F700FFEFBD008C94730073844A009431
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C66B
      7B00B54A6300B54A6300B54A6300B54A630000000000ADADB500000000000000
      0000ADADB500ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5F7FF00FFEFBD00CEDEB5008C94
      730094310000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADB50000000000B54A63000000000000000000ADADB500ADADB500ADAD
      B500ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000736308000000000063F7F700FFEFBD00CEDE
      B50073844A009431000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B54A6300ADADB500AD395200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5945200A5F7FF0063F7F700FFEF
      BD008C9473009431000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD395200CE949C00AD395200000000000000000000000000ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5945200000000000000
      0000A59452000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7B5BD00AD395200CE949C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5945200A594
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C66B7B0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADB500ADADB500ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADB500ADADB500ADADB500ADADB500ADAD
      B500ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002994000029940000299400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000106BCE00005AB5000029940000217B008CC6
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B8CDE00396BC600396BC600396BC600396BC600396B
      C600ADADB5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000299400ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006BB5F7006BB5F7006BB5F7006BB5F700005A
      B5008CC6FF000000000000000000000000000000000000000000000000000000
      000000000000ADADB500ADADB500ADADB500ADADB500ADADB50000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB5006B8CDE00F7BDDE00F7BDDE00F7BDDE006BD6FF0063F7
      F700ADADB5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000299400ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000106BCE00E7E700006BD6FF006BD6FF005252
      FF006BB5F70000217B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE529400CE5294006B8CDE008CEFFF008CEFFF008CEFFF008CEFFF008CEF
      FF00ADADB5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004AC600ADADB500ADADB500004A
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD006BB5F700E7E700008CDEFF007384FF000000
      DE004AD6F700005AB50000000000000000000000000000000000ADADB500ADAD
      B500ADADB5000000000000000000ADADB500ADADB500ADADB500000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400CEAD7300CEAD73006B8CDE00F7BDDE00F7BDDE00A5F7FF00A5F7FF00A5F7
      FF00ADADB5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004AC600004AC600004AC600004A
      C600000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00106BCE00106BCE00BDEFF700ADE7FF008CDEFF00ADADFF006BD6
      FF004AD6F700005AB500000000000000000000000000B54A6300AD395200B54A
      6300000000000000000000000000B54A6300AD39520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400DEBD8C00DEBD8C006B8CDE00F7BDDE00F7BDDE00396BC60000000000396B
      C600ADADB5000000000000000000000000000000000000000000B53139009410
      2100BD7B9400000000000000000000000000105ADE00ADADB50000000000105A
      DE0000000000ADADB50000000000000000000000000000000000000000000000
      00000000000094085A0094085A00EFFFFF00BDEFF70029EF290029EF2900009C
      10006BD6FF00106BCE000000000000000000000000000000000000000000B54A
      6300000000000000000000000000AD3952000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400EFCEB500EFCEB5006B8CDE00CEF7F700CEF7F700396BC600396BC600EFCE
      B500ADADB5000000000000000000000000000000000000000000000000000000
      000094102100CE949C000000000000000000105ADE00ADADB500000000000000
      00000073F700ADADB50000000000000000000000000000000000000000000000
      00000000000094085A009C184200BDBDBD00CEF7F700ADE7FF009CDEFF00087B
      08008CC6FF00398CDE000000000000000000000000000000000000000000C66B
      7B00B54A6300B54A6300B54A6300B54A630000000000ADADB500000000000000
      0000ADADB500ADADB5000000000000000000000000000000000000000000CE52
      9400F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      C600ADADB5000000000000000000000000000000000000000000000000000000
      00000000000094102100CE949C000073F7000073F7000073F7000073F7000073
      F7000073F7000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900FFFFFF00F7FFFF0000000000BDEFF7008CC6
      FF008CC6FF000000000000000000000000000000000000000000000000000000
      0000ADADB50000000000B54A63000000000000000000ADADB500ADADB500ADAD
      B500ADADB500000000000000000000000000000000000000000000000000CE52
      9400000000000000000000000000000000000000000000000000F7DEC600F7DE
      C600ADADB5000000000000000000000000000000000000000000000000000000
      00000000000094102100CE949C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900FFFFFF00FFFFFF00EFFFFF00398CDE00398C
      DE00000000000000000000000000000000000000000000000000000000000000
      0000B54A6300ADADB500AD395200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400BD217300DEDEDE00DEDEDE00DEDEDE00DEDEDE00BD217300F7DEC600F7DE
      C600ADADB5000000000000000000000000000000000000000000000000000000
      0000CE949C00AD39520094102100CE949C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900398CDE00398CDE00398CDE008CC6FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD395200CE949C00AD395200000000000000000000000000ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD7B9400BD7B9400BD21730000FFFF00BD217300BD7B9400BD7B9400BD7B
      9400000000000000000000000000000000000000000000000000000000000000
      0000E7B5BD00CE949C009410210000000000CE949C0000000000000000000000
      0000000000000000000000000000000000000000000000000000D6521800BDBD
      BD00BDBDBD00D6521800D6521800BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7B5BD00AD395200CE949C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD217300BD217300BD21730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD3952009410210094102100941021009C18420000000000000000000000
      0000000000000000000000000000000000000000000000000000D6521800D652
      1800D6521800D6521800D6521800D6521800D652180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C66B7B0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600C6C6C600CECE
      CE00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084736300634229006B5242009C94
      9400BDBDBD00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063422900FFF7C600FFF7C6006342
      29009C949400BDBDBD00DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B635200FFE7AD00FFE7AD00FFE7
      AD00634229009C949400CECECE00E7E7E70000000000EFEFEF00EFEFEF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADB500ADADB500ADADB500ADADB500ADAD
      B500ADADB500ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDED60063422900FFC68C00FFC6
      8C00FFC68C006B524200B5B5B500CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600CECECE00DEDEDE00EFEFEF0000000000000000000000000000000000005A
      B50000000000005AB500ADADB5000000000000000000005AB500ADADB5000000
      0000ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5EFEF00A5EFEF00A5EFEF00A5EFEF00A5EF
      EF00215AD600ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00000000000000000000000000000000000000DEDED60063422900FFB5
      7B00FFB57B006342290094847B0073635200735242006342290063422900735A
      4A0094847B00BDBDBD00D6D6D600EFEFEF00000000000000000000000000005A
      B500ADADB500005AB500ADADB5000000000000000000005AB500ADADB500ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5EFEF00A5EFEF00A5EFEF00A5EFEF00A5EF
      EF00215AD600ADADB500000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000DEDED6007B63
      520063422900FFB57B00846B5A00D6CEBD00FFF7EF00FFF7EF00FFF7EF00D6CE
      BD00846B5A007B6B5A00BDBDBD00DEDEDE000000000000000000000000000000
      0000005AB500005AB500ADADB5000000000000000000005AB500005AB500005A
      B500000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB500ADADB500BDF7F7009CDEEF009CDEEF009CDEEF009CDE
      EF00215AD600ADADB500000000000000000000000000000000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000B5ADA500846B5A00F7EFE700FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7
      DE00F7EFE700846B5A0094847B00CECECE000000000000000000000000000000
      000000000000106BCE00106BCE00105ADE00005AB500106BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600A5EFEF00A5EFEF00A5EFEF00CEF7F7009CDEEF009CDEEF009CDEEF009CDE
      EF00215AD600ADADB500000000000000000000000000000000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      000084736300D6C6B500FFEFD60063422900FFEFD600FFEFD600FFEFD6006342
      2900FFEFD600D6C6B500735A4A00C6C6C6000000000000000000000000000000
      0000000000000000000000000000398CDE00105ADE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600A5EFEF00A5EFEF00A5EFEF00EFFFFF00EFFFFF00EFFFFF004A9CE7004A9C
      E700215AD600ADADB500000000000000000000000000000000007B0000007B00
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      00007B635200FFEFD600FFEFCE0063422900FFEFCE00FFEFCE00FFEFCE006342
      2900FFEFCE00FFEFD60063422900BDBDBD000000000000000000000000000000
      00000000000000000000AD395200D694AD00C66B7B00ADADB500ADADB5000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600CEF7F700CEF7F700BDF7F700F7FFFF00EFFFFF00EFFFFF004A9CE7002184
      D6000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      000063422900FFE7C600FFE7C60084634A009C7B63009C7B63009C7B63008463
      4A00FFE7C600FFE7C60063422900C6C6C6000000000000000000000000000000
      000000000000AD395200BD7B940000000000D694AD00AD395200ADADB500ADAD
      B500000000000000000000000000000000000000000000000000000000002184
      D6009CDEEF009CDEEF009CDEEF002184D6002184D6002184D6002184D6002184
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000063422900FFE7C600FFDEBD00BDA5840063422900FFDEBD0063422900BDA5
      8400FFDEBD00FFE7C60063422900CECECE000000000000000000000000000000
      0000AD395200BD7B9400D694AD000000000000000000BD7B9400C66B7B00ADAD
      B500000000000000000000000000000000000000000000000000000000002184
      D600EFFFFF00EFFFFF00F7FFFF006BB5F7006BB5F700ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C736300D6BDA500FFDEB500FFDEB50084634200FFDEB50084634200FFDE
      B500FFDEB500D6BDA5007B635200DEDEDE00000000000000000000000000C66B
      7B00D694AD000000000000000000000000000000000000000000D694AD00BD7B
      9400ADADB5000000000000000000000000000000000000000000000000002184
      D600EFFFFF00EFFFFF00EFFFFF002184D6002184D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDB5AD00846B5200FFE7C600FFDEAD00BD9C7B0063422900BD9C7B00FFDE
      AD00F7DEBD00846B5200A59C8C00EFEFEF00000000000000000000000000BD7B
      940000000000000000000000000000000000000000000000000000000000D694
      AD00000000000000000000000000000000000000000000000000000000002184
      D6002184D6002184D6002184D6002184D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C847300846B5200D6BD9C00FFDEBD00FFDEAD00FFDEBD00D6BD
      9C00846B52008C7B6B00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDB5AD008C7363006342290063422900634229008473
      6300B5ADA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700DEDEDE00FFFFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFF700000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      0000E7E7E70063422900C6C6C600E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0000000000000000000000000000000000E7E7
      E700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00CECECE00FFFFF7000000000000000000000000000000
      00009C7B4A00946B4200946B42008C6B42008C6342008C6342008C6342008463
      3900845A31009C9C9C000000000000000000000000000000000000000000E7E7
      E7006342290063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56B4A004A3921006B5229006B5229006B5229006B5229006B52
      29004A3921004A3921009C9C9C00000000000000000000000000E7E7E7006342
      2900634229006342290063422900634229006342290063422900634229006342
      29006342290063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000A5845A00FFF7DE00FFF7DE00FFF7DE00FFEFD600FFEFD600FFEFC600FFEF
      C600845A31009C9C9C0000000000000000000000000000000000E7E7E7006342
      2900FFDEA50063422900BDBDBD00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFEF000000000000000000000000000000000000000000000000000000
      000000000000A56B4A00AD9C7B0000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF005A4A2100B5A584009C9C9C000000000000000000E7E7E70063422900E7C6
      9400FFF7C600FFF7C600FFF7C600FFF7C600FFF7C600FFF7C600FFF7C600FFF7
      C600FFF7C60063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000AD8C5A00FFF7E700FFF7E700FFF7E700FFF7DE00FFF7DE00FFEFD600FFEF
      D600845A31009C9C9C00000000000000000000000000E7E7E70063422900FFE7
      B500FFD6A500634229006B5242006B4A3900634A31006342290063422900BDBD
      BD00CECECE00FFFFEF00000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C00A56B4A00B5A57B00000000006B5A3900846B4A00EFEFEF00EFEF
      EF005A4A2100B5A584009C9C9C0000000000FFFFF70063422900FFF7D600FFF7
      D600FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7
      AD00FFEFB50063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000B58C6300FFFFEF00FFFFEF00FFF7E700FFF7E700FFF7DE00FFF7DE00FFF7
      DE00845A31009C9C9C000000000000000000FFFFEF0063422900FFEFBD00FFDE
      AD00FFD69C0063422900FFE7B500FFE7B500FFE7B500FFE7B500BD845A006342
      2900BDBDBD00E7E7E700000000000000000000000000000000004A3921004A39
      21006B522900A56B4A00B5A57B00000000000000000000000000000000000000
      00005A4A2100B5A584009C9C9C000000000063422900FFF7C600FFF7CE00FFF7
      CE00EFC69400EFC69400EFC69400EFC69400EFC69400EFC69400EFC69400EFC6
      9400F7D6A50063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000B58C6300FFFFEF00FFFFEF00FFFFEF00FFF7E700FFF7E700FFF7DE00FFF7
      DE00845A31009C9C9C00000000000000000063422900FFEFBD00FFE7B500FFDE
      A500FFCE940063422900FFE7B500FFE7B500FFE7B500FFE7B500BD845A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000BDA58400AD9C
      7B0000000000A56B4A00C6B59400B5A58400B5A58400B5A58400B5A58400B5A5
      8400B5A58400B5A584009C9C9C000000000063422900FFEFBD00FFF7C600FFF7
      C600EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD
      7B00EFC6940063422900CECECE00FFFFF7000000000000000000000000000000
      00009C636300FFFFF700FFFFF700FFFFEF00FFFFEF00FFF7E700EFDEC600EFDE
      C600845A31009C9C9C00000000000000000063422900FFEFBD00FFE7B500FFD6
      9C00FFC68C0063422900FFEFBD00FFEFBD00FFEFBD00FFEFBD00BD845A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000BDA58400AD9C
      7B0000000000A56B4A00FFFFEF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7
      D60084735200B5A584009C9C9C000000000063422900FFEFB500EFC694000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063422900E7E7E700000000000000000000CEFF004A7BA5000000
      00009C636300FFFFF7008CA5BD00CEFFFF00FFFFEF00E7D6BD00C6A58400C6A5
      8400845A31009C9C9C00000000000000000063422900FFE7B500FFDEA500FFCE
      9400FFBD840063422900FFEFC600FFEFC600FFEFC600FFEFC600BD845A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000BDAD8C00B5A5
      7B0000000000A56B4A00FFFFEF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7
      D60084735200DECEAD009C9C9C000000000063422900EFC69400000000006342
      2900634229006342290063422900634229006342290063422900634229006342
      290063422900E7E7E700000000000000000000000000EFF7F70000CEFF00527B
      A5009C6363005A84AD00CEFFFF00FFFFF700FFFFF700E7D6BD00FFFFF700FFFF
      F700845A31009C9C9C00000000000000000063422900FFE7B500FFD6A500FFC6
      8C00FFBD840063422900FFF7D600FFF7D600FFF7D600FFF7D600C68C5A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6AD8C00B5A5
      7B0000000000A56B4A00FFFFEF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7
      D60010080000A58C6B009C9C9C00000000006342290000000000000000006342
      2900FFD69C00FFD69C00FFD69C00FFD69C00FFD69C00FFD69C00FFD69C006342
      2900DEDEDE000000000000000000000000000000000000000000CEFFFF0000CE
      FF003152730084FFFF000000000000000000FFFFF700E7D6BD00FFFFF700F7D6
      B5009C9C9C0000000000000000000000000063422900FFDEAD00FFD69C00FFC6
      8C00FFD6AD0063422900FFF7E700FFF7E700FFF7D600FFF7D600CE8C5A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6B59400C6B5
      9400B5A58400A56B4A00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFF
      EF006B5A3900BDA584009C9C9C00000000006342290063422900634229006342
      2900FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD006342
      2900E7E7E70000000000000000000000000000000000527BA500527BA50031CE
      FF0031CEFF005A84AD005A84AD005A84AD008CADC600E7D6BD00F7D6B500845A
      31000000000000000000000000000000000063422900FFDEA500FFCE9400FFD6
      B50063422900FFFFF700FFFFF700FFF7E700FFF7E700FFF7E700CE9463006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6B59400FFFF
      EF00F7EFDE00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B
      4A00A56B4A00A56B4A0000000000000000000000000000000000000000006342
      2900FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C6006342
      2900E7E7E7000000000000000000000000000000000000000000527BA50031CE
      FF0031CEFF0000CEFF004A7BA500000000000000000000000000000000000000
      00000000000000000000000000000000000063422900FFD69C00FFDEBD006342
      2900000000000000000000000000FFFFF700FFFFF700FFFFF700CE9463006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6B59400FFFF
      EF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7D600100800004A3921009C9C
      9C00000000000000000000000000000000000000000000000000000000006342
      2900FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE006342
      2900E7E7E70000000000000000000000000000000000527BA50084FFFF000000
      0000527BA50084FFFF0000CEFF00527BA5000000000000000000000000000000
      00000000000000000000000000000000000063422900FFDEBD00634229000000
      0000000000000000000000000000000000000000000000000000D69463006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000EFDEB500FFFF
      EF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF006B5A39004A3921009C9C
      9C00000000000000000000000000000000000000000000000000000000006342
      2900FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF7006342
      2900E7E7E70000000000000000000000000000000000EFF7F700000000000000
      0000527BA50000000000EFF7F70000CEFF000000000000000000000000000000
      00000000000000000000000000000000000063422900A58C7B00FFC68C00FFC6
      8C00FFC68C00FFC68C00FFC68C00FFC68C00FFC68C00FFC68C00FFC68C006342
      2900CECECE00FFFFEF0000000000000000000000000000000000A56B4A00A56B
      4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A000000
      0000000000000000000000000000000000000000000000000000000000006342
      2900000000000000000000000000000000000000000000000000000000006342
      2900FFFFF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063422900634229006342
      2900634229006342290063422900634229006342290063422900634229006342
      2900FFFFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006342
      2900634229006342290063422900634229006342290063422900634229006342
      290000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFE00FFFFFFFFFFFFFC00
      FFFFF1FF8001FDFCE187F0FF0000FDFCC003F87F0000E1C0CA13F80F0000803C
      D003C0030000803CE00780018001800CF0070000C003803CF0070000E007803C
      F0076000E0078000F00F7800E00F801FF00F3810E01F803FFC1F9819E03F803F
      FFFFC063FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8FFFFFFFFFFFC0FF8C03FFFFFFFFFFFF8FFFFFFFFFFFC007FFFFF003F003
      FFFFFFFFFFFFFFFFC0078FFFEE0FF60FFFFF8C03C3FFC3FFC0078FFFFE03FE03
      FFFFFFFFFFFFFFFFC007FFFFF003F003FFFF8FFFFFFFFFFFC0078C03FFFFFFFF
      FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC007C007C007FFFFFFFFFFFFFFFFF87FC03FF83FF807
      F93FFFFFFFFFFFFFFE3FC007C007C007FE7FFFFFFFFFFFFFF9BFC03FF01FF807
      F93FFFFFFFFFFFFFFC3FC007C007C007FFFFFFFFFFFFFFFFFFFFC03FF83FF807
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C003FFFFFBEFFFFFC003FFFFF00FFFFFE0FFFFFFF7DFFFFFF07FF19FC63FF87F
      F03FF99F8E7FFE7FFA0FF91FEEFFFE7FFC0FF81FE0B3FE7FFF03F81FF587FF3F
      FE83F89FF18FFF9FFF03F18FF18FFF0FFFB7FFFFF1DFFFFFFFCFFFFFFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFF
      FE07FE3FFE0FFBEFFC07FF3FFE07F00FF007FF3FFE03F7DFF007FF0FFC03C63F
      E007FF0FF0038E7FE027C72BF803EEFFE007F333F803E0B3E007F807F807F587
      E007F9FFF80FF18FE007F0FFF81FF18FF00FF17FC03FF1DFFC7FF07FC07FFBFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFF03FFFFFFFFFF
      FFFF01FFFFFFFFFFFFFF008FF3EFFE03FFFF0001E997FE03FFF78000E18FFE03
      C1F7C000F18FF003C3FBF000F83FE003C7FBF000FE7FE003CBFBF000FC1FE00F
      DCF7F000F90FE00FFF0FF000F18FE03FFFFFF000E7C7E07FFFFFF000EFEFE0FF
      FFFFF801FFFFFFFFFFFFFC07FFFFFFFFFFFFF8FFFFFFF001F803F0FFFC01E000
      F003E0FFF801C000F003C007F9018000F0038003C1010000F0030003C1F10000
      F0030003C8010000F0030003C8011FF990030003C801200380030003C8016007
      C3070003C0010007800F0003C003E007C1FF0E03C00FE00790FF1FC3C00FE007
      B4FF0003C01FEFE7FFFF8007FFFFE00F00000000000000000000000000000000
      000000000000}
  end
  object ColorDialog1: TColorDialog
    Left = 208
    Top = 108
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.*]|*.*|Rich Text [*.rtf]|*.rtf|Arquivos Tex' +
      'to [*.txt]|*.txt'
    Title = 'Importar arquivo'
    Left = 304
    Top = 109
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
