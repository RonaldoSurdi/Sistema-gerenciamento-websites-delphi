object Bt_bases: TBt_bases
  Left = 443
  Top = 165
  ActiveControl = ed_tabelas
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Sair'
  ClientHeight = 306
  ClientWidth = 376
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
    Width = 376
    Height = 247
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object ToolBar6: TToolBar
      Left = 2
      Top = 2
      Width = 368
      Height = 29
      ButtonHeight = 21
      Caption = 'ToolBar2'
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 2
        Width = 53
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Localizar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object ed_tabelas: TEdit
        Left = 53
        Top = 2
        Width = 308
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = ed_tabelasKeyPress
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 31
      Width = 368
      Height = 15
      Align = alTop
      BevelOuter = bvNone
      Color = 16119285
      TabOrder = 1
      object count_tab: TLabel
        Left = 305
        Top = -1
        Width = 6
        Height = 14
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 313
        Top = -1
        Width = 50
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 0
        Top = 0
        Width = 84
        Height = 12
        Caption = 'Lista de tabelas:'
      end
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 46
      Width = 368
      Height = 195
      Align = alClient
      Color = clWhite
      FixedColor = 15066597
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -9
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      OnKeyDown = DBGrid2KeyDown
      OnKeyPress = DBGrid2KeyPress
      OnKeyUp = DBGrid2KeyUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 267
    Width = 376
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
      Width = 374
      Height = 37
      Align = alClient
      Stretch = True
    end
    object SpeedButton1: TSpeedButton
      Left = 4
      Top = 4
      Width = 189
      Height = 33
      Caption = 'Selecionar'
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 193
      Top = 3
      Width = 184
      Height = 33
      Caption = 'Fechar'
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
    Width = 376
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 2
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 374
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object bt_fecharjn: TSpeedButton
      Left = 355
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
  object XPManifest1: TXPManifest
    Left = 189
    Top = 63
  end
end
