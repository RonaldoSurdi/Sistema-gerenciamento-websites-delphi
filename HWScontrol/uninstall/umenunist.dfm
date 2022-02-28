object menuinst: Tmenuinst
  Left = 454
  Top = 379
  Width = 417
  Height = 345
  BorderIcons = [biSystemMenu]
  Caption = 'Desinstalar HWScontrol '
  Color = 16119285
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 257
    Width = 409
    Height = 54
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 8
      Width = 409
      Height = 46
      Align = alBottom
      ButtonHeight = 41
      Caption = 'ToolBar1'
      TabOrder = 0
      object bt_iniciar: TSpeedButton
        Left = 0
        Top = 2
        Width = 205
        Height = 41
        Hint = 'Instalar HWSwebserver'
        Caption = 'Desinstalar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Glyph.Data = {
          1E020000424D1E02000000000000B60000002800000012000000120000000100
          08000000000068010000120B0000120B0000200000000000000085FABD0076F3
          AB006EEB9C005FE28B0049D9700041D56B00AEB3B2003CD365003FD063003CCE
          620035CB5A0039CB5B0038C8580031C4520031C3570030C050002CBF4F0030BC
          4A00999999002BBB4A0028B847003BA338003CA03A0033993300318D23002983
          1900267C0C002073000026700000206F0000FFFFFF00000000001E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E00001E1E1E1E1E1E1E061212121E1E1E1E1E1E1E
          00001E1E1E1E1E1E1E1D1D1D12121E1E1E1E1E1E00001E1E1E1E1E1E1E1D0D10
          1D12121E1E1E1E1E00001E1E1E1E1E1E1E1D0E0F0F1D12121E1E1E1E00001E1E
          1E1E1E1E1E1B0C0C0F0F1B12121E1E1E00001E1E1E1E1E1E1E1D0A0A0E10131D
          12121E1E00001E1E1E1E1E1E1E1D080B0E0E11111D121E1E00001E1E1E1E1E1E
          1E1D09090C0E1010141C1E1E00001E1E1E1E1E1E1E1507080A0C0E10131D1E1E
          00001E1E1E1E1E1E1E150309090C0C0F1A1E1E1E00001E1E1E1E1E1E1E150205
          09090C191E1E1E1E00001E1E1E1E1E1E1E1601050509181E1E1E1E1E00001E1E
          1E1E1E1E1E15000405171E1E1E1E1E1E00001E1E1E1E1E1E1E150004151E1E1E
          1E1E1E1E00001E1E1E1E1E1E1E1616161E1E1E1E1E1E1E1E00001E1E1E1E1E1E
          1E1E1E1E1E1E1E1E1E1E1E1E00001E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
          0000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_iniciarClick
      end
      object bt_cancelar: TSpeedButton
        Left = 205
        Top = 2
        Width = 205
        Height = 41
        Hint = 'Cancelar instala'#231#227'o'
        Caption = 'Fechar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
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
        OnClick = bt_cancelarClick
      end
    end
  end
  object RichEdit_detalhes: TRichEdit
    Left = 0
    Top = 21
    Width = 409
    Height = 236
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 0
      Width = 73
      Height = 21
      Align = alLeft
      AutoSize = False
      Caption = '  Detalhes:'
      Layout = tlCenter
    end
    object Label_status: TLabel
      Left = 73
      Top = 0
      Width = 336
      Height = 21
      Align = alClient
      Alignment = taRightJustify
      AutoSize = False
      Layout = tlCenter
    end
  end
  object FileSearch1: TFileSearch
    OnFileFind = FileSearch1FileFind
    OnChangeFolder = FileSearch1ChangeFolder
    OnFinish = FileSearch1Finish
    Left = 40
    Top = 232
  end
  object XPManifest1: TXPManifest
    Left = 80
    Top = 232
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 173
    Top = 264
  end
end
