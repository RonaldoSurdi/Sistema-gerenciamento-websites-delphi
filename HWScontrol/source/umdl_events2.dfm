object mdl_events2: Tmdl_events2
  Left = 268
  Top = 185
  Width = 843
  Height = 545
  Color = 16119285
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 827
    Height = 488
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
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 819
      Height = 480
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Lista de registros'
        object Paneltop: TPanel
          Left = 0
          Top = 0
          Width = 811
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object ToolBar_lng2: TToolBar
            Left = 0
            Top = 4
            Width = 241
            Height = 14
            Align = alNone
            AutoSize = True
            ButtonHeight = 12
            EdgeBorders = []
            TabOrder = 0
            object Label13: TLabel
              Left = 0
              Top = 2
              Width = 88
              Height = 12
              AutoSize = False
              Caption = 'Traduzir textos?'
            end
            object RadioButton1: TRadioButton
              Left = 88
              Top = 2
              Width = 44
              Height = 12
              Caption = 'Sim'
              TabOrder = 0
            end
            object RadioButton2: TRadioButton
              Left = 132
              Top = 2
              Width = 43
              Height = 12
              Caption = 'N'#227'o'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object RadioButton3: TRadioButton
              Left = 175
              Top = 2
              Width = 66
              Height = 12
              Caption = 'Solicitar'
              TabOrder = 2
            end
          end
          object ToolBar_web: TToolBar
            Left = 249
            Top = 0
            Width = 226
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonHeight = 20
            EdgeBorders = []
            TabOrder = 1
            object Label7: TLabel
              Left = 0
              Top = 2
              Width = 50
              Height = 20
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Website:'
              Layout = tlCenter
            end
            object ComboBox_web: TComboBox
              Left = 50
              Top = 2
              Width = 176
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 0
              OnChange = ComboBox_webChange
            end
          end
          object ToolBar_ent: TToolBar
            Left = 480
            Top = 0
            Width = 237
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonHeight = 20
            EdgeBorders = []
            TabOrder = 2
            Visible = False
            object Label16: TLabel
              Left = 0
              Top = 2
              Width = 50
              Height = 20
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Entidade:'
              Layout = tlCenter
            end
            object ComboBox_ent: TComboBox
              Left = 50
              Top = 2
              Width = 187
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              TabOrder = 0
              OnChange = ComboBox_entChange
            end
          end
        end
        object PageControlab: TPageControl
          Left = 0
          Top = 22
          Width = 811
          Height = 428
          ActivePage = TabSheet_grp
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 1
          OnChange = PageControlabChange
          object TabSheet_grp: TTabSheet
            Caption = 'Lista de Eventos'
            object Splitter1: TSplitter
              Left = 227
              Top = 0
              Height = 398
              OnMoved = Splitter1Moved
            end
            object Panel2: TPanel
              Left = 230
              Top = 0
              Width = 573
              Height = 398
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Panel3: TPanel
                Left = 1
                Top = 359
                Width = 571
                Height = 38
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 0
                object ToolBar_save1: TToolBar
                  Left = 281
                  Top = 2
                  Width = 288
                  Height = 34
                  Align = alRight
                  AutoSize = True
                  ButtonHeight = 30
                  Caption = 'pn_barra'
                  EdgeBorders = []
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object bt_new1: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 88
                    Height = 30
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
                    OnClick = bt_new1Click
                  end
                  object bt_cancel1: TComboSpeedButton
                    Left = 88
                    Top = 2
                    Width = 100
                    Height = 30
                    Hint = 'Cancelar evento selecionado'
                    PopupMenu = PopupMenu1
                    Caption = 'Cancelar'
                    Flat = True
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
                    OnClick = bt_cancel1Click
                  end
                  object bt_save1: TSpeedButton
                    Left = 188
                    Top = 2
                    Width = 100
                    Height = 30
                    Hint = 'Gravar dados'
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
                    OnClick = bt_save1Click
                  end
                end
                object ToolBar_cancel1: TToolBar
                  Left = 31
                  Top = 2
                  Width = 250
                  Height = 34
                  Align = alRight
                  AutoSize = True
                  ButtonHeight = 30
                  Caption = 'pn_barra'
                  EdgeBorders = []
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  Visible = False
                  object bt_del1: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 97
                    Height = 30
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
                    OnClick = MenuItem2Click
                  end
                  object bt_activate1: TSpeedButton
                    Left = 97
                    Top = 2
                    Width = 153
                    Height = 30
                    Hint = 'Reativar Evento selecionado'
                    Caption = 'Reativar'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      8E060000424D8E06000000000000360400002800000018000000190000000100
                      08000000000058020000120B0000120B000000010000D8000000A1F3DC008AF5
                      DC0077F7D90096F4DA00E7E7E600EAE5E300E3E4E2008CEFD300B8E8D7007CEF
                      D300E5E0DE00E9DFE000E2DEDB00D8DED700E4D9DA009CE2C700DBD7D300CBD9
                      CE00E3D4D60043EBBE0056E7C30052E8B90093DCC200E0CFD000D9CFCD00B9D3
                      C2004CDEB8003DE0B700D9C8C9003CDDAB0039DAAF0037DAAE004ED7A40034D8
                      AC00CAC2BE0038D6A8007DCDAF00A5C6B1003BD5A20038D3A60033D3A40036D3
                      A50074CBA900C0BEB70034D29D0038D0A10037D29E0037D09F00CAB9B9002BD3
                      970035D09F0031D2980036CF9F00C4B9B4002DD0930034CC9900C8B6B400C5B5
                      B20033CB980034CC920034C998008EBCA000BEB1AD006BBE9E0031C790006ABE
                      9D00BDB1AA0031C5920028C9880031C5910032C5930031C4920060BAA200BBAE
                      A90025C6890029C58300B8ABA5002FC18A002FC08A002FBF890079B3920025BF
                      81002EBC84002DBC83005BAF9A005CAF95002CBB7F002CB982002DBA820050AF
                      930026B97D00B3A09D0020BA760057AD8F005BAC8D002AB57A0045AB8D002AB4
                      790090A2910065A984002AB3790059A495001DB1790028B07200A99992001EB0
                      6E0026AE7200A7989000619F8C001EAB730015AD6C001FAA6E001CA76800A38F
                      8C004D9F710012A7650018A36F009D8C84003E9C68000CA2610015A065006B8D
                      8800269C6D00A18884001B9B690043947600119F5D00149E5F001E976E002E96
                      60000E99560020926700308F6A00948179001B945800159558003D886F001590
                      60008A7C77003C8A6000278E580033876800887972008C787300797676008573
                      6A0055726100716C69007D6C64006E6B68007B6861007867600072645D006763
                      610073625B006961600071615900695F5C00625B5700645B57006B5A52006357
                      530066585300645652006555500062544F002F56490031514800314C44003046
                      4000314540002E423C00303F3C00303939002D37320033302F00302F2F003030
                      2F002C2D2C00322D2B002C2D2D00272C2C00242D2B002E2B29002B2A2A002D2A
                      280028282800272727002A282600202726002827260021252500262423002022
                      2300222323001E1F2000201F1E001D1D1D001C1C1C00191D1D00191919001619
                      19001A18180015181800161717001414130011131300101010000F0F0F000D0E
                      0E00090A0A000809090005050500040404000303030000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000D7D7D7D7D7D7
                      D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
                      D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7BEAFB8D6D7D7D7D7D7D7D7D7
                      D7D7D7D7D7D7D7D7D7D7D7C08E979FBBD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
                      D7D7D7B33E499C95CFD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B9350C75A5
                      B2D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7CD6B1022969BC8D7D7D7D7D7D7
                      D7D7D7D7D7D7D7D7D7D7D7D7BC420A68A4B1D7D7D7D7D7D7D7D7D7D7D7D7D7D7
                      D7D7D7D7CA7B1718919EC2D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7C179926206
                      4CA090D4D7D7D7D7D7D7D7D7D7D7D7D7D7D7B58D89898C250E85A1BBD7D7D7D7
                      D7D7D7D7D7D7D7D7D7BF84735C6982720D309A93D0D7D7D7D7D7D7D7D7D7D7D7
                      C37D6E44566770863D0B71A3B4D7D7D7D7D7D7D7D7D7CCAD886D364057616A7F
                      76111C9499C8D7D7D7D7D7D7D7D3658066332E474E535F6F8750055BA2B0D7D7
                      D7D7D7D7D7CB60201523343A454D5864788119128F9DC5D7D7D7D7D7D7D7A72A
                      031A283237434F525A7E63043998BAD7D7D7D7D7D7D7BD5E0F091E292F3C463B
                      4B778B2B388AC6D7D7D7D7D7D7D7D7A83F001421272D2C517AA6AEB7B7C4D7D7
                      D7D7D7D7D7D7D7C95D16011B1F1D4A83ACD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
                      AB41080213317CAAD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D255240726746CD5
                      D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7B6544859A9D4D7D7D7D7D7D7D7D7D7
                      D7D7D7D7D7D7D7D7D7D7CEC7D1D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
                      D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = bt_activate1Click
                  end
                end
              end
              object re_editor1: TRxRichEdit
                Left = 1
                Top = 219
                Width = 571
                Height = 140
                Align = alClient
                Lines.Strings = (
                  'accessing...')
                PopupMenu = PopupMenu_editor
                TabOrder = 1
                OnKeyDown = re_editorKeyDown
                OnSelectionChange = SelectionChange
              end
              object Panelgrp: TPanel
                Left = 1
                Top = 1
                Width = 571
                Height = 218
                Align = alTop
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                TabOrder = 2
                object Splitter4: TSplitter
                  Left = 466
                  Top = 2
                  Height = 139
                  Align = alCustom
                  OnMoved = Splitter1Moved
                end
                object GroupBox9: TGroupBox
                  Left = 2
                  Top = 2
                  Width = 337
                  Height = 214
                  Align = alLeft
                  Caption = 'Cadastro:'
                  TabOrder = 0
                  object Label_cancel: TLabel
                    Left = 70
                    Top = -1
                    Width = 115
                    Height = 14
                    Caption = 'C A N C E L A D O'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -12
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object Panel19: TPanel
                    Left = 2
                    Top = 14
                    Width = 333
                    Height = 142
                    Align = alTop
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 0
                    object Label23: TLabel
                      Left = 4
                      Top = 30
                      Width = 39
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Artista:'
                    end
                    object Label3: TLabel
                      Left = 7
                      Top = 52
                      Width = 33
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'T'#237'tulo:'
                    end
                    object Label2: TLabel
                      Left = 18
                      Top = 8
                      Width = 39
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'C'#243'digo:'
                    end
                    object ab_cod: TLabel
                      Left = 62
                      Top = 8
                      Width = 6
                      Height = 12
                      Caption = '0'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -9
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label24: TLabel
                      Left = 95
                      Top = 75
                      Width = 39
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Cidade:'
                    end
                    object Label25: TLabel
                      Left = 7
                      Top = 75
                      Width = 18
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'UF:'
                    end
                    object Label26: TLabel
                      Left = 7
                      Top = 97
                      Width = 31
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Local:'
                    end
                    object Label27: TLabel
                      Left = 8
                      Top = 121
                      Width = 28
                      Height = 12
                      Caption = 'Data:'
                    end
                    object Label28: TLabel
                      Left = 205
                      Top = 120
                      Width = 28
                      Height = 12
                      Caption = 'Hora:'
                    end
                    object Label5: TLabel
                      Left = 187
                      Top = 30
                      Width = 40
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Modelo:'
                    end
                    object ab_titulo: TEdit
                      Left = 44
                      Top = 49
                      Width = 284
                      Height = 20
                      TabOrder = 2
                      OnKeyDown = EVsaveKeyDown
                    end
                    object ab_default: TCheckBox
                      Left = 250
                      Top = 7
                      Width = 71
                      Height = 18
                      Hint = 'Publicar '#225'lbum na galeria de fotos'
                      Caption = 'Publicar'
                      Checked = True
                      ParentShowHint = False
                      ShowHint = True
                      State = cbChecked
                      TabOrder = 0
                    end
                    object ComboBox_class2: TComboBox
                      Left = 44
                      Top = 27
                      Width = 141
                      Height = 20
                      ItemHeight = 12
                      TabOrder = 1
                      OnKeyDown = EVsaveKeyDown
                    end
                    object xcp18_ax: TComboBox
                      Left = 136
                      Top = 72
                      Width = 192
                      Height = 20
                      ItemHeight = 12
                      TabOrder = 5
                    end
                    object xcp18_axuf: TComboBox
                      Left = 30
                      Top = 72
                      Width = 59
                      Height = 20
                      ItemHeight = 12
                      TabOrder = 4
                      OnChange = xcp18_axufChange
                    end
                    object cb_loc: TEdit
                      Left = 44
                      Top = 95
                      Width = 283
                      Height = 20
                      TabOrder = 6
                      OnKeyDown = EVsaveKeyDown
                    end
                    object cb_dt: TDateTimePicker
                      Left = 40
                      Top = 117
                      Width = 161
                      Height = 21
                      Date = 38188.985605150460000000
                      Time = 38188.985605150460000000
                      TabOrder = 7
                    end
                    object cb_tm: TDateTimePicker
                      Left = 237
                      Top = 117
                      Width = 91
                      Height = 21
                      Date = 38188.000000000000000000
                      Time = 38188.000000000000000000
                      Kind = dtkTime
                      TabOrder = 8
                    end
                    object ComboBox_model: TComboBox
                      Left = 229
                      Top = 27
                      Width = 100
                      Height = 20
                      Style = csDropDownList
                      ItemHeight = 12
                      TabOrder = 3
                      OnKeyDown = EVsaveKeyDown
                    end
                  end
                  object CoolBar2: TCoolBar
                    Left = 2
                    Top = 157
                    Width = 333
                    Height = 55
                    Align = alBottom
                    AutoSize = True
                    Bands = <
                      item
                        Control = ToolBar12
                        ImageIndex = -1
                        MinHeight = 26
                        Width = 244
                      end
                      item
                        Break = False
                        Control = ToolBar16
                        ImageIndex = -1
                        Width = 87
                      end
                      item
                        Control = ToolBar13
                        ImageIndex = -1
                        Width = 86
                      end
                      item
                        Break = False
                        Control = ToolBar14
                        ImageIndex = -1
                        Width = 133
                      end
                      item
                        Break = False
                        Control = ToolBar15
                        ImageIndex = -1
                        Width = 110
                      end>
                    EdgeBorders = [ebTop]
                    object ToolBar12: TToolBar
                      Left = 9
                      Top = 0
                      Width = 231
                      Height = 26
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
                      object FontName1: TComboBox
                        Left = 4
                        Top = 1
                        Width = 166
                        Height = 20
                        Hint = 'Selecione a fonte'
                        Ctl3D = False
                        DropDownCount = 10
                        ItemHeight = 12
                        ItemIndex = 0
                        ParentCtl3D = False
                        TabOrder = 0
                        Text = 'Arial'
                        OnChange = FontNameChange
                        Items.Strings = (
                          'Arial'
                          'Arial Narrow'
                          'Arial Black'
                          'Comic Scans MS'
                          'Courier'
                          'System'
                          'Times New Roman'
                          'Verdana'
                          'Wingdings')
                      end
                      object ToolButton16: TToolButton
                        Left = 170
                        Top = 0
                        Width = 8
                        ImageIndex = 8
                        Style = tbsSeparator
                      end
                      object FontSize1: TEdit
                        Left = 178
                        Top = 0
                        Width = 30
                        Height = 22
                        Hint = 'Selecione o tamanho da fonte'
                        TabOrder = 1
                        Text = '12'
                        OnChange = FontSizeChange
                      end
                      object UpDown2: TUpDown
                        Left = 208
                        Top = 0
                        Width = 16
                        Height = 22
                        Associate = FontSize1
                        Max = 150
                        Increment = 5
                        Position = 12
                        TabOrder = 2
                      end
                    end
                    object ToolBar13: TToolBar
                      Left = 9
                      Top = 28
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
                      object BoldButton1: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'Negrito'
                        ImageIndex = 13
                        MenuItem = Negrito1
                        Style = tbsCheck
                      end
                      object ItalicButton1: TToolButton
                        Left = 27
                        Top = 0
                        Caption = 'It'#225'lico'
                        ImageIndex = 15
                        MenuItem = Italico1
                        Style = tbsCheck
                      end
                      object UnderlineButton1: TToolButton
                        Left = 50
                        Top = 0
                        Caption = 'Sublinhado'
                        ImageIndex = 16
                        MenuItem = Sublinhado1
                        Style = tbsCheck
                      end
                    end
                    object ToolBar14: TToolBar
                      Left = 97
                      Top = 28
                      Width = 120
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
                      TabOrder = 2
                      Transparent = True
                      Wrapable = False
                      object LeftAlign1: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'esquerdo'
                        Grouped = True
                        ImageIndex = 17
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object CenterAlign1: TToolButton
                        Tag = 2
                        Left = 27
                        Top = 0
                        Caption = 'centro'
                        Grouped = True
                        ImageIndex = 18
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object RightAlign1: TToolButton
                        Tag = 1
                        Left = 50
                        Top = 0
                        Caption = 'direita'
                        Grouped = True
                        ImageIndex = 19
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object JustifyAlign1: TToolButton
                        Tag = 3
                        Left = 73
                        Top = 0
                        Caption = 'justificado'
                        Grouped = True
                        ImageIndex = 20
                        Style = tbsCheck
                        OnClick = AlignButtonClick
                      end
                      object BulletsButton1: TToolButton
                        Left = 96
                        Top = 0
                        Caption = 'Marcador'
                        ImageIndex = 21
                        MenuItem = Marcador1
                        Style = tbsCheck
                      end
                    end
                    object ToolBar15: TToolBar
                      Left = 232
                      Top = 28
                      Width = 97
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
                      TabOrder = 3
                      Transparent = True
                      Wrapable = False
                      object ToolButton17: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'Recortar'
                        ImageIndex = 6
                        MenuItem = Recortar1
                      end
                      object ToolButton18: TToolButton
                        Left = 27
                        Top = 0
                        Caption = 'Copiar'
                        ImageIndex = 7
                        MenuItem = Copiar1
                      end
                      object ToolButton19: TToolButton
                        Left = 50
                        Top = 0
                        Caption = 'Colar'
                        ImageIndex = 8
                        MenuItem = Colar1
                      end
                      object ToolButton20: TToolButton
                        Left = 73
                        Top = 0
                        Caption = 'Importar'
                        ImageIndex = 27
                        MenuItem = Importar1
                      end
                    end
                    object ToolBar16: TToolBar
                      Left = 255
                      Top = 0
                      Width = 74
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
                      TabOrder = 4
                      Transparent = True
                      Wrapable = False
                      object fontColor1: TToolButton
                        Left = 4
                        Top = 0
                        Caption = 'Cor'
                        ImageIndex = 10
                        MenuItem = Cor1
                      end
                      object eddesfazer1: TToolButton
                        Left = 27
                        Top = 0
                        Caption = 'Desfazer'
                        ImageIndex = 4
                        MenuItem = Desfazer1
                      end
                      object ToolButton2: TToolButton
                        Left = 50
                        Top = 0
                        Caption = 'Cor de fundo'
                        ImageIndex = 12
                        MenuItem = Cordefundo1
                      end
                    end
                  end
                end
                object Panel5: TPanel
                  Left = 339
                  Top = 2
                  Width = 230
                  Height = 214
                  Align = alClient
                  BevelInner = bvLowered
                  BevelOuter = bvSpace
                  BorderStyle = bsSingle
                  Color = 16119285
                  TabOrder = 1
                  object Panel23: TPanel
                    Left = 2
                    Top = 14
                    Width = 160
                    Height = 178
                    Align = alClient
                    AutoSize = True
                    BevelInner = bvLowered
                    BevelOuter = bvLowered
                    Color = clWhite
                    TabOrder = 0
                    object swf_logo1: TShockwaveFlash
                      Left = 2
                      Top = 40
                      Width = 156
                      Height = 136
                      Cursor = crHandPoint
                      Hint = 'Icone do '#225'lbum'
                      TabStop = False
                      Align = alClient
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                      ControlData = {
                        6755665500090000201000000E0E000008000200000000000800000000000800
                        0000000008000E000000570069006E0064006F00770000000800060000002D00
                        310000000800060000002D003100000008000A00000048006900670068000000
                        08000200000000000800060000002D0031000000080000000000080002000000
                        0000080010000000530068006F00770041006C006C0000000800040000003000
                        0000080004000000300000000800020000000000080000000000080002000000
                        00000D0000000000000000000000000000000000080004000000310000000800
                        0400000030000000080000000000080004000000300000000800080000006100
                        6C006C00000008000C000000660061006C0073006500000008000C0000006600
                        61006C0073006500000008000400000030000000}
                    end
                    object ToolBar3: TToolBar
                      Left = 2
                      Top = 2
                      Width = 156
                      Height = 38
                      AutoSize = True
                      ButtonHeight = 36
                      Caption = 'pn_barra'
                      EdgeBorders = []
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Arial'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      object bt_open1: TSpeedButton
                        Left = 0
                        Top = 2
                        Width = 55
                        Height = 36
                        Hint = 'Importar imagem'
                        Caption = 'Importar'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        Glyph.Data = {
                          E6030000424DE603000000000000360200002800000017000000120000000100
                          080000000000B0010000120B0000120B00008000000000000000FFFFFF00D0FA
                          FF00CEFBFE00CEFAFE00B7FCFF00CDFAFD0092FAFF0091FAFF0092F9FF0091F9
                          FF0096F8FF0091F9FE0094F9FE0090F8FD00A9F1FF008AF2FE00A6F0FF0086F2
                          FE0088F2FD0087F0FE0088F0FF0087EFFE0085EEFF0088EEFF0087EEFF0086EC
                          FF0083EAFF0085E9FF007CE7FE007BE7FE007DE7FF007FE7FF00A1E6F5007EE7
                          FD007DE7FE007DE6FD00FFE8CB007AE6FE0078E7FC007BE6FF007DE6FF007DE6
                          FE007BE6FE0080E5FF007DE5FE007CE5FE007CE4FE007EE5FE007CE5FF0074DD
                          FE0072DDFF0075DDFE0073DDFE0076DCFF0073DCFF0074DCFE00BDD8E40075DA
                          EC00FFD9A90065CBE00064C9E1005EC4E00052BBE40067B7DD0083B4C800B7B5
                          B200B4B0AD0066C582005DACD40000D16E0049ACCC0042A8CC003199CE00319A
                          CB003399CE003399CD003597CD0066B066002D92C6002C92C30000AF42002287
                          BB002187B8002187BB002489B400288F8D00009F2F00009E2C001275A7006D6D
                          6C006767670065666A0003649300646667006567670068666600666765006467
                          6500646666006665670065646600007C000002466700114053000B2D62000000
                          0000FFFFFF000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000000000000000000000000000000000000006A6A6A6A6A6A
                          6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A006A6A6A6A6A6A4242424242424242
                          4242424242426A6A6A006A6A6A6A6A405B5B5B5B5B5B5B5B5B5B5B595C426A6A
                          6A006A6A6A6A6A5C3C1A2121212121212121093958426A6A6A006A6A6A6A4054
                          08080808080808080808084658426A6A6A006A6A6A6A5C3B0F0F0F0F0F0F0F0F
                          0F1818585C426A6A6A006A6A6A4054132A2A2A2A2A2A2A2A2A16476766426A6A
                          6A006A6A6A5C3D2F33333333333333333333583869426A6A6A006A6A40540404
                          0404040404040404043E55000069416A6A006A6A5C5353535353535353535353
                          535856000000696A6A006A6A6A6A6A53196900003A4550506857004300696A6A
                          6A006A6A6A6A6A4E1919690024564550574D000069426A6A6A006A6A6A6A6A4B
                          201B1B6900245665574D00695C426A6A6A006A6A6A6A6A4810031E1E6900243A
                          24006952526A6A6A6A006A6A6A6A6A443F0E05050569002400696A6A6A6A6A6A
                          6A006A6A6A6A6A6A44494C4C4F6A6900696A6A6A6A6A6A6A6A006A6A6A6A6A6A
                          6A6A6A6A6A6A6A696A6A6A6A6A6A6A6A6A006A6A6A6A6A6A6A6A6A6A6A6A6A6A
                          6A6A6A6A6A6A6A6A6A00}
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_open1Click
                      end
                      object bt_exp1: TSpeedButton
                        Left = 55
                        Top = 2
                        Width = 55
                        Height = 36
                        Hint = 'Exportar para disco'
                        Caption = 'Exportar'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        Glyph.Data = {
                          E6000000424DE6000000000000007600000028000000100000000E0000000100
                          04000000000070000000120B0000120B00001000000000000000FFFFFF00CC99
                          FF00FFFFCC00FFCCCC00CCCCCC00FFCC9900FF99990099999900000099006666
                          66003333330000000000FFFFFF0000000000000000000000000000079BBBBB70
                          00000079642544770000075200225AAAAAA00A2002253A0777A00A3000825A00
                          00A00A2088881A0A77A00A3800825A0000A00A2002253A07AAA00A3000225A00
                          A700095026666AAAA00009566325246570000762323255569000007763255699
                          00000000779977000000}
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_exp1Click
                      end
                      object bt_limpar1: TSpeedButton
                        Left = 110
                        Top = 2
                        Width = 55
                        Height = 36
                        Hint = 'Limpar imagem'
                        Caption = 'Limpar'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        Glyph.Data = {
                          56010000424D5601000000000000560000002800000010000000100000000100
                          08000000000000010000120B0000120B00000800000000000000FFFFFF0000FF
                          FF000000FF000000990000000000FFFFFF000000000000000000000000000000
                          0000000000000000000000020004040404040404040404040202000202040100
                          0100010001000102020000000202000100010001000102030000000000030200
                          0100010001020204000000000004020200010001020201040000000000040102
                          0200010202010004000000000004000102020202010001040000000000040100
                          0102020200010004000000000004000100020202020001040000000000040100
                          0202010002020004000000000004000202010001040202040000000000040202
                          0100010004010203000000000003020100010001040404020200000002020404
                          0404040404040000020200020200000000000000000000000002}
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_limpar1Click
                      end
                    end
                  end
                  object Panel24: TPanel
                    Left = 2
                    Top = 2
                    Width = 222
                    Height = 12
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = 'I c o n e  d o  E v e n t o'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -8
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentColor = True
                    ParentFont = False
                    TabOrder = 1
                  end
                  object Panel13: TPanel
                    Left = 2
                    Top = 192
                    Width = 222
                    Height = 16
                    Align = alBottom
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 2
                    object Label_size1: TLabel
                      Left = 201
                      Top = 0
                      Width = 21
                      Height = 16
                      Align = alRight
                      Alignment = taRightJustify
                      Caption = '0 kb'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -9
                      Font.Name = 'Verdana'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object chk_view1: TCheckBox
                      Left = 5
                      Top = 2
                      Width = 104
                      Height = 13
                      Hint = 'Atualizar icone automaticamente'#13#10'na navega'#231#227'o dos registros'
                      Caption = 'Auto visualizar'
                      Checked = True
                      ParentShowHint = False
                      ShowHint = True
                      State = cbChecked
                      TabOrder = 0
                      OnClick = chk_view1Click
                    end
                  end
                  object Panelbtview: TPanel
                    Left = 162
                    Top = 14
                    Width = 62
                    Height = 178
                    Align = alRight
                    BevelOuter = bvLowered
                    Color = clWhite
                    TabOrder = 3
                    OnResize = PanelbtviewResize
                    object bt_view1: TSpeedButton
                      Left = 1
                      Top = 48
                      Width = 60
                      Height = 129
                      Hint = 'Ampliar imagem'
                      Caption = 'Ampliar'
                      Flat = True
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -9
                      Font.Name = 'Verdana'
                      Font.Style = []
                      Glyph.Data = {
                        B2030000424DB203000000000000360200002800000013000000130000000100
                        0800000000007C010000120B0000120B00008000000000000000FFFFFF00FFFF
                        F100F7FCFB00E4F7FA00DCF5EB00FFE7FF00FFE8BE00EAE4C100FCE1BF0084EB
                        C5008FE4C800A2DDCF00AEDACD0071E4B900FFD8B20078E0BF00FAD6AE00DFD7
                        B20078DBC700FED6AC00FDD7A70075DFBA00FFCFBB00BAD6B8006ADDB600EDCE
                        B900A1CFC90066DAB500FFCDA500E8C9BA00E2CFA900FFCC9900F6CC97005CCE
                        C000E6CB9900F0CA9400F5C994003DD69F00D6CA940032D59E0000D6AD00D6C8
                        930079CE9A00DEC68C0088CE8800CFC3930073C5910000CC9900C4C1770060C4
                        8800A5BA890080B8850060B791002EC4710058BB83003AB98C00B0AE850043B5
                        8D0080B47F0090B07A006BB37F0000BD8000AAB35D0081AF7B00999999008F92
                        B80050AB740000AF80008DAA5B009898880086B1380029A67E0043B14B007396
                        9200CC99660001A5750000A764003CA064006484A7005D995C00628A88002AA3
                        3B00009966000A976C0003925B00038D630000974200058574004C758E005672
                        9100646F8F001B7887003C7F5F00008B3E001C75720006863400008B24000289
                        2700078D130000795B003E6D65000A89150008871A002E5E920009821400006C
                        550099663300087B14000A7A16000F771800017A12000F751D00087312001048
                        8300006212002E4751003333330000333300FFFFFF0000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        0000000000000000000000000000767640404040404040404040404040404040
                        7600766A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A407600764A0000000000000000
                        0000000000006A407600764A00626C65686D666F656B627048006A407600764A
                        005252524C5B5E71574C4C5437006A407600764A0018150F0D2173581209181B
                        0A006A407600764A00000204055975410C1A000000006A407600764A00033947
                        4E5C515A67502C0B00006A407600764A000731696317464F6449615F01006A40
                        7600764A00292E38342535555672604406006A407600764A00263B36272F285D
                        603E301613006A407600764A001F324B2F2F2F3D6E4D1E1F0E006A407600764A
                        001C193A3C2A2F4354531D2411006A407600764A00242223233F3342452D202B
                        10006A407600764A00141313131313131313131308006A407600764A00000000
                        000000000000000000006A407600764A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A76
                        76007676767676767676767676767676767676767600}
                      Layout = blGlyphTop
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Spacing = 0
                      OnClick = bt_view1Click
                    end
                    object Panel27: TPanel
                      Left = 2
                      Top = 2
                      Width = 60
                      Height = 36
                      BevelOuter = bvNone
                      ParentColor = True
                      TabOrder = 0
                      object bt_imgRotateh1: TSpeedButton
                        Left = 1
                        Top = -1
                        Width = 29
                        Height = 25
                        Hint = 'Girar imagem no sentido hor'#225'rio'
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        Glyph.Data = {
                          B2050000424DB205000000000000360400002800000013000000130000000100
                          0800000000007C010000120B0000120B00000001000030000000FFFFFF00CCFF
                          FF0099FFFF00CCCCFF0099CCFF00FFFFCC00CCFFCC0099FFCC00FFCCCC00CCCC
                          CC0099CCCC00CC99CC009999CC00FFCC9900CCCC990099CC990066CC990033CC
                          990000CC9900CC9999009999990066999900996699006666990033669900CCCC
                          660099CC660033CC6600CC99660099996600669966003399660000996600CC66
                          6600996666006666660033666600006666006633660066993300339933000099
                          3300996633006666330033663300006633006633330066660000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000009
                          090909090909090909030000000000000000092A221D1C221C1D211D1C220500
                          0000000000000922060F140F0F0F0F0F0F0D0300000000000000091C0A292929
                          2525292D1B090500000000000000091D0802070A181F0206040D080000000000
                          0000092200060A171E240C1000090500000000000000080108012D1F1F1A1F1F
                          060D0300000000000000090E140E27282012110F0E0905000000000000001413
                          14090F2D1212121D050D0800000000000000132322090E1E1B15190E0D090500
                          000000000000232B2309080508050809092B0900000000000000222E2B090D09
                          0B1E2B2F2E2C0E000000000000002B232E090508050E23262B261D0000000000
                          0000142B2B14000000000F2E2B2E230500000000000013232B2313090914222B
                          23162B09000000000000001D262B2B2B262B2B2B220009000000000000000009
                          1D232E2B2B262B1D0900000000000000000000000013142B231D140000000000
                          00000000000000000000000000000000000000000000}
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_imgRotateh1Click
                      end
                      object bt_imgRotatea1: TSpeedButton
                        Left = 31
                        Top = -1
                        Width = 29
                        Height = 25
                        Hint = 'Girar imagem no sentido anti-hor'#225'rio'
                        BiDiMode = bdLeftToRight
                        Flat = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        Glyph.Data = {
                          B2050000424DB205000000000000360400002800000013000000130000000100
                          0800000000007C010000120B0000120B0000000100002F000000FFFFFF00CCFF
                          FF0099FFFF00CCCCFF00FFFFCC00CCFFCC0099FFCC00FFCCCC00CCCCCC0099CC
                          CC0066CCCC00CC99CC00FFCC9900CCCC990099CC990066CC990033CC990000CC
                          9900CC999900999999006699990033999900996699006666990033669900CCCC
                          660099CC6600CC99660099996600669966003399660000996600CC6666009966
                          6600666666003366660000666600663366009999330033993300009933009966
                          3300666633003366330000663300663333006666000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000008
                          0808080808080808080300000000000000071C211B211B1C201C201C29080000
                          00000000000412060E0E0E0E0E0E0E081C080000000000000007071E2828242C
                          1F2828081C0800000000000000040D01090218170A0609011B08000000000000
                          00030C000A131E22140905002108000000000000000408051E1E0E2723280107
                          010700000000000000080C081A10111F28260D130D080000000000000004070C
                          0F1511112C0E0813121300000000000000070D070D190F1E1D0D082122120000
                          0000000000082A0808040707040708222A22000000000000000D2B2D2E2A1D0B
                          0C08082A2D21000000000000001C252A25220D040704082D222A000000000000
                          04222D2A2D0E00000000132A2A13000000000000082A16222A2113080812222A
                          2212000000000000000800212A2A2A252A2A2A251C0000000000000000000008
                          1C2A252A2A2D221C08000000000000000000000000131C222A13120000000000
                          00000000000000000000000000000000000000000000}
                        Layout = blGlyphTop
                        ParentFont = False
                        ParentShowHint = False
                        ParentBiDiMode = False
                        ShowHint = True
                        Spacing = 0
                        OnClick = bt_imgRotatea1Click
                      end
                      object Label10: TLabel
                        Left = 19
                        Top = 23
                        Width = 25
                        Height = 12
                        Alignment = taCenter
                        Caption = 'Girar'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = []
                        ParentFont = False
                        Transparent = True
                      end
                    end
                  end
                end
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 227
              Height = 398
              Align = alLeft
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object DBGrid1: TDBGrid
                Left = 0
                Top = 114
                Width = 227
                Height = 122
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
                OnCellClick = DBGrid1CellClick
                OnKeyDown = DBGrid1KeyDown
                OnKeyUp = DBGrid1KeyUp
                OnMouseDown = DBGrid1MouseDown
              end
              object Panelclass: TPanel
                Left = 0
                Top = 0
                Width = 227
                Height = 44
                Align = alTop
                BevelOuter = bvLowered
                ParentColor = True
                TabOrder = 1
                OnResize = PanelclassResize
                object Label9: TLabel
                  Left = 8
                  Top = 4
                  Width = 91
                  Height = 12
                  Caption = 'Filtrar por Artista:'
                end
                object ComboBox_class: TComboBox
                  Left = 6
                  Top = 20
                  Width = 163
                  Height = 20
                  ItemHeight = 12
                  TabOrder = 0
                  OnClick = ComboBox_classClick
                  OnKeyPress = ComboBox_classKeyPress
                end
                object CheckBox_class: TCheckBox
                  Left = 173
                  Top = 21
                  Width = 54
                  Height = 17
                  Caption = 'Filtrar'
                  TabOrder = 1
                  OnClick = CheckBox_classClick
                end
              end
              object Panel21: TPanel
                Left = 0
                Top = 236
                Width = 227
                Height = 12
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Lb_countreg1: TLabel
                  Left = 220
                  Top = 0
                  Width = 7
                  Height = 12
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '0'
                  Transparent = True
                end
              end
              object calend1: TMonthCalendar
                Left = 0
                Top = 248
                Width = 227
                Height = 150
                Align = alBottom
                Date = 39290.998520393520000000
                TabOrder = 3
                WeekNumbers = True
                OnClick = calend1Click
              end
              object Panel4: TPanel
                Left = 0
                Top = 44
                Width = 227
                Height = 70
                Align = alTop
                BevelOuter = bvNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 4
                object Label29: TLabel
                  Left = 5
                  Top = -1
                  Width = 94
                  Height = 12
                  Caption = 'Filtrar por Per'#237'odo:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsUnderline]
                  ParentFont = False
                end
                object SpeedButton4: TSpeedButton
                  Left = 175
                  Top = 10
                  Width = 48
                  Height = 59
                  Hint = 'Filtrar registros'
                  Caption = 'Filtrar'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    8E060000424D8E06000000000000360400002800000018000000190000000100
                    08000000000058020000120B0000120B000000010000A6000000FFFFFF00FFF1
                    BF00F9EACA00FEE8B400FAE6BC00FCE8B200FFE6A900FEE3A100FCE29B00FFE0
                    9E00FFDDA500FBDE9700FED99600FBDB9200EFD1AE00F7CEB000FCD88D00F4D1
                    A200FED29400FED48B00FBD38E00FBCBA600FED09000EDC8AB00F9C9A300FFCF
                    8400E8C5AF00F0CE8A00FFCB8000F4C79000FDC97F00FFC98000EAC49700FCC4
                    9200FEC78200FCC39000F7C78600FDC77F00E6C19A00F3C28D00EBC28F00FAC6
                    7E00FFC38200FEC08E00F3BF8F00E4BB9F00E5BC9B00F3C08200E9BA9800F2C0
                    7F00FAC17600E7B99800FDBE8200F1C07C00E3B99800FDC07300F9BA8400F0BF
                    7A00E2B69B00DCB79500E8BA8800FABE7200FDBE6F00FBBB7200E3B39700E7BB
                    7B00E3B38F00FBBB6A00F7B67C00E1B19200FDB96D00E0B09500E3B67B00FBB7
                    6A00E1B28400FCB37900E2B08C00F9B47500F1B56F00FDB46D00F7B46D00F6B4
                    6C00EDB37100E0AD8B00F5B56B00FDB07300FCB26B00E7AF7200FEB26300D7AE
                    7B00EBAF6D00E4AD7900DFAA8400FAAF6300DEAD7100FAAE6200FEAD5F00E4AB
                    6F00FCA96A00E1A77300FBA76600E3A66800F0A75D00FBA75800DBA46F00D6A4
                    6C00CB9D8000E5A35F00D5A26800F6A35800DE9F6200FB9F5100CE9C6800E29C
                    5B00F99B5200D99A6100EA9B5500F59C4C00F89A4B00BB917800F7984B00F796
                    4B00EA975000F6974600F1954800EF954B00F5954800F5954700E8944F00D593
                    5A00E8924B00E2925000E6924F00C08E5F00EF904200CA8D5900F18F3F00DD8D
                    5000F18E3E00D68B5000D68C4D00BF875E00D88A4C00B9895B00B7876200CB89
                    5100D1854D00B0826200CF844A00BF835400A57C6500BE7C4A00A7785900B677
                    4700B9754900A5725200996D5100A26E4C008D6C5A009E6D4C00A56C4700AF6C
                    4200A8684100806351009E6442008D5F47000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000095918C8C9497A0000000000000000000000000000000876B666D757B7B
                    7C8292A40000000000000000000000006E545D563423232355798684A1000000
                    000000000000006532462A2C4242402D1715648A80A200000000000000006829
                    37225B6A00000000003A0F628889A500000000000000351C1C61770000000000
                    00004718727D9A0000000000004A14193190000000000000000000304B7E8B9E
                    00000000003C0C135E000000000000000000004C3878839C0000000000280910
                    6C000000000000000000005344767A9B000000000020060D6900000000000000
                    0000005C4D6F7498000000000026030B4800000000000000990000634F677196
                    00000000002E04071B8F0000000000004E859D5A605F810000000000001A0E01
                    08419300000000002F39575158508D0000000000000036020559000000000000
                    27253D493F73000000000000000000333B000000000000001D1F433E529F0000
                    00000000000000000000000000000000110A12122470A3000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000}
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = SpeedButton4Click
                end
                object xfil_de: TDateTimePicker
                  Left = 48
                  Top = 12
                  Width = 125
                  Height = 21
                  Date = 38188.985605150460000000
                  Time = 38188.985605150460000000
                  TabOrder = 0
                end
                object xfil_ate: TDateTimePicker
                  Left = 48
                  Top = 34
                  Width = 125
                  Height = 21
                  Date = 38188.985605150460000000
                  Time = 38188.985605150460000000
                  Enabled = False
                  TabOrder = 1
                end
                object xfil_de_chk: TCheckBox
                  Left = 5
                  Top = 15
                  Width = 41
                  Height = 17
                  Caption = 'De:'
                  Checked = True
                  State = cbChecked
                  TabOrder = 2
                  OnClick = xfil_de_chkClick
                end
                object xfil_ate_chk: TCheckBox
                  Left = 5
                  Top = 36
                  Width = 41
                  Height = 17
                  Caption = 'At'#233':'
                  TabOrder = 3
                  OnClick = xfil_ate_chkClick
                end
                object xfil_cancel: TCheckBox
                  Left = 5
                  Top = 53
                  Width = 164
                  Height = 17
                  Caption = 'Exibir registros Cancelados'
                  TabOrder = 4
                end
              end
            end
          end
          object TabSheet_itens: TTabSheet
            Caption = 'Fotos do Evento'
            ImageIndex = 1
            object Splitter5: TSplitter
              Left = 232
              Top = 0
              Height = 398
            end
            object Panel6: TPanel
              Left = 235
              Top = 0
              Width = 568
              Height = 398
              Align = alClient
              Color = 16119285
              TabOrder = 0
              object Panel7: TPanel
                Left = 1
                Top = 359
                Width = 566
                Height = 38
                Align = alBottom
                BevelInner = bvRaised
                BevelOuter = bvLowered
                Color = 16119285
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object ToolBar4: TToolBar
                  Left = 276
                  Top = 2
                  Width = 288
                  Height = 34
                  Align = alRight
                  AutoSize = True
                  ButtonHeight = 30
                  Caption = 'pn_barra'
                  EdgeBorders = []
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object bt_new2: TSpeedButton
                    Left = 0
                    Top = 2
                    Width = 88
                    Height = 30
                    Hint = 'Adicionar nova imagem'
                    Caption = 'Nova'
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
                    OnClick = bt_new2Click
                  end
                  object bt_del2: TComboSpeedButton
                    Left = 88
                    Top = 2
                    Width = 100
                    Height = 30
                    Hint = 'Excluir imagem selecionada'
                    PopupMenu = PopupMenu2
                    Caption = 'Excluir'
                    Flat = True
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
                    OnClick = bt_del2Click
                  end
                  object bt_save2: TSpeedButton
                    Left = 188
                    Top = 2
                    Width = 100
                    Height = 30
                    Hint = 'Gravar dados'
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
                    OnClick = bt_save2Click
                  end
                end
              end
              object Panel9: TPanel
                Left = 1
                Top = 1
                Width = 566
                Height = 358
                Align = alClient
                BevelOuter = bvNone
                Color = 16119285
                TabOrder = 1
                object Panelitens: TPanel
                  Left = 0
                  Top = 0
                  Width = 566
                  Height = 358
                  Align = alClient
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  Color = 16119285
                  TabOrder = 0
                  object Splitter2: TSplitter
                    Left = 2
                    Top = 152
                    Width = 562
                    Height = 8
                    Cursor = crVSplit
                    Align = alTop
                    Beveled = True
                  end
                  object GroupBox1: TGroupBox
                    Left = 2
                    Top = 160
                    Width = 562
                    Height = 196
                    Align = alClient
                    Caption = 'Detalhes:'
                    TabOrder = 0
                    object re_editor2: TRxRichEdit
                      Left = 2
                      Top = 14
                      Width = 558
                      Height = 180
                      Align = alClient
                      Lines.Strings = (
                        'accessing...')
                      PopupMenu = PopupMenu_editor
                      TabOrder = 0
                      OnKeyDown = re_editorKeyDown
                      OnSelectionChange = SelectionChange
                    end
                  end
                  object Panel25: TPanel
                    Left = 2
                    Top = 2
                    Width = 562
                    Height = 150
                    Align = alTop
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    object Panel18: TPanel
                      Left = 0
                      Top = 0
                      Width = 331
                      Height = 150
                      Align = alLeft
                      BevelOuter = bvNone
                      ParentColor = True
                      TabOrder = 0
                      object Label8: TLabel
                        Left = 3
                        Top = 35
                        Width = 55
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Descri'#231#227'o:'
                      end
                      object Label6: TLabel
                        Left = 17
                        Top = 8
                        Width = 39
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'C'#243'digo:'
                      end
                      object ms_cod: TLabel
                        Left = 59
                        Top = 8
                        Width = 6
                        Height = 12
                        Caption = '0'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -9
                        Font.Name = 'Verdana'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object ms_titulo: TEdit
                        Left = 61
                        Top = 33
                        Width = 264
                        Height = 20
                        TabOrder = 0
                        OnKeyDown = EVsave2KeyDown
                      end
                      object CoolBar1: TCoolBar
                        Left = 0
                        Top = 96
                        Width = 331
                        Height = 54
                        Align = alBottom
                        AutoSize = True
                        Bands = <
                          item
                            Control = ToolBar6
                            ImageIndex = -1
                            Width = 243
                          end
                          item
                            Break = False
                            Control = ToolBar11
                            ImageIndex = -1
                            Width = 84
                          end
                          item
                            Control = ToolBar8
                            ImageIndex = -1
                            Width = 86
                          end
                          item
                            Break = False
                            Control = ToolBar9
                            ImageIndex = -1
                            Width = 132
                          end
                          item
                            Break = False
                            Control = ToolBar10
                            ImageIndex = -1
                            Width = 107
                          end>
                        EdgeBorders = [ebLeft, ebTop]
                        object ToolBar6: TToolBar
                          Left = 9
                          Top = 0
                          Width = 230
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
                          object FontName2: TComboBox
                            Left = 4
                            Top = 1
                            Width = 162
                            Height = 20
                            Hint = 'Selecione a fonte'
                            Ctl3D = False
                            DropDownCount = 10
                            ItemHeight = 12
                            ItemIndex = 0
                            ParentCtl3D = False
                            TabOrder = 0
                            Text = 'Arial'
                            OnChange = FontNameChange
                            Items.Strings = (
                              'Arial'
                              'Arial Narrow'
                              'Arial Black'
                              'Comic Scans MS'
                              'Courier'
                              'System'
                              'Times New Roman'
                              'Verdana'
                              'Wingdings')
                          end
                          object ToolButton1: TToolButton
                            Left = 166
                            Top = 0
                            Width = 8
                            ImageIndex = 8
                            Style = tbsSeparator
                          end
                          object FontSize2: TEdit
                            Left = 174
                            Top = 0
                            Width = 36
                            Height = 22
                            Hint = 'Selecione o tamanho da fonte'
                            TabOrder = 1
                            Text = '12'
                            OnChange = FontSizeChange
                          end
                          object UpDown1: TUpDown
                            Left = 210
                            Top = 0
                            Width = 16
                            Height = 22
                            Associate = FontSize2
                            Max = 150
                            Increment = 5
                            Position = 12
                            TabOrder = 2
                          end
                        end
                        object ToolBar8: TToolBar
                          Left = 9
                          Top = 27
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
                          object BoldButton2: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'Negrito'
                            ImageIndex = 13
                            MenuItem = Negrito1
                            Style = tbsCheck
                          end
                          object ItalicButton2: TToolButton
                            Left = 27
                            Top = 0
                            Caption = 'It'#225'lico'
                            ImageIndex = 15
                            MenuItem = Italico1
                            Style = tbsCheck
                          end
                          object UnderlineButton2: TToolButton
                            Left = 50
                            Top = 0
                            Caption = 'Sublinhado'
                            ImageIndex = 16
                            MenuItem = Sublinhado1
                            Style = tbsCheck
                          end
                        end
                        object ToolBar9: TToolBar
                          Left = 97
                          Top = 27
                          Width = 119
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
                          TabOrder = 2
                          Transparent = True
                          Wrapable = False
                          object LeftAlign2: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'esquerdo'
                            Grouped = True
                            ImageIndex = 17
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object CenterAlign2: TToolButton
                            Tag = 2
                            Left = 27
                            Top = 0
                            Caption = 'centro'
                            Grouped = True
                            ImageIndex = 18
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object RightAlign2: TToolButton
                            Tag = 1
                            Left = 50
                            Top = 0
                            Caption = 'direita'
                            Grouped = True
                            ImageIndex = 19
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object JustifyAlign2: TToolButton
                            Tag = 3
                            Left = 73
                            Top = 0
                            Caption = 'justificado'
                            Grouped = True
                            ImageIndex = 20
                            Style = tbsCheck
                            OnClick = AlignButtonClick
                          end
                          object BulletsButton2: TToolButton
                            Left = 96
                            Top = 0
                            Caption = 'Marcador'
                            ImageIndex = 21
                            MenuItem = Marcador1
                            Style = tbsCheck
                          end
                        end
                        object ToolBar10: TToolBar
                          Left = 231
                          Top = 27
                          Width = 94
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
                          TabOrder = 3
                          Transparent = True
                          Wrapable = False
                          object ToolButton10: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'Recortar'
                            ImageIndex = 6
                            MenuItem = Recortar1
                          end
                          object ToolButton11: TToolButton
                            Left = 27
                            Top = 0
                            Caption = 'Copiar'
                            ImageIndex = 7
                            MenuItem = Copiar1
                          end
                          object ToolButton12: TToolButton
                            Left = 50
                            Top = 0
                            Caption = 'Colar'
                            ImageIndex = 8
                            MenuItem = Colar1
                          end
                          object ToolButton13: TToolButton
                            Left = 73
                            Top = 0
                            Caption = 'Importar'
                            ImageIndex = 27
                            MenuItem = Importar1
                          end
                        end
                        object ToolBar11: TToolBar
                          Left = 254
                          Top = 0
                          Width = 71
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
                          TabOrder = 4
                          Transparent = True
                          Wrapable = False
                          object fontColor2: TToolButton
                            Left = 4
                            Top = 0
                            Caption = 'Cor'
                            ImageIndex = 10
                            MenuItem = Cor1
                          end
                          object eddesfazer2: TToolButton
                            Left = 27
                            Top = 0
                            Caption = 'Desfazer'
                            ImageIndex = 4
                            MenuItem = Desfazer1
                          end
                          object ToolButton3: TToolButton
                            Left = 50
                            Top = 0
                            Caption = 'Cor de fundo'
                            ImageIndex = 12
                            MenuItem = Cordefundo1
                          end
                        end
                      end
                    end
                    object Panel10: TPanel
                      Left = 331
                      Top = 0
                      Width = 231
                      Height = 150
                      Align = alClient
                      BevelInner = bvLowered
                      BevelOuter = bvSpace
                      BorderStyle = bsSingle
                      Color = 16119285
                      TabOrder = 1
                      object Panel14: TPanel
                        Left = 2
                        Top = 129
                        Width = 223
                        Height = 15
                        Align = alBottom
                        BevelOuter = bvNone
                        ParentColor = True
                        TabOrder = 0
                        object Label_size2: TLabel
                          Left = 202
                          Top = 0
                          Width = 21
                          Height = 15
                          Align = alRight
                          Caption = '0 kb'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Height = -9
                          Font.Name = 'Verdana'
                          Font.Style = [fsBold]
                          ParentFont = False
                        end
                        object chk_view2: TCheckBox
                          Left = 5
                          Top = 2
                          Width = 104
                          Height = 13
                          Hint = 'Atualizar icone automaticamente'#13#10'na navega'#231#227'o dos registros'
                          Caption = 'Auto visualizar'
                          Checked = True
                          ParentShowHint = False
                          ShowHint = True
                          State = cbChecked
                          TabOrder = 0
                          OnClick = chk_view2Click
                        end
                      end
                      object Panel22: TPanel
                        Left = 2
                        Top = 14
                        Width = 161
                        Height = 115
                        Align = alClient
                        AutoSize = True
                        BevelInner = bvLowered
                        BevelOuter = bvLowered
                        Color = clWhite
                        TabOrder = 1
                        object swf_logo2: TShockwaveFlash
                          Left = 2
                          Top = 40
                          Width = 157
                          Height = 73
                          Cursor = crHandPoint
                          Hint = 'Icone da imagem'
                          TabStop = False
                          Align = alClient
                          ParentShowHint = False
                          ShowHint = True
                          TabOrder = 0
                          Visible = False
                          ControlData = {
                            67556655000900003A1000008B07000008000200000000000800000000000800
                            0000000008000E000000570069006E0064006F00770000000800060000002D00
                            310000000800060000002D003100000008000A00000048006900670068000000
                            08000200000000000800060000002D0031000000080000000000080002000000
                            0000080010000000530068006F00770041006C006C0000000800040000003000
                            0000080004000000300000000800020000000000080000000000080002000000
                            00000D0000000000000000000000000000000000080004000000310000000800
                            0400000030000000080000000000080004000000300000000800080000006100
                            6C006C00000008000C000000660061006C0073006500000008000C0000006600
                            61006C0073006500000008000400000030000000}
                        end
                        object ToolBar1: TToolBar
                          Left = 2
                          Top = 2
                          Width = 157
                          Height = 38
                          AutoSize = True
                          ButtonHeight = 36
                          Caption = 'pn_barra'
                          EdgeBorders = []
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Arial'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 1
                          object bt_open2: TSpeedButton
                            Left = 0
                            Top = 2
                            Width = 55
                            Height = 36
                            Hint = 'Importar imagem'
                            Caption = 'Importar'
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -9
                            Font.Name = 'Verdana'
                            Font.Style = []
                            Glyph.Data = {
                              E6030000424DE603000000000000360200002800000017000000120000000100
                              080000000000B0010000120B0000120B00008000000000000000FFFFFF00D0FA
                              FF00CEFBFE00CEFAFE00B7FCFF00CDFAFD0092FAFF0091FAFF0092F9FF0091F9
                              FF0096F8FF0091F9FE0094F9FE0090F8FD00A9F1FF008AF2FE00A6F0FF0086F2
                              FE0088F2FD0087F0FE0088F0FF0087EFFE0085EEFF0088EEFF0087EEFF0086EC
                              FF0083EAFF0085E9FF007CE7FE007BE7FE007DE7FF007FE7FF00A1E6F5007EE7
                              FD007DE7FE007DE6FD00FFE8CB007AE6FE0078E7FC007BE6FF007DE6FF007DE6
                              FE007BE6FE0080E5FF007DE5FE007CE5FE007CE4FE007EE5FE007CE5FF0074DD
                              FE0072DDFF0075DDFE0073DDFE0076DCFF0073DCFF0074DCFE00BDD8E40075DA
                              EC00FFD9A90065CBE00064C9E1005EC4E00052BBE40067B7DD0083B4C800B7B5
                              B200B4B0AD0066C582005DACD40000D16E0049ACCC0042A8CC003199CE00319A
                              CB003399CE003399CD003597CD0066B066002D92C6002C92C30000AF42002287
                              BB002187B8002187BB002489B400288F8D00009F2F00009E2C001275A7006D6D
                              6C006767670065666A0003649300646667006567670068666600666765006467
                              6500646666006665670065646600007C000002466700114053000B2D62000000
                              0000FFFFFF000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              00000000000000000000000000000000000000000000000000006A6A6A6A6A6A
                              6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A006A6A6A6A6A6A4242424242424242
                              4242424242426A6A6A006A6A6A6A6A405B5B5B5B5B5B5B5B5B5B5B595C426A6A
                              6A006A6A6A6A6A5C3C1A2121212121212121093958426A6A6A006A6A6A6A4054
                              08080808080808080808084658426A6A6A006A6A6A6A5C3B0F0F0F0F0F0F0F0F
                              0F1818585C426A6A6A006A6A6A4054132A2A2A2A2A2A2A2A2A16476766426A6A
                              6A006A6A6A5C3D2F33333333333333333333583869426A6A6A006A6A40540404
                              0404040404040404043E55000069416A6A006A6A5C5353535353535353535353
                              535856000000696A6A006A6A6A6A6A53196900003A4550506857004300696A6A
                              6A006A6A6A6A6A4E1919690024564550574D000069426A6A6A006A6A6A6A6A4B
                              201B1B6900245665574D00695C426A6A6A006A6A6A6A6A4810031E1E6900243A
                              24006952526A6A6A6A006A6A6A6A6A443F0E05050569002400696A6A6A6A6A6A
                              6A006A6A6A6A6A6A44494C4C4F6A6900696A6A6A6A6A6A6A6A006A6A6A6A6A6A
                              6A6A6A6A6A6A6A696A6A6A6A6A6A6A6A6A006A6A6A6A6A6A6A6A6A6A6A6A6A6A
                              6A6A6A6A6A6A6A6A6A00}
                            Layout = blGlyphTop
                            ParentFont = False
                            ParentShowHint = False
                            ShowHint = True
                            Spacing = 0
                            OnClick = bt_open2Click
                          end
                          object bt_exp2: TSpeedButton
                            Left = 55
                            Top = 2
                            Width = 55
                            Height = 36
                            Hint = 'Exportar para disco'
                            Caption = 'Exportar'
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -9
                            Font.Name = 'Verdana'
                            Font.Style = []
                            Glyph.Data = {
                              E6000000424DE6000000000000007600000028000000100000000E0000000100
                              04000000000070000000120B0000120B00001000000000000000FFFFFF00CC99
                              FF00FFFFCC00FFCCCC00CCCCCC00FFCC9900FF99990099999900000099006666
                              66003333330000000000FFFFFF0000000000000000000000000000079BBBBB70
                              00000079642544770000075200225AAAAAA00A2002253A0777A00A3000825A00
                              00A00A2088881A0A77A00A3800825A0000A00A2002253A07AAA00A3000225A00
                              A700095026666AAAA00009566325246570000762323255569000007763255699
                              00000000779977000000}
                            Layout = blGlyphTop
                            ParentFont = False
                            ParentShowHint = False
                            ShowHint = True
                            Spacing = 0
                            OnClick = bt_exp2Click
                          end
                          object bt_limpar2: TSpeedButton
                            Left = 110
                            Top = 2
                            Width = 55
                            Height = 36
                            Hint = 'Limpar imagem'
                            Caption = 'Limpar'
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -9
                            Font.Name = 'Verdana'
                            Font.Style = []
                            Glyph.Data = {
                              56010000424D5601000000000000560000002800000010000000100000000100
                              08000000000000010000120B0000120B00000800000000000000FFFFFF0000FF
                              FF000000FF000000990000000000FFFFFF000000000000000000000000000000
                              0000000000000000000000020004040404040404040404040202000202040100
                              0100010001000102020000000202000100010001000102030000000000030200
                              0100010001020204000000000004020200010001020201040000000000040102
                              0200010202010004000000000004000102020202010001040000000000040100
                              0102020200010004000000000004000100020202020001040000000000040100
                              0202010002020004000000000004000202010001040202040000000000040202
                              0100010004010203000000000003020100010001040404020200000002020404
                              0404040404040000020200020200000000000000000000000002}
                            Layout = blGlyphTop
                            ParentFont = False
                            ParentShowHint = False
                            ShowHint = True
                            Spacing = 0
                            OnClick = bt_limpar2Click
                          end
                        end
                      end
                      object Panel26: TPanel
                        Left = 2
                        Top = 2
                        Width = 223
                        Height = 12
                        Align = alTop
                        BevelOuter = bvNone
                        Caption = 'F o t o  d o  E v e n t o'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -8
                        Font.Name = 'Verdana'
                        Font.Style = []
                        ParentColor = True
                        ParentFont = False
                        TabOrder = 2
                      end
                      object Panelbtview2: TPanel
                        Left = 163
                        Top = 14
                        Width = 62
                        Height = 115
                        Align = alRight
                        BevelOuter = bvLowered
                        Color = clWhite
                        TabOrder = 3
                        OnResize = Panelbtview2Resize
                        object bt_view2: TSpeedButton
                          Left = 1
                          Top = 48
                          Width = 60
                          Height = 67
                          Hint = 'Ampliar imagem'
                          Caption = 'Ampliar'
                          Flat = True
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -9
                          Font.Name = 'Verdana'
                          Font.Style = []
                          Glyph.Data = {
                            B2030000424DB203000000000000360200002800000013000000130000000100
                            0800000000007C010000120B0000120B00008000000000000000FFFFFF00FFFF
                            F100F7FCFB00E4F7FA00DCF5EB00FFE7FF00FFE8BE00EAE4C100FCE1BF0084EB
                            C5008FE4C800A2DDCF00AEDACD0071E4B900FFD8B20078E0BF00FAD6AE00DFD7
                            B20078DBC700FED6AC00FDD7A70075DFBA00FFCFBB00BAD6B8006ADDB600EDCE
                            B900A1CFC90066DAB500FFCDA500E8C9BA00E2CFA900FFCC9900F6CC97005CCE
                            C000E6CB9900F0CA9400F5C994003DD69F00D6CA940032D59E0000D6AD00D6C8
                            930079CE9A00DEC68C0088CE8800CFC3930073C5910000CC9900C4C1770060C4
                            8800A5BA890080B8850060B791002EC4710058BB83003AB98C00B0AE850043B5
                            8D0080B47F0090B07A006BB37F0000BD8000AAB35D0081AF7B00999999008F92
                            B80050AB740000AF80008DAA5B009898880086B1380029A67E0043B14B007396
                            9200CC99660001A5750000A764003CA064006484A7005D995C00628A88002AA3
                            3B00009966000A976C0003925B00038D630000974200058574004C758E005672
                            9100646F8F001B7887003C7F5F00008B3E001C75720006863400008B24000289
                            2700078D130000795B003E6D65000A89150008871A002E5E920009821400006C
                            550099663300087B14000A7A16000F771800017A12000F751D00087312001048
                            8300006212002E4751003333330000333300FFFFFF0000000000000000000000
                            0000000000000000000000000000000000000000000000000000000000000000
                            0000000000000000000000000000767640404040404040404040404040404040
                            7600766A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A407600764A0000000000000000
                            0000000000006A407600764A00626C65686D666F656B627048006A407600764A
                            005252524C5B5E71574C4C5437006A407600764A0018150F0D2173581209181B
                            0A006A407600764A00000204055975410C1A000000006A407600764A00033947
                            4E5C515A67502C0B00006A407600764A000731696317464F6449615F01006A40
                            7600764A00292E38342535555672604406006A407600764A00263B36272F285D
                            603E301613006A407600764A001F324B2F2F2F3D6E4D1E1F0E006A407600764A
                            001C193A3C2A2F4354531D2411006A407600764A00242223233F3342452D202B
                            10006A407600764A00141313131313131313131308006A407600764A00000000
                            000000000000000000006A407600764A4A4A4A4A4A4A4A4A4A4A4A4A4A4A6A76
                            76007676767676767676767676767676767676767600}
                          Layout = blGlyphTop
                          ParentFont = False
                          ParentShowHint = False
                          ShowHint = True
                          Spacing = 0
                          OnClick = bt_view2Click
                        end
                        object Panel28: TPanel
                          Left = 2
                          Top = 2
                          Width = 60
                          Height = 36
                          BevelOuter = bvNone
                          ParentColor = True
                          TabOrder = 0
                          object bt_imgRotateh2: TSpeedButton
                            Left = 1
                            Top = -1
                            Width = 29
                            Height = 25
                            Hint = 'Girar imagem no sentido hor'#225'rio'
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Height = -9
                            Font.Name = 'Verdana'
                            Font.Style = []
                            Glyph.Data = {
                              B2050000424DB205000000000000360400002800000013000000130000000100
                              0800000000007C010000120B0000120B00000001000030000000FFFFFF00CCFF
                              FF0099FFFF00CCCCFF0099CCFF00FFFFCC00CCFFCC0099FFCC00FFCCCC00CCCC
                              CC0099CCCC00CC99CC009999CC00FFCC9900CCCC990099CC990066CC990033CC
                              990000CC9900CC9999009999990066999900996699006666990033669900CCCC
                              660099CC660033CC6600CC99660099996600669966003399660000996600CC66
                              6600996666006666660033666600006666006633660066993300339933000099
                              3300996633006666330033663300006633006633330066660000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000009
                              090909090909090909030000000000000000092A221D1C221C1D211D1C220500
                              0000000000000922060F140F0F0F0F0F0F0D0300000000000000091C0A292929
                              2525292D1B090500000000000000091D0802070A181F0206040D080000000000
                              0000092200060A171E240C1000090500000000000000080108012D1F1F1A1F1F
                              060D0300000000000000090E140E27282012110F0E0905000000000000001413
                              14090F2D1212121D050D0800000000000000132322090E1E1B15190E0D090500
                              000000000000232B2309080508050809092B0900000000000000222E2B090D09
                              0B1E2B2F2E2C0E000000000000002B232E090508050E23262B261D0000000000
                              0000142B2B14000000000F2E2B2E230500000000000013232B2313090914222B
                              23162B09000000000000001D262B2B2B262B2B2B220009000000000000000009
                              1D232E2B2B262B1D0900000000000000000000000013142B231D140000000000
                              00000000000000000000000000000000000000000000}
                            Layout = blGlyphTop
                            ParentFont = False
                            ParentShowHint = False
                            ShowHint = True
                            Spacing = 0
                            OnClick = bt_imgRotateh2Click
                          end
                          object bt_imgRotatea2: TSpeedButton
                            Left = 31
                            Top = -1
                            Width = 29
                            Height = 25
                            Hint = 'Girar imagem no sentido anti-hor'#225'rio'
                            BiDiMode = bdLeftToRight
                            Flat = True
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clBlack
                            Font.Height = -9
                            Font.Name = 'Verdana'
                            Font.Style = []
                            Glyph.Data = {
                              B2050000424DB205000000000000360400002800000013000000130000000100
                              0800000000007C010000120B0000120B0000000100002F000000FFFFFF00CCFF
                              FF0099FFFF00CCCCFF00FFFFCC00CCFFCC0099FFCC00FFCCCC00CCCCCC0099CC
                              CC0066CCCC00CC99CC00FFCC9900CCCC990099CC990066CC990033CC990000CC
                              9900CC999900999999006699990033999900996699006666990033669900CCCC
                              660099CC6600CC99660099996600669966003399660000996600CC6666009966
                              6600666666003366660000666600663366009999330033993300009933009966
                              3300666633003366330000663300663333006666000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000000
                              0000000000000000000000000000000000000000000000000000000000000008
                              0808080808080808080300000000000000071C211B211B1C201C201C29080000
                              00000000000412060E0E0E0E0E0E0E081C080000000000000007071E2828242C
                              1F2828081C0800000000000000040D01090218170A0609011B08000000000000
                              00030C000A131E22140905002108000000000000000408051E1E0E2723280107
                              010700000000000000080C081A10111F28260D130D080000000000000004070C
                              0F1511112C0E0813121300000000000000070D070D190F1E1D0D082122120000
                              0000000000082A0808040707040708222A22000000000000000D2B2D2E2A1D0B
                              0C08082A2D21000000000000001C252A25220D040704082D222A000000000000
                              04222D2A2D0E00000000132A2A13000000000000082A16222A2113080812222A
                              2212000000000000000800212A2A2A252A2A2A251C0000000000000000000008
                              1C2A252A2A2D221C08000000000000000000000000131C222A13120000000000
                              00000000000000000000000000000000000000000000}
                            Layout = blGlyphTop
                            ParentFont = False
                            ParentShowHint = False
                            ParentBiDiMode = False
                            ShowHint = True
                            Spacing = 0
                            OnClick = bt_imgRotatea2Click
                          end
                          object Label30: TLabel
                            Left = 19
                            Top = 23
                            Width = 25
                            Height = 12
                            Alignment = taCenter
                            Caption = 'Girar'
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -9
                            Font.Name = 'Verdana'
                            Font.Style = []
                            ParentFont = False
                            Transparent = True
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
            object Panel15: TPanel
              Left = 0
              Top = 0
              Width = 232
              Height = 398
              Align = alLeft
              BevelOuter = bvNone
              ParentBackground = True
              ParentColor = True
              TabOrder = 1
              object DBGrid2: TDBGrid
                Left = 0
                Top = 29
                Width = 232
                Height = 307
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
                OnCellClick = DBGrid2CellClick
                OnKeyDown = DBGrid2KeyDown
                OnKeyUp = DBGrid2KeyUp
                OnMouseDown = DBGrid2MouseDown
              end
              object ToolBar_grp: TToolBar
                Left = 0
                Top = 0
                Width = 232
                Height = 29
                ButtonHeight = 20
                Caption = 'ToolBar_grp'
                TabOrder = 1
                OnResize = ToolBar_grpResize
                object Label4: TLabel
                  Left = 0
                  Top = 2
                  Width = 46
                  Height = 20
                  Align = alRight
                  AutoSize = False
                  Caption = '  Grupo:'
                  Layout = tlCenter
                end
                object cb_group: TComboBox
                  Left = 46
                  Top = 2
                  Width = 180
                  Height = 20
                  ItemHeight = 12
                  TabOrder = 0
                  OnChange = cb_groupChange
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 378
                Width = 232
                Height = 20
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Lb_countreg2: TLabel
                  Left = 225
                  Top = 0
                  Width = 7
                  Height = 20
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '0'
                  Transparent = True
                end
                object ComboBox_Grid2: TComboBox
                  Left = 1
                  Top = 0
                  Width = 188
                  Height = 20
                  Style = csDropDownList
                  ItemHeight = 12
                  ItemIndex = 0
                  TabOrder = 0
                  Text = 'Mostrar '#250'ltimos 10 registros'
                  Items.Strings = (
                    'Mostrar '#250'ltimos 10 registros'
                    'Mostrar '#250'ltimos 50 registros'
                    'Mostrar '#250'ltimos 100 registros'
                    'Mostrar '#250'ltimos 1000 registros'
                    'Mostrar todos os registros')
                end
              end
              object ToolBar18: TToolBar
                Left = 0
                Top = 336
                Width = 232
                Height = 42
                Align = alBottom
                AutoSize = True
                ButtonHeight = 40
                Caption = 'pn_barra'
                EdgeBorders = []
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                object bt_recursive: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 115
                  Height = 40
                  Hint = 'Inclus'#227'o recursiva de imagens'
                  Caption = 'Importar Pastas'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    1E020000424D1E02000000000000B60000002800000014000000120000000100
                    08000000000068010000120B0000120B0000200000000000000066330000C0A9
                    930000FF000099663300FAF5EF00F4E2BE00F6EAD3006D5A4B00FFFFFF00F9F1
                    E500F6E8CE00FBF8F700F5E5C500F8EEDF00FFF7EF00FCF7F700F7EDD800F4E3
                    BF00C1AA9000FFFFFF0000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000131313131313
                    1313131313131313131303001313030303030303030303030303131313030303
                    0013030B0B04090D10100C0C05031313030303030300030B0404070000000C0C
                    05031313131303001313030B0B040900120A0A0C11031313131303001313030B
                    0B04040D00120A0C0C031313131303001313030B0B0B000000070A0A0C031313
                    13130300131303080B0B04040D0D06060C0313131313030013130308080B0B04
                    090D06060C031313131303001313030303030303030303030303131313130300
                    13130308080808080808080808031313131303001313030B0404001006000C0C
                    05031313131303001313030B0B04000000000C0C11031313131303001313030B
                    0B04000D0D000A0C0C031313131303001313030B0B0B010000120A0A0C031313
                    13130300131303080B0B04040D0D06060C0313131313030013130308080B0B04
                    090D06060C031313131303001313030303030303030303030303131313130300
                    1313}
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = bt_recursiveClick
                end
                object SpeedButton2: TSpeedButton
                  Left = 115
                  Top = 2
                  Width = 115
                  Height = 40
                  Hint = 'Exportar todas as imagens para Pasta'
                  Caption = 'Exportar Itens'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  Glyph.Data = {
                    4E010000424D4E01000000000000760000002800000012000000120000000100
                    040000000000D8000000120B0000120B00001000000000000000FFFFFF0099FF
                    FF0099FFCC00FFECCC00DDDDDD00D7D7D700FFCC990086868600555555000000
                    0000FFFFFF000000000000000000000000000000000000000000000000000009
                    9999990000000000000009983666690000000000000008283666690000000000
                    0009982836666900000089999998182836666900000084544448182836666900
                    0000844445481828333339000000854444481828888888000000844454481822
                    2229000000008454444818888888000000008444544811111900000000008444
                    4448888888000000000087777454450900000000000080000444440900000000
                    0000080004454409000000000000008004444409000000000000000800000009
                    000000000000000088888889000000000000}
                  Layout = blGlyphTop
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Spacing = 0
                  OnClick = SpeedButton2Click
                end
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Personaliza'#231#245'es'
        ImageIndex = 1
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 811
          Height = 43
          Align = alTop
          Caption = 'Textos do m'#243'dulo:'
          TabOrder = 0
          object cfg_cod: TLabel
            Left = 707
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object Label22: TLabel
            Left = 9
            Top = 20
            Width = 33
            Height = 12
            Alignment = taRightJustify
            Caption = 'Texto:'
          end
          object cfg_title: TEdit
            Left = 46
            Top = 16
            Width = 665
            Height = 20
            MaxLength = 255
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 318
          Width = 811
          Height = 108
          Align = alBottom
          Caption = 'Configura'#231#245'es:'
          TabOrder = 1
          object GroupBox5: TGroupBox
            Left = 2
            Top = 14
            Width = 357
            Height = 92
            Align = alLeft
            Caption = 'Lista de '#225'lbuns:'
            TabOrder = 0
            object Label14: TLabel
              Left = 8
              Top = 17
              Width = 121
              Height = 12
              Caption = 'Forma de apresenta'#231#227'o:'
            end
            object Label17: TLabel
              Left = 8
              Top = 35
              Width = 55
              Height = 12
              Caption = 'Descri'#231#227'o:'
            end
            object Label18: TLabel
              Left = 184
              Top = 35
              Width = 49
              Height = 12
              Caption = 'Detalhes:'
            end
            object cp1_0: TRadioButton
              Left = 144
              Top = 16
              Width = 48
              Height = 17
              Caption = 'Lista'
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object cp1_1: TRadioButton
              Left = 200
              Top = 16
              Width = 58
              Height = 17
              Caption = 'Icones'
              TabOrder = 1
            end
            object cp3: TCheckBox
              Left = 8
              Top = 72
              Width = 167
              Height = 14
              Caption = 'Exibir descri'#231#227'o ao acessar'
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
            object cp5: TCheckBox
              Left = 182
              Top = 72
              Width = 164
              Height = 14
              Caption = 'Exibir detalhes ao acessar'
              TabOrder = 3
            end
            object cp2: TComboBox
              Left = 8
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 1
              TabOrder = 4
              Text = 'Superior'
              Items.Strings = (
                'Nenhum'
                'Superior'
                'Inferior'
                'Hint')
            end
            object cp4: TComboBox
              Left = 182
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 1
              TabOrder = 5
              Text = 'Vis'#237'vel'
              Items.Strings = (
                'Nenhum'
                'Vis'#237'vel'
                'Bot'#227'o'
                'Hint')
            end
          end
          object GroupBox6: TGroupBox
            Left = 359
            Top = 14
            Width = 450
            Height = 92
            Align = alClient
            Caption = 'Banco de imagens:'
            TabOrder = 1
            object Label15: TLabel
              Left = 8
              Top = 17
              Width = 121
              Height = 12
              Caption = 'Forma de apresenta'#231#227'o:'
            end
            object Label19: TLabel
              Left = 184
              Top = 35
              Width = 49
              Height = 12
              Caption = 'Detalhes:'
            end
            object Label20: TLabel
              Left = 8
              Top = 35
              Width = 55
              Height = 12
              Caption = 'Descri'#231#227'o:'
            end
            object cp6_0: TRadioButton
              Left = 134
              Top = 16
              Width = 48
              Height = 17
              Caption = 'Lista'
              TabOrder = 0
            end
            object cp6_1: TRadioButton
              Left = 190
              Top = 16
              Width = 58
              Height = 17
              Caption = 'Icones'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object cp7: TComboBox
              Left = 8
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 2
              TabOrder = 2
              Text = 'Inferior'
              Items.Strings = (
                'Nenhum'
                'Superior'
                'Inferior'
                'Hint')
            end
            object cp9: TComboBox
              Left = 182
              Top = 49
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 3
              Text = 'Nenhum'
              Items.Strings = (
                'Nenhum'
                'Vis'#237'vel'
                'Bot'#227'o'
                'Hint')
            end
            object cp8: TCheckBox
              Left = 8
              Top = 72
              Width = 167
              Height = 14
              Caption = 'Exibir descri'#231#227'o ao acessar'
              Checked = True
              State = cbChecked
              TabOrder = 4
            end
            object cp10: TCheckBox
              Left = 182
              Top = 72
              Width = 164
              Height = 14
              Caption = 'Exibir detalhes ao acessar'
              TabOrder = 5
            end
            object CheckBox1: TCheckBox
              Left = 259
              Top = 17
              Width = 88
              Height = 15
              Caption = 'Incluir busca'
              Checked = True
              State = cbChecked
              TabOrder = 6
            end
            object CheckBox2: TCheckBox
              Left = 259
              Top = 33
              Width = 88
              Height = 15
              Caption = 'Salvar como'
              Checked = True
              State = cbChecked
              TabOrder = 7
            end
          end
        end
        object GroupBox7: TGroupBox
          Left = 0
          Top = 43
          Width = 811
          Height = 275
          Align = alClient
          Caption = 'Banner:'
          TabOrder = 2
          object Label_size3: TLabel
            Left = 707
            Top = 0
            Width = 7
            Height = 12
            Alignment = taRightJustify
            Caption = '0'
            Transparent = True
          end
          object swf_banner: TShockwaveFlash
            Left = 2
            Top = 14
            Width = 578
            Height = 259
            Cursor = crHandPoint
            Hint = 'Icone do '#225'lbum'
            TabStop = False
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ControlData = {
              6755665500090000BD3B0000C51A000008000200000000000800000000000800
              0000000008000E000000570069006E0064006F00770000000800060000002D00
              310000000800060000002D003100000008000A00000048006900670068000000
              08000200000000000800060000002D0031000000080000000000080002000000
              0000080010000000530068006F00770041006C006C0000000800040000003000
              0000080004000000300000000800020000000000080000000000080002000000
              00000D0000000000000000000000000000000000080004000000310000000800
              0400000030000000080000000000080004000000300000000800080000006100
              6C006C00000008000C000000660061006C0073006500000008000C0000006600
              61006C0073006500000008000400000030000000}
          end
          object Panel17: TPanel
            Left = 580
            Top = 14
            Width = 229
            Height = 259
            Align = alRight
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 1
            object Label21: TLabel
              Left = 18
              Top = 21
              Width = 33
              Height = 12
              Caption = 'Estilo:'
            end
            object Label1: TLabel
              Left = 8
              Top = 45
              Width = 44
              Height = 12
              Caption = 'Posi'#231#227'o:'
            end
            object cp14: TComboBox
              Left = 56
              Top = 16
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 2
              Text = 'Auto ajustar proporcional'
              Items.Strings = (
                'Auto ajustar proporcional'
                'Auto ajustar esticado'
                'Manter tamanho original')
            end
            object ToolBar7: TToolBar
              Left = 0
              Top = 235
              Width = 229
              Height = 24
              Align = alBottom
              AutoSize = True
              Caption = 'pn_barra'
              EdgeBorders = []
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object bt_open3: TSpeedButton
                Left = 0
                Top = 2
                Width = 124
                Height = 22
                Hint = 'Importar imagem'
                Caption = '&Importar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  E6030000424DE603000000000000360200002800000017000000120000000100
                  080000000000B0010000120B0000120B00008000000000000000FFFFFF00D0FA
                  FF00CEFBFE00CEFAFE00B7FCFF00CDFAFD0092FAFF0091FAFF0092F9FF0091F9
                  FF0096F8FF0091F9FE0094F9FE0090F8FD00A9F1FF008AF2FE00A6F0FF0086F2
                  FE0088F2FD0087F0FE0088F0FF0087EFFE0085EEFF0088EEFF0087EEFF0086EC
                  FF0083EAFF0085E9FF007CE7FE007BE7FE007DE7FF007FE7FF00A1E6F5007EE7
                  FD007DE7FE007DE6FD00FFE8CB007AE6FE0078E7FC007BE6FF007DE6FF007DE6
                  FE007BE6FE0080E5FF007DE5FE007CE5FE007CE4FE007EE5FE007CE5FF0074DD
                  FE0072DDFF0075DDFE0073DDFE0076DCFF0073DCFF0074DCFE00BDD8E40075DA
                  EC00FFD9A90065CBE00064C9E1005EC4E00052BBE40067B7DD0083B4C800B7B5
                  B200B4B0AD0066C582005DACD40000D16E0049ACCC0042A8CC003199CE00319A
                  CB003399CE003399CD003597CD0066B066002D92C6002C92C30000AF42002287
                  BB002187B8002187BB002489B400288F8D00009F2F00009E2C001275A7006D6D
                  6C006767670065666A0003649300646667006567670068666600666765006467
                  6500646666006665670065646600007C000002466700114053000B2D62000000
                  0000FFFFFF000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000006A6A6A6A6A6A
                  6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A006A6A6A6A6A6A4242424242424242
                  4242424242426A6A6A006A6A6A6A6A405B5B5B5B5B5B5B5B5B5B5B595C426A6A
                  6A006A6A6A6A6A5C3C1A2121212121212121093958426A6A6A006A6A6A6A4054
                  08080808080808080808084658426A6A6A006A6A6A6A5C3B0F0F0F0F0F0F0F0F
                  0F1818585C426A6A6A006A6A6A4054132A2A2A2A2A2A2A2A2A16476766426A6A
                  6A006A6A6A5C3D2F33333333333333333333583869426A6A6A006A6A40540404
                  0404040404040404043E55000069416A6A006A6A5C5353535353535353535353
                  535856000000696A6A006A6A6A6A6A53196900003A4550506857004300696A6A
                  6A006A6A6A6A6A4E1919690024564550574D000069426A6A6A006A6A6A6A6A4B
                  201B1B6900245665574D00695C426A6A6A006A6A6A6A6A4810031E1E6900243A
                  24006952526A6A6A6A006A6A6A6A6A443F0E05050569002400696A6A6A6A6A6A
                  6A006A6A6A6A6A6A44494C4C4F6A6900696A6A6A6A6A6A6A6A006A6A6A6A6A6A
                  6A6A6A6A6A6A6A696A6A6A6A6A6A6A6A6A006A6A6A6A6A6A6A6A6A6A6A6A6A6A
                  6A6A6A6A6A6A6A6A6A00}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_open3Click
              end
              object bt_limpar3: TSpeedButton
                Left = 124
                Top = 2
                Width = 104
                Height = 22
                Hint = 'Limpar imagem'
                Caption = '&Limpar'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Glyph.Data = {
                  56010000424D5601000000000000560000002800000010000000100000000100
                  08000000000000010000120B0000120B00000800000000000000FFFFFF0000FF
                  FF000000FF000000990000000000FFFFFF000000000000000000000000000000
                  0000000000000000000000020004040404040404040404040202000202040100
                  0100010001000102020000000202000100010001000102030000000000030200
                  0100010001020204000000000004020200010001020201040000000000040102
                  0200010202010004000000000004000102020202010001040000000000040100
                  0102020200010004000000000004000100020202020001040000000000040100
                  0202010002020004000000000004000202010001040202040000000000040202
                  0100010004010203000000000003020100010001040404020200000002020404
                  0404040404040000020200020200000000000000000000000002}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = bt_limpar3Click
              end
            end
            object cp15: TComboBox
              Left = 56
              Top = 40
              Width = 169
              Height = 20
              Style = csDropDownList
              ItemHeight = 12
              ItemIndex = 0
              TabOrder = 0
              Text = 'Centralizado'
              Items.Strings = (
                'Centralizado'
                'Superior Centralizado'
                'Superior Esquerdo'
                'Superior Direito'
                'Inferior Centralizado'
                'Inferior Esquerdo'
                'Inferior Direito')
            end
          end
        end
        object Panel16: TPanel
          Left = 0
          Top = 426
          Width = 811
          Height = 24
          Align = alBottom
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 3
          object ToolBar5: TToolBar
            Left = 649
            Top = 0
            Width = 162
            Height = 24
            Align = alRight
            AutoSize = True
            Caption = 'pn_barra'
            EdgeBorders = []
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object bt_save3: TSpeedButton
              Left = 0
              Top = 2
              Width = 162
              Height = 22
              Hint = 'Gravar dados'
              Caption = '&Gravar'
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
              OnClick = bt_save3Click
            end
          end
        end
      end
    end
    object ToolBar_lng1: TToolBar
      Left = 236
      Top = 2
      Width = 491
      Height = 24
      Align = alNone
      ButtonHeight = 25
      EdgeBorders = []
      TabOrder = 1
      object Label11: TLabel
        Left = 0
        Top = 2
        Width = 58
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Linguagem:'
        Layout = tlCenter
      end
      object PageControl_languagens: TPageControl
        Left = 58
        Top = 2
        Width = 430
        Height = 25
        ActivePage = lngtb1
        Align = alLeft
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PageControl_languagensChange
        object lngtb1: TTabSheet
          Caption = 'lngtb1'
        end
        object lngtb2: TTabSheet
          Caption = 'lngtb2'
          ImageIndex = 1
          TabVisible = False
        end
        object lngtb3: TTabSheet
          Caption = 'lngtb3'
          ImageIndex = 2
          TabVisible = False
        end
        object lngtb4: TTabSheet
          Caption = 'lngtb4'
          ImageIndex = 3
          TabVisible = False
        end
        object lngtb5: TTabSheet
          Caption = 'lngtb5'
          ImageIndex = 4
          TabVisible = False
        end
        object lngtb6: TTabSheet
          Caption = 'lngtb6'
          ImageIndex = 5
          TabVisible = False
        end
        object lngtb7: TTabSheet
          Caption = 'lngtb7'
          ImageIndex = 6
          TabVisible = False
        end
        object lngtb8: TTabSheet
          Caption = 'lngtb8'
          ImageIndex = 7
          TabVisible = False
        end
        object lngtb9: TTabSheet
          Caption = 'lngtb9'
          ImageIndex = 8
          TabVisible = False
        end
        object lngtb10: TTabSheet
          Caption = 'lngtb10'
          ImageIndex = 9
          TabVisible = False
        end
        object lngtb11: TTabSheet
          Caption = 'lngtb11'
          ImageIndex = 10
          TabVisible = False
        end
        object lngtb12: TTabSheet
          Caption = 'lngtb12'
          ImageIndex = 11
          TabVisible = False
        end
        object lngtb13: TTabSheet
          Caption = 'lngtb13'
          ImageIndex = 12
          TabVisible = False
        end
        object lngtb14: TTabSheet
          Caption = 'lngtb14'
          ImageIndex = 13
          TabVisible = False
        end
        object lngtb15: TTabSheet
          Caption = 'lngtb15'
          ImageIndex = 14
          TabVisible = False
        end
        object lngtb16: TTabSheet
          Caption = 'lngtb16'
          ImageIndex = 15
          TabVisible = False
        end
        object lngtb17: TTabSheet
          Caption = 'lngtb17'
          ImageIndex = 16
          TabVisible = False
        end
        object lngtb18: TTabSheet
          Caption = 'lngtb18'
          ImageIndex = 17
          TabVisible = False
        end
        object lngtb19: TTabSheet
          Caption = 'lngtb19'
          ImageIndex = 18
          TabVisible = False
        end
        object lngtb20: TTabSheet
          Caption = 'lngtb20'
          ImageIndex = 19
          TabVisible = False
        end
      end
    end
  end
  object Panel20: TPanel
    Left = 795
    Top = 4
    Width = 26
    Height = 25
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object bt_help: TSpeedButton
      Left = 1
      Top = 1
      Width = 23
      Height = 22
      Hint = 'Ajuda'
      Caption = '?'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615680
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = bt_helpClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 488
    Width = 827
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'by HWS Web Solution Ltda  '
        Width = 50
      end>
    ParentColor = True
    OnClick = StatusBar1Click
  end
  object XPManifest1: TXPManifest
    Left = 128
    Top = 342
  end
  object ImportarImgDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.ico,*.swf,*.flv)|*.jpg;*.' +
      'jpeg;*.bmp;*.ico;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JP' +
      'EG (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Icones (*.ico)|*.ico|Fl' +
      'ash (*.swf)|*.swf|Macromedia Flash Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 38
    Top = 341
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 98
    Top = 342
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 68
    Top = 342
  end
  object OpenBannerDialog: TOpenPictureDialog
    Filter = 
      'Todas as imagens (*.jpg;*.jpeg;*.bmp;*.swf,*.flv)|*.jpg;*.jpeg;*' +
      '.bmp;*.swf;*.flv|Imagem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|' +
      '*.jpeg|Bitmaps (*.bmp)|*.bmp|Flash (*.swf)|*.swf|Macromedia Flas' +
      'h Video (*.flv)|*.flv'
    Title = 'Importar imagem'
    Left = 190
    Top = 341
  end
  object PopupMenu2: TPopupMenu
    Left = 158
    Top = 343
    object MenuItem1: TMenuItem
      Caption = 'Excluir todos os registros'
      OnClick = MenuItem1Click
    end
  end
  object ExportarImgDialog: TSavePictureDialog
    Filter = 
      'JPEG arquivo de imagem (*.jpg)|*.jpg|Flash (*.swf)|*.swf|Macrome' +
      'dia Flash Video (*.flv)|*.flv'
    Left = 40
    Top = 372
  end
  object ColorDialog1: TColorDialog
    Left = 80
    Top = 372
  end
  object ToolbarImages: TImageList
    Left = 112
    Top = 372
    Bitmap = {
      494C01011C001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2A2B002B2A2B002B2A2B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00002B2A2B00CED2D500CED2D5002B2A2B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00808080008080800000000000FFFFFF0000FFFF0000000000FFFFFF008080
      8000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000B54A6300FFDE
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFCECE000000000000000000000000000000000000000000000000000000
      0000000000002B2A2B00ADAEAD00ADAEAD004241420000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008080
      8000FFFFFF00808080000000000000000000000000000000000080808000FFFF
      FF0080808000FFFFFF008080800000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000B54A6300FFEF
      EF00000000000000000000000000FFF7F700FFDEE700E7B5BD00000000000000
      0000FFDEDE000000000000000000000000000000000000000000000000000000
      0000000000002B2A2B00ADAEAD00ADAEAD0084828400424142002B2A2B004241
      4200000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000000000000063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000B54A63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFEF0094394A0000000000000000000000000000000000424142004241
      420042414200ADAEAD00ADAEAD00ADAEAD00ADAEAD00ADAEAD00ADAEAD008482
      8400424142004241420000000000000000000000000000000000FFFFFF00FFFF
      FF0080808000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00808080000000000000000000000000006363630000FFFF0000FF
      FF000000000000000000CED6D6000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000007B7B
      7B00AD395200AD395200AD3952007BAD31007BAD3100AD395200AD395200B54A
      63007B7B7B000000000000000000000000000000000042414200ADAEAD00CED2
      D500CED2D500CED2D500ADAEAD009966000099660000ADAEAD00ADAEAD00ADAE
      AD00ADAEAD008482840042414200000000000000000000000000FFFFFF008080
      8000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF0080808000FFFFFF000000000000000000000000006363630000FFFF0000FF
      FF000000000000000000CED6D6000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      00007BAD31007BAD3100EFD684007BAD31007BAD3100F7E79C00E7C673007BAD
      3100ADADB50000000000000000000000000042414200ADAEAD00CED2D500CED2
      D500CED2D500CED2D500ADAEAD00FF7D5A00FF7D5A00CED2D500ADAEAD00ADAE
      AD00ADAEAD00ADAEAD0084828400424142000000000000000000000000000000
      0000000000000000000000000000008080000080800000000000000000000000
      000000000000000000000000000000000000000000006363630000FFFF0000FF
      FF000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      00009CC65A00E7C67300CEDEB500FFEFBD00FFEFBD00B5D67B00EFD684007BAD
      3100ADADB5000000000000000000000000002B2A2B00CED2D500CED2D500CED2
      D500CED2D500CED2D500CED2D500BD79000099660000ADAEAD00CED2D500CED2
      D500ADAEAD00ADAEAD00ADAEAD002B2A2B000000000000000000000000008000
      000000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF0080000000000000000000000000000000000000006363630000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      00009CC65A00B5D67B00FFEFBD00FFF7D600FFEFBD009CC65A00E7C673007BAD
      3100ADADB5000000000000000000000000002B2A2B000000000000000000CED2
      D500CED2D500CED2D500CED2D500FF7D5A0099660000BD790000ADAEAD00CED2
      D500CED2D500CED2D500CED2D5002B2A2B000000000000000000000000008000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0080000000800000008000
      000080000000000000000000000000000000000000006363630000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000A5A5A5000000000000000000000000000000
      0000E7848400EFD68400FFF7D600FFFFEF00FFF7D6007BAD31007BAD3100C66B
      7B00000000000000000000000000000000002B2A2B0000000000000000000000
      000000000000F7CFA500FFAE8C00CED2D500FFAE8C0099660000BD790000CED2
      D500CED2D500CED2D500CED2D5002B2A2B000000000000000000000000008000
      0000FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF008000000000FFFF008000
      000000000000000000000000000000000000000000006363630000FFFF000000
      0000CED6D600CED6D600CED6D6000000000000FFFF0000000000A5A5A5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CBD7B00E7848400E78484009CC65A009CC65A00C66B7B00C66B7B00ADAD
      B5000000000000000000000000000000000042414200CED2D500000000000000
      000000000000BD790000BD790000FF7D5A00FF7D5A0099660000BD7900000000
      0000CED2D500CED2D500ADAEAD00424142000000000000000000000000008000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0080000000800000000000
      000000000000000000000000000000000000000000006363630000FFFF000000
      0000CED6D600CED6D600CED6D6000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CBD7B00E7848400E78484009CBD7B00CED6C6000000
      000000000000000000000000000000000000000000002B2A2B00CED2D5000000
      000000000000FFD7D600BD7900009966000099660000BD790000F7CFA5000000
      000000000000ADAEAD0042414200000000000000000000000000000000008000
      0000FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF0080000000000000000000
      0000000000000000000000000000000000000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B2A2B004241
      4200CED2D500CED2D500CED2D500F7CFA500F7CFA5000000000000000000ADAE
      AD002B2A2B004241420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063422900FFF7C600FFF7C6006342
      29009C949400BDBDBD00DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B635200FFE7AD00FFE7AD00FFE7
      AD00634229009C949400CECECE00E7E7E70000000000EFEFEF00EFEFEF00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB5000000000000000000000000000000000000000000ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADB500ADADB500ADADB500ADADB500ADAD
      B500ADADB500ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDED60063422900FFC68C00FFC6
      8C00FFC68C006B524200B5B5B500CECECE00CECECE00C6C6C600C6C6C600C6C6
      C600CECECE00DEDEDE00EFEFEF0000000000000000000000000000000000005A
      B50000000000005AB500ADADB5000000000000000000005AB500ADADB5000000
      0000ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5EFEF00A5EFEF00A5EFEF00A5EFEF00A5EF
      EF00215AD600ADADB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B00000000000000000000000000000000000000DEDED60063422900FFB5
      7B00FFB57B006342290094847B0073635200735242006342290063422900735A
      4A0094847B00BDBDBD00D6D6D600EFEFEF00000000000000000000000000005A
      B500ADADB500005AB500ADADB5000000000000000000005AB500ADADB500ADAD
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5EFEF00A5EFEF00A5EFEF00A5EFEF00A5EF
      EF00215AD600ADADB500000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000DEDED6007B63
      520063422900FFB57B00846B5A00D6CEBD00FFF7EF00FFF7EF00FFF7EF00D6CE
      BD00846B5A007B6B5A00BDBDBD00DEDEDE000000000000000000000000000000
      0000005AB500005AB500ADADB5000000000000000000005AB500005AB500005A
      B500000000000000000000000000000000000000000000000000000000000000
      0000ADADB500ADADB500ADADB500BDF7F7009CDEEF009CDEEF009CDEEF009CDE
      EF00215AD600ADADB500000000000000000000000000000000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000B5ADA500846B5A00F7EFE700FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7
      DE00F7EFE700846B5A0094847B00CECECE000000000000000000000000000000
      000000000000106BCE00106BCE00105ADE00005AB500106BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600A5EFEF00A5EFEF00A5EFEF00CEF7F7009CDEEF009CDEEF009CDEEF009CDE
      EF00215AD600ADADB500000000000000000000000000000000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      000084736300D6C6B500FFEFD60063422900FFEFD600FFEFD600FFEFD6006342
      2900FFEFD600D6C6B500735A4A00C6C6C6000000000000000000000000000000
      0000000000000000000000000000398CDE00105ADE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600A5EFEF00A5EFEF00A5EFEF00EFFFFF00EFFFFF00EFFFFF004A9CE7004A9C
      E700215AD600ADADB500000000000000000000000000000000007B0000007B00
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      00007B635200FFEFD600FFEFCE0063422900FFEFCE00FFEFCE00FFEFCE006342
      2900FFEFCE00FFEFD60063422900BDBDBD000000000000000000000000000000
      00000000000000000000AD395200D694AD00C66B7B00ADADB500ADADB5000000
      0000000000000000000000000000000000000000000000000000000000002184
      D600CEF7F700CEF7F700BDF7F700F7FFFF00EFFFFF00EFFFFF004A9CE7002184
      D6000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      000063422900FFE7C600FFE7C60084634A009C7B63009C7B63009C7B63008463
      4A00FFE7C600FFE7C60063422900C6C6C6000000000000000000000000000000
      000000000000AD395200BD7B940000000000D694AD00AD395200ADADB500ADAD
      B500000000000000000000000000000000000000000000000000000000002184
      D6009CDEEF009CDEEF009CDEEF002184D6002184D6002184D6002184D6002184
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      000063422900FFE7C600FFDEBD00BDA5840063422900FFDEBD0063422900BDA5
      8400FFDEBD00FFE7C60063422900CECECE000000000000000000000000000000
      0000AD395200BD7B9400D694AD000000000000000000BD7B9400C66B7B00ADAD
      B500000000000000000000000000000000000000000000000000000000002184
      D600EFFFFF00EFFFFF00F7FFFF006BB5F7006BB5F700ADADB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C736300D6BDA500FFDEB500FFDEB50084634200FFDEB50084634200FFDE
      B500FFDEB500D6BDA5007B635200DEDEDE00000000000000000000000000C66B
      7B00D694AD000000000000000000000000000000000000000000D694AD00BD7B
      9400ADADB5000000000000000000000000000000000000000000000000002184
      D600EFFFFF00EFFFFF00EFFFFF002184D6002184D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFE00FFFFFFFFFFFFFC00
      FFFFF1FF8001FDFCE187F0FF0000FDFCC003F87F0000E1C0CA13F80F0000803C
      D003C0030000803CE00780018001800CF0070000C003803CF0070000E007803C
      F0076000E0078000F00F7800E00F801FF00F3810E01F803FFC1F9819E03F803F
      FFFFC063FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
      FFFF01FFFFFFFFFFFFFF008FF3EFFE03FFFF0001E997FE03FFF78000E18FFE03
      C1F7C000F18FF003C3FBF000F83FE003C7FBF000FE7FE003CBFBF000FC1FE00F
      DCF7F000F90FE00FFF0FF000F18FE03FFFFFF000E7C7E07FFFFFF000EFEFE0FF
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
    Left = 144
    Top = 372
    object Desfazer1: TMenuItem
      Caption = 'Desfazer'
      ImageIndex = 4
      ShortCut = 16474
      OnClick = Desfazer1Click
    end
    object Recortar1: TMenuItem
      Caption = 'Recortar'
      ImageIndex = 6
      ShortCut = 16466
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
    object Importar1: TMenuItem
      Caption = 'Importar'
      ImageIndex = 27
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Fontemenu: TMenuItem
      Caption = 'Formatar fonte'
      ImageIndex = 9
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
        ShortCut = 16469
        OnClick = Sublinhado1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cor1: TMenuItem
        Caption = 'Cor'
        ImageIndex = 10
        OnClick = Cor1Click
      end
    end
    object Formatarpargrafo1: TMenuItem
      Caption = 'Formatar par'#225'grafo'
      ImageIndex = 17
      object esquerdo1: TMenuItem
        Caption = 'esquerdo'
        ImageIndex = 17
        OnClick = esquerdo1Click
      end
      object centro1: TMenuItem
        Caption = 'centro'
        ImageIndex = 18
        OnClick = centro1Click
      end
      object direita1: TMenuItem
        Caption = 'direita'
        ImageIndex = 19
        OnClick = direita1Click
      end
      object justificado1: TMenuItem
        Caption = 'justificado'
        ImageIndex = 20
        OnClick = justificado1Click
      end
    end
    object Marcador1: TMenuItem
      Caption = 'Marcador'
      ImageIndex = 21
      ShortCut = 16461
      OnClick = Marcador1Click
    end
    object Cordefundo1: TMenuItem
      Caption = 'Cor de fundo'
      ImageIndex = 12
      OnClick = Cordefundo1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.*]|*.*|Rich Text [*.rtf]|*.rtf|Arquivos Tex' +
      'to [*.txt]|*.txt'
    Title = 'Importar arquivo'
    Left = 176
    Top = 373
  end
  object PopupMenu1: TPopupMenu
    Left = 222
    Top = 343
    object MenuItem2: TMenuItem
      Caption = 'Excluir registro'
      Enabled = False
      OnClick = MenuItem2Click
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 221
    Top = 376
  end
end
