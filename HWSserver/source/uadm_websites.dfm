object adm_websites: Tadm_websites
  Left = 191
  Top = 199
  BorderStyle = bsNone
  ClientHeight = 604
  ClientWidth = 836
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -9
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 491
    Height = 567
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 483
      Height = 559
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 483
      Height = 559
      Align = alClient
      Caption = 'Lista de registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 47
        Width = 479
        Height = 481
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
      end
      object Panel_search: TPanel
        Left = 2
        Top = 14
        Width = 479
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
        object Label4: TLabel
          Left = 221
          Top = -1
          Width = 39
          Height = 12
          Caption = 'Campo:'
        end
        object bt_search: TSpeedButton
          Left = 352
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
          Width = 214
          Height = 20
          MaxLength = 255
          TabOrder = 0
          OnChange = Edit_searchChange
          OnKeyPress = Edit_searchKeyPress
        end
        object ComboBox_search: TComboBox
          Left = 219
          Top = 12
          Width = 132
          Height = 20
          ItemHeight = 12
          MaxLength = 255
          TabOrder = 1
          OnChange = ComboBox_searchChange
        end
      end
      object ToolBar2: TToolBar
        Left = 2
        Top = 528
        Width = 479
        Height = 29
        Align = alBottom
        Caption = 'ToolBar1'
        TabOrder = 2
        object Label5: TLabel
          Left = 0
          Top = 2
          Width = 106
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Total de Registros: '
          Layout = tlCenter
        end
        object Lb_countreg: TLabel
          Left = 106
          Top = 2
          Width = 91
          Height = 22
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
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 836
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 834
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = FormMouseDown
    end
    object bt_fechar: TSpeedButton
      Left = 814
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
      Left = 768
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
      Width = 51
      Height = 13
      Cursor = crHandPoint
      Hint = 'Acessar website'
      Alignment = taCenter
      Caption = 'Websites'
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
      Left = 783
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
      Left = 799
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
    Top = 587
    Width = 836
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 2
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 830
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object PageControl_principal: TPageControl
    Left = 491
    Top = 20
    Width = 345
    Height = 567
    ActivePage = TabSheet2
    Align = alRight
    Style = tsFlatButtons
    TabOrder = 3
    OnChange = PageControl_principalChange
    object TabSheet1: TTabSheet
      Caption = 'Ficha'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 537
        Align = alClient
        Caption = 'Ficha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ScrollBox1: TScrollBox
          Left = 2
          Top = 14
          Width = 333
          Height = 492
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 317
            Height = 382
            BevelOuter = bvNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label1: TLabel
              Left = 76
              Top = 182
              Width = 152
              Height = 12
              Caption = 'Entidade detentora do dom'#237'nio'
            end
            object Label2: TLabel
              Left = 76
              Top = 222
              Width = 158
              Height = 12
              Caption = 'Entidade de registro do dom'#237'nio'
            end
            object Label7: TLabel
              Left = 76
              Top = 260
              Width = 92
              Height = 12
              Caption = 'Ramo de atividade'
            end
            object Label6: TLabel
              Left = 76
              Top = 299
              Width = 158
              Height = 12
              Caption = 'Selecione o Skin para o website'
            end
            object bt_detail1: TSpeedButton
              Left = 290
              Top = 194
              Width = 24
              Height = 22
              Hint = 'Exibir mais detalhes'
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
                798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_detail1Click
            end
            object bt_detail2: TSpeedButton
              Left = 290
              Top = 234
              Width = 24
              Height = 22
              Hint = 'Exibir mais detalhes'
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
                798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_detail2Click
            end
            object bt_detail4: TSpeedButton
              Left = 264
              Top = 312
              Width = 21
              Height = 22
              Hint = 'Exibir mais detalhes'
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
                798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_detail4Click
            end
            object bt_detail3: TSpeedButton
              Left = 290
              Top = 272
              Width = 24
              Height = 22
              Hint = 'Exibir mais detalhes'
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
                798B8784D8D8D8FFFFFFEFEFEFADABA9766F69CDC9C7FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDC9C7766F69ADABA9EFEFEFE8E8E8847F7A
                A19B96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFA19B96847F7AE8E8E8E7E4DE666059CECBC8FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECBC8666059E7E4DEE7E4DE524A42
                EDECE8FFFFFF0000E90000E7FFFFFF0000FC0000DCFFFFFF0000F50000E7FAFA
                FFEDECE8524A42E7E4DEE8E8E84D453EE7E4DEEEEBE10000F20000FCEEEBE100
                00F60000F9EEEBE10000F30000FDE6E3E3E7E4DE4D453EE8E8E8EFEFEF605A55
                BDB8AFEEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1EEEBE1E9E6E2E7E4E3EDEA
                E2BDB8AF605A55EFEFEFFFFFFF8B8784878076E7E3D5E7E2D5E7E2D5E7E2D5E7
                E2D5E7E2D5E7E2D5E7E2D5E7E2D5E7E2D58780768B8784FFFFFFFFFFFFC8C7C5
                5D5853ABA596E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8E0DAC8ABA5
                965D5853C8C7C5FFFFFFFFFFFFFFFFFF9F9C9A5F584DA69F8EEDEADFF6F4EFF6
                F4EFF6F4EFF6F4EFEDEADFA69F8E5F584D9F9C9AFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA19E9C5B554E797163A69F8EFFFFFFFFFFFFA69F8E7971635B554EA19E
                9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_detail3Click
            end
            object bt_view1: TSpeedButton
              Left = 285
              Top = 312
              Width = 29
              Height = 22
              Hint = 'Visualizar exemplo de aplica'#231#227'o'
              Flat = True
              Glyph.Data = {
                2E060000424D2E0600000000000036040000280000001A000000120000000100
                080000000000F8010000120B0000120B00000001000000000000193C0300B143
                130000FF000033669900C6B8BE00B69B91009EF5930014C77200FFC829007350
                070000CCFF00EACB9800D4F5FF0086AC4C00D480500020711C0088959C00A571
                7100D7BB850091747000F0DCCA00D77F38009F6242005A4A080082777E004993
                1300E2B66900FFDB9F00C6B09700CA8080007EFEFD00CF643E00FFED7C002485
                B800E5D0BA0088D95B0038C8F700A78B8B00D75E3600364127004A7C5A00D4F8
                CA00E3A94000FCF1F4003F7026004F622B00C6A36300A68B7700A25B1100DADB
                9100CC993300C6B0B200FEDC6000DF5C2A00B3B8AF00FCD44000FDF1EF00BDF1
                7B0033530600A1AC3E0084626200FFFF990020A40400E3BFBF0059771800D4AD
                AB00FFF2BE00D8972B00686E1700AF9B7700E1D5D300AAC09D0075B8570045AE
                2F0097828400F3E59D00B29587003A490B00459915001B662E00BCA6A1008443
                1000E6AA5600B1732D00D0BD9000FFEF980082896E00CF622400855F5D004F78
                0B003BD57600D48F4600E6CEB8001E91C40038A02B00CCCCCC00896C68002E91
                2500F9E2E600CC723C00F4F7DE00E6D5A400E69E4600646C4300B03C1B00ECCA
                CB00EEFBAB00EBC57D00FFDB5900AABC7500FFFF8F00B9C7BB00FFFFFF00AE96
                8A00EADAAC00C29C7E00E8894400FEF29A00FFFFA200E57F4400FFFFBB009250
                2000E6D1D000AD858700D56E41009C827600ECD4D400F1C36B004A962600D8B9
                B60080634800B1838900B7AC8C00E4C996001E271300CEB7A8009B8A8D00B7AC
                AF00D6C5C300AEA9AA00FFCC3300FFDD7600BCA49800BFC4C200AA8A85005F45
                0F00C0B4B40083E56300F3A8460033570500A5959600FFE68A00D6713D00FFE3
                9600D57C490033CCFF00B84F1C00D99F3F008B765700FFF3AD00D775450080F7
                FF0063790F00A17F7900867C8400F1B36700FCD3540089796C00FEFFB400FFFF
                CC00E9D7D600EDE8E70089A35000D76132007A6D6500DAA15C002A99CB00A18E
                9100E3D5AB00AB999800CCFFFF00DECA9A00DD8C5200B07D730092787800CF7E
                41007E787E0047881500545E2F00CFB3B300B5B5B500ADB3A200F0E7A4002F4C
                0D00DE954B00DBE7AB00BEA47C00CFBBAA0083FFFF00FFF2840036550A00F8E9
                E700FFE46400D4C0B500DFC3C200D26D4D009A827C00FCF7F600ECC28100BBA4
                9C00C3C2C400B69A990059530800FDDFA600C6AF9F00CE6F4400AB8D8C00FCD7
                4D00FFF1C700686A2400DFD8DB00928F8000BDACA300FFF79400EED9DB009C8C
                9400B5ADB500FFCD3D002F570F00AD969400DF723C00667E1A00F2D9AD00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000E9E9E9E9E9E9
                E2B1B83C58604A8BE9E9E9E9E9E9E9E9E9E9E9E90000E9E9E9E9E9928AABCF38
                7A81D33CB1E9E9E9E9E9E9E9E9E9E9E90000E9E9E9E9DCC970702B7E696962BD
                3CE9E9E9E9E9E9E9E9E9E9E90000E9E9E9E94662C9CF703F1D81414196E9D2B7
                82169EA7BEE9E9E90000E9E9E9E95F46AACCE08311D89025D2D16879ADE67774
                A0A3E9E90000E9E9E9E9E9E904D87B335CDA227DDE01513A9C3598159DB6CEE9
                0000E9E9E9E9E9B3CB14429F8DA61B4C730917959557A07C636367BE0000E9E9
                E9E9E9506B34E30808E399051C4DC8592CDB9AD71F26BCAE0000E9E9E9E9E9B0
                1A376CCA34D9555087C14F19A2405B0ECDCD30270000E9E903E97021124520C7
                C7CA75C5D62D0F5E3B2A66C2B953D4860000E9700A03C621A40C3D7676C7DFE8
                8E56E423B26BA5AF284495270000E9E9B40A9B5DA16EA8A9783D97D571DDACC3
                C065D0434EBB007D0000E903039B7024101818B554C42F2F13885A2964728594
                3E61918F0000701E9B7070709BC6B48AE5899292364907066A4B0B528009BFE9
                0000E9E9039B709B0A03E9E9E9E9E9E9E96F489339317F32E736E9E90000E903
                1EE99B03C60A03E9E9E9E9E9E9E9E9476D0D2E84E9E9E9E90000E970E9E91E03
                E9700AE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E90000E9E9E9E970E9E9E9E9E9
                E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E90000}
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_view1Click
            end
            object lbcp1: TLabeledEdit
              Left = 7
              Top = 21
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
            object lbcp8: TLabeledEdit
              Left = 8
              Top = 353
              Width = 304
              Height = 20
              EditLabel.Width = 40
              EditLabel.Height = 12
              EditLabel.Caption = 'Website'
              MaxLength = 255
              TabOrder = 11
            end
            object lbcp3: TComboBox
              Left = 75
              Top = 196
              Width = 214
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 4
              OnChange = lbcp3Change
            end
            object Panel3: TPanel
              Left = 8
              Top = 65
              Width = 307
              Height = 111
              BevelInner = bvLowered
              Caption = 'Logomarca'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object swf_logo: TShockwaveFlash
                Left = 2
                Top = 2
                Width = 303
                Height = 107
                Align = alClient
                ParentShowHint = False
                ShowHint = False
                TabOrder = 0
                Visible = False
                ControlData = {
                  6755665510070000511F00000F0B000008000200000000000800000000000800
                  0000000008000E000000570069006E0064006F00770000000B00FFFF0B00FFFF
                  08000A0000004800690067006800000008000200000000000B00FFFF08000200
                  0000000008000E00000061006C00770061007900730000000800100000005300
                  68006F00770041006C006C0000000B0000000B00000008000200000000000800
                  02000000000008000200000000000D0000000000000000000000000000000000
                  0B0001000B00000008000000000003000000000008000800000061006C006C00
                  000008000C000000660061006C00730065000000}
              end
            end
            object lbcp2: TLabeledEdit
              Left = 9
              Top = 196
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 3
              OnChange = lbcp2Change
              OnKeyPress = NumKeyPress
            end
            object lbcp5: TComboBox
              Left = 75
              Top = 236
              Width = 214
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 6
              OnChange = lbcp5Change
            end
            object lbcp4: TLabeledEdit
              Left = 9
              Top = 236
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 5
              OnChange = lbcp4Change
              OnKeyPress = NumKeyPress
            end
            object lbcp7: TComboBox
              Left = 75
              Top = 274
              Width = 214
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 8
              OnChange = lbcp7Change
            end
            object lbcp6: TLabeledEdit
              Left = 9
              Top = 274
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 7
              OnChange = lbcp6Change
              OnKeyPress = NumKeyPress
            end
            object ToolBar3: TToolBar
              Left = 10
              Top = 43
              Width = 305
              Height = 23
              Align = alNone
              AutoSize = True
              ButtonHeight = 19
              Caption = 'ToolBar1'
              TabOrder = 2
              object Label8: TLabel
                Left = 0
                Top = 2
                Width = 126
                Height = 19
                AutoSize = False
                Caption = 'Logomarca'
                Transparent = True
                Layout = tlCenter
              end
              object bt_import: TSpeedButton
                Left = 126
                Top = 2
                Width = 91
                Height = 19
                Hint = 'Importar logomarca da entidade'
                Caption = 'Importar'
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
                OnClick = bt_importClick
              end
              object bt_clear: TSpeedButton
                Left = 217
                Top = 2
                Width = 88
                Height = 19
                Hint = 'Limpar logomarca'
                Caption = 'Limpar'
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
                OnClick = bt_clearClick
              end
            end
            object lbcp9: TLabeledEdit
              Left = 9
              Top = 313
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 9
              OnChange = lbcp9Change
              OnKeyPress = NumKeyPress
            end
            object lbcp10: TComboBox
              Left = 75
              Top = 313
              Width = 190
              Height = 20
              ItemHeight = 12
              MaxLength = 255
              TabOrder = 10
              OnChange = lbcp10Change
            end
          end
        end
        object ToolBar1: TToolBar
          Left = 2
          Top = 506
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 1
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
            Width = 90
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
            Left = 138
            Top = 2
            Width = 90
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
            Left = 228
            Top = 2
            Width = 104
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
    end
    object TabSheet2: TTabSheet
      Caption = 'M'#243'dulos'
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 537
        Align = alClient
        Caption = 'M'#243'dulos dispon'#237'veis para o website:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ToolBar5: TToolBar
          Left = 2
          Top = 506
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 0
          object bt_prior2: TSpeedButton
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
            OnClick = bt_prior2Click
          end
          object bt_next2: TSpeedButton
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
            OnClick = bt_next2Click
          end
          object bt_automdl: TSpeedButton
            Left = 48
            Top = 2
            Width = 55
            Height = 22
            Hint = 'Autom'#225'tico'
            Caption = 'Auto'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              1E020000424D1E02000000000000B60000002800000012000000120000000100
              08000000000068010000120B0000120B00002000000000000000FFFFFF0066FF
              FF0033FFFF0033CCCC00B2B2B20090A9AD003399CC0033999900009999008686
              860077777700008080005555550000333300800000000808080000000000FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000111111111111
              111111080B0D100F0F0D0B1100001111111111111111080B010307070B08080B
              000011111111111111110D03000307070B08060D000011111111111111110D03
              000307070B08060F000011111111111111110D03000303070707061000001111
              1111111111110D030E0E0E0E030806100000110A0A0A0A0A0A0A0D07050E0E0E
              03080610000000000000000000000D070E0E0E0E030806100000000C0C0C0C0C
              0C040D0E0E0E010E01030810000000000000000004040E0E0E00000000000110
              0000000C0C0C0C0C090E0E0E000101010102070B00000000000000000E0E0E00
              0B0D0D0D0D0B0B110000000C0C0C0C0C040E000000000A111111111100000000
              000000000000000000000A11111111110000000C0C0C0C0C0C0C0C0C00000A11
              1111111100000000000000000000000000000A11111111110000000C0C0C0C0C
              0C0C0C0C00000A11111111110000000000000000000000000000111111111111
              0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_automdlClick
          end
          object bt_marcar: TSpeedButton
            Left = 103
            Top = 2
            Width = 71
            Height = 22
            Hint = 'Marcar m'#243'dulo selecionado'
            Caption = 'Marcar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
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
            OnClick = bt_marcarClick
          end
          object bt_desmarcar: TSpeedButton
            Left = 174
            Top = 2
            Width = 85
            Height = 22
            Hint = 'Desmarcar m'#243'dulo selecionado'
            Caption = 'Desmarcar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
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
            OnClick = bt_desmarcarClick
          end
          object bt_save2: TSpeedButton
            Left = 259
            Top = 2
            Width = 74
            Height = 22
            Hint = 'Gravar observa'#231#245'es do m'#243'dulo selecionado'
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
        object ScrollBox3: TScrollBox
          Left = 2
          Top = 412
          Width = 333
          Height = 94
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 1
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 332
            Height = 94
            BevelOuter = bvNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label9: TLabel
              Left = 4
              Top = -1
              Width = 71
              Height = 12
              Caption = 'Observa'#231#245'es:'
            end
            object lbct1: TMemo
              Left = 0
              Top = 14
              Width = 332
              Height = 80
              Align = alBottom
              ScrollBars = ssBoth
              TabOrder = 0
              OnKeyPress = lbct1KeyPress
            end
          end
        end
        object Panel4: TPanel
          Left = 231
          Top = 0
          Width = 104
          Height = 14
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 16119285
          TabOrder = 2
          object Label10: TLabel
            Left = 21
            Top = 0
            Width = 78
            Height = 12
            Caption = 'm'#243'dulo incluido'
            Transparent = True
          end
          object Panel5: TPanel
            Left = 3
            Top = 2
            Width = 13
            Height = 10
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 12615680
            TabOrder = 0
            object Image1: TImage
              Left = 0
              Top = 0
              Width = 9
              Height = 6
              Align = alClient
              Picture.Data = {
                0A544A504547496D61676521010000FFD8FFE000104A46494600010101004800
                480000FFDB0043000604040405040605050609060506090B080606080B0C0A0A
                0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B1C2020
                2020202020202020FFDB0043010707070D0C0D181010181A1511151A20202020
                2020202020202020202020202020202020202020202020202020202020202020
                20202020202020202020202020FFC00011080006000903011100021101031101
                FFC4001500010100000000000000000000000000000006FFC400141001000000
                00000000000000000000000000FFC40016010101010000000000000000000000
                0000000607FFC40014110100000000000000000000000000000000FFDA000C03
                010002110311003F00965EB3001FFFD9}
            end
          end
        end
        object PageControl_mdl: TPageControl
          Left = 2
          Top = 14
          Width = 333
          Height = 398
          ActivePage = TabSheet6
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 3
          OnChange = PageControl_mdlChange
          object TabSheet6: TTabSheet
            Caption = 'Principais'
            object DBGrid2: TDBGrid
              Left = 0
              Top = 35
              Width = 325
              Height = 333
              Hint = 'Duplo clique para incluir m'#243'dulo'
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnCellClick = DBGridmdlCellClick
              OnDrawColumnCell = DBGrid2DrawColumnCell
              OnDblClick = DBGridmdlDblClick
              OnKeyDown = DBGridmdlKeyDown
              OnKeyUp = DBGridmdlKeyUp
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 325
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              Color = 16119285
              TabOrder = 1
              object Label19: TLabel
                Left = 5
                Top = 0
                Width = 49
                Height = 12
                Caption = 'Localizar:'
              end
              object Edit_search2: TEdit
                Left = 0
                Top = 12
                Width = 321
                Height = 20
                MaxLength = 255
                TabOrder = 0
                OnChange = Edit_search2Change
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Auxiliares'
            ImageIndex = 1
            object DBGrid5: TDBGrid
              Left = 0
              Top = 0
              Width = 325
              Height = 368
              Hint = 'Duplo clique para incluir m'#243'dulo'
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBlack
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnCellClick = DBGridmdlCellClick
              OnDrawColumnCell = DBGrid5DrawColumnCell
              OnDblClick = DBGridmdlDblClick
              OnKeyDown = DBGridmdlKeyDown
              OnKeyUp = DBGridmdlKeyUp
            end
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Linguagens'
      ImageIndex = 3
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 317
        Align = alClient
        Caption = 'Linguagens dispon'#237'veis para o website:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object ToolBar4: TToolBar
          Left = 2
          Top = 286
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 0
          object bt_prior5: TSpeedButton
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
            OnClick = bt_prior5Click
          end
          object bt_next5: TSpeedButton
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
            OnClick = bt_next5Click
          end
          object bt_lngdefault: TSpeedButton
            Left = 48
            Top = 2
            Width = 88
            Height = 22
            Hint = 'Definir linguagem selecionada como padr'#227'o'
            Caption = 'Padr'#227'o'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            Glyph.Data = {
              16010000424D160100000000000046000000280000000D0000000D0000000100
              080000000000D0000000120B0000120B00000400000000000000FFFFFF00BFBF
              BF007F7F7F000000000000000000000000000000000000000000020101010101
              0101010101010000000002030000000000000000000100000000020300000003
              0000000000010000000002030000030303000000000100000000020300030303
              0303000000010000000002030003030003030300000100000000020300030000
              0003030300010000000002030000000000000303000100000000020300000000
              0000000300010000000002030000000000000000000100000000020303030303
              0303030303010000000002020202020202020202020200000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_lngdefaultClick
          end
          object bt_marcar2: TSpeedButton
            Left = 136
            Top = 2
            Width = 88
            Height = 22
            Hint = 'Marcar linguagem selecionada'
            Caption = 'Marcar'
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
            OnClick = bt_marcar2Click
          end
          object bt_desmarcar2: TSpeedButton
            Left = 224
            Top = 2
            Width = 101
            Height = 22
            Hint = 'Desmarcar linguagem selecionada'
            Caption = 'Desmarcar'
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
            OnClick = bt_desmarcar2Click
          end
        end
        object DBGrid3: TDBGrid
          Left = 2
          Top = 14
          Width = 333
          Height = 272
          Hint = 'Duplo clique para incluir linguagem'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnCellClick = DBGrid3CellClick
          OnDrawColumnCell = DBGrid3DrawColumnCell
          OnDblClick = DBGrid3DblClick
          OnKeyDown = DBGrid3KeyDown
          OnKeyUp = DBGrid3KeyUp
        end
        object Panel8: TPanel
          Left = 217
          Top = 0
          Width = 120
          Height = 14
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 16119285
          TabOrder = 2
          object Label12: TLabel
            Left = 21
            Top = 0
            Width = 93
            Height = 12
            Caption = 'linguagem incluida'
            Transparent = True
          end
          object Panel9: TPanel
            Left = 3
            Top = 2
            Width = 13
            Height = 10
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 12615680
            TabOrder = 0
            object Image2: TImage
              Left = 0
              Top = 0
              Width = 9
              Height = 6
              Align = alClient
              Picture.Data = {
                0A544A504547496D61676521010000FFD8FFE000104A46494600010101004800
                480000FFDB0043000604040405040605050609060506090B080606080B0C0A0A
                0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B1C2020
                2020202020202020FFDB0043010707070D0C0D181010181A1511151A20202020
                2020202020202020202020202020202020202020202020202020202020202020
                20202020202020202020202020FFC00011080006000903011100021101031101
                FFC4001500010100000000000000000000000000000006FFC400141001000000
                00000000000000000000000000FFC40016010101010000000000000000000000
                0000000607FFC40014110100000000000000000000000000000000FFDA000C03
                010002110311003F00965EB3001FFFD9}
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 537
        Align = alClient
        Caption = 'Selecione o menu:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Splitter3: TSplitter
          Left = 2
          Top = 332
          Width = 333
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Lb_countreg3: TLabel
          Left = 214
          Top = 0
          Width = 6
          Height = 12
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ToolBar10: TToolBar
          Left = 2
          Top = 506
          Width = 333
          Height = 29
          Align = alBottom
          Caption = 'ToolBar1'
          TabOrder = 0
          object bt_prior3: TSpeedButton
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
            OnClick = bt_prior3Click
          end
          object bt_next3: TSpeedButton
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
            OnClick = bt_next3Click
          end
          object bt_new3: TSpeedButton
            Left = 48
            Top = 2
            Width = 88
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
            OnClick = bt_new3Click
          end
          object bt_del3: TSpeedButton
            Left = 136
            Top = 2
            Width = 88
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
            OnClick = bt_del3Click
          end
          object bt_save3: TSpeedButton
            Left = 224
            Top = 2
            Width = 109
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
            OnClick = bt_save3Click
          end
        end
        object DBGrid4: TDBGrid
          Left = 2
          Top = 14
          Width = 333
          Height = 318
          TabStop = False
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
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -9
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnCellClick = DBGrid4CellClick
          OnDrawColumnCell = DBGrid4DrawColumnCell
          OnKeyDown = DBGrid4KeyDown
          OnKeyUp = DBGrid4KeyUp
        end
        object ScrollBox2: TScrollBox
          Left = 2
          Top = 335
          Width = 333
          Height = 171
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 2
          object Panel10: TPanel
            Left = -1
            Top = 0
            Width = 317
            Height = 169
            BevelOuter = bvNone
            Color = 16119285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label11: TLabel
              Left = 78
              Top = 90
              Width = 103
              Height = 12
              Caption = 'Eventos dos bot'#245'es:'
              Layout = tlCenter
            end
            object xmn_sx_bt2: TSpeedButton
              Left = 289
              Top = 106
              Width = 25
              Height = 20
              Hint = 'Adicionar/adicionar evento selecionado'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E8E8E8C8C7C59999999999999999999999999999999999999999999999999999
                99999999FFFFFFFFFFFFFFFFFFEFEFEFC8C7C59F774D926E4A926E4A8F6A448F
                6A448765418C653986613B86613B815E33999999EFEFEFFFFFFFFFFFFFD8D8D8
                8B8784A58159FAEED6FAEED6FAEED6D8C4A1D8C4A1E8D3ADE4CDADF9E5BC8661
                3B999999D8D8D8FFFFFFEFEFEFADABA9766F69AB8660FCF1DBFCF1DB00000084
                99A18A8477AD906BC9AF8BC9AF8B8B6640999999ADABA9EFEFEFE8E8E8847F7A
                A19B96AB8660FEF5E7FEF5E78DC6CFFFFFFF33BCD60066CCCDB38FCDB38F8F6A
                44999999847F7AE8E8E8E7E4DE666059CECBC8AF8A64FEF5E7FEF5E7CBDED57F
                FFFE33CCFF33BCD60066CCC8B28F825529999999666059E7E4DEE7E4DE524A42
                EDECE8B38F67FFF8EFFFF8EFFEF5E7089BC37FFFFE33CCFF33BCD60066CC7041
                0D999999524A42E7E4DEE8E8E84D453EE7E4DEB6926AFFF8EFFFF8EFFFF8EFFE
                F5E7089BC384FDFF33CCFF33BCD60066CC9999994D453EE8E8E8EFEFEF605A55
                BDB8AFBB946DFDFAF6FDFAF6FDFAF6FFF8EFE5D3BC089BC37FFFFE33CCFF33BC
                D60066CC605A55EFEFEFFFFFFF8B8784878076BB946DFFFFFFFFFFFFFDFAF6FD
                FAF6E1D0BBE1D0BB089BC384FDFF33CCFF33BCD60066CCFFFFFFFFFFFFC8C7C5
                5D5853BA9874FFFFFFFFFFFFFFFFFFFFFFFFE1D0BBFDFAF6F1D5B2089BC37FFF
                FE33CCFF2F89AB583C35FFFFFFFFFFFF9F9C9ABD9B70FFFFFFFFFFFFFFFFFFFF
                FFFFE5D3BCF1D5B2C7AA7ED2BFAA089BC3089BC3FF9900FFB95CFFFFFFFFFFFF
                FFFFFFBD9A6FBD9A6FBA9874BA9874BB946DBB946DBB946DB1B6B5FFFFFFFFFF
                FF97704AFFFFFFA06FA7FFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFF97704AE9AAF4}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = xmn_sx_bt2Click
            end
            object xmn_tpmn_bt2: TSpeedButton
              Left = 290
              Top = 142
              Width = 25
              Height = 20
              Hint = 'Editar/adicionar formata'#231#227'o selecionada'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFEFEFE8E8E8E7E4DEE7E4DEE8E8E8EFEFEFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD8D8D8BDBDBDADABA9A7
                A7A7A7A7A7ADABA9BDBDBDD8D8D8EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                E8E8E8C8C7C59999999999999999999999999999999999999999999999999999
                99999999FFFFFFFFFFFFFFFFFFEFEFEFC8C7C59F774D926E4A926E4A8F6A448F
                6A448765418C653986613B86613B815E33999999EFEFEFFFFFFFFFFFFFD8D8D8
                8B8784A58159FAEED6FAEED6FAEED6D8C4A1D8C4A1E8D3ADE4CDADF9E5BC8661
                3B999999D8D8D8FFFFFFEFEFEFADABA9766F69AB8660FCF1DBFCF1DB00000084
                99A18A8477AD906BC9AF8BC9AF8B8B6640999999ADABA9EFEFEFE8E8E8847F7A
                A19B96AB8660FEF5E7FEF5E78DC6CFFFFFFF33BCD60066CCCDB38FCDB38F8F6A
                44999999847F7AE8E8E8E7E4DE666059CECBC8AF8A64FEF5E7FEF5E7CBDED57F
                FFFE33CCFF33BCD60066CCC8B28F825529999999666059E7E4DEE7E4DE524A42
                EDECE8B38F67FFF8EFFFF8EFFEF5E7089BC37FFFFE33CCFF33BCD60066CC7041
                0D999999524A42E7E4DEE8E8E84D453EE7E4DEB6926AFFF8EFFFF8EFFFF8EFFE
                F5E7089BC384FDFF33CCFF33BCD60066CC9999994D453EE8E8E8EFEFEF605A55
                BDB8AFBB946DFDFAF6FDFAF6FDFAF6FFF8EFE5D3BC089BC37FFFFE33CCFF33BC
                D60066CC605A55EFEFEFFFFFFF8B8784878076BB946DFFFFFFFFFFFFFDFAF6FD
                FAF6E1D0BBE1D0BB089BC384FDFF33CCFF33BCD60066CCFFFFFFFFFFFFC8C7C5
                5D5853BA9874FFFFFFFFFFFFFFFFFFFFFFFFE1D0BBFDFAF6F1D5B2089BC37FFF
                FE33CCFF2F89AB583C35FFFFFFFFFFFF9F9C9ABD9B70FFFFFFFFFFFFFFFFFFFF
                FFFFE5D3BCF1D5B2C7AA7ED2BFAA089BC3089BC3FF9900FFB95CFFFFFFFFFFFF
                FFFFFFBD9A6FBD9A6FBA9874BA9874BB946DBB946DBB946DB1B6B5FFFFFFFFFF
                FF97704AFFFFFFA06FA7FFFFFFFFFFFFFFFFFFFFFFFFCCCCCC8F8C885D58533D
                36303D36305D58538F8C88CCCCCCFFFFFFFFFFFF97704AE9AAF4}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = xmn_tpmn_bt2Click
            end
            object Label13: TLabel
              Left = 78
              Top = 129
              Width = 107
              Height = 12
              Caption = 'Formata'#231#227'o de texto:'
              Layout = tlCenter
            end
            object lbcd1: TLabeledEdit
              Left = 7
              Top = 21
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
            object lbcd2: TLabeledEdit
              Left = 8
              Top = 62
              Width = 306
              Height = 20
              EditLabel.Width = 51
              EditLabel.Height = 12
              EditLabel.Caption = 'Descri'#231#227'o'
              MaxLength = 255
              TabOrder = 1
            end
            object lbcd4: TComboBox
              Left = 74
              Top = 106
              Width = 215
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 3
              OnChange = lbcd4Change
            end
            object lbcd6: TComboBox
              Left = 74
              Top = 143
              Width = 215
              Height = 20
              ItemHeight = 0
              MaxLength = 255
              TabOrder = 5
              OnChange = lbcd6Change
            end
            object lbcd3: TLabeledEdit
              Left = 8
              Top = 106
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 2
              Text = '0'
              OnChange = lbcd3Change
              OnKeyPress = NumKeyPress
            end
            object lbcd5: TLabeledEdit
              Left = 8
              Top = 143
              Width = 65
              Height = 20
              EditLabel.Width = 35
              EditLabel.Height = 12
              EditLabel.Caption = 'C'#243'digo'
              MaxLength = 11
              TabOrder = 4
              Text = '0'
              OnChange = lbcd5Change
              OnKeyPress = NumKeyPress
            end
            object CheckBox_menudefault: TCheckBox
              Left = 166
              Top = 23
              Width = 149
              Height = 17
              Caption = 'Definir como menu padr'#227'o'
              TabOrder = 6
            end
          end
        end
        object Panel11: TPanel
          Left = 223
          Top = 0
          Width = 112
          Height = 14
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 16119285
          TabOrder = 3
          object Label18: TLabel
            Left = 21
            Top = 0
            Width = 87
            Height = 12
            Caption = 'exemplo de menu'
            Transparent = True
          end
          object Panel12: TPanel
            Left = 3
            Top = 2
            Width = 13
            Height = 10
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 12615680
            TabOrder = 0
            object Image7: TImage
              Left = 0
              Top = 0
              Width = 9
              Height = 6
              Align = alClient
              Picture.Data = {
                0A544A504547496D61676521010000FFD8FFE000104A46494600010101004800
                480000FFDB0043000604040405040605050609060506090B080606080B0C0A0A
                0B0A0A0C100C0C0C0C0C0C100C0E0F100F0E0C1313141413131C1B1B1B1C2020
                2020202020202020FFDB0043010707070D0C0D181010181A1511151A20202020
                2020202020202020202020202020202020202020202020202020202020202020
                20202020202020202020202020FFC00011080006000903011100021101031101
                FFC4001500010100000000000000000000000000000006FFC400141001000000
                00000000000000000000000000FFC40016010101010000000000000000000000
                0000000607FFC40014110100000000000000000000000000000000FFDA000C03
                010002110311003F00965EB3001FFFD9}
            end
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Editor do menu'
      ImageIndex = 4
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 337
        Height = 537
        Align = alClient
        Caption = 'Editor do menu selecionado:'
        TabOrder = 0
        object pn_legenda: TPanel
          Left = 2
          Top = 14
          Width = 333
          Height = 16
          Align = alTop
          BevelOuter = bvNone
          Color = 16119285
          TabOrder = 0
          object Image5: TImage
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
          object Label14: TLabel
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
          object Label15: TLabel
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
          object Image6: TImage
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
          object Lb_countreg4: TLabel
            Left = 327
            Top = 0
            Width = 6
            Height = 12
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
          object chk_traduzir: TCheckBox
            Left = 200
            Top = 0
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
            Left = 127
            Top = 0
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
        end
        object ToolBar8: TToolBar
          Left = 2
          Top = 506
          Width = 333
          Height = 29
          Align = alBottom
          ButtonHeight = 23
          Caption = 'ToolBar1'
          TabOrder = 1
          object bt_prior4: TSpeedButton
            Left = 0
            Top = 2
            Width = 24
            Height = 23
            Hint = 'Item anterior'
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
            OnClick = bt_prior4Click
          end
          object bt_next4: TSpeedButton
            Left = 24
            Top = 2
            Width = 24
            Height = 23
            Hint = 'Pr'#243'ximo item'
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
            OnClick = bt_next4Click
          end
          object bt_new4: TSpeedButton
            Left = 48
            Top = 2
            Width = 92
            Height = 23
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
            Left = 140
            Top = 2
            Width = 82
            Height = 23
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
          object bt_save4: TSpeedButton
            Left = 222
            Top = 2
            Width = 109
            Height = 23
            Hint = 'Gravar dados do menu selecionado'
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
            OnClick = bt_save4Click
          end
        end
        object GroupBox7: TGroupBox
          Left = 2
          Top = 393
          Width = 333
          Height = 113
          Align = alBottom
          Caption = 'Propriedades do item:'
          TabOrder = 2
          object Label16: TLabel
            Left = 7
            Top = 41
            Width = 33
            Height = 12
            Alignment = taRightJustify
            Caption = 'Texto:'
          end
          object Label17: TLabel
            Left = 15
            Top = 62
            Width = 25
            Height = 12
            Alignment = taRightJustify
            Caption = 'Hint:'
          end
          object rb_item1: TRadioButton
            Left = 8
            Top = 16
            Width = 48
            Height = 17
            Caption = 'Menu'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = rb_item1Click
          end
          object rb_item2: TRadioButton
            Left = 72
            Top = 16
            Width = 78
            Height = 17
            Caption = 'M'#243'dulo web:'
            TabOrder = 1
            OnClick = rb_item2Click
          end
          object xmn_modulos: TComboBox
            Left = 154
            Top = 15
            Width = 175
            Height = 20
            Color = 16119285
            ItemHeight = 0
            MaxLength = 255
            TabOrder = 2
            OnChange = xmn_modulosChange
          end
          object xmn_text: TEdit
            Left = 40
            Top = 37
            Width = 287
            Height = 20
            Color = 16119285
            ReadOnly = True
            TabOrder = 3
          end
          object xmn_hint: TEdit
            Left = 40
            Top = 58
            Width = 287
            Height = 20
            Color = 16119285
            ReadOnly = True
            TabOrder = 4
          end
          object ToolBar6: TToolBar
            Left = 2
            Top = 82
            Width = 329
            Height = 29
            Align = alBottom
            Caption = 'ToolBar1'
            TabOrder = 5
            object bt_it1: TSpeedButton
              Left = 0
              Top = 2
              Width = 58
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
              Left = 58
              Top = 2
              Width = 71
              Height = 22
              Hint = 'Atualizar dados do item selecionado'
              Caption = 'Alterar'
              Enabled = False
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Glyph.Data = {
                9E020000424D9E02000000000000360100002800000014000000120000000100
                08000000000068010000120B0000120B00004000000000000000FFFFFF0099FF
                FF00FFF9EC00EDEDED00F7ECD800F2E7D300F0E4D000EBD8B60033CCFF00C7B4
                9200C2AF8D00BFAC8A00BAA78500B7A48200B4A17F0099999900B19E7C00AF9C
                7A00AA977500A3906E00A18E6C00917E5C008F7C5A008B78560086735100A06C
                4800806D4B007966440074613F0083603800715E3C006D5A380065523000604D
                2B005C492700523F1D004C391700140D0000FFFFFF0000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000262626262626
                262626262626262626262626262626260F0F0F0F0F0F0F0F0F0F0F0F0F0F2626
                262626191D1D1D1D1D1D1D1D1D1D1D1D1D0F2626262626190C11000303030303
                0322170D1D0F2626262626190C11001A0B0003030322160D1D0F262626262619
                0B10001A0B0003030322150D1D0F2626262626190B0E001F1A00030313212121
                23212626262626190A0E0000000000001201080808212626262626190A161717
                1718181824000108210F26262626261909040404050505061B00000108210F26
                2626261909040404040505051B001C000108210F2626261909040A0A0A0B0B0B
                1B1B1F22000108210F262619090404040404050505061E0A2300010821262619
                09040C09090A0A0B0B0625141D1A002126262619070202020202020202021F0C
                1D0F202626262619191919191919191919191919192626262626262626262626
                2626262626262626262626262626262626262626262626262626262626262626
                2626}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = bt_it2Click
            end
            object bt_it3: TSpeedButton
              Left = 129
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
            object bt_it4: TSpeedButton
              Left = 197
              Top = 2
              Width = 55
              Height = 22
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
              Left = 252
              Top = 2
              Width = 76
              Height = 22
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
          end
        end
        object PageControl_languagens: TPageControl
          Left = 2
          Top = 30
          Width = 333
          Height = 363
          ActivePage = lngtb1
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 3
          OnChange = PageControl_languagensChange
          object lngtb1: TTabSheet
            Caption = 'lngtb1'
            object xmn_montamenus1: TTreeView
              Left = 0
              Top = 0
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
              Width = 325
              Height = 333
              Align = alClient
              AutoExpand = True
              HideSelection = False
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
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Importar imagem'
    Left = 277
    Top = 88
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Todos os arquivos (*.*)|*.*|JPEG Image File (*.jpg)|*.jpg|JPEG I' +
      'mage File (*.jpeg)|*.jpeg|Flash (*.swf)|*.swf'
    Title = 'Exportar imagem'
    Left = 248
    Top = 88
  end
  object ImageList_menuweb: TImageList
    Left = 578
    Top = 254
    Bitmap = {
      494C01010E001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000003A000000CC330000CC990000CC270000ABAB000000
      000000000000000000000000000000000000EFEFEF00ADABA900766F6900CDC9
      C700C7C7FF008787FF008787FF008787FF008787FF008787FF00C0C0FF000000
      0000CDC9C700766F6900ADABA900EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000042000000D5380000FF990000FE580000D8A900003F30000055
      000000000000000000000000000000000000E8E8E800847F7A00A19B96000000
      00008787FF000000FF000000FF000000FF000000FF000000FF004E4ED6000000
      000000000000A19B9600847F7A00E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000042000000D13C0000FF990000FF660000D3A000004A3100006600000070
      000000000000000000000000000000000000E7E4DE0066605900CECBC8000000
      00008787FF000000FF000000FF000000FF000000FF000000FF004E4ED6000000
      000000000000CECBC80066605900E7E4DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000CE3F0000FF990000FF660000CC9900004D390000660000007000000020
      000000000000000000000000000000000000E7E4DE00524A4200EDECE800FBFA
      F8008584FC000000FF000000FF000000FF000000FF000000FF004E4ED600FBFA
      F800FBFAF800EDECE800524A4200E7E4DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000020
      0000005221000052370000521700005237000066000000660000002000000000
      000000000000000000000000000000000000E8E8E8004D453E00E7E4DE00F6F4
      EF008281F7000000FF000000FF000000FF000000FF000000FF004E4ED600F6F4
      EF00F6F4EF00E7E4DE004D453E00E8E8E8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000003A000000A3340000A3740000AF290000AC7F0000200000000000000000
      000000000000000000000000000000000000EFEFEF00605A5500BDB8AF00EEEB
      E1007E7CF0000000FF000000FF000000FF000000FF000000FF004E4ED600EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000621F000062460000621900004C4C0000000000000000000000
      000000000000000000000000000000000000000000008B87840087807600E7E3
      D500ADA9E0004E4ED6004E4ED6004E4ED6004E4ED6004E4ED6007878C000E7E2
      D500E7E2D500878076008B878400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF000000000000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E800000000000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF0051535500D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B878400048A
      1700067F1B00058919000B7A1D000C8324000D75250006841B0003851900017C
      140032A142008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D80000000000EFEFEF00ADABA900766F6900CDC9
      C7000000000000000000000000000000000000000000CCFFFF00000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F690010A6
      740015A7770015B1750021A28B00267378001B5781001EA1850018B978000FA7
      6D003BB98D00766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C700000000000000000000000000000000000000000000000000000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C700000000000000000000000000000000000000000000000000000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00E8E8E800847F7A00A19B96006264
      65000000000000000000000000000000000000000000CCFFFF00CCFFFF000000
      00000000000000000000847F7A00E8E8E800E8E8E800847F7A00A19B9600AFF0
      D900B9F3DF00BAF4DF0087CCCA00244C580069849B009BE8D100A5ECD700AEEE
      DB00BCF1DF00A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B96000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B96000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A19B9600847F7A00E8E8E800E7E4DE0066605900CECBC8006264
      6500CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF000000000066605900E7E4DE00E7E4DE0066605900CECBC800F1FB
      FF008BD3BA0094C2C30073869A0016703C006F7F9C006791AA009CC1AC00D0EF
      DB00FDFEFF00CECBC80066605900E7E4DE00E7E4DE0066605900CECBC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECBC80066605900E7E4DE00E7E4DE00524A4200EDECE8006264
      6500CCFFFF00A4A7A900A4A7A900A4A7A9009C9E9E009C9E9E009C9E9E00CCFF
      FF00CCFFFF0000000000524A4200E7E4DE00E7E4DE00524A4200EDECE800DEE8
      CA003CAD7900056C580066A5900086BC5200598C5E00446C79004C9469001A92
      3A00CEE8D200EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE800FBFA
      F8000000000000000000FBFAF800FBFAF800FBFAF800FBFAF800000000000000
      0000FBFAF800EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE800FBFA
      F8000000000000000000FBFAF800FBFAF800FBFAF800FBFAF800000000000000
      0000FBFAF800EDECE800524A4200E7E4DE00E8E8E8004D453E00E7E4DE006264
      6500CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00000000004D453E00E8E8E800E8E8E8004D453E00E7E4DE00CDCB
      950082BE8B0083AA820048CB9D0038CB7F000D945C000B893A0016782000509B
      4100EADBAD00E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE00F6F4
      EF00F6F4EF000000000000000000F6F4EF00F6F4EF000000000000000000F6F4
      EF00F6F4EF00E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE000000
      000000000000F6F4EF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00F6F4EF000000
      000000000000E7E4DE004D453E00E8E8E800EFEFEF00605A5500BDB8AF006264
      6500CCFFFF00888B8D00888B8D00888B8D00888B8D00888B8D00888B8D00888B
      8D00CCFFFF0000000000605A5500EFEFEF00EFEFEF00605A5500BDB8AF00DCC8
      920081B17C0033C48D0007D19C0000D3A700019A50001E8E2700B0BB6D00F0CC
      A300FFD5B100BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E100EEEBE100EEEBE10000000000000000000000000000000000EEEBE100EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E100EEEBE100EEEBE100EEEBE100EEEBE100EEEBE100EEEBE100EEEBE100EEEB
      E100EEEBE100BDB8AF00605A5500EFEFEF00000000008B878400878076006264
      6500CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00000000008B87840000000000000000008B87840087807600FFCD
      A100A2BC960022B07E002CCA970006CF9B0001B87E00008434006BB08B00FFCE
      A600F4D5AB00878076008B87840000000000000000008B87840087807600E7E3
      D500E7E2D500E7E2D500E7E2D5000000000000000000E7E2D500E7E2D500E7E2
      D500E7E2D500878076008B87840000000000000000008B87840087807600E7E3
      D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2
      D500E7E2D500878076008B8784000000000000000000C8C7C5005D5853006264
      6500626465006264650062646500626465006264650062646500626465006264
      65006264650062646500C8C7C5000000000000000000C8C7C5005D585300F7CB
      9D00E5CBA200C7C089009CBB86004FBE8A002DAA79005C997900ADBC9300F1C8
      9800EBD2A6005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A00FAD4
      A200FAD4A600FFD5A800EFCFA300E5CDA100DDCCA000F2CBA700FFD5A700F8D2
      A300FADCB6009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00E8E8E800E7E4DE00E7E4DE00E8E8E800EFEFEF000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF00000000000000000000000000000000000000000000000000EFEF
      EF00D8D8D800BDBDBD00ADABA900A7A7A700A7A7A700ADABA900BDBDBD00D8D8
      D800EFEFEF000000000000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C5009B9896007E797400716961006A6258006A625800716961007E7974009B98
      9600C8C7C500E8E8E80000000000000000000000000000000000E8E8E800C8C7
      C500999999009999990099999900999999009999990099999900999999009999
      99009999990099999900000000000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5008680
      79007C756D00A9A39D00D4D1CE00EFEFEF00EFEFEF00D4D1CE00A9A39D007C75
      6D0086807900C8C7C500EFEFEF000000000000000000EFEFEF00C8C7C5009F77
      4D00926E4A00926E4A008F6A44008F6A4400876541008C65390086613B008661
      3B00815E330099999900EFEFEF000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B8784008680
      7900CECBC800000000000000000000000000000000000000000000000000CECB
      C800868079008B878400D8D8D8000000000000000000D8D8D8008B878400A581
      5900FAEED600FAEED600FAEED600D8C4A100D8C4A100E8D3AD00E4CDAD00F9E5
      BC0086613B0099999900D8D8D80000000000EFEFEF00ADABA900766F6900CDC9
      C700000000000000000028282800848484000000000000000000000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C700000000000000000000000000000000000000000000000000000000000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900CDC9
      C70000000000BEBEFF00F6F6FF000000000000000000C9C9FF00C0C0FF000000
      0000CDC9C700766F6900ADABA900EFEFEF00EFEFEF00ADABA900766F6900AB86
      6000FCF1DB00FCF1DB00000000008499A1008A847700AD906B00C9AF8B00C9AF
      8B008B66400099999900ADABA900EFEFEF00E8E8E800847F7A00A19B96000000
      000000000000000000001C1C8600232323009494940000000000000000000000
      000000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B96000000
      0000000000000000000000000000000000008787870000000000000000000000
      000000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B9600F6F6
      FF008A8AFF002C2CFF00E8E8FF0000000000000000008C8CFF000D0DFF00B6B6
      FF0000000000A19B9600847F7A00E8E8E800E8E8E800847F7A00A19B9600AB86
      6000FEF5E700FEF5E7008DC6CF000000000033BCD6000066CC00CDB38F00CDB3
      8F008F6A440099999900847F7A00E8E8E800E7E4DE0066605900CECBC8000000
      000000000000000000001515FD000505CA0026262600A8A8A800000000000000
      000000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC8000000
      000000000000000000000000000085858500E916160084848400000000000000
      000000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC800E8E8
      FF003D3DFF001717FF003939FF00CBCBFF005E5EFF000202FF005C5CFF00A9A9
      FF0000000000CECBC80066605900E7E4DE00E7E4DE0066605900CECBC800AF8A
      6400FEF5E700FEF5E700CBDED5007FFFFE0033CCFF0033BCD6000066CC00C8B2
      8F00825529009999990066605900E7E4DE00E7E4DE00524A4200EDECE8000000
      0000F5F5FE00FCFCFE001414FC000000FB000303D60038383800DEDEDE00F4F4
      F500F4F4F400EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE8000000
      0000F5F5FE00FCFCFE0083838300F40B0B00FF000000F20D0D0084848400F4F4
      F500F4F4F400EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE8000000
      0000F5F5FE00DEDEFF002D2DFF000303FF000D0DFF00BEBEFF00F4F4F500F4F4
      F500F4F4F400EDECE800524A4200E7E4DE00E7E4DE00524A4200EDECE800B38F
      6700FFF8EF00FFF8EF00FEF5E700089BC3007FFFFE0033CCFF0033BCD6000066
      CC0070410D0099999900524A4200E7E4DE00E8E8E8004D453E00E7E4DE00EEEB
      E100E9E7E400ECE9E3001313FB000000FF001313FD001414EB00E7E4E400E7E4
      E300E7E4E200E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE00EEEB
      E100B7B7B70085858500E6181800FF000000FF000000FF000000FC0303008484
      8400E7E4E200E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE00EEEB
      E100E9E7E400ECE9E3004444F8000808FF000D0DFF003E3EF800E7E4E400E7E4
      E300E7E4E200E7E4DE004D453E00E8E8E800E8E8E8004D453E00E7E4DE00B692
      6A00FFF8EF00FFF8EF00FFF8EF00FEF5E700089BC30084FDFF0033CCFF0033BC
      D6000066CC00999999004D453E00E8E8E800EFEFEF00605A5500BDB8AF00EEEB
      E100EEEBE100EEEBE1001313FD001313FD001313FD00EEEBE100E9E6E200E7E4
      E300EDEAE200BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E100CCCCCC00D42A2A00FF000000FF000000FF000000FF000000FF000000FF00
      0000EDEAE200BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00EEEB
      E100EEEBE1006D6CF2001616FD00BDBBE8009795ED001D1CFC006967F300E6E3
      E400EDEAE200BDB8AF00605A5500EFEFEF00EFEFEF00605A5500BDB8AF00BB94
      6D00FDFAF600FDFAF600FDFAF600FFF8EF00E5D3BC00089BC3007FFFFE0033CC
      FF0033BCD6000066CC00605A5500EFEFEF00000000008B87840087807600E7E3
      D500E7E2D500E7E2D5002625F6001312F700E7E2D500E7E2D500E7E2D500E7E2
      D500E7E2D500878076008B87840000000000000000008B87840087807600E7E3
      D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2D500E7E2
      D500E7E2D500878076008B87840000000000000000008B87840087807600E7E3
      D5006D6BED000101FF00A39FE200E7E2D500E7E2D500706DEB000303FF00CCC7
      DB00E7E2D500878076008B87840000000000000000008B87840087807600BB94
      6D000000000000000000FDFAF600FDFAF600E1D0BB00E1D0BB00089BC30084FD
      FF0033CCFF0033BCD6000066CC000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC8002524F600E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DAC800E0DA
      C800ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300ABA5
      9600CFCACD00BBB6D200E0DAC800E0DAC800E0DAC800DED8C900A29DD800D8D2
      CA00ABA596005D585300C8C7C5000000000000000000C8C7C5005D585300BA98
      740000000000000000000000000000000000E1D0BB00FDFAF600F1D5B200089B
      C3007FFFFE0033CCFF002F89AB00583C350000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A005F58
      4D00A69F8E00EDEADF00F6F4EF00F6F4EF00F6F4EF00F6F4EF00EDEADF00A69F
      8E005F584D009F9C9A00000000000000000000000000000000009F9C9A00BD9B
      700000000000000000000000000000000000E5D3BC00F1D5B200C7AA7E00D2BF
      AA00089BC300089BC300FF990000FFB95C00000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000A19E
      9C005B554E0079716300A69F8E000000000000000000A69F8E00797163005B55
      4E00A19E9C00000000000000000000000000000000000000000000000000BD9A
      6F00BD9A6F00BA987400BA987400BB946D00BB946D00BB946D00B1B6B5000000
      00000000000097704A0000000000A06FA7000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC008F8C88005D5853003D3630003D3630005D5853008F8C8800CCCC
      CC00000000000000000097704A00E9AAF4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDFDF0087878700DADADA00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDFDF0087878700DADADA00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C0065656500FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C0065656500FDFDFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C2C20085858500E916160084848400DADADA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C2C20090907900FDE6020089897F00DADADA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D7E001919190074747400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808042002828160074747400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C2C2C20083838300F40B0B00FF000000F20D0D0084848400D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      000000000000C2C2C200ACAC5800FFCD0000FFC10000FFF10000A1A16500D6D6
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC000505CA001B1B1B0088888800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFC00FFFF0000AAAA44001B1B1B0088888800FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000B7B7B70085858500E6181800FF000000FF000000FF000000FC0303008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000B7B7B700A4A46400FCD70300FFE80000FFDF0000FFD90000FFE700008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FB000000FB000303D6001E1E1E00DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFA00ECEC1300FFFF0000ABAB47001E1E1E00DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC00D42A2A00FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC00FEF80100FFF00000FFF10000FFE00000FFE00000FFE50000FFE9
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FD000000FF000000FF000202EB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFF700E5E51A00FCFC0300F4F40B009D9D5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFDD00FFFFD500FFFFC400FFFFD600FFFFD300FFFFCD00FFFF
      D900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F90600F9F90600F1F10E00FFFFD7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC000000FA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFE0100E7E71800FFFFE000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DADA2500FFFFBE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF81F00000000FFFFE00700000000
      FFFFC00300000000FFFF800100000000FE1F87E100000000FC0F001000000000
      F807101800000000F007101800000000E00F000000000000E01F000000000000
      F03F000000000000F87F800100000000FFFF800100000000FFFFC00300000000
      FFFFE18700000000FFFFF00F00000000F81FF81FF81FF81FE007E007E007E007
      C003C003C003C00380018001800180018721800187E187E10F1000000FF00E70
      000000001FF81C380000000007E0199800000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E187E187E187E187F00FF00FF00FF00FF81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800187E187E187E180010CF00FF009900000
      1C781F78018801001C381E380008000010001000100000000000000000000000
      00000000000000008001800180018C018001800180018F00C003C003C003CF00
      E187E187E187E01AF00FF00FF00FF00CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFE1FFE3FFE3FFC0FFC0FFE3FFE3F
      F80FF80FFE0FFC0FF00FF00FFE0FFC0FF00FF00FFE1FFC1FFFFFF80FFE3FFE1F
      FFFFFFFFFE7FFE3FFFFFFFFFFEFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu_menu: TPopupMenu
    Images = ImageList_menuweb
    Left = 546
    Top = 255
    object Adicionarmdulo1: TMenuItem
      Caption = 'Adicionar m'#243'dulo'
      ImageIndex = 4
    end
    object Adicionarmenu1: TMenuItem
      Caption = 'Adicionar menu'
      ImageIndex = 5
    end
    object Removeritem1: TMenuItem
      Caption = 'Remover item'
      ImageIndex = 6
    end
    object Limpar1: TMenuItem
      Caption = 'Limpar menu'
      ImageIndex = 13
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Alterartexto1: TMenuItem
      Caption = 'Alterar texto'
      ImageIndex = 7
    end
    object EditarHint1: TMenuItem
      Caption = 'Editar Hint'
      ImageIndex = 8
    end
    object Alterarcone1: TMenuItem
      Caption = 'Alterar '#237'cone'
      ImageIndex = 9
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Moverparacima1: TMenuItem
      Caption = 'Mover para cima'
      ImageIndex = 10
    end
    object Moverparabaixo1: TMenuItem
      Caption = 'Mover para baixo'
      ImageIndex = 11
    end
  end
  object XPManifest1: TXPManifest
    Left = 610
    Top = 255
  end
  object Timer_traduz: TTimer
    Enabled = False
    OnTimer = Timer_traduzTimer
    Left = 244
    Top = 118
  end
  object Tradutor1: TTradutor
    AoTraduzir = Tradutor1AoTraduzir
    Left = 280
    Top = 120
  end
end
