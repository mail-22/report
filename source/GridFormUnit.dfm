inherited GridForm: TGridForm
  Left = -421
  Top = 175
  Width = 1460
  Height = 783
  Caption = 'GridForm'
  PixelsPerInch = 96
  TextHeight = 17
  object pnlT: TPanel [0]
    Left = 0
    Top = 26
    Width = 1444
    Height = 680
    Align = alClient
    BevelOuter = bvLowered
    Caption = 'pnlT'
    TabOrder = 0
    object pnlGrid: TPanel
      Left = 1
      Top = 1
      Width = 1442
      Height = 678
      Align = alClient
      AutoSize = True
      TabOrder = 0
      object lbl2: TLabel
        Left = 1
        Top = 1
        Width = 1440
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1057#1087#1080#1089#1086#1082' '#1079#1072#1087#1080#1089#1077#1081' '#1086' '#1088#1072#1073#1086#1090#1072#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlBBB: TPanel
        Left = 1
        Top = 666
        Width = 1440
        Height = 11
        Align = alBottom
        TabOrder = 0
        Visible = False
      end
      object cxspltr1: TcxSplitter
        Left = 1263
        Top = 14
        Width = 8
        Height = 652
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salRight
        Control = pnlR
      end
      object pnlR: TPanel
        Left = 1271
        Top = 14
        Width = 170
        Height = 652
        Align = alRight
        TabOrder = 2
        object lbl3: TLabel
          Left = 1
          Top = 1
          Width = 168
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1074#1099#1073#1088#1072#1085#1085#1072#1103'  '#1079#1072#1087#1080#1089#1100' '#1086' '#1088#1072#1073#1086#1090#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxdbvrtclgrd1: TcxDBVerticalGrid
          Left = 1
          Top = 14
          Width = 168
          Height = 637
          Align = alClient
          DragCursor = crDrag
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times'
          Font.Style = []
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          OptionsView.CellEndEllipsis = True
          OptionsView.CategoryExplorerStyle = True
          OptionsView.GridLineColor = clBlue
          OptionsView.RowHeaderWidth = 124
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.RowSizing = True
          ParentFont = False
          TabOrder = 0
          Visible = False
          DataController.DataSource = DM.dsReport
          DataController.GridMode = True
          Version = 1
          object cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'id'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1department: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'department'
            Properties.Options.Editing = False
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1DepartL: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'DepartL'
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1basis: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'basis'
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1basis_ffile: TcxDBEditorRow
            Properties.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' -'#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072
            Properties.DataBinding.FieldName = 'basis_ffile'
            Properties.Options.Editing = False
            ID = 4
            ParentID = 3
            Index = 0
            Version = 1
          end
          object cxctgryrwcxdbvrtclgrd1CategoryRow1: TcxCategoryRow
            Properties.Caption = #1044#1086#1075#1086#1074#1086#1088
            ID = 5
            ParentID = -1
            Index = 4
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1contract_execution_note: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DataBinding.FieldName = 'contract_execution_note'
            ID = 6
            ParentID = 5
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1contract_execution_file: TcxDBEditorRow
            Properties.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072' -'#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072
            Properties.DataBinding.FieldName = 'contract_execution_file'
            Properties.Options.Editing = False
            ID = 7
            ParentID = 6
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1contract_file: TcxDBEditorRow
            Properties.Caption = #1076#1086#1075#1086#1074#1086#1088' -'#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072
            Properties.DataBinding.FieldName = 'contract_file'
            Properties.Options.Editing = False
            ID = 8
            ParentID = 5
            Index = 1
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1contract_number: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'contract_number'
            ID = 9
            ParentID = 5
            Index = 2
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1contract_name: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'contract_name'
            ID = 10
            ParentID = 5
            Index = 3
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1deadline: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'deadline'
            ID = 11
            ParentID = 5
            Index = 4
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1act_acceptance: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'act_acceptance'
            ID = 12
            ParentID = -1
            Index = 5
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1act_acceptance_file: TcxDBEditorRow
            Properties.Caption = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080' -'#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072
            Properties.DataBinding.FieldName = 'act_acceptance_file'
            Properties.Options.Editing = False
            ID = 13
            ParentID = 12
            Index = 0
            Version = 1
          end
          object cxctgryrwcxdbvrtclgrd1CategoryRow2: TcxCategoryRow
            Properties.Caption = #1057#1095#1077#1090
            ID = 14
            ParentID = -1
            Index = 6
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1payment_date: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.DataBinding.FieldName = 'payment_date'
            ID = 15
            ParentID = 14
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1payment_note: TcxDBEditorRow
            Height = 20
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DataBinding.FieldName = 'payment_note'
            ID = 16
            ParentID = 14
            Index = 1
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1costofwork: TcxDBEditorRow
            Properties.DataBinding.FieldName = 'costofwork'
            ID = 17
            ParentID = 14
            Index = 2
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1invoice: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'invoice'
            ID = 18
            ParentID = 14
            Index = 3
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1invoice_file: TcxDBEditorRow
            Properties.Caption = ' '#1089#1095#1077#1090' -'#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072
            Properties.DataBinding.FieldName = 'invoice_file'
            Properties.Options.Editing = False
            ID = 19
            ParentID = 18
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1responsible: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
            Properties.DataBinding.FieldName = 'responsible'
            ID = 20
            ParentID = -1
            Index = 7
            Version = 1
          end
          object cxctgryrwcxdbvrtclgrd1CategoryRow3: TcxCategoryRow
            Properties.Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
            ID = 21
            ParentID = -1
            Index = 8
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1performance_of_work_file: TcxDBEditorRow
            Properties.Caption = #1074#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099'  -'#1085#1072#1083#1080#1095#1080#1077' '#1092#1072#1081#1083#1072
            Properties.DataBinding.FieldName = 'performance_of_work_file'
            Properties.Options.Editing = False
            ID = 22
            ParentID = 21
            Index = 0
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1performance_of_work_date: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.EditProperties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.DataBinding.FieldName = 'performance_of_work_date'
            ID = 23
            ParentID = 21
            Index = 1
            Version = 1
          end
          object cxdbdtrwcxdbvrtclgrd1performance_of_work_note: TcxDBEditorRow
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DataBinding.FieldName = 'performance_of_work_note'
            ID = 24
            ParentID = 21
            Index = 2
            Version = 1
          end
        end
      end
      object pnlL: TPanel
        Left = 1
        Top = 14
        Width = 1262
        Height = 652
        Align = alClient
        Caption = 'pnlL'
        TabOrder = 3
        object lbl1: TLabel
          Left = 1
          Top = 1
          Width = 1260
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1089#1087#1080#1089#1086#1082' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081' '#1086' '#1088#1072#1073#1086#1090#1072#1093
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
          Width = 1260
          Height = 606
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
          LevelTabs.Slants.Positions = [spLeft, spRight]
          LevelTabs.Style = 8
          LookAndFeel.Kind = lfOffice11
          RootLevelOptions.DetailTabsPosition = dtpTop
          object cxgrdbtblvw1: TcxGridDBTableView
            DragMode = dmAutomatic
            NavigatorButtons.ConfirmDelete = False
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DM.dsReport
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
            OptionsView.ShowEditButtons = gsebAlways
            OptionsView.CellAutoHeight = True
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
            object cxgrdbtblvw1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Width = 29
            end
            object cxgrdbtblvw1department: TcxGridDBColumn
              DataBinding.FieldName = 'department'
              Width = 31
            end
            object cxgrdbtblvw1DepartL: TcxGridDBColumn
              DataBinding.FieldName = 'DepartL'
              Width = 43
            end
            object cxgrdbtblvw1basis: TcxGridDBColumn
              DataBinding.FieldName = 'basis'
              Width = 38
            end
            object cxgrdbtblvw1file: TcxGridDBColumn
              DataBinding.FieldName = 'file'
              Width = 41
            end
            object cxgrdbtblvw1contract_name: TcxGridDBColumn
              DataBinding.FieldName = 'contract_name'
              Width = 39
            end
            object cxgrdbtblvw1contract_number: TcxGridDBColumn
              DataBinding.FieldName = 'contract_number'
              Width = 43
            end
            object cxgrdbtblvw1contract_file: TcxGridDBColumn
              DataBinding.FieldName = 'contract_file'
              Width = 40
            end
            object cxgrdbtblvw1deadline: TcxGridDBColumn
              DataBinding.FieldName = 'deadline'
              Width = 72
            end
            object cxgrdbtblvw1costofwork: TcxGridDBColumn
              DataBinding.FieldName = 'costofwork'
              Width = 38
            end
            object cxgrdbtblvw1responsible: TcxGridDBColumn
              DataBinding.FieldName = 'responsible'
              Width = 39
            end
            object cxgrdbtblvw1invoice: TcxGridDBColumn
              DataBinding.FieldName = 'invoice'
              Width = 38
            end
            object cxgrdbtblvw1invoice_file: TcxGridDBColumn
              DataBinding.FieldName = 'invoice_file'
              Width = 39
            end
            object cxgrdbtblvw1payment_note: TcxGridDBColumn
              DataBinding.FieldName = 'payment_note'
              Width = 37
            end
            object cxgrdbtblvw1payment_date: TcxGridDBColumn
              DataBinding.FieldName = 'payment_date'
              Width = 72
            end
            object cxgrdbtblvw1performance_of_work_note: TcxGridDBColumn
              DataBinding.FieldName = 'performance_of_work_note'
              Width = 33
            end
            object cxgrdbtblvw1performance_of_work_file: TcxGridDBColumn
              DataBinding.FieldName = 'performance_of_work_file'
              Width = 33
            end
            object cxgrdbtblvw1performance_of_work_date: TcxGridDBColumn
              DataBinding.FieldName = 'performance_of_work_date'
              Width = 71
            end
            object cxgrdbtblvw1act_acceptance: TcxGridDBColumn
              DataBinding.FieldName = 'act_acceptance'
              Width = 22
            end
            object cxgrdbtblvw1act_acceptance_file: TcxGridDBColumn
              DataBinding.FieldName = 'act_acceptance_file'
              Width = 26
            end
            object cxgrdbtblvw1contract_execution_note: TcxGridDBColumn
              DataBinding.FieldName = 'contract_execution_note'
              Width = 22
            end
            object cxgrdbtblvw1contract_execution_file: TcxGridDBColumn
              DataBinding.FieldName = 'contract_execution_file'
              Width = 24
            end
          end
          object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DM.dsReport
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.DataRowSizing = True
            OptionsCustomize.BandHiding = True
            OptionsCustomize.BandsQuickCustomization = True
            OptionsCustomize.BandsQuickCustomizationReordering = qcrEnabled
            OptionsView.CellEndEllipsis = True
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.BandHeaderEndEllipsis = True
            Bands = <
              item
                Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' , '#1086#1090#1076#1077#1083
                Width = 151
              end
              item
                Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
                Width = 210
              end
              item
                Caption = #1044#1086#1075#1086#1074#1086#1088
                Width = 436
              end
              item
                Caption = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080
                Width = 163
              end
              item
                Caption = #1057#1095#1077#1090
                Width = 327
              end
              item
                Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
                Width = 314
              end>
            object cxgrdbndclmncxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'basis'
              Width = 85
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'basis_ffile'
              Width = 46
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'department'
              Width = 42
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DepartL'
              Width = 74
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'contract_execution_note'
              Width = 43
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'contract_file'
              Width = 43
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column7: TcxGridDBBandedColumn
              Caption = #1076#1086#1075#1086#1074#1086#1088' - ( '#1088#1077#1082#1074#1080#1079#1080#1090#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1072')- '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '
              DataBinding.FieldName = 'contract_name'
              Width = 70
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column8: TcxGridDBBandedColumn
              DataBinding.FieldName = 'deadline'
              Width = 71
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'contract_execution_file'
              Width = 44
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1Column9: TcxGridDBBandedColumn
              DataBinding.FieldName = 'contract_execution_note'
              Width = 55
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'id'
              Width = 55
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1contract_number: TcxGridDBBandedColumn
              DataBinding.FieldName = 'contract_number'
              Width = 68
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1costofwork: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costofwork'
              Width = 55
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1responsible: TcxGridDBBandedColumn
              DataBinding.FieldName = 'responsible'
              Width = 55
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1invoice: TcxGridDBBandedColumn
              DataBinding.FieldName = 'invoice'
              Width = 55
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1invoice_file: TcxGridDBBandedColumn
              DataBinding.FieldName = 'invoice_file'
              Width = 55
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1payment_note: TcxGridDBBandedColumn
              DataBinding.FieldName = 'payment_note'
              Width = 55
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1payment_date: TcxGridDBBandedColumn
              DataBinding.FieldName = 'payment_date'
              Width = 55
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_note: TcxGridDBBandedColumn
              DataBinding.FieldName = 'performance_of_work_note'
              Width = 55
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_file: TcxGridDBBandedColumn
              DataBinding.FieldName = 'performance_of_work_file'
              Width = 55
              Position.BandIndex = 5
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_date: TcxGridDBBandedColumn
              DataBinding.FieldName = 'performance_of_work_date'
              Width = 55
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance: TcxGridDBBandedColumn
              DataBinding.FieldName = 'act_acceptance'
              Width = 55
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance_file: TcxGridDBBandedColumn
              DataBinding.FieldName = 'act_acceptance_file'
              Width = 55
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxgrdlvl1: TcxGridLevel
            Caption = '2'
            GridView = cxgrd1DBBandedTableView1
          end
          object cxgrdlvlcxgrd1Level1: TcxGridLevel
            Caption = '1'
            GridView = cxgrdbtblvw1
          end
        end
        object pnl_Navigator1: TPanel
          Left = 1
          Top = 620
          Width = 1260
          Height = 31
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          BorderStyle = bsSingle
          TabOrder = 1
          object cxDBNavigator3: TcxDBNavigator
            Left = 206
            Top = 2
            Width = 1035
            Height = 23
            DataSource = DM.dsReport
            Align = alClient
            TabOrder = 0
          end
          object pnl3: TPanel
            Left = 187
            Top = 2
            Width = 19
            Height = 23
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 1
            object jvdbstslbl1: TJvDBStatusLabel
              Left = 0
              Top = 3
              Width = 72
              Height = 17
              DataSource = DM.dsReport
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
              Width = 142
              Height = 23
              DataSource = DM.dsReport
              CalcRecCount = True
              ShowOptions = doBoth
              Align = alLeft
              Alignment = taRightJustify
            end
          end
        end
      end
    end
  end
  object actmmb1: TActionMainMenuBar [1]
    Left = 0
    Top = 0
    Width = 1444
    Height = 26
    UseSystemFont = False
    ActionManager = actmgr1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object jvstsbr1: TJvStatusBar [2]
    Left = 0
    Top = 726
    Width = 1444
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object dxstsbr1: TdxStatusBar [3]
    Left = 0
    Top = 706
    Width = 1444
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  inherited jvfrmstrg1: TJvFormStorage
    Left = 120
    Top = 20
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actAdd
          end
          item
            Action = actEdit
          end
          item
            Action = acOle
          end
          item
            Action = actJpg
          end
          item
            Action = actDep
          end
          item
            Action = actEmpl
          end
          item
            Action = actTun
          end
          item
            Action = actSpisok
          end>
        ActionBar = actmmb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Left = 346
    Top = 344
    StyleName = 'XP Style'
  end
  object actlst1: TActionList
    Left = 498
    Top = 328
    object actAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' '
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100' '
      OnExecute = actEditExecute
    end
    object acOle: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1076#1086#1082'-'#1086#1074
      Hint = #1088#1072#1073#1086#1090#1072' '#1089'  '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1084#1080' '#1076#1086#1082'-'#1084#1080
      OnExecute = actOleExecute
    end
    object actJpg: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081' '
      Hint = #1057#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081' '
      OnExecute = actJpgExecute
    end
    object actDep: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1090#1076#1077#1083#1086#1074' '
      OnExecute = actDepExecute
    end
    object actTun: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '
      OnExecute = actTunExecute
    end
    object actEmpl: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
      OnExecute = actEmplExecute
    end
    object actSpisok: TAction
      Caption = #1054#1090#1095#1077#1090#1099
      OnExecute = actSpisokExecute
    end
  end
  object jvpvnts1: TJvAppEvents
    OnHint = jvpvnts1Hint
    Left = 546
    Top = 401
  end
  object cxprprtstr1: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = cxspltr1
        Properties.Strings = (
          'Left')
      end
      item
        Component = pnlR
        Properties.Strings = (
          'Width')
      end>
    StorageName = 'cxprprtstr1'
    Left = 706
    Top = 289
  end
  object cxprprtstr2cxgrdbtblvw1: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = cxgrd1
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = cxgrd1DBBandedTableView1
        Properties.Strings = (
          'BackgroundBitmaps'
          'Bands'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = cxgrd1DBBandedTableView1Column1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column3
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column4
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column5
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column6
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column7
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column8
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1Column9
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1contract_number
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1costofwork
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1id
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1invoice
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1invoice_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1payment_date
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1payment_note
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_date
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_note
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbndclmncxgrd1DBBandedTableView1responsible
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1
        Properties.Strings = (
          'BackgroundBitmaps'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = cxgrdbtblvw1act_acceptance
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1act_acceptance_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1basis
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1contract_execution_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1contract_execution_note
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1contract_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1contract_name
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1contract_number
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1costofwork
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1deadline
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1DepartL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1department
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1id
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1invoice
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1invoice_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1payment_date
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1payment_note
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1performance_of_work_date
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1performance_of_work_file
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1performance_of_work_note
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdbtblvw1responsible
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxgrdlvl1
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end
      item
        Component = cxgrdlvlcxgrd1Level1
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end>
    StorageName = 'cxprprtstr2cxgrdbtblvw1'
    Left = 994
    Top = 465
  end
end
