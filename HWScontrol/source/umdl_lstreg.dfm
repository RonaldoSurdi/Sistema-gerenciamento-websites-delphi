object mdl_lstreg: Tmdl_lstreg
  Left = 124
  Top = 143
  BorderStyle = bsNone
  ClientHeight = 392
  ClientWidth = 735
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
  Position = poScreenCenter
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
    Top = 20
    Width = 735
    Height = 372
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
      Height = 364
      ActivePage = TabSheet7
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet7: TTabSheet
        Caption = 'Lista de registros'
        ImageIndex = 3
        object GroupBox5: TGroupBox
          Left = 344
          Top = 0
          Width = 375
          Height = 334
          Align = alRight
          Caption = 'Cadastro:'
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
            Width = 371
            Height = 289
            VertScrollBar.Position = 131
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object Panel5: TPanel
              Left = 0
              Top = -132
              Width = 346
              Height = 724
              BevelOuter = bvNone
              Color = 16119285
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label18: TLabel
                Left = 8
                Top = 301
                Width = 42
                Height = 12
                Caption = 'Data fim'
              end
              object Label12: TLabel
                Left = 8
                Top = 267
                Width = 54
                Height = 12
                Caption = 'Data inicio'
              end
              object Label15: TLabel
                Left = 76
                Top = 339
                Width = 94
                Height = 12
                Caption = 'Selecione a classe'
              end
              object Label17: TLabel
                Left = 8
                Top = 45
                Width = 146
                Height = 12
                Caption = 'Arquivo imagem/movie/'#225'udio'
                Transparent = True
                Layout = tlCenter
              end
              object x1_bt_import: TSpeedButton
                Left = 220
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
              end
              object x1_bt_clear: TSpeedButton
                Left = 309
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
              end
              object Label19: TLabel
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
              object Label20: TLabel
                Left = 318
                Top = 44
                Width = 22
                Height = 12
                Alignment = taRightJustify
                Caption = '0 kb'
              end
              object Label24: TLabel
                Left = 9
                Top = 134
                Width = 101
                Height = 12
                Alignment = taRightJustify
                Caption = 'Selecione o modelo:'
              end
              object Label14: TLabel
                Left = 229
                Top = 301
                Width = 42
                Height = 12
                Caption = 'Hora fim'
              end
              object Label23: TLabel
                Left = 229
                Top = 267
                Width = 54
                Height = 12
                Caption = 'Hora inicio'
              end
              object Label25: TLabel
                Left = 76
                Top = 374
                Width = 89
                Height = 12
                Caption = 'Selecione o grupo'
              end
              object Label26: TLabel
                Left = 76
                Top = 411
                Width = 107
                Height = 12
                Caption = 'Selecione o subgrupo'
              end
              object x1_cp3: TCheckBox
                Left = 8
                Top = 247
                Width = 209
                Height = 17
                Caption = 'Personalizar per'#237'odo de amostragem'
                TabOrder = 8
                OnClick = x1_cp3Click
              end
              object x1_codigo: TLabeledEdit
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
              object x1_cp1: TLabeledEdit
                Left = 8
                Top = 183
                Width = 337
                Height = 20
                EditLabel.Width = 51
                EditLabel.Height = 12
                EditLabel.Caption = 'Descri'#231#227'o'
                MaxLength = 255
                TabOrder = 3
              end
              object x1_cp15: TLabeledEdit
                Left = 9
                Top = 353
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 4
              end
              object x1_cp15_cbx: TComboBox
                Left = 74
                Top = 353
                Width = 271
                Height = 20
                ItemHeight = 12
                MaxLength = 255
                TabOrder = 5
              end
              object Panel8: TPanel
                Left = 6
                Top = 57
                Width = 337
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
                object x1_ShockwaveFlash: TShockwaveFlash
                  Left = 2
                  Top = 2
                  Width = 333
                  Height = 71
                  Cursor = crHandPoint
                  Hint = 'Icone do '#225'lbum'
                  TabStop = False
                  Align = alClient
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  ControlData = {
                    67556655100700006B2200005707000008000200000000000800000000000800
                    0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                    08000A0000004800690067006800000008000200000000000B00FFFF08000200
                    0000000008000E00000061006C00770061007900730000000800100000005300
                    68006F00770041006C006C0000000B0000000B00000008000200000000000800
                    02000000000008000200000000000D0000000000000000000000000000000000
                    0B0001000B000000080000000000030000000000}
                end
              end
              object x1_mod_img: TComboBox
                Left = 8
                Top = 147
                Width = 209
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                TabOrder = 2
              end
              object GroupBox9: TGroupBox
                Left = 0
                Top = 451
                Width = 346
                Height = 273
                Align = alBottom
                Caption = 'Editor de texto:'
                TabOrder = 6
                object CoolBar1: TCoolBar
                  Left = 2
                  Top = 14
                  Width = 342
                  Height = 76
                  AutoSize = True
                  Bands = <
                    item
                      Control = ToolBar10
                      ImageIndex = -1
                      Width = 277
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
                      Width = 92
                    end
                    item
                      Break = False
                      Control = ToolBar12
                      ImageIndex = -1
                      Width = 135
                    end
                    item
                      Break = False
                      Control = ToolBar13
                      ImageIndex = -1
                      Width = 111
                    end
                    item
                      Control = ToolBar2
                      ImageIndex = -1
                      MinHeight = 22
                      Width = 342
                    end>
                  EdgeBorders = []
                  object ToolBar10: TToolBar
                    Left = 9
                    Top = 0
                    Width = 264
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
                      Width = 193
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
                      Left = 197
                      Top = 0
                      Width = 8
                      ImageIndex = 8
                      Style = tbsSeparator
                    end
                    object FontSize: TEdit
                      Left = 205
                      Top = 0
                      Width = 40
                      Height = 22
                      Hint = 'Selecione o tamanho da fonte'
                      TabOrder = 1
                      Text = '12'
                      OnChange = FontSizeChange
                    end
                    object UpDown1: TUpDown
                      Left = 245
                      Top = 0
                      Width = 15
                      Height = 22
                      Associate = FontSize
                      Max = 150
                      Increment = 5
                      Position = 12
                      TabOrder = 2
                    end
                  end
                  object ToolBar11: TToolBar
                    Left = 9
                    Top = 27
                    Width = 79
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
                    Left = 103
                    Top = 27
                    Width = 122
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
                    Left = 240
                    Top = 27
                    Width = 98
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
                    object ToolButton1: TToolButton
                      Left = 73
                      Top = 0
                      Caption = 'Importar'
                      ImageIndex = 27
                      MenuItem = Importar1
                    end
                  end
                  object ToolBar14: TToolBar
                    Left = 288
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
                  object ToolBar2: TToolBar
                    Left = 9
                    Top = 54
                    Width = 331
                    Height = 22
                    Align = alNone
                    AutoSize = True
                    ButtonHeight = 20
                    EdgeBorders = []
                    TabOrder = 5
                    object CheckBox_ab: TCheckBox
                      Left = 0
                      Top = 2
                      Width = 139
                      Height = 20
                      Caption = 'Anexar '#225'lbum de fotos:'
                      TabOrder = 1
                    end
                    object ComboBox_ab: TComboBox
                      Left = 139
                      Top = 2
                      Width = 192
                      Height = 20
                      Style = csDropDownList
                      ItemHeight = 12
                      TabOrder = 0
                    end
                  end
                end
                object re_editor1: TRxRichEdit
                  Left = 2
                  Top = 90
                  Width = 342
                  Height = 181
                  Align = alClient
                  Lines.Strings = (
                    'loading...')
                  PopupMenu = PopupMenu_editor
                  TabOrder = 1
                  OnKeyDown = re_editor1KeyDown
                  OnSelectionChange = SelectionChange
                end
              end
              object x1_cp2: TLabeledEdit
                Left = 8
                Top = 220
                Width = 337
                Height = 20
                EditLabel.Width = 178
                EditLabel.Height = 12
                EditLabel.Caption = 'Palavras-chave (separadas por ";")'
                MaxLength = 255
                TabOrder = 7
              end
              object x1_cp4_date: TDateTimePicker
                Left = 8
                Top = 280
                Width = 217
                Height = 20
                Date = 38582.086950046280000000
                Time = 38582.086950046280000000
                TabOrder = 9
              end
              object x1_cp4_time: TDateTimePicker
                Left = 227
                Top = 280
                Width = 114
                Height = 20
                Date = 38582.000000000000000000
                Time = 38582.000000000000000000
                Kind = dtkTime
                TabOrder = 10
              end
              object x1_cp5_time: TDateTimePicker
                Left = 227
                Top = 314
                Width = 114
                Height = 20
                Date = 38582.000000000000000000
                Time = 38582.000000000000000000
                Kind = dtkTime
                TabOrder = 11
              end
              object x1_cp5_date: TDateTimePicker
                Left = 8
                Top = 314
                Width = 217
                Height = 20
                Date = 38582.086950046280000000
                Time = 38582.086950046280000000
                TabOrder = 12
              end
              object x1_cp16: TLabeledEdit
                Left = 9
                Top = 388
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 13
              end
              object x1_cp16_cbx: TComboBox
                Left = 75
                Top = 388
                Width = 271
                Height = 20
                ItemHeight = 12
                MaxLength = 255
                TabOrder = 14
              end
              object x1_cp17: TLabeledEdit
                Left = 9
                Top = 425
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 15
              end
              object x1_cp17_cbx: TComboBox
                Left = 75
                Top = 425
                Width = 271
                Height = 20
                ItemHeight = 12
                MaxLength = 255
                TabOrder = 16
              end
            end
          end
          object ToolBar6: TToolBar
            Left = 2
            Top = 303
            Width = 371
            Height = 29
            Align = alBottom
            Caption = 'ToolBar1'
            TabOrder = 1
            object x1_bt_prior: TSpeedButton
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
            end
            object x1_bt_next: TSpeedButton
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
            end
            object x1_bt_new: TSpeedButton
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
              OnClick = x1_bt_newClick
            end
            object x1_bt_del: TSpeedButton
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
            end
            object x1_bt_save: TSpeedButton
              Left = 228
              Top = 2
              Width = 141
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
              OnClick = x1_bt_saveClick
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 344
          Height = 334
          Align = alClient
          Caption = 'Lista de itens:'
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
            Left = 339
            Top = 36
            Height = 296
            Align = alRight
          end
          object Label28: TLabel
            Left = 707
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object Panel9: TPanel
            Left = 2
            Top = 36
            Width = 337
            Height = 296
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object x1_DBGrid: TDBGrid
              Left = 0
              Top = 0
              Width = 337
              Height = 296
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
            end
          end
          object ToolBar_web: TToolBar
            Left = 2
            Top = 14
            Width = 340
            Height = 22
            AutoSize = True
            ButtonHeight = 20
            EdgeBorders = []
            TabOrder = 1
            object Label7: TLabel
              Left = 0
              Top = 2
              Width = 51
              Height = 20
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Website: '
              Layout = tlCenter
            end
            object ComboBox_web: TComboBox
              Left = 51
              Top = 2
              Width = 286
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 0
              OnChange = ComboBox_webChange
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Classifica'#231#227'o'
        ImageIndex = 2
        object PageControl_clc: TPageControl
          Left = 0
          Top = 0
          Width = 719
          Height = 20
          ActivePage = TabSheet5
          Align = alTop
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = 'Classes'
            object Panel2: TPanel
              Left = 0
              Top = -263
              Width = 711
              Height = 263
              Align = alBottom
              BevelOuter = bvNone
              ParentBackground = False
              ParentColor = True
              TabOrder = 0
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Grupos'
            ImageIndex = 1
          end
          object TabSheet6: TTabSheet
            Caption = 'Subgrupos'
            ImageIndex = 2
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 20
          Width = 719
          Height = 314
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          ParentColor = True
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 344
            Top = 0
            Width = 375
            Height = 314
            Align = alRight
            Caption = 'Cadastro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object ToolBar3: TToolBar
              Left = 2
              Top = 283
              Width = 371
              Height = 29
              Align = alBottom
              Caption = 'ToolBar1'
              TabOrder = 0
              object x2_bt_prior: TSpeedButton
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
              end
              object x2_bt_next: TSpeedButton
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
              end
              object x2_bt_new: TSpeedButton
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
              end
              object x2_bt_del: TSpeedButton
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
              end
              object x2_bt_save: TSpeedButton
                Left = 228
                Top = 2
                Width = 141
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
              end
            end
            object ScrollBox2: TScrollBox
              Left = 2
              Top = 14
              Width = 371
              Height = 269
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 1
              object Panel6: TPanel
                Left = 0
                Top = -1
                Width = 346
                Height = 496
                BevelOuter = bvNone
                Color = 16119285
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Label8: TLabel
                  Left = 76
                  Top = 206
                  Width = 35
                  Height = 12
                  Caption = 'Classe'
                end
                object Label9: TLabel
                  Left = 8
                  Top = 45
                  Width = 146
                  Height = 12
                  Caption = 'Arquivo imagem/movie/'#225'udio'
                  Transparent = True
                  Layout = tlCenter
                end
                object x2_bt_import: TSpeedButton
                  Left = 220
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
                end
                object x2_bt_clear: TSpeedButton
                  Left = 309
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
                end
                object Label10: TLabel
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
                object Label11: TLabel
                  Left = 318
                  Top = 44
                  Width = 22
                  Height = 12
                  Alignment = taRightJustify
                  Caption = '0 kb'
                end
                object Label13: TLabel
                  Left = 9
                  Top = 134
                  Width = 101
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Selecione o modelo:'
                end
                object x2_codigo: TLabeledEdit
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
                object x2_descricao: TLabeledEdit
                  Left = 8
                  Top = 183
                  Width = 337
                  Height = 20
                  EditLabel.Width = 51
                  EditLabel.Height = 12
                  EditLabel.Caption = 'Descri'#231#227'o'
                  MaxLength = 255
                  TabOrder = 3
                end
                object x2_cp14: TLabeledEdit
                  Left = 9
                  Top = 220
                  Width = 65
                  Height = 20
                  EditLabel.Width = 35
                  EditLabel.Height = 12
                  EditLabel.Caption = 'C'#243'digo'
                  MaxLength = 11
                  TabOrder = 4
                end
                object x2_cp14_cbx: TComboBox
                  Left = 74
                  Top = 220
                  Width = 271
                  Height = 20
                  ItemHeight = 0
                  MaxLength = 255
                  TabOrder = 5
                end
                object Panel7: TPanel
                  Left = 6
                  Top = 57
                  Width = 337
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
                  object x2_ShockwaveFlash: TShockwaveFlash
                    Left = 2
                    Top = 2
                    Width = 333
                    Height = 71
                    Cursor = crHandPoint
                    Hint = 'Icone do '#225'lbum'
                    TabStop = False
                    Align = alClient
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    ControlData = {
                      67556655100700006B2200005707000008000200000000000800000000000800
                      0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                      08000A0000004800690067006800000008000200000000000B00FFFF08000200
                      0000000008000E00000061006C00770061007900730000000800100000005300
                      68006F00770041006C006C0000000B0000000B00000008000200000000000800
                      02000000000008000200000000000D0000000000000000000000000000000000
                      0B0001000B000000080000000000030000000000}
                  end
                end
                object x2_mod_img: TComboBox
                  Left = 8
                  Top = 147
                  Width = 209
                  Height = 20
                  Style = csDropDownList
                  ItemHeight = 0
                  TabOrder = 2
                end
                object GroupBox10: TGroupBox
                  Left = 0
                  Top = 246
                  Width = 346
                  Height = 250
                  Align = alBottom
                  Caption = 'Editor de texto:'
                  TabOrder = 6
                  object CoolBar3: TCoolBar
                    Left = 2
                    Top = 14
                    Width = 342
                    Height = 52
                    AutoSize = True
                    Bands = <
                      item
                        Control = ToolBar19
                        ImageIndex = -1
                        Width = 276
                      end
                      item
                        Break = False
                        Control = ToolBar23
                        ImageIndex = -1
                        Width = 64
                      end
                      item
                        Control = ToolBar20
                        ImageIndex = -1
                        Width = 93
                      end
                      item
                        Break = False
                        Control = ToolBar21
                        ImageIndex = -1
                        Width = 135
                      end
                      item
                        Break = False
                        Control = ToolBar22
                        ImageIndex = -1
                        Width = 110
                      end>
                    EdgeBorders = []
                    object ToolBar19: TToolBar
                      Left = 9
                      Top = 0
                      Width = 263
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
                      object ComboBox8: TComboBox
                        Left = 4
                        Top = 1
                        Width = 193
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
                      object ToolButton23: TToolButton
                        Left = 197
                        Top = 0
                        Width = 8
                        ImageIndex = 8
                        Style = tbsSeparator
                      end
                      object Edit2: TEdit
                        Left = 205
                        Top = 0
                        Width = 40
                        Height = 22
                        Hint = 'Selecione o tamanho da fonte'
                        TabOrder = 1
                        Text = '12'
                        OnChange = FontSizeChange
                      end
                      object UpDown3: TUpDown
                        Left = 245
                        Top = 0
                        Width = 15
                        Height = 22
                        Associate = Edit2
                        Max = 150
                        Increment = 5
                        Position = 12
                        TabOrder = 2
                      end
                    end
                    object ToolBar20: TToolBar
                      Left = 9
                      Top = 27
                      Width = 80
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
                      object ToolButton24: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'Negrito'
                        ImageIndex = 13
                        MenuItem = Negrito1
                        Style = tbsCheck
                      end
                      object ToolButton25: TToolButton
                        Left = 27
                        Top = 0
                        Caption = 'It'#225'lico'
                        ImageIndex = 15
                        MenuItem = Italico1
                        Style = tbsCheck
                      end
                      object ToolButton26: TToolButton
                        Left = 50
                        Top = 0
                        Caption = 'Sublinhado'
                        ImageIndex = 16
                        MenuItem = Sublinhado1
                        Style = tbsCheck
                      end
                    end
                    object ToolBar21: TToolBar
                      Left = 104
                      Top = 27
                      Width = 122
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
                      object ToolButton27: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'esquerdo'
                        Grouped = True
                        ImageIndex = 17
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object ToolButton28: TToolButton
                        Tag = 2
                        Left = 27
                        Top = 0
                        Caption = 'centro'
                        Grouped = True
                        ImageIndex = 18
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object ToolButton29: TToolButton
                        Tag = 1
                        Left = 50
                        Top = 0
                        Caption = 'direita'
                        Grouped = True
                        ImageIndex = 19
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object ToolButton30: TToolButton
                        Tag = 3
                        Left = 73
                        Top = 0
                        Caption = 'justificado'
                        Grouped = True
                        ImageIndex = 20
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object ToolButton31: TToolButton
                        Left = 96
                        Top = 0
                        Caption = 'Marcador'
                        ImageIndex = 21
                        MenuItem = Marcador1
                        Style = tbsCheck
                      end
                    end
                    object ToolBar22: TToolBar
                      Left = 241
                      Top = 27
                      Width = 97
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
                      object ToolButton32: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'Recortar'
                        ImageIndex = 6
                        MenuItem = Recortar1
                      end
                      object ToolButton33: TToolButton
                        Left = 27
                        Top = 0
                        Caption = 'Copiar'
                        ImageIndex = 7
                        MenuItem = Copiar1
                      end
                      object ToolButton34: TToolButton
                        Left = 50
                        Top = 0
                        Caption = 'Colar'
                        ImageIndex = 8
                        MenuItem = Colar1
                      end
                      object ToolButton35: TToolButton
                        Left = 73
                        Top = 0
                        Caption = 'Importar'
                        ImageIndex = 27
                        MenuItem = Importar1
                      end
                    end
                    object ToolBar23: TToolBar
                      Left = 287
                      Top = 0
                      Width = 51
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
                      object ToolButton36: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'Cor'
                        ImageIndex = 10
                        MenuItem = Cor1
                      end
                      object ToolButton37: TToolButton
                        Left = 27
                        Top = 0
                        Caption = 'Desfazer'
                        ImageIndex = 4
                        MenuItem = Desfazer1
                      end
                    end
                  end
                  object re_editor2: TRxRichEdit
                    Left = 2
                    Top = 66
                    Width = 342
                    Height = 182
                    Align = alClient
                    PopupMenu = PopupMenu_editor
                    TabOrder = 1
                    OnKeyDown = re_editor1KeyDown
                    OnSelectionChange = SelectionChange
                  end
                end
              end
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 344
            Height = 314
            Align = alClient
            Caption = 'Lista de itens:'
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Splitter1: TSplitter
              Left = 339
              Top = 14
              Height = 281
              Align = alRight
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
              Width = 337
              Height = 281
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object x2_DBGrid: TDBGrid
                Left = 0
                Top = 0
                Width = 337
                Height = 281
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
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Personaliza'#231#245'es'
        ImageIndex = 1
        object Panel16: TPanel
          Left = 0
          Top = 310
          Width = 719
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 0
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
          Height = 115
          Align = alClient
          Caption = 'Banner:'
          TabOrder = 1
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
            Height = 99
            Cursor = crHandPoint
            Hint = 'Icone do '#225'lbum'
            TabStop = False
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ControlData = {
              67556655100700003B3200007A08000008000200000000000800000000000800
              0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
              08000A0000004800690067006800000008000200000000000B00FFFF08000200
              0000000008000E00000061006C00770061007900730000000800100000005300
              68006F00770041006C006C0000000B0000000B00000008000200000000000800
              02000000000008000200000000000D0000000000000000000000000000000000
              0B0001000B000000080000000000030000000000}
          end
          object Panel17: TPanel
            Left = 488
            Top = 14
            Width = 229
            Height = 99
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
              Items.Strings = (
                'Auto ajustar proporcional'
                'Auto ajustar esticado'
                'Manter tamanho original')
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 75
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
          Caption = 'T'#237'tulo do m'#243'dulo:'
          TabOrder = 2
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
        object GroupBox1: TGroupBox
          Left = 0
          Top = 158
          Width = 719
          Height = 152
          Align = alBottom
          Caption = 'Configura'#231#245'es'
          TabOrder = 3
          object Label1: TLabel
            Left = 33
            Top = 43
            Width = 30
            Height = 12
            Caption = 'Antes'
          end
          object Label2: TLabel
            Left = 96
            Top = 59
            Width = 21
            Height = 12
            Caption = 'dias'
          end
          object Label4: TLabel
            Left = 192
            Top = 59
            Width = 21
            Height = 12
            Caption = 'dias'
          end
          object Label5: TLabel
            Left = 129
            Top = 43
            Width = 35
            Height = 12
            Caption = 'Depois'
          end
          object Label6: TLabel
            Left = 255
            Top = 85
            Width = 91
            Height = 12
            Caption = 'Agrupar itens por:'
          end
          object Bevel1: TBevel
            Left = 378
            Top = 10
            Width = 4
            Height = 137
            Shape = bsLeftLine
          end
          object cp5: TCheckBox
            Left = 13
            Top = 24
            Width = 209
            Height = 17
            Caption = 'Personalizar per'#237'odo de amostragem'
            TabOrder = 0
          end
          object cp6: TSpinEdit
            Left = 32
            Top = 56
            Width = 63
            Height = 21
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
          end
          object cp7: TSpinEdit
            Left = 128
            Top = 56
            Width = 63
            Height = 21
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 0
          end
          object cp8: TCheckBox
            Left = 13
            Top = 83
            Width = 209
            Height = 17
            Caption = 'Disponibilizar sistema de consultas'
            TabOrder = 3
          end
          object cp21: TCheckBox
            Left = 253
            Top = 62
            Width = 108
            Height = 17
            Caption = 'Exibir detalhes'
            TabOrder = 4
          end
          object cp27: TCheckBox
            Left = 253
            Top = 43
            Width = 100
            Height = 17
            Caption = 'Ampliar icone'
            TabOrder = 5
          end
          object cp22: TCheckBox
            Left = 253
            Top = 24
            Width = 100
            Height = 17
            Caption = 'Exibir icone'
            TabOrder = 6
          end
          object cp26: TLabeledEdit
            Left = 392
            Top = 23
            Width = 316
            Height = 20
            EditLabel.Width = 135
            EditLabel.Height = 12
            EditLabel.Caption = 'Texto para "Lista de itens"'
            TabOrder = 7
          end
          object cp23: TLabeledEdit
            Left = 392
            Top = 57
            Width = 316
            Height = 20
            EditLabel.Width = 108
            EditLabel.Height = 12
            EditLabel.Caption = 'Texto para "Classes"'
            TabOrder = 8
          end
          object cp24: TLabeledEdit
            Left = 392
            Top = 92
            Width = 316
            Height = 20
            EditLabel.Width = 103
            EditLabel.Height = 12
            EditLabel.Caption = 'Texto para "Grupos"'
            TabOrder = 9
          end
          object cp25: TLabeledEdit
            Left = 392
            Top = 127
            Width = 316
            Height = 20
            EditLabel.Width = 120
            EditLabel.Height = 12
            EditLabel.Caption = 'Texto para "Subgrupos"'
            TabOrder = 10
          end
          object cp18: TCheckBox
            Left = 32
            Top = 99
            Width = 169
            Height = 17
            Caption = 'Descri'#231#227'o e palavras-chave'
            TabOrder = 11
          end
          object cp19: TCheckBox
            Left = 32
            Top = 115
            Width = 65
            Height = 17
            Caption = 'Textos'
            TabOrder = 12
          end
          object cp20: TCheckBox
            Left = 32
            Top = 131
            Width = 177
            Height = 17
            Caption = 'Classes, Grupos e Subgrupos'
            TabOrder = 13
          end
          object CheckBox1: TCheckBox
            Left = 256
            Top = 99
            Width = 73
            Height = 17
            Caption = 'Classes'
            TabOrder = 14
          end
          object CheckBox2: TCheckBox
            Left = 256
            Top = 115
            Width = 65
            Height = 17
            Caption = 'Grupos'
            TabOrder = 15
          end
          object CheckBox3: TCheckBox
            Left = 256
            Top = 130
            Width = 89
            Height = 17
            Caption = 'Subgrupos'
            TabOrder = 16
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
      object PageControl_languagens2: TPageControl
        Left = 58
        Top = 2
        Width = 239
        Height = 19
        ActivePage = lngtbc1
        Align = alLeft
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PageControl_languagens2Change
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
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
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
      Width = 66
      Height = 13
      Cursor = crHandPoint
      Hint = 'Website'
      Alignment = taCenter
      Caption = 'HWScontrol'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
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
    object bt_help: TYuSoftButton
      Left = 655
      Top = 4
      Width = 14
      Height = 12
      Hint = 'Ajuda'
      Stretch = False
      UpImage.Data = {
        F6040000424DF60400000000000036040000280000000E0000000C0000000100
        080000000000C0000000120B0000120B00000001000000000000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
        C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
        D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
        D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
        E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
        E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
        F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00000000000000
        0000000000000000000000DEC6C6C6C4BCBCB5A69F967408000000E7C6C6C6C6
        D5DDE2DEDED4B909000000EBC6924C1E000D002358AFBD0C000000ED8D32003C
        ACAA903E0042BE0E000003ED021CACACECC4C6AC6202B210000015F08EC80600
        E8AC0300C71BAB0F000010EDEDEB1B06C6C01408C2C6BA0F000000CFF1EEF0F0
        EEE9E5D7D6C6B50D000000000000100000000063E9F1AA0C0000FF00007C6800
        66593E00639F46080000FFFF0000000000000000000000000000}
      DownImage.Data = {
        F6040000424DF60400000000000036040000280000000E0000000C0000000100
        080000000000C0000000120B0000120B00000001000000000000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
        C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
        D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
        D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
        E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
        E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
        F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00000000000000
        0000000000000000000000DEC6C6C6C4BCBCB5A69F967408000000E7C6C6C6C6
        D5DDE2DEDED4B909000000EBC6924C1E000D002358AFBD0C000000ED8D32003C
        ACAA903E0042BE0E000003ED021CACACECC4C6AC6202B210000015F08EC80600
        E8AC0300C71BAB0F000010EDEDEB1B06C6C01408C2C6BA0F000000CFF1EEF0F0
        EEE9E5D7D6C6B50D000000000000100000000063E9F1AA0C0000FF00007C6800
        66593E00639F46080000FFFF0000000000000000000000000000}
      MouseOverImage.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000018F4F400DCDC00DCDC00DCDC00DADA00D1D100D1D100CA
        CA00B9B900B1B100A7A7008181000909000000000024FDFD00DCDC00DCDC00DC
        DC00DCDC10EBEB1EF3F324F8F820F4F420F4F41CE9E90CCDCD000A0A00000000
        0046FEFE00DCDC07A2A21553530821210000000D0E0E0000000E2626245E5E2D
        BEBE00D3D3000E0E000000000054FEFE019D9D00383800000003434300C0C000
        BDBD00A1A106454500000008494900D4D4001010000003030358FEFE00030300
        202000C0C000C0C04CFEFE00DADA00DCDC00C0C0006D6D00030300C6C6001212
        000015151576FEFE219B9B12DDDD00070700000028FEFE00C0C0000404000000
        23DADA001F1F00BFBF001111000010101058FEFE54FEFE46FEFE001E1E010707
        00DCDC00D6D600171700090910D6D600DCDC00CFCF001111000000000064DBDB
        7CFEFE65FEFE73FEFE73FEFE60FEFE38FDFD2AFAFA17EDED28EAEA00DCDC00CA
        CA000F0F00000000000000000000000000001010100000000000000000000000
        00006F6F38FDFD80FEFE24B9B9000E0E0000FFFFFF00000000000000B23B008C
        440000002525FF1818F20E0EB0000000006F6F00B1B1004E4E0009090000FFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      DisabledImage.Data = {
        F6040000424DF60400000000000036040000280000000E0000000C0000000100
        080000000000C0000000120B0000120B00000001000000000000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
        2100222222002323230024242400252525002626260027272700282828002929
        29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
        3100323232003333330034343400353535003636360037373700383838003939
        39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
        C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCFCF00D0D0D000D1D1
        D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7D700D8D8D800D9D9
        D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDFDF00E0E0E000E1E1
        E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7E700E8E8E800E9E9
        E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEFEF00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7F700F8F8F800F9F9
        F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF00000000000000
        0000000000000000000000DEC6C6C6C4BCBCB5A69F967408000000E7C6C6C6C6
        D5DDE2DEDED4B909000000EBC6924C1E000D002358AFBD0C000000ED8D32003C
        ACAA903E0042BE0E000003ED021CACACECC4C6AC6202B210000015F08EC80600
        E8AC0300C71BAB0F000010EDEDEB1B06C6C01408C2C6BA0F000000CFF1EEF0F0
        EEE9E5D7D6C6B50D000000000000100000000063E9F1AA0C0000FF00007C6800
        66593E00639F46080000FFFF0000000000000000000000000000}
      TransparentColor = clWhite
      Transparent = False
      ShowHint = True
      OnClick = bt_helpClick
    end
  end
  object XPManifest1: TXPManifest
    Left = 232
    Top = 126
  end
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf)|*.jpg;*.jpeg;*' +
      '.bmp;*.ico,*.swf|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|' +
      '*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Flash (*.swf)|' +
      '*.swf'
    Title = 'Importar imagem'
    Left = 110
    Top = 125
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 202
    Top = 126
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 172
    Top = 126
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf)|*.jpg;*.jpeg;*.bmp;*' +
      '.swf|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|*.jpeg|Bitma' +
      'ps (*.bmp)|*.bmp|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 142
    Top = 125
  end
  object PopupMenu_editor: TPopupMenu
    Images = ToolbarImages
    OwnerDraw = True
    Left = 176
    Top = 156
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
      OnClick = Importar1Click
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
    Left = 144
    Top = 156
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
    Left = 112
    Top = 156
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.*]|*.*|Rich Text [*.rtf]|*.rtf|Arquivos Tex' +
      'to [*.txt]|*.txt'
    Title = 'Importar arquivo'
    Left = 208
    Top = 157
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 254
    Top = 168
  end
end
