object Bt_digitarsenha: TBt_digitarsenha
  Left = 203
  Top = 181
  ActiveControl = Edit1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Autentica'#231#227'o'
  ClientHeight = 153
  ClientWidth = 253
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 253
    Height = 94
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 42
      Width = 43
      Height = 12
      Alignment = taRightJustify
      Caption = 'Usu'#225'rio:'
    end
    object Label2: TLabel
      Left = 15
      Top = 66
      Width = 35
      Height = 12
      Alignment = taRightJustify
      Caption = 'Senha:'
    end
    object lb_autenticacao_title: TLabel
      Left = 0
      Top = 9
      Width = 249
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Autentica'#231#227'o do sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Edit1: TEdit
      Left = 56
      Top = 40
      Width = 170
      Height = 20
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 56
      Top = 64
      Width = 170
      Height = 20
      PasswordChar = '*'
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 114
    Width = 253
    Height = 39
    Align = alBottom
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
      Width = 251
      Height = 37
      Align = alClient
      Stretch = True
    end
    object SpeedButton2: TSpeedButton
      Left = 4
      Top = 4
      Width = 247
      Height = 33
      Caption = '&Conectar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        08000000000000040000120B0000120B00000001000006000000FFFFFF0000FF
        FF00C0C0C0008080800000808000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000005050000000000000000000000000000000000000000000000
        0000000000000502020500000000000000000000000000000000000000000000
        0005050000050002030205000000000000000000000000000000000000000000
        0502020505030502030205000000000000000000000000000000000000000003
        0302020205050302030205000000000000000000000000000000000000000003
        0002030203000202030205000000000000000000000003050500000000000003
        0002030205030002030205000000000000000000000301040405000000000000
        0502030205000502030205000000000000000003050501010305000000000005
        0302030205050302030205000000000000000304040101030505000000000300
        0202030203000202030205000000000000000301010103050405000000000003
        0002030203000202030205000000000003050501010305040500000000000000
        0502030205030002030205000000000304040101030504050000000000000005
        0302030205030002030305000000030101010103050405000000000000000300
        0202030203000202000305000000030101010305040500000000000000000300
        0202030300020200020203050005010101030504050000000000000000000003
        0002030002020005050505050501010103050405000000000000000000000003
        0003000202050503030303030301010305040500000000000000000000000300
        0300020205030301010101010101030504050000000000000000000000030002
        0300020503010101010101010102010405000000000000000000000003000202
        0300020501010101020102010201020405000000000000000000000300020200
        0300050101010105010501020102010405000000000000000000030002020002
        0300030101010101050105010201020405000000000000000000030002020200
        0203030101010101010501050102010405000000000000000000030002020002
        0505030101010303050105010501020405000000000000000000030002020205
        0300030101050002020501050102040500000000000000000000030002020005
        0302030101050500020501010102040500000000000000000000000300020205
        0303050301050503000501010204050000000000000000000000000003000202
        0505050203030505050101040405000000000000000000000000000000030000
        0005030203050202020204050500000000000000000000000000000000000303
        0305030303000303030305000000000000000000000000000000000000000000
        0005030000000305000000000000000000000000000000000000000000000000
        0000050505050500000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = SpeedButton2Click
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 253
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 2
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 251
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object bt_fecharjn: TSpeedButton
      Left = 235
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
end
