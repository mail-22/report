inherited SelDepForm: TSelDepForm
  Left = 220
  Top = 234
  Caption = 'SelDepForm'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid [0]
    Left = 80
    Top = 400
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnl1: TPanel [1]
    Left = 52
    Top = 104
    Width = 215
    Height = 111
    TabOrder = 1
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 213
      Height = 40
      Align = alTop
      Lines.Strings = (
        #1042#1099#1073#1086#1088'  '#1090#1077#1082#1091#1097#1077#1075#1086' '#1086#1090#1076#1077#1083#1072' '#1087#1086' '
        #1091#1084#1086#1083#1095#1072#1085#1080#1102)
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 20
      Top = 70
      Width = 145
      Height = 21
      KeyField = 'id'
      ListField = 'depart'
      ListSource = DM.dsDepart
      TabOrder = 1
    end
  end
  object pnl2: TPanel [2]
    Left = 312
    Top = 104
    Width = 217
    Height = 113
    TabOrder = 2
    object mmo2: TMemo
      Left = 1
      Top = 1
      Width = 215
      Height = 40
      Align = alTop
      Lines.Strings = (
        #1042#1099#1073#1086#1088'  '#1087#1091#1090#1080' '#1082' '#1041#1044)
      TabOrder = 0
    end
    object edt1: TEdit
      Left = 16
      Top = 64
      Width = 158
      Height = 21
      TabOrder = 1
      Text = 'edt1'
    end
    object btnOpen: TButton
      Left = 176
      Top = 64
      Width = 35
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = btnOpenClick
    end
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
  object cxprprtstr1: TcxPropertiesStore
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
    StorageName = 'cxprprtstr1'
    Left = 550
    Top = 40
  end
  object openDialog: TOpenDialog
    Left = 520
    Top = 128
  end
end
