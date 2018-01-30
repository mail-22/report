inherited BaseForm1: TBaseForm1
  Left = 185
  Top = 172
  Caption = 'BaseForm1'
  PixelsPerInch = 96
  TextHeight = 13
  object pnlT: TPanel [0]
    Left = 0
    Top = 0
    Width = 792
    Height = 490
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'pnlT'
    TabOrder = 0
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 488
      Align = alClient
      AutoSize = True
      TabOrder = 0
      object lbl1: TLabel
        Left = 1
        Top = 1
        Width = 788
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxgrd1: TcxGrid
        Left = 1
        Top = 14
        Width = 788
        Height = 431
        Align = alClient
        BevelInner = bvLowered
        BevelKind = bkSoft
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.Style = 8
        LookAndFeel.Kind = lfOffice11
        object cxgrdbtblvw1: TcxGridDBTableView
          DragMode = dmAutomatic
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = ds1
          DataController.DetailKeyFieldNames = 'id'
          DataController.Filter.Active = True
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'id'
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              FieldName = 'rasstoyaniya'
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          Filtering.ColumnPopup.MultiSelect = False
          FilterRow.ApplyChanges = fracImmediately
          OptionsBehavior.CellHints = True
          OptionsBehavior.NavigatorHints = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
          OptionsView.HeaderEndEllipsis = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 24
          OptionsView.ShowColumnFilterButtons = sfbAlways
          object cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn
            DataBinding.FieldName = #1086#1090#1076#1077#1083
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #1057#1088#1086#1082#1080' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1047#1072#1082#1072#1079#1095#1080#1082#1072
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #1061#1086#1076' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1073#1086#1090#1099
            Width = 22
          end
          object cxgrdbclmncxgrdbtblvw1DBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 22
          end
        end
        object cxgrdlvl1: TcxGridLevel
          GridView = cxgrdbtblvw1
        end
      end
      object pnlBBB: TPanel
        Left = 1
        Top = 476
        Width = 788
        Height = 11
        Align = alBottom
        TabOrder = 1
        Visible = False
        object lbl2: TLabel
          Left = 1
          Top = 1
          Width = 786
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object pnl_Navigator1: TPanel
        Left = 1
        Top = 445
        Width = 788
        Height = 31
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        TabOrder = 2
        object cxDBNavigator3: TcxDBNavigator
          Left = 209
          Top = 2
          Width = 570
          Height = 23
          DataSource = ds1
          Align = alClient
          TabOrder = 0
        end
        object pnl3: TPanel
          Left = 187
          Top = 2
          Width = 22
          Height = 23
          Align = alLeft
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
          object jvdbstslbl1: TJvDBStatusLabel
            Left = 0
            Top = 3
            Width = 61
            Height = 13
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
          Width = 185
          Height = 23
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object JvDBStatusLabel3: TJvDBStatusLabel
            Left = 0
            Top = 0
            Width = 116
            Height = 23
            DataSource = ds1
            CalcRecCount = True
            ShowOptions = doBoth
            Align = alLeft
            Alignment = taRightJustify
          end
        end
      end
    end
  end
  object ds1: TDataSource
    DataSet = DM.tblReport
    Left = 344
    Top = 536
  end
end
