object webchat_menu: Twebchat_menu
  Left = 1105
  Top = 3
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = 'HWSsac'
  ClientHeight = 637
  ClientWidth = 352
  Color = clWhite
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenuHWS
  OldCreateOrder = False
  Position = poDefault
  PrintScale = poNone
  OnActivate = FormActivate
  OnCanResize = FormCanResize
  OnClick = FormClick
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDockOver = FormDockOver
  OnMouseDown = FormMouseDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 618
    Width = 352
    Height = 19
    Panels = <
      item
        Bevel = pbRaised
        Width = 160
      end
      item
        Width = 50
      end>
  end
  object PageControlsac: TPageControl
    Left = 0
    Top = 0
    Width = 352
    Height = 618
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Conex'#227'o'
      OnResize = TabSheet1Resize
      object Label_conect: TLabel
        Left = 0
        Top = 511
        Width = 344
        Height = 79
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Panelaut: TPanel
        Left = 60
        Top = 142
        Width = 225
        Height = 299
        BevelOuter = bvNone
        ParentBackground = True
        ParentColor = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 32
          Width = 27
          Height = 13
          Caption = 'www.'
        end
        object Label_stat: TLabel
          Left = 0
          Top = 227
          Width = 225
          Height = 72
          Align = alBottom
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3236352
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label4: TLabel
          Left = 29
          Top = 4
          Width = 128
          Height = 16
          Caption = 'Tela de autentica'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6118749
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lb1: TLabeledEdit
          Left = 36
          Top = 29
          Width = 187
          Height = 21
          Hint = 'Digite o dom'#237'nio'
          EditLabel.Width = 3
          EditLabel.Height = 13
          EditLabel.Caption = ' '
          TabOrder = 0
        end
        object lb2: TLabeledEdit
          Left = 6
          Top = 69
          Width = 217
          Height = 21
          Hint = 'Digite seu usu'#225'rio'
          EditLabel.Width = 39
          EditLabel.Height = 13
          EditLabel.Caption = 'Usu'#225'rio:'
          TabOrder = 1
        end
        object lb3: TLabeledEdit
          Left = 6
          Top = 109
          Width = 217
          Height = 21
          Hint = 'Digite sua senha'
          EditLabel.Width = 34
          EditLabel.Height = 13
          EditLabel.Caption = 'Senha:'
          PasswordChar = '*'
          TabOrder = 2
          OnKeyPress = lb3KeyPress
        end
        object Salvarsenha2: TCheckBox
          Left = 9
          Top = 141
          Width = 96
          Height = 17
          Hint = 'Gravar dados para autentica'#231#227'o'
          Caption = 'Gravar dados'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object btconectar: TBitBtn
          Left = 17
          Top = 172
          Width = 195
          Height = 42
          Hint = 'Conectar sistema'
          Caption = 'Conectar-se'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btconectarClick
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            08000000000000040000120B0000120B0000000100000001000007681D00E4E0
            E300BDBDBD0000F19200469F500000CC520093C09A00D6D6D60055FABC0085BC
            8C0026923800F8FFFC00BEF0C7005CD9890052BD7B0038AB610000990000A5F2
            CA00D6EED60095D5980011B33800E8FFF6003CE28B0000D35B004AB36900B5D7
            BA00A0EEC00001B82A0033CC660082D88E000D8D290082A88600E4F1E50030E3
            8A003CB94100AFAFAF00B2D6B400DEF8E20025D66B004CBA6E0076AA7B008BEF
            BB003EAD420023B1510052C05200BFF9DC000F9E1600CCCCCC0061EAA4000991
            1200C2D8C600ACFFE1008CE9B10039C35100A2D5A80024E4880000E0780041F2
            A700E6F7E70000BD320077EBAD0036CF7B0063BD7600F6F2F500DEDEDE003F8E
            50006DB57B00049C3A0070DEA100A3B7A7000085190000AF16008CC797004E9E
            600062B2730071C3790078C385009CF6CC006CFAC500178D2C005EEDA800BCD0
            BF00A2CAA80091E8B300DEF0DF001CCA5800C3FFE800EBE7EA002BEFA20025AF
            2600C5E7C600AEF7D5000CC3420004A80F0025C958009ADAAA00BBDEB00045E6
            9500CFEDD000F7F6F7001EFDAF0019D66C00D6FEEE00BAE4BC007CBD7B00E6FA
            EB0080CB8C0053C7590011DA71005DA868005EC7850060A165009FD0A700379D
            490045D071008DD8A2004ED2710068EDAC006BE1980002FDA90021993800D6F5
            E00026DB770032E0800063D2740012AC1900C8F6D400EFF0F0000F7C250091FC
            D200088C24001AB62D00A9E3B200C4C4C400B7FDE000B2EEC800CCF7DF0034C0
            570082E19F004AB563001DA21C000B8C2F0049AB560019923400DFFDEF0097D6
            A5003BEB9B00D0E0D20047F8B300F7FFF700E6E6E600ECFCEF0073CA740098C8
            A10001BF3B0002A609007EF4BC00A4E7AF000DA810003FB949000FC549002EFA
            AF005DB36A005EFFC60088C28F00CDFAE50097C197004FA96000FFFFFF00DEF6
            E10095F6C9005DD5800000D96A003FCB640067C481007AE78F007EECB20023EF
            9A0023CC690030D674003BBF6B00D5DCD700B6B6B6006DE6A400EDFEF600BFE7
            C500C9E5CB0034B94E00C1EFCF0085DDA400048421008FCE9C009EE5AF0088CB
            8D008DE3A80028E1840058B95F0051E19000E0E7E000BAD9C0001B8D310049E8
            9B0085F4C20010922A0004CE570047FFC3007CC289002E983D00A5F5CD0037F7
            AE006BB5730072FECB00EEE9ED002AB6320036A44A00EFF8EF00FCF2FA0097DF
            A70052BE7300A9FFE40000E88100519D590015932F002EC95A0065E29A0028B2
            5B0000F79E0058D0860002B3200006A911002DE696003CE39100CEFFEC00D4FF
            F700B3FFE400DFFFF700B3DBB5007DBE85000CD464003BD16D007DAD8600EAEB
            EB0008A81900CAD5CC0040D5780072C4840085D18600BFD0C20017C86300B4F9
            D90000C74900CEF0D60017E17F0058AE65006DF4B8009AFFDF00A8A8A8A8A8A8
            969663A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A896
            23B6B60207570BA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A807
            0740402F85B6B68507F10BA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A82F
            B5B540409696400785020285B57F0BA8A8A8A8A8A8A8A8A8A8A8A8A8A8A87F2F
            0101969696010196D4D401072F02022F407FA8A8A8A8A8A8A8A8A8A8A8A89607
            40963636C793C657575757577F7F96B52F85852F407FA8A8A8A8A8A8A8A84040
            01934A42EDED487019BA409657D47F636363F1402F858501A8A8A8A8A8A80740
            5799BE7871A7D2CEBF9191915251B5967F3F63636363F1073FA8A8A8A8630796
            D44A464F4FCF8E3E6A4CEDA4A4A4A4065251F3B5963F0B6363A8A8A8A8F107D4
            9671820A04A7FDA23EDAE3E044BD73BFBF0928281F40A83FA8A8A8A8A801017F
            32DE8FD6DDDDA718273DE65858E7E3AEDA186D6F28D46363A8A8A8A8A840963F
            9982780A0A180EE1B2924E9CAB5092F82B6E6EC8F0A83F3FA8A8A8A8A807F1D4
            4A824F008DE1BBEF9CEAEB54605A87FEB389B443F7A83FA8A8A8A8A87F407F40
            71CB80008D7D2CD94D33E9BC1384662D53359B0FD8D863A8A8A8A8A896967FF7
            4FDEDE00312C9872A194B7EF5EADB0FFC2F6592AA83F3FA8A8A8A8A84057D806
            46CB8F31D59F9E1777FC26657BB3C5CD61222C9B13A8A8A8A8A8A8A8403F3F49
            461E1E2E839B4738E2B13792C930E03921E4837D8CF1A8A8A8A8A86301635741
            BEBE82F2E5101B380364D10881AAD03CE0CC9AE410A6A8A8A8A8A8637F7F7F01
            85454AA05C5D3BACDCE2A3D3FF5686F9297A059A5D68A8A8A8A8A8A8A87F7F7F
            63A85F55167BCCCC215081E866EB1566CAC9EEFA4768A8A8A8A8A8A8A8A8A8A8
            A8A85FF476C9DFB734AA4DA5B80B0B15F9506C051B4BA8A8A8A8A8A8A8A8A8A8
            A8A8F50D8AB7C2DB5B11112D9090B8B8E8CAC3653B6AA8A8A8A8A8A8A8A8A8A8
            A8A8F50D4D1A5BEAE9A58788902590792DF9757BA036A8A8A8A8A8A8A8A8A8A8
            A8A81989292D11F98888BCBC887979FBB9B9C0741424A8A8A8A8A8A8A8A8A8A8
            A8A863C4AF7EECEC67BCFBFB79791262675A676B2A63A8A8A8A8A8A8A8A8A8A8
            A8A8A8EC7C90125A5A1212A9A9A9126267120C9F36A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8C19D0B5412123A3A3A3AA91262691D68A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A863C1B997A9A9D7D7D7D73AA997844BD7A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A863EC5A2569D70B0B0BD73AEC3663A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A8A8A83A20D7D79595D754BA54A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A8A8A8A8A8A80B0B0B0B0BA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
            A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8}
        end
        object chb_autologin: TCheckBox
          Left = 145
          Top = 143
          Width = 80
          Height = 17
          Hint = 'Conectar ao iniciar'
          Caption = 'Auto login'
          TabOrder = 5
          OnClick = chb_autologinClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Conectado'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 136
        Width = 344
        Height = 6
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = 4227200
        ParentColor = False
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 403
        Width = 344
        Height = 6
        Cursor = crVSplit
        Align = alBottom
        Beveled = True
        Color = clOlive
        ParentColor = False
        Visible = False
      end
      object Splitter3: TSplitter
        Left = 0
        Top = 304
        Width = 344
        Height = 6
        Cursor = crVSplit
        Align = alBottom
        Beveled = True
        Color = clOlive
        ParentColor = False
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 344
        Height = 136
        Align = alTop
        Caption = 'Intranet'
        TabOrder = 0
        object Label_intra: TLabel
          Left = 2
          Top = 121
          Width = 340
          Height = 13
          Align = alBottom
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ListView1: TListView
          Left = 2
          Top = 56
          Width = 340
          Height = 65
          Hint = 'Selecione o usu'#225'rio'
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Columns = <
            item
            end>
          LargeImages = ImageList_on
          ReadOnly = True
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ShowHint = True
          SmallImages = ImageList_on
          StateImages = ImageList_on
          TabOrder = 0
          ViewStyle = vsList
          OnChange = ListView1Change
          OnDblClick = ListView1DblClick
        end
        object CoolBar1: TCoolBar
          Left = 2
          Top = 15
          Width = 340
          Height = 41
          Bands = <
            item
              Break = False
              Control = ToolBar1
              FixedSize = True
              ImageIndex = -1
              MinHeight = 32
              Width = 336
            end>
          ParentShowHint = False
          ShowHint = True
          object ToolBar1: TToolBar
            Left = 0
            Top = 0
            Width = 260
            Align = alNone
            AutoSize = True
            ButtonHeight = 32
            ButtonWidth = 93
            Caption = 'ToolBar1'
            DisabledImages = ImageListops
            EdgeBorders = []
            Flat = True
            HotImages = ImageListops
            Images = ImageListops
            List = True
            ShowCaptions = True
            TabOrder = 0
            Transparent = False
            object ToolButton2: TToolButton
              Left = 0
              Top = 0
              Hint = 'Abrir chat com usu'#225'rio selecionado'
              AutoSize = True
              Caption = 'Chat'
              ImageIndex = 0
              OnClick = EnviarMensagem1Click
            end
            object ToolButton1: TToolButton
              Left = 67
              Top = 0
              Hint = 'Sistema de Confer'#234'ncia'
              AutoSize = True
              Caption = 'Confer'#234'cia'
              ImageIndex = 2
              OnClick = Abrirmodoconferncia1Click
            end
            object ToolButton3: TToolButton
              Left = 163
              Top = 0
              Hint = 'Sistema de envio de Mala Direta'
              AutoSize = True
              Caption = 'Mala direta'
              ImageIndex = 1
              OnClick = ToolButton3Click
            end
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 142
        Width = 344
        Height = 162
        Align = alClient
        Caption = 'Usu'#225'rios Web'
        TabOrder = 1
        object Label_usrweb: TLabel
          Left = 2
          Top = 147
          Width = 340
          Height = 13
          Align = alBottom
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ListView2: TTreeView
          Left = 2
          Top = 56
          Width = 340
          Height = 91
          Hint = 'Selecione o usu'#225'rio'
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Images = ImageList_areas
          Indent = 28
          ParentShowHint = False
          PopupMenu = PopupMenu2
          ReadOnly = True
          RightClickSelect = True
          ShowHint = True
          ShowRoot = False
          StateImages = ImageList_areas
          TabOrder = 0
          OnChange = ListView2Change
          OnDblClick = ListView2DblClick
        end
        object CoolBar3: TCoolBar
          Left = 2
          Top = 15
          Width = 340
          Height = 41
          Bands = <
            item
              Break = False
              Control = ToolBar2
              FixedSize = True
              ImageIndex = -1
              MinHeight = 32
              Width = 336
            end>
          ParentShowHint = False
          ShowHint = True
          object ToolBar2: TToolBar
            Left = 0
            Top = 0
            Width = 91
            Align = alNone
            AutoSize = True
            ButtonHeight = 32
            ButtonWidth = 87
            Caption = 'ToolBar1'
            DisabledImages = ImageListops
            EdgeBorders = []
            Flat = True
            HotImages = ImageListops
            Images = ImageListops
            List = True
            ShowCaptions = True
            TabOrder = 0
            Transparent = False
            object ToolButton4: TToolButton
              Left = 0
              Top = 0
              Hint = 'Abrir chat com usu'#225'rio selecionado'
              AutoSize = True
              Caption = 'Abrir Chat'
              ImageIndex = 0
              OnClick = MenuItem3Click
            end
          end
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 409
        Width = 344
        Height = 125
        Align = alBottom
        Caption = 'HWS: Suporte T'#233'cnico'
        TabOrder = 2
        Visible = False
        object ListView3: TListView
          Left = 2
          Top = 56
          Width = 340
          Height = 67
          Hint = 'Selecione o atendente'
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Columns = <>
          LargeImages = ImageList_on
          ReadOnly = True
          ParentShowHint = False
          PopupMenu = PopupMenu3
          ShowHint = True
          SmallImages = ImageList_on
          StateImages = ImageList_on
          TabOrder = 0
          ViewStyle = vsList
          OnChange = ListView3Change
          OnDblClick = ListView3DblClick
        end
        object CoolBar4: TCoolBar
          Left = 2
          Top = 15
          Width = 340
          Height = 41
          Bands = <
            item
              Break = False
              Control = ToolBar4
              FixedSize = True
              ImageIndex = -1
              MinHeight = 32
              Width = 336
            end>
          ParentShowHint = False
          ShowHint = True
          object ToolBar4: TToolBar
            Left = 0
            Top = 0
            Width = 162
            Align = alNone
            AutoSize = True
            ButtonHeight = 32
            ButtonWidth = 91
            Caption = 'ToolBar1'
            DisabledImages = ImageListops
            EdgeBorders = []
            Flat = True
            HotImages = ImageListops
            Images = ImageListops
            List = True
            ShowCaptions = True
            TabOrder = 0
            Transparent = False
            object ToolButton7: TToolButton
              Left = 0
              Top = 0
              Hint = 'Falar com Suporte t'#233'cnico'
              AutoSize = True
              Caption = 'Chat'
              ImageIndex = 0
              OnClick = MenuItem7Click
            end
            object ToolButton11: TToolButton
              Left = 67
              Top = 0
              Hint = 'Help Desk - Solicita'#231#227'o de servi'#231'os'
              AutoSize = True
              Caption = 'Help Desk'
              Enabled = False
              ImageIndex = 4
            end
          end
        end
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 534
        Width = 344
        Height = 56
        Align = alBottom
        Bands = <
          item
            Break = False
            Control = ToolBar3
            FixedSize = True
            ImageIndex = -1
            MinHeight = 53
            Width = 1588
          end>
        OnResize = CoolBar2Resize
        object ToolBar3: TToolBar
          Left = 0
          Top = 0
          Width = 1588
          Height = 53
          Align = alBottom
          ButtonHeight = 49
          Caption = 'ToolBar1'
          EdgeBorders = [ebBottom]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object bthws: TSpeedButton
            Left = 0
            Top = 2
            Width = 63
            Height = 49
            Hint = 'Suporte T'#233'cnico'
            Flat = True
            Glyph.Data = {
              260D0000424D260D0000000000003604000028000000320000002C0000000100
              080000000000F0080000120B0000120B00000001000000010000000000004DC0
              FA00628A8A0022608800AEAEAE00BEFCFF001D496000D7E9F900838A8F005763
              6A0011394E00A1D8EE00B6CBD8002489C6000C2740001A6BA8001347770086A2
              BB0054718D006896C400FFFFFF000A1D340091C4F5004D636800427AA300293B
              4600464B51005289B400A2C1DE0037547200568DC700BCBCBC001D74BD006275
              8100E6E6E600282A2D00617A8A000815240094A6AD00EFFFFF00949CA400446E
              9400193C5900F8F8F800A4E8F2003949570024649A0076B4F000DFDFDF00275E
              830078898F004B90CF00264354006EA5DB006992BC0010344800EFEFEF005C77
              8F003573A10088E6FF0073737500D6D6D600327EC60015519100CAE8EF0059B5
              DE00495A6800505F7100000C1E00D6FEFF0095B3BF0088ACD400C3C3C3004F84
              AE00486A860067B3D500497AAC0065D1F10021344400234F680030587B003F53
              6400072245001C40610073CEF500313A41005C8AAE0036627E0066AEE400346E
              96008193A400C4E5FE0098D6FF005B92B600294E7500259AE500B5B5B500489F
              DF00BCE0FF00223946003473BE00758693008FBEBE00CCD0D3009CA595003765
              A8000A2651004D6FBB007A8FA5007A7A7A0041415100E2EEF900070808001B59
              91006C8DA600192B38003397DC0031495A0055535300BED9F200BDDAD9009999
              9900436A7B00AFB9C50033333300EFF9FF006A737C00B4F1FF003C3C3C003971
              A900CCCCCC001020340066666600585D64000D3D7A0071C0E10060DBFE007BA5
              CD00A5ABAE00428ED60047739200596D7E0090CCE300316588002F558B001B20
              29007B9AB70052A0D80098E9FF002140520038536A00D5C6BF00266B9D00588C
              BE00769ECB0085A7CE002452820069849D00277EB80089ECFF009A9AA2003A66
              8A005B8B9C003399CC004E83BB000F467C00E0F2FF006193BE001A3748003472
              99003987D7002262A50032566800AEEAEA00487676006ADDFF0061C3F900CEFB
              FF00E7FCFF0079C4FE00D1EFF900465B6F0086AFD000162F49005B7A9D001433
              58004F7798003A4568003881BA002A4962005487C2004784AD007795AF008F93
              9700A1A3A500172E42006A6A6A0066CCFF00778A990044ABE80047718F007FAB
              DC007F9EC30096BBD9001F415C0098ADBE00527A7A0058585B00080C12000206
              0C000E303F00F0F7EA005F97C7007CB9D100414B55003979A700101A2A00438B
              C000445866006D9ECF00476175001E548D000519380028313B004B7A9B007F84
              88002A7296005F6A75003F42450033424C0085B7D900C4F7FF0073777B001940
              4A00153A6A001E4C8300AEE1F100497EA200C4FDFF00B7F3FF00D3F0FF004B52
              5900E6F5FF00B6DAF5002880AF00293E4B0008121800F7FFFF0084848400C1C7
              CC00165C9E006C7F9300CDE8FD002D445A008D8C8C002983CD00141414141414
              1414141414141414141414141414141414141414141414141414141414141414
              1414141414141414141414146E64141414141414141414141414141414141414
              1414141414141414141414141414141414141414141414141414141414141414
              6E64142B1F604830381414141414141414141414141414141414141414141414
              1414141414141414141414141414142B22671F306E641414C2424209E879603D
              382B14141414141414141414141414141414141414141414141414141414142B
              3048C2E1E309E3676E64141414087519F54EF5F17EC1043D222B141414141414
              141414141414141414141414141414383D60C1E842E54E4EF5DA042B6E641414
              142B326373F5634E4E4EF5F1E308C24830381414141414141414141414143830
              820408E3F1194E4E4E63C3C32DC22B146E64141414142B2195FD1D1DBD34E9E9
              BDE9347542E8791F30381414142B383D60C17E427563A8A8734E95FD1DAC95AC
              282B14146E64141414141422DCCC5018A44C188F4FE9E9370A0A3734427EC104
              8A08E351A8373737D2D20ACC503A9936BACCACC12B1414146E642B80D1D0D123
              82DC5E9600D0D0D0BAA756BAD0D0D0D1D1F6C3D8F600D0D0D1D1ACC8C8E0A713
              B5237000D1D1D1D191C422146E64143DD0EADD52793D57A1DF52DDB92DF0F05B
              C044862E2EB92355DF70523F2E10DA62FCA6A6F10E6AB95E8F8F9CEA6ADE9167
              6E6414388320C50FF814675773A5B07451FCF3FC793193C59F4BF56BBC0ED958
              3B54CC0762622BFE8C5441D9980303ABFF200F516E641422F53BEED5FE1414F9
              73D4EE94DCF26F7D2D0B45E7B1B11DB387BD05454545A26007F27D5A55729519
              F8C27976AC3B94126E641422D62714F96D8A7E1FE40C14F7425B070C5127275B
              07F76DAD6632F73822F778DCFCF21C9AE3B56C3030A048C22D2714286E641422
              D6B21440969D77DC1DB4147DB5C9629D5A14148D28141F8AFE46149776141442
              F3F336169B420951510C21B5EC27147E6E6414229594B2EED4CB7BF3D4EEB27F
              DCA72FFD8E14A6D8F114D3E8850B146870671402A7A735894EF44DA7B67B785D
              054526E86E64142237B0EF88032AE6925E4DE7AFAC1E4C379414B610E9B4F709
              73B1F702AE3214E6BD4CC9190D889FA3EA368E068C173C2B6E641422C3C73BA3
              E4E44E8523209401BD361DA59445A1FFCCB69F7A4E542CCE8719B1940A135A4E
              5FC5414F7C4E42798A0414146E64142273FF019E7914381484FA01C7B52619FA
              88C5B73E2E31F49C2EA5F459612541AF10FB1FDF205F71851FC2C2C285B7C214
              6E641422D8AB61FAC114141485EA613E432BD8AB61BC23906415EAD9D9DD5269
              6991293B3A84143CB9203F6ADE15DE52103E512B6E64143891DD64DDE82B1414
              C4B964AB963DF6713EEB7C6EA1D8252A339CB7D8BBDF15AA8B2D38387C52EB2E
              69818181819083386E6414146D832ACCD804141448912A2AC3CFFE152AB7D076
              CF6E73F6A8C3C373E46C55835383F8142BF8DFC3534F2AF5D63C48146E641414
              148260606022141414306060603D1467E18DFBF1E37E4375BDBA211A6C1C5A04
              6060301414142B3D60603D38141414146E641414141414141414141414141414
              141414143D9D241CC6CFCF7676847ECBC09D282B141414141414141414141414
              141414146E641414141414141414141414141414141414143892398DC047CA92
              CA9BCAB8BD9D8A14141414141414141414141414141414146E64141414141414
              14141414141414141414141414CD9AB812BAB83656BA574A5672821414141414
              1414141414141414141414146E64141414141414141414141414141414141414
              144813564A50E04929574A8CA75A381414141414141414141414141414141414
              6E641414141414141414141414141414141414141422564A1335DBDBDBB61618
              56C21414141414141414141414141414141414146E6414141414141414141414
              1414141414141414141411295016F7A627A69959728214141414141414141414
              14141414141414146E6414141414141414141414141414141414141414147B49
              A1A4777D7DC931BF6C381414141414141414141414141414141414146E641414
              1414141414141414141414141414141414143DEDA18FD4620B188F1B28141414
              141414141414141414141414141414146E641414141414141414141414141414
              14141414141414721BA9182F358FBFED1F141414141414141414141414141414
              141414146E6414141414141414141414141414141414141414141426D7E28FBE
              1803BCFB22141414141414141414141414141414141414146E64141414141414
              141414141414141414141414141414828FA9E25959E2A9C12B14141414141414
              1414141414141414141414146E64141414141414141414141414141414141414
              1414142B39D7D78F3A3A29601414141414141414141414141414141414141414
              6E64141414141414141414141414141414141414141414142818184C18BF3930
              14141414141414141414141414141414141414146E6414141414141414141414
              14141414141414141414141448A1ED1B4949082B141414141414141414141414
              14141414141414146E6414141414141414141414141414141414141414141414
              384A595959A1041414141414141414141414141414141414141414146E641414
              141414141414141414141414141414141414141414C68F8F59123D1414141414
              141414141414141414141414141414146E641414141414141414141414141414
              1414141414141414146029D74C322B1414141414141414141414141414141414
              141414146E64141414141414141414141414141414141414141414141422BA58
              EDC2141414141414141414141414141414141414141414146E64141414141414
              141414141414141414141414141414141414C6B3B86714141414141414141414
              1414141414141414141414146E64141414141414141414141414141414141414
              1414141414148A5D653814141414141414141414141414141414141414141414
              6E641414141414141414141414141414141414141414141414143D7A8A141414
              14141414141414141414141414141414141414146E6414141414141414141414
              14141414141414141414141414142B8A30141414141414141414141414141414
              14141414141414146E64}
            ParentShowHint = False
            ShowHint = True
            OnClick = bthwsClick
          end
          object ToolButton9: TToolButton
            Left = 63
            Top = 2
            Width = 7
            Caption = 'ToolButton9'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object btdesconectar: TSpeedButton
            Left = 70
            Top = 2
            Width = 130
            Height = 49
            Hint = 'Desconectar sistema'
            Caption = 'Desconectar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              36080000424D3608000000000000360400002800000020000000200000000100
              08000000000000040000120B0000120B0000000100008D00000014145B00CFCF
              F4006E6ED2006363AB00C2C2D5003232AD008C8CC900AFAFD400FCFCF8002323
              8D005151B0009393DD00D4D4D800EFEFF7003B3B8E0066669900B3B3C6002A2A
              74004949AE006666CC00DEDEDF00BDBDD4008383D70050508B0027279A00E6E6
              F700A5A5C8004141AD001B1B7900D1D1D500A0A0D300F7F7F7007474B2005252
              C400E7E7E5002A2A840018187100B6B6D6006666CC00BBBBC70040408B008383
              C500C0C0ED009F9FB700DEDEF700D6D6EE002E2E8D004B4BC500C4C4ED004343
              BD005B5BC60017176B003838AC007B7BD40033336600CECEEF007C7CA4008B8B
              D900B5B5E700BFBFE600A6A6E1005E5EB400C5C5CE00333399003636A6002A2A
              8C005B5B9200DFDFF200ECECEA00373785009999CC00EFEFFE00F8F8FD006060
              C4006969AD001D1D5B007A7ABE004949BF00AEAEE50049499A00ABABCE002323
              7E0020207400C5C5E6005151BE00D4D4E6003A3AB600E6E6FE00CDCDE5008181
              B5003131A00028287C007676D4004242B500ADADBD006E6EA8009F9FE3003434
              760054549B00D5D5F5007474CF00B1B1DF008C8CDE005D5DCA0029299200BFBF
              E000E5E5F00022226700A8A8E300B5B5CA00CCCCCC005D5D88004848B500E0E0
              E300BEBECA00FFFFFF005252CE008484DE004343C3003A3ABA007373DE003434
              B700ACACE000222295009B9BDF00EFEFED002929A5008D8DCB008383D1003333
              9900D2D2E0001C1C85005757BB0021218200AFAFC40014146600C5C5E1005252
              B5003B3B92007676BF0041419200000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000737373737373
              2222087373737373737373737373737373737373737373737373737373737371
              461A1A271D440873737373737373737373737373737373737373737373737388
              2A013069071A86720C4408737373737373737373737373737373737373737369
              303030016363373B2586103E0C7D087373737373737373737373737373730D69
              37372C2C2D2D2D2D2C2C2D88156D6D3E147D737373737373737373737373433B
              01637C0B4E302D434343434319194358046D276E147D73737373737373735537
              635384321302160B3C3B37431919191947474358042727717373737373735837
              2C4624238A123202160B0B390B3C2A2D190D474747476A820D737373731F5363
              2C4A245B236856675C13136464353535393C3A302C0D0D0D1F737373736A532C
              638C522E3477762F212F211335163939160232326737480D73737373732D372C
              3A5B23405656565631312F2121216767545D31312119480D7373737373552D19
              061C2E2E235D4D055632390B135C49057E32218320730D487373737308582C2C
              0352116F61401B890B30192C3A303A3970705D8525730D73737373730D581963
              8A526B361141840B4E2A2C30396C2C307C701C4F47474773737373736A2D4765
              515B5B4B522113546764800A344D393A0B785A62730D4873737373732D434729
              335B5B5B405D231831311B1B5454135C491B21851A7373737373737355191962
              001111235A5B5B40775454491364641384233F68456A73737373731F2D47630E
              8724522323112340402113353C3C3A39645A2E2E242B73737373734819191901
              657F28685A232E5A5A79160B3A37302A7C313F2E1C0F737373737373480D190D
              08735F3421545A5A84356C43431919437C13403F851773737373737373737348
              484803215C1312350B6C6C2D0D48480D2A02343F091708737373737373737373
              73735F6439160B2A2A3A4E3719190D0D2C7C4D56094273737373737373737373
              737359134E6C3A30432D3A374343192D302A352F7B3873737373737373737373
              7373155D60304E2A37373030372D2D373A3A6074186D73737373737373737373
              73731F3D75374E4E3A303737372D37303A2A3A214F1F73737373737373737373
              737373251319632A30372D2C2C2C2D303A2D2A5D507373737373737373737373
              73737373296C48436363191919192C373719164C737373737373737373737373
              737373731F063B0D2C2C0D0D0D0D192C477A8B1F737373737373737373737373
              737373737348653B2C190D4848480D43651E4873737373737373737373737373
              737373737373731943190D48480D43532D737373737373737373737373737373
              7373737373737373737373734848487373737373737373737373737373737373
              7373737373737373737373737373737373737373737373737373}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            OnClick = btdesconectarClick
          end
          object ToolButton8: TToolButton
            Left = 200
            Top = 2
            Width = 7
            Caption = 'ToolButton8'
            Style = tbsSeparator
          end
          object SpeedButton1: TSpeedButton
            Left = 207
            Top = 2
            Width = 130
            Height = 49
            Hint = 'Finalizar sistema'
            Caption = 'Finalizar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'MS Sans Serif'
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
      object GroupBox4: TGroupBox
        Left = 0
        Top = 310
        Width = 344
        Height = 93
        Align = alBottom
        Caption = 'Usu'#225'rios on-line no website:'
        TabOrder = 3
        Visible = False
        object Label_olnotreg: TLabel
          Left = 2
          Top = 78
          Width = 340
          Height = 13
          Align = alBottom
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -9
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ListView4: TListView
          Left = 2
          Top = 15
          Width = 340
          Height = 63
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Columns = <>
          LargeImages = ImageList_on
          ReadOnly = True
          ParentShowHint = False
          ShowHint = False
          SmallImages = ImageList_on
          StateImages = ImageList_on
          TabOrder = 0
          ViewStyle = vsList
          OnChange = ListView4Change
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Falha na conex'#227'o com internet'
      ImageIndex = 2
      TabVisible = False
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 344
        Height = 590
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aguardando sinal...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
  end
  object Panelstatus: TPanel
    Left = 136
    Top = 0
    Width = 151
    Height = 25
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Status:'
    end
    object lb4: TComboBoxEx
      Left = 50
      Top = 2
      Width = 99
      Height = 22
      Hint = 'Modificar Status'
      ItemsEx = <
        item
          Caption = 'On Line'
          ImageIndex = 0
          SelectedImageIndex = 0
        end
        item
          Caption = 'Ocupado'
          ImageIndex = 1
          SelectedImageIndex = 1
        end
        item
          Caption = 'Ausente'
          ImageIndex = 2
          SelectedImageIndex = 2
        end
        item
          Caption = 'Off Line'
          ImageIndex = 3
          SelectedImageIndex = 3
        end>
      Style = csExDropDownList
      ItemHeight = 16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = lb4Change
      Images = ImageList_on
      DropDownCount = 8
    end
  end
  object XPManifest1: TXPManifest
    Left = 144
    Top = 240
  end
  object TrayIcon_menu: TTrayIcon
    Active = False
    Animate = False
    AnimateInterval = 200
    ShowDesigning = False
    Images = ImageList_sys
    OnClick = TrayIcon_menuClick
    PopupMenu = popmnuGeral
    ShowHint = False
    Top = 240
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    OnMinimize = ApplicationEvents1Minimize
    Left = 33
    Top = 240
  end
  object popmnuGeral: TPopupMenu
    Left = 34
    Top = 272
    object ChatHWS1: TMenuItem
      Caption = 'HWS - Atendimento'
      OnClick = ChatHWS1Click
    end
    object N4: TMenuItem
      Caption = '-'
      Visible = False
    end
    object xcodnect: TMenuItem
      Caption = '&Conectar Atendimento'
      OnClick = xcodnectClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      ImageIndex = 3
      OnClick = Sobre1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Minimizar1: TMenuItem
      Caption = 'Minimizar'
      ImageIndex = 4
      OnClick = Minimizar1Click
    end
    object Sair1: TMenuItem
      Caption = 'Finalizar'
      ImageIndex = 7
      OnClick = Sair1Click
    end
  end
  object Timer_online: TTimer
    Enabled = False
    Interval = 4200
    OnTimer = Timer_onlineTimer
    Left = 110
    Top = 240
  end
  object ImageList_sys: TImageList
    Left = 220
    Top = 212
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00F6F4F400F7F5F500FCFBFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F900F6F4F400F7F5F500FAF9F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00777777003131310028282800292929003C3C3C009D9D9D00F8F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00777777003131310028282800292929003C3C3C009D9D9D00F8F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFB00A4A4
      A4002828280023232300212121001F1F1F001C1C1C001A1A1A0017171700282B
      2900F6F6F6000000000000000000000000000000000000000000F9F9F900A4A4
      A4002828280023232300212121001F1F1F001C1C1C001A1A1A0017171700282B
      2900F6F6F6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E00292D
      2C00282E2C00272E2B00252B290022262500202321001E211F001A1F1D001726
      2000172E2500F1F1F100000000000000000000000000000000008E8E8E00292D
      2C00282E2C00272E2B00252B290022262500202321001E211F001A1F1D001726
      2000172E2500F1F1F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC002C3F38002A46
      3B0028483B0026483B0025443700233D330021392F001F382E001B382C001741
      300000D2160024453700F8F7F7000000000000000000FCFCFC002C3F38002A46
      3B0028483B0026483B0025443700233D330021392F001F382E001B382C001741
      300000D2160024453700F8F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD004C504E0025704D0000EB
      5C0000E8550000E64E0000E447002259430003D33A0000DB330000D82C00165C
      400000D51D00133D2C00A4A4A40000000000FBFBFB004C504E0025704D0000EB
      5C0000E8550000E64E0000E447002259430003D33A0000DB330000D82C00165C
      400000D51D00133D2C00A4A4A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8F7F7002E5B490000EF6A0000ED
      620000EB5C0000E8550000E64D00246148002454410021513E001C57400000D9
      2B0000D72300164230003C413F00FCFBFB00F8F7F7002E5B490000EF6A0000ED
      620000EB5C0000E8550000E64D00246148002454410021513E001C57400000D9
      2B0000D72300164230003C413F00FAF9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD003265510000F2710000EF
      6A0000ED620000EA5B0000E855002A5946002C433900283D3500224A3A001A5E
      430000D92A001746330026342E00F7F6F600FDFDFD003265510000F2710000EF
      6A0000ED620000EA5B0000E855002A5946002C433900283D3500224A3A001A5E
      430000D92A001746330026342E00F7F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFD003962520000F4770000F1
      700000EF690000ED620000EA5B002F504300323936002D373300254A3B0007C2
      3C0000DC310018513A0024393000F7F5F500FEFDFD003962520000F4770000F1
      700000EF690000ED620000EA5B002F504300323936002D373300254A3B0007C2
      3C0000DC310018513A0024393000F7F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F80040554D003B69570006E4
      730000F1700000EF690017AD5B00344D4300353938002F3C37002653410000E1
      3F0000DF380001D832002C443B00FAFAFA00F9F8F80040554D003B69570006E4
      730000F1700000EF690017AD5B00344D4300353938002F3C37002653410000E1
      3F0000DF380001D832002C443B00F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA003F434100475751004161
      5400396C570000F1700035604F0039484200393A3900323D38002950400000E2
      470000E13E000BA93A007272720000000000F9F9F9003F434100475751004161
      5400396C570000F1700035604F0039484200393A3900323D38002950400000E2
      470000E13E000BA93A0072727200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E4E400515251004C53
      50004658510040584F003F514A003E4441003B3B3B00363A39002E413A00274E
      3E00224E3C0023413500FCFBFB000000000000000000E4E4E400515251004C53
      50004658510040584F003F514A003E4441003B3B3B00363A39002E413A00274E
      3E00224E3C0023413500FCFBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800555555005252
      52004D4F4F00494D4B004548470002CE020005CE050038383800333736002D38
      340028353000A2A2A200000000000000000000000000F6F6F600555555005252
      52004D4F4F00494D4B0045484700424242003D3D3D0038383800333736002D38
      340028353000A2A2A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F6F6005353
      5300515151004C4C4C004848480002CE020004CE04003A3A3A00353535003030
      300099999900FBFBFB0000000000000000000000000000000000F7F6F6005353
      5300515151004C4C4C0048484800434343003E3E3E003A3A3A00353535003030
      300099999900F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F9F8
      F800DDDDDD003D3D3D0047474700444444003F3F3F00383838004D4D4D00FCFC
      FC0000000000000000000000000000000000000000000000000000000000F8F6
      F600DDDDDD003D3D3D0047474700444444003F3F3F00383838004D4D4D00FCFC
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA00F9F8F800FDFDFD00FDFDFD00F8F7F700FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8F8F800F9F8F800FDFDFD00FDFDFD00F8F7F700FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3FFC3F00000000F00FF00F00000000
      C007C00700000000C003C0030000000080018001000000000001000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      000100010000000080018001000000008003800300000000C003C00300000000
      E00FE00F00000000F81FF81F0000000000000000000000000000000000000000
      000000000000}
  end
  object ImageList_on: TImageList
    Left = 220
    Top = 236
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006B000019AE190019B5190021BE210021C52100006B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000019194E0030308E00333399003434A3003A3AAE0019194E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004945210087803B0090873D009C934300A1974500494521000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003333330066666600666666006B6B6B0073737300333333000000
      0000000000000000000000000000000000000000000000000000000000002A82
      2A0012A3120017A6170019B5190021BE210023CE230027D027002ADD2A0027D0
      2700107210000000000000000000000000000000000000000000000000004242
      6D002A2A830030308E00333399003838A8003A3AB5003C3CBB004242C1003C3C
      BB0029295A000000000000000000000000000000000000000000000000006965
      44007B73340087803B0090873D009C934300A69C4800AEA44B00B1A74C00AEA4
      4B00544F29000000000000000000000000000000000000000000000000005A5A
      5A005A5A5A005A5A5A0066666600737373007B7B7B007B7B7B00848484007B7B
      7B00424242000000000000000000000000000000000000000000006B00000F94
      0F0012A3120019AE19001BBA1B0021C5210027D027002ADD2A0030E830002ADD
      2A0027D02700006B00000000000000000000000000000000000019194E002929
      7C002C2C8900323294003434A3003A3AAE003C3CBB004343C2004949C4004343
      C2003C3CBB0019194E000000000000000000000000000000000049452100726B
      31007B7334008D843C00958C4100A1974500AEA44B00B5AB5400B7AD5800B5AB
      5400AEA44B004945210000000000000000000000000000000000333333005252
      52005A5A5A00666666006B6B6B00737373007B7B7B00848484008C8C8C008484
      84007B7B7B003333330000000000000000000000000000000000088B08000F94
      0F0012A3120019AE19001BBA1B0021C5210027D027002ADD2A0029E629002ADD
      2A0027D0270021C521000000000000000000000000000000000022226B002929
      7C002C2C8900323294003434A3003A3AAE003C3CBB004343C2004949C4004242
      C1003C3CBB003A3AAE000000000000000000000000000000000066602B00726B
      31007B73340087803B00958C4100A1974500AEA44B00B5AB5400B7AD5800B1A7
      4C00AAA04A00A1974500000000000000000000000000000000004A4A4A005252
      52005A5A5A00666666006B6B6B00737373007B7B7B00848484008C8C8C008484
      84007B7B7B0073737300000000000000000000000000006B0000088408000B94
      0B00109C100017A6170019B5190021BE210023CE230027D0270029D7290027D0
      270021C5210021BE21000F820F00000000000000000019194E0022226B002929
      74002A2A830030308E00333399003838A8003A3AB5003C3CBB004242C1003C3C
      BB003A3AAE003838A8002A2A6300000000000000000049452100615B2A006D67
      31007B733400847C3A0090873D009C934300A69C4800AEA44B00B1A74C00AAA0
      4A00A19745009C934300605B2F000000000000000000333333004A4A4A005252
      52005A5A5A005A5A5A006666660073737300737373007B7B7B00848484007B7B
      7B0073737300737373004A4A4A0000000000000000000073000008840800088B
      08000F940F0012A3120019AE190019B5190021BE210021C5210023CE230021C5
      210021BE210019B5190017A6170000000000000000001C1C5900212163002424
      710029297C002C2C890030308E00333399003838A8003A3AAE003A3AB5003A3A
      AE003434A3003333990030308E000000000000000000514C22005D5828006660
      2B00726B31007B73340087803B0090873D009C934300A1974500A69C4800A197
      45009C93430090873D0087803B0000000000000000003A3A3A00424242004A4A
      4A00525252005A5A5A0066666600666666007373730073737300737373007373
      73006B6B6B00666666005A5A5A000000000000000000006B0000027902000884
      080032A53200109C100012A3120019AE190019B519001BBA1B0021BE21001BBA
      1B0019B5190019AE190012A3120000000000000000001A1A510020205A002222
      6B003333990029297C002C2C890030308E00333399003434A3003434A3003434
      A3003333990030308E002A2A830000000000000000004C48210055502400615B
      2A00958C4100766F33007B73340087803B0090873D00958C4100958C4100958C
      41008D843C0087803B007B73340000000000000000003A3A3A003A3A3A004242
      420066666600525252005A5A5A0066666600666666006B6B6B006B6B6B006B6B
      6B0066666600666666005A5A5A000000000000000000006B00006AAD6A0073B5
      73005AAD5A0042A5420028A3280012A3120017A6170019AE190019AE190019AE
      190012A3120012A312000F940F00000000000000000019194E005151C6006666
      CC004949C4003A3AAE00333399002A2A83002C2C890030308E00323294003030
      8E002C2C89002A2A830029297C00000000000000000049452100BAB05E00C2B9
      7100B5AB5400A197450090873D007B733400847C3A0087803B0087803B008780
      3B00847C3A007B733400726B31000000000000000000333333008C8C8C009999
      99008484840073737300666666005A5A5A005A5A5A0066666600666666006666
      66005A5A5A005A5A5A00525252000000000000000000006B0000B2CFB40095C4
      950073B573005AAD5A0042A5420028A32800109C1000109C100012A31200109C
      10000F940F000B940B00088B0800000000000000000019194E009C9CDF008484
      D7005B5BCA004949C4003838A80030308E0029297C002A2A83002A2A83002A2A
      830029297C0029297C0022226B00000000000000000049452100D8D3A500CDC6
      8C00BEB56900B5AB5400A197450087803B00766F33007B7334007B7334007B73
      3400726B31006D67310066602B00000000000000000033333300BDBDBD00ADAD
      AD0094949400848484007373730066666600525252005A5A5A005A5A5A005A5A
      5A0052525200525252004A4A4A000000000000000000006B0000D0E3D000B6D4
      B60095C495007CBA7C005AAD5A0042A54200219521000B940B000B940B000B94
      0B00088B08000884080010721000000000000000000019194E00C5C5EC00A5A5
      E2008484D7006666CC004242C1003838A80030308E0024247100292974002424
      710022226B0022226B0029295A00000000000000000049452100E7E4C800DCD7
      AD00CDC68C00C2B97100B1A74C009C934300847C3A006A632D006D6731006A63
      2D0066602B00615B2A0055512F00000000000000000033333300D6D6D600C5C5
      C500ADADAD009999990084848400737373005A5A5A004A4A4A00525252004A4A
      4A004A4A4A004A4A4A0042424200000000000000000000000000EFF5EF00D0E3
      D000B6D4B60094BF940073B5730059A559003A9D3A0008840800088408000884
      0800087B08000279020000000000000000000000000000000000E6E6F700C5C5
      EC00A5A5E2008484D7005B5BCA004343C2003434A3002121630022226B002121
      63002121630020205A0000000000000000000000000000000000F5F4E800E7E4
      C800DCD7AD00CDC68C00BEB56900B1A74C00958C41005D582800615B2A005D58
      280059532A005550240000000000000000000000000000000000EFEFEF00D6D6
      D600BDBDBD00ADADAD0094949400848484006B6B6B0042424200424242004242
      4200424242003A3A3A0000000000000000000000000000000000006B0000EFF5
      EF00D0E3D000B6D4B60095C495007BB57B005C9F5C0000730000007300000073
      0000006B0000006B0000000000000000000000000000000000001A1A5100EFEF
      F700C5C5EC00A5A5E2008484D7005B5BCA003C3CBB001C1C59001C1C59001C1C
      59001A1A510019194E000000000000000000000000000000000049452100F8F7
      EF00E7E4C800DCD7AD00CDC68C00BEB56900B1A74C00514C2200514C2200514C
      22004C482100494521000000000000000000000000000000000033333300EFEF
      EF00D6D6D600C5C5C500ADADAD00949494007B7B7B003A3A3A003A3A3A003A3A
      3A003A3A3A00333333000000000000000000000000000000000000000000217C
      2100EFF5EF00D6E6D600B6D4B60095C49500006B0000006B0000006B0000006B
      0000006B00000000000000000000000000000000000000000000000000003939
      6600EFEFF700C5C5EC00A5A5E2008484D70019194E0019194E0019194E001919
      4E001A1A5100000000000000000000000000000000000000000000000000605C
      3C00F8F7EF00EBE8D000DCD7AD00CDC68C004945210049452100494521004945
      21004C4821000000000000000000000000000000000000000000000000005252
      5200EFEFEF00DEDEDE00C5C5C500ADADAD003333330033333300333333003333
      33003A3A3A000000000000000000000000000000000000000000000000000000
      000000000000006B0000006B0000006B0000006B0000006B0000006B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000019194E0019194E0019194E0019194E0019194E0019194E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004945210049452100494521004945210049452100494521000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003333330033333300333333003333330033333300333333000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF81FF81FF81FF81F
      E007E007E007E007C003C003C003C003C003C003C003C0038001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001C003C003C003C003C003C003C003C003E007E007E007E007
      F81FF81FF81FF81FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object Timer_Atendentes: TTimer
    Enabled = False
    Interval = 6000
    OnTimer = Timer_AtendentesTimer
    Left = 150
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Images = ImageListops
    Left = 148
    Top = 104
    object EnviarMensagem1: TMenuItem
      Caption = 'Abrir Chat'
      ImageIndex = 0
      OnClick = EnviarMensagem1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Abrirmodoconferncia1: TMenuItem
      Caption = 'Confer'#234'ncia'
      ImageIndex = 2
      OnClick = Abrirmodoconferncia1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Images = ImageListops
    Left = 180
    Top = 104
    object MenuItem3: TMenuItem
      Caption = 'Abrir Chat'
      ImageIndex = 0
      OnClick = MenuItem3Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Banirusurio1: TMenuItem
      Caption = 'Banir usu'#225'rio'
      Enabled = False
      ImageIndex = 3
    end
  end
  object PopupMenu3: TPopupMenu
    Images = ImageListops
    Left = 212
    Top = 104
    object MenuItem7: TMenuItem
      Caption = 'Abrir Chat'
      ImageIndex = 0
      OnClick = MenuItem7Click
    end
  end
  object Timer_usr: TTimer
    Enabled = False
    Interval = 8000
    OnTimer = Timer_usrTimer
    Left = 182
    Top = 136
  end
  object Timer_hws: TTimer
    Enabled = False
    Interval = 19500
    OnTimer = Timer_hwsTimer
    Left = 214
    Top = 136
  end
  object ImageList_areas: TImageList
    Height = 25
    Width = 25
    Left = 188
    Top = 236
  end
  object ImageListHWS: TImageList
    Left = 80
    Top = 136
    Bitmap = {
      494C01010C000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C7047009C7047009FA1A20000000000000000000000
      000000000000000000000000000000000000000000000000000000DE000000DE
      0000008400008484840084848400848484000000000000000000FFAD2100FF52
      2100000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD845200C29F7400F2EBDC00F2EBDC00C7AC8700A17147009B9E
      A6000000000000000000000000000000000000DE000000DE00000000000000DE
      000000840000008400008484840000000000FFAD2100FFAD2100FFAD2100FF52
      2100FF5221000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000B08A6000DFC5A700C1A27B00F5EADC00F0E6D500F0E6D5009C704700A372
      4200A37242009FA1A200000000000000000000DE0000000000000000000000DE
      00000084000000000000008400000000000000000000FFAD2100FFAD2100FF52
      2100000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000BF9B
      7300E0CCAD00DFC5A700C3A37A00F5EBDA00F0E6D500F0E6D500A1714700E3D2
      B800C9AD8A00A67A4B00000000000000000000DE0000000000000000000000DE
      0000008400000000000000840000000000000000000000000000FFAD2100FF52
      210000000000FF52210000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800080808000808080008080800080808000808080000000000000FF
      FF00000000000000000000000000000000000000000000000000BF9B7300ECDA
      BB00E0CCAD00DFC5A700C3A37A00F5EEE500F5EBDA00F5EBDA00A3724200E9D9
      C200E6D7BD00A67A4B00000000000000000000DE000000DE00008CFF8C0000FF
      000000840000000000000084000000000000FFAD2100FFAD2100FFFF8C00FFBD
      4A00FF5221000000000000000000000000000000000000000000000000000000
      00000000000000000000003A000000CC330000CC990000CC270000ABAB000000
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000E9D9C200E9D9
      C2000B62AC00084B8400D0B59300F6F3EB00A37C5600D7BF9B00EEE0CE00EEE0
      CE00EEE0CE00A67A4B0000000000000000008CFF8C0000FF000000FF000000FF
      000000000000008400000084000000000000FFFF8C00FFBD4A00FFBD4A000000
      0000FFBD4A00FF52210000000000000000000000000000000000000000000000
      0000000000000042000000D5380000FF990000FE580000D8A900003F30000055
      0000000000000000000000000000000000000000000000000000000000008080
      80000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000EADCC6000C5E
      AF000E75D6000E75D600A67A4B00F6F3EB00825B3400A3724200A37C5600D7BF
      9B00F0E6D500AC7B4F0000000000000000000000000000FF0000000000000000
      000000FF000000FF00000084000000ADFF00FFBD4A0000000000FFBD4A00FFBD
      4A00FFBD4A00FFBD4A0000000000000000000000000000000000000000000000
      00000042000000D13C0000FF990000FF660000D3A000004A3100006600000070
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000000000000E62AE00117D
      DC00117DDC00117DDC00084B8400C1A27B00F6F3EB00B9966B00825B3400A372
      4200F2EBDC00AC7B4F000000000000000000000000000000000000FF000000FF
      000000FF000000FF00000000000000ADFF002152FF00FFBD4A0000000000FFBD
      4A00FFBD4A000000000084848400000000000000000000000000000000000042
      000000CE3F0000FF990000FF660000CC9900004D390000660000007000000020
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000107DD900107D
      D900107DD9001188DE001188DE00084B8400AA875C00F6F3EB00D7BF9B00F6F3
      EB00CDAF8600084B84000000000000000000000000004ABDFF000000000000FF
      00000000000000ADFF000000000000ADFF002152FF002152FF00FFBD4A000000
      00000039BD000039BD000039BD00848484000000000000000000000000000020
      0000005221000052370000521700005237000066000000660000002000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000FFFF0000FFFF0000000000000000000C5EAF001792E2001792E2001792
      E2001792E2001792E20014A0E70014A0E7001AA2E400084B8400CDAF8600084B
      84000B62AC00000000000000000000000000000000004ABDFF004ABDFF000000
      00004ABDFF0000ADFF000000000000ADFF002152FF002152FF00000000002152
      FF000039BD00000000000039BD00848484000000000000000000000000000000
      0000003A000000A3340000A3740000AF290000AC7F0000200000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000117DC500179FE700179F
      E700179FE700179FE70019ADEF0019ADEF0019ADEF0019ADEF000E4A86000B62
      AC0000000000000000000000000000000000000000004ABDFF004ABDFF00D6FF
      FF0000FFFF0000ADFF0000ADFF0000ADFF002152FF002152FF004ABDFF000052
      FF000039BD00000000000039BD00848484000000000000000000000000000000
      00000000000000621F000062460000621900004C4C0000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000019ADEF0019AD
      EF0019ADEF0019ADEF001AB7EF001AB7EF001AB7EF001495D4000B62AC000000
      00000000000000000000000000000000000000000000D6FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000ADFF0000ADFF004ABDFF000052FF000052FF000052
      FF00000000000039BD000039BD00848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000117DC5001AB7
      EF001EB6F1001EB6F1001EB6F1001799D5000B62AC000C5EAF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF0000FFFF0000FFFF0000ADFF00000000000052FF00000000000052
      FF000052FF000052FF000039BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001182C4000C5EAF0000000000000000001192E100084B8400000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000FFFF000000000000000000000000000052FF000000
      00000052FF000052FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000084B84000B62AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000052
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808000808080008080800080808000808080008080800080808000808
      0800080808000808080008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000084
      8400008484000084840000848400008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C
      6300FF9C6300FF9C630008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF0000FFFF000000000000FFFF000000000000FFFF0000848400008484000000
      000000000000000000000000000000000000000000000000000008080800FF9C
      6300FF9C6300B5B5B500FF9C6300B5B5B500FF9C6300FFEFCE00F7CEA500B5B5
      B500B5B5B500FF9C630008080800000000000000000000000000000000000000
      0000101084000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF000000000000FFFF000000000000FFFF000000000000848400008484000000
      0000000000000000000000000000000000000000000084848400FF9C6300F7CE
      A500B5B5B500FF9C6300B5B5B500FF9C6300B5B5B500FFFFFF00FFEFCE00FF9C
      6300FF9C6300FF9C630008080800000000000000000000000000000000009C9C
      9C007373F7002921DE00000000000000000000000000000000009C9C9C001010
      84002929C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000084
      8400008484000084840000848400008484000084840000000000008484000000
      000084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500B5B5B500FF9C6300B5B5B500FF9C6300B5B5B500FFFFFF00FFEFCE00FF9C
      6300FF9C6300FF9C630008080800000000000000000000000000000000009C9C
      9C005A5AEF002921DE003131E7003131E7009C9C9C0010108400636BF7003939
      EF003131C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400008484000084
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000848400000000000000
      000084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500FF9C6300B5B5B500FF9C6300B5B5B500FF9C6300FFFFFF00FFEFCE00B5B5
      B500B5B5B500FF9C630008080800000000000000000000000000000000000000
      0000101084005A5AEF003131E7003939E70010108C00636BF7003939EF009494
      F7000000000000000000000000000000000000000000000000009C735200634A
      2900422918004229180042291800422918004229180042291800422918004229
      180021100000E7DEDE0000000000000000008484840000848400FFFFFF000000
      0000008484000084840000848400008484000084840000848400008484000000
      000084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500B5B5B500FF9C6300B5B5B500FF9C6300B5B5B500F7CEA500FFFFFF00FFEF
      CE00FF9C6300FF9C630008080800000000000000000000000000000000000000
      00009C9C9C00101084005A5AF7003939E7003939E7004242EF008C8CF7003131
      C600000000000000000000000000000000000000000000000000F7B58400EFB5
      8400CE946B00CE9C6B00CE9C6B00CE9C6B00CE946B00CE946B00CE9C6B00BD8C
      630042291800E7DEDE000000000000000000000000000084840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008484000084
      840084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500FF9C6300B5B5B500FF9C6300F7CEA500FF9C6300B5B5B500FF9C6300FFFF
      FF00B5B5B500FF9C630008080800000000000000000000000000000000000000
      0000000000009C9C9C0010108C00636BF7003939EF004242EF003131C6000000
      0000000000000000000000000000000000000000000000000000FFD69C00FFDE
      9C00FFC68C00FFCE9400FFCE9400FFCE9400FFCE8C00FFCE8C00FFCE9400F7BD
      8C007B523900E7E7DE0000000000000000000000000000000000008484000084
      84000000000000000000FFFFFF000000000000000000FFFFFF00000000000084
      840084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500B5B5B500FF9C6300B5B5B500FFFFFF00F7CEA500F7CEA500F7CEA500FFFF
      FF00FF9C6300FF9C630008080800000000000000000000000000000000000000
      00009C9C9C0010108C00636BF7003939EF006B63F7004242EF004242EF003131
      CE00000000000000000000000000000000000000000000000000FFE7BD00FFDE
      AD00FFCEA500FFCEA500FFCEA500FFCEA500FFCEA500FFCEA500FFCEA500F7CE
      A500B5947B00F7EFEF0000000000000000000000000000000000000000008484
      84000000840000008400FFFFFF008484000084840000FFFFFF00840000008400
      000084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500FF9C6300B5B5B500FF9C6300F7CEA500FFFFFF00FFFFFF00FFFFFF00FFEF
      CE00B5B5B500FF9C630008080800000000000000000000000000000000000000
      000010108C00636BF7003939E7008484F7003131CE007373F7004A4AEF004A4A
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000FF0000008400FFFFFF00FFFF000084840000FFFFFF00FF0000008400
      000084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500B5B5B500FF9C6300B5B5B500FF9C6300B5B5B500FF9C6300B5B5B500FF9C
      6300FF9C6300FF9C630008080800000000000000000000000000000000009C9C
      9C00636BF7003939E7008484F7003131C6009C9C9C0010108C007373F7005252
      FF003939CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084848400000000000000000000000000000000005A5A5A00F7CEA500F7CE
      A500F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500F7CEA500F7CE
      A500F7CEA500FF9C6300080808000000000000000000000000009C9C9C001010
      8C003939E700848CF7002929C60000000000000000009C9C9C00101084007B73
      FF00949CFF003939CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000008400000084000000840000008400000000000000000000000000
      000084848400000000000000000000000000000000005A5A5A00F7CEA500B5B5
      B500FFEFCE00FFEFCE00FFEFCE00FFEFCE0084848400FFFFFF00FFEFCE00FFEF
      CE00F7CEA5000808080000000000000000000000000000000000000000000000
      000010108C000000000000000000000000000000000000000000000000009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400000000000000000000000000000000005A5A5A00B5B5B500FFFF
      FF00FFEFCE00FFEFCE00CECECE0084848400FFFFFF00FFEFCE00FFEFCE00FFEF
      CE00080808000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B500D6D6
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000008080800CECE9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADA5A5008473
      7300CECECE00000000000000000000000000000000009C9C9C0031CE630000FF
      630031CE6300EFEFEF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFCE00525252000000000000310000AD8C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C8C8C007B737B009C949C009C949C000000
      00009C9C9C0084737300ADADAD00000000009C9C9C008484840000FF630000FF
      630000FF6300DEDEDE0000000000000000009C9C9C0073737300737373007373
      730073737300080808005252520000000000845A3100AD8C630000310000AD8C
      6300000000000000000000000000000000000000000008B5F70000FFFF000000
      000008B5F70000FFFF0000000000000000000000000000000000000000000000
      0000292929002929290029292900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5BDBD009C9C9C0073737300000000009C949C000000
      0000000000004A9CAD0000001800000000005A5A5A005A5A5A0000FF630000FF
      630000FF63000000000000000000000000007373730008080800080808000808
      080008080800CECE9C00000000000000000000000000845A3900AD8C63000031
      0000000000000000000000000000000000000000000008B5F70063E7FF0008B5
      F70063E7FF000000000000000000000000000000000000000000000000000000
      000029292900CED6D600CED6D600292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018313100637B7B0000212100C6FFFF00000000000000
      000063FFF700000000009C9C9C00CEC6C600848484005252520000FF630000FF
      630000FF6300B5B5B500000000009C9C9C00080808009C9C63009C9C63009C9C
      63009C9C6300525252000000000000000000000000000000000000000000845A
      31007B5A3100845A3900845A3900CE8C10006331310063E7FF00000000000000
      000008B5F70008B5F70000000000000000000000000000000000000000000000
      00000000000029292900ADADAD00ADADAD004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE000000000000294200397384001818180000000000B5B5B5009C9C
      9C00C6FFFF00000000000000000000000000B5B5B5005A5A5A0031CE630000FF
      630031CE6300B5B5B50000000000737373009C9C63009C9C63009C9C63009C9C
      63009C9C63000808080000000000000000000000000000000000000000000000
      0000CEAD8400FFCE9C00FFCE9C00845A3900FFA50000845A3900000000000000
      000063E7FF0000FFFF0000000000000000000000000000000000000000000000
      00000000000029292900ADADAD00ADADAD008484840042424200292929004242
      42000000000000000000000000000000000000000000BDD6E7004A6B6B009C8C
      8C001810100029212100949C9C00000000000000000000000000103131004A63
      63000000000031FFFF0031FFFF0000000000000000009C9C9C005A5A5A006363
      630084848400000000009C9C9C000808080008080800FFFFCE009C9C63009C9C
      63009C9C63000808080000000000000000000000000000000000000000000000
      0000000000000000000000000000FFCE9C00845A3100A5FFFF00845A390063E7
      FF00000000000000000000000000000000000000000000000000424242004242
      420042424200ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD008484
      84004242420042424200000000000000000000000000B5C6CE00529CBD001029
      2900080000001884840094C6C6006B9C9C00526B8400DEFFFF0052A5B5000031
      4200C6F7FF00000000009C9C9C00000000000000000000000000848484006363
      63009C9C9C0000000000080808009C9C63009C9C630008080800FFFFCE009C9C
      63009C9C63005252520000000000000000000000000000000000000000000000
      00000000000000000000000000007B5A310000000000845A3100FFA500006331
      3100000000000000000000000000000000000000000042424200ADADAD00CED6
      D600CED6D600CED6D600ADADAD009C6300009C630000ADADAD00ADADAD00ADAD
      AD00ADADAD0084848400424242000000000000000000ADA5A500BDF7EF0094BD
      C60018CED6007BFFFF0063FFFF0039D6D6004A6B8400DEFFFF00000000000000
      000094FFFF00000000009C9C9C00000000000000000000000000000000000000
      0000000000000000000008080800CECE9C009C9C63009C9C6300080808009C9C
      63009C9C63005252520000000000000000000000000000000000000000000000
      0000FFCE9C0000000000845A3900000000007B5A3100FFCE9C00845A3900CE8C
      10000000000000000000000000000000000042424200ADADAD00CED6D600CED6
      D600CED6D600CED6D600ADADAD00FF7B5A00FF7B5A00CED6D600ADADAD00ADAD
      AD00ADADAD00ADADAD0084848400424242009C9C9C002921210094A5A500E7EF
      F700BDFFFF0052CEE7000821390000000000CEFFFF006B9CB50010312900E7FF
      FF0084D6EF008CF7F70000080800000000000000000000000000000000000000
      0000000000000000000008080800CECE9C009C9C63009C9C63009C9C6300FFFF
      CE0052525200000000000000000000000000000000000000000008B5F70008B5
      F700845A3900845A3900A5FFFF00845A39000000000000000000FFCE9C00845A
      39000000000000000000000000000000000029292900CED6D600CED6D600CED6
      D600CED6D600CED6D600CED6D600BD7B00009C630000ADADAD00CED6D600CED6
      D600ADADAD00ADADAD00ADADAD0029292900ADADAD00D6DEDE00EFE7E7005284
      8C0094A5A500A5DEE7007BEFEF00399C9C0010313100849C9C009C9C9C000000
      0000849C9C004A9CB500B5FFFF00000000000000000000000000000000000000
      0000000000000000000008080800CECE9C009C9C63009C9C63009C9C63000808
      0800000000000000000000000000000000000000000000FFFF0063E7FF00A5FF
      FF0008B5F70000000000845A3900000000000000000000000000FFCE9C00845A
      390000000000000000000000000000000000292929000000000000000000CED6
      D600CED6D600CED6D600CED6D600FF7B5A009C630000BD7B0000ADADAD00CED6
      D600CED6D600CED6D600CED6D60029292900000000003939390042524A00E7FF
      FF00BDFFFF006B9C9C008C6363007B6B6B00D6DEDE00000000009C9C9C009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000073737300525252009C9C6300FFFFCE00CECE9C00CECE9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008B5F700845A3900FFCE9C000000000000000000D6AD7B007B5A
      3100000000000000000000000000000000002929290000000000000000000000
      000000000000F7CEA500FFAD8C00CED6D600FFAD8C009C630000BD7B0000CED6
      D600CED6D600CED6D600CED6D600292929000000000094BDC60063B5DE00636B
      73002139390052CEE700399C9C00EFE7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008080800FFFFCE00525252005252520052525200525252000000
      00000000000000000000000000000000000000000000000000000000000063E7
      FF0000000000A5FFFF0008B5F70000000000000000000000000000000000845A
      310000310000AD8C6300000000000000000042424200CED6D600000000000000
      000000000000BD7B0000BD7B0000FF7B5A00FF7B5A009C630000BD7B00000000
      0000CED6D600CED6D600ADADAD00424242000000000000000000E7EFF700C6BD
      BD00ADA5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFCE0052525200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0008B5
      F7000000000063E7FF0008B5F700000000000000000000000000000000000000
      0000AD8C630000310000AD8C6300000000000000000029292900CED6D6000000
      000000000000FFD6D600BD7B00009C6300009C630000BD7B0000F7CEA5000000
      000000000000ADADAD0042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0008B5F700000000000000000000000000000000000000
      0000845A3900AD8C630000310000000000000000000000000000292929004242
      4200CED6D600CED6D600CED6D600F7CEA500F7CEA5000000000000000000ADAD
      AD00292929004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECE9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000845A310000000000000000000000000000000000000000000000
      0000424242002929290029292900292929002929290029292900292929004242
      420000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFE1E3FFFFFFFFFC7F8081FFFFFFEF
      F80F0000FFFFFFC7F0030000FFFFFFC3E0030000FE1FE007C0030001FC0FEFC3
      C0030001F807EFC7C0030001F007EF83C0038001E00FEF01C0038000E01F0101
      00078000F03F0101800F8000F87F0183C01F8000FFFF01FFC03F8001FFFF01FF
      F33FC081FFFF01FFFF3FE3C7FFFF01FFFFFFC03FF001FFFFFFFFC01FE001FFFF
      FFFFC50FC001F7EFFFFFCA8F8001E3C7FFFFC0038001E007FFFF80038001F00F
      C00310038001F00FC003A0038001F81FC003CDA38001F00FC003E0038001F00F
      FFFFE0038001E007FFFFE0038001C183FFFFE0538003F7EFFFFFE0038007FFFF
      FFFFE003800FFFFFFFFFFFFFFFFFFFFFFFFFC7FCFFFFFFFFFFC783FC9FFFFFFF
      FE0103010F93F1FFFC1107038F87F0FFFC300203E033F87FF4400203F033F80F
      81C88403FE0FC0038001C403FE8F80018031FC03F50F00000001FC07C0CF0000
      0011FC0F85CF6000804FF81FF8CF780080FFF81FE9E33810C7FFF9FFC9F19819
      FFFFF3FFF9F1C063FFFFF7FFFFFBF00F00000000000000000000000000000000
      000000000000}
  end
  object MainMenuHWS: TMainMenu
    Images = ImageListHWS
    Left = 112
    Top = 136
    object Configuraes3: TMenuItem
      Caption = 'Prefer'#234'ncias'
      OnClick = Configuraes3Click
      object SalvarSenha1: TMenuItem
        Caption = 'Gravar dados para Autentica'#231#227'o'
        Checked = True
        OnClick = SalvarSenha1Click
      end
      object Entrarautomaticamente1: TMenuItem
        Caption = 'Conectar ao iniciar'
        OnClick = Entrarautomaticamente1Click
      end
      object IniciarcomWindows1: TMenuItem
        Caption = 'Iniciar com Windows'
        OnClick = IniciarcomWindows1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Aorecebermensagem1: TMenuItem
        Caption = 'Ao receber mensagem'
        object CheckBox_aviso1: TMenuItem
          Caption = 'Maximizar Janela'
          Checked = True
          OnClick = CheckBox_aviso1Click
        end
        object CheckBox_aviso2: TMenuItem
          Caption = 'Reproduzir Som'
          OnClick = CheckBox_aviso2Click
        end
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object Dadoscadastrais1: TMenuItem
        Caption = 'Alterar dados cadastrais'
        OnClick = Dadoscadastrais1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      OnClick = Ajuda1Click
      object picosdeajuda1: TMenuItem
        Caption = 'T'#243'picos de ajuda'
        ImageIndex = 6
        Visible = False
      end
      object WebsiteHWS1: TMenuItem
        Caption = 'Website HWS'
        ImageIndex = 8
        OnClick = WebsiteHWS1Click
      end
      object HWSupdate1: TMenuItem
        Caption = 'HWS update'
        ImageIndex = 9
        OnClick = HWSupdate1Click
      end
      object Autoupdate1: TMenuItem
        Caption = 'Atualiza'#231#245'es autom'#225'ticas'
        Checked = True
        OnClick = Autoupdate1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Sobre2: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 3
        OnClick = Sobre1Click
      end
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
      object Minimizar2: TMenuItem
        Caption = 'Minimizar'
        ImageIndex = 4
        OnClick = Minimizar1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Finalizar'
        ImageIndex = 7
        OnClick = Sair1Click
      end
    end
  end
  object ImageListops: TImageList
    Height = 26
    Width = 30
    Left = 76
    Top = 101
    Bitmap = {
      494C01010700090004001E001A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000780000004E00000001002000000000004092
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3E3E300999999005C5C5C0000000000000000000000
      00005C5C5C006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000979D9E00000000007DC8C80033FFFF0033D6D60033A0
      A0001E7373006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A4F4F0033FFFF000000000033FFFF0033D6D60033A0
      A00033B4B4006666660000000000AA000000AA000000AA000000AA000000AA00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000556560033FFFF000000000033FFFF0033D6D60033A0
      A00033B4B4006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000080000000800000008000000080000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800000000000C1C1C100C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000556560033FFFF000000000033FFFF0033D6D60033A0
      A00033B4B4006666660000000000AA000000AA000000AA000000AA000000AA00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000C1C1C100C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000556560033FFFF000000000033FFFF0033D6D60033A0
      A00033B4B4006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000800000000000000000000000000000000000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000556560033FFFF000000000033FFFF0033D6D60033A0
      A00033B4B4006666660000000000AA000000AA000000AA000000AA000000AA00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000800000000000000000000000000000000000000080000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000556560033FFFF000000000000000000000000000000
      0000A2E1E1006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000800000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005565600A2F2F200D8FFFF0000000000000000000000
      0000C2FFFF006666660066666600666666006666660066666600666666006666
      6600666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000800000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C1C100C1C1C100C1C1C100C1C1C100C1C1C10000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000729797001AA6A60083C6C6008DE9E900BDF6F6008DE7
      E7006FD6D70000474700719B9B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C1C100C1C1C100C1C1C100C1C1C100C1C1C10000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007A9C9C004A818200125F5F0000505000125F
      5F00407E7E007CA4A40000000000DEDFE000C7C9CA00B9C8CA00FA7F7F00B9C8
      CA00C7C9CA00DEDFE00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C1C100C1C1C100C1C1C100C1C1C100C1C1C10000000000808080008080
      8000808080008080800000000000C1C1C100C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEC3C3009296970000000000B9C8CA00BA3A3A005C000D00BA3A
      3A00B9C8CA000000000092969700BEC3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C1C100C1C1C100C1C1C100C1C1C100C1C1C10000000000000000000000
      0000000000000000000000000000C1C1C100C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FA7F7F005C000D005C000D005C00
      0D00FA7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1C1C100C1C1C100C1C1C100C1C1C100C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C7C7C000000000000000000B9C8CA00000000005C000D00BA3A
      3A00B9C8CA0000000000000000007C7C7C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007C7C7C000000000097A3A500B9C8CA00FA7F7F00B9C8
      CA0097A3A500000000007C7C7C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2B2B2008383830033333300000000003333
      33006F777800B2B2B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C000C0C0C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E7E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008900
      0000B3F7DF000C0C0C0052050500610000006100000061000000610000006100
      0000610000006100000061000000610000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700B7B7
      B700999999009999990099999900999999009999990099999900999999009999
      990099999900999999009999990099999900B7B7B700E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000890000000C0C0C000C0C0C000C0C0C000C0C0C000C0C
      0C00B3F7E0007DF3D0000C0C0C009E828200FFC5C500FFB9B900FFACAC00FE9E
      9D00F68F8F00F0838300E9777800610000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00B5AD
      AD00B0ADAA00AE9E9E00AB919200A8838300A5727200A26262009E5050009B40
      4000972F2F009520210093131400900808008E000000DFDFDF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000089000000B3E7C1005CD894005CDD9E005CE3A9005CE8
      B3007DF0C90000E8A1007DF5D4000C0C0C009E828000FFC4C400FFB8B700FFA9
      A900FD9B9B00F48D8D00EE808100610000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800080808000808080008080
      80000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00B5AD
      AD00FDF2F200F9E4E300F6D0D100F1BBBB00EDA4A400E88C8C00E3737300DE5B
      5B00D9444400D62F2F00D21C1C00CF0C0B008E000000DFDFDF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CC
      FF0033CCFF0033CCFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000089000000B3E7C10000C2580000CA680000D3790000DA
      870000E1960000E8A20000ECAA007DF5D4000C0C0C00FFCDCD00FFC2C100FFB5
      B400FFA7A600FB999800F48B8B00610000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00B5AD
      AD00FDF2F200F9E4E300F6D0D100F1BBBB00EDA4A400E88C8C00E3737300DE5B
      5B00D9444400D62F2F00D11C1C00CF0C0B008E000000C7C7C700E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000033CCFF0033CCFF0033CCFF0033CCFF00003366000033660033CCFF0033CC
      FF0033CCFF0033CCFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000089000000B3E7C100B3EDCD00B3EDCD00B3F2D700B3F2
      D700B3F6E00000E8A20033F0BB000C0C0C00FFDCDC00FFD5D500FFCBCB00FFBF
      BF00FFB2B200FFA4A400FA969600610000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000080000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00B5AD
      AD00FDF2F200F9E4E300F6D0D100F1BBBB00EDA4A400E88C8C00E3737300DE5B
      5B00D9444400D62F2F00D11C1C00CF0C0B008E00000099999900B7B7B700E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CCFF0033CC
      FF0033CCFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000089000000890000008900000089000000890000008900
      0000B3F6DF0033EDB5000C0C0C00FCD2D100FFDCDC00FFDCDC00FFD4D200FFC9
      C900FFBDBC00FFB0AF00F59797006F1C1C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00B5AD
      AD00FDF2F200F9E4E300F6D0D100F1BBBB00EDA4A400E88C8C00E37373000033
      660000336600003366000033660000336600003366000033660000336600DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033CCFF0033CCFF0033CCFF00003366000033660033CCFF0033CC
      FF0033CCFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008900
      0000B3F6E0000C0C0C00D5AAAA008F1F1F008000000080000000800000008000
      00008000000080000000972F2F00D5AAAA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000808080008000000080000000000000000000800000008000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700B5AD
      AD00FEF9F900FDF2F200FFE6E600F9DDDD00F6D0D100F4C5C500F1B9BA000033
      660000CCFF000099CC000099CC000099CC000099CC000066CC0000336600DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033CCFF0033CCFF00000000000000000033CCFF0033CC
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008900
      00000C0C0C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000800000008000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5AD
      AD00B0ADAA00AE9E9E00AB919200A8838300A5727200A26262009E5050000033
      660000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000099CC0000336600DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033CCFF0033CCFF00000000000000000033CCFF0033CC
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0E1E100B87171008A141400B871
      7100F0E1E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF000033
      660000CCFF000099CC000099CC000099CC000099CC000066CC0000336600DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033CCFF00000000000000000033CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3868600E08B8A00FED8D800DB82
      8100C38686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF000033
      660066FFFF0000CCFF0000CCFF0000CCFF0000CCFF000099CC0000336600DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033CCFF00003366000033660033CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D3A3A00F9C9C800FFE5E400F8C4
      C3009D3A3A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E4E2000033
      660000336600003366000033660000336600003366000033660000336600E5E4
      E200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033CCFF0033CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084080800FFE3E200FFE3E200FFE3
      E200840808000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E7008784
      7E00000000004D4D4D00BEBEBE00BEBEBE007A7A7A00DFDFDF007E7A7700E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000033CCFF0033CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D3A3A00F9CAC900FFE6E500F9CA
      C9009D3A3A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F6009B97
      9200FAF1E80066666600868686008686860099999900F6F6F600908D8A00F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3868600E38F8F00FEDEDD00E38F
      8F00C38686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B0AD
      AA00E0D9D10000000000666666004D4D4D00F6F6F600D9D9D900B0ADAA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B87171008A141400B871
      7100F0E1E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E4
      E200B0ADAA00E0D9D1000000000000000000E5E4E200B0ADAA00E5E4E2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7E700B7B7B700ACA7A200ACA7A200B7B7B700E7E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      28000000780000004E0000000100010000000000E00400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFC000000000
      FFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFC000000000
      FFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFC000000000
      FC0003FFFFFFFFFFFFFFFFC000000000FC03FBFFFFF007FFFFFFFFC000000000
      FC820BFFFFF7F7FFFFFC3FC000000000FC83FBFFFFF417FFFFE03FC000000000
      FC820BFFFF17F7FFFFEC3FC000000000FC83FBFFFF7787FFFFEC3FC000000000
      FC820BFFFF77AFFFFFEFFFC000000000FCF3FBFFFF779FFFE02FFFC000000000
      FC7003FFFF703FFFE02FFFC000000000FC01FFFFF80FFFFFE02C3FC000000000
      FE0203FFF80FFFFFE0003FC000000000FFF904FFF80FFFFFE03C3FC000000000
      FFFB06FFF80FFFFFE03C3FC000000000FFF944FFF80FFFFFE03FFFC000000000
      FFFC01FFF80FFFFFFFFFFFC000000000FFFE03FFF80FFFFFFFFFFFC000000000
      FFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFC000000000
      FFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFC000000000
      FFFFFFFFFFFFFFFFFFFFFFC0000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      3FE7FFFFFFFFFFFFE0007FFFFFFFFF003FE000FFFC03FFFFC0003FFFFFFFFF00
      3C0000FFFDF80FFFC0003FFFF003FF003C0000FFFD080FFFC0003FFFE001FF00
      3C0000FFFDFBCFFFC0001FFFE001FF003C0000FFFD41CFFFC0000FFFF003FF00
      3C0000FFFDDBCFFFC0000FFFF003FF003FE000FFFDD10FFFC0000FFFF807FF00
      3FE7FFFFFC0F0FFFE0000FFFF807FF003FFF07FFFF000FFFFFC00FFFFC0FFF00
      3FFF07FFFFBFDFFFFFC00FFFFC0FFF003FFF07FFFFDFBFFFFFC00FFFFE1FFF00
      3FFF07FFFFEF7FFFFFC80FFFFE1FFF003FFF07FFFFF0FFFFFFC00FFFFF3FFF00
      3FFF07FFFFFFFFFFFFE41FFFFFFFFF003FFF87FFFFFFFFFFFFE31FFFFFFFFF00
      3FFFFFFFFFFFFFFFFFF03FFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object CompressStream: TBackupFile
    Version = '6.00'
    BackupMode = bmAll
    CompressionLevel = clMax
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = True
    RestoreFullPath = False
    SaveFileID = False
    Top = 273
  end
  object Timer_monitor: TTimer
    Enabled = False
    Interval = 7500
    OnTimer = Timer_monitorTimer
    Left = 60
    Top = 402
  end
  object Timer_autoupdate: TTimer
    Enabled = False
    Interval = 900000
    OnTimer = Timer_autoupdateTimer
    Left = 124
    Top = 402
  end
  object IdAntiFreeze1: TIdAntiFreeze
    IdleTimeOut = 100
    Left = 68
    Top = 270
  end
  object ICMP: TIdIcmpClient
    BufferSize = 128
    Host = '201.76.53.35'
    Port = 80
    ReceiveTimeout = 1000
    OnReply = ICMPReply
    Left = 144
    Top = 264
  end
  object Timer_conect: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer_conectTimer
    Left = 12
    Top = 402
  end
  object Timer_inatividade: TTimer
    Enabled = False
    Interval = 600000
    OnTimer = Timer_inatividadeTimer
    Left = 200
    Top = 398
  end
  object Timer_notregistred: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = Timer_notregistredTimer
    Left = 246
    Top = 136
  end
  object TimerDetect: TTimer
    Enabled = False
    Interval = 4000
    OnTimer = TimerDetectTimer
    Left = 288
    Top = 398
  end
end
