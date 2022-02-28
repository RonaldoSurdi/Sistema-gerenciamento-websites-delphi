object adm_edtpmn: Tadm_edtpmn
  Left = 339
  Top = 244
  ActiveControl = lbcp2
  BorderStyle = bsNone
  ClientHeight = 293
  ClientWidth = 452
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 12
  object pn_status: TPanel
    Left = 0
    Top = 276
    Width = 452
    Height = 17
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14540253
    TabOrder = 0
    object Image4: TImage
      Left = 1
      Top = 1
      Width = 446
      Height = 11
      Align = alClient
      Stretch = True
    end
  end
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 20
    Align = alTop
    Color = 14540253
    TabOrder = 1
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 450
      Height = 18
      Align = alClient
      Stretch = True
      OnMouseDown = FormMouseDown
    end
    object bt_fechar: TSpeedButton
      Left = 435
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
      Left = 421
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
      Width = 116
      Height = 13
      Cursor = crHandPoint
      Hint = 'Website'
      Alignment = taCenter
      Caption = 'Fomata'#231#227'o do menu'
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 452
    Height = 256
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
    TabOrder = 2
    object Panel3: TPanel
      Left = 2
      Top = 221
      Width = 444
      Height = 29
      Align = alBottom
      BevelInner = bvLowered
      Color = 16119285
      TabOrder = 0
      object ToolBar1: TToolBar
        Left = 157
        Top = 2
        Width = 285
        Height = 25
        Align = alRight
        Caption = 'ToolBar1'
        EdgeBorders = []
        TabOrder = 0
        object bt_new: TSpeedButton
          Left = 0
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
          OnClick = bt_newClick
        end
        object bt_del: TSpeedButton
          Left = 88
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
          OnClick = bt_delClick
        end
        object bt_save: TSpeedButton
          Left = 176
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
          OnClick = bt_saveClick
        end
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 444
      Height = 219
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 1
    end
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 2
      Width = 444
      Height = 219
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 2
      object Panel2: TPanel
        Left = -1
        Top = 0
        Width = 428
        Height = 451
        BevelOuter = bvNone
        Color = 16119285
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 9
          Top = 296
          Width = 67
          Height = 12
          Caption = 'Observa'#231#245'es'
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
        object lbcp2: TLabeledEdit
          Left = 8
          Top = 62
          Width = 413
          Height = 20
          EditLabel.Width = 51
          EditLabel.Height = 12
          EditLabel.Caption = 'Descri'#231#227'o'
          MaxLength = 255
          TabOrder = 2
        end
        object chk_private: TCheckBox
          Left = 12
          Top = 275
          Width = 145
          Height = 17
          Caption = 'Publicar na lista p'#250'blica'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 88
          Width = 413
          Height = 118
          Caption = 'Formata'#231#227'o de texto'
          TabOrder = 3
          object Label1: TLabel
            Left = 10
            Top = 14
            Width = 72
            Height = 12
            Caption = 'Nome da fonte'
          end
          object Label2: TLabel
            Left = 192
            Top = 14
            Width = 46
            Height = 12
            Caption = 'Tamanho'
          end
          object lbcp3: TComboBox
            Left = 8
            Top = 28
            Width = 182
            Height = 20
            ItemHeight = 12
            TabOrder = 0
            Text = 'Arial'
            OnChange = lbcp3Change
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
          object lbcp4: TEdit
            Left = 191
            Top = 28
            Width = 56
            Height = 20
            TabOrder = 1
            Text = '12'
            OnChange = lbcp4Change
            OnKeyPress = NumKeyPress
          end
          object UpDown1: TUpDown
            Left = 247
            Top = 28
            Width = 16
            Height = 20
            Associate = lbcp4
            Min = 5
            Max = 50
            Position = 12
            TabOrder = 2
          end
          object ToolBar4: TToolBar
            Left = 263
            Top = 26
            Width = 145
            Height = 22
            Align = alNone
            AutoSize = True
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
            object Panel6: TPanel
              Left = 4
              Top = 0
              Width = 13
              Height = 22
              BevelInner = bvLowered
              Color = 16119285
              TabOrder = 1
              object pn_corfont: TYusoftGradientButton
                Left = 2
                Top = 2
                Width = 10
                Height = 18
                Hint = 'Cor da fonte'
                LightColor = clBlack
                ShadowColor = clBlack
                GrayedInactive = True
                Layout = blGlyphTop
                Down = False
                GroupIndex = 0
                AllowAllUp = False
                MarkDropDown = False
                Vertical = True
                WindowCaption = False
                OnClick = pn_corfontClick
                ShowHint = True
                ParentShowHint = False
              end
            end
            object corfonte: TToolButton
              Left = 17
              Top = 0
              Caption = 'Cor da fonte'
              ImageIndex = 0
              MenuItem = Cordafonte1
            end
            object Panel5: TPanel
              Left = 40
              Top = 0
              Width = 13
              Height = 22
              BevelInner = bvLowered
              Color = 16119285
              TabOrder = 0
              object pn_corfundo: TYusoftGradientButton
                Left = 2
                Top = 2
                Width = 10
                Height = 18
                Hint = 'Cor da fonte'
                LightColor = clWhite
                ShadowColor = clWhite
                GrayedInactive = True
                Layout = blGlyphTop
                Down = False
                GroupIndex = 0
                AllowAllUp = False
                MarkDropDown = False
                Vertical = True
                WindowCaption = False
                OnClick = pn_corfundoClick
                ShowHint = True
                ParentShowHint = False
              end
            end
            object corfundo: TToolButton
              Left = 53
              Top = 0
              Caption = 'Cor do fundo'
              ImageIndex = 4
              MenuItem = Cordofundo1
            end
            object BoldButton: TToolButton
              Left = 76
              Top = 0
              Caption = 'Negrito'
              ImageIndex = 1
              MenuItem = Negrito1
              Style = tbsCheck
            end
            object ItalicButton: TToolButton
              Left = 99
              Top = 0
              Caption = 'It'#225'lico'
              ImageIndex = 2
              MenuItem = Italico1
              Style = tbsCheck
            end
            object UnderlineButton: TToolButton
              Left = 122
              Top = 0
              Caption = 'Sublinhado'
              ImageIndex = 3
              MenuItem = Sublinhado1
              Style = tbsCheck
            end
          end
          object RichEdit1: TRichEdit
            Left = 2
            Top = 50
            Width = 409
            Height = 66
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'Texto exemplo'
              '0123456789 abcdefghijlmnopquvxyz'
              'ABCDEFGHIJLMNOPQUVXYZ')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 4
          end
        end
        object lbcp6: TMemo
          Left = 8
          Top = 310
          Width = 413
          Height = 137
          ScrollBars = ssBoth
          TabOrder = 6
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 208
          Width = 413
          Height = 60
          Caption = 'Fundo do menu'
          TabOrder = 4
          object SpeedButton1: TSpeedButton
            Left = 351
            Top = 31
            Width = 57
            Height = 22
            Hint = 'Cor de fundo'
            Caption = 'Cor'
            Flat = True
            Glyph.Data = {
              0E060000424D0E06000000000000360000002800000016000000160000000100
              180000000000D8050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF963204963204
              963204BBBBBBBBBBBBBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFA295
              5605E4E405E4E4963204A29556963204BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFA2955600FFFF05E4E4963204708248963204BBBBBBBBBBBBFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA29556963204F8EEBCCBDDB48B96719632049632
              04BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74630FFBFCFAA5F7FAF8EEBC9889438B
              9671708248963204BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74630FFFFFFF988943
              F8EEBCCBDDB48B9671708248963204BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7463
              0FFFFFFF67F1F6F8EEBCCBDDB48B9671708248963204BBBBBBFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF74630FFFFFFFA5F7FA67F1F6F8EEBCCBDDB48B9671708248963204BBBBBB
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF74630FFFFFFFA5F7FA67F1F6F8EEBCCBDDB48B96717082
              48963204BBBBBBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74630FFFFFFFA5F7FA67F1F6F8EEBCCB
              DDB48B9671708248963204FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA29556FFFFFFA5F7FA
              67F1F6F8EEBCCBDDB48B9671963204FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA295
              56FFFFFFA5F7FA67F1F6F8EEBC8B9671963204FFFFFFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFA29556FFFFFFFFFFFFA5F7FAA29556FFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA29556A29556A29556FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object Label5: TLabel
            Left = 66
            Top = 36
            Width = 13
            Height = 12
            Caption = 'Kb'
          end
          object bt_localiza1: TSpeedButton
            Left = 84
            Top = 31
            Width = 83
            Height = 22
            Hint = 'Localizar arquivo e importar'
            Caption = 'Localizar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_localiza1Click
          end
          object bt_limpar1: TSpeedButton
            Left = 168
            Top = 31
            Width = 74
            Height = 22
            Hint = 'Limpar evento'
            Caption = 'Limpar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_limpar1Click
          end
          object bt_reproduzir1: TSpeedButton
            Left = 243
            Top = 31
            Width = 93
            Height = 22
            Hint = 'Reproduzir arquivo'
            Caption = 'Reproduzir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
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
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = bt_reproduzir1Click
          end
          object Panel7: TPanel
            Left = 337
            Top = 31
            Width = 13
            Height = 22
            BevelInner = bvLowered
            Color = 16119285
            TabOrder = 1
            object pn_corfundo2: TYusoftGradientButton
              Left = 2
              Top = 2
              Width = 10
              Height = 18
              Hint = 'Cor da fonte'
              LightColor = clWhite
              ShadowColor = clWhite
              GrayedInactive = True
              Layout = blGlyphTop
              Down = False
              GroupIndex = 0
              AllowAllUp = False
              MarkDropDown = False
              Vertical = True
              WindowCaption = False
              OnClick = pn_corfundo2Click
              ShowHint = True
              ParentShowHint = False
            end
          end
          object lbcp5: TLabeledEdit
            Left = 9
            Top = 33
            Width = 52
            Height = 20
            Color = 16119285
            EditLabel.Width = 86
            EditLabel.Height = 12
            EditLabel.Caption = 'Imagem de fundo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            MaxLength = 255
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object GroupBox_upsk: TGroupBox
          Left = 192
          Top = 8
          Width = 225
          Height = 49
          Caption = 'Aviso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 205
            Height = 25
            AutoSize = False
            Caption = 'Alterar autoridade sobre o registro para o skin atual?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object rb_sk1: TRadioButton
            Left = 107
            Top = 30
            Width = 49
            Height = 17
            Caption = 'sim'
            TabOrder = 0
          end
          object rb_sk2: TRadioButton
            Left = 160
            Top = 30
            Width = 49
            Height = 17
            Caption = 'n'#227'o'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
        end
      end
    end
    object pn_flash: TPanel
      Left = 2
      Top = 2
      Width = 444
      Height = 250
      BevelInner = bvLowered
      Color = clBlack
      TabOrder = 3
      Visible = False
      object swf_logo: TShockwaveFlash
        Left = 2
        Top = 2
        Width = 440
        Height = 246
        Align = alClient
        TabOrder = 0
        ControlData = {
          67556655000300007A2D00006D19000008000200000000000800020000000000
          080002000000000008000E000000570069006E0064006F00770000000B00FFFF
          0B00FFFF08000A0000004800690067006800000008000200000000000B00FFFF
          080002000000000008000E00000061006C007700610079007300000008001000
          0000530068006F00770041006C006C0000000B0000000B000000080002000000
          0000080002000000000008000200000000000D00000000000000000000000000
          000000000B000100}
      end
      object Panel4: TPanel
        Left = 419
        Top = 0
        Width = 26
        Height = 25
        BevelInner = bvLowered
        Color = 16119285
        TabOrder = 1
        object bt_closeflash: TSpeedButton
          Left = 2
          Top = 2
          Width = 23
          Height = 22
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
          OnClick = bt_closeflashClick
        end
      end
    end
  end
  object PopupMenu_texto: TPopupMenu
    Images = ToolbarImages
    OwnerDraw = True
    Left = 216
    Top = 36
    object Negrito1: TMenuItem
      Caption = 'Negrito'
      ImageIndex = 1
      OnClick = Negrito1Click
    end
    object Italico1: TMenuItem
      Caption = 'It'#225'lico'
      ImageIndex = 2
      OnClick = Italico1Click
    end
    object Sublinhado1: TMenuItem
      Caption = 'Sublinhado'
      ImageIndex = 3
      OnClick = Sublinhado1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cordafonte1: TMenuItem
      Caption = 'Cor da fonte'
      ImageIndex = 0
      OnClick = Cordafonte1Click
    end
    object Cordofundo1: TMenuItem
      Caption = 'Cor do fundo'
      ImageIndex = 4
      OnClick = Cordofundo1Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 245
    Top = 39
  end
  object ColorDialog1: TColorDialog
    Left = 296
    Top = 36
  end
  object ToolbarImages: TImageList
    Left = 272
    Top = 36
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A295
      560005E4E40096320400A2955600BBBBBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0005E4E4009632040096320400BBBBBB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A295560096320400F8EEBC008B96710096320400BBBBBB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000074630F0000000000F8EEBC00CBDDB4007082480096320400BBBB
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000074630F0067F1F600F8EEBC008B967100708248009632
      0400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5F7FA00F8EEBC00CBDDB4008B96
      710096320400BBBBBB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000074630F000000000067F1F600F8EEBC00CBDD
      B400708248009632040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2955600A5F7FA0067F1F600F8EE
      BC008B9671009632040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2955600000000000000
      0000A29556000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2955600A295
      5600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000106BCE00005AB5000029940000217B008CC6
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006BB5F7006BB5F7006BB5F7006BB5F700005A
      B5008CC6FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000106BCE00E7E700006BD6FF006BD6FF005252
      FF006BB5F70000217B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD006BB5F700E7E700008CDEFF007384FF000000
      DE004AD6F700005AB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00106BCE00106BCE00BDEFF700ADE7FF008CDEFF00ADADFF006BD6
      FF004AD6F700005AB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094085A0094085A00EFFFFF00BDEFF70029EF290029EF2900009C
      10006BD6FF00106BCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094085A009C184200BDBDBD00CEF7F700ADE7FF009CDEFF00087B
      08008CC6FF00398CDE0000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900FFFFFF00F7FFFF0000000000BDEFF7008CC6
      FF008CC6FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900FFFFFF00FFFFFF00EFFFFF00398CDE00398C
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5313900B5313900398CDE00398CDE00398CDE008CC6FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6521800BDBD
      BD00BDBDBD00D6521800D6521800BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6521800D652
      1800D6521800D6521800D6521800D6521800D652180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      C003000000000000C003000000000000E0FF000000000000F07F000000000000
      F03F000000000000FA0F000000000000FC0F000000000000FF03000000000000
      FE83000000000000FF03000000000000FFB7000000000000FFCF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FE0FFFFFFFFFFFFFFE07FFFFFFFFFFFFFE03FFFFFFFFFFFFFC03F19FF87FF87F
      F003F99FFE7FF93FF803F91FFE7FFE3FF803F81FFE7FFE7FF807F81FFF3FF9BF
      F80FF89FFF9FF93FF81FF18FFF0FFC3FC03FFFFFFFFFFFFFC07FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Todos os arquivos [*.swf,*.jpg]|*.swf;*.jpg|Flash [*.swf]|*.swf|' +
      'Imagem JPEG [*.jpg]|*.jpg'
    Title = 'Importar arquivo multimedia'
    Left = 331
    Top = 36
  end
end
