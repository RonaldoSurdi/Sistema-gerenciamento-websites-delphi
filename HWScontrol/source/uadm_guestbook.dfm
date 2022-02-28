object adm_guestbook: Tadm_guestbook
  Left = 237
  Top = 120
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
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
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
    object Splitter1: TSplitter
      Left = 429
      Top = 2
      Height = 365
      Align = alRight
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 427
      Height = 365
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
        Top = 162
        Width = 423
        Height = 110
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
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyDown = DBGrid1KeyDown
        OnKeyUp = DBGrid1KeyUp
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 14
        Width = 423
        Height = 148
        Align = alTop
        Caption = 'Filtrar registros:'
        TabOrder = 1
        object Labelfiltde: TLabel
          Left = 107
          Top = 51
          Width = 14
          Height = 12
          Caption = 'De'
        end
        object Labelfiltate: TLabel
          Left = 103
          Top = 74
          Width = 16
          Height = 12
          Caption = 'at'#233
        end
        object Label3: TLabel
          Left = 11
          Top = 21
          Width = 44
          Height = 12
          Caption = 'Website:'
        end
        object Label9: TLabel
          Left = 10
          Top = 99
          Width = 26
          Height = 12
          Caption = 'Tipo:'
        end
        object lbcp6: TDateTimePicker
          Left = 123
          Top = 47
          Width = 180
          Height = 20
          Date = 38427.489413692130000000
          Time = 38427.489413692130000000
          TabOrder = 0
        end
        object lbcp7: TDateTimePicker
          Left = 304
          Top = 47
          Width = 102
          Height = 20
          Date = 38427.489413692130000000
          Time = 38427.489413692130000000
          Kind = dtkTime
          TabOrder = 1
        end
        object lbcp8: TDateTimePicker
          Left = 123
          Top = 70
          Width = 180
          Height = 20
          Date = 38427.489413692130000000
          Time = 38427.489413692130000000
          TabOrder = 2
        end
        object lbcp9: TDateTimePicker
          Left = 304
          Top = 70
          Width = 102
          Height = 20
          Date = 38427.489413692130000000
          Time = 38427.489413692130000000
          Kind = dtkTime
          TabOrder = 3
        end
        object ComboBox_web: TComboBox
          Left = 64
          Top = 18
          Width = 340
          Height = 20
          Style = csDropDownList
          ItemHeight = 12
          MaxLength = 255
          TabOrder = 4
          OnChange = ComboBox_webChange
        end
        object RadioButtontp1: TRadioButton
          Left = 47
          Top = 98
          Width = 58
          Height = 17
          Caption = 'Todos'
          TabOrder = 5
          OnClick = RadioButtontpClick
        end
        object CheckBoxfil: TCheckBox
          Left = 8
          Top = 48
          Width = 81
          Height = 17
          Caption = 'Per'#237'odo:'
          TabOrder = 6
          OnClick = CheckBoxfilClick
        end
        object RadioButtontp2: TCheckBox
          Left = 120
          Top = 97
          Width = 78
          Height = 17
          Caption = 'Publicados'
          TabOrder = 7
          OnClick = RadioButtontp2Click
        end
        object RadioButtontp3: TCheckBox
          Left = 213
          Top = 97
          Width = 81
          Height = 17
          Caption = 'Avalia'#231#245'es'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          OnClick = RadioButtontp2Click
        end
        object RadioButtontp4: TCheckBox
          Left = 312
          Top = 97
          Width = 78
          Height = 17
          Caption = 'Sugest'#245'es'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
          OnClick = RadioButtontp2Click
        end
        object Panel6: TPanel
          Left = 2
          Top = 118
          Width = 419
          Height = 28
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 10
          object ToolBar2: TToolBar
            Left = 121
            Top = 0
            Width = 298
            Height = 28
            Align = alRight
            ButtonHeight = 20
            Caption = 'ToolBar1'
            TabOrder = 0
            object bt_limpar: TSpeedButton
              Left = 0
              Top = 2
              Width = 146
              Height = 20
              Hint = 'Limpar filtro'
              Caption = 'Exibir todos'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                1E060000424D1E06000000000000360000002800000018000000150000000100
                180000000000E8050000C30E0000C30E00000000000000000000BFBFBF000000
                000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBF00000000FFFF000000000000000000BFBFBF000000000000000000
                000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFF0000000000000000
                FFFFFFFFFF00FFFFFFFFFF00FFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFF
                0000000000FFFFFFFFFF00FFFFFFFFFF000000000000000000BFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000
                000000000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
                FF0000007F7F7F7F7F7F7F7F7F000000000000BFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBF000000000000000000FFFF0000000000FFFFFFFFFF00FFFFFFFFFF
                000000000000000000000000000000000000FFFFFFFFFFFF000000BFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFF00000000FFFFFF00
                FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFF
                000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFF
                0000000000FFFFFFFFFF00000000000000000000000000000000000000000000
                0000FFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF000000
                00000000000000000000000000000000FFFFFFFFFF00FFFF000000FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000000000000000BF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFF000000000000000000
                FFFFFFFFFFFFFFFFFF00007F00007F00007F00007FFFFFFF000000FFFFFF0000
                00FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFFFFFFFFF00007FFFFFFF
                000000FFFFFF000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BF7F7F7FFFFFFF7F00007F00007F00007F0000FFFFFFFFFFFF00007FFFFFFFFF
                FFFF00007FFFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00007FFFFFFFFFFFFF00007FFFFFFF000000FFFFFF000000FFFFFF000000BF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFF7F00007F00007F0000
                7F00007F0000FFFFFF00007F00007F00007F00007FFFFFFF000000FFFFFF0000
                00FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                000000FFFFFF000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000FFFFFF000000BFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000BF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7FFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBF}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_limparClick
            end
            object bt_executa: TSpeedButton
              Left = 146
              Top = 2
              Width = 149
              Height = 20
              Hint = 'Filtrar registros '
              Caption = 'Confirma Filtro'
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
              OnClick = bt_executaClick
            end
          end
        end
      end
      object RichEdittmp: TRichEdit
        Left = 2
        Top = 272
        Width = 423
        Height = 64
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
        Visible = False
      end
      object Panel5: TPanel
        Left = 2
        Top = 336
        Width = 423
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object ToolBar4: TToolBar
          Left = 0
          Top = 0
          Width = 223
          Height = 27
          Align = alClient
          ButtonHeight = 20
          Caption = 'ToolBar1'
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = 0
            Top = 2
            Width = 24
            Height = 20
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
          object SpeedButton2: TSpeedButton
            Left = 24
            Top = 2
            Width = 24
            Height = 20
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
          object SpeedButton5: TSpeedButton
            Left = 48
            Top = 2
            Width = 89
            Height = 20
            Hint = 'Imprimir registros exibidos'
            Caption = 'Imprimir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              B6030000424DB603000000000000360000002800000012000000100000000100
              18000000000080030000C30E0000C30E00000000000000000000BFBFBFBEBEBE
              C1C1C1C4C4C4B2B2B28E8E8E7373735A5A5A565656777777A4A4A4C0C0C0C4C4
              C4BFBFBFBEBEBEBEBEBEBEBEBEBEBEBE0000C0C0C0C7C7C7B4B4B48989896E6E
              6E8181819E9E9E7C7C7C4E4E4E5555555D5D5D6F6F6FA6A6A6C3C3C3C5C5C5BF
              BFBFBEBEBEBEBEBE0000B9B9B98D8D8D6A6A6A7F7F7FA4A4A4A7A7A79F9F9F8C
              8C8C5A5A5A4747475252525C5C5C545454727272A2A2A2BFBFBFC0C0C0BEBEBE
              00009F9F9F727272A2A2A2AEAEAEA8A8A8B5B5B5A3A3A3959595848484787878
              5555554C4C4C5656564F4F4F5555557E7E7EBDBDBDBFBFBF00009B9B9B929292
              A9A9A9B3B3B3BFBFBFC3C3C3A1A1A19494947D7D7D8181818484847575755959
              594D4D4D4A4A4A3F3F3FB1B1B1C4C4C400009E9E9EB2B2B2A9A9A9C0C0C0BFBF
              BFC5C5C5A9A9A9A0A0A08585857E7E7E7D7D7D8181818282827B7B7B5D5D5D2F
              2F2F6E6E6EBFBFBF0000AFAFAFC6C6C6A4A4A4C3C3C3D6D3D5E5E3D8BDBDB7A5
              A5A69D9D9D9292928888887D7D7D7E7E7E8080808A8A8A6363633131317E7E7E
              0000ACACACC6C6C6B4B4B4DDDFDBC9D7CC848AD99E9DC9AFAFA8A3A3A3A4A4A4
              9595959696968484847E7E7E8080806969695E5E5E7070700000A1A1A1C6C6C6
              AEABAEACB8AB69CA6B6C929B9994B1B2B2AEA8A8A8878C8C7E88887C7D7D9F9F
              9F9393938A8A8A6363635B5B5BB5B5B50000ADADADA9A9A9A3A3A3A1A2A1A2AA
              A2898C8192928E8383847E8484AF9696E4A8A88480807A7C7CA9A8A89D9D9D80
              8080848484C3C3C30000C1C1C1BCBCBCB2B2B2A7A7A7A6A4A6A9A8A98A8A8A8B
              9494E8B0B0FF8888FFACACD8C6C6515656939393ACACACB7B7B7BEBEBEBEBEBE
              0000BFBFBFBFBFBFC0C0C0BDBDBDB1B1B1A9A9A9A6A6A6A9ABABEADEDEFFA8A8
              FF9292FFAFAFABADAD757878B7B7B7C5C5C5BFBFBFBEBEBE0000BFBFBFBEBEBE
              BEBEBEBFBFBFC0C0C0BCBCBCB2B2B29B9C9CB3BABAFCB7B7FF8181FFB0B0FDE9
              E9ADABAB7D7E7EB3B3B3BEBEBEBEBEBE0000BFBFBFBEBEBEBEBEBEBEBEBEBEBE
              BEBFBFBFC0C0C0BEBEBEA9AAAAC0BCBCF8C9C9FFABABFF9292FCE7E7999E9E5C
              5C5CB5B5B5C1C1C10000BFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBF
              BFBFBFBFBFA9AFAFC1B1B1F6BBBBE4E0E0BEC0C0ADADADAFAFAFBDBDBDBEBEBE
              0000C0C0C0BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBEBE
              AAADADA0AAAAA2A4A4B0AFAFBBBBBBC2C2C2BFBFBFBFBFBF0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object bt_atualizar: TSpeedButton
            Left = 137
            Top = 2
            Width = 83
            Height = 20
            Hint = 'Atualizar registros'
            Caption = 'Atualizar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E030000424D9E03000000000000360200002800000012000000120000000100
              08000000000068010000120B0000120B0000800000000000000099333300E5C0
              AA0000FF0000B9966B00B15F5400FDF6E700BA936D00AD463300F8ECD000DCA3
              8900F7E4B900C47155008E69430099999900F1D5B300815F3400BD583200DDCB
              B400F1E3CD00A7845C00D0845A00FFFFFF00B0B5B600DF987600E7B39500F8EE
              D600835E3800B14C3300F8E1BB009E7B5300FCEAD300FFFAF500CB836B00BE73
              6300A84A4500F9EDE100AF8B6300C3A88600AB514600936E4800F5E6C5009C73
              5200CC663300DEBBA100DFAE9400BA9A6F00EADFCB008A653F00FEF0DD00EFCF
              AC00FCEACD00FCECCF00F9FDF800A33C3300CD927F00FFF9EE00916E4300C37E
              6D00B5967500CC8F7500CF7E590097704900C25F3300FFEFD600BC513500A786
              6500AB463700F7E8DF00E0AF9900F7DEB500B38F6700E2C8AA00FBF4E100A27B
              5500BB967000D8A69200D68D6D00F6E5BE00FDEAC90086613B00F6E6CF00BE9A
              7200B6543200AC493500AF875D00D6845A00F7F7DE00E8BCA500FFFCF800FFFF
              EF00F0D0B300F7D6B500C35A3100E6B69E00BD736B00E7B09100ECDECB00A542
              310093704500B59C7300E7C9AE00FFFFFF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000006565650D0D0D
              0D0D0D0D0D0D0D0D0D0D0D65000065651D3838272727270C0C2F2F4F4F0F0D65
              000065651D333333333333332828280A0A4F0D65000065651D08080808081E1E
              4E28284D4D1A0D65000065654933335A4B212604365A4D4D4D1A0D6500006565
              4908642053533535355E311C1C1A0D6500006565491909400B44502B39222828
              4D4F0D650000656513303C105D30303032323228282F0D650000656554482A3E
              19484830013B424E4E0C0D65000065652405552A57050540401B070832270D65
              0000656546375F2A140123573C521B19193D0D6500006565461F43172A2A2A3E
              5C4C5219193D0D65000065654A1F1F4318552A142C1F4312473D0D6500006565
              4A343434585858585811253A41130D65000065655115151515151534342E1F0E
              490D656500006565511515151515151515600E240D6565650000656551515151
              5151515106060616656565650000656565656565656565656565656565656565
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_atualizarClick
          end
        end
        object ToolBar6: TToolBar
          Left = 223
          Top = 0
          Width = 200
          Height = 27
          Align = alRight
          ButtonHeight = 23
          Caption = 'ToolBar1'
          TabOrder = 1
          object Label5: TLabel
            Left = 0
            Top = 2
            Width = 113
            Height = 23
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total de Registros: '
            Layout = tlCenter
          end
          object Lb_countreg: TLabel
            Left = 113
            Top = 2
            Width = 80
            Height = 23
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
    object Panel3: TPanel
      Left = 432
      Top = 2
      Width = 297
      Height = 365
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 242
        Width = 297
        Height = 123
        Align = alClient
        Caption = 'Resolver IP:'
        TabOrder = 0
        object ToolBar1: TToolBar
          Left = 2
          Top = 33
          Width = 293
          Height = 26
          ButtonHeight = 20
          Caption = 'ToolBar1'
          EdgeBorders = []
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 2
            Width = 4
            Height = 20
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
          end
          object ed_geip: TEdit
            Left = 4
            Top = 2
            Width = 186
            Height = 20
            TabOrder = 0
          end
          object bt_getip: TSpeedButton
            Left = 190
            Top = 2
            Width = 98
            Height = 20
            Hint = 'Filtrar registros '
            Caption = 'Resolver'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              BE010000424DBE01000000000000560000002800000012000000120000000100
              08000000000068010000120B0000120B0000080000000000000000000000CED3
              D6008400000084828400FFFFFF00C6C3C6000000000000000000010101010101
              0101010101010101010101010000010101010100000000010101010000000001
              0000010101010100010000010101010001000001000001010101010001000000
              0100000001000001000001010101010000000000000001000000000100000101
              0202020000010000050001000000000100000101020101010000000005000000
              0000010100000101020103030001000000000100000001010000010102010101
              0100000000000000000101010000010102010303010001000303000100010101
              0000010102010101010000000101000000010101000001010201030301030301
              0303010201010101000001010201010101010101010101020101010100000101
              0202020202020202020202020101010100000101020102020102020102020102
              0101010100000101020202020202020202020202010101010000010101010101
              0101010101010101010101010000010101010101010101010101010101010101
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_getipClick
          end
        end
        object ToolBar3: TToolBar
          Left = 2
          Top = 14
          Width = 293
          Height = 19
          ButtonHeight = 17
          Caption = 'ToolBar1'
          EdgeBorders = []
          TabOrder = 1
          object Label1: TLabel
            Left = 0
            Top = 2
            Width = 105
            Height = 17
            AutoSize = False
            Caption = '  Selecione o tipo:'
            Layout = tlCenter
          end
          object RadioButton_getip1: TRadioButton
            Left = 105
            Top = 2
            Width = 42
            Height = 17
            Caption = 'IP'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton_getip2: TRadioButton
            Left = 147
            Top = 2
            Width = 57
            Height = 17
            Caption = 'Host'
            TabOrder = 1
          end
          object CheckBox_getip: TCheckBox
            Left = 204
            Top = 2
            Width = 82
            Height = 17
            Caption = 'Autom'#225'tico'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
        object StatusBar_getip: TStatusBar
          Left = 2
          Top = 102
          Width = 293
          Height = 19
          Panels = <
            item
              Width = 230
            end
            item
              Bevel = pbNone
              Width = 50
            end>
          ParentColor = True
        end
        object AddressListBox: TListBox
          Left = 2
          Top = 59
          Width = 293
          Height = 43
          Align = alClient
          ItemHeight = 12
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 297
        Height = 242
        Align = alTop
        Caption = 'Informa'#231#245'es:'
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 132
          Width = 58
          Height = 12
          Caption = 'Mensagem:'
        end
        object lbcp1: TLabel
          Left = 278
          Top = 0
          Width = 7
          Height = 12
          Alignment = taRightJustify
          Caption = '0'
        end
        object Label4: TLabel
          Left = 10
          Top = 19
          Width = 26
          Height = 12
          Caption = 'Tipo:'
        end
        object lbcpdt: TLabel
          Left = 219
          Top = 0
          Width = 3
          Height = 12
          Alignment = taRightJustify
        end
        object lbcp2: TLabeledEdit
          Left = 7
          Top = 52
          Width = 279
          Height = 20
          EditLabel.Width = 55
          EditLabel.Height = 12
          EditLabel.Caption = 'Descri'#231#227'o:'
          MaxLength = 255
          TabOrder = 3
        end
        object lbcp3: TLabeledEdit
          Left = 7
          Top = 89
          Width = 279
          Height = 20
          EditLabel.Width = 36
          EditLabel.Height = 12
          EditLabel.Caption = 'e-mail:'
          MaxLength = 255
          TabOrder = 4
        end
        object lbcp4: TCheckBox
          Left = 9
          Top = 112
          Width = 120
          Height = 17
          Caption = 'Receber not'#237'cias'
          TabOrder = 5
        end
        object RadioButton1: TRadioButton
          Left = 46
          Top = 18
          Width = 84
          Height = 17
          Caption = 'Publicado'
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 130
          Top = 18
          Width = 73
          Height = 17
          Caption = 'Avalia'#231#227'o'
          TabOrder = 1
        end
        object ToolBar5: TToolBar
          Left = 2
          Top = 211
          Width = 293
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 7
          object Panel4: TPanel
            Left = 0
            Top = 2
            Width = 87
            Height = 22
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
          end
          object pn_notmaster: TPanel
            Left = 87
            Top = 2
            Width = 8
            Height = 22
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            Visible = False
          end
          object bt_del: TSpeedButton
            Left = 95
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
            OnClick = bt_delClick
          end
          object bt_save: TSpeedButton
            Left = 185
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
        object lbcp5: TRichEdit
          Left = 8
          Top = 146
          Width = 281
          Height = 64
          ScrollBars = ssBoth
          TabOrder = 6
        end
        object RadioButton3: TRadioButton
          Left = 214
          Top = 18
          Width = 73
          Height = 17
          Caption = 'Sugest'#227'o'
          TabOrder = 2
        end
      end
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
  end
  object XPManifest1: TXPManifest
    Left = 373
    Top = 29
  end
  object PrintDialogtmp: TPrintDialog
    Left = 180
    Top = 291
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 181
    Top = 248
  end
end
