object Bt_Mensagem: TBt_Mensagem
  Left = 429
  Top = 242
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Mensagem'
  ClientHeight = 143
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
    Height = 84
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object Mensagem_Texto: TLabel
      Left = 16
      Top = 16
      Width = 313
      Height = 65
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 104
    Width = 349
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
      Width = 347
      Height = 37
      Align = alClient
      Stretch = True
    end
    object SpeedButton2: TSpeedButton
      Left = 4
      Top = 4
      Width = 342
      Height = 32
      Caption = 'Fecha&r'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ShowHint = False
      OnClick = SpeedButton2Click
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
end
