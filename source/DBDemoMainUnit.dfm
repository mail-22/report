inherited DBDemoMainForm: TDBDemoMainForm
  Width = 658
  Height = 505
  Caption = 'ExpressScheduler DBDemo '
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbDescrip: TLabel
    Width = 642
    Caption = 
      'This demo shows how the scheduler works when it'#39's connected to a' +
      ' DataSource. Click '#39'About this demo'#39' for more information.'
  end
  inherited Scheduler: TcxScheduler
    Width = 642
    Height = 395
    Storage = cxSchedulerDBStorage1
    Splitters = {
      C8010000FB0000008102000000010000C301000001000000C80100008A010000}
    StoredClientBounds = {0100000001000000810200008A010000}
    inherited pnlControls: TPanel
      Width = 185
      Height = 138
      inherited Memo1: TMemo
        Width = 185
        Height = 138
        TabOrder = 1
        Visible = False
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        ParentColor = False
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 138
        Width = 185
        object cxButton1: TcxButton
          Left = 9
          Top = 13
          Width = 122
          Height = 22
          Caption = 'Generate 5000 events'
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxCheckBox1: TcxCheckBox
          Left = 9
          Top = 38
          Caption = 'Smart refresh'
          TabOrder = 1
          OnClick = chDataModeClick
          Width = 121
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 427
    Width = 642
    SimplePanel = False
  end
  object SchedulerDataSource: TDataSource
    DataSet = DM.tblReport2
    Left = 248
    Top = 80
  end
  object SchedulerDBStorage: TcxSchedulerDBStorage
    UseActualTimeRange = True
    Resources.Items = <>
    Resources.ResourceID = 'ResourceID'
    Resources.ResourceName = 'ResourceName'
    CustomFields = <
      item
        FieldName = 'SyncIDField'
      end>
    DataSource = SchedulerDataSource
    FieldNames.ActualFinish = 'deadline'
    FieldNames.ActualStart = 'deadline'
    FieldNames.Caption = 'DepartL'
    FieldNames.EventType = 'Type'
    FieldNames.Finish = 'deadline'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'DepartL'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'ParentID'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'deadline'
    FieldNames.Start = 'deadline'
    FieldNames.State = 'deadline'
    Left = 192
    Top = 80
  end
  object cxSchedulerDBStorage1: TcxSchedulerDBStorage
    Reminders.DefaultReminder = True
    Resources.Items = <>
    SmartRefresh = True
    CustomFields = <>
    DataSource = DM.dsReport
    FieldNames.ActualStart = 'deadline'
    FieldNames.Caption = 'DepartL'
    FieldNames.ID = 'id'
    FieldNames.Start = 'deadline'
    Left = 184
    Top = 152
  end
end
