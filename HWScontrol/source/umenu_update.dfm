object menu_update: Tmenu_update
  Left = 332
  Top = 328
  BorderStyle = bsNone
  ClientHeight = 107
  ClientWidth = 299
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 107
    Align = alClient
    BevelInner = bvLowered
    BorderStyle = bsSingle
    Color = 16119285
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 82
      Width = 155
      Height = 13
      Caption = 'AVISO: N'#227'o desconecte.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 9
      Width = 273
      Height = 65
      Caption = 
        'HWScontrol est'#225' atualizando os m'#243'dulos, '#13#10'habilitados para seu u' +
        'su'#225'rio.'#13#10'Voc'#234' pode continuar trabalhando normalmente,'#13#10'quando a ' +
        'instala'#231#227'o for completada o sistema'#13#10'emitir'#225' um aviso.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object bt_fechar: TSpeedButton
      Left = 279
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
  end
  object Timer_close: TTimer
    Interval = 10000
    OnTimer = Timer_closeTimer
    Left = 56
    Top = 48
  end
end
