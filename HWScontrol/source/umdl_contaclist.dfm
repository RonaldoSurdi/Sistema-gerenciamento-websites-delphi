object mdl_contactlist: Tmdl_contactlist
  Left = 503
  Top = 165
  Width = 800
  Height = 638
  ActiveControl = DBGrid1
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 581
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
    object Progress_lb: TLabel
      Left = 2
      Top = 509
      Width = 776
      Height = 18
      Align = alBottom
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Splitter1: TSplitter
      Left = 2
      Top = 281
      Width = 776
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 284
      Width = 776
      Height = 225
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 284
      Width = 776
      Height = 225
      Align = alClient
      Caption = 'Status:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object xstatusList: TMemo
        Left = 2
        Top = 14
        Width = 772
        Height = 158
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object ToolBar_cancel: TToolBar
        Left = 2
        Top = 172
        Width = 772
        Height = 51
        Align = alBottom
        ButtonHeight = 45
        TabOrder = 1
        Visible = False
        OnResize = ToolBar_cancelResize
        object bt_cancel: TSpeedButton
          Left = 0
          Top = 2
          Width = 772
          Height = 45
          Hint = 'Cancelar processo em andamento'
          Caption = 'Cancelar Importa'#231#227'o'
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
          OnClick = bt_cancelClick
        end
      end
    end
    object Progress_pos: TProgressBar
      Left = 2
      Top = 527
      Width = 776
      Height = 48
      Align = alBottom
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 776
      Height = 279
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Splitter2: TSplitter
        Left = 281
        Top = 0
        Height = 279
      end
      object GroupBox2: TGroupBox
        Left = 284
        Top = 0
        Width = 492
        Height = 279
        Align = alClient
        Caption = 'Lista de Arquivos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 14
          Width = 488
          Height = 193
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
        object Panel3: TPanel
          Left = 2
          Top = 207
          Width = 488
          Height = 19
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object TOTAL_limitreg: TLabel
            Left = 478
            Top = 0
            Width = 10
            Height = 19
            Align = alRight
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 312
            Top = 0
            Width = 166
            Height = 19
            Align = alRight
            Alignment = taRightJustify
            Caption = '   -   Total Detinat'#225'rios: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 196
            Top = 0
            Width = 106
            Height = 19
            Align = alRight
            Alignment = taRightJustify
            Caption = 'Total Arquivos: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object TOTAL_filesreg: TLabel
            Left = 302
            Top = 0
            Width = 10
            Height = 19
            Align = alRight
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
        end
        object ToolBar_bts: TToolBar
          Left = 2
          Top = 226
          Width = 488
          Height = 51
          Align = alBottom
          ButtonHeight = 45
          TabOrder = 2
          OnResize = ToolBar_btsResize
          object Panel5: TPanel
            Left = 0
            Top = 2
            Width = 22
            Height = 45
            BevelOuter = bvNone
            TabOrder = 0
          end
          object bt_new: TSpeedButton
            Left = 22
            Top = 2
            Width = 116
            Height = 45
            Hint = 'Importar novo arquivo CSV'
            Caption = 'Importar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              BE010000424DBE01000000000000560000002800000012000000120000000100
              08000000000068010000120B0000120B00000800000000000000FFFFFF0000FF
              FF00CED3D600A4A0A0006666660000000000FFFFFF0000000000000000000000
              0000030303030303030303030000000000000000000505050505050505050503
              0000000000000000000500000000000000000503000000000000000000050000
              0000000500000503000000000000000000050000000005050500050300000000
              0003030303050000000505050505050300000004050505050505050505000005
              0000050300000004010105050502050105000005000005030000000401010505
              0502050105050500000005030000000401010505050505010500000000000503
              0000000401010101010101010500000000000503000000040105050505050501
              0505050505050503000000040105020202020501050300000000000000000004
              0105020202020501050300000000000000000004010502020202050105000000
              0000000000000004040404040404040404000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_newClick
          end
          object bt_update: TSpeedButton
            Left = 138
            Top = 2
            Width = 116
            Height = 45
            Hint = 'Atualizar arquivo selecionado'
            Caption = 'Atualizar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              E6050000424DE605000000000000360400002800000016000000120000000100
              080000000000B0010000120B0000120B00000001000082000000FFFFFF0099FF
              FF00E7FFDE00E6FAE30000FFFF00F1FAA9009FF69400F3E49F00CED3D600C0F0
              7A0033CCFF00D9DA9200C3C8C900E3CB9500ECC4830085D85E00AFB8BB00BCB9
              B100B1B5B600B4B5AC00CDB89D00F4C16500B2AFAA00A5ADAC00CAAD9E001ECA
              6A00ECB36400AAA896009FA3A400A4A0A000A1A78400E6A9590099999900A29C
              8900F2A74500D9A35C0080A95E008E9392009A968300A6987B00E69E46009390
              8C0099996600DA9C420051AA3D00DE944C00AB8E7300D3904500D8942900AB8A
              5D00C4932D00897F7F00957D7100D27F52001EA50300E47D440046991900D87B
              4A00D87E4300C97D490089824B00D67F3500CD7C42004D8F20009F785200D873
              46004C7A5D0093745500D3763900D0714A009E754E00CE734000D26D4D00DE70
              3C00D06E4400876F5D0093734800727B32004289110031861E0083704B00B172
              2E0066666600D2673B00D7613200CD632400AF613600D65D35008D603A006666
              3300DC5D2A008D6132006A6D170073612C00705D3800925B2E00655348006652
              400050572C005E543200794E3D00B9511C00975611007C5713007D4A30007A4B
              2B006A4939001D5F000063483A008C492200644B1F0058530800AC4710003357
              05006A41320053433300593F38002F4C0700533C2C007D3C200082400F009737
              190093310F00024201001A340400542313003F160D0041170B003C1709000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000001D1D1D1D
              1D1D1D1D1D00000000000000000000006674528181818181818181811D000000
              00000000000000006674520404818181088104811D0012202925170000000000
              6674520404818181088104811D4B646A726A6C52100000006674520404818181
              81147D8169796D5449373A56681C0000667452040404040414520A7E7A707165
              5A493D2B3B74000066745204818181812E03010A7F787B7155414A4447633300
              6674520481080808081803010A7E6B8080394A53576260006674520481080808
              08815802010A800A7E2F35454866730066745204810808080881465F02010A0A
              7E282D3E516F760066745252525252525252405B7702010A7E1A23425C756100
              66740000000000000000205D020101017E0E30384E7C34006674000000000000
              0000005E5950434C5B0D22364F6E160066740000000000000000001B2C190605
              070D1F3F672600006674000000000000000000001B240F090B15324D210C0000
              66740000000000000000000000111E2A3C312713000000006674000000000000
              0000000000000000000000000000000066740000000000000000000000000000
              00000000000000006674}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_updateClick
          end
          object bt_move: TSpeedButton
            Left = 254
            Top = 2
            Width = 116
            Height = 45
            Hint = 'Mover Arquivo para outro Grupo'
            Caption = 'Mover'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
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
            OnClick = bt_moveClick
          end
          object bt_del: TSpeedButton
            Left = 370
            Top = 2
            Width = 116
            Height = 45
            Hint = 'Excluir arquivo selecionado'
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
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 281
        Height = 279
        Align = alLeft
        Caption = 'Classifica'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object ToolBar_grp: TToolBar
          Left = 2
          Top = 226
          Width = 277
          Height = 51
          Align = alBottom
          ButtonHeight = 45
          TabOrder = 0
          OnResize = ToolBar_grpResize
          object Panel6: TPanel
            Left = 0
            Top = 2
            Width = 9
            Height = 45
            BevelOuter = bvNone
            TabOrder = 0
          end
          object bt_newgrp: TSpeedButton
            Left = 9
            Top = 2
            Width = 88
            Height = 45
            Hint = 'Adicionar novo Grupo de Classifica'#231#227'o'
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
            OnClick = bt_newgrpClick
          end
          object bt_updategrp: TSpeedButton
            Left = 97
            Top = 2
            Width = 88
            Height = 45
            Hint = 'Alterar dado do Grupo selecionado'
            Caption = 'Alterar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              9E050000424D9E05000000000000360400002800000012000000120000000100
              08000000000068010000120B0000120B00000001000020000000FFFFFF00FEFC
              F700FEFCF100FEFAF600FEF8EF00FEF6E600FDF1DD00FCEED000FBE9C400E9D8
              C300E4D3B900E2D3B900F4D3B200F2D4B100E4D1BC00E1C9AB00E1C7A300B0B6
              B500C6A5840099999900B8956A00B18A6300AE885E00A5835F009E794D009574
              4D00956E47008F6B43008B66400081603900835C360000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000007468000000000000000000000000000000000000
              7468000000000013131313131313131313000000746800000000181A1A1B1C1C
              1C1D1D1E130000007468000000001706060607070808081E1300000074680000
              000017051F1F1F1F1F1F081E130000007468000000001605050506060707071E
              1300000074680000000015041F1F1F1F1F1F071E130000007468000000001504
              040405050606061E1300000074680000000015031F1F1F1F09090F1E13000000
              74680000000015010101040B1212191E1300000074680000000015011F1F1F0A
              0202101E1300000074680000000015010000010E030C1E130000000074680000
              000015151515150E0D1E13000000000074680000000000000000001414110000
              0000000074680000000000000000000000000000000000007468000000000000
              0000000000000000000000007468000000000000000000000000000000000000
              7468}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_updategrpClick
          end
          object bt_delgrp: TSpeedButton
            Left = 185
            Top = 2
            Width = 88
            Height = 45
            Hint = 'Excluir Grupo selecionado'
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
            OnClick = bt_delgrpClick
          end
        end
        object Panel8: TPanel
          Left = 2
          Top = 207
          Width = 277
          Height = 19
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object TOTAL_grpreg: TLabel
            Left = 267
            Top = 0
            Width = 10
            Height = 19
            Align = alRight
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 151
            Top = 0
            Width = 116
            Height = 19
            Align = alRight
            Alignment = taRightJustify
            Caption = 'Total de Grupos: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 14
          Width = 277
          Height = 193
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
          TabOrder = 2
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 581
    Width = 784
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
    Left = 297
    Top = 296
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
  object CompressCSV: TBackupFile
    Version = '6.00'
    BackupMode = bmAll
    CompressionLevel = clMax
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    OnProgress = CompressCSVProgress
    RestoreFullPath = False
    SaveFileID = False
    Left = 130
    Top = 266
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 262
    Top = 267
  end
end
