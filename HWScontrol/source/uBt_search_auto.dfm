object Bt_search_auto: TBt_search_auto
  Left = 212
  Top = 80
  Width = 800
  Height = 480
  BorderIcons = [biSystemMenu]
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label_status: TLabel
    Left = 0
    Top = 0
    Width = 792
    Height = 16
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Selecione o diret'#243'rio desejado e clique em "Iniciar Busca", sele' +
      'cione os arquivos desejados e clique em "Importar Arquivos Selec' +
      'ionados"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8355711
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Panel1: TPanel
    Left = 0
    Top = 16
    Width = 792
    Height = 407
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    ParentColor = True
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 225
      Top = 2
      Height = 399
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 223
      Height = 399
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object ShellTreeView1: TShellTreeView
        Left = 0
        Top = 26
        Width = 223
        Height = 298
        ObjectTypes = [otFolders]
        Root = 'rfDesktop'
        ShellComboBox = ShellComboBox1
        UseShellImages = True
        Align = alClient
        AutoRefresh = False
        Indent = 19
        ParentColor = False
        RightClickSelect = True
        ShowRoot = False
        TabOrder = 0
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 324
        Width = 223
        Height = 26
        Align = alBottom
        ButtonHeight = 20
        Caption = 'ToolBar1'
        TabOrder = 1
        OnResize = ToolBar1Resize
        object FilterComboBox1: TFilterComboBox
          Left = 0
          Top = 2
          Width = 222
          Height = 20
          Filter = 'Todos os arquivos (*.*)|*.*'
          TabOrder = 0
        end
      end
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 223
        Height = 26
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 2
        object ShellComboBox1: TShellComboBox
          Left = 0
          Top = 2
          Width = 222
          Height = 22
          Root = 'rfDesktop'
          ShellTreeView = ShellTreeView1
          UseShellImages = True
          DropDownCount = 8
          TabOrder = 0
        end
      end
      object ToolBar5: TToolBar
        Left = 0
        Top = 350
        Width = 223
        Height = 49
        Align = alBottom
        ButtonHeight = 44
        Caption = 'ToolBar4'
        TabOrder = 3
        OnResize = ToolBar5Resize
        object SpeedButton3: TSpeedButton
          Left = 0
          Top = 2
          Width = 121
          Height = 44
          Hint = 'Localizar arquivos a partir do diret'#243'rio selecionado'
          Caption = 'Iniciar Busca'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
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
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 121
          Top = 2
          Width = 100
          Height = 44
          Hint = 'Parar busca'
          Caption = 'Parar'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF02023802022D0101240101240101240101240101240101240202240202
            23020214FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF02027F0202
            9D01017B01017D01017D01017D01017D01017D02027E020256020223FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF02029E0202EF0000FD0000FE00
            00FE0000FE0000FE0000FE0202FE020298020225FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFF0202A00101EF0000FC0000FC0000FC0000FC0000FC
            0000FC0101FF010195010125FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF0202A00101EF0000FC0000FC0000FC0000FC0000FC0000FC0101FF0101
            95010125FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0303A00202
            EF0000FC0000FC0000FC0000FD0000FC0000FC0202FF020295020225FFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0202A00101EF0000FC0000FC00
            00FC0000FC0000FC0000FC0101FF010195010125FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFF0202A00101EF0000FC0000FC0000FC0000FC0000FC
            0000FC0101FF010195010125FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFF0303A20202EF0101FC0101FD0101FD0101FD0101FD0101FD0202FE0202
            93020224FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0E0EAE0202
            E40101EF0101EE0101EE0101EE0101EE0101EE0202EF0202A602022DFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF6363EA0E0EAE0303A20202A002
            02A00202A00202A00202A002029E020284020239FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton4Click
        end
      end
    end
    object Panel4: TPanel
      Left = 228
      Top = 2
      Width = 558
      Height = 399
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Splitter2: TSplitter
        Left = 353
        Top = 0
        Width = 4
        Height = 399
      end
      object GroupBox1: TGroupBox
        Left = 357
        Top = 0
        Width = 201
        Height = 399
        Align = alClient
        Caption = 'Visualizar Imagem:'
        TabOrder = 0
        object swf_logo_view: TShockwaveFlash
          Left = 2
          Top = 48
          Width = 197
          Height = 349
          Cursor = crHandPoint
          Hint = 'Icone da imagem'
          TabStop = False
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ControlData = {
            67556655100700005C1400001224000008000200000000000800000000000800
            0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
            08000A0000004800690067006800000008000200000000000B00FFFF08000200
            0000000008000E00000061006C00770061007900730000000800100000005300
            68006F00770041006C006C0000000B0000000B00000008000200000000000800
            02000000000008000200000000000D0000000000000000000000000000000000
            0B0001000B00000008000000000003000000000008000800000061006C006C00
            000008000C000000660061006C00730065000000}
        end
        object ToolBar2: TToolBar
          Left = 2
          Top = 14
          Width = 197
          Height = 34
          ButtonHeight = 29
          Caption = 'ToolBar4'
          EdgeBorders = []
          TabOrder = 1
          object CheckBox_autoview: TCheckBox
            Left = 0
            Top = 2
            Width = 105
            Height = 29
            Caption = 'Auto visualizar'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object SpeedButton9: TSpeedButton
            Left = 105
            Top = 2
            Width = 40
            Height = 29
            Hint = 'Limpar'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
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
            OnClick = SpeedButton9Click
          end
          object SpeedButton2: TSpeedButton
            Left = 145
            Top = 2
            Width = 40
            Height = 29
            Hint = 'Atualizar imagem'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              8E060000424D8E06000000000000360400002800000018000000190000000100
              08000000000058020000120B0000120B000000010000A6000000FFFFFF00FFF1
              BF00F9EACA00FEE8B400FAE6BC00FCE8B200FFE6A900FEE3A100FCE29B00FFE0
              9E00FFDDA500FBDE9700FED99600FBDB9200EFD1AE00F7CEB000FCD88D00F4D1
              A200FED29400FED48B00FBD38E00FBCBA600FED09000EDC8AB00F9C9A300FFCF
              8400E8C5AF00F0CE8A00FFCB8000F4C79000FDC97F00FFC98000EAC49700FCC4
              9200FEC78200FCC39000F7C78600FDC77F00E6C19A00F3C28D00EBC28F00FAC6
              7E00FFC38200FEC08E00F3BF8F00E4BB9F00E5BC9B00F3C08200E9BA9800F2C0
              7F00FAC17600E7B99800FDBE8200F1C07C00E3B99800FDC07300F9BA8400F0BF
              7A00E2B69B00DCB79500E8BA8800FABE7200FDBE6F00FBBB7200E3B39700E7BB
              7B00E3B38F00FBBB6A00F7B67C00E1B19200FDB96D00E0B09500E3B67B00FBB7
              6A00E1B28400FCB37900E2B08C00F9B47500F1B56F00FDB46D00F7B46D00F6B4
              6C00EDB37100E0AD8B00F5B56B00FDB07300FCB26B00E7AF7200FEB26300D7AE
              7B00EBAF6D00E4AD7900DFAA8400FAAF6300DEAD7100FAAE6200FEAD5F00E4AB
              6F00FCA96A00E1A77300FBA76600E3A66800F0A75D00FBA75800DBA46F00D6A4
              6C00CB9D8000E5A35F00D5A26800F6A35800DE9F6200FB9F5100CE9C6800E29C
              5B00F99B5200D99A6100EA9B5500F59C4C00F89A4B00BB917800F7984B00F796
              4B00EA975000F6974600F1954800EF954B00F5954800F5954700E8944F00D593
              5A00E8924B00E2925000E6924F00C08E5F00EF904200CA8D5900F18F3F00DD8D
              5000F18E3E00D68B5000D68C4D00BF875E00D88A4C00B9895B00B7876200CB89
              5100D1854D00B0826200CF844A00BF835400A57C6500BE7C4A00A7785900B677
              4700B9754900A5725200996D5100A26E4C008D6C5A009E6D4C00A56C4700AF6C
              4200A8684100806351009E6442008D5F47000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000095918C8C9497A0000000000000000000000000000000876B666D757B7B
              7C8292A40000000000000000000000006E545D563423232355798684A1000000
              000000000000006532462A2C4242402D1715648A80A200000000000000006829
              37225B6A00000000003A0F628889A500000000000000351C1C61770000000000
              00004718727D9A0000000000004A14193190000000000000000000304B7E8B9E
              00000000003C0C135E000000000000000000004C3878839C0000000000280910
              6C000000000000000000005344767A9B000000000020060D6900000000000000
              0000005C4D6F7498000000000026030B4800000000000000990000634F677196
              00000000002E04071B8F0000000000004E859D5A605F810000000000001A0E01
              08419300000000002F39575158508D0000000000000036020559000000000000
              27253D493F73000000000000000000333B000000000000001D1F433E529F0000
              00000000000000000000000000000000110A12122470A3000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 353
        Height = 399
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object grp_search1: TGroupBox
          Left = 0
          Top = 271
          Width = 353
          Height = 79
          Align = alBottom
          Caption = 'Nomenclatura adotada para descri'#231#227'o:'
          TabOrder = 0
          Visible = False
          object lb_search1: TLabel
            Left = 11
            Top = 54
            Width = 55
            Height = 12
            Caption = 'Descri'#231#227'o:'
            Enabled = False
          end
          object lb_search2: TLabel
            Left = 201
            Top = 54
            Width = 34
            Height = 12
            Caption = 'Inciar:'
            Enabled = False
          end
          object rb_search1: TRadioButton
            Left = 8
            Top = 16
            Width = 185
            Height = 17
            Caption = 'Utilizar nome padr'#227'o do arquivo'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object rb_search2: TRadioButton
            Left = 8
            Top = 32
            Width = 183
            Height = 17
            Caption = 'Configurar nome personalizado:'
            TabOrder = 1
            OnClick = rb_search2Click
          end
          object ed_search1: TEdit
            Left = 71
            Top = 52
            Width = 122
            Height = 20
            Enabled = False
            TabOrder = 2
            Text = 'Imagem '
          end
          object ed_search2: TSpinEdit
            Left = 243
            Top = 52
            Width = 55
            Height = 21
            Enabled = False
            MaxValue = 0
            MinValue = 0
            TabOrder = 3
            Value = 1
          end
        end
        object ToolBar4: TToolBar
          Left = 0
          Top = 350
          Width = 353
          Height = 49
          Align = alBottom
          ButtonHeight = 44
          Caption = 'ToolBar4'
          TabOrder = 1
          OnResize = ToolBar4Resize
          object SpeedButton1: TSpeedButton
            Left = 0
            Top = 2
            Width = 351
            Height = 44
            Hint = 'Iniciar importa'#231#227'o da lista de arquivos'
            Caption = 'Importar Arquivos Selecionados'
            Enabled = False
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Glyph.Data = {
              46050000424D4605000000000000360400002800000010000000110000000100
              08000000000010010000120B0000120B00000001000000000000FFFFFF00EEEE
              EE00FFFFAC00FFFFAD00FFFFAB00FFFFAE00FFFFA600FFFFA900FFFFA400FFF3
              9600FFF39800FFF49700FFF29500FFF19400F4E0D200F5E0D300F5E0D200FFF1
              9200F4DFD200FFED9300FFEC9200DADADA00F0D3C500FFE58000FFE08500FFD8
              8600FFD58600FFD58300FFD48400FFD38600FFD48200FFD38100C4C4C400ECC6
              A300EBC5A100EAC4A000EBC4A100EBC39E00FFCE7600EAC39E00EAC09A00FFC7
              7500FFC27800FFC27700FFC17A00B5B5B500FFBF7800FFBF7700FFBE7500E9B9
              9100E9B89000E9B88F00E7B78D00B2B1B100B1B1B100E7B78F00EAB78A00C7C4
              6100C7C55F00E9B48600E9B48500EAB48200FFBA6A00E1B18B00ABABAB00FFB7
              6900E5B08300DDB57000A9A9A900FFB36A00A8A8A800E6AE7C00FFB16900FFB0
              6700E4AC7C00E9AC7A00FFAF6800FFAF6700E4AB7900E2AA6800E3A67000FFA7
              5A00D6A17300FDA55900CDA07700DEA06C00F4A15700F49F5900F19F5700F49F
              5600E59C5F00C9986F00C5966E00F1984C00E5975200F1974B008A8A8A00E892
              4B00D4838100E78F4800E78E4700FA8E3C00A3876F00E68C3D00F38B3800A488
              5400A9845800E5863B00D7843F00A8825500D7843C00ED84310078787800E883
              3100C57D3F009D79590093755B00AF774600E0772100DF752100A35C68005F5F
              5F00D6681700D467170072584200895B3300CD5C1100CD5D0F0084532A00C751
              1200C64D14007A424C004B454100BF4218008F364700BF3F1900694223005936
              3600B8311D00363636003535350034343400473521003C2D2100422E1A00372B
              2000292929002828280027272700262626003F28140034271C00242424002121
              21001D181200A5002400A300240019130E0015120E001A110A006E001A006D00
              1A00110E0A006D001900690019005F0016005C0015000E0B0600080500000504
              00000500000000000000FFFFFF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000015202D4044
              4444444444442D2015000036798C92929595959595928B793600006D3A080803
              03030303030303396A00006C18110A0A0A0A0A13131313176E000068291F1F19
              1E6943191919192665000071412F2F2F4FA78E2A2A2A2A3E6F000077514D4D4D
              90ABAB75454545537600007B5D59597DABABAB9F5E58585F7A00007E676372A8
              AB8096AB8861646B7F0000815A4E97AB8F3D5BA9A95C4B5A8200008550739DA2
              543C387CAB913B478700008A4A3737373737373F9AAB74428A00009C55282222
              2222222266AB9E529B00007862160F0F0F0F0F0F0F84AB898600000183A5A4A4
              A4A4A4A4A4A6ABAB350000000000000000000000000070AB8D00000000000000
              0000000000000099AB60}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
        end
        object ToolBar6: TToolBar
          Left = 0
          Top = 0
          Width = 353
          Height = 30
          ButtonHeight = 25
          Caption = 'ToolBar4'
          EdgeBorders = []
          TabOrder = 2
          object Label1: TLabel
            Left = 0
            Top = 2
            Width = 129
            Height = 25
            AutoSize = False
            Caption = '   Selecione os arquivos:'
            Layout = tlCenter
          end
          object SpeedButton5: TSpeedButton
            Left = 129
            Top = 2
            Width = 110
            Height = 25
            Hint = 'Selecionar todos os arquivos'
            Caption = 'Todos'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              16010000424D160100000000000046000000280000000D0000000D0000000100
              080000000000D0000000120B0000120B00000400000000000000FFFFFF00BFBF
              BF007F7F7F000000000000000000000000000000000000000000020101010101
              0101010101010000000002030000000000000000000100000000020300000003
              0000000000010000000002030000030303000000000100000000020300030303
              0303000000010000000002030003030003030300000100000000020300030000
              0003030300010000000002030000000000000303000100000000020300000000
              0000000300010000000002030000000000000000000100000000020303030303
              0303030303010000000002020202020202020202020200000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object SpeedButton6: TSpeedButton
            Left = 239
            Top = 2
            Width = 110
            Height = 25
            Hint = 'Deselecionar todos os arquivos'
            Caption = 'Nenhum'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              3E020000424D3E0200000000000036000000280000000D0000000D0000000100
              18000000000008020000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00808085A2A2A6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBDBDC0FBFBFF007B7B7B00000D0101FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFBFBFBFFFFFFF007F7F7F000000FFFFFF0000FFFFFF
              FF929292FFFFFFFFFFFFFFFFFF0000FFFFFFFFBFBFBFFFFFFF007F7F7F000000
              FFFFFFFFFFFF0000FF929292929292FFFFFF0000FFFFFFFFFFFFFFBFBFBFFFFF
              FF007F7F7F000000FFFFFF9292929292920000FF9292920000FFFFFFFFFFFFFF
              FFFFFFBFBFBFFFFFFF007F7F7F000000FFFFFF929292929292FFFFFF0000FF92
              9292929292FFFFFFFFFFFFBFBFBFFFFFFF007F7F7F000000FFFFFF929292FFFF
              FF0000FFFFFFFF0000FF929292929292FFFFFFBFBFBFFFFFFF007F7F7F000000
              FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FF929292FFFFFFBFBFBFFFFF
              FF007F7F7F000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
              FFFFFFBFBFBFFFFFFF007F7F7F0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFBFBFBFFFFFFF007F7F7F00000F0000070000000000
              00000000000000000000000000000000000000B4B4C3FDFDFF007F7F7F7B7B83
              7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FF7F7
              FD00}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton6Click
          end
        end
        object CheckListBox1: TCheckListBox
          Left = 0
          Top = 30
          Width = 353
          Height = 241
          Align = alClient
          BevelInner = bvNone
          ItemHeight = 12
          TabOrder = 3
          OnClick = CheckListBox1Click
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 792
    Height = 19
    Panels = <>
    ParentColor = True
  end
  object FileSearch1: TFileSearch
    OnFileFind = FileSearch1FileFind
    OnChangeFolder = FileSearch1ChangeFolder
    OnFinish = FileSearch1Finish
    Left = 448
    Top = 152
  end
end