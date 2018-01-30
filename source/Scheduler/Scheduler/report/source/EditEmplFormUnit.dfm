inherited EditEmplForm: TEditEmplForm
  Left = 194
  Top = 156
  Caption = 'EditEmmplForm - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1080#1089#1082#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1086#1090#1076#1077#1083#1072
  PixelsPerInch = 96
  TextHeight = 17
  object pnl1: TPanel [0]
    Left = 0
    Top = 507
    Width = 784
    Height = 54
    Align = alBottom
    TabOrder = 0
    object btnOK: TButton
      Left = 52
      Top = 13
      Width = 98
      Height = 33
      Caption = 'Ok'
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 248
      Top = 13
      Width = 99
      Height = 33
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
  object pnl_Navigator1: TPanel [1]
    Left = 0
    Top = 467
    Width = 784
    Height = 40
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object cxdbnvgtr1: TcxDBNavigator
      Left = 324
      Top = 2
      Width = 452
      Height = 32
      Buttons.CustomButtons = <>
      DataSource = dsEmpl
      Align = alClient
      TabOrder = 0
    end
    object pnl3: TPanel
      Left = 244
      Top = 2
      Width = 80
      Height = 32
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object jvdbstslbl1: TJvDBStatusLabel
        Left = 0
        Top = 4
        Width = 72
        Height = 17
        DataSource = dsEmpl
        Style = lsRecordNo
        CalcRecCount = True
        ShowOptions = doBoth
        Alignment = taCenter
      end
    end
    object pnl4: TPanel
      Left = 2
      Top = 2
      Width = 242
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object jvdbstslbl2: TJvDBStatusLabel
        Left = 0
        Top = 0
        Width = 92
        Height = 32
        DataSource = dsEmpl
        CalcRecCount = True
        ShowOptions = doBoth
        Align = alLeft
        Alignment = taRightJustify
      end
    end
  end
  object cxgrdDep: TcxGrid [2]
    Left = 0
    Top = 41
    Width = 353
    Height = 426
    Align = alLeft
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DM.dsDepart
      DataController.DetailKeyFieldNames = 'id'
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.PercentWildcard = '*'
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'id'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn
        Caption = 'id'
        DataBinding.FieldName = 'id'
        Width = 20
      end
      object cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'n'
        Width = 33
      end
      object cxgrdbclmnGrid2DBTableView1depart: TcxGridDBColumn
        DataBinding.FieldName = 'depart'
        Width = 55
      end
    end
    object cxgrdlvlGrid2Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid2DBTableView1
    end
  end
  object PanelTop: TPanel [3]
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    Align = alTop
    TabOrder = 3
    object mmoTop: TMemo
      Left = 1
      Top = 1
      Width = 782
      Height = 39
      Align = alClient
      Lines.Strings = (
        ' ')
      TabOrder = 0
    end
  end
  object cxgrdEmpl: TcxGrid [4]
    Left = 361
    Top = 41
    Width = 423
    Height = 426
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object cxgrdbtblvw1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsEmpl
      DataController.DetailKeyFieldNames = 'id'
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.PercentWildcard = '*'
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'id'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsData.Appending = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxgrdbclmncxgrdbtblvw1id_depart: TcxGridDBColumn
        DataBinding.FieldName = 'id_depart'
      end
      object cxgrdbclmncxgrdbtblvw1surname: TcxGridDBColumn
        DataBinding.FieldName = 'surname'
      end
    end
    object cxgrdlvl1: TcxGridLevel
      GridView = cxgrdbtblvw1
    end
  end
  object cxspltr1: TcxSplitter [5]
    Left = 353
    Top = 41
    Width = 8
    Height = 426
  end
  inherited jvfrmstrg1: TJvFormStorage
    Left = 140
    Top = 0
  end
  object dsEmpl: TDataSource
    DataSet = DM.tblEmpl
    Left = 364
    Top = 196
  end
end
