object mdl_richdiscotxt: Tmdl_richdiscotxt
  Left = 303
  Top = 54
  Width = 965
  Height = 628
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
    Width = 949
    Height = 571
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
      Width = 941
      Height = 563
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabOrder = 0
      TabPosition = tpRight
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Principal'
        object Paneltop: TPanel
          Left = 0
          Top = 530
          Width = 916
          Height = 25
          Align = alBottom
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
            Width = 224
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonHeight = 20
            EdgeBorders = []
            TabOrder = 1
            object Label7: TLabel
              Left = 0
              Top = 2
              Width = 48
              Height = 20
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Website:'
              Layout = tlCenter
            end
            object ComboBox_web: TComboBox
              Left = 48
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
            Width = 225
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
              Width = 52
              Height = 20
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Entidade:'
              Layout = tlCenter
            end
            object ComboBox_ent: TComboBox
              Left = 52
              Top = 2
              Width = 173
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 0
              OnChange = ComboBox_entChange
            end
          end
          object ToolBar_lng1: TToolBar
            Left = 696
            Top = 0
            Width = 220
            Height = 25
            Align = alRight
            EdgeBorders = []
            TabOrder = 3
            object PageControl_languagens: TPageControl
              Left = 0
              Top = 2
              Width = 195
              Height = 22
              ActivePage = lngtb1
              Align = alClient
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
            object bt_help: TSpeedButton
              Left = 195
              Top = 2
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
        end
        object PageControlab: TPageControl
          Left = 0
          Top = 0
          Width = 916
          Height = 530
          ActivePage = TabSheet_itens
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Style = tsButtons
          TabOrder = 1
          OnChange = PageControlabChange
          object TabSheet_grp: TTabSheet
            Caption = 'Lista de '#193'lbuns:       '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            object Splitter1: TSplitter
              Left = 227
              Top = 0
              Height = 487
              OnMoved = Splitter1Moved
            end
            object Panel_AddCtg: TPanel
              Left = 230
              Top = 0
              Width = 678
              Height = 487
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Label32: TLabel
                Left = 1
                Top = 161
                Width = 676
                Height = 23
                Align = alTop
                Caption = ' Texto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8667648
                Font.Height = -19
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object Panel3: TPanel
                Left = 1
                Top = 447
                Width = 676
                Height = 39
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -27
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object ToolBar_save1: TToolBar
                  Left = 275
                  Top = 2
                  Width = 399
                  Height = 35
                  Align = alRight
                  AutoSize = True
                  ButtonHeight = 30
                  Caption = 'pn_barra'
                  EdgeBorders = []
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object bt_new1: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 133
                    Height = 30
                    Hint = 'Adicionar novo '#193'lbum'
                    Caption = 'Novo'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
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
                    Left = 133
                    Top = 2
                    Width = 133
                    Height = 30
                    Hint = 'Excluir '#193'lbum selecionado'
                    Caption = 'Excluir'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
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
                    Left = 266
                    Top = 2
                    Width = 133
                    Height = 30
                    Hint = 'Gravar dados'
                    Caption = 'Gravar'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -13
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
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
                object ab_default: TCheckBox
                  Left = 8
                  Top = 11
                  Width = 209
                  Height = 18
                  Hint = 'Listar '#193'lbum no Site'
                  Caption = 'Listar '#193'lbum no Site'
                  Checked = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -16
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  State = cbChecked
                  TabOrder = 0
                end
              end
              object Panelgrp: TPanel
                Left = 1
                Top = 1
                Width = 676
                Height = 160
                Align = alTop
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 1
                object Splitter4: TSplitter
                  Left = 466
                  Top = 2
                  Height = 139
                  Align = alCustom
                  OnMoved = Splitter1Moved
                end
                object GroupBox9: TGroupBox
                  Left = 2
                  Top = 2
                  Width = 337
                  Height = 156
                  Align = alLeft
                  Caption = 'Formul'#225'rio de cadastro de Itens:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object ab_cod: TLabel
                    Left = 320
                    Top = -2
                    Width = 11
                    Height = 18
                    Alignment = taRightJustify
                    Caption = '0'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -16
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Panel19: TPanel
                    Left = 2
                    Top = 15
                    Width = 333
                    Height = 138
                    Align = alTop
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 0
                    object Label3: TLabel
                      Left = 7
                      Top = 1
                      Width = 117
                      Height = 16
                      Caption = 'T'#237'tulo do '#193'lbum:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8667648
                      Font.Height = -13
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label5: TLabel
                      Left = 7
                      Top = 46
                      Width = 289
                      Height = 13
                      Caption = 'Selecione o Tamanho de Exibi'#231#227'o das Fotos:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label4: TLabel
                      Left = 214
                      Top = 4
                      Width = 109
                      Height = 12
                      Alignment = taRightJustify
                      Caption = '(M'#225'x. 255 caracteres)'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8667648
                      Font.Height = -9
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label2: TLabel
                      Left = 7
                      Top = 85
                      Width = 119
                      Height = 13
                      Caption = 'ID v'#237'deo Youbube:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object cb_loc: TEdit
                      Left = 6
                      Top = 99
                      Width = 321
                      Height = 21
                      TabOrder = 2
                      OnKeyDown = EVsaveKeyDown
                    end
                    object ComboBox_model: TComboBox
                      Left = 6
                      Top = 61
                      Width = 321
                      Height = 21
                      Style = csDropDownList
                      ItemHeight = 13
                      TabOrder = 1
                      OnKeyDown = EVsaveKeyDown
                    end
                    object ab_titulo: TEdit
                      Left = 6
                      Top = 17
                      Width = 321
                      Height = 26
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = 8404992
                      Font.Height = -16
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                      OnKeyDown = EVsaveKeyDown
                    end
                  end
                end
                object Panel5: TPanel
                  Left = 339
                  Top = 2
                  Width = 335
                  Height = 156
                  Align = alClient
                  BevelInner = bvLowered
                  BevelOuter = bvSpace
                  BorderStyle = bsSingle
                  Color = 16119285
                  TabOrder = 1
                  object Panel23: TPanel
                    Left = 2
                    Top = 24
                    Width = 327
                    Height = 110
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    BevelOuter = bvLowered
                    Color = clWhite
                    TabOrder = 0
                    object swf_logo1: TShockwaveFlash
                      Left = 2
                      Top = 40
                      Width = 323
                      Height = 68
                      Cursor = crHandPoint
                      Hint = 'Icone do '#225'lbum'
                      TabStop = False
                      Align = alClient
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                      ControlData = {
                        6755665500090000622100000707000008000200000000000800000000000800
                        0000000008000E000000570069006E0064006F00770000000800060000002D00
                        310000000800060000002D003100000008000A00000048006900670068000000
                        08000200000000000800060000002D0031000000080000000000080002000000
                        0000080010000000530068006F00770041006C006C0000000800040000003000
                        0000080004000000300000000800020000000000080000000000080002000000
                        00000D0000000000000000000000000000000000080004000000310000000800
                        0400000030000000080000000000080004000000300000000800080000006100
                        6C006C00000008000C000000660061006C0073006500000008000C0000006600
                        61006C007300650000000800040000003000000008000C000000730063006100
                        6C0065000000}
                    end
                    object ToolBar3: TToolBar
                      Left = 2
                      Top = 2
                      Width = 323
                      Height = 38
                      AutoSize = True
                      ButtonHeight = 36
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
                        Width = 55
                        Height = 36
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
                      object bt_exp1: TSpeedButton
                        Left = 55
                        Top = 2
                        Width = 55
                        Height = 36
                        Hint = 'Exportar para disco'
                        Caption = 'Exportar'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
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
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_exp1Click
                      end
                      object bt_limpar1: TSpeedButton
                        Left = 110
                        Top = 2
                        Width = 55
                        Height = 36
                        Hint = 'Limpar imagem'
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
                      object Panel27: TPanel
                        Left = 165
                        Top = 2
                        Width = 60
                        Height = 36
                        BevelOuter = bvNone
                        ParentColor = True
                        TabOrder = 0
                        object bt_imgRotateh1: TSpeedButton
                          Left = 1
                          Top = -1
                          Width = 29
                          Height = 25
                          Hint = 'Girar imagem no sentido hor'#225'rio'
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Height = -9
                          Font.Name = 'Verdana'
                          Font.Style = []
                          Glyph.Data = {
                            B2050000424DB205000000000000360400002800000013000000130000000100
                            0800000000007C010000120B0000120B00000001000030000000FFFFFF00CCFF
                            FF0099FFFF00CCCCFF0099CCFF00FFFFCC00CCFFCC0099FFCC00FFCCCC00CCCC
                            CC0099CCCC00CC99CC009999CC00FFCC9900CCCC990099CC990066CC990033CC
                            990000CC9900CC9999009999990066999900996699006666990033669900CCCC
                            660099CC660033CC6600CC99660099996600669966003399660000996600CC66
                            6600996666006666660033666600006666006633660066993300339933000099
                            3300996633006666330033663300006633006633330066660000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000009
                            090909090909090909030000000000000000092A221D1C221C1D211D1C220500
                            0000000000000922060F140F0F0F0F0F0F0D0300000000000000091C0A292929
                            2525292D1B090500000000000000091D0802070A181F0206040D080000000000
                            0000092200060A171E240C1000090500000000000000080108012D1F1F1A1F1F
                            060D0300000000000000090E140E27282012110F0E0905000000000000001413
                            14090F2D1212121D050D0800000000000000132322090E1E1B15190E0D090500
                            000000000000232B2309080508050809092B0900000000000000222E2B090D09
                            0B1E2B2F2E2C0E000000000000002B232E090508050E23262B261D0000000000
                            0000142B2B14000000000F2E2B2E230500000000000013232B2313090914222B
                            23162B09000000000000001D262B2B2B262B2B2B220009000000000000000009
                            1D232E2B2B262B1D0900000000000000000000000013142B231D140000000000
                            00000000000000000000000000000000000000000000}
                          Layout = blGlyphTop
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                          Spacing = 0
                          OnClick = bt_imgRotateh1Click
                        end
                        object bt_imgRotatea1: TSpeedButton
                          Left = 31
                          Top = -1
                          Width = 29
                          Height = 25
                          Hint = 'Girar imagem no sentido anti-hor'#225'rio'
                          BiDiMode = bdLeftToRight
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Height = -9
                          Font.Name = 'Verdana'
                          Font.Style = []
                          Glyph.Data = {
                            B2050000424DB205000000000000360400002800000013000000130000000100
                            0800000000007C010000120B0000120B0000000100002F000000FFFFFF00CCFF
                            FF0099FFFF00CCCCFF00FFFFCC00CCFFCC0099FFCC00FFCCCC00CCCCCC0099CC
                            CC0066CCCC00CC99CC00FFCC9900CCCC990099CC990066CC990033CC990000CC
                            9900CC999900999999006699990033999900996699006666990033669900CCCC
                            660099CC6600CC99660099996600669966003399660000996600CC6666009966
                            6600666666003366660000666600663366009999330033993300009933009966
                            3300666633003366330000663300663333006666000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000008
                            0808080808080808080300000000000000071C211B211B1C201C201C29080000
                            00000000000412060E0E0E0E0E0E0E081C080000000000000007071E2828242C
                            1F2828081C0800000000000000040D01090218170A0609011B08000000000000
                            00030C000A131E22140905002108000000000000000408051E1E0E2723280107
                            010700000000000000080C081A10111F28260D130D080000000000000004070C
                            0F1511112C0E0813121300000000000000070D070D190F1E1D0D082122120000
                            0000000000082A0808040707040708222A22000000000000000D2B2D2E2A1D0B
                            0C08082A2D21000000000000001C252A25220D040704082D222A000000000000
                            04222D2A2D0E00000000132A2A13000000000000082A16222A2113080812222A
                            2212000000000000000800212A2A2A252A2A2A251C0000000000000000000008
                            1C2A252A2A2D221C08000000000000000000000000131C222A13120000000000
                            00000000000000000000000000000000000000000000}
                          Layout = blGlyphTop
                          ParentFont = False
                          ParentShowHint = False
                          ParentBiDiMode = False
                          ShowHint = True
                          Spacing = 0
                          OnClick = bt_imgRotatea1Click
                        end
                        object Label10: TLabel
                          Left = 19
                          Top = 23
                          Width = 25
                          Height = 12
                          Alignment = taCenter
                          Caption = 'Girar'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -9
                          Font.Name = 'Verdana'
                          Font.Style = []
                          ParentFont = False
                          Transparent = True
                        end
                      end
                      object bt_view1: TSpeedButton
                        Left = 225
                        Top = 2
                        Width = 96
                        Height = 36
                        Hint = 'Ampliar imagem'
                        Caption = 'Ampliar'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
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
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_view1Click
                      end
                    end
                  end
                  object Panel24: TPanel
                    Left = 2
                    Top = 2
                    Width = 327
                    Height = 22
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = 'C A P A'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8667648
                    Font.Height = -16
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    TabOrder = 1
                  end
                  object Panel13: TPanel
                    Left = 2
                    Top = 134
                    Width = 327
                    Height = 16
                    Align = alBottom
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 2
                    object Label_size1: TLabel
                      Left = 306
                      Top = 0
                      Width = 21
                      Height = 16
                      Align = alRight
                      Alignment = taRightJustify
                      Caption = '0 kb'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -9
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object chk_view1: TCheckBox
                      Left = 5
                      Top = 2
                      Width = 124
                      Height = 13
                      Hint = 'Atualizar icone automaticamente'#13#10'na navega'#231#227'o dos registros'
                      Caption = 'Auto visualizar'
                      Checked = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      State = cbChecked
                      TabOrder = 0
                      OnClick = chk_view1Click
                    end
                    object chk_imporiginal: TCheckBox
                      Left = 117
                      Top = 3
                      Width = 124
                      Height = 13
                      Hint = 'Importar imagem com formato original'
                      Caption = 'Importar original'
                      Checked = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = []
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      State = cbChecked
                      TabOrder = 1
                    end
                  end
                end
              end
              object CoolBar2: TCoolBar
                Left = 1
                Top = 184
                Width = 676
                Height = 113
                AutoSize = True
                Bands = <
                  item
                    Control = ToolBar14
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 146
                  end
                  item
                    Break = False
                    Control = ToolBar15
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 201
                  end
                  item
                    Break = False
                    Control = ToolBar2
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 115
                  end
                  item
                    Break = False
                    Control = ToolBar19
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 204
                  end
                  item
                    Control = ToolBar16
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 672
                  end
                  item
                    Control = Panel11
                    ImageIndex = -1
                    MinHeight = 33
                    Width = 395
                  end
                  item
                    Break = False
                    Control = ToolBar13
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 138
                  end
                  item
                    Break = False
                    Control = ToolBar12
                    ImageIndex = -1
                    MinHeight = 35
                    Width = 135
                  end>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                object Panel11: TPanel
                  Left = 9
                  Top = 75
                  Width = 382
                  Height = 33
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  object Label12: TLabel
                    Left = 233
                    Top = 9
                    Width = 48
                    Height = 13
                    Caption = 'Tamanho:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 3487029
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 5
                    Top = 9
                    Width = 30
                    Height = 13
                    Caption = 'Fonte:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 3487029
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object combofont: TComboBox
                    Left = 40
                    Top = 4
                    Width = 187
                    Height = 21
                    ItemHeight = 13
                    TabOrder = 0
                    OnChange = combofontChange
                    Items.Strings = (
                      'Arial'
                      'Courier'
                      'Courier New'
                      'Georgia'
                      'Helvetica'
                      'monospace'
                      'Verdana'
                      'Times New Roman'
                      'serif'
                      'sans-serif')
                  end
                  object ComboSize: TComboBox
                    Left = 284
                    Top = 5
                    Width = 96
                    Height = 22
                    Style = csOwnerDrawFixed
                    ItemHeight = 16
                    TabOrder = 1
                    OnChange = ComboSizeChange
                    Items.Strings = (
                      'Pequena'
                      'M'#233'dia'
                      'Normal'
                      'Maior'
                      'Grande'
                      'Extra Grande')
                  end
                end
                object ToolBar2: TToolBar
                  Left = 360
                  Top = 0
                  Width = 102
                  Height = 35
                  ButtonHeight = 30
                  Caption = 'ToolBar2'
                  TabOrder = 1
                  object btnCut: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Recortar'
                    Flat = True
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AE
                      AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AEAEB1FFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B5
                      0658B5FFFFFFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B50658B5FFFF
                      FFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0658
                      B5AEAEB1FFFFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5AEAEB1FF
                      FFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFF0658B5FFFFFFAEAEB10658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5
                      AEAEB1AEAEB10658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFF0658B50658B50658B5AEAEB1AEAEB1FFFFFFFFFFFFFFFF
                      FF0658B50658B50658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB0658B50658B5AEAEB1AEAEB1AE
                      AEB10658B50658B5176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB176DCB0658B5
                      125DDF0658B5176DCB176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FF125DDF3F8EDE125DDFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFA93950034DC5A93950AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFA93950C46878D094A9C46878A93950AEAEB1AEAEB1FFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFD094A9C46878A93950AEAEB1AE
                      AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFFFFFFFFFFFFFD094A9BE7896
                      C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFD094A9BE7896C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFD094A9BE7896C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFBE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD094A9BE7896FFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnCutClick
                  end
                  object btnCopy: TSpeedButton
                    Left = 30
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Copiar'
                    Flat = True
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1
                      AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFF275CD4275CD4275CD4275CD4275CD4275CD4275CD4275C
                      D4275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEEA6EAEEA6
                      EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE
                      A6EAEEA6EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB12780D6BEF0F299D8E899D8
                      E899D8E899D8E899D8E8A6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFF2780D60658B50658B50658B50658B52780D6CAF6F7CA
                      F6F7BEF0F2BEF0F2BEF0F2BEF0F2BEF0F2275CD4AEAEB1FFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE2780D6
                      CAF6F799D8E899D8E899D8E899D8E899D8E8CAF6F7275CD4AEAEB1FFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EA
                      EE2780D6EBF9FAEBF9FAEBF9FAEBF9FA4C9CE64C9CE64C9CE6275CD4AEAEB1FF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6BEF0F299D8E899
                      D8E899D8E82780D6EBF9FA99D8E899D8E899D8E84C9CE6EBF9FA2780D62780D6
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6CAF6F7
                      CAF6F7CAF6F7BEF0F22780D6F2F8F9EBF9FAEBF9FAEBF9FA4C9CE62780D62780
                      D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780
                      D6CAF6F799D8E899D8E899D8E82780D62780D62780D62780D62780D62780D627
                      80D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFF2780D6EBF9FAEBF9FAEBF9FAF2F8F94C9CE66EB3F46EB3F46EB3F4AEAEB1
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFF2780D6EBF9FABFE9F7BFE9F7BFE9F76EB3F4F2F8F92780D62780
                      D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFF2780D6EBF9FAEBF9FAEBF9FAEBF9FA6EB3F42780D627
                      80D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFF2780D62780D62780D62780D62780D62780D6
                      2780D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnCopyClick
                  end
                  object btnPaste: TSpeedButton
                    Left = 60
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Colar'
                    Flat = True
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1FFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFF688EDC3969C53969C53969C53969C53969C53969C53969C53969C5AEAEB1
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFF688EDC4FD0F54FD0F54FD0F54FD0F54FD0F54FD0F54FD0F53969
                      C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFAEAEB1AEAEB1AEAEB1688EDC67F1F6F4B9DEF4B9DEF4B9DEF4B9DE69D0FB67
                      F1F63969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFCD5597CD5597CD5597688EDC88EAF988EAF988EAF988EAF988EAF9
                      88EAF988EAF93969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFCD5597CCAC75CCAC75CCAC75688EDCA5F7FAF4B9DEF4B9DEF4B9
                      DEA5F7FAA5F7FAA5F7FA3969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7CAF6F7CA
                      F6F7CAF6F73969C53969C53969C53969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7
                      F4B9DEF4B9DECAF6F73969C5FFFFFF3969C5CD5597AEAEB1FFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2ECCEB2688E
                      DCCAF6F7CAF6F7CAF6F7CAF6F73969C53969C5ECCEB2CD5597AEAEB1FFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2EC
                      CEB2688EDC688EDC688EDC688EDC688EDC3969C5ECCEB2ECCEB2CD5597AEAEB1
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597F6D8C6
                      F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6CD55
                      97AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD55
                      97F6D8C6000000000000000000000000000000000000000000000000F6D8C6F6
                      D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFCD5597F6D8C6BC2376DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBC2376
                      F6D8C6F6D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFCD5597F6D8C6F6D8C6BC237600FFFF00000000000000FFFFBC23
                      76F6D8C6F6D8C6F6D8C6CD5597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFBE7896BE7896BE7896BC237600FFFF00FFFFBC
                      2376BE7896BE7896BE7896BE7896FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC2376BC2376
                      BC2376BC2376FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnPasteClick
                  end
                end
                object ToolBar12: TToolBar
                  Left = 546
                  Top = 74
                  Width = 122
                  Height = 35
                  ButtonHeight = 30
                  Caption = 'ToolBar2'
                  TabOrder = 2
                  object btnAlignLeft: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Esquerda'
                    GroupIndex = 6
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707070707070707070707070707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070000000000000000070707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070000000000000000070707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070000000000000000070707070707070707070707
                      0707070707070707070707070707070707070707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnAlignLeftClick
                  end
                  object btnCenter: TSpeedButton
                    Left = 30
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Centralizar'
                    GroupIndex = 6
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707070707070707070707070707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070707070000000000070707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070707000000000000000707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070707070000000000070707070707070707070707
                      0707070707070707070707070707070707070707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnCenterClick
                  end
                  object btnAlignRight: TSpeedButton
                    Left = 60
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Direita'
                    GroupIndex = 6
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707070707070707070707070707070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070707070000000000000000070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070707070000000000000000070707070707070707
                      0707070707070707070707070000000000000000000000070707070707070707
                      0707070707070707070707070707070000000000000000070707070707070707
                      0707070707070707070707070707070707070707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnAlignRightClick
                  end
                  object SpeedButton12: TSpeedButton
                    Left = 90
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Justificar'
                    GroupIndex = 6
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00000000000000000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00390039003100310031003100000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00390039002900290029002900000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00080008001800100018081000000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton12Click
                  end
                end
                object ToolBar13: TToolBar
                  Left = 406
                  Top = 74
                  Width = 125
                  Height = 35
                  ButtonHeight = 30
                  Caption = 'ToolBar2'
                  TabOrder = 3
                  object SpeedButton1: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Negrito'
                    AllowAllUp = True
                    GroupIndex = 1
                    Caption = 'B'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6000000000000000000000000E6E6E6E6E6E6E6E6E6000000
                      000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6E6E69999
                      99000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6
                      E6E6000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6
                      E6E6E6000000000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000000000
                      00E6E6E6999999000000000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600
                      0000000000999999000000000000999999000000000000E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6000000000000000000000000999999E6E6E6000000000000E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6000000000000000000999999E6E6E6E6E6E6000000000000E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6000000000000000000999999E6E6E6E6E6E6000000000000
                      000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                    Margin = 3
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton1Click
                  end
                  object SpeedButton3: TSpeedButton
                    Left = 30
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'It'#225'lico'
                    AllowAllUp = True
                    GroupIndex = 2
                    Caption = 'I'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsItalic]
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E666666600000000
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      000000000000666666E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6666666000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6666666000000000000E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000
                      000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                    Margin = 3
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton3Click
                  end
                  object SpeedButton5: TSpeedButton
                    Left = 60
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Sublinhado'
                    AllowAllUp = True
                    GroupIndex = 3
                    Caption = 'U'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsUnderline]
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      000000000000000000000000000000000000000000000000000000E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000E6E6E60000000000
                      00000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E600
                      0000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      000000000000000000999999E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6000000000000000000999999E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E699
                      9999000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6666666000000000000E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6666666000000000000E6E6E6000000000000000000E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                    Margin = 3
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton5Click
                  end
                  object SpeedButton6: TSpeedButton
                    Left = 90
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Cor do Texto'
                    Flat = True
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF176DCB0658B50658B5012A9502277A8CC4FBFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFF176DCB6EB3F46EB3F46EB3F46EB3F46EB3F40658B50658B58CC4FB
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFF176DCB9ADEFAE6E6029781079781074FD0F56EB3F46EB3
                      F40658B58CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCBE6E602E6E60269D0FB69D0FB54
                      54FC0303DF6EB3F402277AFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB6EB3F4E6E60288D9FA88D9FA
                      7587F80303DF0303DF4FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB176DCB6EB3F4BFE9F7ADE3FA9ADE
                      FA88D9FAA8A8F969D0FB4FD0F54FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085D91085D91085D91085D91085D78
                      7878ADE3FA9ADEFA88EAF92EE92E69D0FB4FD0F5176DCBFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085DEBF9FA
                      EBF9FABFE9F7BFE9F72EE92E2EE92E069D160D7B0D69D0FB176DCBFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D9D1F
                      42F8F9F9BBBBBBCAF6F7BFE9F7ADE3FA9ADEFA0D7B0D0D7B0D8CC4FB3F8EDEFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D
                      1F429D1F42F8F9F9F2F8F9BBBBBB7878783D5758ADE3FA9ADEFA8CC4FB3F8EDE
                      8CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFB33238B33238F8F9F9F8F9F9F2F8F93D5758000000BFE9F78CC4FB3F8E
                      DE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFB33238B33238F8F9F9F8F9F9F8F9F9EBF9FAEBF9FA3F8EDE3F
                      8EDE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFB33238B332383F8EDE3F8EDE3F8EDE3F8EDE3F8EDE
                      8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFBBBBBBFFFFFFFFFFFFD0531BD0531BBBBBBBDDDDDDDDDDDDDDDD
                      DDBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFD0531BBBBBBBBBBBBBBBBBBBD0531BD0531BBBBBBBBBBBBBBB
                      BBBBD0531BBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFD0531BD0531BD0531BD0531BD0531BD0531BD0531B
                      D0531BD0531BD0531BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton6Click
                  end
                end
                object ToolBar14: TToolBar
                  Left = 9
                  Top = 0
                  Width = 133
                  Height = 35
                  ButtonHeight = 30
                  Caption = 'ToolBar2'
                  TabOrder = 4
                  object SpeedButton10: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 32
                    Height = 30
                    Hint = 'Novo Documento'
                    Flat = True
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
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton10Click
                  end
                  object SpeedButton9: TSpeedButton
                    Left = 32
                    Top = 2
                    Width = 32
                    Height = 30
                    Hint = 'Salvar como'
                    Flat = True
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
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton9Click
                  end
                  object SpeedButton11: TSpeedButton
                    Left = 64
                    Top = 2
                    Width = 32
                    Height = 30
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
                    OnClick = SpeedButton11Click
                  end
                  object SpeedButton8: TSpeedButton
                    Left = 96
                    Top = 2
                    Width = 32
                    Height = 30
                    Hint = 'Imprimir'
                    Flat = True
                    Glyph.Data = {
                      F6010000424DF601000000000000B60000002800000012000000100000000100
                      08000000000040010000120B0000120B0000200000000000000060412A00F8E1
                      AF00C0885E00E4E4E400BEBEBE00E5C39400FFF8F000FFE5C300DFDFDF00C5C5
                      C500E9AF7D00F4D5A400FFD59E00CCCCCC00FFFCF900FFF1CF00FFF7C500FFEA
                      B700FFEFDB00D59D6F00FFDCAD00FFEDD500DCAF8100FFE3BE00FFFFFF00EFC5
                      9300FFECB900FFF6D600FFFFFF000000000000000000000000001C1C1C1C0603
                      03030303030303030303061C00001C1C1C030D04040404040404040404040D06
                      00001C1C0300000000000000000000000000040300001C030005101010101010
                      1010101010000403000006001B1B160101010101010101011100040300000010
                      0F0F131919191919191919190B0004030000001A1010020A0A0A0A0A0A0A0A0A
                      19000D06000000111918181818181818181818181800031C0000001918000000
                      000000000000001800031C1C000000181800170C0C0C0C0C0C0C0000081C1C1C
                      00000000000015141414141414140004031C1C1C00001C1C1C00060707070707
                      07070004031C1C1C00001C1C1C000E121212121212120004031C1C1C00001C1C
                      1C0018060606060606060004031C1C1C00001C1C1C001818181818181818000D
                      061C1C1C00001C1C1C00000000000000000000061C1C1C1C0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton8Click
                  end
                end
                object ToolBar15: TToolBar
                  Left = 157
                  Top = 0
                  Width = 188
                  Height = 35
                  Align = alClient
                  ButtonHeight = 30
                  Caption = 'ToolBar2'
                  TabOrder = 5
                  object SpeedButton7: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Desfazer'
                    Flat = True
                    Glyph.Data = {
                      76050000424D7605000000000000360400002800000012000000100000000100
                      08000000000040010000120B0000120B00000001000014000000FFFFFF00CCFF
                      FF00FFFFCC00FFCCCC00CCCCCC00CC99CC00CCCC990099CC9900CC9999009999
                      9900996699009999660066996600996666006666660066336600666633003366
                      3300663333006666000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000436F000000000000000000000000000000000000
                      436F000000000000000000000001030103000000436F00000000000000000000
                      0000090604000000436F000000000000000000000004090809000000436F0000
                      000000000000000000040D0E08000000436F0000041004040000000000040E10
                      0E000000436F000006111213100C0500000410120D000000436F00000B0F100F
                      0E0600000004120E10000000436F00020E121012070000000009101009000000
                      436F0004100A0E100D090404080E100E08000000436F000004000D1010100F10
                      10100F0B00000000436F00000000040B100F1010120E0B0400000000436F0000
                      00000000090B0E100908000000000000436F0000000000000000000000000000
                      00000000436F000000000000000000000000000000000000436F}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton7Click
                  end
                  object SpeedButton37: TSpeedButton
                    Left = 30
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Refazer'
                    Flat = True
                    Glyph.Data = {
                      76050000424D7605000000000000360400002800000012000000100000000100
                      08000000000040010000120B0000120B00000001000014000000FFFFFF00CCFF
                      FF00FFFFCC00FFCCCC00CCCCCC00CC99CC00CCCC990099CC9900CC9999009999
                      9900996699009999660066996600996666006666660066336600666633003366
                      3300663333006666000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000030103010000000000000000000000000000000004060900000000
                      0000000000000000000000000009080904000000000000000000000000000000
                      00080E0D04000000000000000000000000000000000E100E0400000000000404
                      1004000000000000000D1210040000050C101312110600000000000000100E12
                      04000000060E0F100F0B000000000000000910100900000000071210120E0200
                      0000000000080E100E080404090D100E0A1004000000000000000B0F1010100F
                      1010100D00040000000000000000040B0E1210100F100B040000000000000000
                      000000000809100E0B0900000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton37Click
                  end
                  object btnNumList: TSpeedButton
                    Left = 60
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Numera'#231#227'o'
                    AllowAllUp = True
                    GroupIndex = 4
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707040407070707070707070707070707070707040707
                      0707070707070707070707070407070700000000000000000707070404040707
                      0707070707070707070707070707070707070707070707070707070404040707
                      0707070707070707070707070407070707070707070707070707070707040707
                      0000000000000000070707040407070707070707070707070707070707070707
                      0707070707070707070707040404070707070707070707070707070704070707
                      0707070707070707070707040407070700000000000000000707070704070707
                      0707070707070707070707070707070707070707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnNumListClick
                  end
                  object btnBullet: TSpeedButton
                    Left = 90
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Marcador'
                    AllowAllUp = True
                    GroupIndex = 5
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707070707070707070707070707070707070404040707
                      0707070707070707070707040404070700000000000000000707070404040707
                      0707070707070707070707070707070707070707070707070707070707070707
                      0707070707070707070707040404070707070707070707070707070404040707
                      0000000000000000070707040404070707070707070707070707070707070707
                      0707070707070707070707070707070707070707070707070707070404040707
                      0707070707070707070707040404070700000000000000000707070404040707
                      0707070707070707070707070707070707070707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnBulletClick
                  end
                  object btnDecreaseIndent: TSpeedButton
                    Left = 120
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Retorno tabula'#231#227'o'
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707070707070707000707070707070707070707070707
                      0707070707070707070707070000000007000007070707070707070707070707
                      0707070707070707070707070000000007000000000000000007070707070707
                      0707070707070707070707070407070707000000000000070707070404070707
                      0700000000000007070704040404040707070707070707070707070404070707
                      0700000000000000000707070407070707000000000000000007070707070707
                      0707070707070707070707070000000007000000000000000007070707070707
                      0707070707070707070707070707070707000707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnDecreaseIndentClick
                  end
                  object btnIncreaseIndent: TSpeedButton
                    Left = 150
                    Top = 2
                    Width = 30
                    Height = 30
                    Hint = 'Adicionar tabula'#231#227'o'
                    Flat = True
                    Glyph.Data = {
                      36050000424D3605000000000000360400002800000010000000100000000100
                      08000000000000010000C40E0000C40E00000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                      A600330000006600000099000000CC0000000033000033330000663300009933
                      0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                      000000990000339900006699000099990000CC990000FF99000000CC000033CC
                      000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                      000000003300330033006600330099003300CC003300FF003300003333003333
                      33006633330099333300CC333300FF3333000066330033663300666633009966
                      3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                      330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                      330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                      6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                      660000666600336666006666660099666600CC666600FF666600009966003399
                      66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                      6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                      660000009900330099006600990099009900CC009900FF009900003399003333
                      99006633990099339900CC339900FF3399000066990033669900666699009966
                      9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                      990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                      990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                      CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                      CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                      CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                      CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                      CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                      FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                      FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                      FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                      FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                      2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                      CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                      00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                      0707070707070707070707070707070707000707070707070707070707070707
                      0707070707070707070707070000000007000007070707070707070707070707
                      0707070707070707070707070000000007000000000000000007070707070707
                      0707070707070707070707070407070707000000000000070707070704040707
                      0700000000000007070704040404040707070707070707070707070704040707
                      0700000000000000000707070407070707000000000000000007070707070707
                      0707070707070707070707070000000007000000000000000007070707070707
                      0707070707070707070707070707070707000707070707070707}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnIncreaseIndentClick
                  end
                end
                object ToolBar16: TToolBar
                  Left = 9
                  Top = 37
                  Width = 659
                  Height = 35
                  ButtonHeight = 31
                  Caption = 'ToolBar2'
                  TabOrder = 6
                  object SpeedButton13: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 79
                    Height = 31
                    Hint = 'Inserir Imagem'
                    Caption = 'Imagem'
                    Flat = True
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
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton13Click
                  end
                  object SpeedButton15: TSpeedButton
                    Left = 79
                    Top = 2
                    Width = 123
                    Height = 31
                    Hint = 'Incorporar V'#237'deo de outra fonte'#13#10'ex.: www.youtube.com'
                    Caption = 'Incorporar V'#237'deo'
                    Flat = True
                    Glyph.Data = {
                      E6050000424DE605000000000000360400002800000016000000120000000100
                      080000000000B0010000120B0000120B000000010000000000003C1709009999
                      990000FF0000AC471000F1D5B30093310F0033CCFF0042891100C0F07A00AE8B
                      6300C1C2C000876F5D00644B1F0099FFFF00D67F3500FBEED70054231300ECB3
                      640083704B001ECA6A00E7FFDE000242010080A95E0066524000A5ADAC00E47D
                      4400D06E440051AA3D0085613B00B1722E00FEFBF700C97D4900AAA89600FAED
                      D5001EA503006A6D1700A6987B00A1A78400D65D350058530800925B2E00E3C9
                      A500727B3200F9EACF00CAAD9E00E3CB9500AB8A5D002F4C07009FF694001A34
                      0400BE9A7200CD63240085D85E007D3C2000E6A95900A8855A00C4932D00F3E4
                      9F004C7A5D005343330066663300FDF5E6009E754E00F2A74500DFCBA800AF61
                      360066666600B4916600D9A35C00D2673B00975611001D5F0000F8E7C8005E54
                      320046991900ECC48300DA9C42008A777400D9DA9200B2AFAA0093908C00946D
                      4600E6D3B80073472A00533C2C0050572C0063483A00D39045007C5713009999
                      6600957D71008D613200DE944C00FFFFFF0082400F00C2A6830031861E00F1FA
                      A90041170B00BC956E00D26D4D007D4A3000D87B4A00CD7C4200FDF8EF00AB8E
                      73006A413200AFB8BB0073612C00DC5D2A00705D38008C492200B1B5B6003357
                      050089824B00855E38004D8F2000E6FAE3009F785200D8942900D0714A009FA3
                      A400FFF7DE0093745500B9511C00DE703C003F160D00EBDAC0008D603A00F9F2
                      DF00E6D7BD00FEFCF80097371900C3C8C900F4C165009A968300A29C8900593F
                      3800E69E4600897F7F008E939200FCF2E100BB977100B5956C0093734800F9EB
                      D000BCB9B100D37639006A493900CDB89D0065534800CE734000ADAD9400D761
                      320066666600B4B5AC007A4B2B0099663300D66B4A00794E3D00D27F5200D87E
                      4300E6FFE600A17F5400D8734600FFFFFF000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000A5A5A5A5A5A5
                      A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A50000A5010101010101010101A5A5A5A5
                      A5A5A5A5A5A5A5A50000511C1C1C1C1C1C1C1C01A5A57001508C18A5A5A5A5A5
                      0000378D8D0F0F2B2B4853010A0B9F946A9456426BA5A5A50000093D3D818121
                      9195104D9C846F997D19A1416579A5A5000009683D3D81819542067E0503717C
                      6D7D0E4C1F89A5A50000436868683D8D69750D06625E157133A41A9397498BA5
                      00008F1E1E68683D3D2C750D067E470000661A45265596A5000043838383817F
                      824080140D0600067E57A07864463BA50000635D5D83525F3E3E3E28140D0606
                      7E8A5C671D2754A500008E5D5D5D821E1E29765B35140D067E11443A232F17A5
                      0000325D5D5D526804A3016C140D0D0D7E4B774A07315AA50000325D5D5D5204
                      0901A56E3C127B905B2D3F22600C4FA5000032326363636370A5A5201B133061
                      392D36745887A5A50000A5A5A5A5A5A5A5A5A5A5201634084E86382A8885A5A5
                      0000A5A5A5A5A5A5A5A5A5A5A5922559722E249BA5A5A5A50000A5A5A5A5A5A5
                      A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A50000A5A5A5A5A5A5A5A5A5A5A5A5A5A5
                      A5A5A5A5A5A5A5A50000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton15Click
                  end
                  object btnHR: TSpeedButton
                    Left = 202
                    Top = 2
                    Width = 61
                    Height = 31
                    Hint = 'Inserir linha Horizontal'
                    Caption = 'Linha'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    Glyph.Data = {
                      9E050000424D9E05000000000000360400002800000014000000120000000100
                      08000000000068010000120B0000120B00000001000002000000FFFFFF009999
                      9900000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000001010101
                      0101010101010101010101010100000001010101010101010101010101010101
                      0100000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000}
                    NumGlyphs = 2
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = btnHRClick
                  end
                  object SpeedButton14: TSpeedButton
                    Left = 263
                    Top = 2
                    Width = 84
                    Height = 31
                    Hint = 'Inserir Link URL'
                    Caption = 'Link URL'
                    Flat = True
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF78787800000000000000
                      0000000000000000FFFFFFFFFFFF000000000000000000000000000000787878
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF787878973E4DFBDBDA
                      FBDBDAFBDBDAFBDBDA7878789D1F429D1F42787878FCCBCDFCCBCDFCCBCDFCCB
                      CD000000787878FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB64F60FCDE
                      E0FCDEE000000000000000000000000000000000000000000000000000000000
                      0000FCCBCDFCCBCD000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB6
                      4F60FCECEC000000FFFFFF000000FFFFFFFFFFFFFEF4F5FCDEE0FCCBCDE4B4BB
                      000000FFFFFF000000FBDBDA000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFB64F60FBFCFAFEF4F50000000000000000000000000000000000000000
                      00000000000000000000FCECECFCECEC973E4DFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFF787878A93950FFFFFFFFFFFFFBFCFAFFFFFFFBFCFAA93950A9
                      3950FBFCFAFBFCFAFBFCFAFBFCFAFFFFFFB64F60787878FFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFF787878A93950A93950A93950A93950A93950
                      79AE3479AE34A93950A93950A93950B64F60B64F60787878FFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4687879AE3479AE34EAD1
                      87F1E19F79AE3479AE3479AE34F1E19FE6C17379AE34C46878AEAEB1FFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC46878E6C17379
                      AE3479AE34F1E19F98C65D98C65D79AE34F1E19FEAD18779AE34C46878AEAEB1
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC46878
                      98C65DE6C173CBDDB4F8EEBCF8EEBCF8EEBCF1E19FB5D47CEAD18779AE34C468
                      78AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFC4687898C65DB5D47CF8EEBCF8F4D6F8F4D6F8EEBCB5D47C98C65DE6C17379
                      AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFF9DB87BE38086EAD187F8F4D6FEFCEEFEFCEEF8F4D698C65D79AE34
                      79AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFE38086C0BF5FF1E19FF8F4D6F8F4D6D8E9BE98C6
                      5D79AE3479AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB87BE38086E38086C0BF5F98C65D98
                      C65D98C65DC46878C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB87BE38086
                      E38086E38086E380869DB87BCFD6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton14Click
                  end
                  object ComboSpeedButton3: TComboSpeedButton
                    Left = 347
                    Top = 2
                    Width = 105
                    Height = 31
                    Hint = 'Alterar Cor de fundo'
                    PopupMenu = PopupMenu_cordefundo
                    Caption = 'Cor Fundo'
                    Flat = True
                    Glyph.Data = {
                      9E050000424D9E05000000000000360400002800000014000000120000000100
                      08000000000068010000120B0000120B00000001000039000000FFFFFF00FEFE
                      FE00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F7F7F700F6F6F600F4F4F400F2F2
                      F200F1F1F100F0F0F000ECECEC00EBEBEB00E7E7E700E6E6E600E4E4E400E2E2
                      E200E1E1E100DFDFDF00DDDDDD00D7D7D700CACACA00C9C9C900C8C8C800C0C0
                      C000BBBBBB00B9B9B900AFAFAF00AEAEAE00ADADAD00AAAAAA00A7A7A700A0A0
                      A0009D9D9D00929292008F8F8F00868686008181810075757500717171006C6C
                      6C006969690067676700666666005F5F5F00444444003B3B3B00363636003333
                      3300282828002525250021212100202020001B1B1B0004040400000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000000000080D0700060E0E0600000000000000000000000511220C0615
                      1C1C1506000000000000000000000A1D2E1415202F2F20150600000000000000
                      00000E2A351B202F25212F2015060000000000000000123438242F2D1923212F
                      1C0E00000000000000001238382F2C16232623212F0E00000000000000000F38
                      38211623262629002F0600000000000000000B3238162B372529003006000000
                      0000000000000428382517372900301300000000000000000000000428331737
                      0030361300000000000000000000000004273337301A36100000000000000000
                      000000000000092C1E1F3109000000000000000000000000000000182C2C1703
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000}
                    ShowHint = True
                    OnClick = ComboSpeedButton3Click
                  end
                  object SpeedButton50: TSpeedButton
                    Left = 452
                    Top = 2
                    Width = 88
                    Height = 31
                    Hint = 'Alterar cor global dos textos'
                    Caption = 'Cor Texto'
                    Flat = True
                    Glyph.Data = {
                      0E060000424D0E06000000000000360000002800000016000000160000000100
                      180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF176DCB0658B50658B5012A9502277A8CC4FBFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFF176DCB6EB3F46EB3F46EB3F46EB3F46EB3F40658B50658B58CC4FB
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFF176DCB9ADEFAE6E6029781079781074FD0F56EB3F46EB3
                      F40658B58CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCBE6E602E6E60269D0FB69D0FB54
                      54FC0303DF6EB3F402277AFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB6EB3F4E6E60288D9FA88D9FA
                      7587F80303DF0303DF4FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB176DCB6EB3F4BFE9F7ADE3FA9ADE
                      FA88D9FAA8A8F969D0FB4FD0F54FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085D91085D91085D91085D91085D78
                      7878ADE3FA9ADEFA88EAF92EE92E69D0FB4FD0F5176DCBFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085DEBF9FA
                      EBF9FABFE9F7BFE9F72EE92E2EE92E069D160D7B0D69D0FB176DCBFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D9D1F
                      42F8F9F9BBBBBBCAF6F7BFE9F7ADE3FA9ADEFA0D7B0D0D7B0D8CC4FB3F8EDEFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D
                      1F429D1F42F8F9F9F2F8F9BBBBBB7878783D5758ADE3FA9ADEFA8CC4FB3F8EDE
                      8CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFB33238B33238F8F9F9F8F9F9F2F8F93D5758000000BFE9F78CC4FB3F8E
                      DE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFB33238B33238F8F9F9F8F9F9F8F9F9EBF9FAEBF9FA3F8EDE3F
                      8EDE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFB33238B332383F8EDE3F8EDE3F8EDE3F8EDE3F8EDE
                      8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                      FFFFFFFFFFFFBBBBBBFFFFFFFFFFFFD0531BD0531BBBBBBBDDDDDDDDDDDDDDDD
                      DDBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFD0531BBBBBBBBBBBBBBBBBBBD0531BD0531BBBBBBBBBBBBBBB
                      BBBBD0531BBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      0000FFFFFFFFFFFFFFFFFFD0531BD0531BD0531BD0531BD0531BD0531BD0531B
                      D0531BD0531BD0531BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton50Click
                  end
                  object ComboSpeedButton2: TComboSpeedButton
                    Left = 540
                    Top = 2
                    Width = 118
                    Height = 31
                    Hint = 'Inserir Pano de fundo'
                    PopupMenu = PopupMenu_fundo
                    Caption = 'Pano de fundo'
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
                    ShowHint = True
                    OnClick = ComboSpeedButton2Click
                  end
                end
                object ToolBar19: TToolBar
                  Left = 477
                  Top = 0
                  Width = 191
                  Height = 35
                  ButtonHeight = 30
                  Caption = 'ToolBar19'
                  TabOrder = 7
                  object ComboSpeedButton1: TComboSpeedButton
                    Left = 0
                    Top = 2
                    Width = 145
                    Height = 30
                    Hint = 'Inserir Tabela'
                    PopupMenu = PopupMenu_tabela
                    Caption = 'Inserir Tabela'
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
              object PageControltx: TPageControl
                Left = 1
                Top = 297
                Width = 676
                Height = 150
                ActivePage = TabSheet3
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                Images = ImageList_mail
                MultiLine = True
                ParentFont = False
                TabOrder = 3
                OnChange = PageControltxChange
                object TabSheet3: TTabSheet
                  Caption = 'Editar'
                  object Label25: TLabel
                    Left = 200
                    Top = 32
                    Width = 38
                    Height = 16
                    Caption = 'Label8'
                  end
                  object WebBrowser1: TWebBrowser
                    Left = 0
                    Top = 0
                    Width = 668
                    Height = 119
                    Align = alClient
                    ParentShowHint = False
                    ShowHint = False
                    TabOrder = 0
                    ControlData = {
                      4C0000000A4500004D0C00000000000000000000000000000000000000000000
                      000000004C000000000000000000000001000000E0D057007335CF11AE690800
                      2B2E12620A000000000000004C0000000114020000000000C000000000000046
                      8000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000100000000000000000000000000000000000000}
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'Origem'
                  ImageIndex = 1
                  object RxRichEdit_send: TRxRichEdit
                    Left = 0
                    Top = 0
                    Width = 668
                    Height = 119
                    Align = alClient
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    StreamFormat = sfPlainText
                    TabOrder = 0
                  end
                end
                object TabSheet5: TTabSheet
                  Caption = 'Visualizar'
                  ImageIndex = 2
                  object WebBrowserView: TWebBrowser
                    Left = 0
                    Top = 0
                    Width = 667
                    Height = 185
                    Align = alClient
                    ParentShowHint = False
                    ShowHint = False
                    TabOrder = 0
                    ControlData = {
                      4C000000F04400001F1300000000000000000000000000000000000000000000
                      000000004C000000000000000000000001000000E0D057007335CF11AE690800
                      2B2E12620A000000000000004C0000000114020000000000C000000000000046
                      8000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000100000000000000000000000000000000000000}
                  end
                end
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 227
              Height = 487
              Align = alLeft
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object DBGrid1: TDBGrid
                Left = 0
                Top = 41
                Width = 227
                Height = 423
                Align = alClient
                Color = clWhite
                FixedColor = 15066597
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
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
              object Panel21: TPanel
                Left = 0
                Top = 464
                Width = 227
                Height = 23
                Align = alBottom
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 16384
                Font.Height = -19
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 1
                object Lb_countreg1: TLabel
                  Left = 213
                  Top = 0
                  Width = 14
                  Height = 23
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '0'
                  Transparent = True
                end
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 227
                Height = 41
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                Visible = False
                object BitBtn1: TBitBtn
                  Left = 8
                  Top = 8
                  Width = 75
                  Height = 25
                  Caption = 'processa'
                  TabOrder = 0
                end
                object CheckBox3: TCheckBox
                  Left = 96
                  Top = 16
                  Width = 97
                  Height = 17
                  Caption = 'CheckBox3'
                  TabOrder = 1
                end
              end
            end
          end
          object TabSheet_itens: TTabSheet
            Caption = 'Lista de M'#250'sicas:  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 1
            ParentFont = False
            object Splitter5: TSplitter
              Left = 280
              Top = 0
              Height = 487
            end
            object Panel6: TPanel
              Left = 283
              Top = 0
              Width = 625
              Height = 487
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Panel7: TPanel
                Left = 1
                Top = 446
                Width = 623
                Height = 40
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object ToolBar4: TToolBar
                  Left = 252
                  Top = 2
                  Width = 369
                  Height = 36
                  Align = alRight
                  AutoSize = True
                  ButtonHeight = 36
                  Caption = 'pn_barra'
                  EdgeBorders = []
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object bt_new2: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 123
                    Height = 36
                    Hint = 'Adicionar nova m'#250'sica'
                    Caption = 'Nova'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
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
                    Left = 123
                    Top = 2
                    Width = 123
                    Height = 36
                    Hint = 'Excluir m'#250'sica selecionada'
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
                    Left = 246
                    Top = 2
                    Width = 123
                    Height = 36
                    Hint = 'Gravar dados'
                    Caption = 'Gravar'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -16
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
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
                Width = 623
                Height = 445
                Align = alClient
                BevelOuter = bvNone
                Color = 16119285
                TabOrder = 1
                object Panelitens: TPanel
                  Left = 0
                  Top = 0
                  Width = 623
                  Height = 445
                  Align = alClient
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  Color = 16119285
                  TabOrder = 0
                  object Splitter2: TSplitter
                    Left = 2
                    Top = 201
                    Width = 619
                    Height = 8
                    Cursor = crVSplit
                    Align = alTop
                    Beveled = True
                  end
                  object GroupBox1: TGroupBox
                    Left = 2
                    Top = 209
                    Width = 619
                    Height = 234
                    Align = alClient
                    Caption = 'Letra da M'#250'sica:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object re_editor2txt: TMemo
                      Left = 2
                      Top = 20
                      Width = 615
                      Height = 212
                      Align = alClient
                      ScrollBars = ssVertical
                      TabOrder = 0
                    end
                  end
                  object Panel25: TPanel
                    Left = 2
                    Top = 2
                    Width = 619
                    Height = 199
                    Align = alTop
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    object Panel18: TPanel
                      Left = 0
                      Top = 0
                      Width = 619
                      Height = 199
                      Align = alClient
                      BevelOuter = bvNone
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Verdana'
                      Font.Style = []
                      ParentColor = True
                      ParentFont = False
                      TabOrder = 0
                      object Label8: TLabel
                        Left = 7
                        Top = 35
                        Width = 109
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'Nome da M'#250'sica:'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label6: TLabel
                        Left = 7
                        Top = 8
                        Width = 45
                        Height = 13
                        Alignment = taRightJustify
                        Caption = 'C'#243'digo:'
                      end
                      object ms_cod: TLabel
                        Left = 56
                        Top = 9
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
                      object Label9: TLabel
                        Left = 7
                        Top = 73
                        Width = 231
                        Height = 13
                        Caption = 'Youbube para V'#237'deo/Trailer Oficial:'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object Label_size2: TLabel
                        Left = 590
                        Top = 9
                        Width = 21
                        Height = 12
                        Alignment = taRightJustify
                        Caption = '0 kb'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object bt_open2: TSpeedButton
                        Left = 409
                        Top = 114
                        Width = 79
                        Height = 37
                        Hint = 'Importar imagem'
                        Caption = 'Importar MP3'
                        Enabled = False
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
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
                        OnClick = bt_open2Click
                      end
                      object bt_exp2: TSpeedButton
                        Left = 489
                        Top = 114
                        Width = 61
                        Height = 37
                        Hint = 'Exportar MP3 para disco'
                        Caption = 'Exportar'
                        Enabled = False
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
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
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_exp2Click
                      end
                      object bt_limpar2: TSpeedButton
                        Left = 553
                        Top = 114
                        Width = 61
                        Height = 37
                        Hint = 'Limpar imagem'
                        Caption = 'Limpar'
                        Enabled = False
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
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
                        OnClick = bt_limpar2Click
                      end
                      object Label11: TLabel
                        Left = 7
                        Top = 153
                        Width = 148
                        Height = 13
                        Caption = 'Link Cifra: (http://*.*)'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object linkmp3: TCheckBox
                        Left = 8
                        Top = 111
                        Width = 129
                        Height = 17
                        Caption = 'Nome '#225'udio (url)'
                        Checked = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
                        ParentFont = False
                        State = cbChecked
                        TabOrder = 2
                        OnClick = linkmp3Click
                      end
                      object ms_titulo: TEdit
                        Left = 6
                        Top = 49
                        Width = 608
                        Height = 21
                        TabOrder = 0
                        OnKeyDown = EVsave2KeyDown
                      end
                      object ms_loc: TEdit
                        Left = 6
                        Top = 87
                        Width = 608
                        Height = 21
                        TabOrder = 1
                        OnKeyDown = EVsaveKeyDown
                      end
                      object ms_loc2: TEdit
                        Left = 6
                        Top = 127
                        Width = 399
                        Height = 21
                        TabOrder = 3
                        OnKeyDown = EVsaveKeyDown
                      end
                      object ms_loc3: TEdit
                        Left = 6
                        Top = 167
                        Width = 608
                        Height = 21
                        TabOrder = 4
                        OnKeyDown = EVsaveKeyDown
                      end
                    end
                  end
                end
              end
            end
            object Panel15: TPanel
              Left = 0
              Top = 0
              Width = 280
              Height = 487
              Align = alLeft
              BevelOuter = bvNone
              ParentBackground = True
              ParentColor = True
              TabOrder = 1
              object Label33: TLabel
                Left = 0
                Top = 0
                Width = 280
                Height = 23
                Align = alTop
                Caption = #193'lbum selecionado:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8667648
                Font.Height = -19
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
              end
              object DBGrid2: TDBGrid
                Left = 0
                Top = 169
                Width = 280
                Height = 298
                Align = alClient
                Color = clWhite
                FixedColor = 15066597
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
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
              object ToolBar_grp: TToolBar
                Left = 0
                Top = 23
                Width = 280
                Height = 29
                ButtonHeight = 26
                Caption = 'ToolBar_grp'
                EdgeBorders = [ebBottom]
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnResize = ToolBar_grpResize
                object cb_group: TComboBox
                  Left = 0
                  Top = 2
                  Width = 280
                  Height = 26
                  ItemHeight = 18
                  TabOrder = 0
                  OnChange = cb_groupChange
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 467
                Width = 280
                Height = 20
                Align = alBottom
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 2
                object Lb_countreg2: TLabel
                  Left = 273
                  Top = 0
                  Width = 7
                  Height = 20
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '0'
                  Transparent = True
                end
                object ComboBox_Grid2: TComboBox
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
              object ToolBar18: TToolBar
                Left = 0
                Top = 52
                Width = 280
                Height = 42
                AutoSize = True
                ButtonHeight = 40
                Caption = 'pn_barra'
                EdgeBorders = []
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                Visible = False
                object bt_recursive: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 163
                  Height = 40
                  Hint = 'Inclus'#227'o recursiva de '#225'udios'
                  Caption = 'Importar Pastas'
                  Enabled = False
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 157
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
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
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = bt_recursiveClick
                end
                object SpeedButton2: TSpeedButton
                  Left = 163
                  Top = 2
                  Width = 116
                  Height = 40
                  Hint = 'Exportar todas as '#225'udios para Pasta'
                  Caption = 'Exportar Itens'
                  Enabled = False
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
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
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = SpeedButton2Click
                end
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 94
                Width = 280
                Height = 75
                Align = alTop
                Caption = 'Importar lista de m'#250'sicas de arquivo:'
                TabOrder = 4
                object SpeedButton4: TSpeedButton
                  Left = 8
                  Top = 50
                  Width = 161
                  Height = 23
                  Hint = 'Selecionar arquivo contendo lista'
                  Caption = 'Importar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    EE000000424DEE000000000000007600000028000000100000000F0000000100
                    04000000000078000000120B0000120B00001000000000000000FFFFFF0099FF
                    FF0000CCFF00C0C0C0000099FF003399CC00868686003366CC00336699003333
                    660000000000FFFFFF0000000000000000000000000000000000000000005999
                    9950000000009422479000000000499999800006660094224790000600005499
                    9998000600000942247900060000051000290006000000588880AAAAAAA00000
                    0000A33333A000000000A33333A000000000A33333A000000000A33333A00000
                    0000A33333A000000000AAAAAAA000000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton4Click
                end
                object Label23: TLabel
                  Left = 8
                  Top = 16
                  Width = 161
                  Height = 12
                  Caption = 'Ex.: 01. M'#250'sica  ou  01- M'#250'sica'
                end
                object SpeedButton16: TSpeedButton
                  Left = 120
                  Top = 28
                  Width = 161
                  Height = 23
                  Hint = 'Selecionar arquivo contendo lista'
                  Caption = 'exportar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    EE000000424DEE000000000000007600000028000000100000000F0000000100
                    04000000000078000000120B0000120B00001000000000000000FFFFFF0099FF
                    FF0000CCFF00C0C0C0000099FF003399CC00868686003366CC00336699003333
                    660000000000FFFFFF0000000000000000000000000000000000000000005999
                    9950000000009422479000000000499999800006660094224790000600005499
                    9998000600000942247900060000051000290006000000588880AAAAAAA00000
                    0000A33333A000000000A33333A000000000A33333A000000000A33333A00000
                    0000A33333A000000000AAAAAAA000000000}
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton16Click
                end
                object CheckBoxMAIUSCULAS: TCheckBox
                  Left = 8
                  Top = 32
                  Width = 97
                  Height = 17
                  Caption = 'MAI'#218'SCULAS'
                  Checked = True
                  State = cbChecked
                  TabOrder = 0
                end
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Atualizar Feed'
            ImageIndex = 2
            TabVisible = False
            object WebBrowser_feed: TWebBrowser
              Left = 0
              Top = 0
              Width = 907
              Height = 592
              TabStop = False
              Align = alClient
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              OnDownloadComplete = WebBrowser_feedDownloadComplete
              ControlData = {
                4C000000BE5D00002F3D00000000000000000000000000000000000000000000
                000000004C000000000000000000000001000000E0D057007335CF11AE690800
                2B2E12620A000000000000004C0000000114020000000000C000000000000046
                8000000000000000000000000000000000000000000000000000000000000000
                00000000000000000100000000000000000000000000000000000000}
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Adicionais'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 916
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
          Top = 423
          Width = 916
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
            Width = 555
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
          Width = 916
          Height = 380
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
            Width = 683
            Height = 364
            Cursor = crHandPoint
            Hint = 'Icone do '#225'lbum'
            TabStop = False
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ControlData = {
              67556655000900007D4600007930000008000200000000000800000000000800
              0000000008000E000000570069006E0064006F00770000000800060000002D00
              310000000800060000002D003100000008000A00000048006900670068000000
              08000200000000000800060000002D0031000000080000000000080002000000
              0000080010000000530068006F00770041006C006C0000000800040000003000
              0000080004000000300000000800020000000000080000000000080002000000
              00000D0000000000000000000000000000000000080004000000310000000800
              0400000030000000080000000000080004000000300000000800080000006100
              6C006C00000008000C000000660061006C00730065000000}
          end
          object Panel17: TPanel
            Left = 685
            Top = 14
            Width = 229
            Height = 364
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
              Top = 340
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
          Top = 531
          Width = 916
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 3
          object ToolBar5: TToolBar
            Left = 770
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 571
    Width = 949
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
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf,*.flv)|*.jpg;*.' +
      'jpeg;*.bmp;*.ico;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JP' +
      'EG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Fl' +
      'ash (*.swf)|*.swf|Macromedia Flash Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 38
    Top = 341
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 98
    Top = 342
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 68
    Top = 342
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf,*.flv)|*.jpg;*.jpeg;*' +
      '.bmp;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|' +
      '*.jpeg|Bitmaps (*.bmp)|*.bmp|Flash (*.swf)|*.swf|Macromedia Flas' +
      'h Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 190
    Top = 341
  end
  object PopupMenu2: TPopupMenu
    Left = 158
    Top = 343
    object MenuItem1: TMenuItem
      Caption = 'Excluir todos os registros'
      OnClick = MenuItem1Click
    end
  end
  object ExportarImgDialog: TSavePictureDialog
    Filter = 
      'JPEG arquivo de imagem (*.jpg)|*.jpg|Flash (*.swf)|*.swf|Macrome' +
      'dia Flash Video (*.flv)|*.flv'
    Left = 40
    Top = 372
  end
  object ColorDialog1: TColorDialog
    Left = 80
    Top = 372
  end
  object ToolbarImages: TImageList
    Left = 112
    Top = 372
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
    Left = 144
    Top = 372
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
    Left = 176
    Top = 373
  end
  object PopupMenu1: TPopupMenu
    Left = 222
    Top = 343
    object MenuItem2: TMenuItem
      Caption = 'Excluir registro permanentemente'
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 181
    Top = 216
  end
  object PopupMenu_cordefundo: TPopupMenu
    Left = 270
    Top = 479
    object MenuItem3: TMenuItem
      Caption = 'Cor de fundo'
      OnClick = ComboSpeedButton3Click
    end
    object MenuItem9: TMenuItem
      Caption = '-'
    end
    object MenuItem10: TMenuItem
      Caption = 'Cor Link'
      OnClick = MenuItem10Click
    end
    object CorLinkativo1: TMenuItem
      Caption = 'Cor Link ativo'
      OnClick = CorLinkativo1Click
    end
    object CorLinkvisitado1: TMenuItem
      Caption = 'Cor Link visitado'
      OnClick = CorLinkvisitado1Click
    end
  end
  object PopupMenu_fundo: TPopupMenu
    Left = 270
    Top = 439
    object Inserir1: TMenuItem
      Caption = 'Pano de fundo'
    end
    object MenuItem11: TMenuItem
      Caption = '-'
    end
    object NoRepetir1: TMenuItem
      Caption = 'N'#227'o Repetir'
      OnClick = NoRepetir1Click
    end
    object repetirimagem1: TMenuItem
      Caption = 'Repetir imagem'
      Checked = True
      OnClick = repetirimagem1Click
    end
    object RepetirX1: TMenuItem
      Caption = 'Repetir horizontal'
      OnClick = RepetirX1Click
    end
    object RepetirY1: TMenuItem
      Caption = 'Repetir vertical'
      OnClick = RepetirY1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fixarfundo1: TMenuItem
      Caption = 'Fixar fundo'
      OnClick = Fixarfundo1Click
    end
    object MenuItem12: TMenuItem
      Caption = '-'
    end
    object Limpar1: TMenuItem
      Caption = 'Limpar fundo'
      OnClick = Limpar1Click
    end
  end
  object cdColor: TColorDialog
    Left = 320
    Top = 440
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'All (*.jpg;*.jpeg)|*.jpg;*.jpeg|JPEG Image File (*.jpg)|*.jpg|JP' +
      'EG Image File (*.jpeg)|*.jpeg'
    Title = 'Abrir Imagem de Fundo'
    Left = 318
    Top = 479
  end
  object ImageList_mail: TImageList
    Left = 354
    Top = 438
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      990000000000000000000000000000000000946D460085613B0085613B008561
      3B0085613B0085613B0085613B0000000000000000009999990093908C008E93
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000033CC
      FF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CC
      FF0033CCFF0000000000000000000000000000000000000000009F774D00926E
      4A008F6A44008F6A4400876541008C65390086613B0086613B00815E33009999
      990000000000000000000000000000000000A8855A00FCF2E100FBEED700FBEE
      D700F9EACF00F8E7C80073472A00C1C2C000876F5D006A4939006A4132006A49
      390066666600AFB8BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000033CC
      FF0033CCFF0033CCFF0033CCFF00003366000033660033CCFF0033CCFF0033CC
      FF0033CCFF000000000000000000000000000000000000000000AB866000FCF1
      DB00000000008499A1008A847700AD906B00C9AF8B00C9AF8B008B6640009999
      990000000000000000000000000000000000AE8B6300FDF5E600FDF5E600F9F2
      DF00CDB89D006666660033CCFF0093310F00AC471000B9511C00DC5D2A00DE70
      3C00DA9C4200C97D4900593F3800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CC
      FF00000000000000000000000000000000000000000000000000AB866000FEF5
      E7008DC6CF000000000033BCD6000066CC00CDB38F00CDB38F008F6A44009999
      990000000000000000000000000000000000B4916600FDF8EF00FDF8EF00FDF5
      E600AB8E7300E6FAE30099FFFF0041170B0082400F0033570500CD632400D873
      4600D3763900CE7340005E543200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033CCFF0033CCFF0033CCFF00003366000033660033CCFF0033CCFF0033CC
      FF00000000000000000000000000000000000000000000000000AF8A6400FEF5
      E700CBDED5007FFFFE0033CCFF0033BCD6000066CC00C8B28F00825529009999
      990000000000000000000000000000000000B5956C00FEFBF700FDF8EF00FDF8
      EF00FDF5E600CAAD9E00E6FAE30033CCFF003F160D003C1709003C170900D87B
      4A00D2673B00D65D350050572C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033CCFF0033CCFF00000000000000000033CCFF0033CCFF000000
      0000000000000000000000000000000000000000000000000000B38F6700FFF8
      EF00FEF5E700089BC3007FFFFE0033CCFF0033BCD6000066CC0070410D009999
      990000000000000000000000000000000000B4916600FEFCF800FEFCF800F9F2
      DF00E6D7BD00DFCBA8008D603A0099FFFF0033CCFF0033CCFF003F160D00D390
      4500D0714A00D26D4D0097561100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033CCFF0033CCFF00000000000000000033CCFF0033CCFF000000
      0000000000000000000000000000000000000000000000000000B6926A00FFF8
      EF00FFF8EF00FEF5E700089BC30084FDFF0033CCFF0033BCD6000066CC009999
      990000000000000000000000000000000000BC956E0000000000FEFCF800E6D3
      B8009E754E009E754E009E754E00E7FFDE0099FFFF0033CCFF003F160D00E69E
      4600CD7C4200B1722E0058530800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033CCFF00000000000000000033CCFF00000000000000
      0000000000000000000000000000000000000000000000000000BB946D00FDFA
      F600FDFAF600FFF8EF00E5D3BC00089BC3007FFFFE0033CCFF0033BCD6000066
      CC0000000000000000000000000000000000BB9771000000000000000000E6D7
      BD00FEFBF700E3C9A5009F7852007D3C2000E7FFDE0033CCFF003F160D00ECB3
      64004C7A5D006A6D17002F4C0700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033CCFF00003366000033660033CCFF00000000000000
      0000000000000000000000000000000000000000000000000000BB946D000000
      0000FDFAF600FDFAF600E1D0BB00E1D0BB00089BC30084FDFF0033CCFF0033BC
      D60000000000000000000000000000000000BE9A72000000000000000000E6D3
      B800F1D5B300A17F540099999900E7FFDE0099FFFF0099FFFF003F160D00ECC4
      830046991900428911001A340400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033CCFF0033CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BA9874000000
      00000000000000000000E1D0BB00FDFAF600F1D5B200089BC3007FFFFE0033CC
      FF00583C3500000000000000000000000000BE9A72000000000000000000E6D3
      B800AE8B630099999900000000006666330083704B00937348008D613200E3CB
      95001EA5030031861E00644B1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033CCFF0033CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9A6F00BD9A
      6F00BA987400BB946D00BB946D00BB946D00B1B6B50000000000000000009770
      4A00A06FA700BC84CD00473B4F00000000000000000000000000000000000000
      0000000000000000000000000000AAA8960080A95E00C0F07A00D9DA9200F4C1
      6500727B3200A29C8900C3C8C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9AAF400BA8AC4006E677400000000000000000000000000000000000000
      000000000000000000000000000000000000BCB9B1009999660089824B00AB8A
      5D00B4B5AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B5C8900977FA10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      99009999990099999900000000000000000000000000000000006C6C6C004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D006C6C6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666003333330033333300333333003333
      3300333333003333330033333300999999000000000000000000000000000000
      000000CCFF004E7BA6004E7BA6004E7BA6004E7BA6004E7BA6004E7BA6004E7B
      A6004E7BA600999999000000000000000000000000001B81B3001B81B3001B81
      B3001379AB001379AB000D73A5000D73A5000D73A5000D73A500086EA000086E
      A00000669900006699004A4A4A006C6C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FDF1DD00FDF1DD00FDF1DD00FCEED000FCEED000FBE9C400FBE9
      C4004E7BA6009999990000000000000000002287BA0066CCFF001F84B70099FF
      FF0069D0F7005BB5D7004A94AF004E9AB70058AFCF004E9AB7004A94AF005BB5
      D7003BA0D30099FFFF00006699004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000666666006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEF6E600FEF6E600FEF6E600FDF1DD00FDF1DD00FCEED000FCEE
      D0004E7BA600999999000000000000000000278CBF0066CCFF002D92C50099FF
      FF00569AA7005A544B0056504800534C44007CDCEF004B453E0048423A00453F
      38004297C20099FFFF00006699004D4D4D000000000000000000840000008400
      00000000000000000000000000000000000000000000C6C3C600000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000666666006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEF8EF0000000000000000000000000000000000000000000000
      00004E7BA600999999000000000000000000278CBF0066CCFF002D92C50099FF
      FF0078716700736C63006E675E007CDCEF0084EBFF007CDCEF005B544C005650
      48003A86AC0099FFFF00006699004D4D4D000000000000000000840000000000
      00000000000000000000000000000000000000000000C6C3C600000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      FF00333333009999990000000000666666000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FEF8EF00FEF8EF00FEF8EF00FEF6E600FEF6E600FDF1DD00FDF1
      DD004E7BA6009999990000000000000000002A8FC20066CCFF003399CC0099FF
      FF0090897E008C857A0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF006E67
      5E00645D550099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000848284000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999004A4A
      FF004A4AFF003333330099999900666666006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEFAF600000000000000000000000000000000000000000082FE
      FE004E7BA6009999990000000000000000002A8FC20066CCFF003399CC0099FF
      FF00A59D9000A29A8E009E968A0094F7FF0094F7FF0094F7FF008C857A00877F
      750057BCEF0099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF0033333300666666000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FEFCF700FEFCF700FEFCF700FEF8EF0082FEFE0000CCFF0000CC
      FF004E7BA6009999990000000000000000002A8FC20066CCFF003399CC0099FF
      FF0094F7FF00ADA59800ADA59800ADA5980094F7FF00A59D9100A29A8D009E96
      8A0057BCEF0099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000848284000000000000000000000000000000000084828400848284000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF004A4AFF00333333006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEFCF70000000000000000000000000082FEFE00FEFCF100FEFC
      F1004E7BA6009999990000000000000000002D92C5006CD7FF003399CC0099FF
      FF0099FFFF0099FFFF00ADA59800ADA5980099FFFF00ADA59800ADA5980099FF
      FF0060C5F80099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF004A4AFF004A4AFF000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FEFCF7000000000000000000FEFCF70082FEFE00FEFAF60082FE
      FE00999999000000000000000000000000002D92C5007CDFFF002D92C500F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0084E7FF00F0FBFF000B71A3006C6C6C000000000000000000840000000000
      0000848284000000000084828400848284000000000084828400848284000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF004A4AFF00333333006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEFCF700FEFCF700FEFCF700FEFCF70082FEFE0082FEFE004E7B
      A600000000000000000000000000000000003399CC0084EBFF0084EBFF002D92
      C5002D92C5002D92C5002D92C5002D92C5002D92C5002D92C500278CBF002489
      BC001B81B3001B81B3001B81B300000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF003333330066666600FF666600FF666600FF666600FF66
      6600FF666600FF66660033333300999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF0099FFFF0099FF
      FF0099FFFF00F0FBFF002489BC002489BC002489BC002489BC001F84B7001F84
      B7001B81B3000000000000000000000000000000000000000000840000000000
      0000840000000000000084000000840000000000000084000000840000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF003333330066666600FF666600FF666600FF666600FF66
      6600FF666600FF66660033333300999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00F0FBFF00F0FB
      FF00F0FBFF002A8FC20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000004A4A
      FF004A4AFF003333330000000000666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC002D92C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      FF00333333000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      3300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFF81FF0000
      E007E00F018F0000C003C00F00030000C003C00F00010000E007C40F00010000
      E007C00F00010000F00FC00F00010000F00FC00F40010000F81FC00F60010000
      F81FD00F60010000FC3FDC0762010000FC3FC061FE010000FE7FFFF1FF070000
      FFFFFFF3FFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFF00F803C001F0F1FE00
      F0038000F4F9FEDCF0030000F449E600F0030000C211E600F0030000D803E2DC
      F0030000D2138000F0030000DC0700DCF0030000D5070000F0030000DC6700DC
      F3070000D49F0000F00F0001DFFF0000FFFF0007D49F0000FFFF83FFC00FE201
      FFFFC7FFFFFFE7FFFFFFFFFFFFFFEFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu_tabela: TPopupMenu
    Left = 270
    Top = 519
    object InserirTabela1: TMenuItem
      Caption = 'Inserir Tabela'
      OnClick = ComboSpeedButton1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object table_lin: TMenuItem
      Caption = 'Linhas (padr'#227'o = 1)'
      Checked = True
    end
    object table_col: TMenuItem
      Caption = 'Colunas (padr'#227'o = 1)'
      Checked = True
    end
    object table_bor: TMenuItem
      Caption = 'Borda (padr'#227'o =1)'
    end
    object table_lar: TMenuItem
      Caption = 'Largura (padr'#227'o = 500)'
    end
    object table_ce1: TMenuItem
      Caption = 'Preenchimento da C'#233'lula'
    end
    object table_ce2: TMenuItem
      Caption = 'Espa'#231'amento da C'#233'lula'
    end
  end
  object OpenDialog_XML: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'txt|*.txt'
    Left = 34
    Top = 205
  end
end
