object adm_st: Tadm_st
  Left = 537
  Top = 283
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
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 624
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Label8'
  end
  object PageControl_geral: TPageControl
    Left = 0
    Top = 0
    Width = 727
    Height = 369
    ActivePage = TabSheet_processos
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControl_geralChange
    object TabSheet_solicitacoes: TTabSheet
      Caption = 'Solicita'#231#227'o'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 719
        Height = 338
        Align = alClient
        BevelOuter = bvNone
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 380
          Height = 338
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 380
          Height = 338
          Align = alClient
          Caption = 'Lista de registros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object db_solicitacoes: TDBGrid
            Left = 2
            Top = 131
            Width = 376
            Height = 176
            Align = alClient
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
            OnCellClick = db_solicitacoesCellClick
            OnDrawColumnCell = db_solicitacoesDrawColumnCell
            OnKeyDown = db_solicitacoesKeyDown
            OnKeyUp = db_solicitacoesKeyUp
            OnTitleClick = db_solicitacoesTitleClick
          end
          object Panel_search: TPanel
            Left = 2
            Top = 14
            Width = 376
            Height = 117
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 1
            Visible = False
            object Label3: TLabel
              Left = 6
              Top = 34
              Width = 49
              Height = 12
              Caption = 'Localizar:'
            end
            object Label4: TLabel
              Left = 221
              Top = 33
              Width = 39
              Height = 12
              Caption = 'Campo:'
            end
            object bt_search: TSpeedButton
              Left = 352
              Top = 44
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
            object Label7: TLabel
              Left = 14
              Top = 97
              Width = 58
              Height = 13
              AutoSize = False
              Caption = 'Prioridade:'
            end
            object Bevel1: TBevel
              Left = 8
              Top = 85
              Width = 345
              Height = 6
              Shape = bsBottomLine
            end
            object Label18: TLabel
              Left = 71
              Top = -2
              Width = 98
              Height = 12
              Caption = 'Selecione o usu'#225'rio'
            end
            object bt_detail5: TSpeedButton
              Left = 352
              Top = 11
              Width = 24
              Height = 22
              Hint = 'Exibir mais detalhes'
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_detail5Click
            end
            object Label19: TLabel
              Left = 14
              Top = 70
              Width = 70
              Height = 13
              AutoSize = False
              Caption = 'Solicita'#231#245'es:'
            end
            object Label20: TLabel
              Left = 192
              Top = 97
              Width = 67
              Height = 13
              AutoSize = False
              Caption = 'Lista p'#250'blica:'
            end
            object autofiltro_button: TSpeedButton
              Left = 353
              Top = 93
              Width = 24
              Height = 22
              Hint = 'Executar filtro'
              Flat = True
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
              ParentShowHint = False
              ShowHint = True
              OnClick = autofiltro_buttonClick
            end
            object ComboBox_search: TComboBox
              Left = 219
              Top = 46
              Width = 132
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 3
              OnChange = ComboBox_searchChange
            end
            object Edit_search: TComboBox
              Left = 3
              Top = 46
              Width = 214
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 2
              OnChange = Edit_searchChange
              OnKeyPress = Edit_searchKeyPress
            end
            object CheckBox_ativas: TCheckBox
              Left = 97
              Top = 70
              Width = 55
              Height = 16
              Caption = 'Ativas'
              Checked = True
              State = cbChecked
              TabOrder = 4
              OnClick = CheckBox_ativasClick
            end
            object CheckBox_concluidas: TCheckBox
              Left = 172
              Top = 70
              Width = 78
              Height = 16
              Caption = 'Conclu'#237'das'
              TabOrder = 5
              OnClick = CheckBox_concluidasClick
            end
            object Edresp2: TComboBox
              Left = 69
              Top = 13
              Width = 282
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 1
              OnChange = Edresp2Change
              OnKeyPress = Edresp2KeyPress
            end
            object Edresp1: TLabeledEdit
              Left = 4
              Top = 13
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 10
              TabOrder = 0
              OnChange = Edresp1Change
              OnKeyPress = NumKeyPress
            end
            object ComboBoxEx2: TComboBoxEx
              Left = 72
              Top = 94
              Width = 110
              Height = 21
              ItemsEx = <
                item
                  Caption = 'Todos'
                  ImageIndex = 3
                  Indent = 0
                  OverlayImageIndex = 3
                  SelectedImageIndex = 3
                end
                item
                  Caption = 'Alta'
                  ImageIndex = 0
                  Indent = 1
                  OverlayImageIndex = 0
                  SelectedImageIndex = 0
                end
                item
                  Caption = 'M'#233'dia'
                  ImageIndex = 1
                  Indent = 2
                  OverlayImageIndex = 1
                  SelectedImageIndex = 1
                end
                item
                  Caption = 'Baixa'
                  ImageIndex = 2
                  Indent = 3
                  OverlayImageIndex = 2
                  SelectedImageIndex = 2
                end>
              Style = csExDropDownList
              ItemHeight = 16
              TabOrder = 6
              OnChange = ComboBoxEx2Change
              Images = ImageList_prioridade
              DropDownCount = 8
            end
            object ComboBox_listapublica: TComboBox
              Left = 263
              Top = 94
              Width = 86
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              MaxLength = 255
              TabOrder = 7
              Text = 'Todas'
              OnChange = ComboBox_listapublicaChange
              Items.Strings = (
                'Todas'
                'Sim'
                'N'#227'o')
            end
          end
          object ToolBar3: TToolBar
            Left = 2
            Top = 307
            Width = 376
            Height = 29
            Align = alBottom
            Caption = 'ToolBar1'
            TabOrder = 2
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
            object Lb_countreg: TLabel
              Left = 106
              Top = 2
              Width = 200
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
            object SpeedButton1: TSpeedButton
              Left = 306
              Top = 2
              Width = 77
              Height = 22
              Hint = 'Exibir janela de filtros'
              Caption = 'Filtrar'
              Flat = True
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
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
          end
          object autofiltro_checkbox: TCheckBox
            Left = 312
            Top = 0
            Width = 67
            Height = 16
            Caption = 'auto filtro'
            Checked = True
            State = cbChecked
            TabOrder = 3
            Visible = False
          end
        end
        object GroupBox1: TGroupBox
          Left = 380
          Top = 0
          Width = 339
          Height = 338
          Align = alRight
          Caption = 'Ficha:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object lb_restrict: TLabel
            Left = 310
            Top = -1
            Width = 3
            Height = 12
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object ScrollBox1: TScrollBox
            Left = 2
            Top = 14
            Width = 335
            Height = 293
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 317
              Height = 397
              BevelOuter = bvNone
              Color = 16119285
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label15: TLabel
                Left = 76
                Top = 257
                Width = 107
                Height = 12
                Caption = 'Selecione a atividade'
              end
              object lbcp_dtcad: TLabel
                Left = 152
                Top = 21
                Width = 161
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                Layout = tlCenter
              end
              object Label12: TLabel
                Left = 225
                Top = 6
                Width = 86
                Height = 12
                Alignment = taRightJustify
                Caption = 'Data de cadastro'
              end
              object Label11: TLabel
                Left = 10
                Top = 328
                Width = 84
                Height = 12
                Caption = 'Data de entrega:'
              end
              object Label13: TLabel
                Left = 214
                Top = 328
                Width = 55
                Height = 12
                Caption = 'Prioridade:'
              end
              object Label14: TLabel
                Left = 76
                Top = 292
                Width = 110
                Height = 12
                Caption = 'Selecione o aplicativo'
              end
              object bt_detail4: TSpeedButton
                Left = 291
                Top = 304
                Width = 24
                Height = 22
                Hint = 'Exibir mais detalhes'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                  A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                  C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                  EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                  8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                  798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                  A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                  EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                  FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                  00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                  BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                  E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                  E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                  5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                  965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                  F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                  9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                  36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_detail4Click
              end
              object bt_detail3: TSpeedButton
                Left = 291
                Top = 269
                Width = 24
                Height = 22
                Hint = 'Exibir mais detalhes'
                Flat = True
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                  A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                  C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                  EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                  8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                  798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                  A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                  EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                  FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                  00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                  BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                  E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                  E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                  5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                  965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                  F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                  9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                  36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_detail3Click
              end
              object lbcp8: TComboBox
                Left = 74
                Top = 271
                Width = 215
                Height = 20
                ItemHeight = 0
                MaxLength = 255
                TabOrder = 5
                OnChange = lbcp8Change
              end
              object lbcp7: TLabeledEdit
                Left = 9
                Top = 271
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 4
                OnChange = lbcp7Change
                OnKeyPress = NumKeyPress
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
                Top = 59
                Width = 304
                Height = 20
                EditLabel.Width = 55
                EditLabel.Height = 12
                EditLabel.Caption = 'Descri'#231#227'o:'
                MaxLength = 255
                TabOrder = 1
              end
              object cbcp1: TCheckBox
                Left = 14
                Top = 373
                Width = 232
                Height = 17
                Caption = 'Publicar esta solicita'#231#227'o na Lista p'#250'blica.'
                TabOrder = 10
              end
              object lbcp11: TDateTimePicker
                Left = 9
                Top = 342
                Width = 197
                Height = 21
                Date = 38188.985605150460000000
                Time = 38188.985605150460000000
                TabOrder = 8
              end
              object lbcp12: TComboBoxEx
                Left = 211
                Top = 342
                Width = 102
                Height = 21
                ItemsEx = <
                  item
                    Caption = 'Alta'
                    ImageIndex = 0
                    Indent = 0
                    OverlayImageIndex = 0
                    SelectedImageIndex = 0
                  end
                  item
                    Caption = 'M'#233'dia'
                    ImageIndex = 1
                    Indent = 1
                    OverlayImageIndex = 1
                    SelectedImageIndex = 1
                  end
                  item
                    Caption = 'Baixa'
                    ImageIndex = 2
                    Indent = 2
                    OverlayImageIndex = 2
                    SelectedImageIndex = 2
                  end>
                Style = csExDropDownList
                ItemHeight = 16
                TabOrder = 9
                Images = ImageList_prioridade
                DropDownCount = 8
              end
              object lbcp9: TLabeledEdit
                Left = 9
                Top = 306
                Width = 65
                Height = 20
                EditLabel.Width = 35
                EditLabel.Height = 12
                EditLabel.Caption = 'C'#243'digo'
                MaxLength = 11
                TabOrder = 6
                OnChange = lbcp9Change
                OnKeyPress = NumKeyPress
              end
              object lbcp10: TComboBox
                Left = 74
                Top = 306
                Width = 215
                Height = 20
                ItemHeight = 0
                MaxLength = 255
                TabOrder = 7
                OnChange = lbcp10Change
              end
              object GroupBox7: TGroupBox
                Left = 0
                Top = 80
                Width = 317
                Height = 76
                Caption = 'Selecione o usu'#225'rio respons'#225'vel pela solicita'#231#227'o:'
                TabOrder = 2
                object bt_detail6: TSpeedButton
                  Left = 290
                  Top = 47
                  Width = 24
                  Height = 22
                  Hint = 'Exibir mais detalhes'
                  Flat = True
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                    A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                    C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                    EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                    8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                    798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                    A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                    EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                    FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                    00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                    BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                    E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                    E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                    5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                    965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                    F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                    9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                    36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_detail6Click
                end
                object Label2: TLabel
                  Left = 76
                  Top = 35
                  Width = 98
                  Height = 12
                  Caption = 'Selecione o usu'#225'rio'
                end
                object lb_website: TLabel
                  Left = 9
                  Top = 17
                  Width = 3
                  Height = 12
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 12615680
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object lbcp3: TLabeledEdit
                  Left = 9
                  Top = 49
                  Width = 65
                  Height = 20
                  EditLabel.Width = 35
                  EditLabel.Height = 12
                  EditLabel.Caption = 'C'#243'digo'
                  MaxLength = 11
                  TabOrder = 0
                  OnChange = lbcp3Change
                  OnKeyPress = NumKeyPress
                end
                object lbcp4: TComboBox
                  Left = 74
                  Top = 49
                  Width = 215
                  Height = 20
                  ItemHeight = 0
                  MaxLength = 255
                  TabOrder = 1
                  OnChange = lbcp4Change
                end
              end
              object GroupBox9: TGroupBox
                Left = 0
                Top = 160
                Width = 317
                Height = 93
                Caption = 'Selecione o Administrador respons'#225'vel:'
                TabOrder = 3
                object Label27: TLabel
                  Left = 76
                  Top = 15
                  Width = 87
                  Height = 12
                  Caption = 'Selecione o setor'
                end
                object Label16: TLabel
                  Left = 76
                  Top = 51
                  Width = 98
                  Height = 12
                  Caption = 'Selecione o usu'#225'rio'
                end
                object bt_detail2: TSpeedButton
                  Left = 290
                  Top = 63
                  Width = 24
                  Height = 22
                  Hint = 'Exibir mais detalhes'
                  Flat = True
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                    A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                    C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                    EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                    8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                    798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                    A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                    EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                    FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                    00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                    BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                    E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                    E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                    5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                    965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                    F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                    9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                    36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_detail2Click
                end
                object bt_detail7: TSpeedButton
                  Left = 290
                  Top = 27
                  Width = 24
                  Height = 22
                  Hint = 'Exibir mais detalhes'
                  Flat = True
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                    A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                    C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                    EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                    8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                    798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                    A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                    EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                    FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                    00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                    BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                    E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                    E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                    5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                    965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                    F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                    9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                    36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_detail7Click
                end
                object lbcp_ax3: TLabeledEdit
                  Left = 9
                  Top = 29
                  Width = 65
                  Height = 20
                  EditLabel.Width = 35
                  EditLabel.Height = 12
                  EditLabel.Caption = 'C'#243'digo'
                  MaxLength = 11
                  TabOrder = 0
                  OnChange = lbcp_ax3Change
                  OnKeyPress = NumKeyPress
                end
                object lbcp5: TLabeledEdit
                  Left = 9
                  Top = 65
                  Width = 65
                  Height = 20
                  EditLabel.Width = 35
                  EditLabel.Height = 12
                  EditLabel.Caption = 'C'#243'digo'
                  MaxLength = 11
                  TabOrder = 2
                  OnChange = lbcp5Change
                  OnKeyPress = NumKeyPress
                end
                object lbcp_ax4: TComboBox
                  Left = 74
                  Top = 29
                  Width = 215
                  Height = 20
                  ItemHeight = 0
                  MaxLength = 255
                  TabOrder = 1
                  OnChange = lbcp_ax4Change
                end
                object lbcp6: TComboBox
                  Left = 74
                  Top = 65
                  Width = 215
                  Height = 20
                  ItemHeight = 0
                  MaxLength = 255
                  TabOrder = 3
                  OnChange = lbcp6Change
                end
              end
            end
          end
          object ToolBar4: TToolBar
            Left = 2
            Top = 307
            Width = 335
            Height = 29
            Align = alBottom
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
              OnClick = bt_newClick
            end
            object bt_del: TSpeedButton
              Left = 138
              Top = 2
              Width = 90
              Height = 22
              Hint = 'Cancelar solicita'#231#227'o selecionada'
              Caption = 'Cancelar'
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
              OnClick = bt_saveClick
            end
          end
        end
      end
    end
    object TabSheet_processos: TTabSheet
      Caption = 'Lista de processos'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 374
        Height = 338
        Align = alClient
        BevelOuter = bvNone
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object PageControl3: TPageControl
          Left = 0
          Top = 0
          Width = 374
          Height = 338
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 374
          Height = 338
          Align = alClient
          Caption = 'Lista de registros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object db_processos: TDBGrid
            Left = 2
            Top = 68
            Width = 370
            Height = 239
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
            OnCellClick = db_processosCellClick
            OnKeyDown = db_processosKeyDown
            OnKeyUp = db_processosKeyUp
            OnTitleClick = db_processosTitleClick
          end
          object Panel3: TPanel
            Left = 2
            Top = 14
            Width = 370
            Height = 54
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 1
            object Label1: TLabel
              Left = 6
              Top = 0
              Width = 49
              Height = 12
              Caption = 'Localizar:'
            end
            object Label6: TLabel
              Left = 221
              Top = -1
              Width = 39
              Height = 12
              Caption = 'Campo:'
            end
            object bt_search2: TSpeedButton
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
              OnClick = bt_search2Click
            end
            object Label10: TLabel
              Left = 6
              Top = 35
              Width = 70
              Height = 13
              AutoSize = False
              Caption = 'Processos:'
            end
            object ComboBox_search2: TComboBox
              Left = 219
              Top = 12
              Width = 132
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 0
              OnChange = ComboBox_search2Change
            end
            object Edit_search2: TComboBox
              Left = 3
              Top = 12
              Width = 214
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 1
              OnChange = Edit_search2Change
            end
            object chkproc1: TCheckBox
              Left = 89
              Top = 35
              Width = 55
              Height = 16
              Caption = 'Ativos'
              Checked = True
              State = cbChecked
              TabOrder = 2
              OnClick = chkproc1Click
            end
            object chkproc2: TCheckBox
              Left = 164
              Top = 35
              Width = 78
              Height = 16
              Caption = 'Conclu'#237'dos'
              TabOrder = 3
              OnClick = chkproc2Click
            end
          end
          object ToolBar2: TToolBar
            Left = 2
            Top = 307
            Width = 370
            Height = 29
            Align = alBottom
            Caption = 'ToolBar1'
            TabOrder = 2
            object Label9: TLabel
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
        end
      end
      object PageControl_processos: TPageControl
        Left = 374
        Top = 0
        Width = 345
        Height = 338
        ActivePage = TabSheet_descricao
        Align = alRight
        Style = tsFlatButtons
        TabOrder = 1
        object TabSheet_ficha: TTabSheet
          Caption = 'Ficha'
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 337
            Height = 307
            Align = alClient
            Caption = 'Ficha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lb_restrict2: TLabel
              Left = 310
              Top = -1
              Width = 3
              Height = 12
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object ScrollBox2: TScrollBox
              Left = 2
              Top = 14
              Width = 333
              Height = 262
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              TabOrder = 0
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 316
                Height = 244
                BevelOuter = bvNone
                Color = 16119285
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object lbcb_dtcad: TLabel
                  Left = 152
                  Top = 21
                  Width = 161
                  Height = 17
                  Alignment = taRightJustify
                  AutoSize = False
                  Layout = tlCenter
                end
                object Label26: TLabel
                  Left = 225
                  Top = 6
                  Width = 86
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Data de cadastro'
                end
                object Label25: TLabel
                  Left = 76
                  Top = 46
                  Width = 107
                  Height = 12
                  Caption = 'Selecione a atividade'
                end
                object bt_detail12: TSpeedButton
                  Left = 291
                  Top = 58
                  Width = 24
                  Height = 22
                  Hint = 'Exibir mais detalhes'
                  Flat = True
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                    A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                    C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                    EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                    8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                    798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                    A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                    EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                    FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                    00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                    BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                    E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                    E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                    5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                    965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                    F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                    9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                    36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_detail12Click
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
                object GroupBox6: TGroupBox
                  Left = 0
                  Top = 106
                  Width = 314
                  Height = 65
                  Caption = 'Detalhes do usu'#225'rio respons'#225'vel pelo o website:'
                  TabOrder = 1
                  object re_usr: TRichEdit
                    Left = 7
                    Top = 14
                    Width = 303
                    Height = 46
                    TabStop = False
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Courier New'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    ReadOnly = True
                    ScrollBars = ssBoth
                    TabOrder = 0
                  end
                end
                object GroupBox10: TGroupBox
                  Left = 0
                  Top = 175
                  Width = 314
                  Height = 65
                  Caption = 'Detalhes do Administrador respons'#225'vel:'
                  TabOrder = 2
                  object re_resp: TRichEdit
                    Left = 7
                    Top = 14
                    Width = 303
                    Height = 46
                    TabStop = False
                    BevelInner = bvNone
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Courier New'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    ReadOnly = True
                    ScrollBars = ssBoth
                    TabOrder = 0
                  end
                end
                object cbcb2: TCheckBox
                  Left = 6
                  Top = 85
                  Width = 232
                  Height = 17
                  Caption = 'Restrito somente ao usu'#225'rio do processo.'
                  TabOrder = 3
                end
                object lbcb11: TLabeledEdit
                  Left = 9
                  Top = 60
                  Width = 65
                  Height = 20
                  EditLabel.Width = 35
                  EditLabel.Height = 12
                  EditLabel.Caption = 'C'#243'digo'
                  MaxLength = 11
                  TabOrder = 4
                  OnChange = lbcb11Change
                  OnKeyPress = NumKeyPress
                end
                object lbcb12: TComboBox
                  Left = 74
                  Top = 60
                  Width = 215
                  Height = 20
                  ItemHeight = 0
                  MaxLength = 255
                  TabOrder = 5
                  OnChange = lbcb12Change
                end
              end
            end
            object ToolBar1: TToolBar
              Left = 2
              Top = 276
              Width = 333
              Height = 29
              Align = alBottom
              Caption = 'ToolBar1'
              TabOrder = 1
              object SpeedButton2: TSpeedButton
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
                OnClick = SpeedButton2Click
              end
              object SpeedButton3: TSpeedButton
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
                OnClick = SpeedButton3Click
              end
              object SpeedButton4: TSpeedButton
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
                OnClick = SpeedButton4Click
              end
              object SpeedButton5: TSpeedButton
                Left = 138
                Top = 2
                Width = 90
                Height = 22
                Hint = 'Cancelar processo selecionado'
                Caption = 'Cancelar'
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
                OnClick = SpeedButton5Click
              end
              object SpeedButton6: TSpeedButton
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
                OnClick = SpeedButton6Click
              end
            end
          end
        end
        object TabSheet_descricao: TTabSheet
          Caption = 'Descri'#231#227'o'
          ImageIndex = 2
          object GroupBox11: TGroupBox
            Left = 0
            Top = 0
            Width = 337
            Height = 307
            Align = alClient
            Caption = 'Descri'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lbcb1_ax: TLabel
              Left = 322
              Top = -1
              Width = 3
              Height = 12
              Alignment = taRightJustify
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Panel5: TPanel
              Left = 2
              Top = 14
              Width = 333
              Height = 30
              Align = alTop
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 0
              object Label31: TLabel
                Left = 8
                Top = 7
                Width = 33
                Height = 12
                Caption = 'T'#237'tulo:'
              end
              object re_editor_title: TEdit
                Left = 45
                Top = 5
                Width = 279
                Height = 20
                TabOrder = 0
              end
            end
            object CoolBar1: TCoolBar
              Left = 2
              Top = 44
              Width = 333
              Height = 52
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar7
                  ImageIndex = -1
                  Width = 265
                end
                item
                  Break = False
                  Control = ToolBar5
                  ImageIndex = -1
                  Width = 66
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
                  Width = 111
                end>
              EdgeBorders = []
              object ToolBar7: TToolBar
                Left = 9
                Top = 0
                Width = 252
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
                  Width = 182
                  Height = 20
                  Hint = 'Selecione a fonte'
                  Ctl3D = False
                  DropDownCount = 10
                  ItemHeight = 12
                  ParentCtl3D = False
                  TabOrder = 0
                  OnChange = FontNameChange
                end
                object ToolButton7: TToolButton
                  Left = 186
                  Top = 0
                  Width = 8
                  ImageIndex = 8
                  Style = tbsSeparator
                end
                object FontSize: TEdit
                  Left = 194
                  Top = 0
                  Width = 40
                  Height = 22
                  Hint = 'Selecione o tamanho da fonte'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  Text = '8'
                  OnChange = FontSizeChange
                end
                object UpDown1: TUpDown
                  Left = 234
                  Top = 0
                  Width = 15
                  Height = 22
                  Associate = FontSize
                  Position = 8
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
              object ToolBar10: TToolBar
                Left = 231
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
                object ToolButton15: TToolButton
                  Left = 73
                  Top = 0
                  Caption = 'Desfazer'
                  ImageIndex = 4
                  MenuItem = Desfazer1
                end
              end
              object ToolBar5: TToolBar
                Left = 276
                Top = 0
                Width = 53
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
                object ToolButton8: TToolButton
                  Left = 4
                  Top = 0
                  Caption = 'Fonte'
                  ImageIndex = 9
                  MenuItem = Fonte1
                end
                object ToolButton10: TToolButton
                  Left = 27
                  Top = 0
                  Caption = 'Cor'
                  ImageIndex = 10
                  MenuItem = Cor1
                end
              end
            end
            object ToolBar11: TToolBar
              Left = 2
              Top = 276
              Width = 333
              Height = 29
              Align = alBottom
              Caption = 'ToolBar1'
              TabOrder = 2
              object SpeedButton12: TSpeedButton
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
                OnClick = SpeedButton2Click
              end
              object SpeedButton13: TSpeedButton
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
                OnClick = SpeedButton3Click
              end
              object SpeedButton14: TSpeedButton
                Left = 48
                Top = 2
                Width = 90
                Height = 22
                Hint = 'Limpar descri'#231#227'o'
                Caption = 'Limpar'
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
                OnClick = SpeedButton14Click
              end
              object SpeedButton15: TSpeedButton
                Left = 138
                Top = 2
                Width = 90
                Height = 22
                Hint = 'Restaurar conte'#250'do original'
                Caption = 'Restaurar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  62020000424D62020000000000003601000028000000110000000F0000000100
                  0800000000002C010000120B0000120B000040000000000000000B491100D9AC
                  7C0063B35B00CDB68B00825C3E00EAEAEA0060412A007DDF8A00DFDFDF00FFE9
                  B5006BFA83008EA99400BEBEBE002E63330065976A00B8B8B800FFC087002AF6
                  3900FFCB9300A07C5800FFF7C500ACFECC00FFD59E00EBBF9400C5C5C5008EFC
                  AB0049F85B00BEB2A900FFE7D000FFDFAA00947454000E5C1600ADADAD004C6F
                  4700D9C69A00AF8861004AC05800D9B28300FFDBA500FFF0BE00FFBD8C00FFDF
                  C100CCCCCC00A17551003A6E3D00FFCFA300D9B88A00185B1F00FFC38B00A17D
                  5900E0B38C00FFFFFF0000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000333333050505
                  05050505050505053333330000003333052A0C0C0C0C0C0C0C0C0C2A08053300
                  000033330606060606060606060606200F2A0500000033330614141403141414
                  14140606060C050000003333062222220003141414140614060C050000003333
                  130606061500031414140614060C050000003321020719191919000327270614
                  060C050000000B240A0A0A0A0A0A0A0009090614060C050000002C1A1A1A1A1A
                  1A1A002E1D1D0614060C050000002F0E1E3131231100251616160627060C0500
                  00001F33061212120D01121212120609060C0500000033330610101010101010
                  10100626060C05000000333306302B040606060606060612060C050000003333
                  1B0617322D291C1C1C1C1C1C062A050000003333331B06060606060606060606
                  060533000000}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton15Click
              end
              object SpeedButton16: TSpeedButton
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
                OnClick = SpeedButton6Click
              end
            end
            object re_editor: TRxRichEdit
              Left = 2
              Top = 96
              Width = 333
              Height = 180
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 3
              OnKeyDown = re_editorKeyDown
              OnSelectionChange = SelectionChange
            end
          end
        end
        object TabSheet_anexos: TTabSheet
          Caption = 'Anexos'
          ImageIndex = 3
          object GroupBox8: TGroupBox
            Left = 0
            Top = 0
            Width = 337
            Height = 311
            Align = alClient
            Caption = 'Ficha:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Lb_countreg3: TLabel
              Left = 326
              Top = -1
              Width = 6
              Height = 12
              Alignment = taRightJustify
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
            object ToolBar6: TToolBar
              Left = 2
              Top = 280
              Width = 333
              Height = 29
              Align = alBottom
              Caption = 'ToolBar1'
              TabOrder = 0
              object bt_prior4: TSpeedButton
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
                OnClick = bt_prior4Click
              end
              object bt_next5: TSpeedButton
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
                OnClick = bt_next5Click
              end
              object bt_new4: TSpeedButton
                Left = 48
                Top = 2
                Width = 90
                Height = 22
                Hint = 'Incluir novo anexo'
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
                OnClick = bt_new4Click
              end
              object bt_del4: TSpeedButton
                Left = 138
                Top = 2
                Width = 90
                Height = 22
                Hint = 'Excluir anexo selecionado'
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
                OnClick = bt_del4Click
              end
              object bt_save4: TSpeedButton
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
                OnClick = bt_save4Click
              end
            end
            object db_arquivos: TDBGrid
              Left = 2
              Top = 14
              Width = 333
              Height = 130
              Hint = 'Duplo clique para incluir m'#243'dulo'
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnCellClick = db_arquivosCellClick
              OnKeyDown = db_arquivosKeyDown
              OnKeyUp = db_arquivosKeyUp
            end
            object Panel6: TPanel
              Left = 2
              Top = 144
              Width = 333
              Height = 136
              Align = alBottom
              BevelOuter = bvNone
              Color = 16119285
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object Label32: TLabel
                Left = 225
                Top = 6
                Width = 86
                Height = 12
                Alignment = taRightJustify
                Caption = 'Date de cadastro'
              end
              object lbce_dtcad: TLabel
                Left = 152
                Top = 21
                Width = 161
                Height = 17
                Alignment = taRightJustify
                AutoSize = False
                Layout = tlCenter
              end
              object lbce1: TLabeledEdit
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
              object lbce2: TLabeledEdit
                Left = 8
                Top = 62
                Width = 313
                Height = 20
                EditLabel.Width = 51
                EditLabel.Height = 12
                EditLabel.Caption = 'Descri'#231#227'o'
                MaxLength = 255
                TabOrder = 1
              end
              object GroupBox13: TGroupBox
                Left = 8
                Top = 88
                Width = 313
                Height = 42
                Caption = 'Arquivo:'
                TabOrder = 2
                object bt_download4: TSpeedButton
                  Left = 128
                  Top = 14
                  Width = 105
                  Height = 22
                  Hint = 'Salvar anexo como'
                  Caption = 'Salvar como'
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
                  OnClick = bt_download4Click
                end
                object bt_upload4: TSpeedButton
                  Left = 8
                  Top = 14
                  Width = 113
                  Height = 22
                  Hint = 'Localizar arquivo'
                  Caption = 'Importar arquivo'
                  Flat = True
                  Glyph.Data = {
                    96010000424D9601000000000000B600000028000000100000000E0000000100
                    080000000000E0000000120B0000120B00002000000000000000FFFFFF00F7FF
                    FF0099FFFF0094F7FF0083ECFF00DDDFDF007CDFFF006CD6FF0066CCFF00CCCC
                    CC0066CCCC00BFC3C200BDBDBD0043B3DE0021B0CE00199CC4002D92C5001B81
                    B300848484001074A4007272720066666600FFFFFF0000000000000000000000
                    0000000000000000000000000000000000000000000000000000161605090909
                    09090909090909051616160B1214141414141414141414120B16051313131313
                    131313131313131512050F0F02070707070707070707101314090F0F06020606
                    0606060606060D13150C0F0E0D0204040404040404040D0F15120F0D0F020303
                    0303030303030D0A13140F070F040202020202020202080313140F060F0A0000
                    010000000000040013120F040D0F0F0F0F0F0F0F0F0F0F0F110B0F0303030303
                    0300000000000F130B160F0002020202000F0F0F0F0F0F051616160E00000000
                    0F0B161616161616161616160E0E0E0E05161616161616161616}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_upload4Click
                end
                object lbce4: TLabel
                  Left = 240
                  Top = 19
                  Width = 65
                  Height = 12
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object lbce3: TLabel
                  Left = 56
                  Top = 0
                  Width = 151
                  Height = 12
                  Caption = '<clique em Importar arquivo>'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
            end
          end
        end
      end
    end
  end
  object Panel_resp: TPanel
    Left = 189
    Top = 1
    Width = 536
    Height = 20
    Alignment = taRightJustify
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
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
    Left = 320
    Top = 272
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 349
    Top = 272
  end
  object ImageList_prioridade: TImageList
    Left = 291
    Top = 272
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
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF000000000000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E800000000000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D80000000000EFEFEF00ADABA900766F6900CDC9
      C700C7C7FF008787FF008787FF008787FF008787FF008787FF00C0C0FF000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C700C2FFC20068FF680068FF680068FF680068FF680068FF6800A6FFA6000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C700000000000000000000000000000000000000000000000000000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C700000000000000000000000000000000000000000000000000000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00E8E8E800847F7A00A19B96000000
      00008787FF000000FF000000FF000000FF000000FF000000FF004E4ED6000000
      000000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B96000000
      000097FF970000FF000000FF000000FF000000FF000000FF0000009700000000
      000000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B96000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B96000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A19B9600847F7A00E8E8E800E7E4DE0066605900CECBC8000000
      00008787FF000000FF000000FF000000FF000000FF000000FF004E4ED6000000
      000000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC8000000
      000097FF970000FF000000FF000000FF000000FF000000FF0000009700000000
      000000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECBC80066605900E7E4DE00E7E4DE00524A4200EDECE800FBFA
      F8008584FC000000FF000000FF000000FF000000FF000000FF004E4ED600FBFA
      F800FBFAF800EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE800FBFA
      F80095FD930000FF000000FF000000FF000000FF000000FF000000970000FBFA
      F800FBFAF800EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE800FBFA
      F800FBFAF800000000000000000000000000000000000000000000000000FBFA
      F800FBFAF800EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE800FBFA
      F8000000000000000000FBFAF800FBFAF800FBFAF800FBFAF800000000000000
      0000FBFAF800EDECE800524A4200E7E4DE00E8E8E8004D453E00E7E4DE00F6F4
      EF008281F7000000FF000000FF000000FF000000FF000000FF004E4ED600F6F4
      EF00F6F4EF00E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE00F6F4
      EF0092F98E0000FF000000FF000000FF000000FF000000FF000000970000F6F4
      EF00F6F4EF00E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE00F6F4
      EF00F6F4EF00000000000000000000000000000000000000000000000000F6F4
      EF00F6F4EF00E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE000000
      000000000000F6F4EF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00F6F4EF000000
      000000000000E7E4DE004D453E00E8E8E800EFEFEF00605A5500BDB8AF00EEEB
      E1007E7CF0000000FF000000FF000000FF000000FF000000FF004E4ED600EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E1008DF4850000FF000000FF000000FF000000FF000000FF000000970000EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E100EEEBE100000000000000000000000000000000000000000000000000EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E100EEEBE100EEEBE100EEEBE100EEEBE100EEEBE100EEEBE100EEEBE100EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF00000000008B87840087807600E7E3
      D500ADA9E0004E4ED6004E4ED6004E4ED6004E4ED6004E4ED6007878C000E7E2
      D500E7E2D500878076008B87840000000000000000008B87840087807600E7E3
      D500C0E7B1000068000000680000006800000068000000680000003E0000E7E2
      D500E7E2D500878076008B87840000000000000000008B87840087807600E7E3
      D500E7E2D500000000000000000000000000000000000000000000000000E7E2
      D500E7E2D500878076008B87840000000000000000008B87840087807600E7E3
      D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2
      D500E7E2D500878076008B8784000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800187E187E187E187E1001000100FF00E70
      1018101818181C38101810181818199800000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E187E187E187E187F00FF00FF00FF00F00000000000000000000000000000000
      000000000000}
  end
  object ToolbarImages: TImageList
    Left = 320
    Top = 308
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
  object OpenDialog: TOpenDialog
    Filter = 
      'Todos os arquivos|*.*|Formato Rich Text (*.rtf)|*.rtf|Arquivos d' +
      'e Texto (*.txt)|*.txt'
    Title = 'Abrir arquivo'
    Left = 224
    Top = 308
  end
  object FontDialog1: TFontDialog
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Left = 193
    Top = 308
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'rtf'
    Filter = 'Formato Rich Text (*.rtf)|*.rtf|Arquivo de Texto (*.txt)|*.txt'
    Title = 'Salvar como'
    Left = 256
    Top = 308
  end
  object ColorDialog1: TColorDialog
    Left = 288
    Top = 308
  end
  object PopupMenu_editor: TPopupMenu
    Images = ToolbarImages
    OwnerDraw = True
    Left = 352
    Top = 308
    object Desfazer1: TMenuItem
      Caption = 'Desfazer'
      ImageIndex = 4
      OnClick = Desfazer1Click
    end
    object Recortar1: TMenuItem
      Caption = 'Recortar'
      ImageIndex = 6
      OnClick = Recortar1Click
    end
    object Copiar1: TMenuItem
      Caption = 'Copiar'
      ImageIndex = 7
      OnClick = Copiar1Click
    end
    object Colar1: TMenuItem
      Caption = 'Colar'
      ImageIndex = 8
      OnClick = Colar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Fontemenu: TMenuItem
      Caption = 'Formatar fonte'
      ImageIndex = 9
      object Fonte1: TMenuItem
        Caption = 'Fonte'
        ImageIndex = 9
        OnClick = Fonte1Click
      end
      object Cor1: TMenuItem
        Caption = 'Cor'
        ImageIndex = 10
        OnClick = Cor1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Negrito1: TMenuItem
        Caption = 'Negrito'
        ImageIndex = 13
        OnClick = Negrito1Click
      end
      object Italico1: TMenuItem
        Caption = 'It'#225'lico'
        ImageIndex = 15
        OnClick = Italico1Click
      end
      object Sublinhado1: TMenuItem
        Caption = 'Sublinhado'
        ImageIndex = 16
        OnClick = Sublinhado1Click
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
      OnClick = Marcador1Click
    end
  end
  object CompressStream: TBackupFile
    Version = '6.00'
    BackupMode = bmAll
    CompressionLevel = clMax
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    RestoreFullPath = False
    SaveFileID = False
    Left = 162
    Top = 310
  end
  object XPManifest1: TXPManifest
    Left = 629
    Top = 39
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
