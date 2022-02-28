object adm_modulos: Tadm_modulos
  Left = 196
  Top = 175
  BorderStyle = bsNone
  ClientHeight = 657
  ClientWidth = 903
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
    Width = 903
    Height = 620
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
      Top = 2
      Width = 550
      Height = 612
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
        Top = 73
        Width = 546
        Height = 508
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
        OnCellClick = DBGrid1CellClick
        OnKeyDown = DBGrid1KeyDown
        OnKeyUp = DBGrid1KeyUp
        OnTitleClick = DBGrid1TitleClick
      end
      object Panel_search: TPanel
        Left = 2
        Top = 14
        Width = 546
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
        object Label5: TLabel
          Left = 8
          Top = 40
          Width = 78
          Height = 12
          Caption = 'Exibir m'#243'dulos:'
        end
        object Lb_countreg: TLabel
          Left = 378
          Top = 10
          Width = 159
          Height = 23
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object btfiltpf: TSpeedButton
          Left = 440
          Top = 34
          Width = 24
          Height = 22
          Hint = 'Filtrar'
          Flat = True
          Glyph.Data = {
            B6010000424DB601000000000000B60000002800000010000000100000000100
            08000000000000010000120B0000120B00002000000000000000FFFFFF00CCFF
            FF00F0FBFF0099FFFF0066FFFF0033CCCC009999990033999900009999000080
            8000666666005555550000333300161616000808080000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000101010101010
            10101010101010101010101010100A0D0F0F0D0A1010101010101010100A0C04
            0507090C0D0F0F0D0A101010100D0500050709070F0507090C0A100A0D0D0500
            050709070F050709070F0A09040D0500050709070F050709070F0B07040D0500
            050709070F050709070F0B07040D0500070709070F050709070F0B07040D0504
            040405070F050809070F0B07040D0400000000040F040405080F0B0705070905
            0404050909000000040F0B050404050C0D0D0C0905040405090A0A0501020307
            0E1010060B0B0B0B0610100A0B0B0B0A10101010101010101010101010101010
            1010101010101010101010101010101010101010101010101010}
          ParentShowHint = False
          ShowHint = True
          OnClick = btfiltpfClick
        end
        object Edit_search: TEdit
          Left = 3
          Top = 12
          Width = 214
          Height = 20
          MaxLength = 255
          TabOrder = 0
          OnChange = Edit_searchChange
          OnKeyPress = Edit_searchKeyPress
        end
        object ComboBox_search: TComboBox
          Left = 219
          Top = 12
          Width = 132
          Height = 20
          ItemHeight = 12
          MaxLength = 255
          TabOrder = 1
          OnChange = ComboBox_searchChange
        end
        object RadioButton1: TRadioButton
          Left = 98
          Top = 39
          Width = 55
          Height = 17
          Caption = 'Todos'
          TabOrder = 2
          OnClick = btfiltpfClick
        end
        object RadioButton2: TRadioButton
          Left = 166
          Top = 39
          Width = 75
          Height = 17
          Caption = 'Sistema'
          TabOrder = 3
          OnClick = btfiltpfClick
        end
        object RadioButton3: TRadioButton
          Left = 248
          Top = 39
          Width = 73
          Height = 17
          Caption = 'P'#250'blicos'
          Checked = True
          TabOrder = 4
          TabStop = True
          OnClick = btfiltpfClick
        end
        object CheckBoxpbck1: TCheckBox
          Left = 333
          Top = 38
          Width = 49
          Height = 17
          Caption = 'Pai'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = CheckBoxpbck1Click
        end
        object CheckBoxpbck2: TCheckBox
          Left = 388
          Top = 38
          Width = 49
          Height = 17
          Caption = 'Filho'
          Checked = True
          State = cbChecked
          TabOrder = 6
          OnClick = CheckBoxpbck2Click
        end
      end
      object ToolBar2: TToolBar
        Left = 2
        Top = 581
        Width = 546
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 2
        object ComboSpeedButton1: TComboSpeedButton
          Left = 0
          Top = 2
          Width = 146
          Height = 22
          Hint = 'Atualizar todos os m'#243'dulo apartir do path default'
          PopupMenu = PopupMenu_atualiza
          Caption = 'Atualiza todos'
          Flat = True
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000120B0000120B00001000000000000000FFFFFF0099FF
            FF0000CCFF00C0C0C0000099FF003399CC00868686003366CC00336699003333
            660000000000FFFFFF0000000000000000000000000000000000000000005999
            9950000000009422479000000000499999800006660094224790000600005499
            9998000600000942247900060000051000290006000000588880AAAAAAA00000
            0000A33333A000000000A33333A000000000A33333A000000000A33333A00000
            0000A33333A000000000AAAAAAA000000000}
          ShowHint = True
          OnClick = ComboSpeedButton1Click
        end
      end
    end
    object PageControl2: TPageControl
      Left = 552
      Top = 2
      Width = 345
      Height = 612
      ActivePage = TabSheet1
      Align = alRight
      Style = tsFlatButtons
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Ficha'
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 337
          Height = 582
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
            Height = 537
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 320
              Height = 537
              BevelOuter = bvNone
              Color = 16119285
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label7: TLabel
                Left = 11
                Top = 88
                Width = 101
                Height = 12
                Caption = 'Selecione o m'#243'dulo:'
              end
              object Bevel1: TBevel
                Left = 3
                Top = 184
                Width = 314
                Height = 140
              end
              object Label2: TLabel
                Left = 9
                Top = 417
                Width = 67
                Height = 12
                Caption = 'Observa'#231#245'es'
              end
              object Label8: TLabel
                Left = 214
                Top = 2
                Width = 29
                Height = 12
                Caption = 'Icone'
                Transparent = True
                Layout = tlCenter
              end
              object bt_import: TSpeedButton
                Left = 223
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
                OnClick = bt_importClick
              end
              object bt_clear: TSpeedButton
                Left = 223
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
                OnClick = bt_clearClick
              end
              object SpeedButton5: TSpeedButton
                Left = 252
                Top = 230
                Width = 60
                Height = 22
                Hint = 'Detalhes do anexo'
                Caption = '...'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  9E020000424D9E02000000000000360100002800000012000000120000000100
                  08000000000068010000120B0000120B00004000000000000000FFFFFF00D8FF
                  FF00C2FFFF00BDF6F60033FFFF00A2F2F200E3E3E3008DE9E9008DE7E700DEDF
                  E000A2E1E1006FD6D70033D6D600C7C9CA00B9C8CA007DC8C800BEC3C30083C6
                  C600B2B2B20033B4B40097A3A5007CA4A400979D9E001AA6A600999999007A9C
                  9C0033A0A000719B9B009296970072979700FA7F7F00838383004A8182007C7C
                  7C00407E7E006F7778001E737300666666005C5C5C00125F5F00055656000050
                  50000A4F4F00BA3A3A000047470033333300AA0000005C000D0000000000FFFF
                  FF00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000313131313131
                  3131313131313131313131310000061826303030262530303030303030303131
                  000016300F040C1A24250000000000000030313100002A0400040C1A1325002E
                  2E2E2E2E003031310000280400040C1A13250000000000000030313100002804
                  00040C1A1325002E2E2E2E2E003031310000280400040C1A1325000000000000
                  003031310000280400040C1A1325002E2E2E2E2E003031310000280400000000
                  0A25000000000000003031310000280501000000022525252525252525303131
                  00001D17110703080B2C1B313131313131313131000031192027292722150009
                  0D0E1E0E0D093131000031313131313131101C000E2B2F2B0E001C1000003131
                  31313131313000001E2F2F2F1E0000300000313131313131312130000E002F2B
                  0E003021000031313131313131312130140E1E0E143021310000313131313131
                  313131121F2D302D231231310000313131313131313131313131313131313131
                  0000}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton5Click
              end
              object SpeedButton2: TSpeedButton
                Left = 178
                Top = 230
                Width = 72
                Height = 22
                Hint = 'Limpar anexo'
                Caption = 'Limpar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  4E010000424D4E01000000000000760000002800000012000000120000000100
                  040000000000D8000000120B0000120B0000100000000000000000000000CED3
                  D60000008400FFFF00008482840000FFFF008400000000828400FFFFFF008482
                  0000FF0000000000FF0000000000000000000000000000000000110000000001
                  1111110000001BB777777770111BB10000001BBB1515157701BB1100000011BB
                  B15151770BB111000000114BBB151577BB20110000001147BBB7770BB4401100
                  000014777BBB88BB284011000000478177BBBBB70840110000001718788BBB17
                  7840110000001177811BBBB1774011000000111482BB4BBB6840110000001114
                  8BB139BBB840110000001114BB18888BBB4011000000111BB2666600BBB01100
                  000011BB266666101BBB110000001BB44444444444BBB10000001B4000000000
                  000BB1000000111111111111111111000000}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object SpeedButton1: TSpeedButton
                Left = 7
                Top = 230
                Width = 82
                Height = 22
                Hint = 'Localizar m'#243'dulo a ser anexado'
                Caption = 'Localizar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  4E010000424D4E01000000000000760000002800000012000000120000000100
                  040000000000D8000000120B0000120B0000100000000000000000000000CED3
                  D60000008400FFFF00008482840000FFFF008400000000828400FFFFFF008482
                  0000FF0000000000FF0000000000000000000000000000000000110000000001
                  1111110000001147777777701111110000001148151515770111110000001148
                  5151517701111100000011481515157700001100000011477777770704401100
                  0000147778888870084011000000478177777777084011000000171878888887
                  7840110000001177811811817740110000001114822899866840110000001114
                  8B28398A68401100000011148888888888401100000011146666660000401100
                  0000111466666610104011000000111444444444444011000000111000000000
                  000011000000111111111111111111000000}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object SpeedButton3: TSpeedButton
                Left = 90
                Top = 230
                Width = 87
                Height = 22
                Hint = 'Atualizar o m'#243'dulo apartir do path default'
                Caption = 'Atualizar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  46010000424D4601000000000000460000002800000010000000100000000100
                  08000000000000010000120B0000120B00000400000000000000848200000000
                  FF00FF000000FFFFFF0003030303030303030303030303030303030303030303
                  0303030303030303030303030301030303030303020203030303030103010301
                  0302020302020302020303030101010303020202020202020203010101010101
                  0103020202020202030303030101010302020202020202020202030103010301
                  0202020202020202020203030301000303030202020202020303030300030003
                  0002020202020202020303030300000003020203020203020203030000000000
                  0000030302020303030303030300000003030303030303030303030300030003
                  0003030303030303030303030303000303030303030303030303030303030303
                  03030303030303030303}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton3Click
              end
              object Label6: TLabel
                Left = 13
                Top = 298
                Width = 144
                Height = 12
                Caption = 'Selecione o caminho padr'#227'o:'
              end
              object MdpPdefault: TSpeedButton
                Left = 112
                Top = 315
                Width = 201
                Height = 31
                Hint = 'Aplicar para todos os M'#243'dulos'
                Caption = 'Atribuir Refer'#234'ncias Globais'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  B6010000424DB601000000000000B60000002800000010000000100000000100
                  08000000000000010000120B0000120B00002000000000000000FFFFFF00CCFF
                  FF00F0FBFF0099FFFF0066FFFF0033CCCC009999990033999900009999000080
                  8000666666005555550000333300161616000808080000000000FFFFFF000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000101010101010
                  10101010101010101010101010100A0D0F0F0D0A1010101010101010100A0C04
                  0507090C0D0F0F0D0A101010100D0500050709070F0507090C0A100A0D0D0500
                  050709070F050709070F0A09040D0500050709070F050709070F0B07040D0500
                  050709070F050709070F0B07040D0500070709070F050709070F0B07040D0504
                  040405070F050809070F0B07040D0400000000040F040405080F0B0705070905
                  0404050909000000040F0B050404050C0D0D0C0905040405090A0A0501020307
                  0E1010060B0B0B0B0610100A0B0B0B0A10101010101010101010101010101010
                  1010101010101010101010101010101010101010101010101010}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = MdpPdefaultClick
              end
              object xcodmdlpai: TLabeledEdit
                Left = 201
                Top = 103
                Width = 112
                Height = 20
                EditLabel.Width = 93
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo M'#243'dulo Pai'
                MaxLength = 255
                TabOrder = 5
                OnChange = xcodmdlpaiChange
              end
              object RadioButton5: TRadioButton
                Left = 104
                Top = 106
                Width = 89
                Height = 17
                Caption = 'M'#243'dulo Filho:'
                TabOrder = 4
                OnClick = RadioButton4Click
              end
              object RadioButton4: TRadioButton
                Left = 8
                Top = 106
                Width = 89
                Height = 17
                Caption = 'M'#243'dulo Pai'
                Checked = True
                TabOrder = 3
                TabStop = True
                OnClick = RadioButton4Click
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
              object lbcp2: TLabeledEdit
                Left = 8
                Top = 62
                Width = 306
                Height = 20
                EditLabel.Width = 51
                EditLabel.Height = 12
                EditLabel.Caption = 'Descri'#231#227'o'
                MaxLength = 255
                TabOrder = 2
              end
              object lbcp6: TMemo
                Left = 8
                Top = 431
                Width = 304
                Height = 95
                ScrollBars = ssBoth
                TabOrder = 16
              end
              object lbcp3: TLabeledEdit
                Left = 9
                Top = 140
                Width = 189
                Height = 20
                EditLabel.Width = 36
                EditLabel.Height = 12
                EditLabel.Caption = 'M'#243'dulo'
                MaxLength = 255
                TabOrder = 6
              end
              object lbcp5: TLabeledEdit
                Left = 233
                Top = 206
                Width = 81
                Height = 20
                TabStop = False
                Color = 16119285
                EditLabel.Width = 46
                EditLabel.Height = 12
                EditLabel.Caption = 'Tamanho'
                MaxLength = 255
                ReadOnly = True
                TabOrder = 10
              end
              object lbcp4: TLabeledEdit
                Left = 201
                Top = 140
                Width = 112
                Height = 20
                EditLabel.Width = 36
                EditLabel.Height = 12
                EditLabel.Caption = 'Vers'#227'o'
                MaxLength = 255
                TabOrder = 7
              end
              object Panel3: TPanel
                Left = 246
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
                object swf_logo: TShockwaveFlash
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
                    0B0001000B00000008000000000003000000000008000800000061006C006C00
                    000008000C000000660061006C00730065000000}
                end
              end
              object CheckBox_cript: TCheckBox
                Left = 12
                Top = 276
                Width = 86
                Height = 17
                Caption = 'Criptografar'
                TabOrder = 15
                OnClick = CheckBox_criptClick
              end
              object chk_init: TCheckBox
                Left = 9
                Top = 164
                Width = 270
                Height = 17
                Caption = 'Iniciar m'#243'dulo automaticamente com o sistema.'
                TabOrder = 8
              end
              object xpathpacote: TLabeledEdit
                Left = 9
                Top = 206
                Width = 220
                Height = 20
                EditLabel.Width = 162
                EditLabel.Height = 12
                EditLabel.Caption = 'Path para atualiza'#231#227'o do m'#243'dulo'
                MaxLength = 255
                TabOrder = 9
              end
              object chk_cp2: TCheckBox
                Left = 11
                Top = 257
                Width = 174
                Height = 17
                Caption = 'M'#243'dulo exclusivo do sistema.'
                TabOrder = 11
              end
              object ComboBox_sys: TComboBox
                Left = 167
                Top = 295
                Width = 146
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                TabOrder = 12
                Text = 'Root'
                Items.Strings = (
                  'Root'
                  'Root/bin'
                  'System')
              end
              object mod_title: TLabeledEdit
                Left = 9
                Top = 352
                Width = 306
                Height = 20
                EditLabel.Width = 83
                EditLabel.Height = 12
                EditLabel.Caption = 'T'#237'tulo do m'#243'dulo'
                MaxLength = 255
                TabOrder = 13
              end
              object mod_parm: TLabeledEdit
                Left = 9
                Top = 389
                Width = 306
                Height = 20
                EditLabel.Width = 112
                EditLabel.Height = 12
                EditLabel.Caption = 'Par'#226'metros adicionais'
                MaxLength = 255
                TabOrder = 14
              end
            end
          end
          object ToolBar1: TToolBar
            Left = 2
            Top = 551
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
              Width = 88
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
              Left = 136
              Top = 2
              Width = 88
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
              Left = 224
              Top = 2
              Width = 109
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
      object TabSheet2: TTabSheet
        Caption = 'Tabelas associadas'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 337
          Height = 582
          Align = alClient
          Caption = 'Tabelas associadas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 2
            Top = 292
            Width = 333
            Height = 6
            Cursor = crVSplit
            Align = alBottom
          end
          object DBGrid2: TDBGrid
            Left = 2
            Top = 14
            Width = 333
            Height = 278
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
            OnCellClick = DBGrid2CellClick
            OnKeyDown = DBGrid2KeyDown
            OnKeyUp = DBGrid2KeyUp
          end
          object ToolBar3: TToolBar
            Left = 2
            Top = 551
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
            object bt_new2_all: TSpeedButton
              Left = 48
              Top = 2
              Width = 24
              Height = 22
              Hint = 'Copiar tabelas de outro registro'
              Flat = True
              Glyph.Data = {
                4E010000424D4E01000000000000760000002800000012000000120000000100
                040000000000D8000000120B0000120B00001000000000000000FFFFFF0099FF
                FF0099FFCC00FFECCC00DDDDDD00D7D7D700FFCC990086868600555555000000
                0000FFFFFF000000000000000000000000000000000000000000000000000009
                9999990000000000000009983666690000000000000008283666690000000000
                0009982836666900000089999998182836666900000084544448182836666900
                0000844445481828333339000000854444481828888888000000844454481822
                2229000000008454444818888888000000008444544811111900000000008444
                4448888888000000000087777454450900000000000080000444440900000000
                0000080004454409000000000000008004444409000000000000000800000009
                000000000000000088888889000000000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_new2_allClick
            end
            object bt_new2: TSpeedButton
              Left = 72
              Top = 2
              Width = 67
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
              Left = 139
              Top = 2
              Width = 84
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
              Left = 223
              Top = 2
              Width = 109
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
          object ScrollBox2: TScrollBox
            Left = 2
            Top = 298
            Width = 333
            Height = 253
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 2
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 316
              Height = 252
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
                Top = 132
                Width = 124
                Height = 12
                Caption = 'Campos formul'#225'rio filtro:'
              end
              object bt_filtroadd: TSpeedButton
                Left = 273
                Top = 128
                Width = 21
                Height = 19
                Hint = 'Adicionar linha'
                Flat = True
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
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_filtroaddClick
              end
              object bt_filtrodel: TSpeedButton
                Left = 295
                Top = 127
                Width = 21
                Height = 19
                Hint = 'Remover linha selecionada'
                Flat = True
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
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_filtrodelClick
              end
              object lbct1: TLabeledEdit
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
              object lbct2: TLabeledEdit
                Left = 8
                Top = 62
                Width = 306
                Height = 20
                EditLabel.Width = 51
                EditLabel.Height = 12
                EditLabel.Caption = 'Descri'#231#227'o'
                MaxLength = 255
                TabOrder = 1
              end
              object lbct3: TLabeledEdit
                Left = 9
                Top = 102
                Width = 306
                Height = 20
                EditLabel.Width = 78
                EditLabel.Height = 12
                EditLabel.Caption = 'Nome da tabela'
                MaxLength = 255
                TabOrder = 2
              end
              object StringGrid_filtro: TStringGrid
                Left = 3
                Top = 145
                Width = 314
                Height = 94
                Color = clWhite
                ColCount = 4
                DefaultRowHeight = 18
                FixedColor = 15066597
                FixedCols = 0
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
                TabOrder = 3
                OnKeyDown = StringGrid_filtroKeyDown
                OnSelectCell = StringGrid_filtroSelectCell
                ColWidths = (
                  107
                  74
                  63
                  44)
              end
              object ComboBox_filtro: TComboBox
                Left = 188
                Top = 165
                Width = 64
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                TabOrder = 4
                Text = 'Texto'
                Visible = False
                OnChange = ComboBox_filtroChange
                OnExit = ComboBox_filtroExit
                Items.Strings = (
                  'Texto'
                  'N'#250'mero')
              end
              object SpinEdit_filtro: TSpinEdit
                Left = 251
                Top = 165
                Width = 46
                Height = 21
                MaxValue = 255
                MinValue = 1
                TabOrder = 5
                Value = 11
                Visible = False
                OnExit = SpinEdit_filtroExit
                OnKeyPress = SpinEdit_filtroKeyPress
              end
            end
          end
        end
      end
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 901
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = FormMouseDown
    end
    object bt_fechar: TSpeedButton
      Left = 886
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
      Left = 840
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
      Width = 146
      Height = 13
      Cursor = crHandPoint
      Hint = 'Website'
      Alignment = taCenter
      Caption = 'M'#243'dulos do sistema client'
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
      Left = 855
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
      Left = 871
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
    Top = 640
    Width = 903
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 897
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Exportar imagem'
    Left = 248
    Top = 120
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 277
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.*]|*.*|Execut'#225'vel [*.exe]|*.exe|Biblioteca ' +
      '[*.dll]|*.dll|Flash [*.swf]|*.swf'
    Title = 'Importar m'#243'dulo'
    Left = 274
    Top = 150
  end
  object SaveDialog1: TSaveDialog
    Title = 'Exportar m'#243'dulo'
    Left = 242
    Top = 150
  end
  object CompressStream: TBackupFile
    Version = '6.00'
    BackupMode = bmAll
    CompressionLevel = clMax
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    OnProgress = CompressStreamProgress
    RestoreFullPath = False
    SaveFileID = False
    Left = 202
    Top = 150
  end
  object PopupMenu_atualiza: TPopupMenu
    Left = 202
    Top = 118
    object update_forcar: TMenuItem
      Caption = 'For'#231'ar atualiza'#231#227'o'
      OnClick = update_forcarClick
    end
    object update_descricao: TMenuItem
      Caption = 'Atualizar descri'#231#227'o'
      OnClick = update_descricaoClick
    end
    object update_path: TMenuItem
      Caption = 'Localizar caminho do m'#243'dulo'
      Checked = True
      OnClick = update_pathClick
    end
  end
  object XPManifest1: TXPManifest
    Left = 309
    Top = 119
  end
end
