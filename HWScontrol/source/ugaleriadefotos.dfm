object galeriadefotos: Tgaleriadefotos
  Left = 210
  Top = 184
  BorderStyle = bsNone
  ClientHeight = 392
  ClientWidth = 743
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
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
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 0
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 741
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
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
    object bt_sobre: TSpeedButton
      Left = 679
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
    object bt_minimize: TSpeedButton
      Left = 695
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
      Left = 710
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
    object bt_fechar: TSpeedButton
      Left = 725
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
    object tb_mnt: TLabel
      Left = 24
      Top = 3
      Width = 4
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 24
      Top = 3
      Width = 91
      Height = 13
      Caption = 'Galeria de fotos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object pn_status: TPanel
    Left = 0
    Top = 375
    Width = 743
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 1
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 737
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object pn_editor: TPanel
    Left = 0
    Top = 20
    Width = 743
    Height = 355
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16119285
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 2
      Top = 177
      Width = 739
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 2
      Width = 739
      Height = 175
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
      object db_cds: TDBGrid
        Left = 2
        Top = 14
        Width = 310
        Height = 159
        TabStop = False
        Align = alClient
        Color = clWhite
        DataSource = dm.source_sql
        FixedColor = 15066597
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        OnCellClick = db_cdsCellClick
        OnKeyDown = db_cdsKeyDown
        OnKeyUp = db_cdsKeyUp
      end
      object Panel2: TPanel
        Left = 312
        Top = 14
        Width = 425
        Height = 159
        Align = alRight
        Color = 16119285
        TabOrder = 1
        object Panel3: TPanel
          Left = 1
          Top = 131
          Width = 423
          Height = 27
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 16119285
          TabOrder = 0
          object ToolBar2: TToolBar
            Left = 193
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
            object SpeedButton8: TSpeedButton
              Left = 0
              Top = 2
              Width = 75
              Height = 22
              Hint = 'Adicionar novo CD'
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
              OnClick = SpeedButton8Click
            end
            object SpeedButton7: TSpeedButton
              Left = 75
              Top = 2
              Width = 75
              Height = 22
              Hint = 'Excluir CD selecionado'
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
              OnClick = SpeedButton7Click
            end
            object SpeedButton5: TSpeedButton
              Left = 150
              Top = 2
              Width = 78
              Height = 22
              Hint = 'Gravar dados do CD'
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
              OnClick = SpeedButton5Click
            end
          end
          object ToolBar3: TToolBar
            Left = 2
            Top = 2
            Width = 139
            Height = 23
            Align = alLeft
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
            object SpeedButton4: TSpeedButton
              Left = 0
              Top = 2
              Width = 69
              Height = 22
              Hint = 'Importar capa'
              Caption = 'Abrir'
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
              OnClick = SpeedButton4Click
            end
            object SpeedButton6: TSpeedButton
              Left = 69
              Top = 2
              Width = 70
              Height = 22
              Hint = 'Limpar capa'
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
              OnClick = SpeedButton6Click
            end
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 423
          Height = 130
          Align = alClient
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 135
            Height = 130
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Caption = '<sem foto>'
            Color = 16119285
            TabOrder = 0
            object Imagebase: TImage
              Left = 2
              Top = 2
              Width = 131
              Height = 126
              Align = alClient
              Center = True
              Proportional = True
              Stretch = True
            end
          end
          object Panel8: TPanel
            Left = 135
            Top = 0
            Width = 288
            Height = 130
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 16119285
            TabOrder = 1
            object Label1: TLabel
              Left = 18
              Top = 8
              Width = 39
              Height = 12
              Alignment = taRightJustify
              Caption = 'C'#243'digo:'
            end
            object Label3: TLabel
              Left = 4
              Top = 29
              Width = 55
              Height = 12
              Alignment = taRightJustify
              Caption = 'Descri'#231#227'o:'
            end
            object Label4: TLabel
              Left = 10
              Top = 70
              Width = 49
              Height = 12
              Alignment = taRightJustify
              Caption = 'Detalhes:'
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
            object Label2: TLabel
              Left = 19
              Top = 51
              Width = 40
              Height = 12
              Alignment = taRightJustify
              Caption = 'Modelo:'
            end
            object ab_titulo: TEdit
              Left = 61
              Top = 27
              Width = 223
              Height = 20
              TabOrder = 1
            end
            object ab_detalhes: TMemo
              Left = 61
              Top = 69
              Width = 223
              Height = 57
              ScrollBars = ssVertical
              TabOrder = 3
            end
            object ab_default: TCheckBox
              Left = 152
              Top = 6
              Width = 129
              Height = 17
              Caption = 'Visualizar na galeria'
              Checked = True
              State = cbChecked
              TabOrder = 0
            end
            object ComboBox_model: TComboBox
              Left = 61
              Top = 48
              Width = 223
              Height = 20
              ItemHeight = 12
              TabOrder = 2
            end
          end
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 180
      Width = 739
      Height = 173
      Align = alClient
      Caption = 'Lista de fotos:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object db_musics: TDBGrid
        Left = 2
        Top = 14
        Width = 310
        Height = 157
        TabStop = False
        Align = alClient
        Color = clWhite
        FixedColor = 15066597
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -9
        TitleFont.Name = 'Verdana'
        TitleFont.Style = [fsBold]
        OnCellClick = db_musicsCellClick
        OnKeyDown = db_musicsKeyDown
        OnKeyUp = db_musicsKeyUp
      end
      object Panel6: TPanel
        Left = 312
        Top = 14
        Width = 425
        Height = 157
        Align = alRight
        Color = 16119285
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 129
          Width = 423
          Height = 27
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 16119285
          TabOrder = 0
          object SpeedButton9: TSpeedButton
            Left = 0
            Top = 2
            Width = 69
            Height = 22
            Hint = 'Importar capa'
            Caption = 'Abrir'
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
            OnClick = SpeedButton9Click
          end
          object SpeedButton10: TSpeedButton
            Left = 69
            Top = 2
            Width = 70
            Height = 22
            Hint = 'Limpar capa'
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
            OnClick = SpeedButton10Click
          end
          object ToolBar4: TToolBar
            Left = 193
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
            object SpeedButton1: TSpeedButton
              Left = 0
              Top = 2
              Width = 75
              Height = 22
              Hint = 'Adicionar nova m'#250'sica'
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
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 75
              Top = 2
              Width = 75
              Height = 22
              Hint = 'Excluir m'#250'sica selecionada'
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
              OnClick = SpeedButton2Click
            end
            object SpeedButton3: TSpeedButton
              Left = 150
              Top = 2
              Width = 78
              Height = 22
              Hint = 'Gravar dados da m'#250'sica'
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
              OnClick = SpeedButton3Click
            end
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 423
          Height = 128
          Align = alClient
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 1
          object Panel11: TPanel
            Left = 135
            Top = 0
            Width = 288
            Height = 128
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 16119285
            TabOrder = 0
            object Label6: TLabel
              Left = 17
              Top = 8
              Width = 39
              Height = 12
              Alignment = taRightJustify
              Caption = 'C'#243'digo:'
            end
            object Label8: TLabel
              Left = 3
              Top = 29
              Width = 55
              Height = 12
              Alignment = taRightJustify
              Caption = 'Descri'#231#227'o:'
            end
            object Label9: TLabel
              Left = 9
              Top = 49
              Width = 49
              Height = 12
              Alignment = taRightJustify
              Caption = 'Detalhes:'
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
            object ms_musica: TEdit
              Left = 61
              Top = 27
              Width = 223
              Height = 20
              TabOrder = 0
            end
            object ms_detalhes: TMemo
              Left = 61
              Top = 48
              Width = 223
              Height = 76
              ScrollBars = ssVertical
              TabOrder = 1
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 135
            Height = 128
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Caption = '<sem foto>'
            Color = 16119285
            TabOrder = 1
            object Imagebase2: TImage
              Left = 2
              Top = 2
              Width = 131
              Height = 124
              Align = alClient
              Center = True
              Proportional = True
              Stretch = True
            end
          end
        end
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'All (*.jpg;*.jpeg)|*.jpg;*.jpeg|JPEG Image File (*.jpg)|*.jpg|JP' +
      'EG Image File (*.jpeg)|*.jpeg'
    Title = 'Importar imagem'
    Left = 5
    Top = 360
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'All (*.jpg;*.jpeg)|*.jpg;*.jpeg|JPEG Image File (*.jpg)|*.jpg|JP' +
      'EG Image File (*.jpeg)|*.jpeg'
    Title = 'Exportar imagem'
    Left = 40
    Top = 360
  end
  object OpenDialog_mp3: TOpenDialog
    Filter = 
      'Arquivo de audio (*.mp3)|*.mp3|Flash (*swf)|*.swf|Todos os Arqui' +
      'vos (*.*)|*.*'
    Title = 'Importar mp3'
    Left = 74
    Top = 360
  end
end
