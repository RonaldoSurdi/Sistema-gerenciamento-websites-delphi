object form_restrict: Tform_restrict
  Left = 512
  Top = 395
  Width = 610
  Height = 466
  Caption = 'Permiss'#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox_per: TGroupBox
    Left = 0
    Top = 0
    Width = 602
    Height = 409
    Align = alClient
    Caption = 'Lista de usu'#225'rios:'
    Color = 15132390
    ParentColor = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 598
      Height = 325
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
    object Panel1: TPanel
      Left = 2
      Top = 340
      Width = 598
      Height = 67
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 1
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 336
        Height = 63
        Align = alClient
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object ToolBar4: TToolBar
        Left = 338
        Top = 2
        Width = 258
        Height = 63
        Align = alRight
        AutoSize = True
        ButtonHeight = 55
        Caption = 'pn_barra'
        EdgeBorders = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 2
          Width = 129
          Height = 55
          Hint = 'Adicionar novo Usu'#225'rio'
          Caption = 'Adicionar Usu'#225'rio'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            9E020000424D9E02000000000000360100002800000012000000120000000100
            08000000000068010000120B0000120B00004000000000000000835C36005A85
            AD0000FF0000F2D4B100E1C9AB004E7BA60000CCFF009966660082FEFE009999
            9900EDF1F100CCFFFF008A633D00AE885E008DA6BD003253760033CCFF00FDF1
            DD00E1C7A300FBE9C400FEFCF100C6A584009E794D00B0B6B500FEF8EF00FDF0
            D700E4D1BC00956E4700FEF6E600A5835F00FFFFFF00B8956A00FCEED00042D5
            FE00E9D8C300E2D3B900FFF7DE00FEFAF600E4D3B900816039008B664000B18A
            63008CAAC500537CA50095744D008F6B4300FEFCF700F4D3B200E9D8BD00FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000313131313131
            3131313131313131313131310000313131313131090909090909090909093131
            0000313131313106050505050505050505093131000031313131310611111120
            201313130509313100003131313131061C323232323232130509313100003131
            313131061C1C1C11112020200509313100003131313131061832323232323220
            0509313100003131313131061818181C1C111111050931310000313131313106
            25323232323208080509313100001E1E1E1E1E062E2E2E180806060505093131
            00001E1E1E1E1E062E323232081414080509313100001E1E1E1E1E062E1E1E2E
            082508050931313100001E1E1E1E1E062E2E2E2E080805093131313100001E1E
            1E1E1E0606060606060617313131313100001E1E1E1E1E1E1E1E1E1E1E313131
            3131313100001E1E1E1E1E1E1E1E1E1E1E3131313131313100001E1E1E1E1E1E
            1E1E1E1E1E3131313131313100001E1E1E1E1E1E1E1E1E1E1E31313131313131
            0000}
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton7: TSpeedButton
          Left = 129
          Top = 2
          Width = 129
          Height = 55
          Hint = 'Remover Usu'#225'rio Selecionado'
          Caption = 'Remover Usu'#225'rio'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Layout = blGlyphTop
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton7Click
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 409
    Width = 602
    Height = 19
    Panels = <>
  end
end
