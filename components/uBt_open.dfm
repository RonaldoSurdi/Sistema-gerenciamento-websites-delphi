object Bt_open: TBt_open
  Left = 274
  Top = 185
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
  object Panel1: TPanel
    Left = 193
    Top = 20
    Width = 418
    Height = 365
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 410
      Height = 318
      Align = alClient
      BevelOuter = bvNone
      Color = 16119285
      TabOrder = 0
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 410
        Height = 26
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 0
        object ShellComboBox1: TShellComboBox
          Left = 0
          Top = 2
          Width = 407
          Height = 22
          Root = 'rfDesktop'
          ShellTreeView = ShellTreeView2
          UseShellImages = True
          DropDownCount = 8
          TabOrder = 0
          OnChange = ShellComboBox1Change
          OnClick = ShellComboBox1Click
          OnExit = ShellComboBox1Exit
          OnKeyPress = ShellComboBox1KeyPress
        end
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 292
        Width = 410
        Height = 26
        Align = alBottom
        ButtonHeight = 21
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 2
          Width = 102
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Arquivos do tipo:'
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object FilterComboBox1: THWSFilterComboBox
          Left = 102
          Top = 2
          Width = 300
          Height = 21
          FileList = FileListBox1
          Filter = 'Todos os arquivos (*.*)|*.*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object ToolBar3: TToolBar
        Left = 0
        Top = 266
        Width = 410
        Height = 26
        Align = alBottom
        ButtonHeight = 21
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 2
        object Label1: TLabel
          Left = 0
          Top = 2
          Width = 102
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Nome do arquivo:'
          ParentBiDiMode = False
          Layout = tlCenter
        end
        object Edit_namearq: TEdit
          Left = 102
          Top = 2
          Width = 300
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '*.*'
        end
      end
      object FileListBox1: TFileListBox
        Left = 0
        Top = 26
        Width = 410
        Height = 240
        Align = alClient
        FileEdit = Edit_namearq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 13
        MultiSelect = True
        ParentFont = False
        TabOrder = 3
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 320
      Width = 410
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
      TabOrder = 1
      object barimg: TImage
        Left = 1
        Top = 1
        Width = 408
        Height = 37
        Align = alClient
        Stretch = True
      end
      object SpeedButton1: TSpeedButton
        Left = 6
        Top = 4
        Width = 212
        Height = 32
        Hint = 'Selecionar lista de arquivos'
        Caption = 'Selecionar arquivos'
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
        Left = 221
        Top = 4
        Width = 185
        Height = 32
        Hint = 'Cancelar sele'#231#227'o de arquivos'
        Caption = 'Fechar'
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
  object ShellTreeView2: TShellTreeView
    Left = 0
    Top = 20
    Width = 193
    Height = 365
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    ShellComboBox = ShellComboBox1
    UseShellImages = True
    Align = alLeft
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 2
    OnChange = ShellTreeView2Change
  end
end
