inherited MailForm: TMailForm
  Left = -1892
  Top = 228
  Width = 1740
  Caption = 'MailForm'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dxstsbr1: TdxStatusBar [0]
    Left = 0
    Top = 553
    Width = 1732
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object actmmb1: TActionMainMenuBar [1]
    Left = 0
    Top = 0
    Width = 1732
    Height = 26
    UseSystemFont = False
    ActionManager = actmgr1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object pnlGrid: TPanel [2]
    Left = 0
    Top = 26
    Width = 1732
    Height = 527
    Align = alClient
    AutoSize = True
    TabOrder = 2
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1730
      Height = 13
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlBBB: TPanel
      Left = 1
      Top = 515
      Width = 1730
      Height = 11
      Align = alBottom
      TabOrder = 0
      Visible = False
    end
    object cxspltr1: TcxSplitter
      Left = 1553
      Top = 14
      Width = 8
      Height = 501
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salRight
      Control = pnlR
    end
    object pnlR: TPanel
      Left = 1561
      Top = 14
      Width = 170
      Height = 501
      Align = alRight
      TabOrder = 2
      Visible = False
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
      object cxdbVertgrd2: TcxDBVerticalGrid
        Left = 1
        Top = 14
        Width = 168
        Height = 486
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
        OptionsView.RowHeaderWidth = 107
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.RowSizing = True
        Navigator.Buttons.CustomButtons = <>
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
      Width = 1552
      Height = 501
      Align = alClient
      Caption = 'pnlL'
      TabOrder = 3
      object lbl1: TLabel
        Left = 1
        Top = 1
        Width = 1550
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1089#1087#1080#1089#1086#1082' '#1074#1089#1077#1093' '#1079#1072#1087#1080#1089#1077#1081' '#1086' '#1087#1080#1089#1100#1084#1072#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxgrd2: TcxGrid
        Left = 1
        Top = 14
        Width = 1550
        Height = 455
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
        object cxgrd22View: TcxGridDBTableView
          DragMode = dmAutomatic
          Navigator.Buttons.CustomButtons = <>
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
          object cxgrd22Viewid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 28
          end
          object cxgrd22Viewdepartment: TcxGridDBColumn
            DataBinding.FieldName = 'department'
            Width = 28
          end
          object cxgrd22ViewDepartL: TcxGridDBColumn
            DataBinding.FieldName = 'DepartL'
            Width = 28
          end
          object cxgrd22Viewbasis: TcxGridDBColumn
            DataBinding.FieldName = 'basis'
            Width = 29
          end
          object cxgrd22Viewfile: TcxGridDBColumn
            DataBinding.FieldName = 'file'
            Width = 28
          end
          object cxgrd22Viewcontract_name: TcxGridDBColumn
            DataBinding.FieldName = 'contract_name'
            Width = 28
          end
          object cxgrd22Viewcontract_number: TcxGridDBColumn
            DataBinding.FieldName = 'contract_number'
            Width = 28
          end
          object cxgrd22Viewcontract_file: TcxGridDBColumn
            DataBinding.FieldName = 'contract_file'
            Width = 28
          end
          object cxgrd22Viewdeadline: TcxGridDBColumn
            DataBinding.FieldName = 'deadline'
            Width = 28
          end
          object cxgrd22Viewcostofwork: TcxGridDBColumn
            DataBinding.FieldName = 'costofwork'
            Width = 28
          end
          object cxgrd22Viewresponsible: TcxGridDBColumn
            DataBinding.FieldName = 'responsible'
            Width = 29
          end
          object cxgrd22Viewinvoice: TcxGridDBColumn
            DataBinding.FieldName = 'invoice'
            Width = 28
          end
          object cxgrd22Viewinvoice_file: TcxGridDBColumn
            DataBinding.FieldName = 'invoice_file'
            Width = 28
          end
          object cxgrd22Viewpayment_note: TcxGridDBColumn
            DataBinding.FieldName = 'payment_note'
            Width = 28
          end
          object cxgrd22Viewpayment_date: TcxGridDBColumn
            DataBinding.FieldName = 'payment_date'
            Width = 28
          end
          object cxgrd22Viewperformance_of_work_note: TcxGridDBColumn
            DataBinding.FieldName = 'performance_of_work_note'
            Width = 28
          end
          object cxgrd22Viewperformance_of_work_file: TcxGridDBColumn
            DataBinding.FieldName = 'performance_of_work_file'
            Width = 29
          end
          object cxgrd22Viewperformance_of_work_date: TcxGridDBColumn
            DataBinding.FieldName = 'performance_of_work_date'
            Width = 28
          end
          object cxgrd22Viewact_acceptance: TcxGridDBColumn
            DataBinding.FieldName = 'act_acceptance'
            Width = 28
          end
          object cxgrd22Viewact_acceptance_file: TcxGridDBColumn
            DataBinding.FieldName = 'act_acceptance_file'
            Width = 28
          end
          object cxgrd22Viewcontract_execution_note: TcxGridDBColumn
            DataBinding.FieldName = 'contract_execution_note'
            Width = 28
          end
          object cxgrd22Viewcontract_execution_file: TcxGridDBColumn
            DataBinding.FieldName = 'contract_execution_file'
            Width = 28
          end
          object cxgrdbclmncxgrd22Viewbasis_N: TcxGridDBColumn
            DataBinding.FieldName = 'basis_N'
            Width = 108
          end
          object cxgrdbclmncxgrd22Viewbasis_ffile: TcxGridDBColumn
            DataBinding.FieldName = 'basis_ffile'
            Width = 142
          end
          object cxgrdbclmncxgrd22Viewtype_task_i: TcxGridDBColumn
            DataBinding.FieldName = 'type_task_i'
            Width = 295
          end
          object cxgrdbclmncxgrd22Viewtype_task_str: TcxGridDBColumn
            DataBinding.FieldName = 'type_task_str'
            Width = 287
          end
        end
        object cxgrd21View: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DM.dsReport
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.DataRowSizing = True
          OptionsCustomize.BandHiding = True
          OptionsCustomize.BandsQuickCustomization = True
          OptionsCustomize.BandsQuickCustomizationReordering = qcrEnabled
          OptionsView.CellEndEllipsis = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.BandHeaderEndEllipsis = True
          Bands = <
            item
              Caption = #1055#1080#1089#1100#1084#1086
              Width = 871
            end
            item
              Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' , '#1086#1090#1076#1077#1083
              Width = 243
            end
            item
              Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1080#1077
              Width = 228
            end
            item
              Caption = #1055#1088#1086#1095#1077#1077
              Width = 129
            end>
          object cxgrdbndclmncxgrd1DBBandedTableView1id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'id'
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd1DBBandedTableView1Column3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'department'
            Visible = False
            Width = 60
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd1DBBandedTableView1Column4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DepartL'
            Width = 60
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd1DBBandedTableView1responsible: TcxGridDBBandedColumn
            DataBinding.FieldName = 'responsible'
            PropertiesClassName = 'TcxMRUEditProperties'
            Width = 58
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21Viewtype_task_i: TcxGridDBBandedColumn
            DataBinding.FieldName = 'type_task_i'
            Visible = False
            Width = 43
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21Viewtype_task_str: TcxGridDBBandedColumn
            DataBinding.FieldName = 'type_task_str'
            Visible = False
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Correspondent'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Data_In'
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Ispolnitel'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Num_In'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Resoluzia'
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Soderganie'
            Width = 131
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrdbndclmncxgrd21ViewColumn7: TcxGridDBBandedColumn
            DataBinding.FieldName = 'mail_Data_In'
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd21ViewColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'basis_ffile'
            Width = 282
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxgrdlvl21: TcxGridLevel
          Caption = '2'
          GridView = cxgrd21View
        end
        object cxgrdlvl22: TcxGridLevel
          Caption = '1'
          GridView = cxgrd22View
        end
      end
      object pnl_Navigator1: TPanel
        Left = 1
        Top = 469
        Width = 1550
        Height = 31
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        TabOrder = 1
        object cxDBNavigator3: TcxDBNavigator
          Left = 259
          Top = 2
          Width = 1277
          Height = 23
          Buttons.CustomButtons = <>
          DataSource = DM.dsReport
          Align = alClient
          TabOrder = 0
        end
        object pnl3: TPanel
          Left = 187
          Top = 2
          Width = 72
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
  object cxprprtstr1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxprprtstr1'
    Left = 760
    Top = 16
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
          end>
        ActionBar = actmmb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end
      item
        ActionList = GridForm.actlst1
        Caption = 'actlst1'
      end>
    Left = 624
    Top = 8
    StyleName = 'XP Style'
  end
  object actlst1: TActionList
    Left = 722
    Top = 8
    object actAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' ('#1087#1086' '#1087#1080#1089#1100#1084#1091')'
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100'  ('#1087#1086' '#1087#1080#1089#1100#1084#1091')'
      Enabled = False
      OnExecute = actEditExecute
    end
    object acOle: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1076#1086#1082'-'#1086#1074
      Hint = #1088#1072#1073#1086#1090#1072' '#1089'  '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1084#1080' '#1076#1086#1082'-'#1084#1080
      OnExecute = acOleExecute
    end
    object actJpg: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081' '
      Hint = #1057#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081' '
    end
    object actDep: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1090#1076#1077#1083#1086#1074' '
    end
    object actTun: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '
    end
    object actEmpl: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
    end
    object actSpisok: TAction
      Caption = #1054#1090#1095#1077#1090#1099
    end
  end
end
