object adm_php: Tadm_php
  Left = 187
  Top = 194
  BorderStyle = bsNone
  ClientHeight = 393
  ClientWidth = 739
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton
    Left = 730
    Top = -1
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
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 739
    Height = 356
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 283
      Top = 2
      Width = 450
      Height = 348
      Align = alClient
      Caption = 'PHP encoder:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object lbtitlephp: TLabel
        Left = 80
        Top = 0
        Width = 77
        Height = 14
        Caption = '<Arquivo novo>'
      end
      object editor_php: TRichEdit
        Left = 2
        Top = 45
        Width = 446
        Height = 301
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
        Width = 446
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
        object ComboBox_predefinidos: TComboBox
          Left = 81
          Top = 2
          Width = 336
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 0
          Items.Strings = (
            'Conex'#227'o para bases'
            'Usu'#225'rios on-line+contador (flash)'
            'Usu'#225'rios on-line+contador (php)'
            'Select na tabela selecionada'
            'Insert na tabela selecionada'
            'Update na tabela selecionada'
            'Delete na tabela selecionada')
        end
        object bt_selecionar: TSpeedButton
          Left = 417
          Top = 2
          Width = 23
          Height = 22
          Hint = 'Executar rotina selecionada'
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
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 281
      Height = 348
      Align = alLeft
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 279
        Height = 346
        ActivePage = TabSheet1
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet1: TTabSheet
          Caption = 'Usu'#225'rios'
          object DBGrid1: TDBGrid
            Left = 0
            Top = 44
            Width = 271
            Height = 272
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
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 271
            Height = 29
            ButtonHeight = 21
            Caption = 'ToolBar2'
            TabOrder = 1
            object Label9: TLabel
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
            object ed_entidade: TEdit
              Left = 53
              Top = 2
              Width = 216
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 29
            Width = 271
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 2
            object count_grade: TLabel
              Left = 209
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
            object Label11: TLabel
              Left = 217
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
            object Label12: TLabel
              Left = 0
              Top = 0
              Width = 86
              Height = 12
              Caption = 'Lista de usu'#225'rios'
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Tabelas'
          ImageIndex = 2
          object ToolBar6: TToolBar
            Left = 0
            Top = 0
            Width = 271
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
              Width = 216
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 44
            Width = 271
            Height = 272
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnCellClick = DBGrid2CellClick
            OnKeyDown = DBGrid2KeyDown
            OnKeyUp = DBGrid2KeyUp
          end
          object Panel4: TPanel
            Left = 0
            Top = 29
            Width = 271
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 2
            object count_tab: TLabel
              Left = 209
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
              Left = 217
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
        end
        object TabSheet7: TTabSheet
          Caption = 'Campos'
          ImageIndex = 4
          object ToolBar7: TToolBar
            Left = 0
            Top = 0
            Width = 271
            Height = 29
            ButtonHeight = 21
            Caption = 'ToolBar2'
            TabOrder = 0
            object Label2: TLabel
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
            object ed_campos: TEdit
              Left = 53
              Top = 2
              Width = 216
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 44
            Width = 271
            Height = 272
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
          end
          object Panel5: TPanel
            Left = 0
            Top = 29
            Width = 271
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Color = 16119285
            TabOrder = 2
            object count_campos: TLabel
              Left = 209
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
            object Label16: TLabel
              Left = 217
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
            object lb_tab: TLabel
              Left = 0
              Top = 0
              Width = 86
              Height = 12
              Caption = 'Lista de campos:'
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Conex'#227'o'
          ImageIndex = 1
          object group_servera: TGroupBox
            Left = 0
            Top = 0
            Width = 271
            Height = 316
            Align = alClient
            Caption = 'Conex'#227'o:'
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Label10: TLabel
              Left = 8
              Top = 24
              Width = 44
              Height = 12
              Alignment = taRightJustify
              Caption = 'Conex'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 8
              Top = 51
              Width = 42
              Height = 12
              Alignment = taRightJustify
              Caption = 'Servidor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 2
              Top = 75
              Width = 48
              Height = 12
              Alignment = taRightJustify
              Caption = 'Database'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 11
              Top = 99
              Width = 39
              Height = 12
              Alignment = taRightJustify
              Caption = 'Usu'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 19
              Top = 123
              Width = 31
              Height = 12
              Alignment = taRightJustify
              Caption = 'Senha'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 17
              Top = 147
              Width = 33
              Height = 12
              Alignment = taRightJustify
              Caption = 'Dir Lib'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object YuSoftLabel3: TYuSoftLabel
              Left = 220
              Top = 174
              Width = 38
              Height = 12
              Hint = 'Restartar configura'#231#227'o default'
              Alignment = taRightJustify
              Caption = 'Default'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = YuSoftLabel3Click
              OnMouseEnterState.Active = True
              OnMouseEnterState.BorderColor = 8454143
              OnMouseEnterState.BorderWidth = 1
              OnMouseEnterState.TextStyle = tsRecessed1
              OnMouseEnterState.ShadowColor = clWhite
              OnMouseEnterState.ShadowWidth = 0
              OnClickState.Active = True
              OnClickState.BorderColor = clBtnHighlight
              OnClickState.BorderWidth = 0
              OnClickState.TextStyle = tsRecessed2
              OnClickState.ShadowColor = 16769183
              OnClickState.ShadowWidth = 0
              OnExtendedState.Active = True
              OnExtendedState.BorderColor = clBtnHighlight
              OnExtendedState.BorderWidth = 1
              OnExtendedState.TextStyle = tsRecessed1
              OnExtendedState.ShadowColor = clWhite
              OnExtendedState.ShadowWidth = 0
              Transparent = True
            end
            object ed_host: TEdit
              Left = 56
              Top = 47
              Width = 204
              Height = 22
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object ComboBox_cbx: TComboBox
              Left = 56
              Top = 23
              Width = 204
              Height = 20
              Style = csDropDownList
              ItemHeight = 0
              TabOrder = 1
            end
            object ed_db: TEdit
              Left = 56
              Top = 71
              Width = 204
              Height = 22
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object ed_user: TEdit
              Left = 56
              Top = 95
              Width = 204
              Height = 22
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object ed_pass: TEdit
              Left = 56
              Top = 119
              Width = 204
              Height = 22
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              PasswordChar = '#'
              TabOrder = 4
            end
            object ed_lib: TEdit
              Left = 56
              Top = 143
              Width = 204
              Height = 22
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Contador'
          ImageIndex = 2
          object PageControl2: TPageControl
            Left = 0
            Top = 0
            Width = 271
            Height = 316
            ActivePage = TabSheet4
            Align = alClient
            Style = tsFlatButtons
            TabOrder = 0
            object TabSheet4: TTabSheet
              Caption = 'Contador'
              object ToolBar4: TToolBar
                Left = 0
                Top = 0
                Width = 263
                Height = 24
                AutoSize = True
                ButtonHeight = 20
                Caption = 'ToolBar3'
                TabOrder = 0
                object ed_contador: TEdit
                  Left = 0
                  Top = 2
                  Width = 217
                  Height = 20
                  TabOrder = 0
                end
                object br_localizarbase2: TSpeedButton
                  Left = 217
                  Top = 2
                  Width = 23
                  Height = 20
                  Hint = 'Localizar tabela'
                  Flat = True
                  Glyph.Data = {
                    B6010000424DB601000000000000B60000002800000010000000100000000100
                    08000000000000010000120B0000120B00002000000000000000FFFFFF00CCFF
                    FF00F0FBFF0099FFFF0066FFFF0033CCCC009999990033999900009999000080
                    8000666666005555550000333300161616000808080000000000FFFFFF000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000101010101010
                    10101010101010101010101010100A0D0F0F0D0A1010101010101010100A0C04
                    0507090C0D0F0F0D0A101010100D0500050709070F0507090C0A100A0D0D0500
                    050709070F050709070F0A09040D0500050709070F050709070F0B07040D0500
                    050709070F050709070F0B07040D0500070709070F050709070F0B07040D0504
                    040405070F050809070F0B07040D0400000000040F040405080F0B0705070905
                    0404050909000000040F0B050404050C0D0D0C0905040405090A0A0501020307
                    0E1010060B0B0B0B0610100A0B0B0B0A10101010101010101010101010101010
                    1010101010101010101010101010101010101010101010101010}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = br_localizarbase2Click
                end
                object SpeedButton6: TSpeedButton
                  Left = 240
                  Top = 2
                  Width = 23
                  Height = 20
                  Hint = 'Criar tabela para contador de visitas'
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
                  OnClick = SpeedButton6Click
                end
              end
              object ToolBar5: TToolBar
                Left = 0
                Top = 24
                Width = 263
                Height = 24
                AutoSize = True
                ButtonHeight = 20
                Caption = 'ToolBar5'
                TabOrder = 1
                object Label3: TLabel
                  Left = 0
                  Top = 2
                  Width = 132
                  Height = 12
                  Alignment = taCenter
                  Caption = 'Incrementar n'#186' de visitas:'
                  Layout = tlCenter
                end
                object ed_inccount: TEdit
                  Left = 132
                  Top = 2
                  Width = 108
                  Height = 20
                  TabOrder = 0
                  Text = '0'
                  OnKeyPress = ed_inccountKeyPress
                end
                object bt_executarvisitas: TSpeedButton
                  Left = 240
                  Top = 2
                  Width = 23
                  Height = 20
                  Hint = 'Executar incrementa'#231#227'o autom'#225'tica'
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
                  OnClick = bt_executarvisitasClick
                end
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Usu'#225'rios on-line'
              ImageIndex = 1
              object ToolBar3: TToolBar
                Left = 0
                Top = 0
                Width = 263
                Height = 24
                AutoSize = True
                ButtonHeight = 20
                Caption = 'ToolBar3'
                TabOrder = 0
                object ed_online: TEdit
                  Left = 0
                  Top = 2
                  Width = 217
                  Height = 20
                  TabOrder = 0
                end
                object br_localizarbase1: TSpeedButton
                  Left = 217
                  Top = 2
                  Width = 23
                  Height = 20
                  Hint = 'Localizar tabela'
                  Flat = True
                  Glyph.Data = {
                    B6010000424DB601000000000000B60000002800000010000000100000000100
                    08000000000000010000120B0000120B00002000000000000000FFFFFF00CCFF
                    FF00F0FBFF0099FFFF0066FFFF0033CCCC009999990033999900009999000080
                    8000666666005555550000333300161616000808080000000000FFFFFF000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000101010101010
                    10101010101010101010101010100A0D0F0F0D0A1010101010101010100A0C04
                    0507090C0D0F0F0D0A101010100D0500050709070F0507090C0A100A0D0D0500
                    050709070F050709070F0A09040D0500050709070F050709070F0B07040D0500
                    050709070F050709070F0B07040D0500070709070F050709070F0B07040D0504
                    040405070F050809070F0B07040D0400000000040F040405080F0B0705070905
                    0404050909000000040F0B050404050C0D0D0C0905040405090A0A0501020307
                    0E1010060B0B0B0B0610100A0B0B0B0A10101010101010101010101010101010
                    1010101010101010101010101010101010101010101010101010}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = br_localizarbase1Click
                end
                object SpeedButton3: TSpeedButton
                  Left = 240
                  Top = 2
                  Width = 23
                  Height = 20
                  Hint = 'Criar tabela para usu'#225'rios online'
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
                  OnClick = SpeedButton3Click
                end
              end
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
    object SpeedButton1: TSpeedButton
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton4: TSpeedButton
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
      OnClick = SpeedButton4Click
    end
    object YuSoftLabel5: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 149
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'WebServer - PHP encoder'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = YuSoftLabel5Click
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
    object lb_nomeentidade: TLabel
      Left = 233
      Top = 4
      Width = 6
      Height = 13
      Caption = '0'
      Transparent = True
    end
    object lb_codusr: TLabel
      Left = 222
      Top = 4
      Width = 6
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Transparent = True
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
  object SaveDialog_php: TSaveDialog
    DefaultExt = 'php'
    Filter = 'PHP (*.php)|*.php|Todos os arquivos (*.*)|*.*'
    Title = 'Salvar arquivo como'
    Left = 414
    Top = 276
  end
  object OpenDialog_php: TOpenDialog
    Filter = 'PHP (*.php)|*.php|Todos os arquivos (*.*)|*.*'
    Title = 'Abrir arquivo'
    Left = 374
    Top = 276
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
end
