object adm_entidades: Tadm_entidades
  Left = 333
  Top = 175
  BorderStyle = bsSingle
  ClientHeight = 393
  ClientWidth = 356
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 374
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
    object GroupBox1: TGroupBox
      Left = 3
      Top = 2
      Width = 347
      Height = 366
      Align = alRight
      Caption = 'Ficha:'
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
        Width = 343
        Height = 321
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 325
          Height = 503
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 307
            Width = 35
            Height = 12
            Caption = 'Cidade'
          end
          object Label2: TLabel
            Left = 9
            Top = 385
            Width = 67
            Height = 12
            Caption = 'Observa'#231#245'es'
          end
          object bt_buscacep: TSpeedButton
            Left = 242
            Top = 356
            Width = 80
            Height = 22
            Hint = 'Busca cep'
            Caption = 'Busca'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              36020000424D3602000000000000360100002800000010000000100000000100
              08000000000000010000120B0000120B000040000000000000003D363000E8E8
              E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
              C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
              CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
              61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
              7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
              DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
              6900FFFFFF000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000032323232320A
              012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
              190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
              0033151414172D1522320A13312714140033151414142731130A010D2B141414
              131A11141414142B0D01291B1714141423332314141414171B29292420060606
              1E33331C060606202429011229182017170B33332F18182912010A2A0B250D33
              000200333125250B2A0A3215211F02333333333313050521153232022308090B
              0C002408090908230232323216070F1018181818100F07163232323232300C04
              0F14140F040C30323232323232322C0323000023032C32323232}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_buscacepClick
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
            Top = 58
            Width = 316
            Height = 20
            EditLabel.Width = 64
            EditLabel.Height = 12
            EditLabel.Caption = 'Raz'#227'o Social'
            MaxLength = 255
            TabOrder = 1
          end
          object lbcp3: TLabeledEdit
            Left = 8
            Top = 93
            Width = 316
            Height = 20
            EditLabel.Width = 43
            EditLabel.Height = 12
            EditLabel.Caption = 'Fantasia'
            MaxLength = 255
            TabOrder = 2
          end
          object lbcp5: TLabeledEdit
            Left = 166
            Top = 130
            Width = 158
            Height = 20
            EditLabel.Width = 147
            EditLabel.Height = 12
            EditLabel.Caption = 'Inscri'#231#227'o Estadual/Municipal'
            MaxLength = 9
            TabOrder = 3
            OnKeyPress = lbcp5KeyPress
          end
          object lbcp4: TLabeledEdit
            Left = 8
            Top = 130
            Width = 158
            Height = 20
            EditLabel.Width = 28
            EditLabel.Height = 12
            EditLabel.Caption = 'CNPJ'
            MaxLength = 15
            TabOrder = 4
            OnKeyPress = lbcp4KeyPress
          end
          object lbcp7: TLabeledEdit
            Left = 166
            Top = 170
            Width = 158
            Height = 20
            EditLabel.Width = 53
            EditLabel.Height = 12
            EditLabel.Caption = 'Telefone 2'
            MaxLength = 20
            TabOrder = 5
          end
          object lbcp6: TLabeledEdit
            Left = 8
            Top = 170
            Width = 158
            Height = 20
            EditLabel.Width = 53
            EditLabel.Height = 12
            EditLabel.Caption = 'Telefone 1'
            MaxLength = 20
            TabOrder = 6
          end
          object lbcp10: TLabeledEdit
            Left = 8
            Top = 245
            Width = 260
            Height = 20
            EditLabel.Width = 47
            EditLabel.Height = 12
            EditLabel.Caption = 'Endere'#231'o'
            MaxLength = 255
            TabOrder = 7
          end
          object lbcp8: TLabeledEdit
            Left = 8
            Top = 206
            Width = 158
            Height = 20
            EditLabel.Width = 18
            EditLabel.Height = 12
            EditLabel.Caption = 'Fax'
            MaxLength = 20
            TabOrder = 8
          end
          object lbcp9: TLabeledEdit
            Left = 166
            Top = 206
            Width = 158
            Height = 20
            EditLabel.Width = 36
            EditLabel.Height = 12
            EditLabel.Caption = 'Celular'
            MaxLength = 20
            TabOrder = 9
          end
          object lbcp11: TLabeledEdit
            Left = 269
            Top = 245
            Width = 54
            Height = 20
            EditLabel.Width = 39
            EditLabel.Height = 12
            EditLabel.Caption = 'N'#250'mero'
            MaxLength = 11
            TabOrder = 10
            OnKeyPress = lbcp11KeyPress
          end
          object lbcp12: TLabeledEdit
            Left = 8
            Top = 283
            Width = 316
            Height = 20
            EditLabel.Width = 69
            EditLabel.Height = 12
            EditLabel.Caption = 'Complemento'
            MaxLength = 255
            TabOrder = 11
          end
          object lbcp13: TComboBox
            Left = 8
            Top = 321
            Width = 263
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 12
            OnChange = lbcp13Change
          end
          object lbcp14: TLabeledEdit
            Left = 272
            Top = 321
            Width = 50
            Height = 20
            TabStop = False
            Color = 16119285
            EditLabel.Width = 14
            EditLabel.Height = 12
            EditLabel.Caption = 'UF'
            MaxLength = 2
            ReadOnly = True
            TabOrder = 13
          end
          object lbcp15: TLabeledEdit
            Left = 8
            Top = 358
            Width = 233
            Height = 20
            EditLabel.Width = 22
            EditLabel.Height = 12
            EditLabel.Caption = 'CEP'
            MaxLength = 9
            TabOrder = 14
            OnKeyPress = lbcp15KeyPress
          end
          object lbcp16: TMemo
            Left = 8
            Top = 399
            Width = 316
            Height = 93
            ScrollBars = ssBoth
            TabOrder = 15
          end
        end
      end
      object ToolBar1: TToolBar
        Left = 2
        Top = 335
        Width = 343
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 1
        object Panel3: TPanel
          Left = 0
          Top = 2
          Width = 194
          Height = 22
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
        end
        object bt_save: TSpeedButton
          Left = 194
          Top = 2
          Width = 146
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 374
    Width = 356
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
  end
  object Timer1: TTimer
    Interval = 300000
    OnTimer = Timer1Timer
    Left = 354
    Top = 342
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
  object ApplicationEvents1: TApplicationEvents
    OnActionExecute = ApplicationEvents1ActionExecute
    Left = 173
    Top = 264
  end
end
