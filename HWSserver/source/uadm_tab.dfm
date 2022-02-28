object adm_tab: Tadm_tab
  Left = 163
  Top = 160
  BorderStyle = bsNone
  ClientHeight = 393
  ClientWidth = 735
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
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 735
    Height = 356
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 5
      Top = 3
      Width = 723
      Height = 154
      Caption = 'Selecione o usu'#225'rio:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object count_grade: TLabel
        Left = 642
        Top = 1
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
      object Label5: TLabel
        Left = 648
        Top = 1
        Width = 61
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
      object ed_colaborador: TRichEdit
        Left = 468
        Top = 16
        Width = 253
        Height = 136
        TabStop = False
        Align = alRight
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Panel8: TPanel
        Left = 2
        Top = 16
        Width = 466
        Height = 136
        Align = alClient
        BevelOuter = bvNone
        Color = 16119285
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 466
          Height = 115
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
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnKeyDown = DBGrid1KeyDown
          OnKeyUp = DBGrid1KeyUp
        end
        object Panel2: TPanel
          Left = 0
          Top = 115
          Width = 466
          Height = 21
          Align = alBottom
          Color = 16119285
          TabOrder = 1
          object RadioButton4: TRadioButton
            Left = 132
            Top = 2
            Width = 81
            Height = 17
            Caption = 'Bloqueados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = RadioButton4Click
          end
          object RadioButton5: TRadioButton
            Left = 68
            Top = 2
            Width = 57
            Height = 17
            Caption = 'Ativos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = RadioButton5Click
          end
          object RadioButton6: TRadioButton
            Left = 4
            Top = 2
            Width = 57
            Height = 17
            Caption = 'Todos'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TabStop = True
            OnClick = RadioButton6Click
          end
          object RadioButton7: TRadioButton
            Left = 217
            Top = 2
            Width = 81
            Height = 17
            Caption = 'Cancelados'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = RadioButton7Click
          end
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 160
      Width = 217
      Height = 187
      Caption = 'Tabelas:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Panel6: TPanel
        Left = 2
        Top = 16
        Width = 213
        Height = 169
        Align = alClient
        BevelOuter = bvNone
        Color = 14540253
        TabOrder = 0
        object db_tabelas: TListBox
          Left = 0
          Top = 55
          Width = 213
          Height = 114
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 0
          OnClick = db_tabelasClick
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 213
          Height = 55
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 1
          object Label2: TLabel
            Left = 3
            Top = 40
            Width = 63
            Height = 12
            Caption = 'Permiss'#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object YuSoftLabel2: TYuSoftLabel
            Left = 177
            Top = 40
            Width = 32
            Height = 12
            Hint = 'Incluir tabela para o usu'#225'rio'
            Caption = '&Incluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = YuSoftLabel2Click
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
            Transparent = False
          end
          object Label1: TLabel
            Left = 3
            Top = 19
            Width = 55
            Height = 12
            Caption = 'Descri'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object tab_name: TLabel
            Left = 4
            Top = 2
            Width = 177
            Height = 14
            Caption = 'Selecione uma tabela na lista abaixo.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object YuSoftLabel4: TYuSoftLabel
            Left = 136
            Top = 40
            Width = 34
            Height = 12
            Hint = 'Limpar dados'
            Caption = '&Limpar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = YuSoftLabel4Click
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
            Transparent = False
          end
          object CheckBox1: TCheckBox
            Left = 69
            Top = 38
            Width = 14
            Height = 17
            Hint = 'List'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 1
          end
          object CheckBox2: TCheckBox
            Left = 84
            Top = 38
            Width = 14
            Height = 17
            Hint = 'Insert'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 2
          end
          object CheckBox4: TCheckBox
            Left = 114
            Top = 38
            Width = 14
            Height = 17
            Hint = 'Delete'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 4
          end
          object CheckBox3: TCheckBox
            Left = 99
            Top = 38
            Width = 14
            Height = 17
            Hint = 'Update'
            Checked = True
            ParentShowHint = False
            ShowHint = True
            State = cbChecked
            TabOrder = 3
          end
          object Edit1: TEdit
            Left = 64
            Top = 16
            Width = 145
            Height = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            MaxLength = 255
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 224
      Top = 160
      Width = 506
      Height = 188
      Caption = 'Lista de tabelas selecionadas para o usu'#225'rio:'
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object YuSoftLabel1: TYuSoftLabel
        Left = 277
        Top = 2
        Width = 36
        Height = 12
        Hint = 'Alterar dados da tabela selecionada'
        Caption = 'A&lterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel1Click
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
        Transparent = False
      end
      object YuSoftLabel3: TYuSoftLabel
        Left = 364
        Top = 2
        Width = 33
        Height = 12
        Hint = 'Excluir tabela selecionada'
        Caption = 'E&xcluir'
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
        Transparent = False
      end
      object lb_codusr: TLabel
        Left = 233
        Top = 1
        Width = 6
        Height = 14
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5848320
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object count_tab: TLabel
        Left = 434
        Top = 1
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
      object Label8: TLabel
        Left = 440
        Top = 1
        Width = 61
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
      object YuSoftLabel6: TYuSoftLabel
        Left = 320
        Top = 2
        Width = 38
        Height = 12
        Hint = 'Lista de campos e cabe'#231'alhos'
        Caption = 'Cam&pos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel6Click
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
        Transparent = False
      end
      object DBGrid2: TDBGrid
        Left = 2
        Top = 16
        Width = 502
        Height = 170
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
      object GroupBox4: TGroupBox
        Left = 0
        Top = 1
        Width = 505
        Height = 186
        Caption = 'Lista de campos para a tabela'
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object YuSoftLabel7: TYuSoftLabel
          Left = 317
          Top = 2
          Width = 36
          Height = 12
          Hint = 'Alterar dados da tabela selecionada'
          Caption = 'A&lterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = YuSoftLabel7Click
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
          Transparent = False
        end
        object YuSoftLabel8: TYuSoftLabel
          Left = 365
          Top = 2
          Width = 33
          Height = 12
          Hint = 'Excluir tabela selecionada'
          Caption = 'Fecha&r'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = YuSoftLabel8Click
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
          Transparent = False
        end
        object lb_tab: TLabel
          Left = 158
          Top = 1
          Width = 6
          Height = 14
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5848320
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object count_campos: TLabel
          Left = 434
          Top = 1
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
        object Label10: TLabel
          Left = 440
          Top = 1
          Width = 61
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
        object DBGrid3: TDBGrid
          Left = 2
          Top = 16
          Width = 501
          Height = 168
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
      end
    end
    object pn_campos: TPanel
      Left = 224
      Top = 164
      Width = 504
      Height = 182
      BevelInner = bvLowered
      Color = 16119285
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      object YuSoftLabel9: TYuSoftLabel
        Left = 453
        Top = 166
        Width = 45
        Height = 12
        Hint = 'Alterar dados da tabela'
        Caption = '&Confirma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel9Click
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
        Transparent = False
      end
      object SpeedButton3: TSpeedButton
        Left = 481
        Top = 2
        Width = 20
        Height = 16
        Hint = 'Cancelar cadastro'
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
        OnClick = SpeedButton3Click
      end
      object Label12: TLabel
        Left = 6
        Top = 4
        Width = 183
        Height = 14
        Caption = 'Personalize o cabe'#231'alho dos campos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 166
        Width = 184
        Height = 14
        Caption = 'Pressione F5 para alterar Tipo e Form.'
      end
      object Panel3: TPanel
        Left = 0
        Top = 19
        Width = 502
        Height = 146
        BevelOuter = bvNone
        Color = 14540253
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 297
          Top = 0
          Width = 205
          Height = 146
          Align = alClient
          Caption = 'Digite os cabe'#231'alhos:'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object cp_sg4: TStringGrid
            Left = 2
            Top = 16
            Width = 201
            Height = 128
            Align = alClient
            ColCount = 1
            Ctl3D = False
            DefaultColWidth = 240
            DefaultRowHeight = 14
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
            OnClick = cp_sg4Click
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 0
          Width = 153
          Height = 146
          Align = alLeft
          Caption = 'Lista de campos:'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object db_campos: TListBox
            Left = 2
            Top = 16
            Width = 149
            Height = 128
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 14
            ParentFont = False
            TabOrder = 0
            OnClick = db_camposClick
          end
        end
        object pn_campos2: TGroupBox
          Left = 153
          Top = 0
          Width = 144
          Height = 146
          Align = alLeft
          Caption = ' Tipo     |    Size    |    Form'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object cp_sg1: TStringGrid
            Left = 2
            Top = 16
            Width = 46
            Height = 128
            Hint = 'F5 tipos de campos'
            Align = alClient
            ColCount = 1
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 14
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
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 0
            OnClick = cp_sg1Click
            OnKeyDown = cp_sg1KeyDown
          end
          object cp_sg2: TStringGrid
            Left = 48
            Top = 16
            Width = 47
            Height = 128
            Hint = 'Tamanho do campo'
            Align = alRight
            ColCount = 1
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 14
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
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 1
            OnClick = cp_sg2Click
          end
          object cp_sg3: TStringGrid
            Left = 95
            Top = 16
            Width = 47
            Height = 128
            Hint = 'F5 tipos de componentes'
            Align = alRight
            ColCount = 1
            Ctl3D = False
            DefaultColWidth = 40
            DefaultRowHeight = 14
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
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 2
            OnClick = cp_sg3Click
            OnKeyDown = cp_sg3KeyDown
          end
        end
      end
      object pn_form: TPanel
        Left = 0
        Top = 0
        Width = 504
        Height = 183
        BevelInner = bvLowered
        Color = 16119285
        TabOrder = 2
        Visible = False
        object Label17: TLabel
          Left = 5
          Top = 6
          Width = 126
          Height = 12
          Caption = 'Selecione o componente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton7: TSpeedButton
          Left = 485
          Top = 2
          Width = 20
          Height = 17
          Hint = 'Cancelar altera'#231#227'o'
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
          OnClick = SpeedButton7Click
        end
        object Label19: TLabel
          Left = 315
          Top = 6
          Width = 83
          Height = 12
          Caption = 'Lista de op'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object tx_list_y: TListBox
          Left = 2
          Top = 20
          Width = 305
          Height = 146
          Align = alCustom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 0
          OnClick = tx_list_yClick
          OnKeyDown = tx_list_yKeyDown
          OnKeyUp = tx_list_yKeyUp
        end
        object tx_str_y: TMemo
          Left = 312
          Top = 20
          Width = 191
          Height = 145
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object Panel5: TPanel
          Left = 2
          Top = 165
          Width = 500
          Height = 16
          Align = alBottom
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object YuSoftLabel13: TYuSoftLabel
            Left = 451
            Top = 1
            Width = 45
            Height = 12
            Hint = 'Alterar dados da tabela selecionada'
            Caption = 'Confirma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = YuSoftLabel13Click
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
            Transparent = False
          end
        end
      end
      object pn_tipo: TPanel
        Left = 0
        Top = 1
        Width = 504
        Height = 182
        BevelInner = bvLowered
        Color = 16119285
        TabOrder = 1
        Visible = False
        object Label16: TLabel
          Left = 5
          Top = 5
          Width = 135
          Height = 12
          Caption = 'Selecione o tipo de campo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton6: TSpeedButton
          Left = 481
          Top = 2
          Width = 20
          Height = 16
          Hint = 'Cancelar cadastro'
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
          OnClick = SpeedButton6Click
        end
        object tx_list_t: TListBox
          Left = 2
          Top = 19
          Width = 500
          Height = 145
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 2
          Top = 164
          Width = 500
          Height = 16
          Align = alBottom
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object YuSoftLabel12: TYuSoftLabel
            Left = 449
            Top = 1
            Width = 45
            Height = 12
            Hint = 'Alterar dados da tabela selecionada'
            Caption = 'Confirma'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = YuSoftLabel12Click
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
            Transparent = False
          end
        end
      end
    end
    object pn_campo: TPanel
      Left = 224
      Top = 164
      Width = 505
      Height = 181
      BevelInner = bvLowered
      Color = 16119285
      TabOrder = 4
      Visible = False
      object lb_campo: TLabel
        Left = 67
        Top = 20
        Width = 32
        Height = 14
        Caption = 'campo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5848320
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object YuSoftLabel10: TYuSoftLabel
        Left = 449
        Top = 163
        Width = 45
        Height = 12
        Hint = 'Alterar dados da tabela'
        Caption = '&Confirma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel10Click
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
        Transparent = False
      end
      object Label13: TLabel
        Left = 6
        Top = 4
        Width = 168
        Height = 14
        Caption = 'Digite o novo cabe'#231'alho do campo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton4: TSpeedButton
        Left = 480
        Top = 2
        Width = 20
        Height = 17
        Hint = 'Cancelar altera'#231#227'o'
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
      object Label3: TLabel
        Left = 7
        Top = 37
        Width = 54
        Height = 14
        Caption = 'Cabe'#231'alho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 7
        Top = 20
        Width = 36
        Height = 14
        Caption = 'Campo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 9
        Top = 60
        Width = 23
        Height = 14
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 9
        Top = 104
        Width = 47
        Height = 14
        Caption = 'Tamanho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 9
        Top = 82
        Width = 27
        Height = 14
        Caption = 'Form:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 283
        Top = 7
        Width = 37
        Height = 14
        Caption = 'Strings:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object tx_campo: TEdit
        Left = 64
        Top = 35
        Width = 209
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
      end
      object tx_campo_t: TEdit
        Left = 64
        Top = 58
        Width = 41
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnChange = tx_campo_tChange
        OnKeyPress = tx_campo_tKeyPress
      end
      object tx_campo_s: TEdit
        Left = 64
        Top = 102
        Width = 41
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnKeyPress = tx_campo_sKeyPress
      end
      object tx_combo_t: TComboBox
        Left = 106
        Top = 58
        Width = 167
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 2
        OnChange = tx_combo_tChange
      end
      object tx_campo_y: TEdit
        Left = 64
        Top = 80
        Width = 41
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 4
        Text = '0'
        OnChange = tx_campo_yChange
        OnKeyPress = tx_campo_yKeyPress
      end
      object tx_combo_y: TComboBox
        Left = 106
        Top = 80
        Width = 167
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 5
        OnChange = tx_combo_yChange
      end
      object tx_str_y2: TMemo
        Left = 281
        Top = 22
        Width = 216
        Height = 133
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
      end
    end
    object pn_alterar: TPanel
      Left = 352
      Top = 227
      Width = 217
      Height = 74
      BevelInner = bvLowered
      Color = 16119285
      TabOrder = 3
      Visible = False
      object lb_tabela: TLabel
        Left = 7
        Top = 17
        Width = 29
        Height = 14
        Caption = 'tabela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5848320
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 6
        Top = 34
        Width = 29
        Height = 12
        Caption = 'Desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 55
        Width = 63
        Height = 12
        Caption = 'Permiss'#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object YuSoftLabel5: TYuSoftLabel
        Left = 166
        Top = 55
        Width = 45
        Height = 12
        Hint = 'Alterar dados da tabela'
        Caption = '&Confirma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = YuSoftLabel5Click
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
        Transparent = False
      end
      object Label7: TLabel
        Left = 6
        Top = 4
        Width = 180
        Height = 14
        Caption = 'Alterar dados da Tabela selecionada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 197
        Top = 2
        Width = 20
        Height = 17
        Hint = 'Cancelar altera'#231#227'o'
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
        OnClick = SpeedButton2Click
      end
      object Edit2: TEdit
        Left = 35
        Top = 31
        Width = 177
        Height = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 255
        ParentFont = False
        TabOrder = 0
      end
      object CheckBox5: TCheckBox
        Left = 72
        Top = 53
        Width = 14
        Height = 17
        Hint = 'List'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 1
      end
      object CheckBox6: TCheckBox
        Left = 87
        Top = 53
        Width = 14
        Height = 17
        Hint = 'Insert'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 2
      end
      object CheckBox7: TCheckBox
        Left = 102
        Top = 53
        Width = 14
        Height = 17
        Hint = 'Update'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBox8: TCheckBox
        Left = 117
        Top = 53
        Width = 14
        Height = 17
        Hint = 'Delete'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 4
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
    object YuSoftLabel15: TYuSoftLabel
      Left = 28
      Top = 3
      Width = 294
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'WebServer - Personaliza'#231#227'o de tabelas por usu'#225'rio'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5979648
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = YuSoftLabel15Click
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
  object ImageList1: TImageList
    Left = 456
    Top = 80
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
      000000000000000000000000000000000000000000000000000029292900B5B5
      B500B5B5B5001010100010101000D6D6D6009C9C9C009C9C9C008C8C8C001010
      10001010100010101000BDBDBD00292929000000000000000000000000000000
      00000000000000000000B5B5B5005A5A5A005A5A5A005A5A5A0029292900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002929
      2900ADADAD00ADADAD00ADADAD009C9C9C009C9C9C008C8C8C00101010001010
      10001010100010101000D6D6D6004A4A4A004A4A4A0029292900292929000000
      0000000000000000000000000000D6D6D6005A5A5A004A4A4A004A4A4A002929
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029292900ADADAD009C9C9C009C9C9C008C8C8C0010101000101010001010
      10001010100010101000BDBDBD00D6D6D600D6D6D600D6D6D600BDBDBD007373
      730000000000000000000000000000000000D6D6D6004A4A4A00313131002929
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292929009C9C9C008C8C8C008C8C8C008C8C8C00101010001010
      10001010100010101000101010001010100000000000000000004A4A4A00BDBD
      BD00000000000000000000000000D6D6D6004A4A4A003131310029292900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292929002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000292929008C8C8C008C8C8C008C8C8C007B7B7B001010
      10001010100010101000101010001010100000000000000000004A4A4A00D6D6
      D6000000000000000000B5B5B5004A4A4A003131310029292900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002929
      2900B5B5B500B5B5B50029292900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292929008C8C8C007B7B7B007B7B7B007B7B
      7B0010101000101010001010100010101000000000000000000000000000BDBD
      BD004A4A4A00B5B5B5004A4A4A003131310029292900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029292900C6C6
      C600DEDEDE00EFEFEF00B5B5B500292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292929007B7B7B007B7B7B007B7B
      7B006B6B6B001010100010101000101010000000000000000000000000000000
      0000ADADAD004A4A4A003131310029292900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000029292900C6C6C600DEDE
      DE00EFEFEF00B5B5B500B5B5B500ADADAD002929290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000292929007B7B7B006B6B
      6B006B6B6B006B6B6B001010100010101000000000000000000000000000ADAD
      AD004A4A4A003131310029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000029292900C6C6C600DEDEDE00EFEF
      EF00B5B5B500B5B5B500ADADAD00ADADAD00ADADAD0029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292929006B6B
      6B006B6B6B006B6B6B005A5A5A001010100000000000000000009C9C9C004A4A
      4A003131310029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000029292900C6C6C600DEDEDE00EFEFEF00B5B5
      B5001010100010101000D6D6D600ADADAD009C9C9C009C9C9C00292929000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002929
      29006B6B6B005A5A5A005A5A5A005A5A5A00000000009C9C9C004A4A4A003131
      310029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000029292900C6C6C600DEDEDE00EFEFEF00B5B5B5001010
      10001010100010101000D6D6D6009C9C9C009C9C9C008C8C8C008C8C8C002929
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000292929005A5A5A005A5A5A005A5A5A004A4A4A004A4A4A00313131002929
      2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000029292900C6C6C600DEDEDE00313131008C8C8C00101010001010
      100010101000D6D6D6009C9C9C009C9C9C008C8C8C008C8C8C008C8C8C008C8C
      8C00292929000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292929005A5A5A004A4A4A004A4A4A003131310029292900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000029292900C6C6C600DEDEDE0031313100D6D6D60031313100101010001010
      1000D6D6D6009C9C9C009C9C9C008C8C8C00101010009C9C9C008C8C8C007B7B
      7B007B7B7B002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000292929004A4A4A003131310029292900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000002929
      2900C6C6C600DEDEDE0031313100DEDEDE00B5B5B5009C9C9C00313131008C8C
      8C009C9C9C009C9C9C008C8C8C001010100010101000101010009C9C9C007B7B
      7B007B7B7B007B7B7B0029292900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002929290029292900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000029292900C6C6
      C600DEDEDE00EFEFEF00B5B5B500313131009C9C9C007B7B7B006B6B6B003131
      31009C9C9C008C8C8C001010100010101000101010001010100010101000ADAD
      AD007B7B7B006B6B6B006B6B6B00292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000029292900B5B5B500DEDE
      DE00EFEFEF00B5B5B5001010100010101000313131006B6B6B00313131009C9C
      9C008C8C8C004A4A4A0029292900292929001010100010101000101010001010
      1000ADADAD006B6B6B006B6B6B006B6B6B002929290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000029292900B5B5B500EFEF
      EF00B5B5B500101010001010100010101000D6D6D600313131009C9C9C008C8C
      8C0010101000BDBDBD0073737300292929001010100010101000101010001010
      100010101000B5B5B5006B6B6B005A5A5A005A5A5A0029292900000000000000
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
      00000000000000000000000000000000C000FC00FFFFFFFFE0001E00FFFFFFFF
      F0000F00FFFFFFFFF800CE00FFF3FFFFFC00CC00FFE1FFFFFE00E000FFC0FFFF
      FF00F000FF807FFFFF80E000FF003FFFFFC0C000FE001FFFFFE08000FC000FFF
      FFF00000F80007FFFFF80000F00003FFFFFC0000E00001FFFFFE0000C00000FF
      FFFF00008000007FFFFF00008000003F00000000000000000000000000000000
      000000000000}
  end
  object XPManifest1: TXPManifest
    Left = 533
    Top = 71
  end
end
