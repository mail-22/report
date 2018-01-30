object FormRTF: TFormRTF
  Left = 428
  Top = 373
  Width = 348
  Height = 331
  Caption = 'FormRTF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl
    Left = 0
    Top = 25
    Width = 340
    Height = 279
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'ts1'
      object dbrchvwdtole: TDBMemo
        Left = 0
        Top = 0
        Width = 332
        Height = 251
        Cursor = crIBeam
        Align = alClient
        Color = clNone
        DataField = 'rtf'
        DataSource = ds1
        TabOrder = 0
      end
    end
    object ts2: TTabSheet
      Caption = 'ts2'
      ImageIndex = 1
      object cxdbrchdt1: TcxDBRichEdit
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'rtf'
        DataBinding.DataSource = ds1
        TabOrder = 0
        Height = 251
        Width = 332
      end
    end
    object ts3: TTabSheet
      Caption = 'ts3'
      ImageIndex = 2
      object edtole2: TJvDBRichEdit
        Left = 0
        Top = 0
        Width = 332
        Height = 251
        DataField = 'rtf'
        DataSource = ds1
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 340
    Height = 25
    Align = alTop
    Lines.Strings = (
      #1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1085#1086#1088#1084#1072#1090#1080#1074#1085#1086#1084#1091' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1102' ('#1074' '
      #1092#1086#1088#1084#1072#1090#1077' rtf) ')
    TabOrder = 1
  end
  object ds1: TDataSource
    Left = 328
    Top = 184
  end
end
