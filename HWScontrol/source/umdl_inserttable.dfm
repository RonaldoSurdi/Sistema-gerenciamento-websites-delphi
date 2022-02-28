object mdl_inserttable: Tmdl_inserttable
  Left = 591
  Top = 282
  BorderStyle = bsDialog
  Caption = 'Inserir Tabela'
  ClientHeight = 261
  ClientWidth = 254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 254
    Height = 207
    Align = alClient
    Caption = 'Formata'#231#227'o da tabela:'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 24
      Width = 89
      Height = 13
      Caption = 'N'#250'mero de Linhas:'
    end
    object Label2: TLabel
      Left = 131
      Top = 24
      Width = 96
      Height = 13
      Caption = 'N'#250'mero de Colunas:'
    end
    object Label3: TLabel
      Left = 9
      Top = 88
      Width = 75
      Height = 13
      Caption = 'Largura Coluna:'
    end
    object Label4: TLabel
      Left = 131
      Top = 88
      Width = 74
      Height = 13
      Caption = 'Preenchimento:'
    end
    object SpinEdit1: TSpinEdit
      Left = 8
      Top = 40
      Width = 114
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 1
    end
    object SpinEdit2: TSpinEdit
      Left = 130
      Top = 40
      Width = 114
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 1
    end
    object SpinEdit3: TSpinEdit
      Left = 8
      Top = 104
      Width = 114
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 500
    end
    object SpinEdit4: TSpinEdit
      Left = 130
      Top = 104
      Width = 114
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
    end
    object SpinEdit5: TSpinEdit
      Left = 8
      Top = 162
      Width = 235
      Height = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 1
    end
    object CheckBox1: TCheckBox
      Left = 9
      Top = 144
      Width = 137
      Height = 17
      Caption = 'Exibir borda na tabela:'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 242
    Width = 254
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 207
    Width = 254
    Height = 35
    Align = alBottom
    ButtonHeight = 30
    Caption = 'ToolBar1'
    TabOrder = 2
    object bt_del1: TSpeedButton
      Left = 0
      Top = 2
      Width = 126
      Height = 30
      Hint = 'Cancelar edi'#231#227'o'
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
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
    end
    object bt_save1: TSpeedButton
      Left = 126
      Top = 2
      Width = 126
      Height = 30
      Hint = 'Inserir Tabela'
      Caption = 'Confirma'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
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
    end
  end
end
