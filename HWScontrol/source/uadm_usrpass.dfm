object adm_usrpass: Tadm_usrpass
  Left = 374
  Top = 209
  BorderStyle = bsSingle
  ClientHeight = 314
  ClientWidth = 302
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 295
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
      Left = 2
      Top = 2
      Width = 294
      Height = 287
      Align = alClient
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
        Width = 290
        Height = 242
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 285
          Height = 215
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 190
            Top = 8
            Width = 87
            Height = 12
            Caption = '(de 6 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 190
            Top = 48
            Width = 87
            Height = 12
            Caption = '(de 6 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 190
            Top = 136
            Width = 87
            Height = 12
            Caption = '(de 6 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 190
            Top = 96
            Width = 87
            Height = 12
            Caption = '(de 6 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 190
            Top = 176
            Width = 87
            Height = 12
            Caption = '(de 6 '#224' 30 digitos)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object lbcp1: TLabeledEdit
            Left = 8
            Top = 22
            Width = 273
            Height = 20
            EditLabel.Width = 43
            EditLabel.Height = 12
            EditLabel.Caption = 'Usu'#225'rio:'
            MaxLength = 30
            TabOrder = 0
          end
          object lbcp2: TLabeledEdit
            Left = 8
            Top = 62
            Width = 273
            Height = 20
            EditLabel.Width = 35
            EditLabel.Height = 12
            EditLabel.Caption = 'Senha:'
            MaxLength = 30
            PasswordChar = '*'
            TabOrder = 1
          end
          object lbcp4: TLabeledEdit
            Left = 8
            Top = 150
            Width = 273
            Height = 20
            EditLabel.Width = 63
            EditLabel.Height = 12
            EditLabel.Caption = 'Nova senha:'
            MaxLength = 30
            PasswordChar = '*'
            TabOrder = 3
          end
          object lbcp3: TLabeledEdit
            Left = 8
            Top = 110
            Width = 273
            Height = 20
            EditLabel.Width = 70
            EditLabel.Height = 12
            EditLabel.Caption = 'Novo usu'#225'rio:'
            MaxLength = 30
            TabOrder = 2
          end
          object lbcp5: TLabeledEdit
            Left = 8
            Top = 190
            Width = 273
            Height = 20
            EditLabel.Width = 105
            EditLabel.Height = 12
            EditLabel.Caption = 'Redigite nova senha:'
            MaxLength = 30
            PasswordChar = '*'
            TabOrder = 4
          end
        end
      end
      object ToolBar1: TToolBar
        Left = 2
        Top = 256
        Width = 290
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 1
        object bt_save: TSpeedButton
          Left = 0
          Top = 2
          Width = 144
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
        object bt_del: TSpeedButton
          Left = 144
          Top = 2
          Width = 144
          Height = 22
          Hint = 'Excluir registro selecionado'
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
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 295
    Width = 302
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
    Left = 69
    Top = 247
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
