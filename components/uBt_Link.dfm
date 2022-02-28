object Bt_Link: TBt_Link
  Left = 318
  Top = 292
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Sair'
  ClientHeight = 214
  ClientWidth = 349
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
  OnKeyPress = FormKeyPress
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 349
    Height = 77
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 73
      Height = 13
      Caption = 'Digite o link:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Edit_desc: TEdit
      Left = 16
      Top = 24
      Width = 313
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 250
      ParentFont = False
      TabOrder = 0
    end
    object RadioButton_getip2: TRadioButton
      Left = 227
      Top = 7
      Width = 57
      Height = 15
      Caption = 'Host'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadioButton_getip1: TRadioButton
      Left = 289
      Top = 7
      Width = 42
      Height = 15
      Caption = 'IP'
      TabOrder = 2
    end
    object CheckBox_oplnk: TCheckBox
      Left = 16
      Top = 48
      Width = 241
      Height = 17
      Caption = 'Abrir automaticamente ao receber link'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 349
    Height = 39
    Align = alTop
    BevelOuter = bvLowered
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object barimg: TImage
      Left = 1
      Top = 1
      Width = 347
      Height = 37
      Align = alClient
      Stretch = True
    end
    object bt_getip: TSpeedButton
      Left = 4
      Top = 4
      Width = 341
      Height = 32
      Caption = 'Confirma'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF00000000000000000000000000000000000000000000000000000000
        0000000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        0000BFBFBF000000000000BFBFBF000000000000000000000000000000000000
        FFFFFFFFFFFF000000000000000000FFFFFF000000BFBFBF0000BFBFBFFFFF00
        000000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFFFFF00000000FFFFFF00FF
        FFFFFFFF00FFFF000000000000000000000000000000FFFFFFFFFFFF000000FF
        FFFF000000BFBFBF0000BFBFBFFFFF0000000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFF000000BFBFBF
        0000BFBFBFFFFF00000000FFFFFF00FFFFFFFFFF00FFFF000000000000000000
        000000000000FFFFFFFFFFFF000000FFFFFF000000BFBFBF0000BFBFBFFFFF00
        00000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF0000
        00FFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFFFFF00000000FFFFFF00FF
        FF000000000000000000000000000000000000000000FFFFFFFFFFFF000000FF
        FFFF000000BFBFBF0000BFBFBF000000000000000000FFFFFF00FFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBF000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000FFFFFFFFFF
        FF000000000000000000000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
        FFFF000000BFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF
        0000FF0000FF0000FF0000FF0000FF0000000000FFFFFF000000BFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF0000}
      Layout = blGlyphRight
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = bt_getipClick
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 2
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 347
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object bt_fecharjn: TSpeedButton
      Left = 331
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
  object AddressListBox: TListBox
    Left = 0
    Top = 136
    Width = 349
    Height = 59
    Align = alClient
    ItemHeight = 12
    TabOrder = 3
  end
  object StatusBar_getip: TStatusBar
    Left = 0
    Top = 195
    Width = 349
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
end
