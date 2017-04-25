inherited EditForm2: TEditForm2
  Left = 640
  Top = 279
  Caption = 'EditForm2 - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1081' '#1086#1090#1076#1077#1083#1086#1074
  PixelsPerInch = 96
  TextHeight = 17
  object pnl1: TPanel [0]
    Left = 0
    Top = 519
    Width = 792
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
  object cxdbvrtclgrd1: TcxDBVerticalGrid [1]
    Left = 626
    Top = 0
    Width = 166
    Height = 479
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times'
    Font.Style = []
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    OptionsView.GridLineColor = clBlue
    OptionsView.RowHeaderWidth = 33
    OptionsBehavior.RowSizing = True
    ParentFont = False
    TabOrder = 1
    DataController.DataSource = ds1
    DataController.GridMode = True
    Version = 1
    object cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'id'
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1depart: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'depart'
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
  end
  object pnl_Navigator1: TPanel [2]
    Left = 0
    Top = 479
    Width = 792
    Height = 40
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 2
    object cxdbnvgtr1: TcxDBNavigator
      Left = 268
      Top = 2
      Width = 510
      Height = 32
      DataSource = ds1
      Align = alClient
      TabOrder = 0
    end
    object pnl3: TPanel
      Left = 244
      Top = 2
      Width = 24
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
        DataSource = ds1
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
        DataSource = ds1
        CalcRecCount = True
        ShowOptions = doBoth
        Align = alLeft
        Alignment = taRightJustify
      end
    end
  end
  object cxgrd2: TcxGrid [3]
    Left = 0
    Top = 0
    Width = 616
    Height = 479
    Align = alLeft
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvAlways
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = ds1
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
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.NavigatorHints = True
      OptionsView.CellEndEllipsis = True
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Width = 45
      end
      object cxgrdbclmnGrid2DBTableView1depart: TcxGridDBColumn
        DataBinding.FieldName = 'depart'
        Width = 255
      end
    end
    object cxgrdlvlGrid2Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid2DBTableView1
    end
  end
  object cxspltr1: TcxSplitter [4]
    Left = 616
    Top = 0
    Width = 10
    Height = 479
    Control = cxgrd2
  end
  object ds1: TDataSource
    DataSet = DM.tblDepart
    Left = 364
    Top = 196
  end
end
