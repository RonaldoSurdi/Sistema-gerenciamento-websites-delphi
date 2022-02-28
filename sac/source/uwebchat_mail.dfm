object webchat_mail: Twebchat_mail
  Left = 788
  Top = 140
  AutoScroll = False
  Caption = 'Enviar e-mail'
  ClientHeight = 611
  ClientWidth = 830
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
  PrintScale = poNone
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 592
    Width = 830
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 830
    Height = 592
    ActivePage = TabSheet7
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet4: TTabSheet
      Caption = 'Gerenciamento'
      object Splitter3: TSplitter
        Left = 267
        Top = 0
        Height = 561
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 267
        Height = 561
        Align = alLeft
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        object Splitter5: TSplitter
          Left = 0
          Top = 488
          Width = 267
          Height = 6
          Cursor = crVSplit
          Align = alBottom
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 267
          Height = 488
          Align = alClient
          Caption = 'Mensagens:'
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 107
            Width = 263
            Height = 269
            Align = alClient
            Color = clWhite
            FixedColor = 15066597
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
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
          object TreeView_msg: TTreeView
            Left = 2
            Top = 15
            Width = 263
            Height = 92
            Align = alTop
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Images = ImageList_msg
            Indent = 19
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            OnChange = TreeView_msgChange
            Items.Data = {
              04000000270000000000000001000000FFFFFFFFFFFFFFFF0000000000000000
              0E4361697861206465205361ED64612C0000000000000001000000FFFFFFFFFF
              FFFFFF0000000000000000134D656E736167656E73204167656E646164617321
              0000000000000001000000FFFFFFFFFFFFFFFF000000000000000008456E7669
              61646173200000000000000001000000FFFFFFFFFFFFFFFF0000000000000000
              074C697865697261}
          end
          object ToolBar13: TToolBar
            Left = 2
            Top = 419
            Width = 263
            Height = 43
            Align = alBottom
            ButtonHeight = 37
            Caption = 'ToolBar13'
            TabOrder = 2
            object BitBtn1: TBitBtn
              Left = 0
              Top = 2
              Width = 87
              Height = 37
              Hint = 'Atualizar lista de Mensagens'
              Caption = 'Atualizar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = BitBtn1Click
              Glyph.Data = {
                EE000000424DEE0000000000000076000000280000000F0000000F0000000100
                04000000000078000000120B0000120B00001000000000000000FFFFFF00CCFF
                FF00E3E3E300C0C0C000FFFF0000B2B2B20099CC6600CC999900999999009696
                9600996666005F5F5F0011111100FFFFFF000000000000000000000000000000
                0000000000000000000000000000009AA700000000000CB6750000000068C640
                A000000000C8400A00000000008004C0000000000008004C0000000008AC8004
                A0000006ACA6406A600000007004A6A10000000007004C0000000003ACA004C0
                000000AC8444677000000764446700000000}
            end
            object BitBtn3: TBitBtn
              Left = 87
              Top = 2
              Width = 87
              Height = 37
              Hint = 'Excluir mensagem'
              Caption = 'Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = BitBtn3Click
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
            end
            object BitBtn4: TBitBtn
              Left = 174
              Top = 2
              Width = 87
              Height = 37
              Hint = 'Editar mensagem selecionada'
              Caption = 'Editar'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              Visible = False
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
            end
          end
          object ToolBar19: TToolBar
            Left = 2
            Top = 462
            Width = 263
            Height = 24
            Align = alBottom
            ButtonHeight = 16
            Caption = 'ToolBar19'
            TabOrder = 3
            object CheckBox3: TCheckBox
              Left = 0
              Top = 2
              Width = 241
              Height = 16
              Caption = 'Atualizar automaticamente.'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = CheckBox3Click
            end
          end
          object ToolBar15: TToolBar
            Left = 2
            Top = 376
            Width = 263
            Height = 43
            Align = alBottom
            ButtonHeight = 37
            Caption = 'ToolBar13'
            TabOrder = 4
            object BitBtn2: TBitBtn
              Left = 0
              Top = 2
              Width = 262
              Height = 37
              Hint = 'Atualizar lista de Mensagens'
              Caption = 'Enviar mala-direta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BitBtn2Click
              Glyph.Data = {
                F6070000424DF6070000000000003604000028000000200000001E0000000100
                080000000000C0030000120B0000120B000000010000DC000000FFFFFF00FFFE
                FE00FEFEFE00FFFFFE00FFFEFD00FEFEFC00FEFEFB00FEFDFA00FCFCFC00FDFC
                F800FAFAFA00F9F9F900FCFAF200FDFAF300F8F8F800FCF9F100FCF9EF00F7F7
                F700F6F6F600F5F5F500FBF8EC00F3F3F300FFF4EA00F2F2F200EEEEEE00ECEC
                EC00E9E9E900E5E5E500FDE9D000E0E0E000F8E7C400F2E5C200FAE2C300F1E4
                BB00DCDCDC00FCE0C400F9E1C100E0DDD600FADFC100FBDFC000F8DFBB00D9D9
                D900F6E0B500FADDBE00D7D7D700EEDFB100FAD9B900F5DCAE00F5DBAB00F9D8
                B400F7D7AF00ECDAA800EBDAA700F7D6AE00ECD9A700F9D4B100ECD9A100F4D8
                A400F7D4AC00EBD79B00EAD69C00F7D1AA00F3D59F00EAD69900F5D0A800E9D5
                9800F6D0A500F5CCA700E8D49200ECD29100F4CEA000E9D39100F3CF9900F3CC
                A500F3CAA500F2CC9D00F2CC9C00F6C8A300C2C2C200C1C1C100C5C2B800F3C5
                A000F0C69900F0C69A00F3C39900BFBEBC00F4C39800F0C29600F0C58A00F4C0
                9500F0C28600FBBD9300F5BE9100F0BF8F00E7C77900F1BE8E00B6B6B600F2BD
                8C00F1C08000E7C47200B5B5B200E1C37100DFC26E00E6C26E00E6C16E00F0BC
                7F00E6BF6C00D0BC7900F0B97A00E1BF5B00E6BC6700F2B57500DEBD5900DEBD
                5B00E5BA6300EFB57200AAA9A900E3B75F00ABA8A000ABA8A100A9A7A000A9A7
                9F00E1B45C00A9A69F00A4A4A300A8A59E00E1B25900A6A49C00C0AD6F00DCB5
                4A00A2A2A100A2A19E00A5A29B00E1B05600C2AC6800A3A19900E4AF5000E2AE
                5400DCB24400E7AC5600B7A67200BCA76C009B9B9900B6A47100B4A47400E4AB
                4C00DBAF3D00B8A56700B9A4650099999700B6A36B00D8AC40009A999600D7AB
                3F00A39B8100DAAB3D00D8AC3A00A59B8100D8AC3400DAAB3600A99C7800D8AC
                3300D8A83900DDA6360091909000D5A72C00D7A433008F8F8E00D8A22F00D3A6
                2100D3A61F00D8A22400D8A22800D89E2900D7A02000D69D240087878700D29E
                2200CEA11A00D0A1120085858500CE9F0E00CA9D1700C99C1600C99C1500CD9B
                1500C99C1400C89C1400CA9C1000C89B1400C9961300C7951100CB990300CB96
                0800C7940F00C9950800C8940600C8920B00C7940300C7930300C9930500C892
                0500C9930000C5910700C8930000C7910000C8910100C7910100C8920000C891
                0000C7920000CA910200C8900000C790010073737300C78D0200C68C00007272
                7200C48B0000C48A000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000822290A0000000000000000000000000000000000000000000000000000
                000013B4D64E0B00000000000000000000000000000000000000000000000000
                0000138E9A9A550E000000000000000000000000000000000000000000000000
                00001277C0D89064110000000000000000000000000000000000000000000000
                00001279BCD4D496741500000000000000000000000000000000000000000000
                0000127BB6CACABF947C18000000000000000000000000000000000000000000
                0000127BB7CCA3ADC693821A0000000000000000000000000000000000000000
                0000127BB8CC8B6FAFD28F831B00000000000000000000000000000000000000
                0000127BB8CC915B73AECD8C981D000000000000000000000000000000000000
                0000127BBAD0885C616CABCB8DA72C190A000000000000000000000000000000
                0000127BBAD089595F5F69ACC286A4B04F0E0000000000000000000000000000
                0000127BBAD085545D5D5662A8C76B95D9600200000000000000000000000000
                0000127BBAD07E515757574D5AA6D080A0500200000000000000000000000000
                0000127BBAD07A4A5352525243589FB1D3660F00000000000000000000000000
                0000127DBAD075404B4C4C4C4C463D499BDA7003000000000000000000000000
                0000127DBAD0723742424242424231318ADB7103000000000000000000000000
                0000127DBBD06E2E3A3A3A3A2E4892A5C1650C00000000000000000000000000
                0000127DBDD16A2B353535233EA2CF411F100000000000000000000000000000
                0000127FBDD168263232273999C8440400000000000000000000000000000000
                0000127DBDD167202824309CBE47030000000000000000000000000000000000
                00001278BDD1631C1C2FA1C53C01000000000000000000000000000000000000
                00001276BDD15E162A9ED5340700000000000000000000000000000000000000
                00001287BDCE451E97D533060000000000000000000000000000000000000000
                00001784B2D06D81C43B04000000000000000000000000000000000000000000
                00000B25A9CACAB93F0000000000000000000000000000000000000000000000
                0000000DAAD1C338030000000000000000000000000000000000000000000000
                0000000DB3D72D05000000000000000000000000000000000000000000000000
                00000014B5360600000000000000000000000000000000000000000000000000
                0000000921050000000000000000000000000000000000000000}
            end
          end
        end
        object GroupBox6: TGroupBox
          Left = 0
          Top = 494
          Width = 267
          Height = 67
          Align = alBottom
          Caption = 'Informa'#231#245'es:'
          TabOrder = 1
          object Label4: TLabel
            Left = 2
            Top = 15
            Width = 7
            Height = 50
            Align = alLeft
            AutoSize = False
            Caption = 
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object Memo1: TMemo
            Left = 9
            Top = 15
            Width = 256
            Height = 50
            TabStop = False
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 270
        Top = 0
        Width = 552
        Height = 561
        Align = alClient
        Caption = 'Visualizar Mensagem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object WebBrowser2: TWebBrowser
          Left = 2
          Top = 15
          Width = 548
          Height = 544
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          ControlData = {
            4C000000A3380000393800000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126202000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Enviar mala-direta'
      ImageIndex = 3
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 822
        Height = 508
        ActivePage = TabSheet12
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        OnChange = PageControl3Change
        object TabSheet12: TTabSheet
          Caption = 'Destinat'#225'rios'
          ImageIndex = 3
          object Splitter1: TSplitter
            Left = 425
            Top = 0
            Height = 473
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 425
            Height = 473
            Align = alLeft
            Caption = 'Selecione os Destinat'#225'rios:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Panel2: TPanel
              Left = 2
              Top = 64
              Width = 421
              Height = 174
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object Bevel1: TBevel
                Left = 8
                Top = 127
                Width = 405
                Height = 9
                Shape = bsTopLine
              end
              object Label5: TLabel
                Left = 9
                Top = 143
                Width = 172
                Height = 20
                Caption = 'Cat'#225'logos adicionais:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 182
                Top = 146
                Width = 233
                Height = 16
                Caption = '(nenhum cat'#225'logo adicional importado)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                Visible = False
              end
              object CheckBox_op3: TCheckBox
                Left = 8
                Top = 64
                Width = 201
                Height = 24
                Caption = 'NewsLetter'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object CheckBox_op2: TCheckBox
                Left = 8
                Top = 34
                Width = 273
                Height = 24
                Caption = 'Usu'#225'rios Web (VIP/F'#227'-Clube)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object CheckBox_op1: TCheckBox
                Left = 8
                Top = 4
                Width = 193
                Height = 24
                Caption = 'Intranet'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object CheckBox_op4: TCheckBox
                Left = 8
                Top = 94
                Width = 177
                Height = 24
                Caption = 'Cat'#225'logo Website'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
            object Panel3: TPanel
              Left = 2
              Top = 238
              Width = 421
              Height = 233
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 25
                Height = 233
                Align = alLeft
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
              end
              object CheckBox_op5select: TCheckListBox
                Left = 25
                Top = 0
                Width = 396
                Height = 233
                Align = alClient
                AutoComplete = False
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ItemHeight = 20
                ParentFont = False
                TabOrder = 1
              end
            end
            object ToolBar18: TToolBar
              Left = 2
              Top = 18
              Width = 421
              Height = 46
              ButtonHeight = 38
              EdgeBorders = []
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              object SpeedButton51: TSpeedButton
                Left = 0
                Top = 2
                Width = 209
                Height = 38
                Hint = 'Selecionar todos os Destinat'#225'rios'
                Caption = 'Selecionar todos'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 16384
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
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
                OnClick = SpeedButton51Click
              end
              object SpeedButton52: TSpeedButton
                Left = 209
                Top = 2
                Width = 209
                Height = 38
                Hint = 'Deselecionar todos os Destinat'#225'rios'
                Caption = 'Deselecionar todos'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 147
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                Glyph.Data = {
                  3E020000424D3E0200000000000036000000280000000D0000000D0000000100
                  18000000000008020000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00808085A2A2A6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBDBDC0FBFBFF007B7B7B00000D0101FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFBFBFBFFFFFFF007F7F7F000000FFFFFF0000FFFFFF
                  FF929292FFFFFFFFFFFFFFFFFF0000FFFFFFFFBFBFBFFFFFFF007F7F7F000000
                  FFFFFFFFFFFF0000FF929292929292FFFFFF0000FFFFFFFFFFFFFFBFBFBFFFFF
                  FF007F7F7F000000FFFFFF9292929292920000FF9292920000FFFFFFFFFFFFFF
                  FFFFFFBFBFBFFFFFFF007F7F7F000000FFFFFF929292929292FFFFFF0000FF92
                  9292929292FFFFFFFFFFFFBFBFBFFFFFFF007F7F7F000000FFFFFF929292FFFF
                  FF0000FFFFFFFF0000FF929292929292FFFFFFBFBFBFFFFFFF007F7F7F000000
                  FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FF929292FFFFFFBFBFBFFFFF
                  FF007F7F7F000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
                  FFFFFFBFBFBFFFFFFF007F7F7F0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFBFBFBFFFFFFF007F7F7F00000F0000070000000000
                  00000000000000000000000000000000000000B4B4C3FDFDFF007F7F7F7B7B83
                  7E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FF7F7
                  FD00}
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton52Click
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 428
            Top = 0
            Width = 386
            Height = 473
            Align = alClient
            Caption = 'Status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Memo2: TMemo
              Left = 11
              Top = 18
              Width = 373
              Height = 453
              Align = alClient
              BevelOuter = bvNone
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
            object Panel5: TPanel
              Left = 2
              Top = 18
              Width = 9
              Height = 453
              Align = alLeft
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Mensagem'
          ImageIndex = 1
          object GroupBox_msg: TGroupBox
            Left = 0
            Top = 69
            Width = 814
            Height = 404
            Align = alClient
            Caption = 'Digite sua Mensagem:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object CoolBar2: TCoolBar
              Left = 2
              Top = 54
              Width = 810
              Height = 113
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar6
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 146
                end
                item
                  Break = False
                  Control = ToolBar7
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 195
                end
                item
                  Break = False
                  Control = ToolBar3
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 461
                end
                item
                  Control = ToolBar8
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 806
                end
                item
                  Control = Panel6
                  ImageIndex = -1
                  MinHeight = 33
                  Width = 412
                end
                item
                  Break = False
                  Control = ToolBar5
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 144
                end
                item
                  Break = False
                  Control = ToolBar4
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 246
                end>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              object Panel6: TPanel
                Left = 9
                Top = 75
                Width = 399
                Height = 33
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label1: TLabel
                  Left = 237
                  Top = 9
                  Width = 48
                  Height = 13
                  Caption = 'Tamanho:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 3487029
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 5
                  Top = 9
                  Width = 30
                  Height = 13
                  Caption = 'Fonte:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 3487029
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object combofont: TComboBox
                  Left = 40
                  Top = 4
                  Width = 193
                  Height = 21
                  ItemHeight = 0
                  TabOrder = 0
                  OnChange = combofontChange
                  Items.Strings = (
                    'Arial'
                    'Courier'
                    'Courier New'
                    'Georgia'
                    'Helvetica'
                    'monospace'
                    'Verdana'
                    'Times New Roman'
                    'serif'
                    'sans-serif')
                end
                object ComboSize: TComboBox
                  Left = 288
                  Top = 5
                  Width = 101
                  Height = 22
                  Style = csOwnerDrawFixed
                  ItemHeight = 16
                  TabOrder = 1
                  OnChange = ComboSizeChange
                  Items.Strings = (
                    'Pequena'
                    'M'#233'dia'
                    'Normal'
                    'Maior'
                    'Grande'
                    'Extra Grande')
                end
              end
              object ToolBar3: TToolBar
                Left = 354
                Top = 0
                Width = 448
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 1
                object btnCut: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Recortar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AE
                    AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AEAEB1FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B5
                    0658B5FFFFFFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B50658B5FFFF
                    FFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0658
                    B5AEAEB1FFFFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5AEAEB1FF
                    FFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFF0658B5FFFFFFAEAEB10658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5
                    AEAEB1AEAEB10658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF0658B50658B50658B5AEAEB1AEAEB1FFFFFFFFFFFFFFFF
                    FF0658B50658B50658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB0658B50658B5AEAEB1AEAEB1AE
                    AEB10658B50658B5176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB176DCB0658B5
                    125DDF0658B5176DCB176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FF125DDF3F8EDE125DDFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFA93950034DC5A93950AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFA93950C46878D094A9C46878A93950AEAEB1AEAEB1FFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFD094A9C46878A93950AEAEB1AE
                    AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFFFFFFFFFFFFFD094A9BE7896
                    C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFD094A9BE7896C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFD094A9BE7896C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFBE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD094A9BE7896FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnCutClick
                end
                object btnCopy: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Copiar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1
                    AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF275CD4275CD4275CD4275CD4275CD4275CD4275CD4275C
                    D4275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEEA6EAEEA6
                    EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE
                    A6EAEEA6EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB12780D6BEF0F299D8E899D8
                    E899D8E899D8E899D8E8A6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFF2780D60658B50658B50658B50658B52780D6CAF6F7CA
                    F6F7BEF0F2BEF0F2BEF0F2BEF0F2BEF0F2275CD4AEAEB1FFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE2780D6
                    CAF6F799D8E899D8E899D8E899D8E899D8E8CAF6F7275CD4AEAEB1FFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EA
                    EE2780D6EBF9FAEBF9FAEBF9FAEBF9FA4C9CE64C9CE64C9CE6275CD4AEAEB1FF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6BEF0F299D8E899
                    D8E899D8E82780D6EBF9FA99D8E899D8E899D8E84C9CE6EBF9FA2780D62780D6
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6CAF6F7
                    CAF6F7CAF6F7BEF0F22780D6F2F8F9EBF9FAEBF9FAEBF9FA4C9CE62780D62780
                    D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780
                    D6CAF6F799D8E899D8E899D8E82780D62780D62780D62780D62780D62780D627
                    80D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFF2780D6EBF9FAEBF9FAEBF9FAF2F8F94C9CE66EB3F46EB3F46EB3F4AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFF2780D6EBF9FABFE9F7BFE9F7BFE9F76EB3F4F2F8F92780D62780
                    D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFF2780D6EBF9FAEBF9FAEBF9FAEBF9FA6EB3F42780D627
                    80D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF2780D62780D62780D62780D62780D62780D6
                    2780D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnCopyClick
                end
                object btnPaste: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Colar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF688EDC3969C53969C53969C53969C53969C53969C53969C53969C5AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF688EDC4FD0F54FD0F54FD0F54FD0F54FD0F54FD0F54FD0F53969
                    C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFAEAEB1AEAEB1AEAEB1688EDC67F1F6F4B9DEF4B9DEF4B9DEF4B9DE69D0FB67
                    F1F63969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFCD5597CD5597CD5597688EDC88EAF988EAF988EAF988EAF988EAF9
                    88EAF988EAF93969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFCD5597CCAC75CCAC75CCAC75688EDCA5F7FAF4B9DEF4B9DEF4B9
                    DEA5F7FAA5F7FAA5F7FA3969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7CAF6F7CA
                    F6F7CAF6F73969C53969C53969C53969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7
                    F4B9DEF4B9DECAF6F73969C5FFFFFF3969C5CD5597AEAEB1FFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2ECCEB2688E
                    DCCAF6F7CAF6F7CAF6F7CAF6F73969C53969C5ECCEB2CD5597AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2EC
                    CEB2688EDC688EDC688EDC688EDC688EDC3969C5ECCEB2ECCEB2CD5597AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597F6D8C6
                    F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6CD55
                    97AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD55
                    97F6D8C6000000000000000000000000000000000000000000000000F6D8C6F6
                    D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFCD5597F6D8C6BC2376DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBC2376
                    F6D8C6F6D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFCD5597F6D8C6F6D8C6BC237600FFFF00000000000000FFFFBC23
                    76F6D8C6F6D8C6F6D8C6CD5597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFBE7896BE7896BE7896BC237600FFFF00FFFFBC
                    2376BE7896BE7896BE7896BE7896FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC2376BC2376
                    BC2376BC2376FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnPasteClick
                end
              end
              object ToolBar4: TToolBar
                Left = 569
                Top = 74
                Width = 233
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 2
                object btnAlignLeft: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Esquerda'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070000000000000000070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070000000000000000070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070000000000000000070707070707070707070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnAlignLeftClick
                end
                object btnCenter: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Centralizar'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707000000000000000707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000070707070707070707070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnCenterClick
                end
                object btnAlignRight: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Direita'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000000000070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000000000070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000000000070707070707070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnAlignRightClick
                end
                object SpeedButton12: TSpeedButton
                  Left = 90
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Justificar'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00000000000000000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00390039003100310031003100000000000000000000000000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00390039002900290029002900000000000000000000000000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00080008001800100018081000000000000000000000000000000000000000
                    0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton12Click
                end
              end
              object ToolBar5: TToolBar
                Left = 423
                Top = 74
                Width = 131
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 3
                object SpeedButton1: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Negrito'
                  AllowAllUp = True
                  GroupIndex = 1
                  Caption = 'B'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6000000000000000000000000E6E6E6E6E6E6E6E6E6000000
                    000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6E6E69999
                    99000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6
                    E6E6000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6
                    E6E6E6000000000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000000000
                    00E6E6E6999999000000000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600
                    0000000000999999000000000000999999000000000000E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6000000000000000000000000999999E6E6E6000000000000E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6000000000000000000999999E6E6E6E6E6E6000000000000E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6000000000000000000999999E6E6E6E6E6E6000000000000
                    000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                  Margin = 3
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'It'#225'lico'
                  AllowAllUp = True
                  GroupIndex = 2
                  Caption = 'I'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsItalic]
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E666666600000000
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    000000000000666666E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6666666000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6666666000000000000E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000
                    000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                  Margin = 3
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton2Click
                end
                object SpeedButton3: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Sublinhado'
                  AllowAllUp = True
                  GroupIndex = 3
                  Caption = 'U'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsUnderline]
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    000000000000000000000000000000000000000000000000000000E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000E6E6E60000000000
                    00000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E600
                    0000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    000000000000000000999999E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6000000000000000000999999E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E699
                    9999000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6666666000000000000E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6666666000000000000E6E6E6000000000000000000E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                  Margin = 3
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton3Click
                end
                object SpeedButton4: TSpeedButton
                  Left = 90
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Cor do Texto'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF176DCB0658B50658B5012A9502277A8CC4FBFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFF176DCB6EB3F46EB3F46EB3F46EB3F46EB3F40658B50658B58CC4FB
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF176DCB9ADEFAE6E6029781079781074FD0F56EB3F46EB3
                    F40658B58CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCBE6E602E6E60269D0FB69D0FB54
                    54FC0303DF6EB3F402277AFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB6EB3F4E6E60288D9FA88D9FA
                    7587F80303DF0303DF4FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB176DCB6EB3F4BFE9F7ADE3FA9ADE
                    FA88D9FAA8A8F969D0FB4FD0F54FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085D91085D91085D91085D91085D78
                    7878ADE3FA9ADEFA88EAF92EE92E69D0FB4FD0F5176DCBFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085DEBF9FA
                    EBF9FABFE9F7BFE9F72EE92E2EE92E069D160D7B0D69D0FB176DCBFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D9D1F
                    42F8F9F9BBBBBBCAF6F7BFE9F7ADE3FA9ADEFA0D7B0D0D7B0D8CC4FB3F8EDEFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D
                    1F429D1F42F8F9F9F2F8F9BBBBBB7878783D5758ADE3FA9ADEFA8CC4FB3F8EDE
                    8CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFB33238B33238F8F9F9F8F9F9F2F8F93D5758000000BFE9F78CC4FB3F8E
                    DE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFB33238B33238F8F9F9F8F9F9F8F9F9EBF9FAEBF9FA3F8EDE3F
                    8EDE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFB33238B332383F8EDE3F8EDE3F8EDE3F8EDE3F8EDE
                    8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFBBBBBBFFFFFFFFFFFFD0531BD0531BBBBBBBDDDDDDDDDDDDDDDD
                    DDBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFD0531BBBBBBBBBBBBBBBBBBBD0531BD0531BBBBBBBBBBBBBBB
                    BBBBD0531BBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFD0531BD0531BD0531BD0531BD0531BD0531BD0531B
                    D0531BD0531BD0531BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton4Click
                end
              end
              object ToolBar6: TToolBar
                Left = 9
                Top = 0
                Width = 133
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 4
                object SpeedButton10: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Novo Documento'
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
                  OnClick = SpeedButton10Click
                end
                object SpeedButton9: TSpeedButton
                  Left = 32
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Salvar como'
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
                  OnClick = SpeedButton9Click
                end
                object SpeedButton11: TSpeedButton
                  Left = 64
                  Top = 2
                  Width = 32
                  Height = 30
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
                  OnClick = SpeedButton11Click
                end
                object SpeedButton8: TSpeedButton
                  Left = 96
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Imprimir'
                  Flat = True
                  Glyph.Data = {
                    F6010000424DF601000000000000B60000002800000012000000100000000100
                    08000000000040010000120B0000120B0000200000000000000060412A00F8E1
                    AF00C0885E00E4E4E400BEBEBE00E5C39400FFF8F000FFE5C300DFDFDF00C5C5
                    C500E9AF7D00F4D5A400FFD59E00CCCCCC00FFFCF900FFF1CF00FFF7C500FFEA
                    B700FFEFDB00D59D6F00FFDCAD00FFEDD500DCAF8100FFE3BE00FFFFFF00EFC5
                    9300FFECB900FFF6D600FFFFFF000000000000000000000000001C1C1C1C0603
                    03030303030303030303061C00001C1C1C030D04040404040404040404040D06
                    00001C1C0300000000000000000000000000040300001C030005101010101010
                    1010101010000403000006001B1B160101010101010101011100040300000010
                    0F0F131919191919191919190B0004030000001A1010020A0A0A0A0A0A0A0A0A
                    19000D06000000111918181818181818181818181800031C0000001918000000
                    000000000000001800031C1C000000181800170C0C0C0C0C0C0C0000081C1C1C
                    00000000000015141414141414140004031C1C1C00001C1C1C00060707070707
                    07070004031C1C1C00001C1C1C000E121212121212120004031C1C1C00001C1C
                    1C0018060606060606060004031C1C1C00001C1C1C001818181818181818000D
                    061C1C1C00001C1C1C00000000000000000000061C1C1C1C0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton8Click
                end
              end
              object ToolBar7: TToolBar
                Left = 157
                Top = 0
                Width = 182
                Height = 35
                Align = alClient
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 5
                object SpeedButton7: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Desfazer'
                  Flat = True
                  Glyph.Data = {
                    76050000424D7605000000000000360400002800000012000000100000000100
                    08000000000040010000120B0000120B00000001000014000000FFFFFF00CCFF
                    FF00FFFFCC00FFCCCC00CCCCCC00CC99CC00CCCC990099CC9900CC9999009999
                    9900996699009999660066996600996666006666660066336600666633003366
                    3300663333006666000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000436F000000000000000000000000000000000000
                    436F000000000000000000000001030103000000436F00000000000000000000
                    0000090604000000436F000000000000000000000004090809000000436F0000
                    000000000000000000040D0E08000000436F0000041004040000000000040E10
                    0E000000436F000006111213100C0500000410120D000000436F00000B0F100F
                    0E0600000004120E10000000436F00020E121012070000000009101009000000
                    436F0004100A0E100D090404080E100E08000000436F000004000D1010100F10
                    10100F0B00000000436F00000000040B100F1010120E0B0400000000436F0000
                    00000000090B0E100908000000000000436F0000000000000000000000000000
                    00000000436F000000000000000000000000000000000000436F}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton7Click
                end
                object SpeedButton37: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Refazer'
                  Flat = True
                  Glyph.Data = {
                    76050000424D7605000000000000360400002800000012000000100000000100
                    08000000000040010000120B0000120B00000001000014000000FFFFFF00CCFF
                    FF00FFFFCC00FFCCCC00CCCCCC00CC99CC00CCCC990099CC9900CC9999009999
                    9900996699009999660066996600996666006666660066336600666633003366
                    3300663333006666000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000030103010000000000000000000000000000000004060900000000
                    0000000000000000000000000009080904000000000000000000000000000000
                    00080E0D04000000000000000000000000000000000E100E0400000000000404
                    1004000000000000000D1210040000050C101312110600000000000000100E12
                    04000000060E0F100F0B000000000000000910100900000000071210120E0200
                    0000000000080E100E080404090D100E0A1004000000000000000B0F1010100F
                    1010100D00040000000000000000040B0E1210100F100B040000000000000000
                    000000000809100E0B0900000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton37Click
                end
                object btnNumList: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Numera'#231#227'o'
                  AllowAllUp = True
                  GroupIndex = 4
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707040407070707070707070707070707070707040707
                    0707070707070707070707070407070700000000000000000707070404040707
                    0707070707070707070707070707070707070707070707070707070404040707
                    0707070707070707070707070407070707070707070707070707070707040707
                    0000000000000000070707040407070707070707070707070707070707070707
                    0707070707070707070707040404070707070707070707070707070704070707
                    0707070707070707070707040407070700000000000000000707070704070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnNumListClick
                end
                object btnBullet: TSpeedButton
                  Left = 90
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Marcador'
                  AllowAllUp = True
                  GroupIndex = 5
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070404040707
                    0707070707070707070707040404070700000000000000000707070404040707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707040404070707070707070707070707070404040707
                    0000000000000000070707040404070707070707070707070707070707070707
                    0707070707070707070707070707070707070707070707070707070404040707
                    0707070707070707070707040404070700000000000000000707070404040707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnBulletClick
                end
                object btnDecreaseIndent: TSpeedButton
                  Left = 120
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Retorno tabula'#231#227'o'
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707000707070707070707070707070707
                    0707070707070707070707070000000007000007070707070707070707070707
                    0707070707070707070707070000000007000000000000000007070707070707
                    0707070707070707070707070407070707000000000000070707070404070707
                    0700000000000007070704040404040707070707070707070707070404070707
                    0700000000000000000707070407070707000000000000000007070707070707
                    0707070707070707070707070000000007000000000000000007070707070707
                    0707070707070707070707070707070707000707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnDecreaseIndentClick
                end
                object btnIncreaseIndent: TSpeedButton
                  Left = 150
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Adicionar tabula'#231#227'o'
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707000707070707070707070707070707
                    0707070707070707070707070000000007000007070707070707070707070707
                    0707070707070707070707070000000007000000000000000007070707070707
                    0707070707070707070707070407070707000000000000070707070704040707
                    0700000000000007070704040404040707070707070707070707070704040707
                    0700000000000000000707070407070707000000000000000007070707070707
                    0707070707070707070707070000000007000000000000000007070707070707
                    0707070707070707070707070707070707000707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnIncreaseIndentClick
                end
              end
              object ToolBar8: TToolBar
                Left = 9
                Top = 37
                Width = 793
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 6
                object SpeedButton5: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 82
                  Height = 30
                  Hint = 'Inserir Imagem'
                  Caption = 'Imagem'
                  Flat = True
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton5Click
                end
                object btnHR: TSpeedButton
                  Left = 82
                  Top = 2
                  Width = 61
                  Height = 30
                  Hint = 'Inserir linha Horizontal'
                  Caption = 'Linha'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Glyph.Data = {
                    9E050000424D9E05000000000000360400002800000014000000120000000100
                    08000000000068010000120B0000120B00000001000002000000FFFFFF009999
                    9900000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000001010101
                    0101010101010101010101010100000001010101010101010101010101010101
                    0100000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000}
                  NumGlyphs = 2
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnHRClick
                end
                object SpeedButton6: TSpeedButton
                  Left = 143
                  Top = 2
                  Width = 84
                  Height = 30
                  Hint = 'Inserir Link URL'
                  Caption = 'Link URL'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF78787800000000000000
                    0000000000000000FFFFFFFFFFFF000000000000000000000000000000787878
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF787878973E4DFBDBDA
                    FBDBDAFBDBDAFBDBDA7878789D1F429D1F42787878FCCBCDFCCBCDFCCBCDFCCB
                    CD000000787878FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB64F60FCDE
                    E0FCDEE000000000000000000000000000000000000000000000000000000000
                    0000FCCBCDFCCBCD000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB6
                    4F60FCECEC000000FFFFFF000000FFFFFFFFFFFFFEF4F5FCDEE0FCCBCDE4B4BB
                    000000FFFFFF000000FBDBDA000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFB64F60FBFCFAFEF4F50000000000000000000000000000000000000000
                    00000000000000000000FCECECFCECEC973E4DFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFF787878A93950FFFFFFFFFFFFFBFCFAFFFFFFFBFCFAA93950A9
                    3950FBFCFAFBFCFAFBFCFAFBFCFAFFFFFFB64F60787878FFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF787878A93950A93950A93950A93950A93950
                    79AE3479AE34A93950A93950A93950B64F60B64F60787878FFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4687879AE3479AE34EAD1
                    87F1E19F79AE3479AE3479AE34F1E19FE6C17379AE34C46878AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC46878E6C17379
                    AE3479AE34F1E19F98C65D98C65D79AE34F1E19FEAD18779AE34C46878AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC46878
                    98C65DE6C173CBDDB4F8EEBCF8EEBCF8EEBCF1E19FB5D47CEAD18779AE34C468
                    78AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFC4687898C65DB5D47CF8EEBCF8F4D6F8F4D6F8EEBCB5D47C98C65DE6C17379
                    AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFF9DB87BE38086EAD187F8F4D6FEFCEEFEFCEEF8F4D698C65D79AE34
                    79AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFE38086C0BF5FF1E19FF8F4D6F8F4D6D8E9BE98C6
                    5D79AE3479AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB87BE38086E38086C0BF5F98C65D98
                    C65D98C65DC46878C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB87BE38086
                    E38086E38086E380869DB87BCFD6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton6Click
                end
                object ComboSpeedButton3: TComboSpeedButton
                  Left = 227
                  Top = 2
                  Width = 105
                  Height = 30
                  Hint = 'Alterar Cor de fundo'
                  PopupMenu = PopupMenu_cordefundo
                  Caption = 'Cor Fundo'
                  Flat = True
                  Glyph.Data = {
                    9E050000424D9E05000000000000360400002800000014000000120000000100
                    08000000000068010000120B0000120B00000001000039000000FFFFFF00FEFE
                    FE00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F7F7F700F6F6F600F4F4F400F2F2
                    F200F1F1F100F0F0F000ECECEC00EBEBEB00E7E7E700E6E6E600E4E4E400E2E2
                    E200E1E1E100DFDFDF00DDDDDD00D7D7D700CACACA00C9C9C900C8C8C800C0C0
                    C000BBBBBB00B9B9B900AFAFAF00AEAEAE00ADADAD00AAAAAA00A7A7A700A0A0
                    A0009D9D9D00929292008F8F8F00868686008181810075757500717171006C6C
                    6C006969690067676700666666005F5F5F00444444003B3B3B00363636003333
                    3300282828002525250021212100202020001B1B1B0004040400000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000080D0700060E0E0600000000000000000000000511220C0615
                    1C1C1506000000000000000000000A1D2E1415202F2F20150600000000000000
                    00000E2A351B202F25212F2015060000000000000000123438242F2D1923212F
                    1C0E00000000000000001238382F2C16232623212F0E00000000000000000F38
                    38211623262629002F0600000000000000000B3238162B372529003006000000
                    0000000000000428382517372900301300000000000000000000000428331737
                    0030361300000000000000000000000004273337301A36100000000000000000
                    000000000000092C1E1F3109000000000000000000000000000000182C2C1703
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000}
                  ShowHint = True
                  OnClick = ComboSpeedButton3Click
                end
                object SpeedButton50: TSpeedButton
                  Left = 332
                  Top = 2
                  Width = 88
                  Height = 30
                  Hint = 'Alterar cor global dos textos'
                  Caption = 'Cor Texto'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF176DCB0658B50658B5012A9502277A8CC4FBFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFF176DCB6EB3F46EB3F46EB3F46EB3F46EB3F40658B50658B58CC4FB
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF176DCB9ADEFAE6E6029781079781074FD0F56EB3F46EB3
                    F40658B58CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCBE6E602E6E60269D0FB69D0FB54
                    54FC0303DF6EB3F402277AFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB6EB3F4E6E60288D9FA88D9FA
                    7587F80303DF0303DF4FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB176DCB6EB3F4BFE9F7ADE3FA9ADE
                    FA88D9FAA8A8F969D0FB4FD0F54FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085D91085D91085D91085D91085D78
                    7878ADE3FA9ADEFA88EAF92EE92E69D0FB4FD0F5176DCBFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085DEBF9FA
                    EBF9FABFE9F7BFE9F72EE92E2EE92E069D160D7B0D69D0FB176DCBFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D9D1F
                    42F8F9F9BBBBBBCAF6F7BFE9F7ADE3FA9ADEFA0D7B0D0D7B0D8CC4FB3F8EDEFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D
                    1F429D1F42F8F9F9F2F8F9BBBBBB7878783D5758ADE3FA9ADEFA8CC4FB3F8EDE
                    8CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFB33238B33238F8F9F9F8F9F9F2F8F93D5758000000BFE9F78CC4FB3F8E
                    DE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFB33238B33238F8F9F9F8F9F9F8F9F9EBF9FAEBF9FA3F8EDE3F
                    8EDE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFB33238B332383F8EDE3F8EDE3F8EDE3F8EDE3F8EDE
                    8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFBBBBBBFFFFFFFFFFFFD0531BD0531BBBBBBBDDDDDDDDDDDDDDDD
                    DDBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFD0531BBBBBBBBBBBBBBBBBBBD0531BD0531BBBBBBBBBBBBBBB
                    BBBBD0531BBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFD0531BD0531BD0531BD0531BD0531BD0531BD0531B
                    D0531BD0531BD0531BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton50Click
                end
                object ComboSpeedButton2: TComboSpeedButton
                  Left = 420
                  Top = 2
                  Width = 118
                  Height = 30
                  Hint = 'Inserir Pano de fundo'
                  PopupMenu = PopupMenu_fundo
                  Caption = 'Pano de fundo'
                  Flat = True
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
                  ShowHint = True
                  OnClick = ComboSpeedButton2Click
                end
                object ComboSpeedButton1: TComboSpeedButton
                  Left = 538
                  Top = 2
                  Width = 141
                  Height = 30
                  Hint = 'Inserir Pano de fundo'
                  PopupMenu = PopupMenu_som
                  Caption = 'Som ambiente OFF'
                  Flat = True
                  Glyph.Data = {
                    9E050000424D9E05000000000000360400002800000012000000120000000100
                    08000000000068010000120B0000120B0000000100009D000000FFFFFF00FEFE
                    FE00FEFFFF00FBFBFB00FBFAFB00FAFAFA00F9F9F900F8F8F800EFFBF000F7F7
                    F700F6F6F600F5F5F500F2F7F200FBF2FA00F4F4F400F3F3F300F2F2F200F1F1
                    F100E5F3E500E7F3E700EFEFEF00E4F2E400F1EDF100EEEEEE00EDEDED00ECEC
                    EC00EAEAEA00E9E9E900E8E8E800E7E7E700D7EDD700E6E6E600E5E5E500E4E4
                    E400D0EBD000E3E3E300E3E0E300E0E0E000CBE8CC00DFDFDF00DEDEDE00DDDD
                    DD00DCDCDC00D7D7D700D6D6D600D4D4D400BBDDBB00D3D3D300B8DDB800D2D2
                    D200D1D1D100B1DDB200CECECE0047EB9A00CDCDCD00A4DCA500CBCBCB00A6DA
                    A600CACACA00C9C9C9008FDF9600C8C8C8009FD79F009AD69900C3C3C300C2C2
                    C200C1C1C10025E86600BEBFBE0052D5990038E1700087CF880091CB900087CD
                    8800B9B9B9009FBCB40085CB8700B7B7B700B6B6B600B6B3B800B3B3B300B2B2
                    B200A1B9A300AEAEAE00AEAFAE007AC17B0034D54B00AAAAAA00A9A9A90087B5
                    84004FC26700A5A5A50062C16200A3A5A40063BE67005FC05F00A3A3A3006ABA
                    6A005CBD5C0057BE5C00A0A2A1005BBB5A009F9F9F0025C152009E9F9F007AAA
                    80005EB55D0052B6520097979700919994003DB257005AAF5B00929096008392
                    91009A8D9200978D950040AA40008A8A8A008989890040A540007A8F78008686
                    86002FA52F0082828200967F89001BA12F007E7E7E007B7B7B007A7A7A007879
                    7900767877001A9C1A001992380074746F0077707500786B76006C6C6C006969
                    6900656565006364640060606000456356005D5D5D006C5964005A5A5A005959
                    5900595259005A525600525252005F4C57004F46500048494700474548004343
                    4300433D42003637360031313100000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000110
                    364A210900000000000000005F50000000073466583A230F252B030000000000
                    5F5000000E66804E1703090606113419000000005F50000051752A0E19141B2B
                    3B32172A000000005F50000660280F182550645D686C5125140000005F50002D
                    2D07234288948F7C728282381A0000005F500B3D0727408A9787714B70958B4D
                    170000005F502D281B426C8E73696735458D9344090000005F50401941667553
                    0D3C56464384862A010000005F502C1C5B7B7E582952593F637D4F0400000000
                    5F500A2357898E9191969885786E1600000000005F50001A38798C999C9B9A92
                    6D5A0000000000005F5000051D31667B7F765424085E0000000000005F500000
                    00090F1F20110000006A301E150C00005F5000000000000000000000006B8374
                    61482E135F500000000000000000000002495C5C62627A6F5F50000000000000
                    00000000022233393E3747775F50000000000000000000000000000012264C55
                    5F50}
                  ShowHint = True
                end
              end
            end
            object CoolBar1: TCoolBar
              Left = 2
              Top = 15
              Width = 810
              Height = 39
              AutoSize = True
              Bands = <
                item
                  Break = False
                  Control = ToolBar16
                  HorizontalOnly = True
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 150
                end
                item
                  Break = False
                  Control = ToolBar17
                  HorizontalOnly = True
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 83
                end
                item
                  Break = False
                  Control = ToolBar2
                  ImageIndex = -1
                  MinHeight = 35
                  Width = 569
                end>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Visible = False
              object ToolBar12: TToolBar
                Left = 9
                Top = 0
                Width = 134
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 3
                object SpeedButton25: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Salvar como'
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
                end
                object SpeedButton26: TSpeedButton
                  Left = 32
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Importar texto'
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
                end
                object SpeedButton27: TSpeedButton
                  Left = 64
                  Top = 2
                  Width = 32
                  Height = 30
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
                end
                object SpeedButton28: TSpeedButton
                  Left = 96
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Imprimir'
                  Flat = True
                  Glyph.Data = {
                    F6010000424DF601000000000000B60000002800000012000000100000000100
                    08000000000040010000120B0000120B0000200000000000000060412A00F8E1
                    AF00C0885E00E4E4E400BEBEBE00E5C39400FFF8F000FFE5C300DFDFDF00C5C5
                    C500E9AF7D00F4D5A400FFD59E00CCCCCC00FFFCF900FFF1CF00FFF7C500FFEA
                    B700FFEFDB00D59D6F00FFDCAD00FFEDD500DCAF8100FFE3BE00FFFFFF00EFC5
                    9300FFECB900FFF6D600FFFFFF000000000000000000000000001C1C1C1C0603
                    03030303030303030303061C00001C1C1C030D04040404040404040404040D06
                    00001C1C0300000000000000000000000000040300001C030005101010101010
                    1010101010000403000006001B1B160101010101010101011100040300000010
                    0F0F131919191919191919190B0004030000001A1010020A0A0A0A0A0A0A0A0A
                    19000D06000000111918181818181818181818181800031C0000001918000000
                    000000000000001800031C1C000000181800170C0C0C0C0C0C0C0000081C1C1C
                    00000000000015141414141414140004031C1C1C00001C1C1C00060707070707
                    07070004031C1C1C00001C1C1C000E121212121212120004031C1C1C00001C1C
                    1C0018060606060606060004031C1C1C00001C1C1C001818181818181818000D
                    061C1C1C00001C1C1C00000000000000000000061C1C1C1C0000}
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object ToolBar9: TToolBar
                Left = 9
                Top = 0
                Width = 95
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 0
                object SpeedButton14: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Recortar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AE
                    AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AEAEB1FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B5
                    0658B5FFFFFFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B50658B5FFFF
                    FFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0658
                    B5AEAEB1FFFFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5AEAEB1FF
                    FFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFF0658B5FFFFFFAEAEB10658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5
                    AEAEB1AEAEB10658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF0658B50658B50658B5AEAEB1AEAEB1FFFFFFFFFFFFFFFF
                    FF0658B50658B50658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB0658B50658B5AEAEB1AEAEB1AE
                    AEB10658B50658B5176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB176DCB0658B5
                    125DDF0658B5176DCB176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FF125DDF3F8EDE125DDFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFA93950034DC5A93950AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFA93950C46878D094A9C46878A93950AEAEB1AEAEB1FFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFD094A9C46878A93950AEAEB1AE
                    AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFFFFFFFFFFFFFD094A9BE7896
                    C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFD094A9BE7896C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFD094A9BE7896C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFBE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD094A9BE7896FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton15: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Copiar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1
                    AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF275CD4275CD4275CD4275CD4275CD4275CD4275CD4275C
                    D4275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEEA6EAEEA6
                    EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE
                    A6EAEEA6EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB12780D6BEF0F299D8E899D8
                    E899D8E899D8E899D8E8A6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFF2780D60658B50658B50658B50658B52780D6CAF6F7CA
                    F6F7BEF0F2BEF0F2BEF0F2BEF0F2BEF0F2275CD4AEAEB1FFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE2780D6
                    CAF6F799D8E899D8E899D8E899D8E899D8E8CAF6F7275CD4AEAEB1FFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EA
                    EE2780D6EBF9FAEBF9FAEBF9FAEBF9FA4C9CE64C9CE64C9CE6275CD4AEAEB1FF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6BEF0F299D8E899
                    D8E899D8E82780D6EBF9FA99D8E899D8E899D8E84C9CE6EBF9FA2780D62780D6
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6CAF6F7
                    CAF6F7CAF6F7BEF0F22780D6F2F8F9EBF9FAEBF9FAEBF9FA4C9CE62780D62780
                    D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780
                    D6CAF6F799D8E899D8E899D8E82780D62780D62780D62780D62780D62780D627
                    80D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFF2780D6EBF9FAEBF9FAEBF9FAF2F8F94C9CE66EB3F46EB3F46EB3F4AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFF2780D6EBF9FABFE9F7BFE9F7BFE9F76EB3F4F2F8F92780D62780
                    D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFF2780D6EBF9FAEBF9FAEBF9FAEBF9FA6EB3F42780D627
                    80D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF2780D62780D62780D62780D62780D62780D6
                    2780D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton16: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Colar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF688EDC3969C53969C53969C53969C53969C53969C53969C53969C5AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF688EDC4FD0F54FD0F54FD0F54FD0F54FD0F54FD0F54FD0F53969
                    C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFAEAEB1AEAEB1AEAEB1688EDC67F1F6F4B9DEF4B9DEF4B9DEF4B9DE69D0FB67
                    F1F63969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFCD5597CD5597CD5597688EDC88EAF988EAF988EAF988EAF988EAF9
                    88EAF988EAF93969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFCD5597CCAC75CCAC75CCAC75688EDCA5F7FAF4B9DEF4B9DEF4B9
                    DEA5F7FAA5F7FAA5F7FA3969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7CAF6F7CA
                    F6F7CAF6F73969C53969C53969C53969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7
                    F4B9DEF4B9DECAF6F73969C5FFFFFF3969C5CD5597AEAEB1FFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2ECCEB2688E
                    DCCAF6F7CAF6F7CAF6F7CAF6F73969C53969C5ECCEB2CD5597AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2EC
                    CEB2688EDC688EDC688EDC688EDC688EDC3969C5ECCEB2ECCEB2CD5597AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597F6D8C6
                    F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6CD55
                    97AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD55
                    97F6D8C6000000000000000000000000000000000000000000000000F6D8C6F6
                    D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFCD5597F6D8C6BC2376DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBC2376
                    F6D8C6F6D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFCD5597F6D8C6F6D8C6BC237600FFFF00000000000000FFFFBC23
                    76F6D8C6F6D8C6F6D8C6CD5597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFBE7896BE7896BE7896BC237600FFFF00FFFFBC
                    2376BE7896BE7896BE7896BE7896FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC2376BC2376
                    BC2376BC2376FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object ToolBar14: TToolBar
                Left = 9
                Top = 0
                Width = 94
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 4
                object SpeedButton34: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Inserir Imagem'
                  Flat = True
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
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton35: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Inserir linha'
                  Caption = '--'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGray
                  Font.Height = -19
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  NumGlyphs = 2
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton36: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Inserir hyperlink'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF78787800000000000000
                    0000000000000000FFFFFFFFFFFF000000000000000000000000000000787878
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF787878973E4DFBDBDA
                    FBDBDAFBDBDAFBDBDA7878789D1F429D1F42787878FCCBCDFCCBCDFCCBCDFCCB
                    CD000000787878FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB64F60FCDE
                    E0FCDEE000000000000000000000000000000000000000000000000000000000
                    0000FCCBCDFCCBCD000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB6
                    4F60FCECEC000000FFFFFF000000FFFFFFFFFFFFFEF4F5FCDEE0FCCBCDE4B4BB
                    000000FFFFFF000000FBDBDA000000FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFB64F60FBFCFAFEF4F50000000000000000000000000000000000000000
                    00000000000000000000FCECECFCECEC973E4DFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFF787878A93950FFFFFFFFFFFFFBFCFAFFFFFFFBFCFAA93950A9
                    3950FBFCFAFBFCFAFBFCFAFBFCFAFFFFFFB64F60787878FFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF787878A93950A93950A93950A93950A93950
                    79AE3479AE34A93950A93950A93950B64F60B64F60787878FFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4687879AE3479AE34EAD1
                    87F1E19F79AE3479AE3479AE34F1E19FE6C17379AE34C46878AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC46878E6C17379
                    AE3479AE34F1E19F98C65D98C65D79AE34F1E19FEAD18779AE34C46878AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC46878
                    98C65DE6C173CBDDB4F8EEBCF8EEBCF8EEBCF1E19FB5D47CEAD18779AE34C468
                    78AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFC4687898C65DB5D47CF8EEBCF8F4D6F8F4D6F8EEBCB5D47C98C65DE6C17379
                    AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFF9DB87BE38086EAD187F8F4D6FEFCEEFEFCEEF8F4D698C65D79AE34
                    79AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFE38086C0BF5FF1E19FF8F4D6F8F4D6D8E9BE98C6
                    5D79AE3479AE34C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB87BE38086E38086C0BF5F98C65D98
                    C65D98C65DC46878C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DB87BE38086
                    E38086E38086E380869DB87BCFD6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object ToolBar11: TToolBar
                Left = 9
                Top = 0
                Width = 122
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 2
                object SpeedButton21: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Negrito'
                  AllowAllUp = True
                  GroupIndex = 1
                  Caption = 'B'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6000000000000000000000000E6E6E6E6E6E6E6E6E6000000
                    000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6E6E69999
                    99000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6
                    E6E6000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6
                    E6E6E6000000000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000000000
                    00E6E6E6999999000000000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600
                    0000000000999999000000000000999999000000000000E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6000000000000000000000000999999E6E6E6000000000000E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6000000000000000000999999E6E6E6E6E6E6000000000000E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6000000000000000000999999E6E6E6E6E6E6000000000000
                    000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                  Margin = 3
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton22: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'It'#225'lico'
                  AllowAllUp = True
                  GroupIndex = 2
                  Caption = 'I'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsItalic]
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E666666600000000
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    000000000000666666E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6666666000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6666666000000000000E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000666666E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000
                    000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                  Margin = 3
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton23: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Sublinhado'
                  AllowAllUp = True
                  GroupIndex = 3
                  Caption = 'U'
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsUnderline]
                  Glyph.Data = {
                    0E060000424D0E06000000000000360000002800000016000000160000000100
                    180000000000D8050000C40E0000C40E00000000000000000000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    000000000000000000000000000000000000000000000000000000E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000E6E6E60000000000
                    00000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000E6E6E6E6E6E600
                    0000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    000000000000000000999999E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6000000000000000000999999E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E699
                    9999000000000000000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6666666000000000000E6E6E6E6E6E6000000000000E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6666666000000000000E6E6E6000000000000000000E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000000000000000000000000000000000
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    0000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E60000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
                    E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
                  Margin = 3
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton24: TSpeedButton
                  Left = 90
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Cor do Texto'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF176DCB0658B50658B5012A9502277A8CC4FBFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFF176DCB6EB3F46EB3F46EB3F46EB3F46EB3F40658B50658B58CC4FB
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF176DCB9ADEFAE6E6029781079781074FD0F56EB3F46EB3
                    F40658B58CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCBE6E602E6E60269D0FB69D0FB54
                    54FC0303DF6EB3F402277AFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB6EB3F4E6E60288D9FA88D9FA
                    7587F80303DF0303DF4FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB176DCB176DCB6EB3F4BFE9F7ADE3FA9ADE
                    FA88D9FAA8A8F969D0FB4FD0F54FD0F50658B5FFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085D91085D91085D91085D91085D78
                    7878ADE3FA9ADEFA88EAF92EE92E69D0FB4FD0F5176DCBFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D91085DEBF9FA
                    EBF9FABFE9F7BFE9F72EE92E2EE92E069D160D7B0D69D0FB176DCBFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91085D9D1F
                    42F8F9F9BBBBBBCAF6F7BFE9F7ADE3FA9ADEFA0D7B0D0D7B0D8CC4FB3F8EDEFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D
                    1F429D1F42F8F9F9F2F8F9BBBBBB7878783D5758ADE3FA9ADEFA8CC4FB3F8EDE
                    8CC4FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFB33238B33238F8F9F9F8F9F9F2F8F93D5758000000BFE9F78CC4FB3F8E
                    DE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFB33238B33238F8F9F9F8F9F9F8F9F9EBF9FAEBF9FA3F8EDE3F
                    8EDE8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFB33238B332383F8EDE3F8EDE3F8EDE3F8EDE3F8EDE
                    8CC4FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFBBBBBBFFFFFFFFFFFFD0531BD0531BBBBBBBDDDDDDDDDDDDDDDD
                    DDBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFD0531BBBBBBBBBBBBBBBBBBBD0531BD0531BBBBBBBBBBBBBBB
                    BBBBD0531BBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFD0531BD0531BD0531BD0531BD0531BD0531BD0531B
                    D0531BD0531BD0531BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object ToolBar10: TToolBar
                Left = 9
                Top = 0
                Width = 112
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 1
                object SpeedButton17: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Esquerda'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070000000000000000070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070000000000000000070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070000000000000000070707070707070707070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton18: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Centralizar'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707000000000000000707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000070707070707070707070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton19: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Direita'
                  GroupIndex = 6
                  Flat = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    08000000000000010000C40E0000C40E00000001000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                    A600330000006600000099000000CC0000000033000033330000663300009933
                    0000CC330000FF33000000660000336600006666000099660000CC660000FF66
                    000000990000339900006699000099990000CC990000FF99000000CC000033CC
                    000066CC000099CC0000CCCC0000FFCC000033FF000066FF000099FF0000CCFF
                    000000003300330033006600330099003300CC003300FF003300003333003333
                    33006633330099333300CC333300FF3333000066330033663300666633009966
                    3300CC663300FF66330000993300339933006699330099993300CC993300FF99
                    330000CC330033CC330066CC330099CC3300CCCC3300FFCC330000FF330033FF
                    330066FF330099FF3300CCFF3300FFFF33000000660033006600660066009900
                    6600CC006600FF00660000336600333366006633660099336600CC336600FF33
                    660000666600336666006666660099666600CC666600FF666600009966003399
                    66006699660099996600CC996600FF99660000CC660033CC660066CC660099CC
                    6600CCCC6600FFCC660000FF660033FF660066FF660099FF6600CCFF6600FFFF
                    660000009900330099006600990099009900CC009900FF009900003399003333
                    99006633990099339900CC339900FF3399000066990033669900666699009966
                    9900CC669900FF66990000999900339999006699990099999900CC999900FF99
                    990000CC990033CC990066CC990099CC9900CCCC9900FFCC990000FF990033FF
                    990066FF990099FF9900CCFF9900FFFF99000000CC003300CC006600CC009900
                    CC00CC00CC00FF00CC000033CC003333CC006633CC009933CC00CC33CC00FF33
                    CC000066CC003366CC006666CC009966CC00CC66CC00FF66CC000099CC003399
                    CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CCCC0066CCCC0099CC
                    CC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FFCC00CCFFCC00FFFF
                    CC003300FF006600FF009900FF00CC00FF000033FF003333FF006633FF009933
                    FF00CC33FF00FF33FF000066FF003366FF006666FF009966FF00CC66FF00FF66
                    FF000099FF003399FF006699FF009999FF00CC99FF00FF99FF0000CCFF0033CC
                    FF0066CCFF0099CCFF00CCCCFF00FFCCFF0033FFFF0066FFFF0099FFFF00CCFF
                    FF0004040400080808000C0C0C0011111100161616001C1C1C00222222002929
                    2900555555004D4D4D004242420039393900807CFF005050FF009300D600FFEC
                    CC00C6D6EF00D6E7E70090A9AD000000330000006600000099000000CC000033
                    00000033330000336600003399000033CC00F0FBFF00A4A0A000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
                    0707070707070707070707070707070707070707070707070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000000000070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000000000070707070707070707
                    0707070707070707070707070000000000000000000000070707070707070707
                    0707070707070707070707070707070000000000000000070707070707070707
                    0707070707070707070707070707070707070707070707070707}
                  ParentShowHint = False
                  ShowHint = True
                end
                object SpeedButton20: TSpeedButton
                  Left = 90
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Justificar'
                  GroupIndex = 6
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF610311FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D211B7D211B
                    7D211BFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A3E249A3E
                    249A3E249A3E249A3E24FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF6103116103116103116103116C0E157619187D211B8428
                    1D8B301F9136229A3E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6103116103116103116C0E156C0E15
                    76191884281D8B301F9A3E249A3E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61031161031161
                    03116103116C0E157619187D211B84281D8B301F9136229A3E24FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FF6103116103116103116103116C0E1576191884281D9136229A3E24FFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF6103116103116C0E156C0E157619187D211B84281D8B30
                    1F9136229A3E249A3E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                end
              end
              object ToolBar16: TToolBar
                Left = 9
                Top = 0
                Width = 137
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 5
                object SpeedButton38: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Salvar como'
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
                  OnClick = SpeedButton38Click
                end
                object SpeedButton39: TSpeedButton
                  Left = 32
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Importar Source'
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
                  OnClick = SpeedButton39Click
                end
                object SpeedButton40: TSpeedButton
                  Left = 64
                  Top = 2
                  Width = 32
                  Height = 30
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
                  OnClick = SpeedButton40Click
                end
                object SpeedButton41: TSpeedButton
                  Left = 96
                  Top = 2
                  Width = 32
                  Height = 30
                  Hint = 'Imprimir'
                  Flat = True
                  Glyph.Data = {
                    F6010000424DF601000000000000B60000002800000012000000100000000100
                    08000000000040010000120B0000120B0000200000000000000060412A00F8E1
                    AF00C0885E00E4E4E400BEBEBE00E5C39400FFF8F000FFE5C300DFDFDF00C5C5
                    C500E9AF7D00F4D5A400FFD59E00CCCCCC00FFFCF900FFF1CF00FFF7C500FFEA
                    B700FFEFDB00D59D6F00FFDCAD00FFEDD500DCAF8100FFE3BE00FFFFFF00EFC5
                    9300FFECB900FFF6D600FFFFFF000000000000000000000000001C1C1C1C0603
                    03030303030303030303061C00001C1C1C030D04040404040404040404040D06
                    00001C1C0300000000000000000000000000040300001C030005101010101010
                    1010101010000403000006001B1B160101010101010101011100040300000010
                    0F0F131919191919191919190B0004030000001A1010020A0A0A0A0A0A0A0A0A
                    19000D06000000111918181818181818181818181800031C0000001918000000
                    000000000000001800031C1C000000181800170C0C0C0C0C0C0C0000081C1C1C
                    00000000000015141414141414140004031C1C1C00001C1C1C00060707070707
                    07070004031C1C1C00001C1C1C000E121212121212120004031C1C1C00001C1C
                    1C0018060606060606060004031C1C1C00001C1C1C001818181818181818000D
                    061C1C1C00001C1C1C00000000000000000000061C1C1C1C0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton41Click
                end
              end
              object ToolBar17: TToolBar
                Left = 161
                Top = 0
                Width = 70
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 6
                object SpeedButton43: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Desfazer'
                  Flat = True
                  Glyph.Data = {
                    76050000424D7605000000000000360400002800000012000000100000000100
                    08000000000040010000120B0000120B00000001000014000000FFFFFF00CCFF
                    FF00FFFFCC00FFCCCC00CCCCCC00CC99CC00CCCC990099CC9900CC9999009999
                    9900996699009999660066996600996666006666660066336600666633003366
                    3300663333006666000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000436F000000000000000000000000000000000000
                    436F000000000000000000000001030103000000436F00000000000000000000
                    0000090604000000436F000000000000000000000004090809000000436F0000
                    000000000000000000040D0E08000000436F0000041004040000000000040E10
                    0E000000436F000006111213100C0500000410120D000000436F00000B0F100F
                    0E0600000004120E10000000436F00020E121012070000000009101009000000
                    436F0004100A0E100D090404080E100E08000000436F000004000D1010100F10
                    10100F0B00000000436F00000000040B100F1010120E0B0400000000436F0000
                    00000000090B0E100908000000000000436F0000000000000000000000000000
                    00000000436F000000000000000000000000000000000000436F}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton43Click
                end
                object SpeedButton13: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Refazer'
                  Flat = True
                  Glyph.Data = {
                    76050000424D7605000000000000360400002800000012000000100000000100
                    08000000000040010000120B0000120B00000001000014000000FFFFFF00CCFF
                    FF00FFFFCC00FFCCCC00CCCCCC00CC99CC00CCCC990099CC9900CC9999009999
                    9900996699009999660066996600996666006666660066336600666633003366
                    3300663333006666000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000030103010000000000000000000000000000000004060900000000
                    0000000000000000000000000009080904000000000000000000000000000000
                    00080E0D04000000000000000000000000000000000E100E0400000000000404
                    1004000000000000000D1210040000050C101312110600000000000000100E12
                    04000000060E0F100F0B000000000000000910100900000000071210120E0200
                    0000000000080E100E080404090D100E0A1004000000000000000B0F1010100F
                    1010100D00040000000000000000040B0E1210100F100B040000000000000000
                    000000000809100E0B0900000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton13Click
                end
              end
              object ToolBar2: TToolBar
                Left = 246
                Top = 0
                Width = 556
                Height = 35
                ButtonHeight = 30
                Caption = 'ToolBar2'
                TabOrder = 7
                object SpeedButton31: TSpeedButton
                  Left = 0
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Recortar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AE
                    AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEB1AEAEB1FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B5
                    0658B5FFFFFFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0658B50658B5FFFF
                    FFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0658
                    B5AEAEB1FFFFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5AEAEB1FF
                    FFFF0658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFF0658B5FFFFFFAEAEB10658B5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0658B5
                    AEAEB1AEAEB10658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF0658B50658B50658B5AEAEB1AEAEB1FFFFFFFFFFFFFFFF
                    FF0658B50658B50658B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB0658B50658B5AEAEB1AEAEB1AE
                    AEB10658B50658B5176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176DCB176DCB0658B5
                    125DDF0658B5176DCB176DCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FF125DDF3F8EDE125DDFAEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFA93950034DC5A93950AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFA93950C46878D094A9C46878A93950AEAEB1AEAEB1FFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFD094A9C46878A93950AEAEB1AE
                    AEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFA93950BE7896D094A9FFFFFFFFFFFFFFFFFFD094A9BE7896
                    C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFD094A9BE7896C46878AEAEB1AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFC46878BE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFD094A9BE7896C46878AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFBE7896D094A9FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD094A9BE7896FFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton31Click
                end
                object SpeedButton32: TSpeedButton
                  Left = 30
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Copiar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1
                    AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFF275CD4275CD4275CD4275CD4275CD4275CD4275CD4275C
                    D4275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEEA6EAEEA6
                    EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE
                    A6EAEEA6EAEEA6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFAEAEB1AEAEB1AEAEB1AEAEB12780D6BEF0F299D8E899D8
                    E899D8E899D8E899D8E8A6EAEE275CD4AEAEB1FFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFF2780D60658B50658B50658B50658B52780D6CAF6F7CA
                    F6F7BEF0F2BEF0F2BEF0F2BEF0F2BEF0F2275CD4AEAEB1FFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EAEE2780D6
                    CAF6F799D8E899D8E899D8E899D8E899D8E8CAF6F7275CD4AEAEB1FFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6A6EAEEA6EAEEA6EAEEA6EA
                    EE2780D6EBF9FAEBF9FAEBF9FAEBF9FA4C9CE64C9CE64C9CE6275CD4AEAEB1FF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6BEF0F299D8E899
                    D8E899D8E82780D6EBF9FA99D8E899D8E899D8E84C9CE6EBF9FA2780D62780D6
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780D6CAF6F7
                    CAF6F7CAF6F7BEF0F22780D6F2F8F9EBF9FAEBF9FAEBF9FA4C9CE62780D62780
                    D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF2780
                    D6CAF6F799D8E899D8E899D8E82780D62780D62780D62780D62780D62780D627
                    80D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFF2780D6EBF9FAEBF9FAEBF9FAF2F8F94C9CE66EB3F46EB3F46EB3F4AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFF2780D6EBF9FABFE9F7BFE9F7BFE9F76EB3F4F2F8F92780D62780
                    D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFF2780D6EBF9FAEBF9FAEBF9FAEBF9FA6EB3F42780D627
                    80D6AEAEB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFF2780D62780D62780D62780D62780D62780D6
                    2780D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton32Click
                end
                object SpeedButton33: TSpeedButton
                  Left = 60
                  Top = 2
                  Width = 30
                  Height = 30
                  Hint = 'Colar'
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
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFAEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFF688EDC3969C53969C53969C53969C53969C53969C53969C53969C5AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFF688EDC4FD0F54FD0F54FD0F54FD0F54FD0F54FD0F54FD0F53969
                    C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFAEAEB1AEAEB1AEAEB1688EDC67F1F6F4B9DEF4B9DEF4B9DEF4B9DE69D0FB67
                    F1F63969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFCD5597CD5597CD5597688EDC88EAF988EAF988EAF988EAF988EAF9
                    88EAF988EAF93969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFCD5597CCAC75CCAC75CCAC75688EDCA5F7FAF4B9DEF4B9DEF4B9
                    DEA5F7FAA5F7FAA5F7FA3969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7CAF6F7CA
                    F6F7CAF6F73969C53969C53969C53969C5AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597DABB8FDABB8FDABB8F688EDCCAF6F7
                    F4B9DEF4B9DECAF6F73969C5FFFFFF3969C5CD5597AEAEB1FFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2ECCEB2688E
                    DCCAF6F7CAF6F7CAF6F7CAF6F73969C53969C5ECCEB2CD5597AEAEB1FFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597ECCEB2ECCEB2EC
                    CEB2688EDC688EDC688EDC688EDC688EDC3969C5ECCEB2ECCEB2CD5597AEAEB1
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD5597F6D8C6
                    F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6F6D8C6CD55
                    97AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFCD55
                    97F6D8C6000000000000000000000000000000000000000000000000F6D8C6F6
                    D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
                    FFFFCD5597F6D8C6BC2376DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDBC2376
                    F6D8C6F6D8C6CD5597AEAEB1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                    FFFFFFFFFFFFCD5597F6D8C6F6D8C6BC237600FFFF00000000000000FFFFBC23
                    76F6D8C6F6D8C6F6D8C6CD5597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFBE7896BE7896BE7896BC237600FFFF00FFFFBC
                    2376BE7896BE7896BE7896BE7896FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC2376BC2376
                    BC2376BC2376FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton33Click
                end
              end
            end
            object PageControltx: TPageControl
              Left = 2
              Top = 167
              Width = 810
              Height = 235
              ActivePage = TabSheet1
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Images = ImageList_mail
              MultiLine = True
              ParentFont = False
              TabOrder = 2
              TabPosition = tpBottom
              OnChange = PageControltxChange
              object TabSheet1: TTabSheet
                Caption = 'Editar'
                object Label8: TLabel
                  Left = 200
                  Top = 32
                  Width = 41
                  Height = 16
                  Caption = 'Label8'
                end
                object WebBrowser1: TWebBrowser
                  Left = 0
                  Top = 0
                  Width = 802
                  Height = 206
                  Align = alClient
                  ParentShowHint = False
                  PopupMenu = PopupMenuNav
                  ShowHint = False
                  TabOrder = 0
                  ControlData = {
                    4C000000E45200004A1500000000000000000000000000000000000000000000
                    000000004C000000000000000000000001000000E0D057007335CF11AE690800
                    2B2E126202000000000000004C0000000114020000000000C000000000000046
                    8000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000100000000000000000000000000000000000000}
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'Origem'
                ImageIndex = 1
                object RxRichEdit_send: TRxRichEdit
                  Left = 0
                  Top = 0
                  Width = 802
                  Height = 206
                  Align = alClient
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ScrollBars = ssVertical
                  StreamFormat = sfPlainText
                  TabOrder = 0
                  OnKeyDown = RxRichEdit_sendKeyDown
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'Visualizar'
                ImageIndex = 2
                object WebBrowserView: TWebBrowser
                  Left = 0
                  Top = 0
                  Width = 802
                  Height = 206
                  Align = alClient
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 0
                  ControlData = {
                    4C000000E45200004A1500000000000000000000000000000000000000000000
                    000000004C000000000000000000000001000000E0D057007335CF11AE690800
                    2B2E126202000000000000004C0000000114020000000000C000000000000046
                    8000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000100000000000000000000000000000000000000}
                end
              end
            end
          end
          object Panel_Assunto: TPanel
            Left = 0
            Top = 0
            Width = 814
            Height = 69
            Align = alTop
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            OnResize = Panel_AssuntoResize
            object Label3: TLabel
              Left = 8
              Top = 10
              Width = 72
              Height = 20
              Caption = 'Assunto:'
            end
            object xAssunto: TEdit
              Left = 87
              Top = 3
              Width = 722
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 100
              ParentFont = False
              TabOrder = 0
            end
            object DateTimePicker1: TDateTimePicker
              Left = 261
              Top = 40
              Width = 212
              Height = 28
              Date = 39659.297589328700000000
              Time = 39659.297589328700000000
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DateTimePicker2: TDateTimePicker
              Left = 477
              Top = 40
              Width = 116
              Height = 28
              Date = 39659.000000000000000000
              Time = 39659.000000000000000000
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Kind = dtkTime
              ParentFont = False
              TabOrder = 2
            end
            object Prioritymsg: TComboSpeedButton
              Left = 600
              Top = 40
              Width = 209
              Height = 28
              Hint = 'Prioridade da mensagem'
              PopupMenu = PopupMenu_priority
              Caption = 'Prioridade Normal'
              Flat = True
              Glyph.Data = {
                D6000000424DD60000000000000046000000280000000C0000000C0000000100
                08000000000090000000120B0000120B0000040000000000000033CCFF000033
                660000000000FFFFFF0003020202020202020202020302000000000000000000
                0002020000000001010000000002030200000000000000000203030200000001
                0100000002030303020000020200000203030303020000020200000203030303
                0302000202000203030303030302000101000203030303030303020000020303
                0303030303030200000203030303030303030302020303030303}
              ShowHint = True
              OnClick = PrioritymsgClick
            end
            object RadioButton1: TRadioButton
              Left = 8
              Top = 39
              Width = 126
              Height = 30
              Caption = 'Envio Imediato'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              TabStop = True
              OnClick = RadioButton1Click
            end
            object RadioButton2: TRadioButton
              Left = 136
              Top = 39
              Width = 121
              Height = 30
              Caption = 'Agendar Envio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              OnClick = RadioButton2Click
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Inicio'
          ImageIndex = 3
          TabVisible = False
          object GroupBox4: TGroupBox
            Left = 0
            Top = 144
            Width = 814
            Height = 329
            Align = alBottom
            Caption = 'Tipo de envio de mensagem:'
            TabOrder = 0
            object Label6: TLabel
              Left = 35
              Top = 181
              Width = 84
              Height = 16
              Caption = 'Dia do m'#234's:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 144
              Top = 224
              Width = 39
              Height = 20
              Caption = 'M'#234's:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 37
              Top = 119
              Width = 112
              Height = 16
              Caption = 'Dia da Semana:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RadioButton3: TRadioButton
              Left = 16
              Top = 32
              Width = 145
              Height = 17
              Caption = 'Envio '#250'nico'
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object RadioButton9: TRadioButton
              Left = 36
              Top = 54
              Width = 85
              Height = 17
              Caption = 'Imediato'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object RadioButton10: TRadioButton
              Left = 128
              Top = 56
              Width = 97
              Height = 17
              Caption = 'Agendado:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object DateTimePicker3: TDateTimePicker
              Left = 223
              Top = 52
              Width = 178
              Height = 24
              Date = 39659.297589328700000000
              Time = 39659.297589328700000000
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object DateTimePicker4: TDateTimePicker
              Left = 407
              Top = 52
              Width = 90
              Height = 24
              Date = 39659.000000000000000000
              Time = 39659.000000000000000000
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Kind = dtkTime
              ParentFont = False
              TabOrder = 4
            end
            object RadioButton4: TRadioButton
              Left = 16
              Top = 96
              Width = 145
              Height = 17
              Caption = 'Envio semanal'
              TabOrder = 5
            end
            object ComboBox1: TComboBox
              Left = 148
              Top = 116
              Width = 145
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 16
              ItemIndex = 0
              ParentFont = False
              TabOrder = 6
              Text = 'Segunda-feira'
              Items.Strings = (
                'Segunda-feira'
                'Ter'#231'a-feira'
                'Quarta-feira'
                'Quinta-feira'
                'Sexta-feira'
                'S'#225'bado'
                'Domingo')
            end
            object RadioButton5: TRadioButton
              Left = 16
              Top = 160
              Width = 137
              Height = 17
              Caption = 'Envio mensal'
              TabOrder = 7
            end
            object ComboBox2: TComboBox
              Left = 116
              Top = 178
              Width = 72
              Height = 28
              Style = csDropDownList
              ItemHeight = 20
              ItemIndex = 0
              TabOrder = 8
              Text = '1'
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20'
                '21'
                '22'
                '23'
                '24'
                '25'
                '26'
                '27'
                '28'
                '29'
                '30'
                '31')
            end
            object RadioButton6: TRadioButton
              Left = 16
              Top = 224
              Width = 129
              Height = 17
              Caption = 'Envio anual'
              TabOrder = 9
            end
            object ComboBox3: TComboBox
              Left = 201
              Top = 213
              Width = 128
              Height = 28
              Style = csDropDownList
              ItemHeight = 20
              ItemIndex = 0
              TabOrder = 10
              Text = 'Janeiro'
              Items.Strings = (
                'Janeiro'
                'Fevereiro'
                'Mar'#231'o'
                'Abril'
                'Maio'
                'Junho'
                'Julho'
                'Agosto'
                'Setembro'
                'Outubro'
                'Novembro'
                'Dezembro')
            end
            object RadioButton7: TRadioButton
              Left = 344
              Top = 128
              Width = 60
              Height = 17
              Caption = 'Dia:'
              TabOrder = 11
            end
            object ComboBox4: TComboBox
              Left = 405
              Top = 125
              Width = 72
              Height = 28
              Style = csDropDownList
              ItemHeight = 20
              ItemIndex = 0
              TabOrder = 12
              Text = '1'
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20'
                '21'
                '22'
                '23'
                '24'
                '25'
                '26'
                '27'
                '28'
                '29'
                '30'
                '31')
            end
            object RadioButton8: TRadioButton
              Left = 489
              Top = 128
              Width = 152
              Height = 17
              Caption = 'Dia da semana:'
              TabOrder = 13
            end
            object ComboBox5: TComboBox
              Left = 646
              Top = 125
              Width = 51
              Height = 28
              Style = csDropDownList
              ItemHeight = 20
              ItemIndex = 0
              TabOrder = 14
              Text = '1'#176
              Items.Strings = (
                '1'#176
                '2'#176
                '3'#176
                '4'#176
                '5'#176)
            end
            object ComboBox6: TComboBox
              Left = 529
              Top = 154
              Width = 169
              Height = 28
              Style = csDropDownList
              ItemHeight = 20
              ItemIndex = 0
              TabOrder = 15
              Text = 'Segunda-feira'
              Items.Strings = (
                'Segunda-feira'
                'Ter'#231'a-feira'
                'Quarta-feira'
                'Quinta-feira'
                'Sexta-feira'
                'S'#225'bado'
                'Domingo')
            end
          end
        end
      end
      object CoolBar3: TCoolBar
        Left = 0
        Top = 508
        Width = 822
        Height = 53
        Align = alBottom
        Bands = <
          item
            Break = False
            Control = ToolBar1
            FixedSize = True
            ImageIndex = -1
            MinHeight = 47
            Width = 818
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnResize = CoolBar3Resize
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 814
          Height = 47
          Align = alNone
          AutoSize = True
          ButtonHeight = 45
          Caption = 'ToolBar1'
          EdgeBorders = []
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object Panelenv: TPanel
            Left = 0
            Top = 2
            Width = 600
            Height = 45
            ParentColor = True
            TabOrder = 0
            object Label_tot1: TLabel
              Left = 1
              Top = 1
              Width = 598
              Height = 43
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 21248
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
          end
          object BitBtn_send: TBitBtn
            Left = 600
            Top = 2
            Width = 214
            Height = 45
            Hint = 'Enviar Mensagem'
            Caption = 'Enviar Mensagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 24064
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn_sendClick
          end
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'html'
    Filter = 'Documento Web|*.html|Documento Texto|*.txt'
    FilterIndex = 0
    Title = 'Salvar mensagem Como'
    Left = 472
    Top = 432
  end
  object PrintDialog1: TPrintDialog
    Left = 464
    Top = 392
  end
  object Timer_clearbar: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer_clearbarTimer
    Left = 352
    Top = 432
  end
  object Timer_Sendup: TTimer
    Enabled = False
    Left = 392
    Top = 432
  end
  object XPManifest1: TXPManifest
    Left = 360
    Top = 394
  end
  object FindDialog1: TFindDialog
    OnFind = FindDialog1Find
    Left = 504
    Top = 390
  end
  object Timer_usr: TTimer
    Enabled = False
    Interval = 5000
    Left = 318
    Top = 432
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Documentos web|*.htm;*.html|Texto|*.txt'
    FilterIndex = 0
    Title = 'Importar Documento Web'
    Left = 432
    Top = 432
  end
  object cdColor: TColorDialog
    Left = 512
    Top = 432
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 321
    Top = 392
  end
  object PopupMenu_priority: TPopupMenu
    Left = 550
    Top = 392
    object PrioridadeAlta1: TMenuItem
      Caption = 'Prioridade Alta'
      OnClick = PrioridadeAlta1Click
    end
    object PrioridadeNormal1: TMenuItem
      Caption = 'Prioridade Normal'
      Checked = True
      OnClick = PrioridadeNormal1Click
    end
    object PrioridadeBaixa1: TMenuItem
      Caption = 'Prioridade Baixa'
      OnClick = PrioridadeBaixa1Click
    end
  end
  object ImageList_mail: TImageList
    Left = 594
    Top = 390
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      990000000000000000000000000000000000946D460085613B0085613B008561
      3B0085613B0085613B0085613B0000000000000000009999990093908C008E93
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000033CC
      FF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CC
      FF0033CCFF0000000000000000000000000000000000000000009F774D00926E
      4A008F6A44008F6A4400876541008C65390086613B0086613B00815E33009999
      990000000000000000000000000000000000A8855A00FCF2E100FBEED700FBEE
      D700F9EACF00F8E7C80073472A00C1C2C000876F5D006A4939006A4132006A49
      390066666600AFB8BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000033CC
      FF0033CCFF0033CCFF0033CCFF00003366000033660033CCFF0033CCFF0033CC
      FF0033CCFF000000000000000000000000000000000000000000AB866000FCF1
      DB00000000008499A1008A847700AD906B00C9AF8B00C9AF8B008B6640009999
      990000000000000000000000000000000000AE8B6300FDF5E600FDF5E600F9F2
      DF00CDB89D006666660033CCFF0093310F00AC471000B9511C00DC5D2A00DE70
      3C00DA9C4200C97D4900593F3800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CC
      FF00000000000000000000000000000000000000000000000000AB866000FEF5
      E7008DC6CF000000000033BCD6000066CC00CDB38F00CDB38F008F6A44009999
      990000000000000000000000000000000000B4916600FDF8EF00FDF8EF00FDF5
      E600AB8E7300E6FAE30099FFFF0041170B0082400F0033570500CD632400D873
      4600D3763900CE7340005E543200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033CCFF0033CCFF0033CCFF00003366000033660033CCFF0033CCFF0033CC
      FF00000000000000000000000000000000000000000000000000AF8A6400FEF5
      E700CBDED5007FFFFE0033CCFF0033BCD6000066CC00C8B28F00825529009999
      990000000000000000000000000000000000B5956C00FEFBF700FDF8EF00FDF8
      EF00FDF5E600CAAD9E00E6FAE30033CCFF003F160D003C1709003C170900D87B
      4A00D2673B00D65D350050572C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033CCFF0033CCFF00000000000000000033CCFF0033CCFF000000
      0000000000000000000000000000000000000000000000000000B38F6700FFF8
      EF00FEF5E700089BC3007FFFFE0033CCFF0033BCD6000066CC0070410D009999
      990000000000000000000000000000000000B4916600FEFCF800FEFCF800F9F2
      DF00E6D7BD00DFCBA8008D603A0099FFFF0033CCFF0033CCFF003F160D00D390
      4500D0714A00D26D4D0097561100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033CCFF0033CCFF00000000000000000033CCFF0033CCFF000000
      0000000000000000000000000000000000000000000000000000B6926A00FFF8
      EF00FFF8EF00FEF5E700089BC30084FDFF0033CCFF0033BCD6000066CC009999
      990000000000000000000000000000000000BC956E0000000000FEFCF800E6D3
      B8009E754E009E754E009E754E00E7FFDE0099FFFF0033CCFF003F160D00E69E
      4600CD7C4200B1722E0058530800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033CCFF00000000000000000033CCFF00000000000000
      0000000000000000000000000000000000000000000000000000BB946D00FDFA
      F600FDFAF600FFF8EF00E5D3BC00089BC3007FFFFE0033CCFF0033BCD6000066
      CC0000000000000000000000000000000000BB9771000000000000000000E6D7
      BD00FEFBF700E3C9A5009F7852007D3C2000E7FFDE0033CCFF003F160D00ECB3
      64004C7A5D006A6D17002F4C0700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033CCFF00003366000033660033CCFF00000000000000
      0000000000000000000000000000000000000000000000000000BB946D000000
      0000FDFAF600FDFAF600E1D0BB00E1D0BB00089BC30084FDFF0033CCFF0033BC
      D60000000000000000000000000000000000BE9A72000000000000000000E6D3
      B800F1D5B300A17F540099999900E7FFDE0099FFFF0099FFFF003F160D00ECC4
      830046991900428911001A340400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033CCFF0033CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BA9874000000
      00000000000000000000E1D0BB00FDFAF600F1D5B200089BC3007FFFFE0033CC
      FF00583C3500000000000000000000000000BE9A72000000000000000000E6D3
      B800AE8B630099999900000000006666330083704B00937348008D613200E3CB
      95001EA5030031861E00644B1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033CCFF0033CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9A6F00BD9A
      6F00BA987400BB946D00BB946D00BB946D00B1B6B50000000000000000009770
      4A00A06FA700BC84CD00473B4F00000000000000000000000000000000000000
      0000000000000000000000000000AAA8960080A95E00C0F07A00D9DA9200F4C1
      6500727B3200A29C8900C3C8C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9AAF400BA8AC4006E677400000000000000000000000000000000000000
      000000000000000000000000000000000000BCB9B1009999660089824B00AB8A
      5D00B4B5AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B5C8900977FA10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000009999990099999900999999009999990099999900999999009999
      99009999990099999900000000000000000000000000000000006C6C6C004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D004D4D4D006C6C6C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666003333330033333300333333003333
      3300333333003333330033333300999999000000000000000000000000000000
      000000CCFF004E7BA6004E7BA6004E7BA6004E7BA6004E7BA6004E7BA6004E7B
      A6004E7BA600999999000000000000000000000000001B81B3001B81B3001B81
      B3001379AB001379AB000D73A5000D73A5000D73A5000D73A500086EA000086E
      A00000669900006699004A4A4A006C6C6C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FDF1DD00FDF1DD00FDF1DD00FCEED000FCEED000FBE9C400FBE9
      C4004E7BA6009999990000000000000000002287BA0066CCFF001F84B70099FF
      FF0069D0F7005BB5D7004A94AF004E9AB70058AFCF004E9AB7004A94AF005BB5
      D7003BA0D30099FFFF00006699004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000666666006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEF6E600FEF6E600FEF6E600FDF1DD00FDF1DD00FCEED000FCEE
      D0004E7BA600999999000000000000000000278CBF0066CCFF002D92C50099FF
      FF00569AA7005A544B0056504800534C44007CDCEF004B453E0048423A00453F
      38004297C20099FFFF00006699004D4D4D000000000000000000840000008400
      00000000000000000000000000000000000000000000C6C3C600000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000666666006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEF8EF0000000000000000000000000000000000000000000000
      00004E7BA600999999000000000000000000278CBF0066CCFF002D92C50099FF
      FF0078716700736C63006E675E007CDCEF0084EBFF007CDCEF005B544C005650
      48003A86AC0099FFFF00006699004D4D4D000000000000000000840000000000
      00000000000000000000000000000000000000000000C6C3C600000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      FF00333333009999990000000000666666000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FEF8EF00FEF8EF00FEF8EF00FEF6E600FEF6E600FDF1DD00FDF1
      DD004E7BA6009999990000000000000000002A8FC20066CCFF003399CC0099FF
      FF0090897E008C857A0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF006E67
      5E00645D550099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000848284000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999004A4A
      FF004A4AFF003333330099999900666666006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEFAF600000000000000000000000000000000000000000082FE
      FE004E7BA6009999990000000000000000002A8FC20066CCFF003399CC0099FF
      FF00A59D9000A29A8E009E968A0094F7FF0094F7FF0094F7FF008C857A00877F
      750057BCEF0099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF0033333300666666000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FEFCF700FEFCF700FEFCF700FEF8EF0082FEFE0000CCFF0000CC
      FF004E7BA6009999990000000000000000002A8FC20066CCFF003399CC0099FF
      FF0094F7FF00ADA59800ADA59800ADA5980094F7FF00A59D9100A29A8D009E96
      8A0057BCEF0099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000848284000000000000000000000000000000000084828400848284000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF004A4AFF00333333006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEFCF70000000000000000000000000082FEFE00FEFCF100FEFC
      F1004E7BA6009999990000000000000000002D92C5006CD7FF003399CC0099FF
      FF0099FFFF0099FFFF00ADA59800ADA5980099FFFF00ADA59800ADA5980099FF
      FF0060C5F80099FFFF00086EA0004D4D4D000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF004A4AFF004A4AFF000000000000000000666666000000
      0000000000000000000033333300999999000000000000000000000000000000
      000000CCFF00FEFCF7000000000000000000FEFCF70082FEFE00FEFAF60082FE
      FE00999999000000000000000000000000002D92C5007CDFFF002D92C500F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0084E7FF00F0FBFF000B71A3006C6C6C000000000000000000840000000000
      0000848284000000000084828400848284000000000084828400848284000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF004A4AFF00333333006666660066666600666666006666
      6600666666006666660033333300999999000000000000000000000000000000
      000000CCFF00FEFCF700FEFCF700FEFCF700FEFCF70082FEFE0082FEFE004E7B
      A600000000000000000000000000000000003399CC0084EBFF0084EBFF002D92
      C5002D92C5002D92C5002D92C5002D92C5002D92C5002D92C500278CBF002489
      BC001B81B3001B81B3001B81B300000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF003333330066666600FF666600FF666600FF666600FF66
      6600FF666600FF66660033333300999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC00F0FBFF0099FFFF0099FF
      FF0099FFFF00F0FBFF002489BC002489BC002489BC002489BC001F84B7001F84
      B7001B81B3000000000000000000000000000000000000000000840000000000
      0000840000000000000084000000840000000000000084000000840000000000
      000000000000000000000000000000000000333333004A4AFF004A4AFF004A4A
      FF004A4AFF004A4AFF003333330066666600FF666600FF666600FF666600FF66
      6600FF666600FF66660033333300999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00F0FBFF00F0FB
      FF00F0FBFF002A8FC20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000004A4A
      FF004A4AFF003333330000000000666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC002D92C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      FF00333333000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      3300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFF81FF0000
      E007E00F018F0000C003C00F00030000C003C00F00010000E007C40F00010000
      E007C00F00010000F00FC00F00010000F00FC00F40010000F81FC00F60010000
      F81FD00F60010000FC3FDC0762010000FC3FC061FE010000FE7FFFF1FF070000
      FFFFFFF3FFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFF00F803C001F0F1FE00
      F0038000F4F9FEDCF0030000F449E600F0030000C211E600F0030000D803E2DC
      F0030000D2138000F0030000DC0700DCF0030000D5070000F0030000DC6700DC
      F3070000D49F0000F00F0001DFFF0000FFFF0007D49F0000FFFF83FFC00FE201
      FFFFC7FFFFFFE7FFFFFFFFFFFFFFEFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenuNav: TPopupMenu
    Left = 394
    Top = 390
    object Editar1: TMenuItem
      Caption = 'Editar'
      Checked = True
    end
    object Origem1: TMenuItem
      Caption = 'Origem'
    end
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 316
    Top = 486
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'All (*.jpg;*.jpeg)|*.jpg;*.jpeg|JPEG Image File (*.jpg)|*.jpg|JP' +
      'EG Image File (*.jpeg)|*.jpeg'
    Title = 'Abrir Imagem de Fundo'
    Left = 286
    Top = 391
  end
  object PopupMenu_fundo: TPopupMenu
    Left = 118
    Top = 367
    object Inserir1: TMenuItem
      Caption = 'Pano de fundo'
      OnClick = ComboSpeedButton2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object NoRepetir1: TMenuItem
      Caption = 'N'#227'o Repetir'
      OnClick = NoRepetir1Click
    end
    object repetirimagem1: TMenuItem
      Caption = 'Repetir imagem'
      Checked = True
      OnClick = repetirimagem1Click
    end
    object RepetirX1: TMenuItem
      Caption = 'Repetir horizontal'
      OnClick = RepetirX1Click
    end
    object RepetirY1: TMenuItem
      Caption = 'Repetir vertical'
      OnClick = RepetirY1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fixarfundo1: TMenuItem
      Caption = 'Fixar fundo'
      OnClick = Fixarfundo1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Limpar1: TMenuItem
      Caption = 'Limpar fundo'
      OnClick = Limpar1Click
    end
  end
  object Timer_btsend: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer_btsendTimer
    Left = 296
    Top = 322
  end
  object PopupMenu_cordefundo: TPopupMenu
    Left = 118
    Top = 407
    object MenuItem1: TMenuItem
      Caption = 'Cor de fundo'
      OnClick = ComboSpeedButton3Click
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Caption = 'Cor Link'
      OnClick = MenuItem3Click
    end
    object CorLinkativo1: TMenuItem
      Caption = 'Cor Link ativo'
      OnClick = CorLinkativo1Click
    end
    object CorLinkvisitado1: TMenuItem
      Caption = 'Cor Link visitado'
      OnClick = CorLinkvisitado1Click
    end
  end
  object PopupMenu_som: TPopupMenu
    Left = 118
    Top = 447
    object MenuItem4: TMenuItem
      Caption = 'Cor de fundo'
      OnClick = ComboSpeedButton3Click
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = 'Cor Link'
      OnClick = MenuItem3Click
    end
    object MenuItem7: TMenuItem
      Caption = 'Cor Link ativo'
      OnClick = CorLinkativo1Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Cor Link visitado'
      OnClick = CorLinkvisitado1Click
    end
  end
  object ImageList_msg: TImageList
    Left = 458
    Top = 270
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000FFF5F000FEF2EE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF5F100FEF1ED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000099CC000EBEEE001B98
      BE006493A300C4BFBE00FFF5F000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E9DD40013BAEB001B95
      BA006392A200C2BDBC00FEF1ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010A2D50024D2FC0021CE
      F80021CEF80024D2FC0010C6F7001A9BC2003194B30087A1AB00E1D5D2000000
      000000000000000000000000000000000000000000003BB6E80031CEF70031CE
      F70031CEF70031D5FF0016C1F1001A9BC4003091AF00889FA800DFD3D000FFFB
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001FA7DA0021CEF80021CE
      F80021CEF80021CEF80021CEF80021CEF80021CEF80024D2FC0024D2FC0001B5
      E700FFF7F400000000000000000000000000000000003BB6E80037C4ED0044D3
      F80038CEF70031CEF70031CEF70031CEF70031CEF70031D5FF0020CFFF0007AE
      DE00E5F0F3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027ABDE0051DBFC0042D5
      F90039D3F90021CEF80021CEF80021CEF80021CEF80021CEF80021CEF80019CE
      FA00FFF7F400000000000000000000000000000000003DC0EA004AC2EE006EE0
      FD0063DCFA005ADBFB004BD6FA002ACCF80031CEF70031CEF70031CEF70029C9
      F60053C6E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041BDE9007AE4FE006BDE
      FB006BDEFB005BDBFA0053D9F90021CEF80021CEF80021CEF80021CEF80021CE
      F800F5F5F600000000000000000000000000000000004AC2EE006ED6F70095E7
      FD0084E2FE0084E2FE0073DEFC006DDEFA0063DCFA002ACCF8002ACCF80031CE
      F70044D3F800F5FBFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058CCF000A5EDFE009BE9
      FD008CE6FD0084E4FC0072E0FB0072E0FB005BDBFA0019CEFA0021CEF80021CE
      F800DCEEF5000000000000000000000000000000000059CDF0008CE6FF0091DE
      F500AFEEFD00A6EAFB009BE9FE0092E5FA0092E5FA0089E8FA006EE0FD0038CE
      F70050D7FB0080D1EB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000071DBF800CEF5FE00C5F2
      FD00BBF0FD00ADEDFD00A2EAFC00A2EAFC0093E7FD0093E7FD0064E0FE0029CF
      F800B5E0EF00000000000000000000000000000000006BD5F1008CE6FF0063D0
      ED0092DBF100B8ECF800C5F2FC00C5F2FC00B6EFFD00B6EFFD00A4EDFF0092E5
      FA00A4EDFF006ED6F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007CE2FC00CEF5FE00DFFA
      FF00CEF5FE00C5F2FD00BBF0FD00ADEDFD00ADEDFD00A2EAFC009BE9FD008CE6
      FD009CD7EC00000000000000000000000000F5FAFC0073DEF50095EFFE0095EF
      FE006BD5F10063D0ED006ACCEA00BDF1FD00D6F9FF00BDF1FD00B6EFFD00A6EA
      FB00AFEEFD00A4EDFF00F0F7FA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FAFC008BE9FA008BE9FA006BD7
      F0005FCCE90072CAE600DFFAFF00D7F8FF00D7F8FF00CEF5FE00BBF0FD00BBF0
      FD0085D2E900000000000000000000000000F0F7FA0084E6FA009BF0FF0095EF
      FE0095EFFE0095EFFE009BF0FF0073DEF50062CAEA00B3E6F700CFF2FC00DCF9
      FE00DCF9FE00D0F7FF0080D1EB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6F2F8009BF2FE009FF7FF009FF7
      FF009FF7FF009FF7FF006ACEE9008BD5EC00A5DFF100C7EDF900E7F8FE00EFFF
      FF007DCEE700000000000000000000000000E5F5FA0095EFFE009EF7FE009EF7
      FE009EF7FE009EF7FE009EF7FE009EF7FE009EF7FE00A5F7FF00A5F7FF0032B2
      D400C5E7F000A2DEF10089D4EB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000072DEF000A5F7FF00A5F7
      FF00A5F7FF00A5F7FF0052C4E1005ACEE70067D5EE0083E7F7008DEDF80027AE
      D400E7F8FE00000000000000000000000000000000006ADBEF00A5F7FF00A5F7
      FF00A5F7FF00A5F7FF0053C5E10058CCE60063D0ED0073DEF5008CEEF90032B2
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007DCEE7005ACEE70072DE
      F0008DEDF8007DBCD20000000000000000000000000000000000F7FAFC00F2F9
      FC0000000000000000000000000000000000000000007CCBE60058CCE60072DD
      F00087EBF80077BAD10000000000000000000000000000000000E5F5FA00F0F7
      FA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF009FFF9FFF0000000081FF81FF00000000
      801F800F00000000800780070000000080078007000000008007800300000000
      8007800300000000800780030000000080070001000000000007000100000000
      00070001000000008007800F0000000083CF83CF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
