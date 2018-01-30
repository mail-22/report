object FormJPG: TFormJPG
  Left = 807
  Top = 303
  Width = 720
  Height = 604
  Caption = 'FormJPG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object img1: TcxDBImage
    Left = 0
    Top = 25
    Align = alClient
    DataBinding.DataField = 'jpg'
    DataBinding.DataSource = ds1
    Properties.GraphicClassName = 'TJPEGImage'
    TabOrder = 0
    Height = 552
    Width = 712
  end
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 712
    Height = 25
    Align = alTop
    Lines.Strings = (
      
        #1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1085#1086#1088#1084#1072#1090#1080#1074#1085#1086#1084#1091' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1102' ('#1074' '#1092#1086#1088#1084#1072#1090#1077' ' +
        'jpg) ')
    TabOrder = 1
  end
  object ds1: TDataSource
    Left = 328
    Top = 184
  end
end
