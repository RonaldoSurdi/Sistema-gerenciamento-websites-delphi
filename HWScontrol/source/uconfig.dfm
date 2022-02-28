object fconfig: Tfconfig
  Left = 375
  Top = 218
  BorderStyle = bsSingle
  ClientHeight = 307
  ClientWidth = 326
  Color = 16119285
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object gbxCabecalho: TGroupBox
    Left = 0
    Top = 0
    Width = 326
    Height = 149
    Align = alClient
    Caption = 'Configura'#231#245'es do sistema'
    Color = 16119285
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label51: TLabel
      Left = 194
      Top = 104
      Width = 121
      Height = 12
      Caption = 'segundos de inatividade'
    end
    object xvrf01: TCheckBox
      Left = 10
      Top = 22
      Width = 145
      Height = 17
      Caption = 'Iniciar com o Windows'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object xvrf02: TCheckBox
      Left = 9
      Top = 41
      Width = 201
      Height = 17
      Caption = 'Conectar automaticamento no login'
      TabOrder = 1
    end
    object xvrf38: TCheckBox
      Left = 9
      Top = 61
      Width = 161
      Height = 17
      Caption = 'Atualiza'#231#245'es autom'#225'ticas'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object xvrf39: TCheckBox
      Left = 9
      Top = 81
      Width = 177
      Height = 17
      Caption = 'Bloquear sistema ao minimizar'
      TabOrder = 3
    end
    object xvrf40_ax1: TCheckBox
      Left = 9
      Top = 101
      Width = 97
      Height = 17
      Caption = 'Bloquear ap'#243's'
      TabOrder = 4
    end
    object xvrf40_ax2: TEdit
      Left = 109
      Top = 100
      Width = 65
      Height = 20
      TabOrder = 5
      Text = '0'
      OnChange = xvrf40_ax2Change
    end
    object xvrf40: TUpDown
      Left = 174
      Top = 100
      Width = 16
      Height = 20
      Associate = xvrf40_ax2
      Max = 1000
      Increment = 60
      TabOrder = 6
      Thousands = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 252
    Width = 326
    Height = 36
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16119285
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 322
      Align = alRight
      AutoSize = True
      ButtonHeight = 29
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 0
      object SpeedButton4: TSpeedButton
        Left = 0
        Top = 2
        Width = 161
        Height = 29
        Hint = 'Restaurar configura'#231#245'es'
        Caption = 'Restaurar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C30E0000C30E00000000000000000000CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CCCECFC9C8C5C9C5C3C8C5C2CED2D4CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6855C42875D42875D4298745799725497
          6E4F936B4E926B4D906A4D503B27CBCDCDCED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6A1704ED2BBA6D2BBA6CAB096C7AF93C7AF94C7AF
          94C7B293C7AF946E4F3BC6C0BCCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D69E6E4BD8B7A5D2BBA6D2BBA6E4CDC4C7AF94C7AE94C7AE93
          7E5B44CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6C08F8E906244F2D3D1E4CDC4D2BBA6D2BBA6C7B392C7AB939A6947CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6946545F8DADCFFE3E7E4CDC4D2BBA6E4CDC4C7AD94A27757CED3D6CED3
          D6CED3D6CED3D6CED3D679553F93675ACED3D6CED3D6CED3D6CED3D6CED3D68C
          6043EBBDBBEAD1C7EEE3D9E4CDC4D2BBA6D2BBA6C7AD947D5941C9C8C7CED3D6
          CED3D68D6143E3C8C5845C41C9C6C4CED3D6CED3D6CED3D6CED3D6C6969C8B60
          43E0C6B5E4DBCAFAF1EEE4CDC4E4CDC4E4CDC4C7B191A7896A895F43895F43C3
          978FEFE2E6885D42C8C4C1CED3D6CED3D6CED3D6CED3D6CED3D68A5F43E8CAC0
          D8C1AAFFE3E7E4CDC4E4CDC4E4CDC4E4CDC4C9B295C9B098CCB5A1EFD6DDFBF0
          EF91665DCDD1D3CED3D6CED3D6CED3D6CED3D6CED3D6845C41D9A99FD9C3ADF5
          DBD78C6043EECECBFFF6FEF6F0F3F6DEE4EEDEDBF6EEEDFFF7FF8D6143AF7D69
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6C595998D6143E5C5BA916648CED3
          D68C6043F4C7C9FBDEE1FBDEE1FBDEE1ECCAC5845B41A77356CDD1D3CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6895E42906344B9A596CED3D6CED3D6
          8F665F8F62448F62448C6043946759B2806FCED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object SpeedButton3: TSpeedButton
        Left = 161
        Top = 2
        Width = 161
        Height = 29
        Hint = 'Salvar configura'#231#245'es'
        Caption = 'Salvar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
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
        OnClick = SpeedButton3Click
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 149
    Width = 326
    Height = 103
    Align = alBottom
    Caption = 'Autentica'#231#227'o para acesso as configura'#231#245'es do sistema:'
    TabOrder = 2
    object Label9: TLabel
      Left = 10
      Top = 58
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Label8: TLabel
      Left = 10
      Top = 17
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object xvrf17: TEdit
      Left = 9
      Top = 72
      Width = 304
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
      Text = 'teste'
    end
    object xvrf16: TEdit
      Left = 9
      Top = 31
      Width = 304
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      Text = 'teste'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 288
    Width = 326
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
  end
  object OpenDialog_cp: TOpenDialog
    Title = 'Importar chave p'#250'blica'
    Left = 158
    Top = 65532
  end
  object OpenDialog_importar: TOpenDialog
    Filter = 
      'Configura'#231#227'o do WebServer (*.hws)|*.hws|Todos os arquivos (*.*)|' +
      '*.*'
    Title = 'Importar configura'#231#227'o'
    Left = 206
    Top = 65532
  end
  object SaveDialog_exportar: TSaveDialog
    DefaultExt = 'hws'
    FileName = 'HWSwebServer.hws'
    Filter = 
      'Configura'#231#227'o do WebServer (*.hws)|*.hws|Todos os arquivos (*.*)|' +
      '*.*'
    Title = 'Exportar configura'#231#227'o'
    Left = 262
    Top = 65532
  end
  object XPManifest1: TXPManifest
    Left = 245
    Top = 55
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
