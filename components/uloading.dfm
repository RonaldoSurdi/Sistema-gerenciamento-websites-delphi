object floading: Tfloading
  Left = 377
  Top = 279
  BorderStyle = bsNone
  Caption = 'floading'
  ClientHeight = 53
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_tit: TPanel
    Left = 0
    Top = 0
    Width = 307
    Height = 53
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 305
      Height = 51
      Align = alClient
      Stretch = True
    end
    object lbloading: TLabel
      Left = 59
      Top = 8
      Width = 241
      Height = 12
      Alignment = taCenter
      AutoSize = False
      Caption = 'Carregando.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object logosoft: TImage
      Left = 7
      Top = 6
      Width = 48
      Height = 41
      Center = True
      Proportional = True
      Stretch = True
      Transparent = True
    end
    object Progressloading2: TProgressBar
      Left = 59
      Top = 36
      Width = 241
      Height = 10
      TabOrder = 1
      Visible = False
    end
    object Progressloading: TProgressBar
      Left = 59
      Top = 24
      Width = 241
      Height = 10
      TabOrder = 0
    end
  end
end
