object Form1: TForm1
  Left = 265
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1055#1083#1072#1085#1080#1088#1086#1074#1097#1080#1082' ('#1058#1077#1089#1090'-'#1087#1088#1086#1075#1088#1072#1084#1084#1072')'
  ClientHeight = 604
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1004
    Height = 56
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 776
      Top = 8
      Width = 7
      Height = 13
      Caption = 'C'
    end
    object Label2: TLabel
      Left = 872
      Top = 8
      Width = 14
      Height = 13
      Caption = #1055#1086
    end
    object Label3: TLabel
      Left = 544
      Top = 8
      Width = 50
      Height = 13
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    end
    object Label4: TLabel
      Left = 672
      Top = 8
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object Label5: TLabel
      Left = 384
      Top = 8
      Width = 36
      Height = 13
      Caption = #1056#1077#1089#1091#1088#1089
    end
    object BitBtnAddEvent: TBitBtn
      Left = 304
      Top = 8
      Width = 75
      Height = 41
      Caption = 'Add Event'
      TabOrder = 0
      OnClick = BitBtnAddEventClick
    end
    object DateTimeFrom: TDateTimePicker
      Left = 776
      Top = 24
      Width = 81
      Height = 21
      Date = 0.416666666656965400
      Time = 0.416666666656965400
      Kind = dtkTime
      TabOrder = 1
    end
    object DateTimeTo: TDateTimePicker
      Left = 872
      Top = 24
      Width = 81
      Height = 21
      Date = 0.791666666656965400
      Time = 0.791666666656965400
      Kind = dtkTime
      TabOrder = 2
    end
    object EditCaption: TEdit
      Left = 544
      Top = 24
      Width = 113
      Height = 21
      TabOrder = 3
    end
    object DateTimeDate: TDateTimePicker
      Left = 672
      Top = 24
      Width = 89
      Height = 21
      Date = 41039.401239143520000000
      Time = 41039.401239143520000000
      TabOrder = 4
    end
    object BitBtnOn: TBitBtn
      Left = 8
      Top = 8
      Width = 89
      Height = 41
      Caption = 'ON'
      TabOrder = 5
      OnClick = BitBtnOnClick
    end
    object BitBtnOff: TBitBtn
      Left = 112
      Top = 8
      Width = 89
      Height = 41
      Caption = 'Off'
      TabOrder = 6
      OnClick = BitBtnOffClick
    end
    object BitBtnReload: TBitBtn
      Left = 208
      Top = 8
      Width = 89
      Height = 41
      Caption = 'Reload'
      TabOrder = 7
      OnClick = BitBtnReloadClick
    end
    object DBLookupComboBoxResourse: TDBLookupComboBox
      Left = 384
      Top = 24
      Width = 145
      Height = 21
      KeyField = 'ID'
      ListField = 'CAPTION'
      ListSource = DataSourceResourse
      NullValueKey = 48
      TabOrder = 8
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 97
    Width = 1004
    Height = 120
    Align = alTop
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSourceEvent
      DataController.DetailKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        Caption = #8470' '#1087#1086#1083#1103' '#1074' '#1041#1044
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1DATE_CREATION: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103
        DataBinding.FieldName = 'DATE_CREATION'
        PropertiesClassName = 'TcxDateEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1TIME_START: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
        DataBinding.FieldName = 'TIME_START'
        PropertiesClassName = 'TcxTimeEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1TIME_FINISH: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'TIME_FINISH'
        PropertiesClassName = 'TcxTimeEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1CAPTION: TcxGridDBColumn
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103
        DataBinding.FieldName = 'CAPTION'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1RESOURSE_ID: TcxGridDBColumn
        Caption = 'ID '#1088#1077#1089#1091#1088#1089#1072
        DataBinding.FieldName = 'RESOURSE_ID'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1EVENTTYPE: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1084#1077#1088#1086#1087#1088#1080#1103#1090#1080#1103
        DataBinding.FieldName = 'EVENTTYPE'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1OPTIONS: TcxGridDBColumn
        Caption = #1054#1087#1094#1080#1080
        DataBinding.FieldName = 'OPTIONS'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxScheduler1: TcxScheduler
    Left = 0
    Top = 217
    Width = 1004
    Height = 387
    ViewDay.Active = True
    ViewDay.ShowAllDayEventsInContentArea = True
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsView.ShowNavigationButtons = False
    ResourceNavigator.ShowButtons = False
    ResourceNavigator.Visibility = snvNever
    Storage = cxSchedulerDBStorage1
    TabOrder = 3
    Splitters = {
      5C0300007E000000EB0300008300000057030000010000005C03000082010000}
    StoredClientBounds = {0100000001000000EB03000082010000}
  end
  object DataSource1: TDataSource
    DataSet = IBQuery
    Left = 16
    Top = 8
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = '127.0.0.1:D:\TEST_2\TEST.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    AllowStreamedConnected = False
    Left = 64
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    DefaultAction = TACommitRetaining
    AutoStopAction = saCommitRetaining
    Left = 112
    Top = 8
  end
  object IBQuery: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 152
    Top = 8
  end
  object DataSourceEvent: TDataSource
    DataSet = IBDataSet1
    Left = 232
    Top = 8
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'select ts.id,'
      '       ts.date_creation,'
      '       (ts.date_creation + ts.time_start) as time_start,'
      '       (ts.date_creation + ts.time_finish) as time_finish,'
      '       ts.caption,'
      '       ts.resourse_id,'
      '       ts.eventtype,'
      '       ts.options'
      '     from Table_Sheduler ts ')
    Left = 280
    Top = 8
  end
  object cxSchedulerDBStorage1: TcxSchedulerDBStorage
    Reminders.Active = False
    Resources.Items = <
      item
        Name = 'ddfsf'
        ResourceID = 1
      end
      item
        Name = 'eweewew'
        ResourceID = 2
      end>
    Resources.DataSource = DataSourceResourse
    Resources.ResourceID = 'ID'
    Resources.ResourceName = 'CAPTION'
    CustomFields = <>
    DataSource = DataSourceEvent
    FieldNames.ActualFinish = 'TIME_FINISH'
    FieldNames.ActualStart = 'TIME_START'
    FieldNames.Caption = 'CAPTION'
    FieldNames.EventType = 'EVENTTYPE'
    FieldNames.Finish = 'TIME_FINISH'
    FieldNames.ID = 'ID'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ResourceID = 'RESOURSE_ID'
    FieldNames.Start = 'TIME_START'
    Left = 560
    Top = 16
  end
  object IBDataSetResourse: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    SelectSQL.Strings = (
      'Select r.id,'
      '       r.caption'
      '   From Resourse r')
    Left = 392
    Top = 8
  end
  object DataSourceResourse: TDataSource
    DataSet = IBDataSetResourse
    Left = 344
    Top = 8
  end
end
