object adm_admcustomhelp: Tadm_admcustomhelp
  Left = 264
  Top = 172
  BorderStyle = bsNone
  ClientHeight = 392
  ClientWidth = 735
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 735
    Height = 355
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object barra: TSplitter
      Left = 210
      Top = 2
      Width = 8
      Height = 347
      OnMoved = barraMoved
    end
    object PageControl1: TPageControl
      Left = 218
      Top = 2
      Width = 511
      Height = 347
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
    end
    object GroupBox_menu: TGroupBox
      Left = 2
      Top = 2
      Width = 208
      Height = 347
      Align = alLeft
      Caption = 'Lista de itens:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 2
        Top = 313
        Width = 204
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object GroupBox7: TGroupBox
        Left = 2
        Top = 163
        Width = 204
        Height = 97
        Align = alBottom
        Caption = 'Propriedades do item:'
        TabOrder = 0
        object Label14: TLabel
          Left = 7
          Top = 28
          Width = 33
          Height = 12
          Alignment = taRightJustify
          Caption = 'Texto:'
        end
        object Label9: TLabel
          Left = 8
          Top = 60
          Width = 98
          Height = 12
          Caption = 'M'#243'dulo do sistema:'
        end
        object xmn_text: TEdit
          Left = 6
          Top = 40
          Width = 193
          Height = 20
          Color = 16119285
          ReadOnly = True
          TabOrder = 0
        end
        object xmn_mdl: TComboBox
          Left = 6
          Top = 72
          Width = 193
          Height = 20
          Style = csDropDownList
          Color = 16119285
          ItemHeight = 12
          ItemIndex = 0
          TabOrder = 1
          Text = '<nenhum>'
          Items.Strings = (
            '<nenhum>')
        end
        object rb_item1: TRadioButton
          Left = 7
          Top = 12
          Width = 48
          Height = 15
          Caption = 'Pasta'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object rb_item2: TRadioButton
          Left = 71
          Top = 12
          Width = 97
          Height = 15
          Caption = 'Texto de ajuda'
          TabOrder = 3
        end
      end
      object pn_legenda: TPanel
        Left = 2
        Top = 14
        Width = 204
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Color = 16119285
        TabOrder = 1
        object Lb_countreg4: TLabel
          Left = 198
          Top = 0
          Width = 6
          Height = 57
          Align = alRight
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image2: TImage
          Left = 5
          Top = 4
          Width = 8
          Height = 8
          AutoSize = True
          Picture.Data = {
            07544269746D6170F6000000424DF60000000000000036000000280000000800
            0000080000000100180000000000C0000000120B0000120B0000000000000000
            0000FFFFFFFFFFFFFFFFFFDFDFDF878787DADADAFEFEFEFFFFFFFFFFFFFFFFFF
            C2C2C2858585E91616848484DADADAFEFEFEFFFFFFC2C2C2838383F40B0BFF00
            00F20D0D848484D6D6D6B7B7B7858585E61818FF0000FF0000FF0000FC030384
            8484CCCCCCD42A2AFF0000FF0000FF0000FF0000FF0000FF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          Transparent = True
        end
        object Label11: TLabel
          Left = 16
          Top = 1
          Width = 46
          Height = 12
          Caption = 'Submenu'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 81
          Top = 1
          Width = 36
          Height = 12
          Caption = 'M'#243'dulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Image5: TImage
          Left = 70
          Top = 4
          Width = 8
          Height = 8
          AutoSize = True
          Picture.Data = {
            07544269746D6170F6000000424DF60000000000000036000000280000000800
            0000080000000100180000000000C0000000120B0000120B0000000000000000
            0000FFFFFFFFFFFFFFFFFF1C1C1C656565FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF0D0D7E191919747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FC0505
            CA1B1B1B888888FDFDFDFFFFFFFFFFFFFFFFFF0000FB0000FB0303D61E1E1EDE
            DEDEFFFFFFFFFFFFFFFFFF0000FD0000FF0000FF0202EBFFFFFFFFFFFFFFFFFF
            FFFFFF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FC0000
            FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFF
            FFFF}
          Transparent = True
        end
        object Label6: TLabel
          Left = 3
          Top = 37
          Width = 33
          Height = 12
          Caption = 'T'#237'tulo:'
        end
        object SpeedButton1: TSpeedButton
          Left = 178
          Top = 34
          Width = 23
          Height = 19
          Hint = 'Alterar t'#237'tulo'
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
          OnClick = SpeedButton1Click
        end
        object chk_traduzir: TCheckBox
          Left = 78
          Top = 17
          Width = 89
          Height = 17
          Hint = 'Auto traduzir item para todas as outras linguagens'
          Caption = 'Auto traduzir'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 0
        end
        object chk_vincular: TCheckBox
          Left = 3
          Top = 17
          Width = 66
          Height = 17
          Hint = 'Vincular os itens de todas as linguagens'
          Caption = 'Vincular'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_vincularClick
        end
        object Edit_title: TEdit
          Left = 37
          Top = 35
          Width = 140
          Height = 20
          TabOrder = 2
        end
      end
      object ToolBar5: TToolBar
        Left = 2
        Top = 284
        Width = 204
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 2
        object bt_it1: TSpeedButton
          Left = 0
          Top = 2
          Width = 63
          Height = 22
          Hint = 'Adicionar novo item'
          Caption = 'Novo'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_it1Click
        end
        object bt_it2: TSpeedButton
          Left = 63
          Top = 2
          Width = 71
          Height = 22
          Hint = 'Alterar dados do item selecionado'
          Caption = 'Alterar'
          Enabled = False
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
          OnClick = bt_it2Click
        end
        object bt_it3: TSpeedButton
          Left = 134
          Top = 2
          Width = 68
          Height = 22
          Hint = 'Excluir item selecionado'
          Caption = 'Excluir'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36020000424D3602000000000000360100002800000010000000100000000100
            08000000000000010000120B0000120B000040000000000000003D363000E8E8
            E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
            C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
            CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
            61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
            7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
            DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
            6900FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000032323232320A
            012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
            190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
            1414141414172D1522320A13312714141414141414142731130A010D2B141414
            141414141414142B0D01291B1714141414141414141414171B29292420333333
            33333333333333202429011229333333333333333333332912010A2A0B252525
            252525252525250B2A0A3215211F050505050505050505211532320223080909
            09090909090908230232323216070F1018181818100F07163232323232300C04
            0F14140F040C30323232323232322C0323000023032C32323232}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_it3Click
        end
      end
      object ToolBar2: TToolBar
        Left = 2
        Top = 260
        Width = 204
        Height = 24
        Align = alBottom
        ButtonHeight = 20
        Caption = 'ToolBar1'
        TabOrder = 3
        object bt_it4: TSpeedButton
          Left = 0
          Top = 2
          Width = 73
          Height = 20
          Hint = 'Adicionar Item na raiz'
          Caption = 'Item'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36020000424D3602000000000000360100002800000010000000100000000100
            08000000000000010000120B0000120B000040000000000000003D363000E8E8
            E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
            C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
            CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
            61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
            7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
            DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
            6900FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000032323232320A
            012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
            190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
            1433331414172D1522320A13312714141433331414142731130A010D2B141414
            143333141414142B0D01291B1714141414333314141414171B29292420333333
            33333333333333202429011229333333333333333333332912010A2A0B252525
            253333252525250B2A0A3215211F050505333305050505211532320223080909
            09333309090908230232323216070F1018333318100F07163232323232300C04
            0F14140F040C30323232323232322C0323000023032C32323232}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_it4Click
        end
        object bt_it5: TSpeedButton
          Left = 73
          Top = 2
          Width = 80
          Height = 20
          Hint = 'Adicionar Subitem no menu selecionado'
          Caption = 'Subitem'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36020000424D3602000000000000360100002800000010000000100000000100
            08000000000000010000120B0000120B000040000000000000003D363000E8E8
            E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
            C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
            CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
            61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
            7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
            DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
            6900FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000032323232320A
            012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
            190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
            1433331414172D1522320A13312714141433331414142731130A010D2B141414
            143333141414142B0D01291B1714141414333314141414171B29292420333333
            33333333333333202429011229333333333333333333332912010A2A0B252525
            253333252525250B2A0A3215211F050505333305050505211532320223080909
            09333309090908230232323216070F1018333318100F07163232323232300C04
            0F14140F040C30323232323232322C0323000023032C32323232}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_it5Click
        end
        object SpeedButton2: TSpeedButton
          Left = 153
          Top = 2
          Width = 24
          Height = 20
          Hint = 'Mover para cima'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36020000424D3602000000000000360100002800000010000000100000000100
            08000000000000010000120B0000120B000040000000000000003D363000E8E8
            E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
            C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
            CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
            61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
            7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
            DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
            6900FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000032323232320A
            012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
            190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
            1414141414172D1522320A13312714141414141414142731130A010D2B141414
            141414141414142B0D01291B1733331414141414143333171B29292420063333
            06060606333306202429011229181833331818333318182912010A2A0B252525
            333333332525250B2A0A3215211F050505333305050505211532320223080909
            09090909090908230232323216070F1018181818100F07163232323232300C04
            0F14140F040C30323232323232322C0323000023032C32323232}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 177
          Top = 2
          Width = 24
          Height = 20
          Hint = 'Mover para baixo'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            36020000424D3602000000000000360100002800000010000000100000000100
            08000000000000010000120B0000120B000040000000000000003D363000E8E8
            E800C8C7C5008F8C880079716300E7E2D500FBFAF8005F584D00ABA59600E0DA
            C800EFEFEF00BDB8AF005B554E00847F7A006A625800A69F8E00EDEADF00D4D1
            CE004D453E00ADABA900FFFFFF008B8784009F9C9A00CECBC800F6F4EF007169
            61009B989600666059007E797400A7A7A700BDBDBD00E7E3D500EDECE8008780
            7600D8D8D8005D585300524A4200EEEBE100FFFFF700CDC9C700DEDEC500E7E4
            DE00605A5500A19B9600CCCCCC00868079007C756D00A9A39D00A19E9C00766F
            6900FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000032323232320A
            012929010A32323232323232320A221E131D1D131E220A323232323201021A1C
            190E0E191C1A02013232320A022D2E2F110A0A112F2E2D020A323222152D1714
            1414141414172D1522320A13312714141433331414142731130A010D2B141414
            333333331414142B0D01291B1714143333141433331414171B29292420063333
            06060606333306202429011229333318181818181833332912010A2A0B252525
            252525252525250B2A0A3215211F050505050505050505211532320223080909
            09090909090908230232323216070F1018181818100F07163232323232300C04
            0F14140F040C30323232323232322C0323000023032C32323232}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
      end
      object PageControl_languagens: TPageControl
        Left = 2
        Top = 71
        Width = 204
        Height = 92
        ActivePage = lngtb1
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 4
        OnChange = PageControl_languagensChange
        object lngtb1: TTabSheet
          Caption = 'lngtb1'
          object xmn_montamenus1: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb2: TTabSheet
          Caption = 'lngtb2'
          ImageIndex = 1
          TabVisible = False
          object xmn_montamenus2: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb3: TTabSheet
          Caption = 'lngtb3'
          ImageIndex = 2
          TabVisible = False
          object xmn_montamenus3: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb4: TTabSheet
          Caption = 'lngtb4'
          ImageIndex = 3
          TabVisible = False
          object xmn_montamenus4: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb5: TTabSheet
          Caption = 'lngtb5'
          ImageIndex = 4
          TabVisible = False
          object xmn_montamenus5: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb6: TTabSheet
          Caption = 'lngtb6'
          ImageIndex = 5
          TabVisible = False
          object xmn_montamenus6: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb7: TTabSheet
          Caption = 'lngtb7'
          ImageIndex = 6
          TabVisible = False
          object xmn_montamenus7: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb8: TTabSheet
          Caption = 'lngtb8'
          ImageIndex = 7
          TabVisible = False
          object xmn_montamenus8: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb9: TTabSheet
          Caption = 'lngtb9'
          ImageIndex = 8
          TabVisible = False
          object xmn_montamenus9: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb10: TTabSheet
          Caption = 'lngtb10'
          ImageIndex = 9
          TabVisible = False
          object xmn_montamenus10: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb11: TTabSheet
          Caption = 'lngtb11'
          ImageIndex = 10
          TabVisible = False
          object xmn_montamenus11: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb12: TTabSheet
          Caption = 'lngtb12'
          ImageIndex = 11
          TabVisible = False
          object xmn_montamenus12: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb13: TTabSheet
          Caption = 'lngtb13'
          ImageIndex = 12
          TabVisible = False
          object xmn_montamenus13: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb14: TTabSheet
          Caption = 'lngtb14'
          ImageIndex = 13
          TabVisible = False
          object xmn_montamenus14: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb15: TTabSheet
          Caption = 'lngtb15'
          ImageIndex = 14
          TabVisible = False
          object xmn_montamenus15: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb16: TTabSheet
          Caption = 'lngtb16'
          ImageIndex = 15
          TabVisible = False
          object xmn_montamenus16: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb17: TTabSheet
          Caption = 'lngtb17'
          ImageIndex = 16
          TabVisible = False
          object xmn_montamenus17: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb18: TTabSheet
          Caption = 'lngtb18'
          ImageIndex = 17
          TabVisible = False
          object xmn_montamenus18: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb19: TTabSheet
          Caption = 'lngtb19'
          ImageIndex = 18
          TabVisible = False
          object xmn_montamenus19: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
        object lngtb20: TTabSheet
          Caption = 'lngtb20'
          ImageIndex = 19
          TabVisible = False
          object xmn_montamenus20: TTreeView
            Left = 0
            Top = 0
            Width = 196
            Height = 62
            Align = alClient
            AutoExpand = True
            HideSelection = False
            HotTrack = True
            Images = ImageList_menuweb
            Indent = 19
            MultiSelectStyle = [msControlSelect, msShiftSelect]
            PopupMenu = PopupMenu_menu
            TabOrder = 0
            TabStop = False
            ToolTips = False
            OnChange = xmn_montamenus1Change
            OnClick = xmn_montamenus1Click
          end
        end
      end
      object ToolBar8: TToolBar
        Left = 2
        Top = 316
        Width = 204
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 5
        object bt_new4: TSpeedButton
          Left = 0
          Top = 2
          Width = 101
          Height = 22
          Hint = 'Restaurar menu'
          Caption = 'Restaurar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            9E030000424D9E03000000000000360200002800000012000000120000000100
            08000000000068010000120B0000120B0000800000000000000099333300E5C0
            AA0000FF0000B9966B00B15F5400FDF6E700BA936D00AD463300F8ECD000DCA3
            8900F7E4B900C47155008E69430099999900F1D5B300815F3400BD583200DDCB
            B400F1E3CD00A7845C00D0845A00FFFFFF00B0B5B600DF987600E7B39500F8EE
            D600835E3800B14C3300F8E1BB009E7B5300FCEAD300FFFAF500CB836B00BE73
            6300A84A4500F9EDE100AF8B6300C3A88600AB514600936E4800F5E6C5009C73
            5200CC663300DEBBA100DFAE9400BA9A6F00EADFCB008A653F00FEF0DD00EFCF
            AC00FCEACD00FCECCF00F9FDF800A33C3300CD927F00FFF9EE00916E4300C37E
            6D00B5967500CC8F7500CF7E590097704900C25F3300FFEFD600BC513500A786
            6500AB463700F7E8DF00E0AF9900F7DEB500B38F6700E2C8AA00FBF4E100A27B
            5500BB967000D8A69200D68D6D00F6E5BE00FDEAC90086613B00F6E6CF00BE9A
            7200B6543200AC493500AF875D00D6845A00F7F7DE00E8BCA500FFFCF800FFFF
            EF00F0D0B300F7D6B500C35A3100E6B69E00BD736B00E7B09100ECDECB00A542
            310093704500B59C7300E7C9AE00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000006565650D0D0D
            0D0D0D0D0D0D0D0D0D0D0D65000065651D3838272727270C0C2F2F4F4F0F0D65
            000065651D333333333333332828280A0A4F0D65000065651D08080808081E1E
            4E28284D4D1A0D65000065654933335A4B212604365A4D4D4D1A0D6500006565
            4908642053533535355E311C1C1A0D6500006565491909400B44502B39222828
            4D4F0D650000656513303C105D30303032323228282F0D650000656554482A3E
            19484830013B424E4E0C0D65000065652405552A57050540401B070832270D65
            0000656546375F2A140123573C521B19193D0D6500006565461F43172A2A2A3E
            5C4C5219193D0D65000065654A1F1F4318552A142C1F4312473D0D6500006565
            4A343434585858585811253A41130D65000065655115151515151534342E1F0E
            490D656500006565511515151515151515600E240D6565650000656551515151
            5151515106060616656565650000656565656565656565656565656565656565
            0000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_new4Click
        end
        object bt_del4: TSpeedButton
          Left = 101
          Top = 2
          Width = 101
          Height = 22
          Hint = 'Limpar itens do menu selecionado'
          Caption = 'Limpar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Glyph.Data = {
            62020000424D62020000000000003601000028000000120000000F0000000100
            0800000000002C010000120B0000120B00004000000000000000413F8800BBBB
            DB009F9F9F00DFDFDF006868B000B1B1B100EDEEFC0044449E00C1C3EE009A9A
            C900CCCCCC008A8AAF00B8BBF3005A5AA200DCDCEC004E4E8D004F4EB100ACAE
            E600B6B6D7008C8CC1008585BD00D7D8F700A7A7A700A8A8D000C8C8C800E6E6
            E600FFFFFF0055559A007A7AB7008C8CBD0057589400E3E3F000BBBBD100ADAD
            AD004747A400C6C7F400D7D7D700545394006161A8009292A80040409600BDBD
            D6009191C400AEAED4009E9ECB00DCDEF9005252B6004B4CAB00E3E4F900C3C4
            EE006666AE009494AD00FFFFFF00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000343419030303
            0303193434343434343434340000340A21020202020205243434343434343434
            0000190B322E2E2E2E2E2E162434343434343434000019103111111111112A10
            162434343434343400003404080C0C0C0C0C142C2F1624343434343400003420
            221523232323111401221624343434340000343426122D2D2D2D0E142C010716
            243434340000343420281A1A1A1A1A01142C01280519343400003434340D1511
            111111111C2A2C121B183434000034343434002D0C0C0C0C0C1C2A1725270334
            00003434343434003023232323231C092B0F1834000034343434343400302323
            232323140925271900003434343434343400062D2D2D2D2313140F1900003434
            343434343434001A1A1A1A1A1F2A003400003434343434343434341E00000000
            001E2B340000}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_del4Click
        end
      end
    end
    object bt_barra: TPanel
      Left = 210
      Top = 153
      Width = 9
      Height = 41
      BevelOuter = bvNone
      BorderWidth = 1
      BorderStyle = bsSingle
      Color = 16119285
      TabOrder = 2
      OnClick = bt_barraClick
      object barra_img2: TSpeedButton
        Left = -1
        Top = 0
        Width = 6
        Height = 36
        Flat = True
        Glyph.Data = {
          5E000000424D5E000000000000003E0000002800000008000000080000000100
          01000000000020000000120B0000120B0000020000000000000000000000FFFF
          FF00FF000000EF000000E7000000E3000000E1000000E3000000E7000000EF00
          0000}
        Visible = False
        OnClick = bt_barraClick
      end
      object barra_img1: TSpeedButton
        Left = -1
        Top = 0
        Width = 6
        Height = 36
        Flat = True
        Glyph.Data = {
          5E000000424D5E000000000000003E0000002800000008000000080000000100
          01000000000020000000120B0000120B0000020000000000000000000000FFFF
          FF00FF000000F7000000E7000000C700000087000000C7000000E7000000F700
          0000}
        OnClick = bt_barraClick
      end
    end
    object PageControl3: TPageControl
      Left = 218
      Top = 2
      Width = 511
      Height = 347
      ActivePage = TabSheet_editor
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 3
      object TabSheet_editor: TTabSheet
        Caption = 'Editor de textos'
        Enabled = False
        object Image_multimidia: TImage
          Left = 0
          Top = 247
          Width = 503
          Height = 17
          Align = alBottom
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000120B0000120B0000000100000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000C0DCC000F0CAA600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AA
            FF0000AAFF000092DC00007AB90000629600004A730000325000D4E3FF00B1C7
            FF008EABFF006B8FFF004873FF002557FF000055FF000049DC00003DB9000031
            96000025730000195000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525
            FF000000FE000000DC000000B900000096000000730000005000E3D4FF00C7B1
            FF00AB8EFF008F6BFF007348FF005725FF005500FF004900DC003D00B9003100
            96002500730019005000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25
            FF00AA00FF009200DC007A00B900620096004A00730032005000FFD4FF00FFB1
            FF00FF8EFF00FF6BFF00FF48FF00FF25FF00FE00FE00DC00DC00B900B9009600
            96007300730050005000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25
            AA00FF00AA00DC009200B9007A009600620073004A0050003200FFD4E300FFB1
            C700FF8EAB00FF6B8F00FF487300FF255700FF005500DC004900B9003D009600
            31007300250050001900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF25
            2500FE000000DC000000B9000000960000007300000050000000FFE3D400FFC7
            B100FFAB8E00FF8F6B00FF734800FF572500FF550000DC490000B93D00009631
            00007325000050190000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA
            2500FFAA0000DC920000B97A000096620000734A000050320000FFFFD400FFFF
            B100FFFF8E00FFFF6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B900009696
            00007373000050500000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF
            2500AAFF000092DC00007AB90000629600004A73000032500000E3FFD400C7FF
            B100ABFF8E008FFF6B0073FF480057FF250055FF000049DC00003DB900003196
            00002573000019500000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF
            250000FE000000DC000000B90000009600000073000000500000D4FFE300B1FF
            C7008EFFAB006BFF8F0048FF730025FF570000FF550000DC490000B93D000096
            31000073250000501900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FF
            AA0000FFAA0000DC920000B97A000096620000734A0000503200D4FFFF00B1FF
            FF008EFFFF006BFFFF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B9000096
            96000073730000505000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6
            B600AAAAAA009E9E9E0092929200868686007A7A7A006E6E6E00626262005656
            56004A4A4A003E3E3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0
            A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00000000000000000000000000000000000085848483838282FFE2FFFFFFFF
            0000008585848483838282FFFFFFFFFF00000086858584E18383828200E2FFFF
            000000868685E0ECEDED830082FFFFFF0000008886E0ECEAE7EB83838282FFE2
            000000E1E0DBE0E7E5EB8400000082FF0000DFD8D9D7E0EDE3EB848483838282
            0000DFD7D6D6E0EDE2EB850000008382000000DEDBD9E007E4EB858584848383
            0000008B8AFBDDF707EB8600858484830000008B8B8ADDEBF788868600858484
            0000008C8B8B8AE089888886868585840000008C8C8B8B8A89898888868D87FF
            0000008D8C8C8B8B8A898988888D87000000008D8D8C8C8B8B8A8989888D0000
            0000}
          Visible = False
        end
        object CoolBar1: TCoolBar
          Left = 0
          Top = 0
          Width = 503
          Height = 52
          AutoSize = True
          Bands = <
            item
              Control = ToolBar15
              ImageIndex = -1
              Width = 111
            end
            item
              Break = False
              Control = ToolBar9
              ImageIndex = -1
              Width = 302
            end
            item
              Break = False
              Control = ToolBar10
              ImageIndex = -1
              Width = 86
            end
            item
              Control = ToolBar13
              ImageIndex = -1
              Width = 68
            end
            item
              Break = False
              Control = ToolBar11
              ImageIndex = -1
              Width = 143
            end
            item
              Break = False
              Control = ToolBar12
              ImageIndex = -1
              Width = 119
            end
            item
              Break = False
              Control = ToolBar14
              ImageIndex = -1
              Width = 167
            end>
          EdgeBorders = []
          ParentShowHint = False
          ShowHint = True
          object ToolBar9: TToolBar
            Left = 122
            Top = 0
            Width = 289
            Height = 25
            Align = alClient
            AutoSize = True
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Transparent = True
            Wrapable = False
            object FontName: TComboBox
              Left = 4
              Top = 1
              Width = 222
              Height = 20
              Hint = 'Selecione a fonte'
              Ctl3D = False
              DropDownCount = 10
              ItemHeight = 12
              ParentCtl3D = False
              TabOrder = 0
              OnChange = FontNameChange
            end
            object ToolButton7: TToolButton
              Left = 226
              Top = 0
              Width = 8
              ImageIndex = 8
              Style = tbsSeparator
            end
            object FontSize: TEdit
              Left = 234
              Top = 0
              Width = 35
              Height = 22
              Hint = 'Selecione o tamanho da fonte'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '10'
              OnChange = FontSizeChange
            end
            object UpDown1: TUpDown
              Left = 269
              Top = 0
              Width = 16
              Height = 22
              Associate = FontSize
              Position = 10
              TabOrder = 2
            end
          end
          object ToolBar10: TToolBar
            Left = 426
            Top = 0
            Width = 73
            Height = 25
            Align = alClient
            AutoSize = True
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Transparent = True
            Wrapable = False
            object BoldButton: TToolButton
              Left = 4
              Top = 0
              Caption = 'Negrito'
              ImageIndex = 13
              MenuItem = Negrito1
              Style = tbsCheck
            end
            object ItalicButton: TToolButton
              Left = 27
              Top = 0
              Caption = 'It'#225'lico'
              ImageIndex = 15
              MenuItem = Italico1
              Style = tbsCheck
            end
            object UnderlineButton: TToolButton
              Left = 50
              Top = 0
              Caption = 'Sublinhado'
              ImageIndex = 16
              MenuItem = Sublinhado1
              Style = tbsCheck
            end
          end
          object ToolBar11: TToolBar
            Left = 79
            Top = 27
            Width = 130
            Height = 25
            Align = alClient
            ButtonWidth = 25
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Transparent = True
            Wrapable = False
            object LeftAlign: TToolButton
              Left = 4
              Top = 0
              Caption = 'esquerdo'
              Grouped = True
              ImageIndex = 17
              MenuItem = esquerdo1
              Style = tbsCheck
              OnClick = AlignButtonClick
            end
            object CenterAlign: TToolButton
              Tag = 2
              Left = 29
              Top = 0
              Caption = 'centro'
              Grouped = True
              ImageIndex = 18
              MenuItem = centro1
              Style = tbsCheck
              OnClick = AlignButtonClick
            end
            object RightAlign: TToolButton
              Tag = 1
              Left = 54
              Top = 0
              Caption = 'direita'
              Grouped = True
              ImageIndex = 19
              MenuItem = direita1
              Style = tbsCheck
              OnClick = AlignButtonClick
            end
            object JustifyAlign: TToolButton
              Tag = 3
              Left = 79
              Top = 0
              Caption = 'justificado'
              Grouped = True
              ImageIndex = 20
              MenuItem = justificado1
              Style = tbsCheck
              OnClick = AlignButtonClick
            end
            object BulletsButton: TToolButton
              Left = 104
              Top = 0
              Caption = 'Marcador'
              ImageIndex = 21
              MenuItem = Marcador1
              Style = tbsCheck
            end
          end
          object ToolBar12: TToolBar
            Left = 224
            Top = 27
            Width = 106
            Height = 25
            Align = alClient
            ButtonWidth = 25
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Transparent = True
            Wrapable = False
            object ToolButton13: TToolButton
              Left = 4
              Top = 0
              Caption = 'Copiar'
              ImageIndex = 7
              MenuItem = Copiar1
            end
            object ToolButton11: TToolButton
              Left = 29
              Top = 0
              Caption = 'Recortar'
              ImageIndex = 6
              MenuItem = Recortar1
            end
            object ToolButton14: TToolButton
              Left = 54
              Top = 0
              Caption = 'Colar'
              ImageIndex = 8
              MenuItem = Colar1
            end
            object ToolButton15: TToolButton
              Left = 79
              Top = 0
              Caption = 'Desfazer'
              ImageIndex = 4
              MenuItem = Desfazer1
            end
          end
          object ToolBar13: TToolBar
            Left = 9
            Top = 27
            Width = 55
            Height = 25
            Align = alClient
            AutoSize = True
            ButtonWidth = 25
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Transparent = True
            Wrapable = False
            object ToolButton8: TToolButton
              Left = 4
              Top = 0
              Caption = 'Fonte'
              ImageIndex = 9
              MenuItem = Fonte1
            end
            object ToolButton10: TToolButton
              Left = 29
              Top = 0
              Caption = 'Cor'
              ImageIndex = 10
              MenuItem = Cor1
            end
          end
          object ToolBar14: TToolBar
            Left = 345
            Top = 27
            Width = 154
            Height = 25
            Align = alClient
            ButtonWidth = 25
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            Transparent = True
            Wrapable = False
            object ToolButton1: TToolButton
              Left = 4
              Top = 0
              Caption = 'Localizar'
              ImageIndex = 5
              MenuItem = Localizar1
            end
            object ToolButton2: TToolButton
              Tag = 2
              Left = 29
              Top = 0
              Caption = 'Imagem'
              ImageIndex = 31
              MenuItem = Imagem1
            end
            object ToolButton12: TToolButton
              Left = 54
              Top = 0
              Caption = 'Arquivo multimedia'
              ImageIndex = 29
              MenuItem = Arquivomultimedia1
            end
            object ToolButton16: TToolButton
              Left = 79
              Top = 0
              Caption = 'Arquivo texto'
              ImageIndex = 27
              MenuItem = Arquivotexto1
            end
            object ToolButton17: TToolButton
              Left = 104
              Top = 0
              Caption = 'Exportar'
              ImageIndex = 30
              MenuItem = Exportar1
            end
            object ToolButton3: TToolButton
              Tag = 1
              Left = 129
              Top = 0
              Caption = 'Hyperlink'
              ImageIndex = 24
              MenuItem = Hyperlink1
            end
          end
          object ToolBar15: TToolBar
            Left = 9
            Top = 0
            Width = 98
            Height = 25
            Align = alClient
            Color = 16119285
            EdgeBorders = []
            Flat = True
            Images = ToolbarImages
            Indent = 4
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            Transparent = True
            Wrapable = False
            object ToolButton9: TToolButton
              Left = 4
              Top = 0
              Caption = 'Novo'
              ImageIndex = 0
              MenuItem = Novo1
            end
            object ToolButton4: TToolButton
              Left = 27
              Top = 0
              Caption = 'Abrir'
              ImageIndex = 1
              MenuItem = Abrir1
            end
            object ToolButton5: TToolButton
              Tag = 2
              Left = 50
              Top = 0
              Caption = 'Salvar'
              ImageIndex = 2
              MenuItem = Salvar1
            end
            object ToolButton6: TToolButton
              Tag = 1
              Left = 73
              Top = 0
              Caption = 'Imprimir'
              ImageIndex = 3
              MenuItem = Imprimir1
            end
          end
        end
        object StatusBar: TStatusBar
          Left = 0
          Top = 298
          Width = 503
          Height = 19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Panels = <
            item
              Width = 57
            end
            item
              Alignment = taCenter
              Width = 80
            end
            item
              Width = 250
            end
            item
              Width = 200
            end>
          ParentColor = True
          UseSystemFont = False
        end
        object bt_menu: TBitBtn
          Left = 1
          Top = 301
          Width = 56
          Height = 16
          Hint = 'Menu de op'#231#245'es'
          Caption = 'Menu'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bt_menuClick
          Glyph.Data = {
            F6000000424DF600000000000000360000002800000008000000080000000100
            180000000000C0000000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFF1C1C1C656565FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D0D7E1919
            19747474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FC0505CA1B1B1B888888FD
            FDFDFFFFFFFFFFFFFFFFFF0000FB0000FB0303D61E1E1EDEDEDEFFFFFFFFFFFF
            FFFFFF0000FD0000FF0000FF0202EBFFFFFFFFFFFFFFFFFFFFFFFF0000FF0000
            FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FC0000FAFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object Ruler: TPanel
          Left = 0
          Top = 52
          Width = 503
          Height = 26
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'asdf'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object FirstInd: TLabel
            Left = 2
            Top = 2
            Width = 10
            Height = 9
            Hint = '0 px'
            AutoSize = False
            Caption = #234
            DragCursor = crArrow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Wingdings'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
            OnMouseDown = RulerItemMouseDown
            OnMouseMove = RulerItemMouseMove
            OnMouseUp = FirstIndMouseUp
          end
          object LeftInd: TLabel
            Left = 2
            Top = 12
            Width = 10
            Height = 11
            Hint = '0 px'
            AutoSize = False
            Caption = #233
            DragCursor = crArrow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Wingdings'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
            OnMouseDown = RulerItemMouseDown
            OnMouseMove = RulerItemMouseMove
            OnMouseUp = LeftIndMouseUp
          end
          object RulerLine: TBevel
            Left = 4
            Top = 12
            Width = 498
            Height = 2
            Shape = bsTopLine
          end
          object RightInd: TLabel
            Left = 492
            Top = 14
            Width = 9
            Height = 12
            Hint = '490 px'
            Caption = #241
            DragCursor = crArrow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Wingdings'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
            OnMouseDown = RulerItemMouseDown
            OnMouseMove = RulerItemMouseMove
            OnMouseUp = RightIndMouseUp
          end
          object Bevel1: TBevel
            Left = 0
            Top = 0
            Width = 503
            Height = 2
            Align = alTop
            Shape = bsTopLine
          end
          object Label_hint: TLabel
            Left = 40
            Top = 12
            Width = 6
            Height = 14
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
            Visible = False
          end
        end
        object re_editor_tmp: TRxRichEdit
          Left = 0
          Top = 264
          Width = 503
          Height = 34
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object PageControl_editor: TPageControl
          Left = 0
          Top = 78
          Width = 503
          Height = 169
          ActivePage = lngtbre1
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 5
          OnChange = PageControl_editorChange
          object lngtbre1: TTabSheet
            Caption = 'lngtbre1'
            object re_editor1: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre2: TTabSheet
            Caption = 'lngtbre2'
            ImageIndex = 1
            TabVisible = False
            object re_editor2: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre3: TTabSheet
            Caption = 'lngtbre3'
            ImageIndex = 2
            TabVisible = False
            object re_editor3: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre4: TTabSheet
            Caption = 'lngtbre4'
            ImageIndex = 3
            TabVisible = False
            object re_editor4: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre5: TTabSheet
            Caption = 'lngtbre5'
            ImageIndex = 4
            TabVisible = False
            object re_editor5: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre6: TTabSheet
            Caption = 'lngtbre6'
            ImageIndex = 5
            TabVisible = False
            object re_editor6: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre7: TTabSheet
            Caption = 'lngtbre7'
            ImageIndex = 6
            TabVisible = False
            object re_editor7: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre8: TTabSheet
            Caption = 'lngtbre8'
            ImageIndex = 7
            TabVisible = False
            object re_editor8: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre9: TTabSheet
            Caption = 'lngtbre9'
            ImageIndex = 8
            TabVisible = False
            object re_editor9: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre10: TTabSheet
            Caption = 'lngtbre10'
            ImageIndex = 9
            TabVisible = False
            object re_editor10: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre11: TTabSheet
            Caption = 'lngtbre11'
            ImageIndex = 10
            TabVisible = False
            object re_editor11: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre12: TTabSheet
            Caption = 'lngtbre12'
            ImageIndex = 11
            TabVisible = False
            object re_editor12: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre13: TTabSheet
            Caption = 'lngtbre13'
            ImageIndex = 12
            TabVisible = False
            object re_editor13: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre14: TTabSheet
            Caption = 'lngtbre14'
            ImageIndex = 13
            TabVisible = False
            object re_editor14: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre15: TTabSheet
            Caption = 'lngtbre15'
            ImageIndex = 14
            TabVisible = False
            object re_editor15: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre16: TTabSheet
            Caption = 'lngtbre16'
            ImageIndex = 15
            TabVisible = False
            object re_editor16: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre17: TTabSheet
            Caption = 'lngtbre17'
            ImageIndex = 16
            TabVisible = False
            object re_editor17: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre18: TTabSheet
            Caption = 'lngtbre18'
            ImageIndex = 17
            TabVisible = False
            object re_editor18: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre19: TTabSheet
            Caption = 'lngtbre19'
            ImageIndex = 18
            TabVisible = False
            object re_editor19: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
          object lngtbre20: TTabSheet
            Caption = 'lngtbre20'
            ImageIndex = 19
            TabVisible = False
            object re_editor20: TRxRichEdit
              Left = 0
              Top = 0
              Width = 495
              Height = 139
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              PopupMenu = PopupMenu_editor
              TabOrder = 0
              OnChange = RichEditChange
              OnKeyDown = re_editorKeyDown
              OnKeyUp = re_editorKeyUp
              OnSelectionChange = SelectionChange
              OnURLClick = re_editorURLClick
            end
          end
        end
        object Panel_ocultared: TPanel
          Left = 0
          Top = 0
          Width = 503
          Height = 317
          BevelInner = bvLowered
          Caption = '<Editor n'#227'o dispon'#237'vel para item tipo Pasta>'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object TabSheet_img: TTabSheet
        Caption = 'Banco de imagens'
        ImageIndex = 2
        object PageControl_imagens: TPageControl
          Left = 0
          Top = 0
          Width = 503
          Height = 317
          ActivePage = TabSheet_imgcad
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet_imgcad: TTabSheet
            Caption = 'Cadastro'
            object GroupBox2: TGroupBox
              Left = 0
              Top = 0
              Width = 231
              Height = 287
              Align = alClient
              Caption = 'Lista de registros:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object DBGrid1: TDBGrid
                Left = 2
                Top = 47
                Width = 227
                Height = 209
                Align = alClient
                Color = clWhite
                DataSource = dm.source_sql
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
                OnCellClick = DBGrid1CellClick
                OnKeyDown = DBGrid1KeyDown
                OnKeyUp = DBGrid1KeyUp
              end
              object Panel_search: TPanel
                Left = 2
                Top = 14
                Width = 227
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                Color = 16119285
                TabOrder = 1
                object Label3: TLabel
                  Left = 6
                  Top = 0
                  Width = 49
                  Height = 12
                  Caption = 'Localizar:'
                end
                object bt_search: TSpeedButton
                  Left = 200
                  Top = 10
                  Width = 24
                  Height = 22
                  Hint = 'Localizar'
                  Flat = True
                  Glyph.Data = {
                    8A020000424D8A02000000000000360100002800000011000000110000000100
                    08000000000054010000120B0000120B0000400000000000000060412A00FFB3
                    7800A4988F0085695200DED8D300D5C4B200F5DDBF006E554300BEB2A9008C78
                    6A00FFDCAE00FFEDD600B7ABA200EEEEEE008B746400CCCCCC009D979200FCEA
                    D40080604500D5BB9E00FFE4C100C6C6C600FFF6EA00E7E7E700FFC78E00FFF7
                    C500BF9D780077615100BBBBBB0086706000997C6100FFDDB20098847600F5EC
                    E100FFE8CB00D4D4D400DEDEDE00705745007B685800FCDFBC00FFF1DF00FFE3
                    AE00B6B6B600D5C8BC0080624800FFE6C4007A645300856D5A00D5BCA100BFA0
                    800091847B00FBF4EB00755E4E00F9E1C300FFFFFF0000000000000000000000
                    000000000000000000000000000000000000000000000000000036360D363636
                    36363636363636363636360000003623150F2436363636363636363636363600
                    00001D0007101C24363636363636363636363600000000191900101C24363636
                    363636363636360000002E29292900100F17360D0D0D36363636360000000400
                    181818072A0F0F1515150F240D3636000000360400010100321B25000034321C
                    230D360000003636042E00012F2B3333332B2F261C2436000000363636360C2F
                    212828282828212F320F36000000363636361D050B000B0B0B000B0534150D00
                    0000363636362E112200222222002211001C1700000036363636002D2D2C1E1E
                    1E2C141400150D00000036363636002D2731002700312735000F360000003636
                    36360E301F1F121F121F1F302E2436000000363636360803350A1A001A0A0603
                    020D360000003636363636200313270A271303090D3636000000363636363636
                    080E0000001D0C36363636000000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = bt_searchClick
                end
                object Edit_search: TEdit
                  Left = 3
                  Top = 12
                  Width = 197
                  Height = 20
                  MaxLength = 255
                  TabOrder = 0
                end
              end
              object ToolBar1: TToolBar
                Left = 2
                Top = 256
                Width = 227
                Height = 29
                Align = alBottom
                Caption = 'ToolBar1'
                TabOrder = 2
                object Lb_countreg: TLabel
                  Left = 0
                  Top = 2
                  Width = 225
                  Height = 22
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Layout = tlCenter
                end
              end
            end
            object GroupBox1: TGroupBox
              Left = 231
              Top = 0
              Width = 264
              Height = 287
              Align = alRight
              Caption = 'Ficha:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object PageScroller1: TPageScroller
                Left = 2
                Top = 255
                Width = 260
                Height = 30
                Align = alBottom
                Control = ToolBar3
                TabOrder = 0
                object ToolBar3: TToolBar
                  Left = 0
                  Top = 0
                  Width = 260
                  Height = 30
                  Align = alBottom
                  Caption = 'ToolBar1'
                  TabOrder = 0
                  object bt_prior: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 24
                    Height = 22
                    Hint = 'Registro anterior'
                    Flat = True
                    Glyph.Data = {
                      9E030000424D9E03000000000000360200002800000012000000120000000100
                      08000000000068010000120B0000120B00008000000000000000905D4900D88D
                      660000FF0000F8C2A400A4878000B0836100E7A88200B4ABA700FFEDDE00B562
                      4600C8846100D4997200F7AC8600FFF8F5009B6A5A00FED7C100C0C1BF00C080
                      6200BD714D00E49C7400AC978800FFE0D300FCB58F0092706000C3936900A786
                      7D00AA715800E5AC8500C7775A00D7946D00E3A57C00E09F7800FFF3E700A47C
                      7000F9B48C00FFDCCF00A7948500BFC4C200A68A6B00CF886300F0AF8900BAB1
                      AD00DD926C00B17F6300B59F8D00CE9772008C615200AA927E009E7B5900FFF7
                      FF00E39E7D00C08E6A00FDB69400FEE8DD00EEA78100F7B08B00FDDEC900FFF0
                      E700BDC2C000B0A18E00F0B18500E1977300BD765100BD6D4E00C28C6B00E9B3
                      8A00AA8E83008C6B5200D1856800A1756400EBA37B00D88C6800B58B6100FEE4
                      D600977C6800DD9D7400FFFFFF00E1A77D00BBB6AD00AD9B8A00CC996600C5C5
                      C500EB9F7B00C2755500E6A58C00C37C5A00D6947300FFD8C600FEF5F200AF98
                      8200AA868000D1835F00FDFCF800C2BFBB0096634F00C2C3BF00ECB48B00FFFF
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000616161616161
                      616161616161616161616161000061616161610704172E434A24296161616161
                      000061616110191A2D4D4D1F0B2D2B4F3A616161000061615D2111601E1D2A2A
                      2A4B4B332F256161000061615A40414B3E3F231B012A1313404F616100006107
                      1A1B4B12093857572A3D13524B054E6100006119561F530957235C01012A3D46
                      36182C610000610E1E0A0957235C53531C1C44520C322661000061001F555757
                      4949352020202020282830610000615E4B272038155C5C4C4C4C4C1537373061
                      000061450B2A5B5835353D46360C3716160626610000614240132A470D393936
                      0C373434342D2C61000061292B1313133D310808373434343C334E6100006161
                      144032363636080316161616183B6161000061615F2F33320C0C223434342818
                      595161610000616161514F0518322222062D482C51616161000061616161614E
                      4F263030263B4E61616161610000616161616161616161616161616161616161
                      0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_priorClick
                  end
                  object bt_next: TSpeedButton
                    Left = 24
                    Top = 2
                    Width = 24
                    Height = 22
                    Hint = 'Pr'#243'ximo registro'
                    Flat = True
                    Glyph.Data = {
                      9E030000424D9E03000000000000360200002800000012000000120000000100
                      08000000000068010000120B0000120B00008000000000000000905D4900D88D
                      660000FF0000F8C2A400A4878000B0836100E7A88200B4ABA700FFEDDE00B562
                      4600C8846100D4997200F7AC8600FFF8F5009B6A5A00FED7C100C0C1BF00C080
                      6200BD714D00E49C7400AC978800FFE0D300FCB58F0092706000C3936900A786
                      7D00AA715800E5AC8500C7775A00D7946D00E3A57C00E09F7800FFF3E700A47C
                      7000F9B48C00FFDCCF00A7948500BFC4C200A68A6B00CF886300F0AF8900BAB1
                      AD00DD926C00B17F6300B59F8D00CE9772008C615200AA927E009E7B5900FFF7
                      FF00E39E7D00C08E6A00FDB69400FEE8DD00EEA78100F7B08B00FDDEC900FFF0
                      E700BDC2C000B0A18E00F0B18500E1977300BD765100BD6D4E00C28C6B00E9B3
                      8A00AA8E83008C6B5200D1856800A1756400EBA37B00D88C6800B58B6100FEE4
                      D600977C6800DD9D7400FFFFFF00E1A77D00BBB6AD00AD9B8A00CC996600C5C5
                      C500EB9F7B00C2755500E6A58C00C37C5A00D6947300FFD8C600FEF5F200AF98
                      8200AA868000D1835F00FDFCF800C2BFBB0096634F00C2C3BF00ECB48B00FFFF
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000616161616161
                      6161616161616161616161610000616161616129244A432E1704076161616161
                      00006161613A4F2B2D0B1F4D4D2D1A191061616100006161252F334B4B2A2A2A
                      1D1E6011215D6161000061614F4013132A011B233F3E4B41405A61610000614E
                      054B52133D2A57573809124B1B1A07610000612C1836463D2A01015C23570953
                      1F56196100006126320C52441C1C53535C2357090A1E0E610000613028282020
                      2020203549495757551F0061000061303737154C4C4C4C5C5C153820274B5E61
                      00006126061616370C36463D3535585B2A0B45610000612C2D343434370C3639
                      390D472A134042610000614E333C343434370808313D1313132B296100006161
                      3B1816161616030836363632401461610000616151591828343434220C0C3233
                      2F5F61610000616161512C482D0622223218054F51616161000061616161614E
                      3B263030264F4E61616161610000616161616161616161616161616161616161
                      0000}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_nextClick
                  end
                  object bt_new: TSpeedButton
                    Left = 48
                    Top = 2
                    Width = 63
                    Height = 22
                    Hint = 'Incluir novo registro'
                    Caption = 'Novo'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
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
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_newClick
                  end
                  object bt_del: TSpeedButton
                    Left = 111
                    Top = 2
                    Width = 72
                    Height = 22
                    Hint = 'Excluir registro selecionado'
                    Caption = 'Excluir'
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
                    OnClick = bt_delClick
                  end
                  object bt_save: TSpeedButton
                    Left = 183
                    Top = 2
                    Width = 75
                    Height = 22
                    Hint = 'Gravar dados do regsistro'
                    Caption = 'Gravar'
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
                    OnClick = bt_saveClick
                  end
                end
              end
              object Panel2: TPanel
                Left = 2
                Top = 14
                Width = 260
                Height = 241
                Align = alClient
                BevelOuter = bvNone
                Color = 16119285
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Label1: TLabel
                  Left = 96
                  Top = 184
                  Width = 12
                  Height = 12
                  Caption = 'px'
                end
                object Label2: TLabel
                  Left = 224
                  Top = 184
                  Width = 12
                  Height = 12
                  Caption = 'px'
                end
                object Label4: TLabel
                  Left = 12
                  Top = 202
                  Width = 73
                  Height = 12
                  Caption = '0=aulto ajusta'
                end
                object Label5: TLabel
                  Left = 135
                  Top = 202
                  Width = 73
                  Height = 12
                  Caption = '0=aulto ajusta'
                end
                object lbcp1: TLabeledEdit
                  Left = 7
                  Top = 24
                  Width = 135
                  Height = 20
                  TabStop = False
                  Color = 16119285
                  EditLabel.Width = 35
                  EditLabel.Height = 12
                  EditLabel.Caption = 'C'#243'digo'
                  ReadOnly = True
                  TabOrder = 0
                end
                object lbcp2: TLabeledEdit
                  Left = 8
                  Top = 65
                  Width = 246
                  Height = 20
                  EditLabel.Width = 51
                  EditLabel.Height = 12
                  EditLabel.Caption = 'Descri'#231#227'o'
                  MaxLength = 255
                  TabOrder = 1
                end
                object lbcp3: TLabeledEdit
                  Left = 8
                  Top = 116
                  Width = 246
                  Height = 20
                  Color = 16119285
                  EditLabel.Width = 183
                  EditLabel.Height = 12
                  EditLabel.Caption = 'Arquivo de imagem (tamanho em kb)'
                  MaxLength = 255
                  ReadOnly = True
                  TabOrder = 2
                  Text = 'nenhum'
                end
                object lbcp4: TLabeledEdit
                  Left = 8
                  Top = 182
                  Width = 89
                  Height = 20
                  EditLabel.Width = 38
                  EditLabel.Height = 12
                  EditLabel.Caption = 'Largura'
                  MaxLength = 255
                  TabOrder = 3
                  Text = '0'
                  OnKeyPress = NumKeyPress
                end
                object lbcp5: TLabeledEdit
                  Left = 132
                  Top = 182
                  Width = 93
                  Height = 20
                  EditLabel.Width = 31
                  EditLabel.Height = 12
                  EditLabel.Caption = 'Altura'
                  MaxLength = 255
                  TabOrder = 4
                  Text = '0'
                  OnKeyPress = NumKeyPress
                end
                object ToolBar16: TToolBar
                  Left = 0
                  Top = 136
                  Width = 260
                  Height = 29
                  Align = alNone
                  Caption = 'ToolBar16'
                  EdgeBorders = []
                  TabOrder = 5
                  object bt_localizar: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 82
                    Height = 22
                    Hint = 'Localizar imagem a ser anexada'
                    Caption = 'Localizar'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      4E010000424D4E01000000000000760000002800000012000000120000000100
                      040000000000D8000000120B0000120B0000100000000000000000000000CED3
                      D60000008400FFFF00008482840000FFFF008400000000828400FFFFFF008482
                      0000FF0000000000FF0000000000000000000000000000000000110000000001
                      1111110000001147777777701111110000001148151515770111110000001148
                      5151517701111100000011481515157700001100000011477777770704401100
                      0000147778888870084011000000478177777777084011000000171878888887
                      7840110000001177811811817740110000001114822899866840110000001114
                      8B28398A68401100000011148888888888401100000011146666660000401100
                      0000111466666610104011000000111444444444444011000000111000000000
                      000011000000111111111111111111000000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_localizarClick
                  end
                  object bt_limpar: TSpeedButton
                    Left = 82
                    Top = 2
                    Width = 82
                    Height = 22
                    Hint = 'Limpar imagem'
                    Caption = 'Limpar'
                    Enabled = False
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      4E010000424D4E01000000000000760000002800000012000000120000000100
                      040000000000D8000000120B0000120B0000100000000000000000000000CED3
                      D60000008400FFFF00008482840000FFFF008400000000828400FFFFFF008482
                      0000FF0000000000FF0000000000000000000000000000000000110000000001
                      1111110000001BB777777770111BB10000001BBB1515157701BB1100000011BB
                      B15151770BB111000000114BBB151577BB20110000001147BBB7770BB4401100
                      000014777BBB88BB284011000000478177BBBBB70840110000001718788BBB17
                      7840110000001177811BBBB1774011000000111482BB4BBB6840110000001114
                      8BB139BBB840110000001114BB18888BBB4011000000111BB2666600BBB01100
                      000011BB266666101BBB110000001BB44444444444BBB10000001B4000000000
                      000BB1000000111111111111111111000000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_limparClick
                  end
                  object bt_visualizar: TSpeedButton
                    Left = 164
                    Top = 2
                    Width = 92
                    Height = 22
                    Hint = 'Visualizar imagem'
                    Caption = 'Visualizar'
                    Enabled = False
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
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
                    OnClick = bt_visualizarClick
                  end
                end
                object pn_mp3player: TPanel
                  Left = 0
                  Top = 216
                  Width = 257
                  Height = 25
                  BevelInner = bvLowered
                  Color = 16119285
                  TabOrder = 6
                  Visible = False
                  object bt_playmp3: TSpeedButton
                    Left = 2
                    Top = 2
                    Width = 23
                    Height = 21
                    Hint = 'Reproduzir'
                    Flat = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                      A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                      C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                      EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                      8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                      798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFF005D00F9
                      FFF9FFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                      A19B96FFFFFFFFFFFFFFFFFF00FA00001200F8F8F8FFFFFFFFFFFFFFFFFFFFFF
                      FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFF00DF0000
                      BF00005600FFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                      EDECE8FBFAF8FBFAF8FBFAF800C20000DD0000F500005300FBFAF8FBFAF8FBFA
                      F8EDECE8524A42E7E4DEE8E8E84D453EE7E4DEF6F4EFF6F4EFF6F4EF00D60000
                      FB0000DE00008000F6F4EFF6F4EFF6F4EFE7E4DE4D453EE8E8E8EFEFEF605A55
                      BDB8AFEEEBE1EEEBE1EEEBE108EF0604F603009300EEEBE1EEEBE1EEEBE1EEEB
                      E1BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E5E3D300F30000
                      9B00DCE4CAE7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                      5D5853ABA596E0DAC8DCDBC400A300DADBC3E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                      965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                      F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                      9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                      36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_playmp3Click
                  end
                  object bt_stopmp3: TSpeedButton
                    Left = 26
                    Top = 2
                    Width = 23
                    Height = 21
                    Hint = 'Parar'
                    Flat = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                      A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                      C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                      EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                      8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                      798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7C7C7FF8787FF8787FF87
                      87FF8787FF8787FFC0C0FFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                      A19B96FFFFFF8787FF0000FF0000FF0000FF0000FF0000FF4E4ED6FFFFFFFFFF
                      FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFF8787FF0000FF0000FF00
                      00FF0000FF0000FF4E4ED6FFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                      EDECE8FBFAF88584FC0000FF0000FF0000FF0000FF0000FF4E4ED6FBFAF8FBFA
                      F8EDECE8524A42E7E4DEE8E8E84D453EE7E4DEF6F4EF8281F70000FF0000FF00
                      00FF0000FF0000FF4E4ED6F6F4EFF6F4EFE7E4DE4D453EE8E8E8EFEFEF605A55
                      BDB8AFEEEBE17E7CF00000FF0000FF0000FF0000FF0000FF4E4ED6EEEBE1EEEB
                      E1BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5ADA9E04E4ED64E4ED64E
                      4ED64E4ED64E4ED67878C0E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                      5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                      965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                      F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                      9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                      36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_stopmp3Click
                  end
                  object bt_closemp3: TSpeedButton
                    Left = 50
                    Top = 2
                    Width = 23
                    Height = 21
                    Hint = 'Fechar'
                    Flat = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                      A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      E8E8E8C8C7C59B98967E79747169616A62586A62587169617E79749B9896C8C7
                      C5E8E8E8FFFFFFFFFFFFFFFFFFEFEFEFC8C7C58680797C756DA9A39DD4D1CEEF
                      EFEFEFEFEFD4D1CEA9A39D7C756D868079C8C7C5EFEFEFFFFFFFFFFFFFD8D8D8
                      8B8784868079CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC88680
                      798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFBEBEFFF6F6FFFF
                      FFFFFFFFFFC9C9FFC0C0FFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                      A19B96F6F6FF8A8AFF2C2CFFE8E8FFFFFFFFFFFFFF8C8CFF0D0DFFB6B6FFFFFF
                      FFA19B96847F7AE8E8E8E7E4DE666059CECBC8E8E8FF3D3DFF1717FF3939FFCB
                      CBFF5E5EFF0202FF5C5CFFA9A9FFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                      EDECE8FFFFFFF5F5FEDEDEFF2D2DFF0303FF0D0DFFBEBEFFF4F4F5F4F4F5F4F4
                      F4EDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE1E9E7E4ECE9E34444F808
                      08FF0D0DFF3E3EF8E7E4E4E7E4E3E7E4E2E7E4DE4D453EE8E8E8EFEFEF605A55
                      BDB8AFEEEBE1EEEBE16D6CF21616FDBDBBE89795ED1D1CFC6967F3E6E3E4EDEA
                      E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D56D6BED0101FFA39FE2E7
                      E2D5E7E2D5706DEB0303FFCCC7DBE7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                      5D5853ABA596CFCACDBBB6D2E0DAC8E0DAC8E0DAC8DED8C9A29DD8D8D2CAABA5
                      965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                      F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                      9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                      36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_closemp3Click
                  end
                  object Progress: TProgressBar
                    Left = 75
                    Top = 3
                    Width = 179
                    Height = 18
                    Smooth = True
                    TabOrder = 0
                  end
                  object mp3player: TMediaPlayer
                    Left = 35
                    Top = 32
                    Width = -2
                    Height = 20
                    VisibleButtons = [btPlay, btPause, btStop]
                    Visible = False
                    TabOrder = 1
                  end
                end
              end
            end
          end
          object TabSheet_imgview: TTabSheet
            Caption = 'Visualizar'
            ImageIndex = 1
            object swf_logo: TShockwaveFlash
              Left = 0
              Top = 0
              Width = 495
              Height = 287
              Align = alClient
              TabOrder = 0
              ControlData = {
                675566550003000029330000AA1D000008000200000000000800020000000000
                080002000000000008000E000000570069006E0064006F00770000000B00FFFF
                0B00FFFF08000A0000004800690067006800000008000200000000000B00FFFF
                080002000000000008000E00000061006C007700610079007300000008001000
                0000530068006F00770041006C006C0000000B0000000B000000080002000000
                0000080002000000000008000200000000000D00000000000000000000000000
                000000000B000100}
            end
          end
        end
      end
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 733
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = FormMouseDown
    end
    object bt_fechar: TSpeedButton
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
      OnClick = bt_fecharClick
    end
    object bt_sobre: TSpeedButton
      Left = 672
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
      OnClick = bt_sobreClick
    end
    object YuSoftLabel2: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 203
      Height = 13
      Cursor = crHandPoint
      Hint = 'Website'
      Alignment = taCenter
      Caption = 'Editor de Ajudas do sistema Server'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = YuSoftLabel2Click
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
      Left = 687
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
    object bt_maximiza: TSpeedButton
      Left = 703
      Top = 3
      Width = 14
      Height = 14
      Hint = 'Maximizar'
      Caption = #143
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_maximizaClick
    end
  end
  object pn_status: TPanel
    Left = 0
    Top = 375
    Width = 735
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 729
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object XPManifest1: TXPManifest
    Left = 701
    Top = 21
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 674
    Top = 21
  end
  object ToolbarImages: TImageList
    Left = 592
    Top = 21
    Bitmap = {
      494C010120002200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
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
      0000B4B0AD00B4B0AD00B4B0AD00B4B0AD00B4B0AD00B4B0AD00B4B0AD00B4B0
      AD00B4B0AD00B4B0AD00000000000000000000000000FFC66B00FFD48E00FFD4
      8E00FFE2B100FFE2B100FFF0D400FFF0D400FFFFFF00F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      99009999990099999900999999000000000000000000000000000000000083B4
      C80065666A0065666A0065666A0065666A0065666A0065666A0065666A006566
      6A006D6D6C00B4B0AD00000000000000000000000000FFC66B00FFC66B00FFD4
      8E00FFD48E00FFE2B100FFE2B100FFF0D400FFF0D400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000BABABA00A8989A00A8989A00A7989A00A798
      9A00A7989A00A5999A009C999A00C9CED1000000000099663300996633009966
      3300996633009966330099663300996633009966330099663300996633009966
      3300996633009966330099999900000000000000000000000000000000000364
      930064C9E10083EAFF007EE7FD007EE7FD007EE7FD007EE7FD007EE7FD0091F9
      FF0075DAEC00B4B0AD00000000000000000000000000FFB84800FFC66B00FFC6
      6B00FFD48E0000505000FFE2B100FFE2B100FFF0D400FFF0D40000000000F2F2
      F200FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000008E624300393031003C313100393031003930
      31003930310039303100A2989A00C6CACD0000000000CC996600000000000A7A
      16000A891500098214000F77180008871A000A891500087B1400078D13000873
      120043B14B0099663300999999000000000000000000000000000000000065CB
      E0008AF2FE008AF2FE008AF2FE008AF2FE008AF2FE008AF2FE0087EEFF0087EE
      FF001275A700B4B0AD00000000000000000000000000FFB84800FFB84800FFC6
      6B00007373007A7A7A006E6E6E006E6E6E00FFE2B10000000000FFF0D400FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000009C694700C7B19300996C4C00F7F2EE009D6C
      4A00CBB2A70039303100A5989A00C3C7CA0000000000CC996600000000000099
      66000099660000A764001B7887001C7572000585740000A7640000A764000392
      5B003AB98C00996633009999990000000000000000000000000083B4C80087F0
      FE007BE6FE007BE6FE007BE6FE007BE6FE007BE6FE007BE6FE0085EEFF0042A8
      CC0011405300B4B0AD00000000000000000000000000FFAA0000FFB848000073
      73007A7A7A0092929200B6B6B60086868600FFE2B100FFE2B100FFF0D400FFF0
      D400FFFFFF00F2F2F20000000000000000000000000000000000C6CBCD00A099
      9A00A1999A00A1989A00A1989A009C959600A2999A009C9596009F959400A57F
      5D00C7B1940039303100A4989A00C4C8CB0000000000CC9966000000000075DF
      BA0078E0BF0071E4B9005CCEC0002E47510078DBC70084EBC5006ADDB60066DA
      B5008FE4C8009966330099999900000000000000000000000000036493007EE5
      FE0075DDFE0075DDFE0075DDFE0075DDFE0075DDFE0075DDFE0075DDFE001275
      A700BDD8E400B4B0AD00000000000000000000000000005050000073730025FF
      FF0000737300B6B6B600CECECE0086868600FFD48E0000000000000000000000
      0000FFF0D400FFFFFF00000000000000000000000000CDD0D1009C694700C7AC
      9900C7AD9A00C7AF9700C7AF9500C7AD9500C7B2930039303100C1A78E009869
      4700A27E600039303100A0999A00CACED10000000000CC99660000000000F7FC
      FB00DCF5EB00FFE7FF005672910000333300AEDACD00A1CFC900000000000000
      0000000000009966330099999900000000000000000083B4C8002489B400B7FC
      FF00B7FCFF00B7FCFF00B7FCFF00B7FCFF00B7FCFF00B7FCFF0052BBE400288F
      8D000000000000000000B7B5B20000000000009696008EFFFF006BFFFF00B1FF
      FF00007373006E6E6E00E6E6E60086868600FFD48E00FFD48E00FFE2B100FFE2
      B100FFF0D400FFF0D400000000000000000000000000CDD0D2009C6A4700CCB3
      A700CEB5A000CBB3A200C8B49400C9B29900C7B293003F363500CCB19A00E4D4
      C800A67E5C0039303100A0999A00CACFD20000000000CC9966000000000043B5
      8D0029A67E006484A7003C7F5F002AA33B002E5E9200628A880088CE8800A2DD
      CF000000000099663300999999000000000000000000036493002187BB002187
      BB002187BB002187BB002187BB002187BB002187BB002187BB001275A700009F
      2F000000000000000000000000000000000000969600B1FFFF00D4FFFF00D4FF
      FF00007373006E6E6E00F2F2F20086868600FFC66B0000000000000000000000
      0000FFE2B100FFF0D400000000000000000000000000CDD1D3009E6B4700DBC4
      BE00D3BFAE00CFBAA300CEB99F00CAB59700C8B394004B413D00B79A8A00A379
      5700A8866400393031009F999A00CCD1D40000000000CC9966000000000073C5
      9100B0AE850060B791003DD69F002EC471000097420000621200008B24008DAA
      5B00FFE8BE009966330099999900000000000000000000000000000000002187
      BB0086ECFF000000000000000000FFD9A90000AF420000AF4200009E2C000000
      000066C582000000000000000000000000000000000000B9B90025FFFF006BFF
      FF0000737300C0C0C000DADADA0086868600FFC66B00FFC66B00FFD48E00FFD4
      8E00FFE2B100FFE2B100000000000000000000000000000000009C6A4700E7DB
      DE00E7DBDE00E7DBDE00DCC8BD00CDBB9F00C8B49400463C3A00AA9C9D00CDBA
      B000C9B3960045363300A1999A00CACED10000000000CC9966000000000090B0
      7A0058BB830032D59E0000CC990000D6AD00008B2400AAB35D00C4C17700FFCF
      BB00FED6AC009966330099999900000000000000000000000000000000002D92
      C60086ECFF0086ECFF0000000000FFE8CB0000D16E0000AF420066B066000000
      000000000000B4B0AD0000000000000000000000000096620000B97A000000FF
      FF0000DCDC00A4A0A000C0C0C00086868600FFB8480000000000FFC66B00FFD4
      8E00FFD48E00FFE2B100000000000000000000000000CBCDCD0098684600F7EF
      EF00F7EFEF00F7EFEF00EFE7E700EFE3E700C9B6950041383700AA989A00BFC2
      C300CED3D500BEAFA400000000000000000000000000CC99660000000000A5BA
      890001A5750000CC990000CC990000CC9900017A12003CA06400E2CFA900FFCC
      9900FFD8B2009966330099999900000000000000000000000000000000003399
      CD00A1E6F50085E9FF000000000000000000009F2F00007C000066B066000000
      000000000000B4B0AD000000000000000000000000009662000096620000B97A
      000000DCDC0086868600A4A0A000FFAA0000FFB84800FFB8480000000000FFC6
      6B00FFD48E00FFD48E00000000000000000000000000CAC9C80094654500F7F7
      F700F7F7F700F7F7F700F7EFF700EFE7E700CFBBA100483E3B00A8928F00C2C4
      C600CDD0D20095654500CAC9C8000000000000000000CC99660000000000EDCE
      B90080B47F006BB37F0079CE9A0000CC990003925B000A976C00E8C9BA00F5C9
      9400DFD7B2009966330099999900000000000000000000000000000000005DAC
      D40067B7DD00A9F1FF00CDFAFD00CDFAFD0000000000FFE8CB00000000000000
      00000000000000000000000000000000000000000000734A0000966200009662
      0000B97A000000737300DC920000FFAA0000FFAA0000FFB84800FFB84800FFC6
      6B00FFC66B00FFD48E00000000000000000000000000000000009C694700FFFB
      FF00FFFBFF00FFFBFF00F7F7F700EFEBEF00DFD1CB00473A36009F6B48009666
      450095664500A06B47008E6144000000000000000000CC99660000000000E6CB
      9900F0CA9400F0CA940081AF7B0080B8850098988800CFC39300F6CC9700DEC6
      8C00FAD6AE009966330099999900000000000000000000000000000000000000
      00005DACD400319ACB003597CD002C92C3000000000000000000000000000000
      00000000000000000000000000000000000000000000734A0000734A00009662
      000096620000B97A0000DC920000DC920000FFAA0000FFAA0000FFB848005032
      0000FFAA2500FFFFFF000000000000000000000000000000000091634400FFFB
      FF00FFFFFF00FFFBFF00F7F7F700F7EFEF00E7DBDE004C3B35009C999900CCCF
      D100000000009B694600CDD0D2000000000000000000CC996600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009966330099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050320000734A0000734A
      00009662000096620000B97A0000DC920000DC920000FFAA0000FFAA00005032
      0000FFAA250000000000000000000000000000000000000000009F6B47009D69
      47009C6947009C6947009D6947009D6947009D6A47009D6A4700CCCFD1000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC9966009966330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005032000050320000734A
      0000734A00009662000096620000B97A0000DC920000DC920000FFAA00005032
      0000000000000000000000000000000000000000000000000000CED3D500CDD0
      D20000000000000000000000000000000000CCCFCE00CDD0D100000000000000
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
      000000000000000000000000000000000000000000000000000000000000CCD1
      D400CCD1D400CCD1D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2A2B002B2A2B002B2A2B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      80008080800080808000000000000000000000000000000000007F573A00513C
      25004D3821004D3821004C3821006D593F004F3B25009B999900CCD1D4000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00002B2A2B00CED2D500CED2D5002B2A2B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00808080008080800000000000FFFFFF0000FFFF0000000000FFFFFF008080
      8000FFFFFF008080800000000000000000000000000000000000966A4900C4AD
      91008F614200E1D0C50074523D00CAB39F004C3A2A009C999900C4C8CB00C6CA
      CC00CACFD100CACFD20000000000000000000000000000000000B54A6300FFDE
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFCECE000000000000000000000000000000000000000000000000000000
      0000000000002B2A2B00ADAEAD00ADAEAD004241420000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00808080000000000000000000000000000000000080808000FFFF
      FF0080808000FFFFFF0080808000000000000000000000000000966A4A00C7B2
      930092644500996747009C6A4800C7AC9A004C3A2A009B9999009B9797009C98
      98009B9899009A99990000000000000000000000000000000000B54A6300FFEF
      EF00000000000000000000000000FFF7F700FFDEE700E7B5BD00000000000000
      0000FFDEDE000000000000000000000000000000000000000000000000000000
      0000000000002B2A2B00ADAEAD00ADAEAD0084828400424142002B2A2B004241
      4200000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00808080008080800000000000000000000000000091654600CAAF
      9D00C7AF9800C7AF9500C7AC9400C7AE95004C3A29009C999900524232005142
      33004F4030009E97970000000000000000000000000000000000B54A63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFEF0094394A0000000000000000000000000000000000424142004241
      420042414200ADAEAD00ADAEAD00ADAEAD00ADAEAD00ADAEAD00ADAEAD008482
      8400424142004241420000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0080808000000000000000000000000000CCCED0008F6244009D6A
      4800F1E8E100EFE4DD00EEE5DD009A6D4D004C3A29009D999900E7D3D600E7D3
      D600DECFD6009B95940000000000000000000000000000000000000000007B7B
      7B00AD395200AD395200AD3952007BAD31007BAD3100AD395200AD395200B54A
      63007B7B7B000000000000000000000000000000000042414200ADAEAD00CED2
      D500CED2D500CED2D500ADAEAD009966000099660000ADAEAD00ADAEAD00ADAE
      AD00ADAEAD008482840042414200000000000000000000000000FFFFFF008080
      8000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0080808000FFFFFF00000000000000000000000000CCCED0008F6244009465
      4500885E42009C694600A06C4900926A4B0056442F009E979700E7DFDE00E7DF
      DE00E7D3D6009A969600CBD0D300000000000000000000000000000000000000
      00007BAD31007BAD3100EFD684007BAD31007BAD3100F7E79C00E7C673007BAD
      3100ADADB50000000000000000000000000042414200ADAEAD00CED2D500CED2
      D500CED2D500CED2D500ADAEAD00FF7D5A00FF7D5A00CED2D500ADAEAD00ADAE
      AD00ADAEAD00ADAEAD0084828400424142000000000000000000000000000000
      0000000000000000000000000000008080000080800000000000000000000000
      00000000000000000000000000000000000000000000CCCED00090624400ECE5
      E800ECDEE000E4DAD700CCB89D00CAB4980056442F009C959500EFDFDE00EFDF
      DE00E7DFDE009E949400C4C8CA00000000000000000000000000000000000000
      00009CC65A00E7C67300CEDEB500FFEFBD00FFEFBD00B5D67B00EFD684007BAD
      3100ADADB5000000000000000000000000002B2A2B00CED2D500CED2D500CED2
      D500CED2D500CED2D500CED2D500BD79000099660000ADAEAD00CED2D500CED2
      D500ADAEAD00ADAEAD00ADAEAD002B2A2B000000000000000000000000008000
      000000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF008000000000000000000000000000000000000000CCCED0009E6B47009767
      4600976746009A684600976746009767460099684600EDE2E100EFE3E700EFE3
      E700EFDFDE009E949400C6CACC00000000000000000000000000000000000000
      00009CC65A00B5D67B00FFEFBD00FFF7D600FFEFBD009CC65A00E7C673007BAD
      3100ADADB5000000000000000000000000002B2A2B000000000000000000CED2
      D500CED2D500CED2D500CED2D500FF7D5A0099660000BD790000ADAEAD00CED2
      D500CED2D500CED2D500CED2D5002B2A2B000000000000000000000000008000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000CDD1D300A06C4800E6D1C800FFF7F700FAEFEC008F6143009B6A4600F7EF
      EF00EFE3E7009C979700CDD2D500000000000000000000000000000000000000
      0000E7848400EFD68400FFF7D600FFFFEF00FFF7D6007BAD31007BAD3100C66B
      7B00000000000000000000000000000000002B2A2B0000000000000000000000
      000000000000F7CFA500FFAE8C00CED2D500FFAE8C0099660000BD790000CED2
      D500CED2D500CED2D500CED2D5002B2A2B000000000000000000000000008000
      0000FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF008000000000FFFF008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDD1D300A06C48009C6A470093644500A06B4700956544009F6B47007C57
      4000EFE7E7009C97970000000000000000000000000000000000000000000000
      00009CBD7B00E7848400E78484009CC65A009CC65A00C66B7B00C66B7B00ADAD
      B5000000000000000000000000000000000042414200CED2D500000000000000
      000000000000BD790000BD790000FF7D5A00FF7D5A0099660000BD7900000000
      0000CED2D500CED2D500ADAEAD00424142000000000000000000000000008000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDD1D300A06C4800E7DACF00FDFBFA00FFFBFF008E61440093644400F2EA
      E400EFE7E7009D979800C6CBCE00000000000000000000000000000000000000
      000000000000000000009CBD7B00E7848400E78484009CBD7B00CED6C6000000
      000000000000000000000000000000000000000000002B2A2B00CED2D5000000
      000000000000FFD7D600BD7900009966000099660000BD790000F7CFA5000000
      000000000000ADAEAD0042414200000000000000000000000000000000008000
      0000FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF0080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A06C4800E5D6CC00F9F6F400F6EDEC0091634400E2D2CC00F1E7
      E400E7D8D4009E979700B7BBBC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B2A2B004241
      4200CED2D500CED2D500CED2D500F7CFA500F7CFA5000000000000000000ADAE
      AD002B2A2B004241420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDD1D300CED3D5000000000000000000CCCFD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424142002B2A2B002B2A2B002B2A2B002B2A2B002B2A2B002B2A2B004241
      4200000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000390039003100
      3100310031000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B08
      100000000000000000000000000063001000630010006B081000731818008429
      1800000000000000000000000000000000000000000000000000000000000000
      00006B081000000000000000000063001000630010006B081000731818008429
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000630010006B08
      1000943121009C39210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C3921009431
      21006B0810006300100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000390039002900
      2900290029000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063001000630010006B081000731818007B21
      1800943121009C39210000000000000000000000000000000000000000000000
      000000000000000000000000000063001000630010006B081000731818007B21
      1800943121009C39210000000000000000000000000000000000000000000000
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
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      00006300100063001000630010006B0810006B0810007B2118007B2118008429
      1800943121009C39210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080008001800
      1000180810000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
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
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADB500ADADB500ADADB500ADADB500ADADB50000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A594
      520000E7E70094310000A5945200BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000E7E7009431000094310000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADB500ADAD
      B500ADADB5000000000000000000ADADB500ADADB500ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A594520094310000FFEFBD008C94730094310000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B54A6300AD395200B54A
      6300000000000000000000000000B54A6300AD39520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007363080000000000FFEFBD00CEDEB50073844A0094310000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B54A
      6300000000000000000000000000AD3952000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007363080063F7F700FFEFBD008C94730073844A009431
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C66B
      7B00B54A6300B54A6300B54A6300B54A630000000000ADADB500000000000000
      0000ADADB500ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5F7FF00FFEFBD00CEDEB5008C94
      730094310000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADB50000000000B54A63000000000000000000ADADB500ADADB500ADAD
      B500ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000736308000000000063F7F700FFEFBD00CEDE
      B50073844A009431000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B54A6300ADADB500AD395200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5945200A5F7FF0063F7F700FFEF
      BD008C9473009431000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD395200CE949C00AD395200000000000000000000000000ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5945200000000000000
      0000A59452000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7B5BD00AD395200CE949C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5945200A594
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C66B7B0000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000ADADB500ADADB500ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADB500ADADB500ADADB500ADADB500ADAD
      B500ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002994000029940000299400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000106BCE00005AB5000029940000217B008CC6
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B8CDE00396BC600396BC600396BC600396BC600396B
      C600ADADB5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000299400ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006BB5F7006BB5F7006BB5F7006BB5F700005A
      B5008CC6FF000000000000000000000000000000000000000000000000000000
      000000000000ADADB500ADADB500ADADB500ADADB500ADADB50000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB5006B8CDE00F7BDDE00F7BDDE00F7BDDE006BD6FF0063F7
      F700ADADB5000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000299400ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000106BCE00E7E700006BD6FF006BD6FF005252
      FF006BB5F70000217B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE529400CE5294006B8CDE008CEFFF008CEFFF008CEFFF008CEFFF008CEF
      FF00ADADB5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004AC600ADADB500ADADB500004A
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD006BB5F700E7E700008CDEFF007384FF000000
      DE004AD6F700005AB50000000000000000000000000000000000ADADB500ADAD
      B500ADADB5000000000000000000ADADB500ADADB500ADADB500000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400CEAD7300CEAD73006B8CDE00F7BDDE00F7BDDE00A5F7FF00A5F7FF00A5F7
      FF00ADADB5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004AC600004AC600004AC600004A
      C600000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00106BCE00106BCE00BDEFF700ADE7FF008CDEFF00ADADFF006BD6
      FF004AD6F700005AB500000000000000000000000000B54A6300AD395200B54A
      6300000000000000000000000000B54A6300AD39520000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400DEBD8C00DEBD8C006B8CDE00F7BDDE00F7BDDE00396BC60000000000396B
      C600ADADB5000000000000000000000000000000000000000000B53139009410
      2100BD7B9400000000000000000000000000105ADE00ADADB50000000000105A
      DE0000000000ADADB50000000000000000000000000000000000000000000000
      00000000000094085A0094085A00EFFFFF00BDEFF70029EF290029EF2900009C
      10006BD6FF00106BCE000000000000000000000000000000000000000000B54A
      6300000000000000000000000000AD3952000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400EFCEB500EFCEB5006B8CDE00CEF7F700CEF7F700396BC600396BC600EFCE
      B500ADADB5000000000000000000000000000000000000000000000000000000
      000094102100CE949C000000000000000000105ADE00ADADB500000000000000
      00000073F700ADADB50000000000000000000000000000000000000000000000
      00000000000094085A009C184200BDBDBD00CEF7F700ADE7FF009CDEFF00087B
      08008CC6FF00398CDE000000000000000000000000000000000000000000C66B
      7B00B54A6300B54A6300B54A6300B54A630000000000ADADB500000000000000
      0000ADADB500ADADB5000000000000000000000000000000000000000000CE52
      9400F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      C600ADADB5000000000000000000000000000000000000000000000000000000
      00000000000094102100CE949C000073F7000073F7000073F7000073F7000073
      F7000073F7000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900FFFFFF00F7FFFF0000000000BDEFF7008CC6
      FF008CC6FF000000000000000000000000000000000000000000000000000000
      0000ADADB50000000000B54A63000000000000000000ADADB500ADADB500ADAD
      B500ADADB500000000000000000000000000000000000000000000000000CE52
      9400000000000000000000000000000000000000000000000000F7DEC600F7DE
      C600ADADB5000000000000000000000000000000000000000000000000000000
      00000000000094102100CE949C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900FFFFFF00FFFFFF00EFFFFF00398CDE00398C
      DE00000000000000000000000000000000000000000000000000000000000000
      0000B54A6300ADADB500AD395200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE52
      9400BD217300DEDEDE00DEDEDE00DEDEDE00DEDEDE00BD217300F7DEC600F7DE
      C600ADADB5000000000000000000000000000000000000000000000000000000
      0000CE949C00AD39520094102100CE949C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900398CDE00398CDE00398CDE008CC6FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD395200CE949C00AD395200000000000000000000000000ADADB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD7B9400BD7B9400BD21730000FFFF00BD217300BD7B9400BD7B9400BD7B
      9400000000000000000000000000000000000000000000000000000000000000
      0000E7B5BD00CE949C009410210000000000CE949C0000000000000000000000
      0000000000000000000000000000000000000000000000000000D6521800BDBD
      BD00BDBDBD00D6521800D6521800BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7B5BD00AD395200CE949C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD217300BD217300BD21730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD3952009410210094102100941021009C18420000000000000000000000
      0000000000000000000000000000000000000000000000000000D6521800D652
      1800D6521800D6521800D6521800D6521800D652180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C66B7B0000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000D6D6D600C6C6C600CECE
      CE00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084736300634229006B5242009C94
      9400BDBDBD00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC000000000000000000000000000000000000000000CCFFFF00FFCC
      CC00FFCCCC0000000000000000000000000063422900FFF7C600FFF7C6006342
      29009C949400BDBDBD00DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006666
      330066663300CCCCCC0000000000000000000000000000000000000000009999
      9900CCCCCC000000000000000000000000007B635200FFE7AD00FFE7AD00FFE7
      AD00634229009C949400CECECE00E7E7E70000000000EFEFEF00EFEFEF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADB500ADADB500ADADB500ADADB500ADAD
      B500ADADB500ADADB50000000000000000000000000000000000666633006666
      66006666330066663300CCCCCC00000000000000000000000000CCCCCC009999
      990099999900000000000000000000000000DEDED60063422900FFC68C00FFC6
      8C00FFC68C006B524200B5B5B500CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600CECECE00DEDEDE00EFEFEF0000000000000000000000000000000000005A
      B50000000000005AB500ADADB5000000000000000000005AB500ADADB5000000
      0000ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5EFEF00A5EFEF00A5EFEF00A5EFEF00A5EF
      EF00215AD600ADADB50000000000000000000000000066663300663366006666
      3300663366006666330066663300CCCCCC000000000000000000CCCCCC009966
      6600CC99990000000000000000000000000000000000DEDED60063422900FFB5
      7B00FFB57B006342290094847B0073635200735242006342290063422900735A
      4A0094847B00BDBDBD00D6D6D600EFEFEF00000000000000000000000000005A
      B500ADADB500005AB500ADADB5000000000000000000005AB500ADADB500ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5EFEF00A5EFEF00A5EFEF00A5EFEF00A5EF
      EF00215AD600ADADB50000000000000000000000000000000000000000006666
      330066663300CCCCCC0000000000000000000000000000000000CCCCCC006666
      6600666666000000000000000000000000000000000000000000DEDED6007B63
      520063422900FFB57B00846B5A00D6CEBD00FFF7EF00FFF7EF00FFF7EF00D6CE
      BD00846B5A007B6B5A00BDBDBD00DEDEDE000000000000000000000000000000
      0000005AB500005AB500ADADB5000000000000000000005AB500005AB500005A
      B500000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB500ADADB500BDF7F7009CDEEF009CDEEF009CDEEF009CDE
      EF00215AD600ADADB50000000000000000000000000000000000000000006666
      660066663300CCCCCC0000000000000000000000000000000000CCCCCC006666
      3300996666000000000000000000000000000000000000000000000000000000
      0000B5ADA500846B5A00F7EFE700FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7
      DE00F7EFE700846B5A0094847B00CECECE000000000000000000000000000000
      000000000000106BCE00106BCE00105ADE00005AB500106BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600A5EFEF00A5EFEF00A5EFEF00CEF7F7009CDEEF009CDEEF009CDEEF009CDE
      EF00215AD600ADADB50000000000000000000000000000000000000000006666
      330066663300CCCCCC0000000000000000000000000000000000CCCCCC006633
      3300666633000000000000000000000000000000000000000000000000000000
      000084736300D6C6B500FFEFD60063422900FFEFD600FFEFD600FFEFD6006342
      2900FFEFD600D6C6B500735A4A00C6C6C6000000000000000000000000000000
      0000000000000000000000000000398CDE00105ADE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600A5EFEF00A5EFEF00A5EFEF00EFFFFF00EFFFFF00EFFFFF004A9CE7004A9C
      E700215AD600ADADB50000000000000000000000000000000000000000009999
      66006633330099CC990000000000000000000000000000000000999999006666
      3300999999000000000000000000000000000000000000000000000000000000
      00007B635200FFEFD600FFEFCE0063422900FFEFCE00FFEFCE00FFEFCE006342
      2900FFEFCE00FFEFD60063422900BDBDBD000000000000000000000000000000
      00000000000000000000AD395200D694AD00C66B7B00ADADB500ADADB5000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600CEF7F700CEF7F700BDF7F700F7FFFF00EFFFFF00EFFFFF004A9CE7002184
      D60000000000000000000000000000000000000000000000000000000000CC99
      9900666633009966660099999900CCCCCC00CCCCCC00CC999900666666006666
      3300CC9999000000000000000000000000000000000000000000000000000000
      000063422900FFE7C600FFE7C60084634A009C7B63009C7B63009C7B63008463
      4A00FFE7C600FFE7C60063422900C6C6C6000000000000000000000000000000
      000000000000AD395200BD7B940000000000D694AD00AD395200ADADB500ADAD
      B500000000000000000000000000000000000000000000000000000000002184
      D6009CDEEF009CDEEF009CDEEF002184D6002184D6002184D6002184D6002184
      D600000000000000000000000000000000000000000000000000000000000000
      0000666633006666330066663300663366006666330066663300666633006633
      6600000000000000000000000000000000000000000000000000000000000000
      000063422900FFE7C600FFDEBD00BDA5840063422900FFDEBD0063422900BDA5
      8400FFDEBD00FFE7C60063422900CECECE000000000000000000000000000000
      0000AD395200BD7B9400D694AD000000000000000000BD7B9400C66B7B00ADAD
      B500000000000000000000000000000000000000000000000000000000002184
      D600EFFFFF00EFFFFF00F7FFFF006BB5F7006BB5F700ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999966006666330066336600666633006666330066333300666666009999
      6600000000000000000000000000000000000000000000000000000000000000
      00008C736300D6BDA500FFDEB500FFDEB50084634200FFDEB50084634200FFDE
      B500FFDEB500D6BDA5007B635200DEDEDE00000000000000000000000000C66B
      7B00D694AD000000000000000000000000000000000000000000D694AD00BD7B
      9400ADADB5000000000000000000000000000000000000000000000000002184
      D600EFFFFF00EFFFFF00EFFFFF002184D6002184D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099996600666666006666330099999900CC9999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDB5AD00846B5200FFE7C600FFDEAD00BD9C7B0063422900BD9C7B00FFDE
      AD00F7DEBD00846B5200A59C8C00EFEFEF00000000000000000000000000BD7B
      940000000000000000000000000000000000000000000000000000000000D694
      AD00000000000000000000000000000000000000000000000000000000002184
      D6002184D6002184D6002184D6002184D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C847300846B5200D6BD9C00FFDEBD00FFDEAD00FFDEBD00D6BD
      9C00846B52008C7B6B00EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDB5AD008C7363006342290063422900634229008473
      6300B5ADA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700DEDEDE00FFFFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFF700000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
      0000E7E7E70063422900C6C6C600E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0000000000000000000000000000000000E7E7
      E700BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00CECECE00FFFFF7000000000000000000000000000000
      00009C7B4A00946B4200946B42008C6B42008C6342008C6342008C6342008463
      3900845A31009C9C9C000000000000000000000000000000000000000000E7E7
      E7006342290063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A56B4A004A3921006B5229006B5229006B5229006B5229006B52
      29004A3921004A3921009C9C9C00000000000000000000000000E7E7E7006342
      2900634229006342290063422900634229006342290063422900634229006342
      29006342290063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000A5845A00FFF7DE00FFF7DE00FFF7DE00FFEFD600FFEFD600FFEFC600FFEF
      C600845A31009C9C9C0000000000000000000000000000000000E7E7E7006342
      2900FFDEA50063422900BDBDBD00DEDEDE00E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFEF000000000000000000000000000000000000000000000000000000
      000000000000A56B4A00AD9C7B0000000000EFEFEF00EFEFEF00EFEFEF00EFEF
      EF005A4A2100B5A584009C9C9C000000000000000000E7E7E70063422900E7C6
      9400FFF7C600FFF7C600FFF7C600FFF7C600FFF7C600FFF7C600FFF7C600FFF7
      C600FFF7C60063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000AD8C5A00FFF7E700FFF7E700FFF7E700FFF7DE00FFF7DE00FFEFD600FFEF
      D600845A31009C9C9C00000000000000000000000000E7E7E70063422900FFE7
      B500FFD6A500634229006B5242006B4A3900634A31006342290063422900BDBD
      BD00CECECE00FFFFEF00000000000000000000000000000000009C9C9C009C9C
      9C009C9C9C00A56B4A00B5A57B00000000006B5A3900846B4A00EFEFEF00EFEF
      EF005A4A2100B5A584009C9C9C0000000000FFFFF70063422900FFF7D600FFF7
      D600FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7AD00FFE7
      AD00FFEFB50063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000B58C6300FFFFEF00FFFFEF00FFF7E700FFF7E700FFF7DE00FFF7DE00FFF7
      DE00845A31009C9C9C000000000000000000FFFFEF0063422900FFEFBD00FFDE
      AD00FFD69C0063422900FFE7B500FFE7B500FFE7B500FFE7B500BD845A006342
      2900BDBDBD00E7E7E700000000000000000000000000000000004A3921004A39
      21006B522900A56B4A00B5A57B00000000000000000000000000000000000000
      00005A4A2100B5A584009C9C9C000000000063422900FFF7C600FFF7CE00FFF7
      CE00EFC69400EFC69400EFC69400EFC69400EFC69400EFC69400EFC69400EFC6
      9400F7D6A50063422900BDBDBD00E7E7E7000000000000000000000000000000
      0000B58C6300FFFFEF00FFFFEF00FFFFEF00FFF7E700FFF7E700FFF7DE00FFF7
      DE00845A31009C9C9C00000000000000000063422900FFEFBD00FFE7B500FFDE
      A500FFCE940063422900FFE7B500FFE7B500FFE7B500FFE7B500BD845A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000BDA58400AD9C
      7B0000000000A56B4A00C6B59400B5A58400B5A58400B5A58400B5A58400B5A5
      8400B5A58400B5A584009C9C9C000000000063422900FFEFBD00FFF7C600FFF7
      C600EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD7B00EFAD
      7B00EFC6940063422900CECECE00FFFFF7000000000000000000000000000000
      00009C636300FFFFF700FFFFF700FFFFEF00FFFFEF00FFF7E700EFDEC600EFDE
      C600845A31009C9C9C00000000000000000063422900FFEFBD00FFE7B500FFD6
      9C00FFC68C0063422900FFEFBD00FFEFBD00FFEFBD00FFEFBD00BD845A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000BDA58400AD9C
      7B0000000000A56B4A00FFFFEF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7
      D60084735200B5A584009C9C9C000000000063422900FFEFB500EFC694000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063422900E7E7E700000000000000000000CEFF004A7BA5000000
      00009C636300FFFFF7008CA5BD00CEFFFF00FFFFEF00E7D6BD00C6A58400C6A5
      8400845A31009C9C9C00000000000000000063422900FFE7B500FFDEA500FFCE
      9400FFBD840063422900FFEFC600FFEFC600FFEFC600FFEFC600BD845A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000BDAD8C00B5A5
      7B0000000000A56B4A00FFFFEF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7
      D60084735200DECEAD009C9C9C000000000063422900EFC69400000000006342
      2900634229006342290063422900634229006342290063422900634229006342
      290063422900E7E7E700000000000000000000000000EFF7F70000CEFF00527B
      A5009C6363005A84AD00CEFFFF00FFFFF700FFFFF700E7D6BD00FFFFF700FFFF
      F700845A31009C9C9C00000000000000000063422900FFE7B500FFD6A500FFC6
      8C00FFBD840063422900FFF7D600FFF7D600FFF7D600FFF7D600C68C5A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6AD8C00B5A5
      7B0000000000A56B4A00FFFFEF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7
      D60010080000A58C6B009C9C9C00000000006342290000000000000000006342
      2900FFD69C00FFD69C00FFD69C00FFD69C00FFD69C00FFD69C00FFD69C006342
      2900DEDEDE000000000000000000000000000000000000000000CEFFFF0000CE
      FF003152730084FFFF000000000000000000FFFFF700E7D6BD00FFFFF700F7D6
      B5009C9C9C0000000000000000000000000063422900FFDEAD00FFD69C00FFC6
      8C00FFD6AD0063422900FFF7E700FFF7E700FFF7D600FFF7D600CE8C5A006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6B59400C6B5
      9400B5A58400A56B4A00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFF
      EF006B5A3900BDA584009C9C9C00000000006342290063422900634229006342
      2900FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD00FFDEAD006342
      2900E7E7E70000000000000000000000000000000000527BA500527BA50031CE
      FF0031CEFF005A84AD005A84AD005A84AD008CADC600E7D6BD00F7D6B500845A
      31000000000000000000000000000000000063422900FFDEA500FFCE9400FFD6
      B50063422900FFFFF700FFFFF700FFF7E700FFF7E700FFF7E700CE9463006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6B59400FFFF
      EF00F7EFDE00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B
      4A00A56B4A00A56B4A0000000000000000000000000000000000000000006342
      2900FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C600FFE7C6006342
      2900E7E7E7000000000000000000000000000000000000000000527BA50031CE
      FF0031CEFF0000CEFF004A7BA500000000000000000000000000000000000000
      00000000000000000000000000000000000063422900FFD69C00FFDEBD006342
      2900000000000000000000000000FFFFF700FFFFF700FFFFF700CE9463006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000C6B59400FFFF
      EF00F7EFDE00F7EFDE00F7EFDE00F7E7D600F7E7D600100800004A3921009C9C
      9C00000000000000000000000000000000000000000000000000000000006342
      2900FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00FFEFDE006342
      2900E7E7E70000000000000000000000000000000000527BA50084FFFF000000
      0000527BA50084FFFF0000CEFF00527BA5000000000000000000000000000000
      00000000000000000000000000000000000063422900FFDEBD00634229000000
      0000000000000000000000000000000000000000000000000000D69463006342
      2900BDBDBD00E7E7E70000000000000000000000000000000000EFDEB500FFFF
      EF00FFFFEF00FFFFEF00FFFFEF00FFFFEF00FFFFEF006B5A39004A3921009C9C
      9C00000000000000000000000000000000000000000000000000000000006342
      2900FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF7006342
      2900E7E7E70000000000000000000000000000000000EFF7F700000000000000
      0000527BA50000000000EFF7F70000CEFF000000000000000000000000000000
      00000000000000000000000000000000000063422900A58C7B00FFC68C00FFC6
      8C00FFC68C00FFC68C00FFC68C00FFC68C00FFC68C00FFC68C00FFC68C006342
      2900CECECE00FFFFEF0000000000000000000000000000000000A56B4A00A56B
      4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A00A56B4A000000
      0000000000000000000000000000000000000000000000000000000000006342
      2900000000000000000000000000000000000000000000000000000000006342
      2900FFFFF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063422900634229006342
      2900634229006342290063422900634229006342290063422900634229006342
      2900FFFFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006342
      2900634229006342290063422900634229006342290063422900634229006342
      290000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF0038003FFFFC001
      E0038003FE008001E0038023FE00A001E0038043FE00A001C0038003C000A001
      C00380738000A039800900038000A009800D00738000A001E2138003C000A001
      E21B80438003A001E11380238001A001E09F8003C001A001F07F8003C009BFF9
      FFBF8007C01F8003FFFF800FCF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FF
      FFFFF1FF8001C01FE187F0FF0000C003C003F87F0000C003CA13F80F0000C003
      D003C00300008003E007800180018001F0070000C0038001F0070000E0078001
      F0076000E007F001F00F7800E00FF003F00F3810E01FF001FC1F9819E03FF801
      FFFFC063FFFFF9BFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8FFFFFFFFFFFC0FF8C03FFFFFFFFFFFF8FFFFFFFFFFFC007FFFFF003F003
      FFFFFFFFFFFFFFFFC0078FFFEE0FF60FFFFF8C03C3FFC3FFC0078FFFFE03FE03
      FFFFFFFFFFFFFFFFC007FFFFF003F003FFFF8FFFFFFFFFFFC0078C03FFFFFFFF
      FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC007C007C007FFFFFFFFFFFFFFFFF87FC03FF83FF807
      F93FFFFFFFFFFFFFFE3FC007C007C007FE7FFFFFFFFFFFFFF9BFC03FF01FF807
      F93FFFFFFFFFFFFFFC3FC007C007C007FFFFFFFFFFFFFFFFFFFFC03FF83FF807
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C003FFFFFBEFFFFFC003FFFFF00FFFFFE0FFFFFFF7DFFFFFF07FF19FC63FF87F
      F03FF99F8E7FFE7FFA0FF91FEEFFFE7FFC0FF81FE0B3FE7FFF03F81FF587FF3F
      FE83F89FF18FFF9FFF03F18FF18FFF0FFFB7FFFFF1DFFFFFFFCFFFFFFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFF
      FE07FE3FFE0FFBEFFC07FF3FFE07F00FF007FF3FFE03F7DFF007FF0FFC03C63F
      E007FF0FF0038E7FE027C72BF803EEFFE007F333F803E0B3E007F807F807F587
      E007F9FFF80FF18FE007F0FFF81FF18FF00FF17FC03FF1DFFC7FF07FC07FFBFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFF03FFFFFFFFFF
      F7C701FFFFFFFFFFE3E7008FF3EFFE03C1C70001E997FE0380C78000E18FFE03
      E3C7C000F18FF003E3C7F000F83FE003E3C7F000FE7FE003E3C7F000FC1FE00F
      E007F000F90FE00FF00FF000F18FE03FF00FF000E7C7E07FF81FF000EFEFE0FF
      FFFFF801FFFFFFFFFFFFFC07FFFFFFFFFFFFF8FFFFFFF001F803F0FFFC01E000
      F003E0FFF801C000F003C007F9018000F0038003C1010000F0030003C1F10000
      F0030003C8010000F0030003C8011FF990030003C801200380030003C8016007
      C3070003C0010007800F0003C003E007C1FF0E03C00FE00790FF1FC3C00FE007
      B4FF0003C01FEFE7FFFF8007FFFFE00F00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu_editor: TPopupMenu
    Images = ToolbarImages
    OwnerDraw = True
    Left = 620
    Top = 21
    object Novo1: TMenuItem
      Caption = 'Novo'
      ImageIndex = 0
      ShortCut = 16463
      OnClick = Novo1Click
    end
    object Abrir1: TMenuItem
      Caption = 'Abrir'
      ImageIndex = 1
      ShortCut = 16449
      OnClick = Abrir1Click
    end
    object Salvar1: TMenuItem
      Caption = 'Salvar'
      ImageIndex = 2
      ShortCut = 16450
      OnClick = Salvar1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ImageIndex = 3
      ShortCut = 16464
      OnClick = Imprimir1Click
    end
    object Exportar1: TMenuItem
      Caption = 'Exportar'
      ImageIndex = 30
      ShortCut = 16453
      OnClick = Exportar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Desfazer1: TMenuItem
      Caption = 'Desfazer'
      ImageIndex = 4
      ShortCut = 16474
      OnClick = Desfazer1Click
    end
    object Recortar1: TMenuItem
      Caption = 'Recortar'
      ImageIndex = 6
      ShortCut = 16472
      OnClick = Recortar1Click
    end
    object Copiar1: TMenuItem
      Caption = 'Copiar'
      ImageIndex = 7
      ShortCut = 16451
      OnClick = Copiar1Click
    end
    object Colar1: TMenuItem
      Caption = 'Colar'
      ImageIndex = 8
      ShortCut = 16470
      OnClick = Colar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Selecionartudo1: TMenuItem
      Caption = 'Selecionar tudo'
      ImageIndex = 11
      ShortCut = 16468
      OnClick = Selecionartudo1Click
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ImageIndex = 5
      ShortCut = 16460
      OnClick = Localizar1Click
    end
    object Inserir1: TMenuItem
      Caption = 'Inserir'
      object Imagem1: TMenuItem
        Caption = 'Imagem'
        ImageIndex = 31
        ShortCut = 16466
        OnClick = Imagem1Click
      end
      object Arquivomultimedia1: TMenuItem
        Caption = 'Arquivo multimedia'
        ImageIndex = 29
        OnClick = Arquivomultimedia1Click
      end
      object Arquivotexto1: TMenuItem
        Caption = 'Arquivo texto'
        ImageIndex = 27
        OnClick = Arquivotexto1Click
      end
      object Hyperlink1: TMenuItem
        Caption = 'Hyperlink'
        ImageIndex = 24
        ShortCut = 16456
        OnClick = Hyperlink1Click
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Fontemenu: TMenuItem
      Caption = 'Formatar fonte'
      ImageIndex = 9
      object Fonte1: TMenuItem
        Caption = 'Fonte'
        ImageIndex = 9
        OnClick = Fonte1Click
      end
      object Cor1: TMenuItem
        Caption = 'Cor'
        ImageIndex = 10
        OnClick = Cor1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Negrito1: TMenuItem
        Caption = 'Negrito'
        ImageIndex = 13
        ShortCut = 16462
        OnClick = Negrito1Click
      end
      object Italico1: TMenuItem
        Caption = 'It'#225'lico'
        ImageIndex = 15
        ShortCut = 16457
        OnClick = Italico1Click
      end
      object Sublinhado1: TMenuItem
        Caption = 'Sublinhado'
        ImageIndex = 16
        ShortCut = 16467
        OnClick = Sublinhado1Click
      end
    end
    object Formatarpargrafo1: TMenuItem
      Caption = 'Formatar par'#225'grafo'
      ImageIndex = 17
      object esquerdo1: TMenuItem
        Caption = 'esquerdo'
        ImageIndex = 17
        OnClick = AlignButtonClick
      end
      object centro1: TMenuItem
        Caption = 'centro'
        ImageIndex = 18
        OnClick = AlignButtonClick
      end
      object direita1: TMenuItem
        Caption = 'direita'
        ImageIndex = 19
        OnClick = AlignButtonClick
      end
      object justificado1: TMenuItem
        Caption = 'justificado'
        ImageIndex = 20
        OnClick = AlignButtonClick
      end
    end
    object Marcador1: TMenuItem
      Caption = 'Marcador'
      ImageIndex = 21
      ShortCut = 16461
      OnClick = Marcador1Click
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'rtf'
    Filter = 'Formato Rich Text (*.rtf)|*.rtf|Arquivo de Texto (*.txt)|*.txt'
    Title = 'Salvar como'
    Left = 536
    Top = 21
  end
  object OpenDialog: TOpenDialog
    Filter = 
      'Todos os arquivos (*.*)|*.*|Formato Rich Text (*.rtf)|*.rtf|Arqu' +
      'ivo de Texto (*.txt)|*.txt'
    FilterIndex = 0
    Title = 'Abrir arquivo'
    Left = 508
    Top = 21
  end
  object re_ReplaceDialog: TReplaceDialog
    OnFind = re_ReplaceDialogFind
    OnReplace = re_ReplaceDialogReplace
    Left = 368
    Top = 21
  end
  object ColorDialog1: TColorDialog
    Left = 564
    Top = 21
  end
  object FontDialog1: TFontDialog
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Left = 424
    Top = 21
  end
  object CompressStream: TBackupFile
    Version = '6.00'
    BackupMode = bmAll
    CompressionLevel = clMax
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = False
    RestoreFullPath = False
    SaveFileID = False
    Left = 452
    Top = 21
  end
  object PrintDialog: TPrintDialog
    Left = 648
    Top = 21
  end
  object ProgresTimer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = ProgresTimerTimer
    Left = 396
    Top = 21
  end
  object PopupMenu_menu: TPopupMenu
    Left = 26
    Top = 135
    object Adicionarmenu1: TMenuItem
      Caption = 'Adicionar item'
      ImageIndex = 5
    end
    object Editaritem1: TMenuItem
      Caption = 'Editar item'
    end
    object Removeritem1: TMenuItem
      Caption = 'Remover item'
      ImageIndex = 6
    end
    object Limpar1: TMenuItem
      Caption = 'Limpar menu'
      ImageIndex = 13
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object Moverparacima1: TMenuItem
      Caption = 'Item anterior'
      ImageIndex = 10
    end
    object Moverparabaixo1: TMenuItem
      Caption = 'Pr'#243'ximo item'
      ImageIndex = 11
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.swf,*.mp3,*.jpg,*.bmp]|*.swf;*.mp3;*.jpg;*.' +
      'bmp|Flash [*.swf]|*.swf|Audio MP3 [*.mp3]|*.mp3|Imagem JPEG [*.j' +
      'pg]|*.jpg|Bitmap [*.bmp]|*.bmp'
    Title = 'Importar arquivo multimedia'
    Left = 480
    Top = 21
  end
  object ImageList_menuweb: TImageList
    Left = 82
    Top = 135
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      000000000000E4E4E400D9D9D900FFF9ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E4E40060412A00C3C3C300E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4E4
      E40060412A0060412A00BEBEBE00E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E794D00956E4700956E47008F6B43008B6640008B6640008B6640008160
      3900835C36009999990000000000000000000000000000000000000000000000
      000000CCFF004E7BA6004E7BA6004E7BA6004E7BA6004E7BA6004E7BA6004E7B
      A6004E7BA6009999990000000000000000000000000000000000E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400FFF9ED000000000000000000000000000000000000000000E4E4E4006041
      2A00FFDCA70060412A00B8B8B800D9D9D900E4E4E400E4E4E400E4E4E400E4E4
      E400FFF9ED000000000000000000000000000000000000000000000000000000
      0000A5835F00FDF1DD00FDF1DD00FDF1DD00FCEED000FCEED000FBE9C400FBE9
      C400835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FDF1DD00FDF1DD00FDF1DD00FCEED000FCEED000FBE9C400FBE9
      C4004E7BA600999999000000000000000000000000000000000060412A006041
      2A006F5643006F5643006B4F3B006649330060412A0060412A0060412A00BEBE
      BE00CCCCCC00FFF9ED00000000000000000000000000E4E4E40060412A00FFE4
      B000FFD6A10060412A006F5643006B4F3B006649330060412A0060412A00BEBE
      BE00CCCCCC00FFF9ED0000000000000000000000000000000000000000000000
      0000AE885E00FEF6E600FEF6E600FEF6E600FDF1DD00FDF1DD00FCEED000FCEE
      D000835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FEF6E600FEF6E600FEF6E600FDF1DD00FDF1DD00FCEED000FCEE
      D0004E7BA6009999990000000000000000000000000060412A00FFECB900FFEC
      B900FFE7B500FFE7B500FFE7B500FFE7B500FFE7B500FFE7B500BD8559006041
      2A00BEBEBE00E4E4E4000000000000000000FFF9ED0060412A00FFECB900FFDF
      AA00FFD09A0060412A00FFE7B500FFE7B500FFE7B500FFE7B500BD8559006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEF8EF0000000000000000000000000000000000000000000000
      0000835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FEF8EF0000000000000000000000000000000000000000000000
      00004E7BA6009999990000000000000000000000000060412A00FFEEBB00FFE7
      B500FFE7B500FFE7B500FFE7B500FFE7B500FFE7B500FFE7B500BD8559006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFEEBB00FFE7B500FFDC
      A700FFCD960060412A00FFE7B500FFE7B500FFE7B500FFE7B500BD8559006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEF8EF00FEF8EF00FEF8EF00FEF6E600FEF6E600FDF1DD00FDF1
      DD00835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FEF8EF00FEF8EF00FEF8EF00FEF6E600FEF6E600FDF1DD00FDF1
      DD004E7BA6009999990000000000000000000000000060412A00FFEEBB00FFE9
      BC00FFE9BC00FFE9BC00FFE9BC00FFE9BC00FFE9BC00FFE9BC00BD8559006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFEEBB00FFE4B000FFD4
      9D00FFC68D0060412A00FFE9BC00FFE9BC00FFE9BC00FFE9BC00BD8559006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEFAF6000000000000000000000000000000000000000000E9D8
      C300835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FEFAF600000000000000000000000000000000000000000082FE
      FE004E7BA6009999990000000000000000000000000060412A00FFE7B500FFED
      C500FFEDC500FFEDC500FFEDC500FFEDC500FFEDC500FFEDC500BD8559006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFE7B500FFDCA700FFCD
      9600FFBB820060412A00FFEDC500FFEDC500FFEDC500FFEDC500BD8559006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEFCF700FEFCF700FEFCF700FEF8EF00E2D3B900C6A58400C6A5
      8400835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FEFCF700FEFCF700FEFCF700FEF8EF0082FEFE0000CCFF0000CC
      FF004E7BA6009999990000000000000000000000000060412A00FFF0D000FFF0
      D000FFF0D000FFF0D000FFF0D000FFF0D000FFF0D000FFF0D000C58B5D006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFE4B000FFD6A100FFC6
      8D00FFBB820060412A00FFF1D500FFF0D000FFF0D000FFF0D000C58B5D006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEFCF700000000000000000000000000E4D3B900FEFCF100FEFC
      F100835C36009999990000000000000000000000000000000000000000000000
      000000CCFF00FEFCF70000000000000000000000000082FEFE00FEFCF100FEFC
      F1004E7BA6009999990000000000000000000000000060412A00FFF5E100FFF5
      E100FFF5E100FFF5E100FFF5E100FFF5E100FFF1D500FFF1D500C98E5F006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFDFAA00FFD09A00FFC6
      8D00FFD1AA0060412A00FFF5E100FFF5E100FFF1D500FFF1D500C98E5F006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEFCF7000000000000000000FEFCF700E4D1BC00FEFAF600F4D3
      B200999999000000000000000000000000000000000000000000000000000000
      000000CCFF00FEFCF7000000000000000000FEFCF70082FEFE00FEFAF60082FE
      FE00999999000000000000000000000000000000000060412A00FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700CE9161006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFDCA700FFCD9600FFD6
      B20060412A00FFFBF200FFFBF200FFF7E700FFF7E700FFF7E700CE9161006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000B18A6300FEFCF700FEFCF700FEFCF700FEFCF700E4D1BC00F2D4B100835C
      3600000000000000000000000000000000000000000000000000000000000000
      000000CCFF00FEFCF700FEFCF700FEFCF700FEFCF70082FEFE0082FEFE004E7B
      A600000000000000000000000000000000000000000060412A00FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700CE9161006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFD49D00FFDDBB006041
      2A00FFFDF900FFFDF900FFFDF900FFFBF200FFFBF200FFFBF200CE9161006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060412A00FFF0D000FFF0
      D000FFF0D000FFF0D000FFF0D000FFF0D000FFF0D000FFF0D000D69665006041
      2A00BEBEBE00E4E4E400000000000000000060412A00FFDDBB0060412A000000
      0000000000000000000000000000FFFDF900FFFDF900FFFDF900D69665006041
      2A00BEBEBE00E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060412A00FFC68D00FFC6
      8D00FFC68D00FFC68D00FFC68D00FFC68D00FFC68D00FFC68D00C98E5F006041
      2A00CCCCCC00FFF9ED00000000000000000060412A00A08D7F00FFC68D00FFC6
      8D00FFC68D00FFC68D00FFC68D00FFC68D00FFC68D00FFC68D00FFC68D006041
      2A00CCCCCC00FFF9ED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060412A0060412A006041
      2A0060412A0060412A0060412A0060412A0060412A0060412A0060412A006041
      2A00FFF9ED000000000000000000000000000000000060412A0060412A006041
      2A0060412A0060412A0060412A0060412A0060412A0060412A0060412A006041
      2A00FFF9ED000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF8FFFFFFFFFFFFFFF0FFF803F803
      FFFFE0FFF003F003C007C007F003F003C0038003F003F00380030003F003F003
      80030003F003F00380030003F003F00380030003F003F00380030003F003F003
      80030003F307F30780030003F00FF00F80030003FFFFFFFF80031E03FFFFFFFF
      80030003FFFFFFFF80078007FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 54
    Top = 135
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 110
    Top = 135
  end
  object BmpToJpeg1: TBmpToJpeg
    BmpType = asStream
    JpegType = asStream
    JpegCompress = 30
    JpegPixel = asDefault
    JpegGrayscale = False
    JpegSmoothing = False
    JpegProgressive = False
    Left = 410
    Top = 170
  end
  object JpegToBmp1: TJpegToBmp
    BmpType = asStream
    JpegType = asStream
    BmpPixel = asDefault
    Left = 438
    Top = 170
  end
end
