object mdEventsForm: TmdEventsForm
  Left = -1833
  Top = 167
  Width = 1789
  Height = 675
  Caption = 'mdEventsForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1781
    Height = 623
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RecId'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ParentID'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Start'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Finish'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Options'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caption'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RecurrenceIndex'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RecurrenceInfo'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ResourceID'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Location'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Message'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReminderDate'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReminderMinutes'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'State'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LabelColor'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ActualStart'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ActualFinish'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SyncIDField'
        Width = 88
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 623
    Width = 1781
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = DBDemoMainForm.mdEvents
    Left = 1152
    Top = 216
  end
end
