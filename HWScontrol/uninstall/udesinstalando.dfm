object desinstalando: Tdesinstalando
  Left = 331
  Top = 179
  Width = 294
  Height = 291
  BorderIcons = [biSystemMenu]
  Caption = 'Desinstalando HWSwebserver'
  Color = 16119285
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar_install: TProgressBar
    Left = 0
    Top = 224
    Width = 286
    Height = 33
    Align = alBottom
    TabOrder = 0
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 286
    Height = 224
    TabStop = False
    Align = alClient
    Lines.Strings = (
      'Iniciando desinstala'#231#227'o do sistema.')
    ScrollBars = ssBoth
    TabOrder = 1
  end
end
