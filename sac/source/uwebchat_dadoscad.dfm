object webchat_dadoscad: Twebchat_dadoscad
  Left = 487
  Top = 238
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'Dados cadastrais'
  ClientHeight = 523
  ClientWidth = 341
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 341
    Height = 504
    Align = alClient
    Caption = 'Dados cadastrais:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object ScrollBox3: TScrollBox
      Left = 2
      Top = 14
      Width = 337
      Height = 445
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 316
        Height = 862
        BevelOuter = bvNone
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 316
          Height = 129
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Label25: TLabel
            Left = 66
            Top = 87
            Width = 87
            Height = 12
            Caption = '(de 4 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 61
            Top = 51
            Width = 87
            Height = 12
            Caption = '(de 4 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 225
            Top = 6
            Width = 86
            Height = 12
            Alignment = taRightJustify
            Caption = 'Date de cadastro'
          end
          object lbcp_dtcad2: TLabel
            Left = 152
            Top = 21
            Width = 161
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Layout = tlCenter
          end
          object xcodigo2: TLabeledEdit
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
          object xcpw6: TLabeledEdit
            Left = 9
            Top = 66
            Width = 304
            Height = 20
            EditLabel.Width = 37
            EditLabel.Height = 12
            EditLabel.Caption = 'Usu'#225'rio'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clBlack
            EditLabel.Font.Height = -9
            EditLabel.Font.Name = 'Verdana'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            MaxLength = 30
            TabOrder = 1
          end
          object xcpw7: TLabeledEdit
            Left = 9
            Top = 103
            Width = 151
            Height = 20
            EditLabel.Width = 48
            EditLabel.Height = 12
            EditLabel.Caption = 'Password'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clBlack
            EditLabel.Font.Height = -9
            EditLabel.Font.Name = 'Verdana'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            MaxLength = 30
            PasswordChar = '*'
            TabOrder = 2
          end
          object xcpw7_ax: TLabeledEdit
            Left = 161
            Top = 103
            Width = 151
            Height = 20
            EditLabel.Width = 102
            EditLabel.Height = 12
            EditLabel.Caption = 'Redigite o Password'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clBlack
            EditLabel.Font.Height = -9
            EditLabel.Font.Name = 'Verdana'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            MaxLength = 30
            PasswordChar = '*'
            TabOrder = 3
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 168
          Width = 316
          Height = 153
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
          object xcpw9: TLabeledEdit
            Left = 9
            Top = 13
            Width = 304
            Height = 20
            EditLabel.Width = 81
            EditLabel.Height = 12
            EditLabel.Caption = 'Dica para senha'
            MaxLength = 200
            TabOrder = 0
          end
          object xcpw3: TLabeledEdit
            Left = 9
            Top = 53
            Width = 304
            Height = 20
            EditLabel.Width = 64
            EditLabel.Height = 12
            EditLabel.Caption = 'Raz'#227'o Social'
            MaxLength = 255
            TabOrder = 1
          end
          object xcpw5: TLabeledEdit
            Left = 8
            Top = 90
            Width = 304
            Height = 20
            EditLabel.Width = 138
            EditLabel.Height = 12
            EditLabel.Caption = 'Respons'#225'vel pela entidade:'
            MaxLength = 100
            TabOrder = 2
          end
          object xcpw22: TLabeledEdit
            Left = 9
            Top = 131
            Width = 152
            Height = 20
            EditLabel.Width = 73
            EditLabel.Height = 12
            EditLabel.Caption = 'Insc. Estadual'
            MaxLength = 255
            TabOrder = 3
          end
          object xcpw23: TLabeledEdit
            Left = 160
            Top = 131
            Width = 151
            Height = 20
            EditLabel.Width = 53
            EditLabel.Height = 12
            EditLabel.Caption = 'CNPJ/CPF'
            MaxLength = 255
            TabOrder = 4
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 321
          Width = 316
          Height = 78
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 2
          object Label29: TLabel
            Left = 76
            Top = 2
            Width = 106
            Height = 12
            Caption = 'Setor do respons'#225'vel'
          end
          object Label30: TLabel
            Left = 76
            Top = 39
            Width = 115
            Height = 12
            Caption = 'Fun'#231#227'o do respons'#225'vel'
          end
          object xcpw24: TLabeledEdit
            Left = 9
            Top = 17
            Width = 65
            Height = 20
            EditLabel.Width = 35
            EditLabel.Height = 12
            EditLabel.Caption = 'C'#243'digo'
            MaxLength = 11
            TabOrder = 0
            Text = '0'
          end
          object xcpw24_ax: TComboBox
            Left = 74
            Top = 17
            Width = 239
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 1
          end
          object xcpw25_ax: TComboBox
            Left = 74
            Top = 55
            Width = 239
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 2
          end
          object xcpw25: TLabeledEdit
            Left = 9
            Top = 55
            Width = 65
            Height = 20
            EditLabel.Width = 35
            EditLabel.Height = 12
            EditLabel.Caption = 'C'#243'digo'
            MaxLength = 11
            TabOrder = 3
            Text = '0'
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 399
          Width = 316
          Height = 463
          Align = alClient
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object Label31: TLabel
            Left = 9
            Top = -2
            Width = 90
            Height = 12
            Caption = 'Data do Contrato:'
          end
          object SpeedButton8: TSpeedButton
            Left = 241
            Top = 279
            Width = 70
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
          end
          object Label33: TLabel
            Left = 9
            Top = 329
            Width = 169
            Height = 12
            Caption = 'Mensagem de Inicial para o Chat:'
          end
          object Label32: TLabel
            Left = 9
            Top = 229
            Width = 35
            Height = 12
            Caption = 'Cidade'
          end
          object xcpw4: TDateTimePicker
            Left = 8
            Top = 13
            Width = 303
            Height = 20
            Date = 38239.881269664350000000
            Time = 38239.881269664350000000
            TabOrder = 0
          end
          object xcpw10: TLabeledEdit
            Left = 8
            Top = 54
            Width = 151
            Height = 20
            EditLabel.Width = 53
            EditLabel.Height = 12
            EditLabel.Caption = 'Telefone 1'
            MaxLength = 16
            TabOrder = 1
          end
          object xcpw11: TLabeledEdit
            Left = 160
            Top = 54
            Width = 151
            Height = 20
            EditLabel.Width = 53
            EditLabel.Height = 12
            EditLabel.Caption = 'Telefone 2'
            MaxLength = 16
            TabOrder = 2
          end
          object xcpw12: TLabeledEdit
            Left = 8
            Top = 90
            Width = 151
            Height = 20
            EditLabel.Width = 36
            EditLabel.Height = 12
            EditLabel.Caption = 'Celular'
            MaxLength = 16
            TabOrder = 3
          end
          object xcpw13: TLabeledEdit
            Left = 8
            Top = 130
            Width = 304
            Height = 20
            EditLabel.Width = 32
            EditLabel.Height = 12
            EditLabel.Caption = 'e-mail'
            MaxLength = 255
            TabOrder = 4
          end
          object xcpw16: TLabeledEdit
            Left = 255
            Top = 168
            Width = 55
            Height = 20
            EditLabel.Width = 39
            EditLabel.Height = 12
            EditLabel.Caption = 'N'#250'mero'
            MaxLength = 11
            TabOrder = 5
          end
          object xcpw15: TLabeledEdit
            Left = 8
            Top = 168
            Width = 246
            Height = 20
            EditLabel.Width = 47
            EditLabel.Height = 12
            EditLabel.Caption = 'Endere'#231'o'
            MaxLength = 255
            TabOrder = 6
          end
          object xcpw17: TLabeledEdit
            Left = 8
            Top = 206
            Width = 304
            Height = 20
            EditLabel.Width = 69
            EditLabel.Height = 12
            EditLabel.Caption = 'Complemento'
            MaxLength = 255
            TabOrder = 7
          end
          object xcpw18_axuf: TLabeledEdit
            Left = 259
            Top = 244
            Width = 51
            Height = 20
            TabStop = False
            Color = 16119285
            EditLabel.Width = 14
            EditLabel.Height = 12
            EditLabel.Caption = 'UF'
            MaxLength = 2
            ReadOnly = True
            TabOrder = 8
          end
          object xcpw18_ax: TComboBox
            Left = 8
            Top = 244
            Width = 249
            Height = 20
            ItemHeight = 12
            MaxLength = 255
            TabOrder = 9
          end
          object xcpw19: TLabeledEdit
            Left = 8
            Top = 281
            Width = 233
            Height = 20
            EditLabel.Width = 97
            EditLabel.Height = 12
            EditLabel.Caption = 'CEP (00.000-000)'
            MaxLength = 10
            TabOrder = 10
          end
          object xcpw31: TCheckBox
            Left = 13
            Top = 308
            Width = 204
            Height = 17
            Caption = 'Receber not'#237'cias e informativos'
            Checked = True
            State = cbChecked
            TabOrder = 11
          end
          object xcpw27: TMemo
            Left = 8
            Top = 343
            Width = 304
            Height = 114
            ScrollBars = ssBoth
            TabOrder = 12
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 129
          Width = 316
          Height = 39
          Align = alTop
          BevelOuter = bvNone
          Caption = '..'
          ParentColor = True
          TabOrder = 4
          object xcpw8: TLabeledEdit
            Left = 9
            Top = 14
            Width = 304
            Height = 20
            EditLabel.Width = 69
            EditLabel.Height = 12
            EditLabel.Caption = 'Frase secreta'
            MaxLength = 200
            PasswordChar = '*'
            TabOrder = 0
          end
        end
      end
    end
    object ToolBar4: TToolBar
      Left = 2
      Top = 459
      Width = 337
      Height = 43
      Align = alBottom
      ButtonHeight = 35
      Caption = 'ToolBar1'
      TabOrder = 1
      object Panel1: TPanel
        Left = 0
        Top = 2
        Width = 185
        Height = 35
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
      end
      object Panel6: TPanel
        Left = 185
        Top = 2
        Width = 8
        Height = 35
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        Visible = False
      end
      object bt_save2: TSpeedButton
        Left = 193
        Top = 2
        Width = 143
        Height = 35
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
        OnClick = bt_save2Click
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 504
    Width = 341
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 105
    Top = 208
  end
end
