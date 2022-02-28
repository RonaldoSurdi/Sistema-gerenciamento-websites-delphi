object mdl_movtub: Tmdl_movtub
  Left = 552
  Top = 277
  Width = 840
  Height = 500
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
    Width = 824
    Height = 443
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
      Width = 816
      Height = 435
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Lista de registros'
        object Paneltop: TPanel
          Left = 0
          Top = 0
          Width = 808
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
        object PageControlab: TPageControl
          Left = 0
          Top = 22
          Width = 808
          Height = 383
          ActivePage = TabSheet_grp
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 1
          OnChange = PageControlabChange
          object TabSheet_grp: TTabSheet
            Caption = 'Categorias'
            object Splitter1: TSplitter
              Left = 237
              Top = 0
              Height = 353
              OnMoved = Splitter1Moved
            end
            object Panel2: TPanel
              Left = 240
              Top = 0
              Width = 560
              Height = 353
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 558
                Height = 324
                Align = alClient
                BevelOuter = bvNone
                Color = 16119285
                TabOrder = 0
                object Panelgrp: TPanel
                  Left = 0
                  Top = 0
                  Width = 558
                  Height = 324
                  Align = alClient
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  Color = 16119285
                  TabOrder = 0
                  object Splitter4: TSplitter
                    Left = 2
                    Top = 126
                    Width = 554
                    Height = 3
                    Cursor = crVSplit
                    Align = alTop
                  end
                  object GroupBox9: TGroupBox
                    Left = 2
                    Top = 129
                    Width = 554
                    Height = 193
                    Align = alClient
                    Caption = 'Detalhes:'
                    TabOrder = 0
                    object re_editor1: TRxRichEdit
                      Left = 2
                      Top = 14
                      Width = 550
                      Height = 177
                      Align = alClient
                      Lines.Strings = (
                        'accessing...')
                      PopupMenu = PopupMenu_editor
                      TabOrder = 0
                      OnKeyDown = re_editorKeyDown
                      OnSelectionChange = SelectionChange
                    end
                  end
                  object Panel21: TPanel
                    Left = 2
                    Top = 2
                    Width = 554
                    Height = 124
                    Align = alTop
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    object Panel19: TPanel
                      Left = 0
                      Top = 0
                      Width = 554
                      Height = 124
                      Align = alClient
                      BevelOuter = bvNone
                      ParentColor = True
                      TabOrder = 0
                      object Label3: TLabel
                        Left = 20
                        Top = 37
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
                      object ab_titulo: TEdit
                        Left = 76
                        Top = 35
                        Width = 461
                        Height = 20
                        TabOrder = 0
                        OnKeyDown = EVsaveKeyDown
                      end
                      object ab_default: TCheckBox
                        Left = 474
                        Top = 7
                        Width = 71
                        Height = 18
                        Hint = 'Publicar '#225'lbum na galeria de fotos'
                        Caption = 'Publicar'
                        Checked = True
                        ParentShowHint = False
                        ShowHint = True
                        State = cbChecked
                        TabOrder = 1
                      end
                      object CoolBar2: TCoolBar
                        Left = 0
                        Top = 69
                        Width = 554
                        Height = 55
                        Align = alBottom
                        AutoSize = True
                        Bands = <
                          item
                            Control = ToolBar12
                            ImageIndex = -1
                            MinHeight = 26
                            Width = 243
                          end
                          item
                            Break = False
                            Control = ToolBar16
                            ImageIndex = -1
                            Width = 309
                          end
                          item
                            Control = ToolBar13
                            ImageIndex = -1
                            Width = 86
                          end
                          item
                            Break = False
                            Control = ToolBar14
                            ImageIndex = -1
                            Width = 133
                          end
                          item
                            Break = False
                            Control = ToolBar15
                            ImageIndex = -1
                            Width = 331
                          end>
                        EdgeBorders = [ebTop]
                        object ToolBar12: TToolBar
                          Left = 9
                          Top = 0
                          Width = 230
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
                            Width = 161
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
                            Left = 165
                            Top = 0
                            Width = 8
                            ImageIndex = 8
                            Style = tbsSeparator
                          end
                          object FontSize1: TEdit
                            Left = 173
                            Top = 0
                            Width = 36
                            Height = 22
                            Hint = 'Selecione o tamanho da fonte'
                            TabOrder = 1
                            Text = '12'
                            OnChange = FontSizeChange
                          end
                          object UpDown2: TUpDown
                            Left = 209
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
                          Left = 9
                          Top = 28
                          Width = 73
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
                          Left = 97
                          Top = 28
                          Width = 120
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
                          object BulletsButton1: TToolButton
                            Left = 96
                            Top = 0
                            Caption = 'Marcador'
                            ImageIndex = 21
                            MenuItem = Marcador1
                            Style = tbsCheck
                          end
                        end
                        object ToolBar15: TToolBar
                          Left = 232
                          Top = 28
                          Width = 318
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
                          Left = 254
                          Top = 0
                          Width = 296
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
                    end
                  end
                end
              end
              object Panel3: TPanel
                Left = 1
                Top = 325
                Width = 558
                Height = 27
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 1
                object ToolBar2: TToolBar
                  Left = 328
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
                    Hint = 'Adicionar nova categoria'
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
                    Hint = 'Excluir categoria selecionada'
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
                object bt_invertmv1: TCheckBox
                  Left = 8
                  Top = 5
                  Width = 153
                  Height = 19
                  Caption = 'Inverter cores'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  OnClick = bt_invertmv1Click
                end
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 237
              Height = 353
              Align = alLeft
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Lb_countreg1: TLabel
                Left = 0
                Top = 341
                Width = 237
                Height = 12
                Align = alBottom
                Alignment = taRightJustify
                Caption = '0'
                Transparent = True
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 237
                Height = 341
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
          end
          object TabSheet_itens: TTabSheet
            Caption = 'Links V'#237'deos'
            ImageIndex = 1
            object Splitter2: TSplitter
              Left = 236
              Top = 0
              Height = 353
            end
            object Panel6: TPanel
              Left = 239
              Top = 0
              Width = 561
              Height = 353
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Panel7: TPanel
                Left = 1
                Top = 325
                Width = 559
                Height = 27
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 0
                object ToolBar4: TToolBar
                  Left = 333
                  Top = 2
                  Width = 224
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
                  object bt_new2: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 64
                    Height = 22
                    Hint = 'Adicionar novo link'
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
                    Left = 64
                    Top = 2
                    Width = 82
                    Height = 22
                    Hint = 'Excluir link selecionada'
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
                    Left = 146
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
                Width = 559
                Height = 324
                Align = alClient
                BevelOuter = bvNone
                Color = 16119285
                TabOrder = 1
                object Panelitens: TPanel
                  Left = 0
                  Top = 0
                  Width = 559
                  Height = 324
                  Align = alClient
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  Color = 16119285
                  TabOrder = 0
                  object Splitter3: TSplitter
                    Left = 2
                    Top = 157
                    Width = 555
                    Height = 3
                    Cursor = crVSplit
                    Align = alTop
                  end
                  object GroupBox1: TGroupBox
                    Left = 2
                    Top = 160
                    Width = 555
                    Height = 162
                    Align = alClient
                    Caption = 'Detalhes:'
                    TabOrder = 0
                    object re_editor2: TRxRichEdit
                      Left = 2
                      Top = 14
                      Width = 551
                      Height = 146
                      Align = alClient
                      Lines.Strings = (
                        'accessing...')
                      PopupMenu = PopupMenu_editor
                      TabOrder = 0
                      OnKeyDown = re_editorKeyDown
                      OnSelectionChange = SelectionChange
                    end
                  end
                  object Panel8: TPanel
                    Left = 2
                    Top = 2
                    Width = 555
                    Height = 155
                    Align = alTop
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    object Panel18: TPanel
                      Left = 0
                      Top = 0
                      Width = 555
                      Height = 155
                      Align = alClient
                      BevelOuter = bvNone
                      ParentColor = True
                      TabOrder = 0
                      object Label8: TLabel
                        Left = 11
                        Top = 45
                        Width = 55
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Descri'#231#227'o:'
                      end
                      object Label6: TLabel
                        Left = 17
                        Top = 12
                        Width = 39
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'C'#243'digo:'
                      end
                      object ms_cod: TLabel
                        Left = 59
                        Top = 12
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
                        Left = 18
                        Top = 68
                        Width = 49
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Link URL:'
                      end
                      object Label10: TLabel
                        Left = 72
                        Top = 86
                        Width = 242
                        Height = 12
                        Caption = 'URL: http://www.youtube.com/watch?v=XXXXXX'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clMaroon
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        ParentFont = False
                      end
                      object ms_titulo: TEdit
                        Left = 70
                        Top = 43
                        Width = 480
                        Height = 20
                        TabOrder = 0
                        OnKeyDown = EVsave2KeyDown
                      end
                      object CoolBar1: TCoolBar
                        Left = 0
                        Top = 101
                        Width = 555
                        Height = 54
                        Align = alBottom
                        AutoSize = True
                        Bands = <
                          item
                            Control = ToolBar6
                            ImageIndex = -1
                            Width = 242
                          end
                          item
                            Break = False
                            Control = ToolBar11
                            ImageIndex = -1
                            Width = 311
                          end
                          item
                            Control = ToolBar8
                            ImageIndex = -1
                            Width = 86
                          end
                          item
                            Break = False
                            Control = ToolBar9
                            ImageIndex = -1
                            Width = 132
                          end
                          item
                            Break = False
                            Control = ToolBar10
                            ImageIndex = -1
                            Width = 333
                          end>
                        EdgeBorders = [ebTop]
                        object ToolBar6: TToolBar
                          Left = 9
                          Top = 0
                          Width = 229
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
                          object FontName2: TComboBox
                            Left = 4
                            Top = 1
                            Width = 157
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
                          object ToolButton1: TToolButton
                            Left = 161
                            Top = 0
                            Width = 8
                            ImageIndex = 8
                            Style = tbsSeparator
                          end
                          object FontSize2: TEdit
                            Left = 169
                            Top = 0
                            Width = 38
                            Height = 22
                            Hint = 'Selecione o tamanho da fonte'
                            TabOrder = 1
                            Text = '12'
                            OnChange = FontSizeChange
                          end
                          object UpDown1: TUpDown
                            Left = 207
                            Top = 0
                            Width = 16
                            Height = 22
                            Associate = FontSize2
                            Max = 150
                            Increment = 5
                            Position = 12
                            TabOrder = 2
                          end
                        end
                        object ToolBar8: TToolBar
                          Left = 9
                          Top = 27
                          Width = 73
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
                          object BoldButton2: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'Negrito'
                            ImageIndex = 13
                            MenuItem = Negrito1
                            Style = tbsCheck
                          end
                          object ItalicButton2: TToolButton
                            Left = 27
                            Top = 0
                            Caption = 'It'#225'lico'
                            ImageIndex = 15
                            MenuItem = Italico1
                            Style = tbsCheck
                          end
                          object UnderlineButton2: TToolButton
                            Left = 50
                            Top = 0
                            Caption = 'Sublinhado'
                            ImageIndex = 16
                            MenuItem = Sublinhado1
                            Style = tbsCheck
                          end
                        end
                        object ToolBar9: TToolBar
                          Left = 97
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
                          object LeftAlign2: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'esquerdo'
                            Grouped = True
                            ImageIndex = 17
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object CenterAlign2: TToolButton
                            Tag = 2
                            Left = 27
                            Top = 0
                            Caption = 'centro'
                            Grouped = True
                            ImageIndex = 18
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object RightAlign2: TToolButton
                            Tag = 1
                            Left = 50
                            Top = 0
                            Caption = 'direita'
                            Grouped = True
                            ImageIndex = 19
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object JustifyAlign2: TToolButton
                            Tag = 3
                            Left = 73
                            Top = 0
                            Caption = 'justificado'
                            Grouped = True
                            ImageIndex = 20
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object BulletsButton2: TToolButton
                            Left = 96
                            Top = 0
                            Caption = 'Marcador'
                            ImageIndex = 21
                            MenuItem = Marcador1
                            Style = tbsCheck
                          end
                        end
                        object ToolBar10: TToolBar
                          Left = 231
                          Top = 27
                          Width = 320
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
                          object ToolButton10: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'Recortar'
                            ImageIndex = 6
                            MenuItem = Recortar1
                          end
                          object ToolButton11: TToolButton
                            Left = 27
                            Top = 0
                            Caption = 'Copiar'
                            ImageIndex = 7
                            MenuItem = Copiar1
                          end
                          object ToolButton12: TToolButton
                            Left = 50
                            Top = 0
                            Caption = 'Colar'
                            ImageIndex = 8
                            MenuItem = Colar1
                          end
                          object ToolButton13: TToolButton
                            Left = 73
                            Top = 0
                            Caption = 'Importar'
                            ImageIndex = 27
                            MenuItem = Importar1
                          end
                        end
                        object ToolBar11: TToolBar
                          Left = 253
                          Top = 0
                          Width = 298
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
                          object fontColor2: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'Cor'
                            ImageIndex = 10
                            MenuItem = Cor1
                          end
                          object eddesfazer2: TToolButton
                            Left = 27
                            Top = 0
                            Caption = 'Desfazer'
                            ImageIndex = 4
                            MenuItem = Desfazer1
                          end
                          object ToolButton3: TToolButton
                            Left = 50
                            Top = 0
                            Caption = 'Cor de fundo'
                            ImageIndex = 12
                            MenuItem = Cordefundo1
                          end
                        end
                      end
                      object ab_url: TEdit
                        Left = 70
                        Top = 66
                        Width = 480
                        Height = 20
                        TabOrder = 2
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
              Width = 236
              Height = 353
              Align = alLeft
              BevelOuter = bvNone
              ParentBackground = True
              ParentColor = True
              TabOrder = 1
              object Lb_countreg2: TLabel
                Left = 0
                Top = 341
                Width = 236
                Height = 12
                Align = alBottom
                Alignment = taRightJustify
                Caption = '0'
                Transparent = True
              end
              object DBGrid2: TDBGrid
                Left = 0
                Top = 27
                Width = 236
                Height = 314
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
              object ToolBar_grp: TToolBar
                Left = 0
                Top = 0
                Width = 236
                Height = 27
                ButtonHeight = 20
                Caption = 'ToolBar_grp'
                TabOrder = 1
                OnResize = ToolBar_grpResize
                object Label4: TLabel
                  Left = 0
                  Top = 2
                  Width = 46
                  Height = 20
                  Align = alRight
                  AutoSize = False
                  Caption = '  Modelo:'
                  Layout = tlCenter
                end
                object cb_group: TComboBox
                  Left = 46
                  Top = 2
                  Width = 186
                  Height = 20
                  ItemHeight = 12
                  TabOrder = 0
                  OnChange = cb_groupChange
                end
              end
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
          Width = 808
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
          Top = 273
          Width = 808
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
            Width = 447
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
          Width = 808
          Height = 230
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
            Width = 575
            Height = 214
            Cursor = crHandPoint
            Hint = 'Icone do '#225'lbum'
            TabStop = False
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ControlData = {
              67556655000900006E3B00001E16000008000200000000000800000000000800
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
            Left = 577
            Top = 14
            Width = 229
            Height = 214
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
              Top = 190
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
          Top = 381
          Width = 808
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 3
          object ToolBar5: TToolBar
            Left = 646
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
    Top = 443
    Width = 824
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
    Top = 246
  end
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf;*.flv;*.png)|*.jpg;*.' +
      'jpeg;*.bmp;*.swf;*.flv;*.png|Imagem JPEG (*.jpg)|*.jpg|Imagem JP' +
      'EG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Flash (*.swf)|*.swf|Fla' +
      'sh Video (*.flv)|*.flv|PNG|*.png'
    Title = 'Importar imagem'
    Left = 22
    Top = 245
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 82
    Top = 246
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 52
    Top = 246
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf;*.flv;*.png)|*.jpg;*.' +
      'jpeg;*.bmp;*.swf;*.flv;*.png|Imagem JPEG (*.jpg)|*.jpg|Imagem JP' +
      'EG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Flash (*.swf)|*.swf|Fla' +
      'sh Video (*.flv)|*.flv|PNG|*.png'
    Title = 'Importar imagem'
    Left = 174
    Top = 245
  end
  object PopupMenu2: TPopupMenu
    Left = 142
    Top = 247
    object MenuItem1: TMenuItem
      Caption = 'Excluir todos os registros'
      OnClick = MenuItem1Click
    end
  end
  object ExportarImgDialog: TSavePictureDialog
    Filter = 
      'JPEG arquivo de imagem (*.jpg)|*.jpg|Flash (*.swf)|*.swf|Macrome' +
      'dia Flash Video (*.flv)|*.flv|PNG|*.png'
    Left = 152
    Top = 276
  end
  object ColorDialog1: TColorDialog
    Left = 24
    Top = 276
  end
  object ToolbarImages: TImageList
    Left = 56
    Top = 276
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
    Left = 88
    Top = 276
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
    Left = 120
    Top = 277
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 189
    Top = 280
  end
end
