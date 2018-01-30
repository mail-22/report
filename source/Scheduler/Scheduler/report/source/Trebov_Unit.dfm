inherited Trebov: TTrebov
  Left = 214
  Top = 285
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Action = act1Copy
  Align = alClient
  AutoSize = True
  Caption = #1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1085#1086#1088#1084'.'#1076#1086#1082'.  '#1082' '#1079#1076#1072#1085#1080#1103#1084
  OnClick = act1CopyExecute
  PixelsPerInch = 96
  TextHeight = 13
  object pnlH: TPanel [0]
    Left = 0
    Top = 23
    Width = 784
    Height = 41
    Align = alTop
    Caption = 'pnlH'
    TabOrder = 0
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 782
      Height = 39
      Align = alClient
      Lines.Strings = (
        #1089#1087#1080#1089#1086#1082' '#1085#1086#1088#1084#1072#1090#1080#1074#1085#1099#1093' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1079#1076#1072#1085#1080#1080#1103#1084' ')
      TabOrder = 0
    end
  end
  object pnlR: TPanel [1]
    Left = 708
    Top = 64
    Width = 76
    Height = 498
    Align = alClient
    Caption = 'pnlR'
    TabOrder = 1
    object cxdbm1: TcxDBMemo
      Left = 1
      Top = 42
      Align = alClient
      DataBinding.DataField = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084
      Properties.ReadOnly = True
      TabOrder = 0
      Height = 455
      Width = 74
    end
    object pnl1: TPanel
      Left = 1
      Top = 1
      Width = 74
      Height = 41
      Align = alTop
      Caption = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084' :'
      TabOrder = 1
    end
  end
  object acttb1: TActionToolBar [2]
    Left = 0
    Top = 0
    Width = 784
    Height = 23
    ActionManager = actmgr1
    Caption = 'acttb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Spacing = 0
  end
  object pnlL: TPanel [3]
    Left = 0
    Top = 64
    Width = 700
    Height = 498
    Align = alLeft
    Caption = 'pnlL'
    TabOrder = 3
    object lbl3: TLabel
      Left = 1
      Top = 1
      Width = 698
      Height = 18
      Align = alTop
      Alignment = taCenter
      Caption = #1089#1087#1080#1089#1086#1082' '#1085#1086#1088#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 19
      Width = 698
      Height = 447
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Visible = fvAlways
        DataController.DataModeController.SmartRefresh = True
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
        object cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Width = 20
        end
        object cxgrdbclmnGrid1DBTableView1N: TcxGridDBColumn
          DataBinding.FieldName = 'N'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          GroupIndex = 0
          Options.SortByDisplayText = isbtOn
          Width = 66
        end
        object cxgrdbclmnGrid1DBTableView1DBColumn: TcxGridDBColumn
          DataBinding.FieldName = #1044#1086#1082#1091#1084#1077#1085#1090
          PropertiesClassName = 'TcxTextEditProperties'
          Options.SortByDisplayText = isbtOn
          Width = 66
        end
        object cxgrdbclmnGrid1DBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #1089#1090#1072#1090#1100#1103'-'#1088#1072#1079#1076#1077#1083
          PropertiesClassName = 'TcxTextEditProperties'
          Options.SortByDisplayText = isbtOn
          Width = 66
        end
        object cxgrdbclmnGrid1DBTableView1DBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #1095#1072#1089#1090#1100' ('#1087#1091#1085#1082#1090')'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.SortByDisplayText = isbtOn
          Width = 66
        end
        object cxgrdbclmnGrid1DBTableView1DBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #1087#1088#1080#1084#1077#1095#1072#1085#1080#1077
          PropertiesClassName = 'TcxTextEditProperties'
          Options.SortByDisplayText = isbtOn
          Width = 33
        end
        object cxgrdbclmnGrid2DBTableView1F: TcxGridDBColumn
          DataBinding.FieldName = 'F'
          Width = 33
        end
        object cxgrdbclmnGrid1DBTableView1DBColumn4: TcxGridDBColumn
          DataBinding.FieldName = #1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1086#1088#1084
          PropertiesClassName = 'TcxMemoProperties'
          Options.SortByDisplayText = isbtOn
          Width = 826
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object pnl_Navigator1: TPanel
      Left = 1
      Top = 466
      Width = 698
      Height = 31
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      TabOrder = 1
      object cxdbnvgtr1: TcxDBNavigator
        Left = 225
        Top = 2
        Width = 885
        Height = 23
        Align = alLeft
        TabOrder = 0
      end
      object pnl3: TPanel
        Left = 187
        Top = 2
        Width = 38
        Height = 23
        Align = alLeft
        AutoSize = True
        TabOrder = 1
        object jvdbstslbl2: TJvDBStatusLabel
          Left = 1
          Top = 3
          Width = 61
          Height = 13
          Style = lsRecordNo
          CalcRecCount = True
          ShowOptions = doBoth
          Alignment = taCenter
        end
      end
      object pnl4: TPanel
        Left = 2
        Top = 2
        Width = 185
        Height = 23
        Align = alLeft
        TabOrder = 2
        object jvdbstslbl3: TJvDBStatusLabel
          Left = 1
          Top = 1
          Width = 61
          Height = 21
          CalcRecCount = True
          ShowOptions = doBoth
          Align = alLeft
          Alignment = taRightJustify
        end
      end
    end
  end
  object spl3: TcxSplitter [4]
    Left = 700
    Top = 64
    Width = 8
    Height = 498
    Cursor = crHSplit
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AutoSnap = True
    Control = pnlL
  end
  object ds1: TDataSource [5]
    Left = 336
    Top = 18
  end
  object actmgr1: TActionManager [7]
    ActionBars = <
      item
      end
      item
        ActionBar = acttb1
      end>
    Images = il1
    Left = 400
    Top = 20
    StyleName = 'XP Style'
    object act1Copy: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1079#1076#1072#1085#1080#1102' !'
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      OnExecute = act1CopyExecute
    end
  end
  object il1: TImageList [8]
    Left = 584
    Top = 32
  end
  object cxLocalizer1: TcxLocalizer
    FileName = 'D:\Dropbox\Share5\Work\Monitoring_2017\DevExRus100Proc.ini'
    Left = 484
    Top = 15
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = pnlH
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BevelInner'
          'BevelOuter'
          'BevelWidth'
          'BiDiMode'
          'BorderStyle'
          'BorderWidth'
          'Caption'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DockSite'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FullRepaint'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'Locked'
          'Name'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseDockManager'
          'Visible'
          'Width')
      end
      item
        Component = pnlL
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BevelInner'
          'BevelOuter'
          'BevelWidth'
          'BiDiMode'
          'BorderStyle'
          'BorderWidth'
          'Caption'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DockSite'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FullRepaint'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'Locked'
          'Name'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseDockManager'
          'Visible'
          'Width')
      end
      item
        Component = pnlR
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BevelInner'
          'BevelOuter'
          'BevelWidth'
          'BiDiMode'
          'BorderStyle'
          'BorderWidth'
          'Caption'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DockSite'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FullRepaint'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'Locked'
          'Name'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseDockManager'
          'Visible'
          'Width')
      end
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
    Left = 680
    Top = 314
  end
end
