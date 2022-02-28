object fconfig: Tfconfig
  Left = 396
  Top = 167
  BorderStyle = bsNone
  ClientHeight = 370
  ClientWidth = 380
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object pn_status: TPanel
    Left = 0
    Top = 353
    Width = 380
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 0
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 374
      Height = 11
      Align = alClient
      Stretch = True
    end
    object Label12: TLabel
      Left = 544
      Top = -1
      Width = 118
      Height = 12
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 380
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 378
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = Image3MouseDown
    end
    object SpeedButton1: TSpeedButton
      Left = 361
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
    object YuSoftLabel5: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 114
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'H W S Web Solution'
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
      Stretch = True
    end
  end
  object gbxCabecalho: TGroupBox
    Left = 0
    Top = 20
    Width = 380
    Height = 303
    Align = alClient
    Caption = 'Configura'#231#245'es do WebServer'
    Color = 16119285
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 2
      Top = 14
      Width = 376
      Height = 287
      ActivePage = TabSheet1
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Prefer'#234'ncias'
        object Label51: TLabel
          Left = 197
          Top = 140
          Width = 121
          Height = 12
          Caption = 'segundos de inatividade'
        end
        object CheckBox1: TCheckBox
          Left = 8
          Top = 17
          Width = 145
          Height = 17
          Caption = 'Iniciar com o Windows'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 8
          Top = 47
          Width = 201
          Height = 17
          Caption = 'Conectar automaticamento no login'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 8
          Top = 77
          Width = 161
          Height = 17
          Caption = 'Atualiza'#231#245'es autom'#225'ticas'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 8
          Top = 107
          Width = 177
          Height = 17
          Caption = 'Bloquear sistema ao minimizar'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object CheckBox7: TCheckBox
          Left = 8
          Top = 137
          Width = 97
          Height = 17
          Caption = 'Bloquear ap'#243's'
          TabOrder = 4
        end
        object Edit47: TEdit
          Left = 108
          Top = 136
          Width = 65
          Height = 20
          TabOrder = 5
          Text = '0'
          OnChange = Edit47Change
        end
        object UpDown1: TUpDown
          Left = 173
          Top = 136
          Width = 17
          Height = 20
          Associate = Edit47
          Max = 1000
          Increment = 60
          TabOrder = 6
          Thousands = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Seguran'#231'a'
        ImageIndex = 1
        object Label5: TLabel
          Left = 10
          Top = 175
          Width = 43
          Height = 12
          Caption = 'Usu'#225'rio:'
        end
        object Label6: TLabel
          Left = 10
          Top = 216
          Width = 35
          Height = 12
          Caption = 'Senha:'
        end
        object CheckBox6: TCheckBox
          Left = 8
          Top = 8
          Width = 193
          Height = 17
          Caption = 'Utilizar criptografia de mensagens'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CheckBox8: TCheckBox
          Left = 8
          Top = 44
          Width = 128
          Height = 17
          Caption = 'Utlizar Chave p'#250'blica'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object CheckBox9: TCheckBox
          Left = 8
          Top = 156
          Width = 145
          Height = 17
          Caption = 'Utlizar Chave sim'#233'trica'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 9
          Top = 189
          Width = 344
          Height = 20
          MaxLength = 60
          PasswordChar = '*'
          TabOrder = 3
          Text = 'teste'
        end
        object Edit6: TEdit
          Left = 9
          Top = 230
          Width = 344
          Height = 20
          MaxLength = 60
          PasswordChar = '*'
          TabOrder = 4
          Text = 'teste'
        end
        object RichEdit1: TRichEdit
          Left = 8
          Top = 64
          Width = 345
          Height = 82
          ScrollBars = ssBoth
          TabOrder = 5
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Base de Dados'
        ImageIndex = 2
        object PageControl2: TPageControl
          Left = 0
          Top = 0
          Width = 368
          Height = 257
          ActivePage = TabSheet5
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
          object TabSheet5: TTabSheet
            Caption = 'Conex'#227'o'
            object PgCtrl_Conection: TPageControl
              Left = 0
              Top = 0
              Width = 360
              Height = 227
              ActivePage = TabSheet7
              Align = alClient
              Style = tsFlatButtons
              TabOrder = 0
              object TabSheet7: TTabSheet
                Caption = 'HWScontrol'
                object group_servera: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 352
                  Height = 197
                  Align = alClient
                  Caption = 'Conex'#227'o com servidor:'
                  Color = 16119285
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  object Label1: TLabel
                    Left = 16
                    Top = 47
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
                  object Label2: TLabel
                    Left = 10
                    Top = 71
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
                  object Label3: TLabel
                    Left = 19
                    Top = 95
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
                  object Label4: TLabel
                    Left = 27
                    Top = 119
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
                  object Label10: TLabel
                    Left = 16
                    Top = 20
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
                  object Label7: TLabel
                    Left = 25
                    Top = 143
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
                  object SpeedButton8: TSpeedButton
                    Left = 216
                    Top = 165
                    Width = 123
                    Height = 22
                    Hint = 'Testar conex'#227'o com servidor'
                    Caption = 'Testar conex'#227'o'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      36020000424D3602000000000000B60000002800000015000000100000000100
                      08000000000080010000120B0000120B00002000000000000000FFFFCC00EFEB
                      EF00DEDFDE00D6D7D60000FF6600CCCC9900B5B2B50033CC6600999999009999
                      6600848284003399330073757300666666005A5D5A0052555200080C0800FFFF
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000111106060302
                      01111111111111111111111111100500000011080B0704070101111111111111
                      1111111110000F000000080A070404040702111111080C0C0C0C0C10000F1100
                      00000E0E0404040404111111080C1010101010050F11110000000A0F07040404
                      070611080C1009090909090F111111000000060E0B0704070B06110C10090909
                      0909091011111100000011080E0E0D0A0A110810091000090909091011111100
                      00001111060A0D0811111009090910000909090F111111000000111111111111
                      11111005090909100009090F1111110000001111111111111111100509090909
                      10000F1111111100000011111111111111111005090909090910111111111100
                      0000111111111111110C0F09000005050F111111111111000000111111111111
                      1110000F100F0F0F1111111111111100000011111111111110000F1111111111
                      11111111111111000000111111111110000F1111111111111111111111111100
                      00001111111111050F1111111111111111111111111111000000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton8Click
                  end
                  object Edit1: TEdit
                    Left = 64
                    Top = 43
                    Width = 277
                    Height = 22
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object Edit2: TEdit
                    Left = 64
                    Top = 67
                    Width = 277
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
                  object Edit3: TEdit
                    Left = 64
                    Top = 91
                    Width = 277
                    Height = 22
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    PasswordChar = '#'
                    TabOrder = 3
                  end
                  object Edit4: TEdit
                    Left = 64
                    Top = 115
                    Width = 277
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
                  object ComboBox1: TComboBox
                    Left = 64
                    Top = 19
                    Width = 277
                    Height = 20
                    Style = csDropDownList
                    ItemHeight = 0
                    TabOrder = 0
                  end
                  object cb_A_save: TCheckBox
                    Left = 65
                    Top = 169
                    Width = 88
                    Height = 17
                    Caption = 'Salvar Senha'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                  end
                  object Edit9: TEdit
                    Left = 64
                    Top = 139
                    Width = 277
                    Height = 22
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 6
                  end
                end
              end
              object TabSheet8: TTabSheet
                Caption = 'HWSwebServer'
                ImageIndex = 1
                object group_serverb: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 352
                  Height = 197
                  Align = alClient
                  Caption = 'Conex'#227'o com servidor:'
                  Color = 16119285
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  object Label21: TLabel
                    Left = 27
                    Top = 119
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
                  object Label22: TLabel
                    Left = 19
                    Top = 95
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
                  object Label23: TLabel
                    Left = 10
                    Top = 71
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
                  object Label24: TLabel
                    Left = 16
                    Top = 47
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
                  object Label25: TLabel
                    Left = 16
                    Top = 20
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
                  object Label11: TLabel
                    Left = 25
                    Top = 143
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
                  object SpeedButton9: TSpeedButton
                    Left = 216
                    Top = 165
                    Width = 123
                    Height = 22
                    Hint = 'Testar conex'#227'o com servidor'
                    Caption = 'Testar conex'#227'o'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Glyph.Data = {
                      36020000424D3602000000000000B60000002800000015000000100000000100
                      08000000000080010000120B0000120B00002000000000000000FFFFCC00EFEB
                      EF00DEDFDE00D6D7D60000FF6600CCCC9900B5B2B50033CC6600999999009999
                      6600848284003399330073757300666666005A5D5A0052555200080C0800FFFF
                      FF00000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000111106060302
                      01111111111111111111111111100500000011080B0704070101111111111111
                      1111111110000F000000080A070404040702111111080C0C0C0C0C10000F1100
                      00000E0E0404040404111111080C1010101010050F11110000000A0F07040404
                      070611080C1009090909090F111111000000060E0B0704070B06110C10090909
                      0909091011111100000011080E0E0D0A0A110810091000090909091011111100
                      00001111060A0D0811111009090910000909090F111111000000111111111111
                      11111005090909100009090F1111110000001111111111111111100509090909
                      10000F1111111100000011111111111111111005090909090910111111111100
                      0000111111111111110C0F09000005050F111111111111000000111111111111
                      1110000F100F0F0F1111111111111100000011111111111110000F1111111111
                      11111111111111000000111111111110000F1111111111111111111111111100
                      00001111111111050F1111111111111111111111111111000000}
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton9Click
                  end
                  object Edit16: TEdit
                    Left = 64
                    Top = 43
                    Width = 277
                    Height = 22
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object Edit17: TEdit
                    Left = 64
                    Top = 67
                    Width = 277
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
                  object Edit18: TEdit
                    Left = 64
                    Top = 91
                    Width = 277
                    Height = 22
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    PasswordChar = '#'
                    TabOrder = 3
                  end
                  object Edit19: TEdit
                    Left = 64
                    Top = 115
                    Width = 277
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
                  object ComboBox3: TComboBox
                    Left = 64
                    Top = 19
                    Width = 277
                    Height = 20
                    Style = csDropDownList
                    ItemHeight = 0
                    TabOrder = 0
                  end
                  object cb_B_save: TCheckBox
                    Left = 65
                    Top = 169
                    Width = 88
                    Height = 17
                    Caption = 'Salvar Senha'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                  end
                  object Edit12: TEdit
                    Left = 64
                    Top = 139
                    Width = 277
                    Height = 22
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 6
                  end
                end
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Tabelas'
            ImageIndex = 1
            object PageControl3: TPageControl
              Left = 0
              Top = 0
              Width = 360
              Height = 227
              ActivePage = TabSheet10
              Align = alClient
              Style = tsFlatButtons
              TabOrder = 0
              object TabSheet9: TTabSheet
                Caption = 'HWSwebServer'
                object Label13: TLabel
                  Left = 21
                  Top = 25
                  Width = 45
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Usu'#225'rios'
                end
                object Label14: TLabel
                  Left = 42
                  Top = 50
                  Width = 24
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Logs'
                end
                object Label46: TLabel
                  Left = 26
                  Top = 95
                  Width = 40
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Tabelas'
                end
                object Label47: TLabel
                  Left = 24
                  Top = 70
                  Width = 42
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'M'#243'dulos'
                end
                object Label48: TLabel
                  Left = 33
                  Top = 163
                  Width = 33
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Menus'
                end
                object Label49: TLabel
                  Left = 10
                  Top = 116
                  Width = 56
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'N'#237'veis adm'
                end
                object Label50: TLabel
                  Left = 12
                  Top = 139
                  Width = 54
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'N'#237'veis ent.'
                end
                object Edit10: TEdit
                  Left = 69
                  Top = 23
                  Width = 277
                  Height = 20
                  TabOrder = 0
                end
                object Edit11: TEdit
                  Left = 69
                  Top = 46
                  Width = 277
                  Height = 20
                  TabOrder = 1
                end
                object Edit42: TEdit
                  Left = 69
                  Top = 91
                  Width = 277
                  Height = 20
                  TabOrder = 3
                end
                object Edit43: TEdit
                  Left = 69
                  Top = 68
                  Width = 277
                  Height = 20
                  TabOrder = 2
                end
                object Edit44: TEdit
                  Left = 69
                  Top = 114
                  Width = 277
                  Height = 20
                  TabOrder = 4
                end
                object Edit45: TEdit
                  Left = 69
                  Top = 159
                  Width = 277
                  Height = 20
                  TabOrder = 6
                end
                object Edit46: TEdit
                  Left = 69
                  Top = 136
                  Width = 277
                  Height = 20
                  TabOrder = 5
                end
              end
              object TabSheet10: TTabSheet
                Caption = 'HWScontrol'
                ImageIndex = 1
                object Label15: TLabel
                  Left = 8
                  Top = 106
                  Width = 58
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Tabs Count'
                end
                object Label20: TLabel
                  Left = 25
                  Top = 82
                  Width = 41
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Campos'
                end
                object Label19: TLabel
                  Left = 26
                  Top = 57
                  Width = 40
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Tabelas'
                end
                object Label18: TLabel
                  Left = 42
                  Top = 36
                  Width = 24
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Logs'
                end
                object Label17: TLabel
                  Left = 21
                  Top = 11
                  Width = 45
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Usu'#225'rios'
                end
                object Label73: TLabel
                  Left = 20
                  Top = 129
                  Width = 46
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Contador'
                end
                object Label74: TLabel
                  Left = 28
                  Top = 153
                  Width = 38
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'On-line'
                end
                object Label75: TLabel
                  Left = 27
                  Top = 176
                  Width = 39
                  Height = 12
                  Alignment = taRightJustify
                  Caption = 'Moedas'
                end
                object Editcontador: TEdit
                  Left = 69
                  Top = 102
                  Width = 277
                  Height = 20
                  TabOrder = 4
                end
                object Edit30: TEdit
                  Left = 69
                  Top = 78
                  Width = 277
                  Height = 20
                  TabOrder = 3
                end
                object Edit29: TEdit
                  Left = 69
                  Top = 55
                  Width = 277
                  Height = 20
                  TabOrder = 2
                end
                object Edit28: TEdit
                  Left = 69
                  Top = 32
                  Width = 277
                  Height = 20
                  TabOrder = 1
                end
                object Edit14: TEdit
                  Left = 69
                  Top = 9
                  Width = 277
                  Height = 20
                  TabOrder = 0
                end
                object Edit68: TEdit
                  Left = 69
                  Top = 125
                  Width = 277
                  Height = 20
                  TabOrder = 5
                end
                object Edit69: TEdit
                  Left = 69
                  Top = 149
                  Width = 277
                  Height = 20
                  TabOrder = 6
                end
                object Edit70: TEdit
                  Left = 69
                  Top = 172
                  Width = 277
                  Height = 20
                  TabOrder = 7
                end
              end
              object TabSheet12: TTabSheet
                Caption = 'M'#243'dulos'
                ImageIndex = 3
                object ScrollBox1: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 352
                  Height = 197
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  TabOrder = 0
                  object Label32: TLabel
                    Left = 35
                    Top = 9
                    Width = 42
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'M'#243'dulos'
                  end
                  object Label33: TLabel
                    Left = 37
                    Top = 34
                    Width = 40
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Tabelas'
                  end
                  object Label34: TLabel
                    Left = 27
                    Top = 55
                    Width = 50
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Entidades'
                  end
                  object Label35: TLabel
                    Left = 31
                    Top = 80
                    Width = 46
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Websites'
                  end
                  object Label36: TLabel
                    Left = 35
                    Top = 104
                    Width = 42
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Atua'#231#227'o'
                  end
                  object Label37: TLabel
                    Left = 36
                    Top = 127
                    Width = 41
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Cidades'
                  end
                  object Label38: TLabel
                    Left = 36
                    Top = 150
                    Width = 41
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Estados'
                  end
                  object Label39: TLabel
                    Left = 24
                    Top = 219
                    Width = 51
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'N'#237'veis usr'
                  end
                  object Label40: TLabel
                    Left = 19
                    Top = 196
                    Width = 56
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'N'#237'veis Web'
                  end
                  object Label41: TLabel
                    Left = 45
                    Top = 174
                    Width = 30
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Logos'
                  end
                  object Label42: TLabel
                    Left = 36
                    Top = 287
                    Width = 42
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Fun'#231#245'es'
                  end
                  object Label43: TLabel
                    Left = 39
                    Top = 265
                    Width = 39
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Setores'
                  end
                  object Label44: TLabel
                    Left = 5
                    Top = 243
                    Width = 73
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Colaboradores'
                  end
                  object Label45: TLabel
                    Left = 2
                    Top = 309
                    Width = 76
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Menus sistema'
                  end
                  object Label55: TLabel
                    Left = 49
                    Top = 333
                    Width = 28
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins'
                  end
                  object Label56: TLabel
                    Left = 2
                    Top = 358
                    Width = 75
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins '#225'reas at.'
                  end
                  object Label57: TLabel
                    Left = 9
                    Top = 404
                    Width = 68
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins custom'
                  end
                  object Label58: TLabel
                    Left = 13
                    Top = 381
                    Width = 64
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins menus'
                  end
                  object Label59: TLabel
                    Left = 5
                    Top = 430
                    Width = 73
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins m'#243'dulos'
                  end
                  object Label60: TLabel
                    Left = 8
                    Top = 454
                    Width = 70
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins m'#243'd. ax'
                  end
                  object Label61: TLabel
                    Left = 24
                    Top = 478
                    Width = 55
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Skins sons'
                  end
                  object Label62: TLabel
                    Left = 18
                    Top = 501
                    Width = 60
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Languagens'
                  end
                  object Label63: TLabel
                    Left = 4
                    Top = 525
                    Width = 74
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Lang. websites'
                  end
                  object Label64: TLabel
                    Left = 16
                    Top = 550
                    Width = 63
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Lang. menus'
                  end
                  object Edit25: TEdit
                    Left = 80
                    Top = 7
                    Width = 252
                    Height = 20
                    TabOrder = 0
                  end
                  object Edit26: TEdit
                    Left = 80
                    Top = 30
                    Width = 252
                    Height = 20
                    TabOrder = 1
                  end
                  object Edit27: TEdit
                    Left = 80
                    Top = 53
                    Width = 252
                    Height = 20
                    TabOrder = 2
                  end
                  object Edit31: TEdit
                    Left = 80
                    Top = 76
                    Width = 252
                    Height = 20
                    TabOrder = 3
                  end
                  object Edit32: TEdit
                    Left = 80
                    Top = 100
                    Width = 252
                    Height = 20
                    TabOrder = 4
                  end
                  object Edit33: TEdit
                    Left = 80
                    Top = 124
                    Width = 252
                    Height = 20
                    TabOrder = 5
                  end
                  object Edit34: TEdit
                    Left = 80
                    Top = 147
                    Width = 252
                    Height = 20
                    TabOrder = 6
                  end
                  object Edit35: TEdit
                    Left = 80
                    Top = 216
                    Width = 252
                    Height = 20
                    TabOrder = 9
                  end
                  object Edit36: TEdit
                    Left = 80
                    Top = 193
                    Width = 252
                    Height = 20
                    TabOrder = 8
                  end
                  object Edit37: TEdit
                    Left = 80
                    Top = 170
                    Width = 252
                    Height = 20
                    TabOrder = 7
                  end
                  object Edit38: TEdit
                    Left = 80
                    Top = 284
                    Width = 252
                    Height = 20
                    TabOrder = 12
                  end
                  object Edit39: TEdit
                    Left = 80
                    Top = 262
                    Width = 252
                    Height = 20
                    TabOrder = 11
                  end
                  object Edit40: TEdit
                    Left = 80
                    Top = 239
                    Width = 252
                    Height = 20
                    TabOrder = 10
                  end
                  object Edit41: TEdit
                    Left = 80
                    Top = 306
                    Width = 252
                    Height = 20
                    TabOrder = 13
                  end
                  object Edit50: TEdit
                    Left = 80
                    Top = 329
                    Width = 252
                    Height = 20
                    TabOrder = 14
                  end
                  object Edit51: TEdit
                    Left = 80
                    Top = 353
                    Width = 252
                    Height = 20
                    TabOrder = 15
                  end
                  object Edit53: TEdit
                    Left = 80
                    Top = 401
                    Width = 252
                    Height = 20
                    TabOrder = 16
                  end
                  object Edit52: TEdit
                    Left = 80
                    Top = 377
                    Width = 252
                    Height = 20
                    TabOrder = 17
                  end
                  object Edit54: TEdit
                    Left = 80
                    Top = 425
                    Width = 252
                    Height = 20
                    TabOrder = 18
                  end
                  object Edit55: TEdit
                    Left = 80
                    Top = 449
                    Width = 252
                    Height = 20
                    TabOrder = 19
                  end
                  object Edit56: TEdit
                    Left = 81
                    Top = 473
                    Width = 252
                    Height = 20
                    TabOrder = 20
                  end
                  object Edit57: TEdit
                    Left = 81
                    Top = 497
                    Width = 252
                    Height = 20
                    TabOrder = 21
                  end
                  object Edit58: TEdit
                    Left = 81
                    Top = 521
                    Width = 252
                    Height = 20
                    TabOrder = 22
                  end
                  object Edit59: TEdit
                    Left = 81
                    Top = 545
                    Width = 252
                    Height = 20
                    TabOrder = 23
                  end
                end
              end
              object TabSheet11: TTabSheet
                Caption = 'Suporte T'#233'cnico'
                ImageIndex = 2
                object ScrollBox2: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 352
                  Height = 197
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  TabOrder = 0
                  object Label16: TLabel
                    Left = 31
                    Top = 9
                    Width = 45
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Usu'#225'rios'
                  end
                  object Label26: TLabel
                    Left = 37
                    Top = 34
                    Width = 39
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Setores'
                  end
                  object Label27: TLabel
                    Left = 22
                    Top = 55
                    Width = 54
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Atividades'
                  end
                  object Label28: TLabel
                    Left = 19
                    Top = 80
                    Width = 57
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Aplicativos'
                  end
                  object Label29: TLabel
                    Left = 14
                    Top = 104
                    Width = 62
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Solicita'#231#245'es'
                  end
                  object Label30: TLabel
                    Left = 24
                    Top = 128
                    Width = 53
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Processos'
                  end
                  object Label31: TLabel
                    Left = 32
                    Top = 152
                    Width = 45
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Arquivos'
                  end
                  object Label53: TLabel
                    Left = 21
                    Top = 176
                    Width = 57
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Mensagens'
                  end
                  object Label54: TLabel
                    Left = 41
                    Top = 200
                    Width = 36
                    Height = 12
                    Alignment = taRightJustify
                    Caption = 'Stream'
                  end
                  object Edit48: TEdit
                    Left = 80
                    Top = 172
                    Width = 252
                    Height = 20
                    TabOrder = 7
                  end
                  object Edit24: TEdit
                    Left = 80
                    Top = 148
                    Width = 252
                    Height = 20
                    TabOrder = 6
                  end
                  object Edit23: TEdit
                    Left = 80
                    Top = 124
                    Width = 252
                    Height = 20
                    TabOrder = 5
                  end
                  object Edit22: TEdit
                    Left = 80
                    Top = 100
                    Width = 252
                    Height = 20
                    TabOrder = 4
                  end
                  object Edit21: TEdit
                    Left = 80
                    Top = 76
                    Width = 252
                    Height = 20
                    TabOrder = 3
                  end
                  object Edit20: TEdit
                    Left = 80
                    Top = 53
                    Width = 252
                    Height = 20
                    TabOrder = 2
                  end
                  object Edit15: TEdit
                    Left = 80
                    Top = 30
                    Width = 252
                    Height = 20
                    TabOrder = 1
                  end
                  object Edit13: TEdit
                    Left = 80
                    Top = 7
                    Width = 252
                    Height = 20
                    TabOrder = 0
                  end
                  object Edit49: TEdit
                    Left = 80
                    Top = 196
                    Width = 252
                    Height = 20
                    TabOrder = 8
                  end
                end
              end
              object TabSheet13: TTabSheet
                Caption = 'Help'
                ImageIndex = 4
                object PageControl4: TPageControl
                  Left = 0
                  Top = 0
                  Width = 352
                  Height = 197
                  ActivePage = TabSheet14
                  Align = alClient
                  Style = tsFlatButtons
                  TabOrder = 0
                  object TabSheet14: TTabSheet
                    Caption = 'Client'
                    object ScrollBox3: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 344
                      Height = 167
                      Align = alClient
                      BevelInner = bvNone
                      BevelOuter = bvNone
                      BorderStyle = bsNone
                      TabOrder = 0
                      object Label65: TLabel
                        Left = 41
                        Top = 9
                        Width = 27
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Menu'
                      end
                      object Label66: TLabel
                        Left = 41
                        Top = 34
                        Width = 27
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Itens'
                      end
                      object Label67: TLabel
                        Left = 24
                        Top = 55
                        Width = 44
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Imagens'
                      end
                      object Label68: TLabel
                        Left = 11
                        Top = 80
                        Width = 57
                        Height = 12
                        Alignment = taRightJustify
                        Caption = 'Img bin'#225'rio'
                      end
                      object Edit64: TEdit
                        Left = 72
                        Top = 76
                        Width = 252
                        Height = 20
                        TabOrder = 3
                      end
                      object Edit65: TEdit
                        Left = 72
                        Top = 53
                        Width = 252
                        Height = 20
                        TabOrder = 2
                      end
                      object Edit66: TEdit
                        Left = 72
                        Top = 30
                        Width = 252
                        Height = 20
                        TabOrder = 1
                      end
                      object Edit67: TEdit
                        Left = 72
                        Top = 7
                        Width = 252
                        Height = 20
                        TabOrder = 0
                      end
                    end
                  end
                  object TabSheet15: TTabSheet
                    Caption = 'Server'
                    ImageIndex = 1
                    object Label69: TLabel
                      Left = 41
                      Top = 9
                      Width = 27
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Menu'
                    end
                    object Label70: TLabel
                      Left = 41
                      Top = 34
                      Width = 27
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Itens'
                    end
                    object Label71: TLabel
                      Left = 24
                      Top = 55
                      Width = 44
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Imagens'
                    end
                    object Label72: TLabel
                      Left = 11
                      Top = 80
                      Width = 57
                      Height = 12
                      Alignment = taRightJustify
                      Caption = 'Img bin'#225'rio'
                    end
                    object Edit60: TEdit
                      Left = 72
                      Top = 7
                      Width = 252
                      Height = 20
                      TabOrder = 0
                    end
                    object Edit61: TEdit
                      Left = 72
                      Top = 30
                      Width = 252
                      Height = 20
                      TabOrder = 1
                    end
                    object Edit62: TEdit
                      Left = 72
                      Top = 53
                      Width = 252
                      Height = 20
                      TabOrder = 2
                    end
                    object Edit63: TEdit
                      Left = 72
                      Top = 76
                      Width = 252
                      Height = 20
                      TabOrder = 3
                    end
                  end
                end
              end
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Configura'#231#245'es'
        ImageIndex = 3
        object Label8: TLabel
          Left = 26
          Top = 62
          Width = 43
          Height = 12
          Caption = 'Usu'#225'rio:'
        end
        object Label9: TLabel
          Left = 26
          Top = 119
          Width = 35
          Height = 12
          Caption = 'Senha:'
        end
        object Label52: TLabel
          Left = 32
          Top = 224
          Width = 297
          Height = 33
          AutoSize = False
          Caption = 
            'Aviso: O dados para autentica'#231#227'o preenchidos acima s'#227'o somente v' +
            #225'lidos para acesso as configura'#231#245'es do sistema.'
          Transparent = True
          WordWrap = True
        end
        object CheckBox5: TCheckBox
          Left = 24
          Top = 16
          Width = 289
          Height = 17
          Caption = 'Utilizar login do m'#243'dulo de configura'#231#245'es.'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object Edit7: TEdit
          Left = 25
          Top = 76
          Width = 304
          Height = 20
          PasswordChar = '*'
          TabOrder = 1
          Text = 'teste'
        end
        object Edit8: TEdit
          Left = 25
          Top = 133
          Width = 304
          Height = 20
          PasswordChar = '*'
          TabOrder = 2
          Text = 'teste'
        end
      end
      object TabSheet16: TTabSheet
        Caption = 'Exportar'
        ImageIndex = 4
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 368
          Height = 45
          Align = alTop
          Caption = 'Tipo de exporta'#231#227'o:'
          TabOrder = 0
          object RadioButton1: TRadioButton
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = 'HWScontrol'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton2: TRadioButton
            Left = 120
            Top = 16
            Width = 113
            Height = 17
            Caption = 'HWSwebServer'
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 45
          Width = 368
          Height = 45
          Align = alTop
          Caption = 'Conex'#227'o:'
          TabOrder = 1
          object RadioButton3: TRadioButton
            Left = 8
            Top = 16
            Width = 73
            Height = 17
            Caption = 'Internet'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 120
            Top = 16
            Width = 73
            Height = 17
            Caption = 'Intranet'
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 90
          Width = 368
          Height = 80
          Align = alTop
          Caption = 'Proxy:'
          TabOrder = 2
          object Label76: TLabel
            Left = 16
            Top = 50
            Width = 52
            Height = 12
            Alignment = taRightJustify
            Caption = 'Password:'
          end
          object Label77: TLabel
            Left = 25
            Top = 26
            Width = 43
            Height = 12
            Alignment = taRightJustify
            Caption = 'Usu'#225'rio:'
          end
          object Edit71: TEdit
            Left = 72
            Top = 24
            Width = 281
            Height = 20
            PasswordChar = '#'
            TabOrder = 0
            Text = 'admin'
          end
          object Edit72: TEdit
            Left = 72
            Top = 48
            Width = 281
            Height = 20
            PasswordChar = '#'
            TabOrder = 1
            Text = 'admin'
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 170
          Width = 368
          Height = 87
          Align = alClient
          Caption = 'Localiza'#231#227'o:'
          TabOrder = 3
          object Label79: TLabel
            Left = 13
            Top = 63
            Width = 31
            Height = 12
            Caption = 'Porta:'
          end
          object Label80: TLabel
            Left = 28
            Top = 39
            Width = 16
            Height = 12
            Alignment = taRightJustify
            Caption = 'IP:'
          end
          object Label81: TLabel
            Left = 173
            Top = 39
            Width = 140
            Height = 12
            Caption = 'v'#225'lido somente para IP fixo.'
          end
          object RadioButton7: TRadioButton
            Left = 8
            Top = 16
            Width = 89
            Height = 17
            Caption = 'IP din'#226'mico'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RadioButton8: TRadioButton
            Left = 120
            Top = 16
            Width = 65
            Height = 17
            Caption = 'IP fixo'
            TabOrder = 1
          end
          object Edit73: TEdit
            Left = 48
            Top = 37
            Width = 121
            Height = 20
            TabOrder = 2
            Text = '0.0.0.0'
          end
          object Edit74: TEdit
            Left = 48
            Top = 61
            Width = 57
            Height = 20
            TabOrder = 3
            Text = '80'
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 323
    Width = 380
    Height = 30
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16119285
    TabOrder = 3
    object ToolBar1: TToolBar
      Left = 110
      Top = 2
      Width = 174
      Height = 26
      Align = alRight
      AutoSize = True
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 0
      object bt_default: TSpeedButton
        Left = 0
        Top = 2
        Width = 80
        Height = 22
        Hint = 'Configura'#231#245'es default'
        Caption = 'Default'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000C30E0000C30E00000000000000000000CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CCCECFC9C8C5C9C5C3C8C5C2CED2D4CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6855C42875D42875D4298745799725497
          6E4F936B4E926B4D906A4D503B27CBCDCDCED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6A1704ED2BBA6D2BBA6CAB096C7AF93C7AF94C7AF
          94C7B293C7AF946E4F3BC6C0BCCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D69E6E4BD8B7A5D2BBA6D2BBA6E4CDC4C7AF94C7AE94C7AE93
          7E5B44CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6C08F8E906244F2D3D1E4CDC4D2BBA6D2BBA6C7B392C7AB939A6947CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6946545F8DADCFFE3E7E4CDC4D2BBA6E4CDC4C7AD94A27757CED3D6CED3
          D6CED3D6CED3D6CED3D679553F93675ACED3D6CED3D6CED3D6CED3D6CED3D68C
          6043EBBDBBEAD1C7EEE3D9E4CDC4D2BBA6D2BBA6C7AD947D5941C9C8C7CED3D6
          CED3D68D6143E3C8C5845C41C9C6C4CED3D6CED3D6CED3D6CED3D6C6969C8B60
          43E0C6B5E4DBCAFAF1EEE4CDC4E4CDC4E4CDC4C7B191A7896A895F43895F43C3
          978FEFE2E6885D42C8C4C1CED3D6CED3D6CED3D6CED3D6CED3D68A5F43E8CAC0
          D8C1AAFFE3E7E4CDC4E4CDC4E4CDC4E4CDC4C9B295C9B098CCB5A1EFD6DDFBF0
          EF91665DCDD1D3CED3D6CED3D6CED3D6CED3D6CED3D6845C41D9A99FD9C3ADF5
          DBD78C6043EECECBFFF6FEF6F0F3F6DEE4EEDEDBF6EEEDFFF7FF8D6143AF7D69
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6C595998D6143E5C5BA916648CED3
          D68C6043F4C7C9FBDEE1FBDEE1FBDEE1ECCAC5845B41A77356CDD1D3CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6895E42906344B9A596CED3D6CED3D6
          8F665F8F62448F62448C6043946759B2806FCED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_defaultClick
      end
      object bt_gravar: TSpeedButton
        Left = 80
        Top = 2
        Width = 94
        Height = 22
        Hint = 'Gravar configura'#231#245'es'
        Caption = 'Gravar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
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
        OnClick = bt_gravarClick
      end
    end
    object ToolBar2: TToolBar
      Left = 14
      Top = 2
      Width = 96
      Height = 26
      Align = alRight
      AutoSize = True
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 1
      Visible = False
      object bt_exportar: TSpeedButton
        Left = 0
        Top = 2
        Width = 96
        Height = 22
        Hint = 'Exportar configura'#231#245'es'
        Caption = 'Exportar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000013000000140000000100
          180000000000B0040000C30E0000C30E00000000000000000000CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CBD0D2C7CBCEC7CBCEC8CCCFC9CDD0C9CED1C9CED1CA
          CFD2CDD2D5CACFD2CED3D6000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6BABABAA8989AA8989AA8989AA7989AA7989AA7989AA6999AA599
          9A9C999AC9CED1000000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D68E62434938343930313C3131393031393031393031393031393031A2989A
          C6CACD000000CED3D6CED3D6CED3D6CCD1D4CED3D6CED3D6CED3D6CED3D69C69
          47C7B092C7B193996C4CF7F2EE9D6C4ACBB2A7D6BEBB393031A5989AC3C7CA00
          0000CED3D6CED3D6C6CBCDA1999AA0999AA1999AA1989AA1989A9C9596A2999A
          A2999A9C95969F9594A57F5DC7B194CDAEA6393031A4989AC4C8CB000000CED3
          D6CED3D69867463C32323932333C34343C3434423A38443B3A4038383E36363C
          3434C7AB95C7AE94C7AD94C7AE95393031A3989AC6CACD000000CED3D6CDD0D1
          9C6947C7A798C7AC99C7AD9AC7AF97C7AF95C7AD95C7AE94C7B293393031C1A7
          8E986947A27E60C7A695393031A0999ACACED1000000CED3D6CDD0D29C6A47CE
          ABABCCB3A7CEB5A0CBB3A2C8B494C9B299C7B196C7B2933F3635CCB19AE4D4C8
          A67E5CC4A68E393031A0999ACACFD2000000CED3D6CDD1D39E6B47DEC3C6DBC4
          BED3BFAECFBAA3CEB99FCAB597C9B396C8B3944B413DB79A8AA37957A88664C7
          AF943930319F999ACCD1D4000000CED3D6CED3D69C6A47E5D0D1E7DBDEE7DBDE
          E7DBDEDCC8BDCDBB9FCBB79CC8B494463C3AAA9C9DCDBAB0C9B396C6AD954536
          33A1999ACACED1000000CED3D6CED3D69D6A47EDDCDAEFE3E7EFE3E7EFE3E7EF
          DFDEE0D1CBCBB99CC8B594413736A191919E775DA06C489E6B47996746CDD0D2
          CED3D6000000CED3D6CBCDCD986846EFE7E7F7EFEFF7EFEFF7EFEFEFE7E7EFE3
          E7E0D3CEC9B695413837AA989ABFC2C3CED3D58B6043BEAFA4CED3D6CED3D600
          0000CED3D6CAC9C8946545F7EFF7F7F7F7F7F7F7F7F7F7F7EFF7EFE7E7EEDEDC
          CFBBA1483E3BA8928FC2C4C6CDD0D2986746956545CAC9C8CED3D6000000CED3
          D6CED3D69C6947F6F5F4FFFBFFFFFBFFFFFBFFF7F7F7EFEBEFEFE3E7DFD1CB47
          3A369F6B489666459566459E6A46A06B478E6144CED3D6000000CED3D6CED3D6
          916344EDE7E3FFFBFFFFFFFFFFFBFFF7F7F7F7EFEFEFE3E7E7DBDE4C3B359C99
          99CCCFD1CED3D69E6A479B6946CDD0D2CED3D6000000CED3D6CED3D6976646E5
          DAD2F5E8E3F3E7E5F3E5DFEEE9E4F2E5E2EDDFE1E7DBDE885E42A19898C6CBCD
          CED3D69E6B47C9C7C5CED3D6CED3D6000000CED3D6CED3D69F6B479D69479D69
          479C69479C69479D69479D69479D6A479D6A479D6A47CCCFD1CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6000000CED3D6CED3D6CED3D5CDD0D1CDD0D2CED3D6
          CED3D6CED3D6CED3D6CED2D3CCCFCECDD0D1CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = bt_exportarClick
      end
    end
    object ToolBar3: TToolBar
      Left = 284
      Top = 2
      Width = 94
      Height = 26
      Align = alRight
      AutoSize = True
      Caption = 'ToolBar1'
      EdgeBorders = []
      TabOrder = 2
      object SpeedButton4: TSpeedButton
        Left = 0
        Top = 2
        Width = 94
        Height = 22
        Hint = 'Fechar janela'
        Caption = 'Fechar'
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 325
    Top = 60
  end
end
