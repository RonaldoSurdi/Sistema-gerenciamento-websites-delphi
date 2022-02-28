object Bt_search: TBt_search
  Left = 200
  Top = 163
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 385
  ClientWidth = 611
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
    Top = 332
    Width = 611
    Height = 14
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Selecione o diret'#243'rio inicial e clique em "Iniciar Busca", depoi' +
      's selecione os arquivos e clique em "Selecionar arquivos"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8355711
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 611
    Height = 312
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 223
      Height = 304
      Align = alLeft
      BevelOuter = bvNone
      Color = 16119285
      TabOrder = 0
      object ShellTreeView1: TShellTreeView
        Left = 0
        Top = 26
        Width = 223
        Height = 252
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
        Top = 278
        Width = 223
        Height = 26
        Align = alBottom
        ButtonHeight = 20
        Caption = 'ToolBar1'
        TabOrder = 1
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
    end
    object Panel4: TPanel
      Left = 225
      Top = 2
      Width = 380
      Height = 304
      Align = alClient
      BevelOuter = bvNone
      Color = 16119285
      TabOrder = 1
      object CheckListBox1: TCheckListBox
        Left = 2
        Top = 105
        Width = 378
        Height = 199
        Align = alRight
        ItemHeight = 12
        TabOrder = 0
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 380
        Height = 26
        ButtonHeight = 25
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 1
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
          Width = 117
          Height = 25
          Hint = 'Selecionar todos os arquivos'
          Caption = 'Selecionar todos'
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
          Left = 246
          Top = 2
          Width = 133
          Height = 25
          Hint = 'Deselecionar todos os arquivos'
          Caption = 'Deselecionar todos'
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
      object grp_search1: TGroupBox
        Left = 0
        Top = 26
        Width = 380
        Height = 79
        Align = alTop
        Caption = 'Nomenclatura adotada para descri'#231#227'o:'
        TabOrder = 2
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
          Left = 249
          Top = 54
          Width = 52
          Height = 12
          Caption = 'Inciar em:'
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
          Width = 173
          Height = 20
          Enabled = False
          TabOrder = 2
          Text = 'Imagem '
        end
        object ed_search2: TSpinEdit
          Left = 307
          Top = 52
          Width = 65
          Height = 21
          Enabled = False
          MaxValue = 0
          MinValue = 0
          TabOrder = 3
          Value = 1
        end
      end
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 611
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 609
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object bt_fecharjn: TSpeedButton
      Left = 595
      Top = 3
      Width = 14
      Height = 14
      Cursor = crHandPoint
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
      OnClick = bt_fecharjnClick
    end
    object Label11: TLabel
      Left = 31
      Top = 3
      Width = 105
      Height = 13
      Caption = 'H W S   Web Solution'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object biSystemMenu: TImage
      Left = 4
      Top = 3
      Width = 15
      Height = 14
      Stretch = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 346
    Width = 611
    Height = 39
    Align = alBottom
    BevelOuter = bvLowered
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object barimg: TImage
      Left = 1
      Top = 1
      Width = 609
      Height = 37
      Align = alClient
      Stretch = True
    end
    object SpeedButton1: TSpeedButton
      Left = 308
      Top = 4
      Width = 145
      Height = 32
      Hint = 'Selecionar lista de arquivos'
      Caption = 'Confirma'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
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
    object SpeedButton2: TSpeedButton
      Left = 459
      Top = 4
      Width = 145
      Height = 32
      Hint = 'Cancelar sele'#231#227'o de arquivos'
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333300F33333
        33333333333333330FF3333330FF333333333333333333330000F33333333300
        F33333330000F33333333300F33333330000F3333333300F3333333330000FF3
        333000FF333333333300000F33000F33333333333300000F33000F3333333333
        33330000000FF333333333333333300000F33333333333333333300000F33333
        3333333333330000000FF333333333333300000F3300F3333333333300000FF3
        333000FF3333333300000FF33330000F333333000000F33333333000F3333300
        0F333333333333000FF333000F3333333333330000F333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphRight
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 8
      Top = 4
      Width = 145
      Height = 32
      Hint = 'Localizar arquivos a partir do diret'#243'rio selecionado'
      Caption = 'Iniciar busca'
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
      Left = 158
      Top = 4
      Width = 145
      Height = 32
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
  object FileSearch1: TFileSearch
    OnFileFind = FileSearch1FileFind
    OnChangeFolder = FileSearch1ChangeFolder
    OnFinish = FileSearch1Finish
    Left = 336
    Top = 216
  end
end
