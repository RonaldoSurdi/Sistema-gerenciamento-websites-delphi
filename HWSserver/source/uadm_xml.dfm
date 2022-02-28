object adm_xml: Tadm_xml
  Left = 171
  Top = 121
  BorderStyle = bsNone
  ClientHeight = 393
  ClientWidth = 739
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object panel_arqs: TPanel
    Left = 0
    Top = 20
    Width = 739
    Height = 356
    Align = alClient
    BevelInner = bvLowered
    Color = 15461355
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 735
      Height = 352
      Align = alClient
      BevelOuter = bvLowered
      Color = 16119285
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 411
        Top = 1
        Height = 350
      end
      object GroupBox1: TGroupBox
        Left = 414
        Top = 1
        Width = 320
        Height = 350
        Align = alClient
        Caption = 'XML encoder:'
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object lbtitlexml: TLabel
          Left = 80
          Top = 0
          Width = 77
          Height = 14
          Caption = '<Arquivo novo>'
        end
        object editor_xml: TRichEdit
          Left = 2
          Top = 45
          Width = 316
          Height = 303
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
        end
        object ToolBar1: TToolBar
          Left = 2
          Top = 16
          Width = 316
          Height = 29
          Caption = 'ToolBar1'
          TabOrder = 1
          object bt_novo: TSpeedButton
            Left = 0
            Top = 2
            Width = 23
            Height = 22
            Hint = 'Novo arquivo'
            Flat = True
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
              00003131313131161B1B2D282828272700093131000031313131311D11111120
              2013131300093131000031313131311D1C111111202020130009313100003131
              3131310D1C1C1C111120202000093131000031313131312918181C1C11111120
              0009313100003131313131291818181C1C111111000931310000313131313107
              252518181C222204000931310000310605311E072E0E0B182315152C00093131
              0000310A062B0807010B2E2E2614141200093131000031310B06100F081E1E2E
              1A252F00093131310000312B2B101E100101012A1A0300093131313100001E1E
              101E1E1E10080B1E1F1F173131313131000031312B101E100605313131313131
              313131310000312B0831212B08062B3131313131313131310000310A31311E2B
              310A063131313131313131310000313131311E31313131313131313131313131
              0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_novoClick
          end
          object bt_abrir: TSpeedButton
            Left = 23
            Top = 2
            Width = 23
            Height = 22
            Hint = 'Abrir arquivo'
            Flat = True
            Glyph.Data = {
              96010000424D9601000000000000B600000028000000100000000E0000000100
              080000000000E0000000120B0000120B00002000000000000000FFFFFF00F7FF
              FF0099FFFF0094F7FF0083ECFF00DDDFDF007CDFFF006CD6FF0066CCFF00CCCC
              CC0066CCCC00BFC3C200BDBDBD0043B3DE0021B0CE00199CC4002D92C5001B81
              B300848484001074A4007272720066666600FFFFFF0000000000000000000000
              0000000000000000000000000000000000000000000000000000161605090909
              09090909090909051616160B1214141414141414141414120B16051313131313
              131313131313131512050F0F02070707070707070707101314090F0F06020606
              0606060606060D13150C0F0E0D0204040404040404040D0F15120F0D0F020303
              0303030303030D0A13140F070F040202020202020202080313140F060F0A0000
              010000000000040013120F040D0F0F0F0F0F0F0F0F0F0F0F110B0F0303030303
              0300000000000F130B160F0002020202000F0F0F0F0F0F051616160E00000000
              0F0B161616161616161616160E0E0E0E05161616161616161616}
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_abrirClick
          end
          object bt_salvar: TSpeedButton
            Left = 46
            Top = 2
            Width = 23
            Height = 22
            Hint = 'Salvar arquivo'
            Flat = True
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
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_salvarClick
          end
          object Bevel1: TBevel
            Left = 69
            Top = 2
            Width = 12
            Height = 22
            Shape = bsLeftLine
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 410
        Height = 350
        Align = alLeft
        Caption = 'Formula XML:'
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Panel7: TPanel
          Left = 2
          Top = 14
          Width = 406
          Height = 30
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label5: TLabel
            Left = 6
            Top = 8
            Width = 27
            Height = 13
            Caption = 'URL:'
          end
          object bt_selecionar: TSpeedButton
            Left = 380
            Top = 3
            Width = 23
            Height = 22
            Hint = 'Gerar arquivo XML'
            Flat = True
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000012000000120000000100
              040000000000D8000000120B0000120B00001000000000000000FFFFFF0033FF
              FF0033CCFF009B9B9B000099CC00006699005050500000000700FFFFFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000007600000000000000000000004760000000000000000000004
              1760000000000000000000004176000000000000000000004117600000000000
              0000000004017600000000000000005555201760000000000000000520110070
              0000000000000000521176000000000000000000050117600000000000000055
              5550117600000000000000050111001500000000000000005011760000000000
              0000000005011760000000000000000000501176000000000000000000044444
              000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_selecionarClick
          end
          object ed_url: TEdit
            Left = 34
            Top = 5
            Width = 343
            Height = 21
            TabOrder = 0
            Text = 'http://www.hws.com.br/musicshws/'
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 44
          Width = 406
          Height = 304
          Align = alClient
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 1
          object Splitter2: TSplitter
            Left = 202
            Top = 0
            Height = 304
            Beveled = True
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 202
            Height = 304
            Align = alLeft
            Caption = 'Selecione os arquivos mp3'
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object bt_selectpath: TSpeedButton
              Left = 175
              Top = -3
              Width = 23
              Height = 22
              Hint = 'Selecione o path'
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000B600000028000000100000000E0000000100
                080000000000E0000000120B0000120B00002000000000000000FFFFFF00F7FF
                FF0099FFFF0094F7FF0083ECFF00DDDFDF007CDFFF006CD6FF0066CCFF00CCCC
                CC0066CCCC00BFC3C200BDBDBD0043B3DE0021B0CE00199CC4002D92C5001B81
                B300848484001074A4007272720066666600FFFFFF0000000000000000000000
                0000000000000000000000000000000000000000000000000000161605090909
                09090909090909051616160B1214141414141414141414120B16051313131313
                131313131313131512050F0F02070707070707070707101314090F0F06020606
                0606060606060D13150C0F0E0D0204040404040404040D0F15120F0D0F020303
                0303030303030D0A13140F070F040202020202020202080313140F060F0A0000
                010000000000040013120F040D0F0F0F0F0F0F0F0F0F0F0F110B0F0303030303
                0300000000000F130B160F0002020202000F0F0F0F0F0F051616160E00000000
                0F0B161616161616161616160E0E0E0E05161616161616161616}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_selectpathClick
            end
            object lista_arq: TCheckListBox
              Left = 2
              Top = 15
              Width = 198
              Height = 287
              Hint = 'Filtragem de arquivos'
              Align = alClient
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              HeaderBackgroundColor = clWhite
              ItemHeight = 12
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = lista_arqClick
            end
          end
          object GroupBox4: TGroupBox
            Left = 205
            Top = 0
            Width = 201
            Height = 304
            Align = alClient
            Caption = 'Legenda:'
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object bt_importlegend: TSpeedButton
              Left = 174
              Top = -4
              Width = 23
              Height = 22
              Hint = 'Importar legenda'
              Flat = True
              Glyph.Data = {
                BE010000424DBE01000000000000560000002800000012000000120000000100
                08000000000068010000120B0000120B00000800000000000000FFFFFF0000FF
                FF00CED3D600A4A0A0006666660000000000FFFFFF0000000000000000000000
                0000030303030303030303030000000000000000000505050505050505050503
                0000000000000000000500000000000000000503000000000000000000050000
                0000000500000503000000000000000000050000000005050500050300000000
                0003030303050000000505050505050300000004050505050505050505000005
                0000050300000004010105050502050105000005000005030000000401010505
                0502050105050500000005030000000401010505050505010500000000000503
                0000000401010101010101010500000000000503000000040105050505050501
                0505050505050503000000040105020202020501050300000000000000000004
                0105020202020501050300000000000000000004010502020202050105000000
                0000000000000004040404040404040404000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
            end
            object lista_leg: TStringGrid
              Left = 2
              Top = 15
              Width = 197
              Height = 287
              Align = alClient
              ColCount = 1
              Ctl3D = False
              DefaultColWidth = 240
              DefaultRowHeight = 12
              FixedCols = 0
              RowCount = 1
              FixedRows = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [goRangeSelect, goColSizing, goRowMoving, goEditing, goTabs]
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssVertical
              TabOrder = 0
              OnClick = lista_legClick
            end
          end
        end
      end
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 737
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object SpeedButton4: TSpeedButton
      Left = 718
      Top = 3
      Width = 14
      Height = 14
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 688
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Sobre'
      Caption = '?'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton5Click
    end
    object YuSoftLabel5: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 150
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'WebServer - XML encoder'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnMouseEnterState.Active = True
      OnMouseEnterState.BorderColor = clBtnHighlight
      OnMouseEnterState.BorderWidth = 1
      OnMouseEnterState.TextStyle = tsNone
      OnMouseEnterState.ShadowColor = clBtnShadow
      OnMouseEnterState.ShadowWidth = 0
      OnClickState.Active = False
      OnClickState.BorderColor = clBtnHighlight
      OnClickState.BorderWidth = 0
      OnClickState.TextStyle = tsNone
      OnClickState.ShadowColor = clBtnShadow
      OnClickState.ShadowWidth = 0
      OnExtendedState.Active = True
      OnExtendedState.BorderColor = clBtnHighlight
      OnExtendedState.BorderWidth = 0
      OnExtendedState.TextStyle = tsNone
      OnExtendedState.ShadowColor = clBtnShadow
      OnExtendedState.ShadowWidth = 0
      Transparent = True
    end
    object biSystemMenu: TImage
      Left = 4
      Top = 3
      Width = 15
      Height = 14
      Proportional = True
      Stretch = True
      Transparent = True
    end
    object bt_minimize: TSpeedButton
      Left = 703
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Minimizar janela'
      Caption = '-'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_minimizeClick
    end
  end
  object pn_status: TPanel
    Left = 0
    Top = 376
    Width = 739
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 733
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object OpenDialog_xml: TOpenDialog
    Filter = 'XML (*.xml)|*.xml|Todos os arquivos (*.*)|*.*'
    Title = 'Abrir arquivo'
    Left = 582
    Top = 44
  end
  object SaveDialog_xml: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML (*.xml)|*.xml|Todos os arquivos (*.*)|*.*'
    Title = 'Salvar arquivo como'
    Left = 622
    Top = 44
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
end
