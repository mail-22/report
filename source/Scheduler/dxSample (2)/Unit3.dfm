object Form3: TForm3
  Left = 191
  Top = 342
  Width = 1020
  Height = 599
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxScheduler1: TcxScheduler
    Left = 0
    Top = 0
    Width = 1012
    Height = 351
    ViewDay.Active = True
    Align = alClient
    EventOperations.SharingBetweenResources = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Storage = cxSchedulerDBStorage1
    TabOrder = 0
    Splitters = {
      640300007E000000F3030000830000005F03000001000000640300005E010000}
    StoredClientBounds = {0100000001000000F30300005E010000}
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 351
    Width = 1012
    Height = 221
    Align = alBottom
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1RecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object cxGrid1DBTableView1ActualFinish: TcxGridDBColumn
        DataBinding.FieldName = 'ActualFinish'
        Visible = False
      end
      object cxGrid1DBTableView1ActualStart: TcxGridDBColumn
        DataBinding.FieldName = 'ActualStart'
        Visible = False
      end
      object cxGrid1DBTableView1Caption: TcxGridDBColumn
        DataBinding.FieldName = 'Caption'
        Width = 156
      end
      object cxGrid1DBTableView1Start: TcxGridDBColumn
        DataBinding.FieldName = 'Start'
      end
      object cxGrid1DBTableView1Finish: TcxGridDBColumn
        DataBinding.FieldName = 'Finish'
      end
      object cxGrid1DBTableView1EventType: TcxGridDBColumn
        DataBinding.FieldName = 'EventType'
      end
      object cxGrid1DBTableView1LabelColor: TcxGridDBColumn
        DataBinding.FieldName = 'LabelColor'
        Visible = False
      end
      object cxGrid1DBTableView1Location: TcxGridDBColumn
        DataBinding.FieldName = 'Location'
        Visible = False
      end
      object cxGrid1DBTableView1Message: TcxGridDBColumn
        DataBinding.FieldName = 'Message'
        Visible = False
      end
      object cxGrid1DBTableView1Options: TcxGridDBColumn
        DataBinding.FieldName = 'Options'
      end
      object cxGrid1DBTableView1State: TcxGridDBColumn
        DataBinding.FieldName = 'State'
      end
      object cxGrid1DBTableView1ResourceID: TcxGridDBColumn
        DataBinding.FieldName = 'ResourceID'
        Visible = False
      end
      object cxGrid1DBTableView1ParentID: TcxGridDBColumn
        DataBinding.FieldName = 'ParentID'
      end
      object cxGrid1DBTableView1RecurrenceIndex: TcxGridDBColumn
        DataBinding.FieldName = 'RecurrenceIndex'
        Visible = False
      end
      object cxGrid1DBTableView1RecurrenceInfo: TcxGridDBColumn
        DataBinding.FieldName = 'RecurrenceInfo'
        Visible = False
      end
      object cxGrid1DBTableView1ReminderDate: TcxGridDBColumn
        DataBinding.FieldName = 'ReminderDate'
        Visible = False
      end
      object cxGrid1DBTableView1ReminderMinutesBeforeStart: TcxGridDBColumn
        DataBinding.FieldName = 'ReminderMinutesBeforeStart'
        Visible = False
      end
      object cxGrid1DBTableView1ReminderResourcesData: TcxGridDBColumn
        DataBinding.FieldName = 'ReminderResourcesData'
        Visible = False
      end
      object cxGrid1DBTableView1TaskCompleteField: TcxGridDBColumn
        DataBinding.FieldName = 'TaskCompleteField'
        Visible = False
      end
      object cxGrid1DBTableView1TaskIndexField: TcxGridDBColumn
        DataBinding.FieldName = 'TaskIndexField'
        Visible = False
      end
      object cxGrid1DBTableView1TaskLinksField: TcxGridDBColumn
        DataBinding.FieldName = 'TaskLinksField'
        Visible = False
      end
      object cxGrid1DBTableView1TaskStatusField: TcxGridDBColumn
        DataBinding.FieldName = 'TaskStatusField'
        Visible = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'CustomField_Value'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'Value'
        Properties.ListColumns = <
          item
            FieldName = 'Value_Description'
          end>
        Width = 143
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxSchedulerDBStorage1: TcxSchedulerDBStorage
    Resources.Items = <>
    CustomFields = <
      item
        FieldName = 'CustomField_Value'
      end>
    DataSource = DataSource1
    FieldNames.ActualFinish = 'ActualFinish'
    FieldNames.ActualStart = 'ActualStart'
    FieldNames.Caption = 'Caption'
    FieldNames.GroupID = 'GroupID'
    FieldNames.EventType = 'EventType'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'RecId'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'ParentID'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutesBeforeStart'
    FieldNames.ReminderResourcesData = 'ReminderResourcesData'
    FieldNames.ResourceID = 'ResourceID'
    FieldNames.Start = 'Start'
    FieldNames.State = 'State'
    FieldNames.TaskCompleteField = 'TaskCompleteField'
    FieldNames.TaskIndexField = 'TaskIndexField'
    FieldNames.TaskLinksField = 'TaskLinksField'
    FieldNames.TaskStatusField = 'TaskStatusField'
    Left = 488
    Top = 104
  end
  object mdEvents: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 432
    Top = 248
    object mdEventsActualFinish: TIntegerField
      FieldName = 'ActualFinish'
    end
    object mdEventsActualStart: TIntegerField
      FieldName = 'ActualStart'
    end
    object mdEventsCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object mdEventsEventType: TIntegerField
      FieldName = 'EventType'
    end
    object mdEventsFinish: TDateTimeField
      FieldName = 'Finish'
    end
    object mdEventsLabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object mdEventsLocation: TStringField
      FieldName = 'Location'
      Size = 255
    end
    object mdEventsMessage: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object mdEventsOptions: TIntegerField
      FieldName = 'Options'
    end
    object mdEventsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object mdEventsRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object mdEventsRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object mdEventsReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object mdEventsReminderMinutesBeforeStart: TIntegerField
      FieldName = 'ReminderMinutesBeforeStart'
    end
    object mdEventsReminderResourcesData: TBlobField
      FieldName = 'ReminderResourcesData'
    end
    object mdEventsResourceID: TBlobField
      FieldName = 'ResourceID'
    end
    object mdEventsStart: TDateTimeField
      FieldName = 'Start'
    end
    object mdEventsState: TIntegerField
      FieldName = 'State'
    end
    object mdEventsTaskCompleteField: TIntegerField
      FieldName = 'TaskCompleteField'
    end
    object mdEventsTaskIndexField: TIntegerField
      FieldName = 'TaskIndexField'
    end
    object mdEventsTaskLinksField: TBlobField
      FieldName = 'TaskLinksField'
    end
    object mdEventsTaskStatusField: TIntegerField
      FieldName = 'TaskStatusField'
    end
    object mdEventsGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object mdEventsCustomField_Value: TIntegerField
      FieldName = 'CustomField_Value'
    end
  end
  object DataSource1: TDataSource
    DataSet = mdEvents
    Left = 624
    Top = 256
  end
end
