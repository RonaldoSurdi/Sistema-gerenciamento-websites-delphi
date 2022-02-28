object mdl_photogalery: Tmdl_photogalery
  Left = 193
  Top = 149
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 371
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
      Width = 719
      Height = 363
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Lista de registros'
        object Splitter3: TSplitter
          Left = 0
          Top = 184
          Width = 711
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 22
          Width = 711
          Height = 162
          Align = alTop
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
            Left = 415
            Top = 14
            Height = 146
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
          object Splitter4: TSplitter
            Left = 140
            Top = 14
            Height = 146
            OnMoved = Splitter1Moved
          end
          object Panel12: TPanel
            Left = 143
            Top = 14
            Width = 272
            Height = 146
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 272
              Height = 146
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
              OnMouseDown = DBGrid1MouseDown
            end
          end
          object Panel5: TPanel
            Left = 2
            Top = 14
            Width = 138
            Height = 146
            Align = alLeft
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Caption = '<nulo>'
            Color = 16119285
            TabOrder = 1
            object Panel13: TPanel
              Left = 2
              Top = 86
              Width = 134
              Height = 34
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object Label10: TLabel
                Left = 7
                Top = 2
                Width = 50
                Height = 12
                Caption = 'Tamanho:'
              end
              object Label_size1: TLabel
                Left = 60
                Top = 3
                Width = 22
                Height = 12
                Caption = '0 kb'
              end
              object chk_view1: TCheckBox
                Left = 5
                Top = 18
                Width = 104
                Height = 13
                Hint = 'Atualizar icone automaticamente'#13#10'na navega'#231#227'o dos registros'
                Caption = 'Auto visualizar'
                Checked = True
                ParentShowHint = False
                ShowHint = True
                State = cbChecked
                TabOrder = 0
                OnClick = chk_view1Click
              end
            end
            object swf_logo1: TShockwaveFlash
              Left = 2
              Top = 2
              Width = 134
              Height = 84
              Cursor = crHandPoint
              Hint = 'Icone do '#225'lbum'
              TabStop = False
              Align = alClient
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ControlData = {
                6755665500090000D90D0000AF08000008000200000000000800000000000800
                0000000008000E000000570069006E0064006F00770000000800060000002D00
                310000000800060000002D003100000008000A00000048006900670068000000
                08000200000000000800060000002D0031000000080000000000080002000000
                0000080010000000530068006F00770041006C006C0000000800040000003000
                0000080004000000300000000800020000000000080000000000080002000000
                00000D0000000000000000000000000000000000080004000000310000000800
                0400000030000000080000000000080004000000300000000800080000006100
                6C006C00000008000C000000660061006C00730065000000}
            end
            object ToolBar3: TToolBar
              Left = 2
              Top = 120
              Width = 134
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
              TabOrder = 2
              object bt_open1: TSpeedButton
                Left = 0
                Top = 2
                Width = 44
                Height = 22
                Hint = 'Importar imagem'
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
                OnClick = bt_open1Click
              end
              object bt_limpar1: TSpeedButton
                Left = 44
                Top = 2
                Width = 44
                Height = 22
                Hint = 'Limpar imagem'
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
                OnClick = bt_limpar1Click
              end
              object bt_view1: TSpeedButton
                Left = 88
                Top = 2
                Width = 44
                Height = 22
                Hint = 'Visualizar imagem'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  B2030000424DB203000000000000360200002800000013000000130000000100
                  0800000000007C010000120B0000120B00008000000000000000FFFFFF00FFFF
                  F100F7FCFB00E4F7FA00DCF5EB00FFE7FF00FFE8BE00EAE4C100FCE1BF0084EB
                  C5008FE4C800A2DDCF00AEDACD0071E4B900FFD8B20078E0BF00FAD6AE00DFD7
                  B20078DBC700FED6AC00FDD7A70075DFBA00FFCFBB00BAD6B8006ADDB600EDCE
                  B900A1CFC90066DAB500FFCDA500E8C9BA00E2CFA900FFCC9900F6CC97005CCE
                  C000E6CB9900F0CA9400F5C994003DD69F00D6CA940032D59E0000D6AD00D6C8
                  930079CE9A00DEC68C0088CE8800CFC3930073C5910000CC9900C4C1770060C4
                  8800A5BA890080B8850060B791002EC4710058BB83003AB98C00B0AE850043B5
                  8D0080B47F0090B07A006BB37F0000BD8000AAB35D0081AF7B00999999008F92
                  B80050AB740000AF80008DAA5B009898880086B1380029A67E0043B14B007396
                  9200CC99660001A5750000A764003CA064006484A7005D995C00628A88002AA3
                  3B00009966000A976C0003925B00038D630000974200058574004C758E005672
                  9100646F8F001B7887003C7F5F00008B3E001C75720006863400008B24000289
                  2700078D130000795B003E6D65000A89150008871A002E5E920009821400006C
                  550099663300087B14000A7A16000F771800017A12000F751D00087312001048
                  8300006212002E4751003333330000333300FFFFFF0000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000767640404040404040404040404040404040
                  7600766A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A407600764A0000000000000000
                  0000000000006A407600764A00626C65686D666F656B627048006A407600764A
                  005252524C5B5E71574C4C5437006A407600764A0018150F0D2173581209181B
                  0A006A407600764A00000204055975410C1A000000006A407600764A00033947
                  4E5C515A67502C0B00006A407600764A000731696317464F6449615F01006A40
                  7600764A00292E38342535555672604406006A407600764A00263B36272F285D
                  603E301613006A407600764A001F324B2F2F2F3D6E4D1E1F0E006A407600764A
                  001C193A3C2A2F4354531D2411006A407600764A00242223233F3342452D202B
                  10006A407600764A00141313131313131313131308006A407600764A00000000
                  000000000000000000006A407600764A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A76
                  76007676767676767676767676767676767676767600}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_view1Click
              end
            end
          end
          object Panel2: TPanel
            Left = 418
            Top = 14
            Width = 291
            Height = 146
            Align = alRight
            Color = 16119285
            TabOrder = 2
            object Panel4: TPanel
              Left = 1
              Top = 1
              Width = 289
              Height = 117
              Align = alClient
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 0
              object Panel8: TPanel
                Left = 1
                Top = 0
                Width = 288
                Height = 117
                Align = alRight
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 0
                object Panel19: TPanel
                  Left = 2
                  Top = 2
                  Width = 284
                  Height = 71
                  Align = alTop
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  object Label5: TLabel
                    Left = 19
                    Top = 51
                    Width = 40
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Modelo:'
                  end
                  object Label3: TLabel
                    Left = 4
                    Top = 29
                    Width = 55
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Descri'#231#227'o:'
                  end
                  object Label2: TLabel
                    Left = 18
                    Top = 8
                    Width = 39
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'C'#243'digo:'
                  end
                  object ab_cod: TLabel
                    Left = 62
                    Top = 8
                    Width = 6
                    Height = 12
                    Caption = '0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ComboBox_model: TComboBox
                    Left = 61
                    Top = 48
                    Width = 221
                    Height = 20
                    Style = csDropDownList
                    ItemHeight = 12
                    TabOrder = 0
                    OnKeyDown = EVsaveKeyDown
                  end
                  object ab_titulo: TEdit
                    Left = 61
                    Top = 27
                    Width = 220
                    Height = 20
                    TabOrder = 1
                    OnKeyDown = EVsaveKeyDown
                  end
                  object ab_default: TCheckBox
                    Left = 184
                    Top = 6
                    Width = 96
                    Height = 17
                    Hint = 'Publicar '#225'lbum na galeria de fotos'
                    Caption = 'Publicar '#225'lbum'
                    Checked = True
                    ParentShowHint = False
                    ShowHint = True
                    State = cbChecked
                    TabOrder = 2
                  end
                end
                object GroupBox8: TGroupBox
                  Left = 2
                  Top = 73
                  Width = 284
                  Height = 42
                  Align = alClient
                  Caption = 'Detalhes:'
                  TabOrder = 1
                  object ab_detalhes: TRichEdit
                    Left = 2
                    Top = 14
                    Width = 280
                    Height = 26
                    Align = alClient
                    ScrollBars = ssBoth
                    TabOrder = 0
                  end
                end
              end
            end
            object Panel3: TPanel
              Left = 1
              Top = 118
              Width = 289
              Height = 27
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 16119285
              TabOrder = 1
              object ToolBar2: TToolBar
                Left = 59
                Top = 2
                Width = 228
                Height = 23
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
                object bt_new1: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 75
                  Height = 22
                  Hint = 'Adicionar novo '#225'lbum'
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
                  Left = 75
                  Top = 2
                  Width = 75
                  Height = 22
                  Hint = 'Excluir '#225'lbum selecionado'
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
                  Left = 150
                  Top = 2
                  Width = 78
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
                  OnClick = bt_save1Click
                end
              end
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 188
          Width = 711
          Height = 145
          Align = alClient
          Caption = 'Banco de imagens:'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Splitter2: TSplitter
            Left = 414
            Top = 14
            Height = 129
            Align = alRight
          end
          object Lb_countreg2: TLabel
            Left = 706
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object Splitter5: TSplitter
            Left = 137
            Top = 14
            Height = 129
          end
          object Panel6: TPanel
            Left = 417
            Top = 14
            Width = 292
            Height = 129
            Align = alRight
            Color = 16119285
            TabOrder = 0
            object Panel7: TPanel
              Left = 1
              Top = 101
              Width = 290
              Height = 27
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 16119285
              TabOrder = 0
              object ToolBar4: TToolBar
                Left = -1
                Top = 2
                Width = 289
                Height = 23
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
                object bt_recursive: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 65
                  Height = 22
                  Hint = 'Inclus'#227'o recursiva de imagens'
                  Caption = 'Auto'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    1E020000424D1E02000000000000B60000002800000014000000120000000100
                    08000000000068010000120B0000120B0000200000000000000066330000C0A9
                    930000FF000099663300FAF5EF00F4E2BE00F6EAD3006D5A4B00FFFFFF00F9F1
                    E500F6E8CE00FBF8F700F5E5C500F8EEDF00FFF7EF00FCF7F700F7EDD800F4E3
                    BF00C1AA9000FFFFFF0000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000131313131313
                    1313131313131313131303001313030303030303030303030303131313030303
                    0013030B0B04090D10100C0C05031313030303030300030B0404070000000C0C
                    05031313131303001313030B0B040900120A0A0C11031313131303001313030B
                    0B04040D00120A0C0C031313131303001313030B0B0B000000070A0A0C031313
                    13130300131303080B0B04040D0D06060C0313131313030013130308080B0B04
                    090D06060C031313131303001313030303030303030303030303131313130300
                    13130308080808080808080808031313131303001313030B0404001006000C0C
                    05031313131303001313030B0B04000000000C0C11031313131303001313030B
                    0B04000D0D000A0C0C031313131303001313030B0B0B010000120A0A0C031313
                    13130300131303080B0B04040D0D06060C0313131313030013130308080B0B04
                    090D06060C031313131303001313030303030303030303030303131313130300
                    1313}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_recursiveClick
                end
                object bt_new2: TSpeedButton
                  Left = 65
                  Top = 2
                  Width = 64
                  Height = 22
                  Hint = 'Adicionar nova imagem'
                  Caption = 'Nova'
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
                object bt_del2: TComboSpeedButton
                  Left = 129
                  Top = 2
                  Width = 82
                  Height = 22
                  Hint = 'Excluir imagem selecionada'
                  PopupMenu = PopupMenu2
                  Caption = 'Excluir'
                  Flat = True
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
                  OnClick = bt_del2Click
                end
                object bt_save2: TSpeedButton
                  Left = 211
                  Top = 2
                  Width = 78
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
                  OnClick = bt_save2Click
                end
              end
            end
            object Panel9: TPanel
              Left = 1
              Top = 1
              Width = 290
              Height = 100
              Align = alClient
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 1
              object Panel11: TPanel
                Left = 2
                Top = 0
                Width = 288
                Height = 100
                Align = alRight
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 0
                object GroupBox9: TGroupBox
                  Left = 2
                  Top = 51
                  Width = 284
                  Height = 47
                  Align = alClient
                  Caption = 'Detalhes:'
                  TabOrder = 0
                  object ms_detalhes: TRichEdit
                    Left = 2
                    Top = 14
                    Width = 280
                    Height = 31
                    Align = alClient
                    ScrollBars = ssBoth
                    TabOrder = 0
                  end
                end
                object Panel18: TPanel
                  Left = 2
                  Top = 2
                  Width = 284
                  Height = 49
                  Align = alTop
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  object Label8: TLabel
                    Left = 3
                    Top = 29
                    Width = 55
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Descri'#231#227'o:'
                  end
                  object Label6: TLabel
                    Left = 17
                    Top = 8
                    Width = 39
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'C'#243'digo:'
                  end
                  object ms_cod: TLabel
                    Left = 59
                    Top = 8
                    Width = 6
                    Height = 12
                    Caption = '0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ms_titulo: TEdit
                    Left = 61
                    Top = 27
                    Width = 220
                    Height = 20
                    TabOrder = 0
                    OnKeyDown = EVsave2KeyDown
                  end
                end
              end
            end
          end
          object DBGrid2: TDBGrid
            Left = 140
            Top = 14
            Width = 274
            Height = 129
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
            OnCellClick = DBGrid2CellClick
            OnKeyDown = DBGrid2KeyDown
            OnKeyUp = DBGrid2KeyUp
            OnMouseDown = DBGrid2MouseDown
          end
          object Panel10: TPanel
            Left = 2
            Top = 14
            Width = 135
            Height = 129
            Align = alLeft
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Caption = '<nulo>'
            Color = 16119285
            TabOrder = 2
            object swf_logo2: TShockwaveFlash
              Left = 2
              Top = 2
              Width = 131
              Height = 67
              Cursor = crHandPoint
              Hint = 'Icone da imagem'
              TabStop = False
              Align = alClient
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Visible = False
              ControlData = {
                67556655000900008A0D0000ED06000008000200000000000800000000000800
                0000000008000E000000570069006E0064006F00770000000800060000002D00
                310000000800060000002D003100000008000A00000048006900670068000000
                08000200000000000800060000002D0031000000080000000000080002000000
                0000080010000000530068006F00770041006C006C0000000800040000003000
                0000080004000000300000000800020000000000080000000000080002000000
                00000D0000000000000000000000000000000000080004000000310000000800
                0400000030000000080000000000080004000000300000000800080000006100
                6C006C00000008000C000000660061006C00730065000000}
            end
            object Panel14: TPanel
              Left = 2
              Top = 69
              Width = 131
              Height = 34
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Label12: TLabel
                Left = 7
                Top = 2
                Width = 50
                Height = 12
                Caption = 'Tamanho:'
              end
              object Label_size2: TLabel
                Left = 60
                Top = 3
                Width = 22
                Height = 12
                Caption = '0 kb'
              end
              object chk_view2: TCheckBox
                Left = 5
                Top = 18
                Width = 104
                Height = 13
                Hint = 'Atualizar icone automaticamente'#13#10'na navega'#231#227'o dos registros'
                Caption = 'Auto visualizar'
                Checked = True
                ParentShowHint = False
                ShowHint = True
                State = cbChecked
                TabOrder = 0
                OnClick = chk_view2Click
              end
            end
            object ToolBar1: TToolBar
              Left = 2
              Top = 103
              Width = 131
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
              TabOrder = 2
              object bt_open2: TSpeedButton
                Left = 0
                Top = 2
                Width = 44
                Height = 22
                Hint = 'Importar imagem'
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
                OnClick = bt_open2Click
              end
              object bt_limpar2: TSpeedButton
                Left = 44
                Top = 2
                Width = 44
                Height = 22
                Hint = 'Limpar imagem'
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
                OnClick = bt_limpar2Click
              end
              object ComboSpeedButton1: TComboSpeedButton
                Left = 88
                Top = 2
                Width = 42
                Height = 22
                PopupMenu = PopupMenu1
                Flat = True
                Glyph.Data = {
                  B2030000424DB203000000000000360200002800000013000000130000000100
                  0800000000007C010000120B0000120B00008000000000000000FFFFFF00FFFF
                  F100F7FCFB00E4F7FA00DCF5EB00FFE7FF00FFE8BE00EAE4C100FCE1BF0084EB
                  C5008FE4C800A2DDCF00AEDACD0071E4B900FFD8B20078E0BF00FAD6AE00DFD7
                  B20078DBC700FED6AC00FDD7A70075DFBA00FFCFBB00BAD6B8006ADDB600EDCE
                  B900A1CFC90066DAB500FFCDA500E8C9BA00E2CFA900FFCC9900F6CC97005CCE
                  C000E6CB9900F0CA9400F5C994003DD69F00D6CA940032D59E0000D6AD00D6C8
                  930079CE9A00DEC68C0088CE8800CFC3930073C5910000CC9900C4C1770060C4
                  8800A5BA890080B8850060B791002EC4710058BB83003AB98C00B0AE850043B5
                  8D0080B47F0090B07A006BB37F0000BD8000AAB35D0081AF7B00999999008F92
                  B80050AB740000AF80008DAA5B009898880086B1380029A67E0043B14B007396
                  9200CC99660001A5750000A764003CA064006484A7005D995C00628A88002AA3
                  3B00009966000A976C0003925B00038D630000974200058574004C758E005672
                  9100646F8F001B7887003C7F5F00008B3E001C75720006863400008B24000289
                  2700078D130000795B003E6D65000A89150008871A002E5E920009821400006C
                  550099663300087B14000A7A16000F771800017A12000F751D00087312001048
                  8300006212002E4751003333330000333300FFFFFF0000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000767640404040404040404040404040404040
                  7600766A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A407600764A0000000000000000
                  0000000000006A407600764A00626C65686D666F656B627048006A407600764A
                  005252524C5B5E71574C4C5437006A407600764A0018150F0D2173581209181B
                  0A006A407600764A00000204055975410C1A000000006A407600764A00033947
                  4E5C515A67502C0B00006A407600764A000731696317464F6449615F01006A40
                  7600764A00292E38342535555672604406006A407600764A00263B36272F285D
                  603E301613006A407600764A001F324B2F2F2F3D6E4D1E1F0E006A407600764A
                  001C193A3C2A2F4354531D2411006A407600764A00242223233F3342452D202B
                  10006A407600764A00141313131313131313131308006A407600764A00000000
                  000000000000000000006A407600764A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A76
                  76007676767676767676767676767676767676767600}
                OnClick = ComboSpeedButton1Click
              end
            end
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 0
          Width = 711
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object ToolBar_lng2: TToolBar
            Left = 0
            Top = 4
            Width = 241
            Height = 14
            Align = alNone
            AutoSize = True
            ButtonHeight = 12
            EdgeBorders = []
            TabOrder = 0
            object Label13: TLabel
              Left = 0
              Top = 2
              Width = 88
              Height = 12
              AutoSize = False
              Caption = 'Traduzir textos?'
            end
            object RadioButton1: TRadioButton
              Left = 88
              Top = 2
              Width = 44
              Height = 12
              Caption = 'Sim'
              TabOrder = 0
            end
            object RadioButton2: TRadioButton
              Left = 132
              Top = 2
              Width = 43
              Height = 12
              Caption = 'N'#227'o'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object RadioButton3: TRadioButton
              Left = 175
              Top = 2
              Width = 66
              Height = 12
              Caption = 'Solicitar'
              TabOrder = 2
            end
          end
          object ToolBar_web: TToolBar
            Left = 249
            Top = 0
            Width = 226
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonHeight = 20
            EdgeBorders = []
            TabOrder = 1
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
              Width = 176
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 0
              OnChange = ComboBox_webChange
            end
          end
          object ToolBar_ent: TToolBar
            Left = 480
            Top = 0
            Width = 237
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonHeight = 20
            EdgeBorders = []
            TabOrder = 2
            Visible = False
            object Label16: TLabel
              Left = 0
              Top = 2
              Width = 50
              Height = 20
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Entidade:'
              Layout = tlCenter
            end
            object ComboBox_ent: TComboBox
              Left = 50
              Top = 2
              Width = 187
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 0
              OnChange = ComboBox_entChange
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Personaliza'#231#245'es'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 711
          Height = 43
          Align = alTop
          Caption = 'Textos do m'#243'dulo:'
          TabOrder = 0
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
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 201
          Width = 711
          Height = 108
          Align = alBottom
          Caption = 'Configura'#231#245'es:'
          TabOrder = 1
          object GroupBox5: TGroupBox
            Left = 2
            Top = 14
            Width = 357
            Height = 92
            Align = alLeft
            Caption = 'Lista de '#225'lbuns:'
            TabOrder = 0
            object Label14: TLabel
              Left = 8
              Top = 17
              Width = 121
              Height = 12
              Caption = 'Forma de apresenta'#231#227'o:'
            end
            object Label17: TLabel
              Left = 8
              Top = 35
              Width = 55
              Height = 12
              Caption = 'Descri'#231#227'o:'
            end
            object Label18: TLabel
              Left = 184
              Top = 35
              Width = 49
              Height = 12
              Caption = 'Detalhes:'
            end
            object cp1_0: TRadioButton
              Left = 144
              Top = 16
              Width = 48
              Height = 17
              Caption = 'Lista'
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object cp1_1: TRadioButton
              Left = 200
              Top = 16
              Width = 58
              Height = 17
              Caption = 'Icones'
              TabOrder = 1
            end
            object cp3: TCheckBox
              Left = 8
              Top = 72
              Width = 167
              Height = 14
              Caption = 'Exibir descri'#231#227'o ao acessar'
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
            object cp5: TCheckBox
              Left = 182
              Top = 72
              Width = 164
              Height = 14
              Caption = 'Exibir detalhes ao acessar'
              TabOrder = 3
            end
            object cp2: TComboBox
              Left = 8
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 1
              TabOrder = 4
              Text = 'Superior'
              Items.Strings = (
                'Nenhum'
                'Superior'
                'Inferior'
                'Hint')
            end
            object cp4: TComboBox
              Left = 182
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 1
              TabOrder = 5
              Text = 'Vis'#237'vel'
              Items.Strings = (
                'Nenhum'
                'Vis'#237'vel'
                'Bot'#227'o'
                'Hint')
            end
          end
          object GroupBox6: TGroupBox
            Left = 359
            Top = 14
            Width = 350
            Height = 92
            Align = alClient
            Caption = 'Banco de imagens:'
            TabOrder = 1
            object Label15: TLabel
              Left = 8
              Top = 17
              Width = 121
              Height = 12
              Caption = 'Forma de apresenta'#231#227'o:'
            end
            object Label19: TLabel
              Left = 184
              Top = 35
              Width = 49
              Height = 12
              Caption = 'Detalhes:'
            end
            object Label20: TLabel
              Left = 8
              Top = 35
              Width = 55
              Height = 12
              Caption = 'Descri'#231#227'o:'
            end
            object cp6_0: TRadioButton
              Left = 134
              Top = 16
              Width = 48
              Height = 17
              Caption = 'Lista'
              TabOrder = 0
            end
            object cp6_1: TRadioButton
              Left = 190
              Top = 16
              Width = 58
              Height = 17
              Caption = 'Icones'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object cp7: TComboBox
              Left = 8
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 2
              TabOrder = 2
              Text = 'Inferior'
              Items.Strings = (
                'Nenhum'
                'Superior'
                'Inferior'
                'Hint')
            end
            object cp9: TComboBox
              Left = 182
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 3
              Text = 'Nenhum'
              Items.Strings = (
                'Nenhum'
                'Vis'#237'vel'
                'Bot'#227'o'
                'Hint')
            end
            object cp8: TCheckBox
              Left = 8
              Top = 72
              Width = 167
              Height = 14
              Caption = 'Exibir descri'#231#227'o ao acessar'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
            object cp10: TCheckBox
              Left = 182
              Top = 72
              Width = 164
              Height = 14
              Caption = 'Exibir detalhes ao acessar'
              TabOrder = 5
            end
            object CheckBox1: TCheckBox
              Left = 259
              Top = 17
              Width = 88
              Height = 15
              Caption = 'Incluir busca'
              Checked = True
              State = cbChecked
              TabOrder = 6
            end
            object CheckBox2: TCheckBox
              Left = 259
              Top = 33
              Width = 88
              Height = 15
              Caption = 'Salvar como'
              Checked = True
              State = cbChecked
              TabOrder = 7
            end
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 43
          Width = 711
          Height = 158
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
            Width = 478
            Height = 142
            Cursor = crHandPoint
            Hint = 'Icone do '#225'lbum'
            TabStop = False
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ControlData = {
              67556655100700003B320000E20E000008000200000000000800000000000800
              0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
              08000A0000004800690067006800000008000200000000000B00FFFF08000200
              0000000008000E00000061006C00770061007900730000000800100000005300
              68006F00770041006C006C0000000B0000000B00000008000200000000000800
              02000000000008000200000000000D0000000000000000000000000000000000
              0B0001000B000000080000000000030000000000}
          end
          object Panel17: TPanel
            Left = 480
            Top = 14
            Width = 229
            Height = 142
            Align = alRight
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 1
            object Label21: TLabel
              Left = 18
              Top = 21
              Width = 33
              Height = 12
              Caption = 'Estilo:'
            end
            object Label1: TLabel
              Left = 8
              Top = 45
              Width = 44
              Height = 12
              Caption = 'Posi'#231#227'o:'
            end
            object cp14: TComboBox
              Left = 56
              Top = 16
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 2
              Text = 'Auto ajustar proporcional'
              Items.Strings = (
                'Auto ajustar proporcional'
                'Auto ajustar esticado'
                'Manter tamanho original')
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 118
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
              Top = 40
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 0
              Text = 'Centralizado'
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
        object Panel16: TPanel
          Left = 0
          Top = 309
          Width = 711
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 3
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
            object bt_save3: TSpeedButton
              Left = 0
              Top = 2
              Width = 162
              Height = 22
              Hint = 'Gravar dados'
              Caption = '&Gravar'
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
              OnClick = bt_save3Click
            end
          end
        end
      end
    end
    object ToolBar_lng1: TToolBar
      Left = 236
      Top = 2
      Width = 491
      Height = 24
      Align = alNone
      ButtonHeight = 25
      EdgeBorders = []
      TabOrder = 1
      object Label11: TLabel
        Left = 0
        Top = 2
        Width = 58
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Linguagem:'
        Layout = tlCenter
      end
      object PageControl_languagens: TPageControl
        Left = 58
        Top = 2
        Width = 430
        Height = 25
        ActivePage = lngtb1
        Align = alLeft
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PageControl_languagensChange
        object lngtb1: TTabSheet
          Caption = 'lngtb1'
        end
        object lngtb2: TTabSheet
          Caption = 'lngtb2'
          ImageIndex = 1
          TabVisible = False
        end
        object lngtb3: TTabSheet
          Caption = 'lngtb3'
          ImageIndex = 2
          TabVisible = False
        end
        object lngtb4: TTabSheet
          Caption = 'lngtb4'
          ImageIndex = 3
          TabVisible = False
        end
        object lngtb5: TTabSheet
          Caption = 'lngtb5'
          ImageIndex = 4
          TabVisible = False
        end
        object lngtb6: TTabSheet
          Caption = 'lngtb6'
          ImageIndex = 5
          TabVisible = False
        end
        object lngtb7: TTabSheet
          Caption = 'lngtb7'
          ImageIndex = 6
          TabVisible = False
        end
        object lngtb8: TTabSheet
          Caption = 'lngtb8'
          ImageIndex = 7
          TabVisible = False
        end
        object lngtb9: TTabSheet
          Caption = 'lngtb9'
          ImageIndex = 8
          TabVisible = False
        end
        object lngtb10: TTabSheet
          Caption = 'lngtb10'
          ImageIndex = 9
          TabVisible = False
        end
        object lngtb11: TTabSheet
          Caption = 'lngtb11'
          ImageIndex = 10
          TabVisible = False
        end
        object lngtb12: TTabSheet
          Caption = 'lngtb12'
          ImageIndex = 11
          TabVisible = False
        end
        object lngtb13: TTabSheet
          Caption = 'lngtb13'
          ImageIndex = 12
          TabVisible = False
        end
        object lngtb14: TTabSheet
          Caption = 'lngtb14'
          ImageIndex = 13
          TabVisible = False
        end
        object lngtb15: TTabSheet
          Caption = 'lngtb15'
          ImageIndex = 14
          TabVisible = False
        end
        object lngtb16: TTabSheet
          Caption = 'lngtb16'
          ImageIndex = 15
          TabVisible = False
        end
        object lngtb17: TTabSheet
          Caption = 'lngtb17'
          ImageIndex = 16
          TabVisible = False
        end
        object lngtb18: TTabSheet
          Caption = 'lngtb18'
          ImageIndex = 17
          TabVisible = False
        end
        object lngtb19: TTabSheet
          Caption = 'lngtb19'
          ImageIndex = 18
          TabVisible = False
        end
        object lngtb20: TTabSheet
          Caption = 'lngtb20'
          ImageIndex = 19
          TabVisible = False
        end
      end
    end
  end
  object Panel20: TPanel
    Left = 699
    Top = 4
    Width = 26
    Height = 25
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object bt_help: TSpeedButton
      Left = 1
      Top = 1
      Width = 23
      Height = 22
      Hint = 'Ajuda'
      Caption = '?'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615680
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_helpClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 371
    Width = 727
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
    OnClick = StatusBar1Click
  end
  object XPManifest1: TXPManifest
    Left = 272
    Top = 118
  end
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf,*.flv)|*.jpg;*.' +
      'jpeg;*.bmp;*.ico;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JP' +
      'EG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Fl' +
      'ash (*.swf)|*.swf|Macromedia Flash Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 182
    Top = 117
  end
  object PopupMenu1: TPopupMenu
    Left = 302
    Top = 119
    object Ampliar1: TMenuItem
      Caption = 'Ampliar'
      OnClick = Ampliar1Click
    end
    object Salvarcomo1: TMenuItem
      Caption = 'Salvar como'
      OnClick = Salvarcomo1Click
    end
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 242
    Top = 118
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 212
    Top = 118
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf,*.flv)|*.jpg;*.jpeg;*' +
      '.bmp;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|' +
      '*.jpeg|Bitmaps (*.bmp)|*.bmp|Flash (*.swf)|*.swf|Macromedia Flas' +
      'h Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 366
    Top = 117
  end
  object PopupMenu2: TPopupMenu
    Left = 334
    Top = 119
    object MenuItem1: TMenuItem
      Caption = 'Excluir todos os registros'
      OnClick = MenuItem1Click
    end
  end
  object ExportarImgDialog: TSavePictureDialog
    Filter = 
      'JPEG arquivo de imagem (*.jpg)|*.jpg|Flash (*.swf)|*.swf|Macrome' +
      'dia Flash Video (*.flv)|*.flv'
    Left = 184
    Top = 148
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
