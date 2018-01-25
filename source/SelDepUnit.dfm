inherited SelDepForm: TSelDepForm
  Left = 220
  Top = 234
  Caption = 'SelDepForm'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dbgrd1: TDBGrid [0]
    Left = 105
    Top = 523
    Width = 418
    Height = 157
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
  end
  object pnl1: TPanel [1]
    Left = 68
    Top = 136
    Width = 281
    Height = 145
    TabOrder = 1
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 279
      Height = 53
      Align = alTop
      Lines.Strings = (
        #1042#1099#1073#1086#1088'  '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1090#1076#1077#1083#1072' '#1087#1086' '
        #1091#1084#1086#1083#1095#1072#1085#1080#1102)
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 26
      Top = 92
      Width = 190
      Height = 25
      KeyField = 'id'
      ListField = 'depart'
      ListSource = DM.dsDepart
      TabOrder = 1
    end
  end
  object pnl2: TPanel [2]
    Left = 408
    Top = 136
    Width = 284
    Height = 148
    TabOrder = 2
    object mmo2: TMemo
      Left = 1
      Top = 1
      Width = 282
      Height = 53
      Align = alTop
      Lines.Strings = (
        #1042#1099#1073#1086#1088'  '#1087#1091#1090#1080' '#1082' '#1041#1044)
      TabOrder = 0
    end
    object edt1: TEdit
      Left = 21
      Top = 84
      Width = 207
      Height = 25
      TabOrder = 1
      Text = 'edt1'
    end
    object btnOpen: TButton
      Left = 230
      Top = 84
      Width = 46
      Height = 32
      Caption = '...'
      TabOrder = 2
      OnClick = btnOpenClick
    end
  end
  object btn1: TButton [3]
    Left = 560
    Top = 376
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 3
    OnClick = btn1Click
  end
  inherited jvfrmstrg1: TJvFormStorage
    StoredValues = <
      item
        Name = 'DepDefaultID'
        KeyString = 'DepDefaultID'
      end>
  end
  object ds1: TDataSource
    DataSet = DM.tblDepart
    Left = 428
    Top = 396
  end
  object cxprprtstr21: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width')
      end>
    StorageName = 'cxprprtstr21'
    Left = 550
    Top = 40
  end
  object openDialog: TOpenDialog
    Left = 520
    Top = 128
  end
end
