object mdl_news: Tmdl_news
  Left = 175
  Top = 158
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
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 727
      Height = 365
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Campanhas'
        object Splitter1: TSplitter
          Left = 227
          Top = 22
          Height = 313
          OnMoved = Splitter1Moved
        end
        object Paneltop: TPanel
          Left = 0
          Top = 0
          Width = 719
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
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
        object Panel12: TPanel
          Left = 0
          Top = 22
          Width = 227
          Height = 313
          Align = alLeft
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 0
            Top = 81
            Width = 227
            Height = 212
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
          object Panelclass: TPanel
            Left = 0
            Top = 0
            Width = 227
            Height = 81
            Align = alTop
            BevelOuter = bvLowered
            ParentColor = True
            TabOrder = 1
            OnResize = PanelclassResize
            object Label9: TLabel
              Left = 8
              Top = 4
              Width = 72
              Height = 12
              Caption = 'Classifica'#231#227'o:'
            end
            object Panel11: TPanel
              Left = 1
              Top = 19
              Width = 225
              Height = 32
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 16119285
              TabOrder = 0
              object ToolBar17: TToolBar
                Left = 157
                Top = 2
                Width = 66
                Height = 28
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
                object bt_newclass: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 22
                  Height = 22
                  Hint = 'Adicionar novo grupo'
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
                  OnClick = bt_newclassClick
                end
                object bt_delclass: TSpeedButton
                  Left = 22
                  Top = 2
                  Width = 22
                  Height = 22
                  Hint = 'Excluir grupo selecionado'
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
                  OnClick = bt_delclassClick
                end
                object bt_saveclass: TSpeedButton
                  Left = 44
                  Top = 2
                  Width = 22
                  Height = 22
                  Hint = 'Atribuir grupo para registro selecionado'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
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
                  OnClick = bt_saveclassClick
                end
              end
              object ComboBox_class: TComboBox
                Left = 6
                Top = 4
                Width = 150
                Height = 20
                ItemHeight = 12
                TabOrder = 1
                OnClick = ComboBox_classClick
                OnKeyPress = ComboBox_classKeyPress
              end
            end
            object CheckBox_class: TCheckBox
              Left = 173
              Top = 2
              Width = 54
              Height = 17
              Caption = 'Filtrar'
              TabOrder = 1
              OnClick = CheckBox_classClick
            end
            object Panel23: TPanel
              Left = 1
              Top = 51
              Width = 225
              Height = 29
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 16119285
              TabOrder = 2
              object Label29: TLabel
                Left = 0
                Top = 10
                Width = 46
                Height = 12
                Caption = 'Legenda:'
              end
              object ToolBar18: TToolBar
                Left = 201
                Top = 2
                Width = 22
                Height = 25
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
              end
              object ComboBoxEx1: TComboBoxEx
                Left = 49
                Top = 4
                Width = 116
                Height = 22
                ItemsEx = <
                  item
                    Caption = 'Aguardando'
                    ImageIndex = 0
                    SelectedImageIndex = 0
                  end
                  item
                    Caption = 'Enviando'
                    ImageIndex = 1
                    SelectedImageIndex = 1
                  end
                  item
                    Caption = 'Enviado'
                    ImageIndex = 2
                    SelectedImageIndex = 2
                  end
                  item
                    Caption = 'Cancelado'
                    ImageIndex = 3
                    SelectedImageIndex = 3
                  end>
                Style = csExDropDownList
                ItemHeight = 16
                TabOrder = 1
                Images = ImageList_status
                DropDownCount = 8
              end
              object CheckBox4: TCheckBox
                Left = 169
                Top = 6
                Width = 53
                Height = 17
                Caption = 'Filtrar'
                TabOrder = 2
              end
            end
          end
          object Panel21: TPanel
            Left = 0
            Top = 293
            Width = 227
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object Lb_countreg1: TLabel
              Left = 220
              Top = 0
              Width = 7
              Height = 20
              Align = alRight
              Alignment = taRightJustify
              Caption = '0'
              Transparent = True
            end
            object ComboBox_Grid1: TComboBox
              Left = 1
              Top = 0
              Width = 188
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 0
              Text = 'Mostrar '#250'ltimos 10 registros'
              Items.Strings = (
                'Mostrar '#250'ltimos 10 registros'
                'Mostrar '#250'ltimos 50 registros'
                'Mostrar '#250'ltimos 100 registros'
                'Mostrar '#250'ltimos 1000 registros'
                'Mostrar todos os registros')
            end
          end
        end
        object PageControl2: TPageControl
          Left = 230
          Top = 22
          Width = 489
          Height = 313
          ActivePage = TabSheet4
          Align = alClient
          TabOrder = 2
          object TabSheet4: TTabSheet
            Caption = 'Cadastro de Campanha'
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 481
              Height = 286
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Panel3: TPanel
                Left = 1
                Top = 257
                Width = 479
                Height = 28
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 0
                object ToolBar2: TToolBar
                  Left = 192
                  Top = 2
                  Width = 285
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
                  object bt_new1: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 95
                    Height = 22
                    Hint = 'Adicionar nova Campanha'
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
                    OnClick = bt_new1Click
                  end
                  object bt_del1: TSpeedButton
                    Left = 95
                    Top = 2
                    Width = 95
                    Height = 22
                    Hint = 'Excluir Campanha'
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
                  object SpeedButton4: TSpeedButton
                    Left = 190
                    Top = 2
                    Width = 95
                    Height = 22
                    Hint = 'Cancelar Campanha'
                    Caption = 'Cancelar'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      1E020000424D1E02000000000000B60000002800000012000000120000000100
                      08000000000068010000120B0000120B000020000000000000000033000008B7
                      F00000FF0000FFFFFF00FDA70000A5FFF900855D3300D6AC7D0061E0FF00633D
                      3300AF8B630000FFFF0066333300FFCC9900CD891600895E4B0078493F00835B
                      38007F5F3600B28B6400CEA98100A5FDFD00FFFFFF0000000000000000000000
                      0000000000000000000000000000000000000000000000000000161616161616
                      161616161616161616161616000016000A161616161616161616161616161616
                      0000060A000A161616161616010B1616010B1616000016110A000A1616161616
                      010801010816161600001616120A001010100F16011501151616161600001616
                      1606131211110E0C080303150101161600001616161606140D0D110411030315
                      080B1616000016161616110303030D0615110815161616160000161616160603
                      0303120306040C1616161616000016161616060D031103120D110E0F16161616
                      000016160101011111051103030D1110161616160000160B0805050103110303
                      030D111016161616000016161616150301110D03030712091616161600001616
                      1616151515010606060613000A1616160000161616080116050116161616060A
                      000A1616000016160B01161608011616161616120A000A160000161616161616
                      0B01161616161616110A00160000161616161616161616161616161616061616
                      0000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                  end
                end
                object ToolBar11: TToolBar
                  Left = 2
                  Top = 2
                  Width = 172
                  Height = 24
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
                  object SpeedButton3: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 86
                    Height = 22
                    Hint = 'Tela anterior'
                    Caption = 'Voltar'
                    Enabled = False
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      8E060000424D8E06000000000000360400002800000018000000190000000100
                      08000000000058020000120B0000120B00000001000018000000FFFFFF00FCEE
                      D000FAE8CC00F7E4C600F9E3BF00F8E0BD00F7DCB500F7D6AD00F6D0A500F5CE
                      9F00F2CC9B00F5C99A00E9C79A00F6C69300F0C49900EFC59300F5C18C00F0C1
                      9000F1BD8B00F4BD8500EFBA8400F5B67C00F2B57B00CC990000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000001717000000000000001717
                      0000000000000000000000001717170000000000001717170000000000000000
                      0000001717171700000000001717171700000000000000000000171715171700
                      0000001717161717000000000000000000171716161717000000171715151717
                      0000000000000000171713141417170000171713141317170000000000000017
                      1712121212171700171710121212171700000000000017170D1111110D171717
                      170D111111111717000000000017170B0E0E0E0F0F1717170B0E0E0E0E0E1717
                      000000001717090A0A0A0A0A17170E090A0A0A0A0A0A17170000000017170808
                      080808081717060708080808080817170000000000171707070707070C171717
                      0707070707071717000000000000171706060606061717171705070707061717
                      0000000000000017170506060417170017170406060617170000000000000000
                      1717040404171700001717040404171700000000000000000017170303171700
                      0000171702021717000000000000000000001717021717000000001717011717
                      0000000000000000000000171717170000000000171717170000000000000000
                      0000000017171700000000000017171700000000000000000000000000171700
                      0000000000001717000000000000000000000000000017000000000000000017
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000000000000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                  end
                  object SpeedButton14: TSpeedButton
                    Left = 86
                    Top = 2
                    Width = 86
                    Height = 22
                    Hint = 'Pr'#243'xima tela'
                    Caption = 'Avan'#231'ar'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      8E060000424D8E06000000000000360400002800000018000000190000000100
                      08000000000058020000120B0000120B00000001000034000000FFFFFF00FCEE
                      CF00FAE8CB00FAE8CD00FAE7CA00F7E4C700F7E3C400F9E3C000F9E3BF00F9E2
                      BE00F8E0BC00F8DFBC00F7DCB600F7DCB500F7DCB400F7DBB400F7D6AD00F7D6
                      AC00F7D6AE00F6D0A600F6D0A500F6D0A400F5CEA000F5CE9F00F2CC9C00F2CC
                      9B00F5C99A00E9C79B00F0C49900F6C69400F6C69300F0C49A00EFC59300F0C1
                      9100F5C18C00F0C19000F1BD8B00F1BD8C00F4BD8600F4BD8500EFBA8400EFBA
                      8500F5B67C00F5B67D00F2B57B00F2B57C00CC9B0400CC9A0300CC990100CC99
                      0000CC990200CC98000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000003333000000000000003333000000000000000000
                      0000000031313100000000000031313100000000000000000000000031313131
                      000000000031313131000000000000000000000031312C31310000000031312A
                      31310000000000000000000031312B2B313100000031312D2D31310000000000
                      0000000031312628273131000031312929273131000000000000000031312525
                      25223131003131252424243131000000000000003131212323231E313131311D
                      2323231E313100000000000031311F1C1C1C1C1A31313120201C1C1C1A313100
                      000000003131181919191919161C313118191919191731310000000031311314
                      14141414110E3131131414141414312F0000000031311210101010103131311B
                      1010101010312F000000000031310C1010100A333232320C0D0D0D0D312E0000
                      0000000031310C0C0C09332E003131070D0D0B332E0000000000000031310707
                      07332E00003131070707332E000000000000000031310303332E000000313105
                      05332E000000000000000000313101332E00000000313102332E000000000000
                      000000003131312E00000000003131312E000000000000000000000031312E00
                      000000000031312E000000000000000000000000312E00000000000000312E00
                      0000000000000000000000003200000000000000003200000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000000000000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton14Click
                  end
                end
              end
              object Panel19: TPanel
                Left = 1
                Top = 1
                Width = 479
                Height = 256
                Align = alClient
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Label2: TLabel
                  Left = 11
                  Top = 7
                  Width = 39
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'C'#243'digo:'
                end
                object ab_cod: TLabel
                  Left = 55
                  Top = 7
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
                object Label24: TLabel
                  Left = 183
                  Top = 130
                  Width = 39
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Cidade:'
                  Enabled = False
                end
                object Label25: TLabel
                  Left = 13
                  Top = 130
                  Width = 100
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Selecione o Estado:'
                  Enabled = False
                end
                object Label27: TLabel
                  Left = 13
                  Top = 184
                  Width = 28
                  Height = 12
                  Caption = 'Data:'
                  Enabled = False
                end
                object Label28: TLabel
                  Left = 213
                  Top = 183
                  Width = 28
                  Height = 12
                  Caption = 'Hora:'
                  Enabled = False
                end
                object Label26: TLabel
                  Left = 11
                  Top = 163
                  Width = 151
                  Height = 12
                  Caption = 'Data para envio da campanha:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                end
                object Label30: TLabel
                  Left = 11
                  Top = 108
                  Width = 88
                  Height = 12
                  Caption = 'Filtrar por regi'#227'o:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                end
                object Label31: TLabel
                  Left = 11
                  Top = 29
                  Width = 102
                  Height = 12
                  Caption = 'T'#237'tulo da Campanha:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 296
                  Top = 15
                  Width = 37
                  Height = 12
                  Caption = 'Status:'
                end
                object Label23: TLabel
                  Left = 12
                  Top = 72
                  Width = 118
                  Height = 12
                  Caption = 'Enviar mensagens para:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                end
                object Label34: TLabel
                  Left = 13
                  Top = 206
                  Width = 26
                  Height = 12
                  Caption = 'Tipo:'
                  Enabled = False
                end
                object Label35: TLabel
                  Left = 213
                  Top = 206
                  Width = 53
                  Height = 12
                  Caption = 'Exibi'#231#245'es:'
                  Enabled = False
                end
                object Label36: TLabel
                  Left = 341
                  Top = 206
                  Width = 69
                  Height = 12
                  Caption = '(0 - ilimitado)'
                  Enabled = False
                end
                object ab_titulo: TEdit
                  Left = 12
                  Top = 43
                  Width = 437
                  Height = 20
                  TabOrder = 1
                  OnKeyDown = EVsaveKeyDown
                end
                object ComboBox_class2: TComboBox
                  Left = 136
                  Top = 68
                  Width = 313
                  Height = 20
                  Style = csDropDownList
                  ItemHeight = 12
                  ItemIndex = 0
                  TabOrder = 0
                  Text = 'Todos os usu'#225'rios cadastrados'
                  OnKeyDown = EVsaveKeyDown
                  Items.Strings = (
                    'Todos os usu'#225'rios cadastrados')
                end
                object xcp18_ax: TComboBox
                  Left = 224
                  Top = 127
                  Width = 225
                  Height = 20
                  Enabled = False
                  ItemHeight = 12
                  TabOrder = 3
                end
                object xcp18_axuf: TComboBox
                  Left = 118
                  Top = 127
                  Width = 59
                  Height = 20
                  Enabled = False
                  ItemHeight = 12
                  TabOrder = 2
                  OnChange = xcp18_axufChange
                end
                object cb_dt: TDateTimePicker
                  Left = 48
                  Top = 180
                  Width = 161
                  Height = 21
                  Date = 38188.985605150460000000
                  Time = 38188.985605150460000000
                  Enabled = False
                  TabOrder = 4
                end
                object cb_tm: TDateTimePicker
                  Left = 245
                  Top = 180
                  Width = 91
                  Height = 21
                  Date = 38188.041666666660000000
                  Time = 38188.041666666660000000
                  Enabled = False
                  Kind = dtkTime
                  TabOrder = 5
                end
                object cb_auto: TCheckBox
                  Left = 173
                  Top = 161
                  Width = 89
                  Height = 17
                  Caption = 'Autom'#225'tico'
                  Checked = True
                  State = cbChecked
                  TabOrder = 6
                  OnClick = cb_autoClick
                end
                object RadioButton4: TRadioButton
                  Left = 121
                  Top = 107
                  Width = 48
                  Height = 17
                  Caption = 'Sim'
                  TabOrder = 7
                  OnClick = RadioButton4Click
                end
                object RadioButton5: TRadioButton
                  Left = 177
                  Top = 107
                  Width = 48
                  Height = 17
                  Caption = 'N'#227'o'
                  Checked = True
                  TabOrder = 8
                  TabStop = True
                  OnClick = RadioButton5Click
                end
                object ComboBoxEx2: TComboBoxEx
                  Left = 337
                  Top = 11
                  Width = 116
                  Height = 22
                  ItemsEx = <
                    item
                      Caption = 'Aguardando'
                      ImageIndex = 0
                      SelectedImageIndex = 0
                    end
                    item
                      Caption = 'Enviando'
                      ImageIndex = 1
                      SelectedImageIndex = 1
                    end
                    item
                      Caption = 'Enviado'
                      ImageIndex = 2
                      SelectedImageIndex = 2
                    end
                    item
                      Caption = 'Cancelado'
                      ImageIndex = 3
                      SelectedImageIndex = 3
                    end>
                  Style = csExDropDownList
                  ItemHeight = 16
                  TabOrder = 9
                  Images = ImageList_status
                  DropDownCount = 8
                end
                object cb_rm: TComboBox
                  Left = 49
                  Top = 202
                  Width = 159
                  Height = 20
                  Style = csDropDownList
                  Enabled = False
                  ItemHeight = 12
                  ItemIndex = 0
                  TabOrder = 10
                  Text = 'Remessa '#218'nica'
                  Items.Strings = (
                    'Remessa '#218'nica'
                    'Remessa Di'#225'ria'
                    'Remessa Semanal'
                    'Remessa Mensal'
                    'Remessa Semestral'
                    'Remessa Anual')
                end
                object cb_exb: TEdit
                  Left = 269
                  Top = 202
                  Width = 48
                  Height = 20
                  Enabled = False
                  TabOrder = 11
                  Text = '1'
                end
                object cb_exbup: TUpDown
                  Left = 317
                  Top = 202
                  Width = 16
                  Height = 20
                  Associate = cb_exb
                  Enabled = False
                  Max = 1000
                  Position = 1
                  TabOrder = 12
                end
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Banner'
            ImageIndex = 1
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 481
              Height = 258
              Align = alClient
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = '<nulo>'
              Color = 16119285
              TabOrder = 0
              object swf_logo1: TShockwaveFlash
                Left = 2
                Top = 85
                Width = 477
                Height = 171
                Cursor = crHandPoint
                Hint = 'Icone do '#225'lbum'
                TabStop = False
                Align = alClient
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ControlData = {
                  67556655100700004D310000AC11000008000200000000000800000000000800
                  0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                  08000A0000004800690067006800000008000200000000000B00FFFF08000200
                  0000000008000E00000061006C00770061007900730000000800100000005300
                  68006F00770041006C006C0000000B0000000B00000008000200000000000800
                  02000000000008000200000000000D0000000000000000000000000000000000
                  0B0001000B00000008000000000003000000000008000800000061006C006C00
                  000008000C000000660061006C00730065000000}
              end
              object ToolBar3: TToolBar
                Left = 2
                Top = 2
                Width = 477
                Height = 57
                ButtonHeight = 53
                Caption = 'pn_barra'
                EdgeBorders = []
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object bt_open1: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 73
                  Height = 53
                  Hint = 'Importar imagem'
                  Caption = 'Importar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
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
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = bt_open1Click
                end
                object SpeedButton1: TSpeedButton
                  Left = 73
                  Top = 2
                  Width = 73
                  Height = 53
                  Hint = 'Salvar como'
                  Caption = 'Salvar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
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
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = bt_open1Click
                end
                object bt_limpar1: TSpeedButton
                  Left = 146
                  Top = 2
                  Width = 71
                  Height = 53
                  Hint = 'Limpar banner'
                  Caption = 'Limpar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
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
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = bt_limpar1Click
                end
                object Panel13: TPanel
                  Left = 217
                  Top = 2
                  Width = 109
                  Height = 53
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  object Label10: TLabel
                    Left = 31
                    Top = 14
                    Width = 47
                    Height = 14
                    Alignment = taCenter
                    Caption = 'Tamanho:'
                    Transparent = True
                  end
                  object Label_size1: TLabel
                    Left = 42
                    Top = 27
                    Width = 26
                    Height = 16
                    Alignment = taCenter
                    Caption = '0 kb'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Arial'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Transparent = True
                  end
                  object chk_view1: TCheckBox
                    Left = 8
                    Top = 2
                    Width = 94
                    Height = 13
                    Hint = 'Atualizar icone automaticamente'#13#10'na navega'#231#227'o dos registros'
                    Caption = 'Auto visualizar'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    OnClick = chk_view1Click
                  end
                end
                object Panel4: TPanel
                  Left = 326
                  Top = 2
                  Width = 139
                  Height = 53
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  object CheckBox6: TCheckBox
                    Left = 6
                    Top = 5
                    Width = 128
                    Height = 17
                    Caption = 'Exibir banner padr'#227'o'
                    Checked = True
                    State = cbChecked
                    TabOrder = 0
                  end
                end
              end
              object ToolBar4: TToolBar
                Left = 2
                Top = 59
                Width = 477
                Height = 26
                Caption = 'pn_barra'
                EdgeBorders = []
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                object Label33: TLabel
                  Left = 0
                  Top = 2
                  Width = 57
                  Height = 22
                  AutoSize = False
                  Caption = '  Hiperlink:'
                  Layout = tlCenter
                end
                object Edit2: TEdit
                  Left = 57
                  Top = 2
                  Width = 404
                  Height = 22
                  TabOrder = 0
                  Text = 'http://'
                end
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 258
              Width = 481
              Height = 28
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 16119285
              TabOrder = 1
              object ToolBar10: TToolBar
                Left = 2
                Top = 2
                Width = 172
                Height = 24
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
                TabOrder = 0
                object SpeedButton16: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 86
                  Height = 22
                  Hint = 'Tela anterior'
                  Caption = 'Voltar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    8E060000424D8E06000000000000360400002800000018000000190000000100
                    08000000000058020000120B0000120B00000001000018000000FFFFFF00FCEE
                    D000FAE8CC00F7E4C600F9E3BF00F8E0BD00F7DCB500F7D6AD00F6D0A500F5CE
                    9F00F2CC9B00F5C99A00E9C79A00F6C69300F0C49900EFC59300F5C18C00F0C1
                    9000F1BD8B00F4BD8500EFBA8400F5B67C00F2B57B00CC990000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000001717000000000000001717
                    0000000000000000000000001717170000000000001717170000000000000000
                    0000001717171700000000001717171700000000000000000000171715171700
                    0000001717161717000000000000000000171716161717000000171715151717
                    0000000000000000171713141417170000171713141317170000000000000017
                    1712121212171700171710121212171700000000000017170D1111110D171717
                    170D111111111717000000000017170B0E0E0E0F0F1717170B0E0E0E0E0E1717
                    000000001717090A0A0A0A0A17170E090A0A0A0A0A0A17170000000017170808
                    080808081717060708080808080817170000000000171707070707070C171717
                    0707070707071717000000000000171706060606061717171705070707061717
                    0000000000000017170506060417170017170406060617170000000000000000
                    1717040404171700001717040404171700000000000000000017170303171700
                    0000171702021717000000000000000000001717021717000000001717011717
                    0000000000000000000000171717170000000000171717170000000000000000
                    0000000017171700000000000017171700000000000000000000000000171700
                    0000000000001717000000000000000000000000000017000000000000000017
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton16Click
                end
                object SpeedButton15: TSpeedButton
                  Left = 86
                  Top = 2
                  Width = 86
                  Height = 22
                  Hint = 'Pr'#243'xima tela'
                  Caption = 'Avan'#231'ar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    8E060000424D8E06000000000000360400002800000018000000190000000100
                    08000000000058020000120B0000120B00000001000034000000FFFFFF00FCEE
                    CF00FAE8CB00FAE8CD00FAE7CA00F7E4C700F7E3C400F9E3C000F9E3BF00F9E2
                    BE00F8E0BC00F8DFBC00F7DCB600F7DCB500F7DCB400F7DBB400F7D6AD00F7D6
                    AC00F7D6AE00F6D0A600F6D0A500F6D0A400F5CEA000F5CE9F00F2CC9C00F2CC
                    9B00F5C99A00E9C79B00F0C49900F6C69400F6C69300F0C49A00EFC59300F0C1
                    9100F5C18C00F0C19000F1BD8B00F1BD8C00F4BD8600F4BD8500EFBA8400EFBA
                    8500F5B67C00F5B67D00F2B57B00F2B57C00CC9B0400CC9A0300CC990100CC99
                    0000CC990200CC98000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000003333000000000000003333000000000000000000
                    0000000031313100000000000031313100000000000000000000000031313131
                    000000000031313131000000000000000000000031312C31310000000031312A
                    31310000000000000000000031312B2B313100000031312D2D31310000000000
                    0000000031312628273131000031312929273131000000000000000031312525
                    25223131003131252424243131000000000000003131212323231E313131311D
                    2323231E313100000000000031311F1C1C1C1C1A31313120201C1C1C1A313100
                    000000003131181919191919161C313118191919191731310000000031311314
                    14141414110E3131131414141414312F0000000031311210101010103131311B
                    1010101010312F000000000031310C1010100A333232320C0D0D0D0D312E0000
                    0000000031310C0C0C09332E003131070D0D0B332E0000000000000031310707
                    07332E00003131070707332E000000000000000031310303332E000000313105
                    05332E000000000000000000313101332E00000000313102332E000000000000
                    000000003131312E00000000003131312E000000000000000000000031312E00
                    000000000031312E000000000000000000000000312E00000000000000312E00
                    0000000000000000000000003200000000000000003200000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton15Click
                end
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Mensagem'
            ImageIndex = 2
            object CoolBar2: TCoolBar
              Left = 0
              Top = 0
              Width = 481
              Height = 53
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar12
                  ImageIndex = -1
                  MinHeight = 26
                  Width = 281
                end
                item
                  Break = False
                  Control = ToolBar13
                  ImageIndex = -1
                  Width = 198
                end
                item
                  Control = ToolBar14
                  ImageIndex = -1
                  Width = 155
                end
                item
                  Break = False
                  Control = ToolBar16
                  ImageIndex = -1
                  Width = 103
                end
                item
                  Break = False
                  Control = ToolBar15
                  ImageIndex = -1
                  Width = 219
                end>
              EdgeBorders = []
              object ToolBar12: TToolBar
                Left = 9
                Top = 0
                Width = 268
                Height = 26
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
                object FontName1: TComboBox
                  Left = 4
                  Top = 1
                  Width = 181
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
                object ToolButton16: TToolButton
                  Left = 185
                  Top = 0
                  Width = 8
                  ImageIndex = 8
                  Style = tbsSeparator
                end
                object FontSize1: TEdit
                  Left = 193
                  Top = 0
                  Width = 48
                  Height = 22
                  Hint = 'Selecione o tamanho da fonte'
                  TabOrder = 1
                  Text = '12'
                  OnChange = FontSizeChange
                end
                object UpDown2: TUpDown
                  Left = 241
                  Top = 0
                  Width = 16
                  Height = 22
                  Associate = FontSize1
                  Max = 150
                  Increment = 5
                  Position = 12
                  TabOrder = 2
                end
              end
              object ToolBar13: TToolBar
                Left = 292
                Top = 0
                Width = 185
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
                object BoldButton1: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Negrito'
                  ImageIndex = 13
                  MenuItem = Negrito1
                  Style = tbsCheck
                end
                object ItalicButton1: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'It'#225'lico'
                  ImageIndex = 15
                  MenuItem = Italico1
                  Style = tbsCheck
                end
                object UnderlineButton1: TToolButton
                  Left = 50
                  Top = 0
                  Caption = 'Sublinhado'
                  ImageIndex = 16
                  MenuItem = Sublinhado1
                  Style = tbsCheck
                end
              end
              object ToolBar14: TToolBar
                Left = 9
                Top = 28
                Width = 142
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
                object LeftAlign1: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'esquerdo'
                  Grouped = True
                  ImageIndex = 17
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object CenterAlign1: TToolButton
                  Tag = 2
                  Left = 27
                  Top = 0
                  Caption = 'centro'
                  Grouped = True
                  ImageIndex = 18
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object RightAlign1: TToolButton
                  Tag = 1
                  Left = 50
                  Top = 0
                  Caption = 'direita'
                  Grouped = True
                  ImageIndex = 19
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object JustifyAlign1: TToolButton
                  Tag = 3
                  Left = 73
                  Top = 0
                  Caption = 'justificado'
                  Grouped = True
                  ImageIndex = 20
                  Style = tbsCheck
                  OnClick = AlignButtonClick
                end
                object ToolButton1: TToolButton
                  Left = 96
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton1'
                  ImageIndex = 22
                  Style = tbsSeparator
                end
                object BulletsButton1: TToolButton
                  Left = 104
                  Top = 0
                  Caption = 'Marcador'
                  ImageIndex = 21
                  MenuItem = Marcador1
                  Style = tbsCheck
                end
              end
              object ToolBar15: TToolBar
                Left = 271
                Top = 28
                Width = 206
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
                object ToolButton17: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Recortar'
                  ImageIndex = 6
                  MenuItem = Recortar1
                end
                object ToolButton18: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'Copiar'
                  ImageIndex = 7
                  MenuItem = Copiar1
                end
                object ToolButton19: TToolButton
                  Left = 50
                  Top = 0
                  Caption = 'Colar'
                  ImageIndex = 8
                  MenuItem = Colar1
                end
                object ToolButton20: TToolButton
                  Left = 73
                  Top = 0
                  Caption = 'Importar'
                  ImageIndex = 27
                  MenuItem = Importar1
                end
              end
              object ToolBar16: TToolBar
                Left = 166
                Top = 28
                Width = 90
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
                object fontColor1: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Cor'
                  ImageIndex = 10
                  MenuItem = Cor1
                end
                object eddesfazer1: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'Desfazer'
                  ImageIndex = 4
                  MenuItem = Desfazer1
                end
                object ToolButton2: TToolButton
                  Left = 50
                  Top = 0
                  Caption = 'Cor de fundo'
                  ImageIndex = 12
                  MenuItem = Cordefundo1
                end
              end
            end
            object re_editor1: TRxRichEdit
              Left = 0
              Top = 53
              Width = 481
              Height = 205
              Align = alClient
              Lines.Strings = (
                'accessing...')
              PopupMenu = PopupMenu_editor
              TabOrder = 1
              OnKeyDown = re_editorKeyDown
              OnSelectionChange = SelectionChange
            end
            object Panel14: TPanel
              Left = 0
              Top = 258
              Width = 481
              Height = 28
              Align = alBottom
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = 16119285
              TabOrder = 2
              object ToolBar9: TToolBar
                Left = 289
                Top = 2
                Width = 190
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
                object SpeedButton12: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 95
                  Height = 22
                  Hint = 'Cancelar Campanha'
                  Caption = 'Cancelar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    1E020000424D1E02000000000000B60000002800000012000000120000000100
                    08000000000068010000120B0000120B000020000000000000000033000008B7
                    F00000FF0000FFFFFF00FDA70000A5FFF900855D3300D6AC7D0061E0FF00633D
                    3300AF8B630000FFFF0066333300FFCC9900CD891600895E4B0078493F00835B
                    38007F5F3600B28B6400CEA98100A5FDFD00FFFFFF0000000000000000000000
                    0000000000000000000000000000000000000000000000000000161616161616
                    161616161616161616161616000016000A161616161616161616161616161616
                    0000060A000A161616161616010B1616010B1616000016110A000A1616161616
                    010801010816161600001616120A001010100F16011501151616161600001616
                    1606131211110E0C080303150101161600001616161606140D0D110411030315
                    080B1616000016161616110303030D0615110815161616160000161616160603
                    0303120306040C1616161616000016161616060D031103120D110E0F16161616
                    000016160101011111051103030D1110161616160000160B0805050103110303
                    030D111016161616000016161616150301110D03030712091616161600001616
                    1616151515010606060613000A1616160000161616080116050116161616060A
                    000A1616000016160B01161608011616161616120A000A160000161616161616
                    0B01161616161616110A00160000161616161616161616161616161616061616
                    0000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object bt_save1: TSpeedButton
                  Left = 95
                  Top = 2
                  Width = 95
                  Height = 22
                  Hint = 'Enviar Campanha'
                  Caption = 'Enviar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656560000008D8D8DFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFF8E8B88898683FFFFFF6F757B354C5F152C42656669DAFCFF4067901C
                    3249C1BDBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFF8D8A8885B4E35E90C2171C213A3835B6E0FF90C3F63F73A8191511
                    D9F8FF669ACD2E4863FFFFFF0C0A09E7E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFF4F4D4BA7A099BCE6FF85BBF12C5B8A857D79C2E6FF87BB
                    ED689DD227405A425E7E2B526D003342688C98084455BDB4B1FFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF000023232375A6D92A58866D675FA5D5FF87BAEE5A8BBB25
                    252677B1E86899CD0C000024ABD95AD1EC3AE1FF796662A6FEFF147CA3D7D2D0
                    FFFFFFFFFFFFFFFFFFFFFFFF0000393939CFDDDA77ABDD416B94B2AAA48EC6FE
                    74A9DE486A8F001014042B363BE8FFA0F6FF6EF6FF252324F7FFFF96ECFF90FF
                    FF01394DCDC7C5FFFFFFFFFFFFFFFFFF0000FFFFFF6D6C6BF3FCFF7DB3EA5684
                    B217212D1616202CA9A582EAF086F9FFACFFF8A0F6FF3095B0D6C6C7ADFFFFA0
                    F7FFA2FFFF97FFFF1B80A3C7BEBBFFFFFFFFFFFF0000FFFFFFFFFFFF211F1D61
                    91C20C212A14475740E5FFA5D9FF9BE1FF85E2E327B0E231B7E639789127D9D7
                    2EB0E32EB5E32CB3E22BB3E237BDE7002838DCDCDCFFFFFF0000FFFFFFBEB9B7
                    5B5B5A1F96AE31D3FF3CE1FF5BEAFF54EAFF4C939FBCB6B578A3B45AC4C28FB7
                    B4778DB27BBAB67C97B778AEB381BAC179B3B0070402A4A4A4FFFFFF0000FFFF
                    FF055069505A5D4743424644454949483C3B3A4B4849373737FFFFFF90FFFFCD
                    CACD95EAFF99FEFF99EAFF9AFAFF94F0F02136380F16211A2F46F1F1F1FFFFFF
                    0000FFFFFFCDC9C8666666FFFFFF9FF2FF9EFFFF9FFFFF95E2F9899594C4FFFF
                    96F5FF96ECFF99F1FFA3FFFF81C6D73F6561536C7F7AA9D988BDF578AEE50D26
                    40C3C1BF0000FFFFFFFFFFFFFFFFFF424242FFFFFF92D5FF99D5FF8BE7E4C4B8
                    B895FCFF99E9FF99CCFFA2FFFF090F0F20314293C7FB99CCFF99CCFF99CCD09D
                    D0FF5D8EBE8F8C8A0000FFFFFFFFFFFFFFFFFFD0D0D0727272FFFFFFC4FFFF72
                    A2A2BCD5D4A0EEFF77C9C75089832638505F96CE7EB5DF95C8F6B3D8FFFFFFFF
                    8DC6FF90DCF42857899995900000FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA353535
                    FFFFFF434343FFFFFF0509070000005F8FBF5E94CBF3F7FBDCEEFF94C9FF9ACC
                    FF94C9FFFFFFFF799ABD3366991C31450000FFFFFFFFFFFFFFFFFF8382812736
                    421C2E3F8B8E901E1E1E0E20326EA7DF76ADE377AADD78AADD6CA3D989B4DFD4
                    E2EF91BEEBBCC9D63E77AE6DA2D53F72A613293E0000FFFFFFFFFFFFFFFFFF45
                    4341A8D7FF8DC4FB7EAFE07FAFE08EC5FC8CC2F890C6FC93CAFF93CAFF90C8FF
                    FEFFFF4777A8477AAD8ABDEE9BCEFF9ACDFF9AD0FF1F354C0000FFFFFFFFFFFF
                    FFFFFF575757C5C2BFC6C3BFC6C3BFC6C3BFC6C3BFC6C3BFC6C3BFC6C3BFC6C3
                    BFC7C3BF272727B9B2ACB5E0FF9CD1FF97CAFC79A4BF2E2B27B4B2B10000FFFF
                    FFFFFFFFFFFFFFEEEEEEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
                    BEBEBEBEBEBEBEBEFFFFFFC3C4C42A2928101C2828323CC0BFBEFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_save1Click
                end
              end
              object ToolBar8: TToolBar
                Left = 2
                Top = 2
                Width = 172
                Height = 24
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
                object SpeedButton18: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 86
                  Height = 22
                  Hint = 'Tela anterior'
                  Caption = 'Voltar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    8E060000424D8E06000000000000360400002800000018000000190000000100
                    08000000000058020000120B0000120B00000001000018000000FFFFFF00FCEE
                    D000FAE8CC00F7E4C600F9E3BF00F8E0BD00F7DCB500F7D6AD00F6D0A500F5CE
                    9F00F2CC9B00F5C99A00E9C79A00F6C69300F0C49900EFC59300F5C18C00F0C1
                    9000F1BD8B00F4BD8500EFBA8400F5B67C00F2B57B00CC990000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000001717000000000000001717
                    0000000000000000000000001717170000000000001717170000000000000000
                    0000001717171700000000001717171700000000000000000000171715171700
                    0000001717161717000000000000000000171716161717000000171715151717
                    0000000000000000171713141417170000171713141317170000000000000017
                    1712121212171700171710121212171700000000000017170D1111110D171717
                    170D111111111717000000000017170B0E0E0E0F0F1717170B0E0E0E0E0E1717
                    000000001717090A0A0A0A0A17170E090A0A0A0A0A0A17170000000017170808
                    080808081717060708080808080817170000000000171707070707070C171717
                    0707070707071717000000000000171706060606061717171705070707061717
                    0000000000000017170506060417170017170406060617170000000000000000
                    1717040404171700001717040404171700000000000000000017170303171700
                    0000171702021717000000000000000000001717021717000000001717011717
                    0000000000000000000000171717170000000000171717170000000000000000
                    0000000017171700000000000017171700000000000000000000000000171700
                    0000000000001717000000000000000000000000000017000000000000000017
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton18Click
                end
                object SpeedButton17: TSpeedButton
                  Left = 86
                  Top = 2
                  Width = 86
                  Height = 22
                  Hint = 'Pr'#243'xima tela'
                  Caption = 'Avan'#231'ar'
                  Enabled = False
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    8E060000424D8E06000000000000360400002800000018000000190000000100
                    08000000000058020000120B0000120B00000001000034000000FFFFFF00FCEE
                    CF00FAE8CB00FAE8CD00FAE7CA00F7E4C700F7E3C400F9E3C000F9E3BF00F9E2
                    BE00F8E0BC00F8DFBC00F7DCB600F7DCB500F7DCB400F7DBB400F7D6AD00F7D6
                    AC00F7D6AE00F6D0A600F6D0A500F6D0A400F5CEA000F5CE9F00F2CC9C00F2CC
                    9B00F5C99A00E9C79B00F0C49900F6C69400F6C69300F0C49A00EFC59300F0C1
                    9100F5C18C00F0C19000F1BD8B00F1BD8C00F4BD8600F4BD8500EFBA8400EFBA
                    8500F5B67C00F5B67D00F2B57B00F2B57C00CC9B0400CC9A0300CC990100CC99
                    0000CC990200CC98000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000003333000000000000003333000000000000000000
                    0000000031313100000000000031313100000000000000000000000031313131
                    000000000031313131000000000000000000000031312C31310000000031312A
                    31310000000000000000000031312B2B313100000031312D2D31310000000000
                    0000000031312628273131000031312929273131000000000000000031312525
                    25223131003131252424243131000000000000003131212323231E313131311D
                    2323231E313100000000000031311F1C1C1C1C1A31313120201C1C1C1A313100
                    000000003131181919191919161C313118191919191731310000000031311314
                    14141414110E3131131414141414312F0000000031311210101010103131311B
                    1010101010312F000000000031310C1010100A333232320C0D0D0D0D312E0000
                    0000000031310C0C0C09332E003131070D0D0B332E0000000000000031310707
                    07332E00003131070707332E000000000000000031310303332E000000313105
                    05332E000000000000000000313101332E00000000313102332E000000000000
                    000000003131312E00000000003131312E000000000000000000000031312E00
                    000000000031312E000000000000000000000000312E00000000000000312E00
                    0000000000000000000000003200000000000000003200000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Relat'#243'rio'
            ImageIndex = 3
            object RichEdit_rel: TRichEdit
              Left = 0
              Top = 0
              Width = 481
              Height = 286
              Align = alClient
              BevelInner = bvSpace
              BorderStyle = bsNone
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Usu'#225'rios Cadastrados'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 417
          Height = 335
          Align = alClient
          Caption = 'Lista de usu'#225'rios cadastrados:'
          TabOrder = 0
          object DBGrid2: TDBGrid
            Left = 2
            Top = 42
            Width = 413
            Height = 271
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
            TabOrder = 0
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
          object Panel8: TPanel
            Left = 2
            Top = 313
            Width = 413
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Label32: TLabel
              Left = 406
              Top = 0
              Width = 7
              Height = 20
              Align = alRight
              Alignment = taRightJustify
              Caption = '0'
              Transparent = True
            end
            object ComboBox1: TComboBox
              Left = 1
              Top = 0
              Width = 208
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 0
              Text = 'Mostrar '#250'ltimos 10 registros'
              Items.Strings = (
                'Mostrar '#250'ltimos 10 registros'
                'Mostrar '#250'ltimos 50 registros'
                'Mostrar '#250'ltimos 100 registros'
                'Mostrar '#250'ltimos 1000 registros'
                'Mostrar todos os registros')
            end
          end
          object Panel18: TPanel
            Left = 2
            Top = 14
            Width = 413
            Height = 28
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 2
            object Label40: TLabel
              Left = 7
              Top = 9
              Width = 72
              Height = 12
              Caption = 'Classifica'#231#227'o:'
            end
            object SpeedButton10: TSpeedButton
              Left = 314
              Top = 4
              Width = 25
              Height = 22
              Hint = 'Atribuir grupo para registro selecionado'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
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
              OnClick = bt_saveclassClick
            end
            object SpeedButton9: TSpeedButton
              Left = 289
              Top = 4
              Width = 25
              Height = 22
              Hint = 'Excluir grupo selecionado'
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
              OnClick = bt_delclassClick
            end
            object SpeedButton8: TSpeedButton
              Left = 264
              Top = 4
              Width = 25
              Height = 22
              Hint = 'Adicionar novo grupo'
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
              OnClick = bt_newclassClick
            end
            object ToolBar6: TToolBar
              Left = 388
              Top = 0
              Width = 25
              Height = 28
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
            end
            object ComboBox4: TComboBox
              Left = 83
              Top = 5
              Width = 182
              Height = 20
              ItemHeight = 0
              TabOrder = 1
              OnClick = ComboBox_classClick
              OnKeyPress = ComboBox_classKeyPress
            end
            object CheckBox5: TCheckBox
              Left = 344
              Top = 6
              Width = 54
              Height = 17
              Caption = 'Filtrar'
              TabOrder = 2
              OnClick = CheckBox_classClick
            end
          end
        end
        object GroupBox8: TGroupBox
          Left = 417
          Top = 0
          Width = 302
          Height = 335
          Align = alRight
          Caption = 'Cadastro:'
          TabOrder = 1
          object Label12: TLabel
            Left = 2
            Top = 104
            Width = 298
            Height = 12
            Align = alTop
            AutoSize = False
            Caption = 'Dados adicionais:'
          end
          object Panel6: TPanel
            Left = 2
            Top = 306
            Width = 298
            Height = 27
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 16119285
            TabOrder = 0
            object ToolBar1: TToolBar
              Left = 32
              Top = 2
              Width = 264
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
              object SpeedButton2: TSpeedButton
                Left = 0
                Top = 2
                Width = 75
                Height = 22
                Hint = 'Adicionar novo usu'#225'rio'
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
              end
              object SpeedButton5: TSpeedButton
                Left = 75
                Top = 2
                Width = 75
                Height = 22
                Hint = 'Excluir usu'#225'rio selecionado'
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
              end
              object SpeedButton6: TSpeedButton
                Left = 150
                Top = 2
                Width = 114
                Height = 22
                Hint = 'Alterar dados do usu'#225'rio'
                Caption = 'Alterar dados'
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
              end
            end
          end
          object Panel7: TPanel
            Left = 2
            Top = 14
            Width = 298
            Height = 90
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Label6: TLabel
              Left = 20
              Top = 3
              Width = 39
              Height = 12
              Alignment = taRightJustify
              Caption = 'C'#243'digo:'
            end
            object ms_cod: TLabel
              Left = 62
              Top = 3
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
            object Label8: TLabel
              Left = 11
              Top = 24
              Width = 33
              Height = 12
              Alignment = taRightJustify
              Caption = 'Nome:'
            end
            object Label4: TLabel
              Left = 14
              Top = 46
              Width = 31
              Height = 12
              Alignment = taRightJustify
              Caption = 'email:'
            end
            object Label39: TLabel
              Left = 9
              Top = 70
              Width = 72
              Height = 12
              Alignment = taRightJustify
              Caption = 'Classifica'#231#227'o:'
            end
            object Edit1: TEdit
              Left = 47
              Top = 44
              Width = 246
              Height = 20
              TabOrder = 0
            end
            object ms_titulo: TEdit
              Left = 47
              Top = 22
              Width = 246
              Height = 20
              TabOrder = 1
            end
            object ComboBox3: TComboBox
              Left = 86
              Top = 66
              Width = 205
              Height = 20
              ItemHeight = 0
              TabOrder = 2
              OnKeyDown = EVsaveKeyDown
            end
          end
          object RichEdit2: TRichEdit
            Left = 2
            Top = 116
            Width = 298
            Height = 190
            TabStop = False
            Align = alClient
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 2
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
    OnClick = StatusBar1Click
  end
  object XPManifest1: TXPManifest
    Left = 112
    Top = 214
  end
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf,*.flv)|*.jpg;*.' +
      'jpeg;*.bmp;*.ico;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JP' +
      'EG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Fl' +
      'ash (*.swf)|*.swf|Macromedia Flash Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 22
    Top = 213
  end
  object PopupMenu1: TPopupMenu
    Left = 142
    Top = 215
    object Ampliar1: TMenuItem
      Caption = 'Ampliar'
    end
    object Salvarcomo1: TMenuItem
      Caption = 'Salvar como'
      OnClick = Salvarcomo1Click
    end
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 82
    Top = 214
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 52
    Top = 214
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf,*.flv)|*.jpg;*.jpeg;*' +
      '.bmp;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|' +
      '*.jpeg|Bitmaps (*.bmp)|*.bmp|Flash (*.swf)|*.swf|Macromedia Flas' +
      'h Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 206
    Top = 213
  end
  object PopupMenu2: TPopupMenu
    Left = 174
    Top = 215
    object MenuItem1: TMenuItem
      Caption = 'Excluir todos os registros'
      OnClick = MenuItem1Click
    end
  end
  object ExportarImgDialog: TSavePictureDialog
    Filter = 
      'JPEG arquivo de imagem (*.jpg)|*.jpg|Flash (*.swf)|*.swf|Macrome' +
      'dia Flash Video (*.flv)|*.flv'
    Left = 24
    Top = 244
  end
  object ColorDialog1: TColorDialog
    Left = 64
    Top = 244
  end
  object ToolbarImages: TImageList
    Left = 96
    Top = 244
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
  object PopupMenu_editor: TPopupMenu
    Images = ToolbarImages
    OwnerDraw = True
    Left = 128
    Top = 244
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
    object Importar1: TMenuItem
      Caption = 'Importar'
      ImageIndex = 27
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
    object Cordefundo1: TMenuItem
      Caption = 'Cor de fundo'
      ImageIndex = 12
      OnClick = Cordefundo1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.*]|*.*|Rich Text [*.rtf]|*.rtf|Arquivos Tex' +
      'to [*.txt]|*.txt'
    Title = 'Importar arquivo'
    Left = 160
    Top = 245
  end
  object ImageList_status: TImageList
    Left = 34
    Top = 276
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E6E6E6FFFEFEFEFFFCFCFCFFF4F4F4FFF8F8
      F8FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8FFD0D0D0FFB7B7B7FF6F6F6FFF6C625AFF69645EFF8C8C8CFFCBCBCBFFD9D9
      D9FFFBFBFBFF0000000000000000000000000000000000000000000000000000
      000000000000DCDCDCFF818181FF6A6A6AFF727272FF929292FFDCDCDCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000626058FFFDFDFDFFBABAB8FF716E65FF514C3DFF726D
      5CFF85847EFFDDDDDDFF00000000000000000000000000000000000000000000
      000000000000615F58FF767369FF7B7973FFC0C0C0FFF5F5F5FF000000000000
      000000000000000000000000000000000000000000000000000000000000FBFB
      FBFF978472FFF9AA64FFF59A4FFFF39548FFF29144FFF39348FFEEA96DFFA0A0
      9FFF000000000000000000000000000000000000000000000000000000000000
      00008F8F8FFF8D8D8DFFC4C4C4FFCACACAFFD0D0D0FFADADADFF777777FF6F6F
      6FFF000000000000000000000000000000000000000000000000000000000000
      0000000000005F5956FFFEFEFEFFE2E1DCFF747063FFCFCCC8FFCCC9C3FFCFCD
      C7FFC1BEB9FF8A8577FFD3D3D3FF00000000000000000000000000000000D2CE
      C8FF807C72FF6F6864FFDAD7D2FFD8D4CEFFD5D1CBFFB8B3A9FF716F69FFC0C0
      C0FFF5F5F5FF0000000000000000000000000000000000000000F9F9F9FFE0B0
      83FFF69C51FFF4974BFFF29144FFF08B3EFFEF8739FFEE8336FFEE8234FFF18D
      41FF8A8681FF000000000000000000000000000000000000000000000000FDFD
      FDFFA2A2A2FFD1D1D1FFEEEEEEFFCACACAFFECECECFFE4E4E4FFCECECEFFA8A8
      A8FF858585FF0000000000000000000000000000000000000000000000000000
      0000360D06FFFCFCFCFFF6F6F5FFA3A095FFCBC8C2FFC5C4C4FFDDDDDDFFEEEE
      EEFFE3E2E0FFCECBC5FF5F5C53FF0000000000000000000000007F7E7BFF3A14
      0DFF380D06FF645E5AFFD0C39CFF90D9A8FF9C8D38FFE4D6BBFFD7D2CCFFD4D0
      CAFFA09B91FF64625DFFC4C4C4FF000000000000000000000000B8A18BFFF69D
      51FFF4974BFFF4A262FFFEFEFDFFEE8335FFEE8032FFEE8032FFEE8032FFED7F
      31FFF08C41FFBEBEBEFF0000000000000000000000000000000000000000CECE
      CEFFC3C3C3FFE8E8E8FFECECECFFCECECEFFEBEBEBFFDBDBDBFFDBDBDBFFD4D4
      D4FF6F6F6FFF0000000000000000000000000000000000000000000000000000
      0000CAC5C4FFF3F3F4FFE5E4DFFFE6E3DCFFBDBBB7FFC4C4C4FFD8D8D8FFE4E4
      E4FFEAEAEAFFD3D2CFFFBEBBB6FFF7F7F7FF00000000F4F4F4FF3E1310FF451A
      19FF3A0E07FFBEBDBAFFC9A344FFD0B233FFD6BD4FFFD7BC52FFB8810AFFB376
      23FFDBC892FFD4D0CAFFD4D0CAFFFBFBFBFF00000000D5D5D5FFF8A55CFFF599
      4DFFF5AD73FFFFFFFFFFF09452FFF8CEB0FFEE8032FFEE8032FFEE8032FFEE80
      32FFED7F31FFE3B188FF00000000000000000000000000000000000000007C7C
      7CFFD0D0D0FFECECECFFE8E8E8FFD8D8D8FFEAEAEAFFD4D4D4FFE5E5E5FFDEDE
      DEFF9E9E9EFFB9B9B9FF00000000000000000000000000000000000000007257
      51FFF3F3F3FFFBFBFBFFE0DEDAFFF0EEE8FFC0BFBFFFD5D5D5FFBFBFBFFFA5A5
      A5FFD9D9D9FFD4D4D4FFC2BFBAFFF9F9F9FF000000004B322CFF5F2C26FF7740
      35FF735142FFDCDAD5FFDABF91FFDFC879FFE0CB74FFDAC25CFFD3B73FFFCCAC
      23FFC29700FFCDC9C3FFD4D0CBFF0000000000000000A59E97FFF69C51FFF8BA
      88FFFFFFFFFFFCE9DCFFEE8032FFFFFEFEFFEF8A42FFEE8032FFEE8032FFEE80
      32FFEE8032FFF08A3FFFF2F2F2FF000000000000000000000000000000007878
      78FFCFCFCFFFEBEBEBFFD9D9D9FFDFDFDFFFEBEBEBFFCBCBCBFFEAEAEAFFDEDE
      DEFFD5D5D5FFCDCDCDFF000000000000000000000000000000006D2D10FFF4F4
      F4FFEBEBECFFF2F2F2FFE8E7E4FFDFDCD4FFD9D6D0FFD7D7D7FF3939C4FFD2D2
      D2FFCDCDCDFFB8B6B2FFBBB9B3FF0000000000000000602514FF7E3311FF9744
      14FF9E9C9AFFA9805FFFE3CEBCFFE1CBA3FFE1CB89FFDEC873FFD8BF5AFFC9A4
      2AFFD1AF65FFB7B3ACFF9E9C97FF0000000000000000DEC1A6FFF59A4EFFF392
      46FFF0893CFFEE8032FFEE8032FFF2A46DFFFFFFFFFFEE8033FFEE853AFFEE84
      39FFEE8032FFED8133FFB8B8B8FF000000000000000000000000EFEFEFFFAFAF
      AFFFD9D9D9FFEBEBEBFFCECECEFFE5E5E5FFECECECFFC8C8C8FFECECECFFD9D9
      D9FFC8C8C8FFE6E6E6FF000000000000000000000000955239FFF9F9F9FFF0F0
      F0FFE5E5E5FFEFEFEFFFEFEFEFFFC8C6BFFFDBD9D4FFD8D6D0FFCDCDCDFFB9B8
      B6FFBFBDB9FFCCC9C3FFA4A4A3FF00000000E8E8E8FF99543BFFAA632BFFB980
      3BFFFAF9F5FFD8D0C9FFBB9477FFE5D0C1FFE3CEB4FFDDC49BFFD6B682FFCBA1
      69FFE2DED8FFD3CFC9FFBCBCBBFF0000000000000000E8CBB1FFF59F57FFF291
      45FFEF873BFFEE873DFFF0904DFFF1995AFFFFFFFFFFFBE4D5FFF29F64FFF2A1
      67FFF2A36AFFEE883FFFB1B1B1FF0000000000000000000000008F8F8FFFCFCF
      CFFFE5E5E5FFDADADAFFCBCBCBFFEAEAEAFFEBEBEBFFCACACAFFECECECFFD1D1
      D1FFBEBEBEFFF5F5F5FF000000000000000000000000D1C9C3FFEDEDEDFFEBEB
      EBFFF7F7F7FFEDEDEDFFEEEEEEFFEBEBEAFFCFCDC6FFD3D0C9FFCECCC6FFCBC9
      C3FFC7C6BEFF928E8AFF000000000000000000000000B27147FFCCA36CFFD3B2
      66FFDBC275FFF0E5C7FFF6F2E9FFF8F6F2FFDED6CEFFBB906DFFD3AE99FFB578
      4EFFE6E2DDFFA09C98FF000000000000000000000000CCC2BAFFF7B076FFF5AB
      71FFF3A56CFFF2A36BFFF3A56EFFF3A771FFF8CFB1FFFFFFFFFFF5B98FFFF4AF
      7EFFF4B182FFF4B689FFE1E1E1FF0000000000000000000000006C6C6CFFC7C7
      C7FF9E9E9EFF9E9E9EFFB4B4B4FFCFCFCFFFCDCDCDFFCDCDCDFFECECECFFCECE
      CEFFB0B0B0FF0000000000000000000000009D9C9AFFEBEBEBFFECECECFFCCCC
      CCFFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFADACA9FFE2E1DFFFE8E8
      E6FFE0DDD9FF00000000000000000000000000000000B78144FFCDA754FFE4D1
      8EFFEDE1B2FFEFE4B9FFEBDDABFFE9D8B5FFD6B796FFE4D4CBFFF3F1EDFFF0ED
      E9FFEDEAE6FFA3A29FFF000000000000000000000000B0B0B0FFF8BD8CFFF7B8
      87FFF5B383FFF4B182FFF4B385FFF5B588FFF5B78BFFFFFFFFFFFFFFFFFFF6BD
      95FFF6BF99FFF9D6BDFF00000000000000000000000000000000959595FF9696
      96FF999999FF999999FF999999FF969696FFB1B1B1FFD7D7D7FFEDEDEDFFD0D0
      D0FF9F9F9FFF00000000000000000000000000000000F3F3F3FFEBEBEBFFDBDB
      DBFFF1F1F1FFF0F0F0FFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEDEDEDFFEDED
      EDFF0000000000000000000000000000000000000000DCDBD8FFCBA53EFFE8D8
      99FFF7F1DCFFFAF7EBFFF1E7C2FFDFC988FFC99F64FFB67A5DFFB1AAA5FFDBD9
      D4FFB6B2AEFF0000000000000000000000000000000000000000F8E0CBFFF8C5
      9DFFF7C29AFFF6C099FFF6C29CFFF7C49FFFF7C6A3FFFCE8DAFFFFFFFFFFFDF6
      F1FFF8CEB0FFA7A4A2FF000000000000000000000000DCDCDCFFB9B9B9FF9696
      96FF999999FF999999FF999999FF999999FF999999FF979797FFC8C8C8FFD9D9
      D9FF868686FF0000000000000000000000000000000000000000ADA798FFEDED
      EDFFEBEBEBFFEBEBEBFFECECECFFF9F9F9FFEDEDEDFFEBEBEBFFECECECFF9190
      8EFF000000000000000000000000000000000000000000000000C9BFA3FFE0CA
      75FFF0E5BDFFF8F4E4FFEDE1B3FFD6B867FFB4771FFF93664BFF000000000000
      0000000000000000000000000000000000000000000000000000D1D1D1FFFADB
      C1FFF9D0B1FFF8CFB1FFF8D0B3FFF9D2B6FFF9D4B9FFF9D6BDFFF9D8C0FFF9DA
      C3FFE1D5CDFF0000000000000000000000000000000000000000666666FFDBDB
      DBFF979797FF999999FF999999FF999999FF999999FF999999FF969696FFD1D1
      D1FF6F6F6FFF000000000000000000000000000000000000000000000000EBEB
      EBFFF7F7F6FFEBEBEBFFECECECFFF0F0F0FF939290FFA9A7A6FFFCFCFCFFD4D2
      CFFF00000000000000000000000000000000000000000000000000000000F5F5
      F5FFC3AB47FFD1B640FFC9A72BFFB68C30FF9A9997FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CEFFFBEBDEFFFADEC9FFFADECAFFFAE0CDFFFBE2D1FFFBE4D4FFFBE7D9FFD1C9
      C4FF000000000000000000000000000000000000000000000000000000006B6B
      6BFFA6A6A6FFD0D0D0FF9F9F9FFF949494FF989898FF989898FF969696FFCACA
      CAFF686868FF0000000000000000000000000000000000000000000000000000
      000000000000E1E1E1FFEBEBEBFFC8C8C8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABAAA9FFE4DED9FFFDF4EEFFF7EEE7FFCCC7C3FFCCCCCCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBDBDBFF747474FF7C7C7CFFBABABAFFD8D8D8FFD5D5D5FFDEDEDEFFACAC
      ACFFE7E7E7FF0000000000000000000000000000000000000000000000000000
      00000000000000000000F8F8F8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E7E7FFA7A7A7FF6D6D6DFF7E7E7EFFECEC
      ECFF00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFE0FFFFFE007F81F
      FC03F83FE00FF00FF801E007C007E007F001C001C003E007F00080008003E003
      E00080018001E003C00180018001C003800100018001C003800380038001C007
      000780038003C007800F8007C0038007C00FC03FC007C007E00FE07FE00FE007
      F8FFFFFFF81FF007FDFFFFFFFFFFFE0F00000000000000000000000000000000
      000000000000}
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 197
    Top = 248
  end
end
