object adm_stmenuchat: Tadm_stmenuchat
  Left = 187
  Top = 195
  BorderStyle = bsNone
  ClientHeight = 392
  ClientWidth = 735
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 735
    Height = 355
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
    object PageControl_processos: TPageControl
      Left = 2
      Top = 2
      Width = 382
      Height = 347
      ActivePage = TabSheet_ficha
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl_processosChange
      object TabSheet_ficha: TTabSheet
        Caption = 'Chat'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 374
          Height = 317
          Align = alClient
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object ToolBar3: TToolBar
            Left = 0
            Top = 291
            Width = 374
            Height = 26
            Align = alBottom
            ButtonHeight = 20
            Caption = 'ToolBar1'
            TabOrder = 0
            object bt_msg1: TSpeedButton
              Left = 0
              Top = 2
              Width = 61
              Height = 20
              Hint = 'Abrir mensagens'
              Caption = 'Abrir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
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
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_msg1Click
            end
            object bt_msg2: TSpeedButton
              Left = 61
              Top = 2
              Width = 73
              Height = 20
              Hint = 'Salvar mensagens como'
              Caption = 'Salvar'
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
              OnClick = bt_msg2Click
            end
            object bt_msg3: TSpeedButton
              Left = 134
              Top = 2
              Width = 69
              Height = 20
              Hint = 'Limpar formul'#225'rio de envio'
              Caption = 'Limpar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                D6000000424DD60000000000000046000000280000000C0000000C0000000100
                08000000000090000000120B0000120B0000040000000000000033CCFF000033
                660000000000FFFFFF0003020202020202020202020302000000000000000000
                0002020000000001010000000002030200000000000000000203030200000001
                0100000002030303020000020200000203030303020000020200000203030303
                0302000202000203030303030302000101000203030303030303020000020303
                0303030303030200000203030303030303030302020303030303}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_msg3Click
            end
            object bt_msg4: TSpeedButton
              Left = 203
              Top = 2
              Width = 84
              Height = 20
              Hint = 'Localizar texto no chat'
              Caption = 'Localizar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
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
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_msg4Click
            end
            object bt_atualizar: TSpeedButton
              Left = 287
              Top = 2
              Width = 84
              Height = 20
              Hint = 'Receber mensagens (F6)'
              Caption = 'Atualizar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
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
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_atualizarClick
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 374
            Height = 47
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 1
            object ToolBar4: TToolBar
              Left = 0
              Top = 21
              Width = 374
              Height = 25
              ButtonHeight = 20
              Caption = 'ToolBar4'
              TabOrder = 0
              object CheckBox1: TCheckBox
                Left = 0
                Top = 2
                Width = 71
                Height = 20
                Hint = 'Receber mensagens a cada 30 segundos'
                Caption = 'Atualizar'
                Checked = True
                ParentShowHint = False
                ShowHint = True
                State = cbChecked
                TabOrder = 0
                OnClick = CheckBox1Click
              end
              object Edit_autorefresh: TEdit
                Left = 71
                Top = 2
                Width = 43
                Height = 20
                TabOrder = 1
                Text = '30'
              end
              object UpDown2: TUpDown
                Left = 114
                Top = 2
                Width = 16
                Height = 20
                Associate = Edit_autorefresh
                Max = 1000
                Increment = 30
                Position = 30
                TabOrder = 2
                OnChanging = UpDown2Changing
              end
              object Label13: TLabel
                Left = 130
                Top = 2
                Width = 30
                Height = 20
                AutoSize = False
                Caption = ' seg'
                Layout = tlCenter
              end
              object Panel10: TPanel
                Left = 160
                Top = 2
                Width = 34
                Height = 20
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 6
              end
              object CheckBox2: TCheckBox
                Left = 194
                Top = 2
                Width = 71
                Height = 20
                Hint = 'Enviar sinal on-line a cada 300 segundos'
                Caption = 'On-line'
                Checked = True
                ParentShowHint = False
                ShowHint = True
                State = cbChecked
                TabOrder = 3
                OnClick = CheckBox2Click
              end
              object Edit_online: TEdit
                Left = 265
                Top = 2
                Width = 59
                Height = 20
                TabOrder = 4
                Text = '300'
              end
              object UpDown3: TUpDown
                Left = 324
                Top = 2
                Width = 16
                Height = 20
                Associate = Edit_online
                Max = 1000
                Increment = 50
                Position = 300
                TabOrder = 5
                OnChanging = UpDown3Changing
              end
              object Label11: TLabel
                Left = 340
                Top = 2
                Width = 30
                Height = 20
                AutoSize = False
                Caption = ' seg'
                Layout = tlCenter
              end
            end
            object ToolBar6: TToolBar
              Left = 0
              Top = 0
              Width = 374
              Height = 21
              ButtonHeight = 20
              Caption = 'ToolBar6'
              EdgeBorders = []
              TabOrder = 1
              object Label12: TLabel
                Left = 0
                Top = 2
                Width = 103
                Height = 20
                AutoSize = False
                Caption = 'Baixar mensagens:'
              end
              object rb_receive1: TRadioButton
                Left = 103
                Top = 2
                Width = 118
                Height = 20
                Caption = 'caixa selecionada'
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = rb_receive1Click
              end
              object rb_receive2: TRadioButton
                Left = 221
                Top = 2
                Width = 55
                Height = 20
                Caption = 'todas'
                TabOrder = 1
                OnClick = rb_receive2Click
              end
              object Panel9: TPanel
                Left = 276
                Top = 2
                Width = 26
                Height = 20
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 3
              end
              object chk_avisar: TCheckBox
                Left = 302
                Top = 2
                Width = 75
                Height = 20
                Hint = 'Exibir janela quando nova mensagem'
                Caption = 'Maximizar'
                Checked = True
                ParentShowHint = False
                ShowHint = True
                State = cbChecked
                TabOrder = 2
              end
            end
          end
          object re_mensa: TRxRichEdit
            Left = 0
            Top = 85
            Width = 374
            Height = 206
            Align = alClient
            TabOrder = 2
            UndoLimit = 0
            OnURLClick = re_mensaURLClick
          end
          object re_mensa_tmp: TRxRichEdit
            Left = 0
            Top = 47
            Width = 374
            Height = 38
            TabStop = False
            Align = alTop
            TabOrder = 3
            UndoLimit = 0
            Visible = False
          end
        end
      end
      object TabSheet_anexos: TTabSheet
        Caption = 'Hist'#243'rico'
        ImageIndex = 3
        TabVisible = False
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 374
          Height = 317
          Align = alClient
          Caption = 'Lista de registros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object db_solicitacoes: TDBGrid
            Left = 2
            Top = 142
            Width = 370
            Height = 147
            Align = alClient
            Color = clWhite
            DataSource = dm.source_sql
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
            OnKeyDown = db_solicitacoesKeyDown
            OnKeyUp = db_solicitacoesKeyUp
            OnTitleClick = db_solicitacoesTitleClick
          end
          object ToolBar2: TToolBar
            Left = 2
            Top = 289
            Width = 370
            Height = 26
            Align = alBottom
            Caption = 'ToolBar1'
            TabOrder = 1
            object bt_hst1: TSpeedButton
              Left = 0
              Top = 2
              Width = 75
              Height = 22
              Hint = 'Marcar mensagem selecionada como excluida'
              Caption = 'Excluir'
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
              OnClick = bt_hst1Click
            end
            object bt_hst2: TSpeedButton
              Left = 75
              Top = 2
              Width = 77
              Height = 22
              Hint = 'Eliminar mensagem selecionada'
              Caption = 'Eliminar'
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
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_hst2Click
            end
            object bt_hst3: TSpeedButton
              Left = 152
              Top = 2
              Width = 68
              Height = 22
              Hint = 'Limpar hist'#243'rico de mensagens'
              Caption = 'Limpar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                D6000000424DD60000000000000046000000280000000C0000000C0000000100
                08000000000090000000120B0000120B0000040000000000000033CCFF000033
                660000000000FFFFFF0003020202020202020202020302000000000000000000
                0002020000000001010000000002030200000000000000000203030200000001
                0100000002030303020000020200000203030303020000020200000203030303
                0302000202000203030303030302000101000203030303030303020000020303
                0303030303030200000203030303030303030302020303030303}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_hst3Click
            end
            object bt_hst4: TSpeedButton
              Left = 220
              Top = 2
              Width = 69
              Height = 22
              Hint = 'Restaurar filtro padr'#227'o'
              Caption = 'Pad'#227'o'
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
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF007F0000007F0000007F0000007F0000007F000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF007F0000007F0000007F0000007F000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00
                FF007F0000007F0000007F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00
                FF007F0000007F000000FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00
                FF007F000000FF00FF00FF00FF00FF00FF007F0000007F000000FF00FF00FF00
                FF00FF00FF00FF00FF007F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F0000007F00
                00007F0000007F000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_hst4Click
            end
            object Lb_countreg: TLabel
              Left = 289
              Top = 2
              Width = 78
              Height = 22
              Alignment = taRightJustify
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
          object autofiltro_checkbox: TCheckBox
            Left = 229
            Top = 0
            Width = 67
            Height = 14
            Caption = 'auto filtro'
            TabOrder = 2
          end
          object CoolBar2: TCoolBar
            Left = 2
            Top = 14
            Width = 370
            Height = 128
            Bands = <
              item
                Control = Panel7
                ImageIndex = -1
                Width = 366
              end
              item
                Control = Panel5
                ImageIndex = -1
                Width = 366
              end
              item
                Control = Panel6
                ImageIndex = -1
                Width = 366
              end
              item
                Control = Panel4
                ImageIndex = -1
                MinHeight = 36
                Width = 366
              end>
            object Panel4: TPanel
              Left = 9
              Top = 81
              Width = 353
              Height = 36
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 0
              object bt_search: TSpeedButton
                Left = 329
                Top = 11
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
              object Label4: TLabel
                Left = 221
                Top = -1
                Width = 39
                Height = 12
                Caption = 'Campo:'
              end
              object Label3: TLabel
                Left = 1
                Top = 0
                Width = 49
                Height = 12
                Caption = 'Localizar:'
              end
              object Edit_search: TEdit
                Left = 1
                Top = 12
                Width = 200
                Height = 20
                MaxLength = 255
                TabOrder = 0
                OnChange = Edit_searchChange
                OnKeyPress = Edit_searchKeyPress
              end
              object ComboBox_search: TComboBox
                Left = 203
                Top = 12
                Width = 126
                Height = 20
                ItemHeight = 0
                MaxLength = 255
                TabOrder = 1
                OnChange = ComboBox_searchChange
              end
            end
            object Panel5: TPanel
              Left = 9
              Top = 27
              Width = 353
              Height = 25
              Align = alClient
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 1
              object Label7: TLabel
                Left = 1
                Top = 6
                Width = 94
                Height = 12
                Caption = 'Filtrar mensagens:'
              end
              object filtramsg3: TComboBox
                Left = 96
                Top = 3
                Width = 136
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                MaxLength = 255
                TabOrder = 0
                Text = 'Enviadas e recebidas'
                OnChange = filtramsg3Change
                Items.Strings = (
                  'Enviadas e recebidas'
                  'Somente enviadas'
                  'Somente recebidas')
              end
              object filtramsg4: TComboBox
                Left = 231
                Top = 3
                Width = 122
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                MaxLength = 255
                TabOrder = 1
                Text = 'Todas'
                OnChange = filtramsg4Change
                Items.Strings = (
                  'Todas'
                  'N'#227'o lidas'
                  'Lidas'
                  'Exclu'#237'das n'#227'o lidas'
                  'Exclu'#237'das lidas')
              end
            end
            object Panel6: TPanel
              Left = 9
              Top = 54
              Width = 353
              Height = 25
              Align = alClient
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 2
              object Label20: TLabel
                Left = 1
                Top = 6
                Width = 50
                Height = 12
                Caption = 'Enviadas:'
              end
              object Label6: TLabel
                Left = 173
                Top = 6
                Width = 56
                Height = 12
                Caption = 'Recebidas:'
              end
              object filtramsg5: TComboBox
                Left = 50
                Top = 2
                Width = 123
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                MaxLength = 255
                TabOrder = 0
                Text = 'Todas'
                OnChange = filtramsg5Change
                Items.Strings = (
                  'Todas'
                  'por administradores'
                  'por usu'#225'rios')
              end
              object filtramsg6: TComboBox
                Left = 229
                Top = 2
                Width = 123
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 0
                MaxLength = 255
                TabOrder = 1
                Text = 'Todas'
                OnChange = filtramsg6Change
                Items.Strings = (
                  'Todas'
                  'por administradores'
                  'por usu'#225'rios')
              end
            end
            object Panel7: TPanel
              Left = 9
              Top = 0
              Width = 353
              Height = 25
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 3
              object Label2: TLabel
                Left = 1
                Top = 7
                Width = 94
                Height = 12
                Caption = 'Entidade principal:'
              end
              object filtramsg1: TComboBox
                Left = 97
                Top = 3
                Width = 96
                Height = 20
                Style = csDropDownList
                ItemHeight = 12
                ItemIndex = 1
                MaxLength = 255
                TabOrder = 0
                Text = 'Administrador'
                OnChange = filtramsg1Change
                Items.Strings = (
                  'Sem filtro'
                  'Administrador'
                  'Usu'#225'rio')
              end
              object filtramsg2: TComboBox
                Left = 193
                Top = 3
                Width = 160
                Height = 20
                ItemHeight = 0
                MaxLength = 255
                TabOrder = 1
                OnChange = filtramsg2Change
              end
            end
          end
          object autofiltro_buttonvs: TPanel
            Left = 308
            Top = -1
            Width = 66
            Height = 19
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 4
            Visible = False
            object autofiltro_button: TSpeedButton
              Left = 0
              Top = 1
              Width = 65
              Height = 16
              Hint = 'Executar filtro'
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
              OnClick = autofiltro_buttonClick
            end
          end
        end
      end
    end
    object GroupBox_msg: TGroupBox
      Left = 384
      Top = 2
      Width = 345
      Height = 347
      Align = alRight
      Caption = 'Enviar mensagem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lb_codmsg: TLabel
        Left = 329
        Top = -2
        Width = 9
        Height = 16
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object ToolBar1: TToolBar
        Left = 2
        Top = 316
        Width = 341
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 0
        object bt_import: TSpeedButton
          Left = 0
          Top = 2
          Width = 30
          Height = 22
          Hint = 'Importar mensagem'
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
          OnClick = bt_importClick
        end
        object bt_export: TSpeedButton
          Left = 30
          Top = 2
          Width = 30
          Height = 22
          Hint = 'Exportar mensagem'
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
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CBD0D2C7CBCEC7CBCEC8CCCFC9CDD0C9CED1C9CED1CA
            CFD2CDD2D5CACFD2CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6BABABAA8989AA8989AA8989AA7989AA7989AA7989AA6999AA599
            9A9C999AC9CED1000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D68E62434938343930313C3131393031393031393031393031393031A2989A
            C6CACD000000CED3D6CED3D6CED3D6CCD1D4CED3D6CED3D6CED3D6CED3D69C69
            47C7B092C7B193996C4CF7F2EE9D6C4ACBB2A7D6BEBB393031A5989AC3C7CA00
            0000CED3D6CED3D6C6CBCDA1999AA0999AA1999AA1989AA1989A9C9596A2999A
            A2999A9C95969F9594A57F5DC7B194CDAEA6393031A4989AC4C8CB000000CED3
            D6CED3D69867463C32323932333C34343C3434423A38443B3A4038383E36363C
            3434C7AB95C7AE94C7AD94C7AE95393031A3989AC6CACD000000CED3D6CDD0D1
            9C6947C7A798C7AC99C7AD9AC7AF97C7AF95C7AD95C7AE94C7B293393031C1A7
            8E986947A27E60C7A695393031A0999ACACED1000000CED3D6CDD0D29C6A47CE
            ABABCCB3A7CEB5A0CBB3A2C8B494C9B299C7B196C7B2933F3635CCB19AE4D4C8
            A67E5CC4A68E393031A0999ACACFD2000000CED3D6CDD1D39E6B47DEC3C6DBC4
            BED3BFAECFBAA3CEB99FCAB597C9B396C8B3944B413DB79A8AA37957A88664C7
            AF943930319F999ACCD1D4000000CED3D6CED3D69C6A47E5D0D1E7DBDEE7DBDE
            E7DBDEDCC8BDCDBB9FCBB79CC8B494463C3AAA9C9DCDBAB0C9B396C6AD954536
            33A1999ACACED1000000CED3D6CED3D69D6A47EDDCDAEFE3E7EFE3E7EFE3E7EF
            DFDEE0D1CBCBB99CC8B594413736A191919E775DA06C489E6B47996746CDD0D2
            CED3D6000000CED3D6CBCDCD986846EFE7E7F7EFEFF7EFEFF7EFEFEFE7E7EFE3
            E7E0D3CEC9B695413837AA989ABFC2C3CED3D58B6043BEAFA4CED3D6CED3D600
            0000CED3D6CAC9C8946545F7EFF7F7F7F7F7F7F7F7F7F7F7EFF7EFE7E7EEDEDC
            CFBBA1483E3BA8928FC2C4C6CDD0D2986746956545CAC9C8CED3D6000000CED3
            D6CED3D69C6947F6F5F4FFFBFFFFFBFFFFFBFFF7F7F7EFEBEFEFE3E7DFD1CB47
            3A369F6B489666459566459E6A46A06B478E6144CED3D6000000CED3D6CED3D6
            916344EDE7E3FFFBFFFFFFFFFFFBFFF7F7F7F7EFEFEFE3E7E7DBDE4C3B359C99
            99CCCFD1CED3D69E6A479B6946CDD0D2CED3D6000000CED3D6CED3D6976646E5
            DAD2F5E8E3F3E7E5F3E5DFEEE9E4F2E5E2EDDFE1E7DBDE885E42A19898C6CBCD
            CED3D69E6B47C9C7C5CED3D6CED3D6000000CED3D6CED3D69F6B479D69479D69
            479C69479C69479D69479D69479D6A479D6A479D6A47CCCFD1CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D5CDD0D1CDD0D2CED3D6
            CED3D6CED3D6CED3D6CED2D3CCCFCECDD0D1CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6000000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_exportClick
        end
        object bt_subst: TSpeedButton
          Left = 60
          Top = 2
          Width = 30
          Height = 22
          Hint = 'Localizar e substituir texto'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_substClick
        end
        object bt_clear: TSpeedButton
          Left = 90
          Top = 2
          Width = 95
          Height = 22
          Hint = 'Limpar formul'#225'rio de envio'
          Caption = 'Limpar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            D6000000424DD60000000000000046000000280000000C0000000C0000000100
            08000000000090000000120B0000120B0000040000000000000033CCFF000033
            660000000000FFFFFF0003020202020202020202020302000000000000000000
            0002020000000001010000000002030200000000000000000203030200000001
            0100000002030303020000020200000203030303020000020200000203030303
            0302000202000203030303030302000101000203030303030303020000020303
            0303030303030200000203030303030303030302020303030303}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_clearClick
        end
        object bt_send: TSpeedButton
          Left = 185
          Top = 2
          Width = 153
          Height = 22
          Hint = 'Enviar mensagem (F5)'
          Caption = 'E n v i a r'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 22784
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Glyph.Data = {
            1E020000424D1E02000000000000B60000002800000012000000120000000100
            08000000000068010000120B0000120B0000200000000000000085FABD0076F3
            AB006EEB9C005FE28B0049D9700041D56B00AEB3B2003CD365003FD063003CCE
            620035CB5A0039CB5B0038C8580031C4520031C3570030C050002CBF4F0030BC
            4A00999999002BBB4A0028B847003BA338003CA03A0033993300318D23002983
            1900267C0C002073000026700000206F0000FFFFFF00000000001E1E1E1E1E1E
            1E1E1E1E1E1E1E1E1E1E1E1E00001E1E1E1E1E1E1E061212121E1E1E1E1E1E1E
            00001E1E1E1E1E1E1E1D1D1D12121E1E1E1E1E1E00001E1E1E1E1E1E1E1D0D10
            1D12121E1E1E1E1E00001E1E1E1E1E1E1E1D0E0F0F1D12121E1E1E1E00001E1E
            1E1E1E1E1E1B0C0C0F0F1B12121E1E1E00001E1E1E1E1E1E1E1D0A0A0E10131D
            12121E1E00001E1E1E1E1E1E1E1D080B0E0E11111D121E1E00001E1E1E1E1E1E
            1E1D09090C0E1010141C1E1E00001E1E1E1E1E1E1E1507080A0C0E10131D1E1E
            00001E1E1E1E1E1E1E150309090C0C0F1A1E1E1E00001E1E1E1E1E1E1E150205
            09090C191E1E1E1E00001E1E1E1E1E1E1E1601050509181E1E1E1E1E00001E1E
            1E1E1E1E1E15000405171E1E1E1E1E1E00001E1E1E1E1E1E1E150004151E1E1E
            1E1E1E1E00001E1E1E1E1E1E1E1616161E1E1E1E1E1E1E1E00001E1E1E1E1E1E
            1E1E1E1E1E1E1E1E1E1E1E1E00001E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
            0000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_sendClick
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 14
        Width = 341
        Height = 302
        Align = alClient
        BevelOuter = bvNone
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object CoolBar1: TCoolBar
          Left = 0
          Top = 309
          Width = 341
          Height = 52
          AutoSize = True
          Bands = <
            item
              Control = ToolBar7
              ImageIndex = -1
              Width = 274
            end
            item
              Break = False
              Control = ToolBar5
              ImageIndex = -1
              Width = 65
            end
            item
              Control = ToolBar8
              ImageIndex = -1
              Width = 90
            end
            item
              Break = False
              Control = ToolBar9
              ImageIndex = -1
              Width = 136
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
            Width = 261
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
              Width = 189
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
              Left = 193
              Top = 0
              Width = 8
              ImageIndex = 8
              Style = tbsSeparator
            end
            object FontSize: TEdit
              Left = 201
              Top = 0
              Width = 44
              Height = 22
              Hint = 'Selecione o tamanho da fonte'
              TabOrder = 1
              Text = '12'
              OnChange = FontSizeChange
            end
            object UpDown1: TUpDown
              Left = 245
              Top = 0
              Width = 16
              Height = 22
              Associate = FontSize
              Position = 12
              TabOrder = 2
            end
          end
          object ToolBar8: TToolBar
            Left = 9
            Top = 27
            Width = 77
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
            Left = 101
            Top = 27
            Width = 123
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
            Left = 239
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
            Left = 285
            Top = 0
            Width = 52
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
        object pn_detail: TPanel
          Left = 0
          Top = 0
          Width = 341
          Height = 174
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 1
          Visible = False
          object Label9: TLabel
            Left = 7
            Top = 3
            Width = 58
            Height = 12
            Caption = 'Remetente:'
          end
          object Label1: TLabel
            Left = 7
            Top = 59
            Width = 66
            Height = 12
            Caption = 'Destinat'#225'rio:'
          end
          object lb_remetente: TLabel
            Left = 265
            Top = 3
            Width = 71
            Height = 12
            Alignment = taRightJustify
            Caption = 'Administrador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lb_destinatario: TLabel
            Left = 262
            Top = 59
            Width = 71
            Height = 12
            Alignment = taRightJustify
            Caption = 'Administrador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 7
            Top = 115
            Width = 49
            Height = 12
            Caption = 'Detalhes:'
          end
          object re_remetente: TRichEdit
            Left = 0
            Top = 15
            Width = 341
            Height = 44
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4539717
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu_editor
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            WantTabs = True
            OnKeyDown = re_editorKeyDown
            OnSelectionChange = SelectionChange
          end
          object re_destinatario: TRichEdit
            Left = 0
            Top = 71
            Width = 341
            Height = 44
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4539717
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu_editor
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 1
            WantTabs = True
            OnKeyDown = re_editorKeyDown
            OnSelectionChange = SelectionChange
          end
          object re_detalhes: TRichEdit
            Left = 0
            Top = 127
            Width = 341
            Height = 44
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 4539717
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            PopupMenu = PopupMenu_editor
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 2
            WantTabs = True
            OnKeyDown = re_editorKeyDown
            OnSelectionChange = SelectionChange
          end
        end
        object pn_cc: TPanel
          Left = 0
          Top = 174
          Width = 341
          Height = 135
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 2
          object lbax2: TLabel
            Left = 73
            Top = 92
            Width = 98
            Height = 12
            Caption = 'Selecione a usu'#225'rio'
          end
          object lbax1: TLabel
            Left = 73
            Top = 56
            Width = 99
            Height = 12
            Caption = 'Selecione a website'
          end
          object bt_detail1: TSpeedButton
            Left = 310
            Top = 68
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
            OnClick = bt_detail1Click
          end
          object bt_detail6: TSpeedButton
            Left = 310
            Top = 104
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
          object Label5: TLabel
            Left = 7
            Top = 38
            Width = 125
            Height = 12
            Caption = 'Selecione o destinat'#225'rio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10184960
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 0
            Top = 128
            Width = 341
            Height = 7
            Align = alBottom
            Shape = bsBottomLine
          end
          object Label10: TLabel
            Left = 73
            Top = -2
            Width = 116
            Height = 12
            Caption = 'Selecione o remetente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10184960
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object bt_detail2: TSpeedButton
            Left = 309
            Top = 10
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
          end
          object lbcp_ax1: TLabeledEdit
            Left = 7
            Top = 70
            Width = 65
            Height = 20
            EditLabel.Width = 35
            EditLabel.Height = 12
            EditLabel.Caption = 'C'#243'digo'
            MaxLength = 11
            TabOrder = 2
            OnChange = lbcp_ax1Change
            OnKeyPress = NumKeyPress
          end
          object lbcp3: TLabeledEdit
            Left = 7
            Top = 106
            Width = 65
            Height = 20
            EditLabel.Width = 35
            EditLabel.Height = 12
            EditLabel.Caption = 'C'#243'digo'
            MaxLength = 11
            TabOrder = 4
            OnChange = lbcp3Change
            OnKeyPress = NumKeyPress
          end
          object lbcp4: TComboBox
            Left = 72
            Top = 106
            Width = 237
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 5
            OnChange = lbcp4Change
          end
          object lbcp_ax2: TComboBox
            Left = 72
            Top = 70
            Width = 238
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 3
            OnChange = lbcp_ax2Change
          end
          object RadioButton1: TRadioButton
            Left = 144
            Top = 37
            Width = 70
            Height = 17
            Caption = 'Usu'#225'rios'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10184960
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = RadioButton1Click
          end
          object RadioButton2: TRadioButton
            Left = 218
            Top = 37
            Width = 110
            Height = 17
            Caption = 'Administradores'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10184960
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = RadioButton2Click
          end
          object lbcp5: TLabeledEdit
            Left = 7
            Top = 12
            Width = 65
            Height = 20
            EditLabel.Width = 35
            EditLabel.Height = 12
            EditLabel.Caption = 'C'#243'digo'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = 10184960
            EditLabel.Font.Height = -9
            EditLabel.Font.Name = 'Verdana'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10184960
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 11
            ParentFont = False
            TabOrder = 6
            OnChange = lbcp5Change
            OnKeyPress = NumKeyPress
          end
          object lbcp6: TComboBox
            Left = 72
            Top = 12
            Width = 238
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10184960
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 12
            MaxLength = 255
            ParentFont = False
            TabOrder = 7
            OnChange = lbcp6Change
          end
        end
        object re_editor: TRxRichEdit
          Left = 0
          Top = 361
          Width = 341
          Height = 261
          Align = alClient
          PopupMenu = PopupMenu_editor
          TabOrder = 3
          OnKeyDown = re_editorKeyDown
          OnSelectionChange = SelectionChange
        end
      end
    end
    object Panel_cnt: TPanel
      Left = 288
      Top = 2
      Width = 94
      Height = 19
      BevelOuter = bvNone
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label_cnt: TLabel
        Left = 0
        Top = 0
        Width = 94
        Height = 19
        Align = alClient
        Alignment = taRightJustify
        AutoSize = False
        Layout = tlCenter
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
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 733
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = FormMouseDown
    end
    object bt_fechar: TSpeedButton
      Left = 718
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Fechar janela (ESC)'
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
      Left = 688
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
      Width = 132
      Height = 13
      Cursor = crHandPoint
      Hint = 'Website'
      Alignment = taCenter
      Caption = 'Suporte T'#233'cnico - Chat'
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
  end
  object pn_status: TPanel
    Left = 0
    Top = 375
    Width = 735
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 729
      Height = 11
      Align = alClient
      Stretch = True
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
    Left = 450
    Top = 182
  end
  object FontDialog1: TFontDialog
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Left = 481
    Top = 180
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'Todos os arquivos (*.*)|*.*|Formato Rich Text (*.rtf)|*.rtf|Arqu' +
      'ivo de Texto (*.txt)|*.txt'
    FilterIndex = 0
    Title = 'Abrir arquivo'
    Left = 512
    Top = 180
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'rtf'
    Filter = 'Formato Rich Text (*.rtf)|*.rtf|Arquivo de Texto (*.txt)|*.txt'
    Title = 'Salvar como'
    Left = 544
    Top = 180
  end
  object ColorDialog1: TColorDialog
    Left = 576
    Top = 180
  end
  object ToolbarImages: TImageList
    Left = 608
    Top = 180
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
    Left = 640
    Top = 180
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
  object re_FindDialog: TFindDialog
    OnFind = re_FindDialogFind
    Left = 390
    Top = 180
  end
  object re_ReplaceDialog: TReplaceDialog
    OnFind = re_ReplaceDialogFind
    OnReplace = re_ReplaceDialogReplace
    Left = 419
    Top = 181
  end
  object db_timer: TTimer
    Interval = 30000
    OnTimer = db_timerTimer
    Left = 670
    Top = 181
  end
  object TrayIconini: TTrayIcon
    Active = True
    Animate = False
    AnimateInterval = 80
    ShowDesigning = False
    Images = ImageList_icon
    OnClick = TrayIconiniClick
    PopupMenu = PopupMenu_icon
    ShowHint = False
    Left = 198
    Top = 287
  end
  object ImageList_icon: TImageList
    Left = 262
    Top = 288
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000505050005A5A5A00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003C3C3C004646460096969600AAAAAA00AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000282828003232320046464600FFFFFF00FFAA2500FFAA2500FFFF
      FF00AAAAAA000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FF000000FF0000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      14001E1E1E00323232003C3C3C0046464600FFAA250073000000FFAA25000000
      0000FFFFFF009696960000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00008000000000FF00000000
      0000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A001E1E
      1E0028282800323232004646460050505000AAAAAA007300000000000000FFFF
      8E00FFFF8E00AAAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000800000000000000000FF
      000000FF0000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A00141414001E1E
      1E00323232003C3C3C00464646005A5A5A006464640000000000966200009662
      0000FFFF8E00AAAAAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      000000FF0000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A001E1E1E002828
      28003232320046464600505050005A5A5A007300000078787800AAAAAA00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000C0C0C000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A00141414001E1E1E003232
      32003C3C3C00464646005A5A5A00646464006E6E6E00828282008C8C8C009696
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0A001E1E1E00282828003232
      320046464600505050005A5A5A006E6E6E00787878008282820096969600A0A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000141414001E1E1E00323232003C3C
      3C00464646005A5A5A00646464006E6E6E000E0E0E008C8C8C000E0E0E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E0028282800323232004646
      4600505050005A5A5A000E0E0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E00323232003C3C3C004646
      46005A5A5A00646464000E0E0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002828280032323200464646005050
      50000E0E0E00000000000000000000000000000000000E0E0E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232003C3C3C000E0E0E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFC7FFC700000000FF81FF8100000000
      FE00FE0000000000F803F80300000000E003E003000000008003800300000000
      0003000300000000000300030000000000070007000000000007000700000000
      0007000700000000000F000F00000000001F001F00000000003F003F00000000
      03FF03FF000000008FFF8FFF0000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu_icon: TPopupMenu
    Left = 294
    Top = 288
    object HWSstChat1: TMenuItem
      Caption = 'HWSstChat'
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Maximizar1: TMenuItem
      Caption = 'Restaurar'
      OnClick = Maximizar1Click
    end
    object Minimizar1: TMenuItem
      Caption = 'Minimizar'
      OnClick = Minimizar1Click
    end
    object Finalizar1: TMenuItem
      Caption = 'Finalizar'
      OnClick = Finalizar1Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 229
    Top = 288
  end
  object Timer_logado: TTimer
    Interval = 300000
    OnTimer = Timer_logadoTimer
    Left = 699
    Top = 182
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
end
