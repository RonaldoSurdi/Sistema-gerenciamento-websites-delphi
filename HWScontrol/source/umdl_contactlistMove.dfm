object mdl_contactlistMove: Tmdl_contactlistMove
  Left = 645
  Top = 292
  Width = 399
  Height = 470
  BorderIcons = [biSystemMenu]
  Caption = 'Mover para Grupo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar_bts: TToolBar
    Left = 0
    Top = 362
    Width = 383
    Height = 51
    Align = alBottom
    ButtonHeight = 45
    TabOrder = 0
    object Panel6: TPanel
      Left = 0
      Top = 2
      Width = 8
      Height = 45
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      Visible = False
    end
    object bt_new: TSpeedButton
      Left = 8
      Top = 2
      Width = 182
      Height = 45
      Hint = 'Gravar dados'
      Caption = 'Confirma'
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
      OnClick = bt_newClick
    end
    object bt_update: TSpeedButton
      Left = 190
      Top = 2
      Width = 182
      Height = 45
      Hint = 'Cancelar processo'
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
      OnClick = bt_updateClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 413
    Width = 383
    Height = 19
    Panels = <>
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 383
    Height = 362
    Align = alClient
    Caption = 'Selecione o novo Grupo de Classifica'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBGrid3: TDBGrid
      Left = 2
      Top = 22
      Width = 379
      Height = 319
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -9
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
    end
    object Panel8: TPanel
      Left = 2
      Top = 341
      Width = 379
      Height = 19
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object TOTAL_grpreg: TLabel
        Left = 369
        Top = 0
        Width = 10
        Height = 19
        Align = alRight
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 264
        Top = 0
        Width = 105
        Height = 19
        Align = alRight
        Alignment = taRightJustify
        Caption = 'Total de Itens: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 329
    Top = 204
  end
end
