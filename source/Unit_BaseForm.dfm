object BaseForm: TBaseForm
  Left = 177
  Top = 310
  Width = 800
  Height = 600
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'BaseForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 17
  object jvfrmstrg1: TJvFormStorage
    Active = False
    AppStorage = jvpnflstrg1
    AppStoragePath = '%FORM_NAME%\'
    Options = []
    StoredValues = <>
    Left = 130
    Top = 50
  end
  object jvpnflstrg1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'JvAppIniStorage2.ini'
    SubStorages = <>
    Left = 60
    Top = 20
  end
end
