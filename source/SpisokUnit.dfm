inherited SpisokForm: TSpisokForm
  Left = -273
  Top = 325
  Width = 1280
  Height = 768
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Align = alClient
  AutoSize = True
  Caption = ''
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel [0]
    Left = 8
    Top = 176
    Width = 85
    Height = 13
    Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081':'
  end
  object pnlH: TPanel [1]
    Left = 0
    Top = 23
    Width = 1264
    Height = 41
    Align = alTop
    Caption = 'pnlH'
    TabOrder = 0
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 1262
      Height = 39
      Align = alClient
      Alignment = taCenter
      Lines.Strings = (
        #1086#1090#1073#1086#1088' '#1079#1072#1087#1080#1089#1077#1081', '#1076#1083#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103' '#1074' '#1086#1090#1095#1077#1090' ')
      TabOrder = 0
    end
  end
  object acttb1: TActionToolBar [2]
    Left = 0
    Top = 0
    Width = 1264
    Height = 23
    ActionManager = actmgr1
    Caption = 'acttb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Spacing = 0
  end
  object pnl_LR: TPanel [3]
    Left = 0
    Top = 64
    Width = 1264
    Height = 666
    Align = alClient
    Caption = 'pnl_LR'
    TabOrder = 2
    object jvntscpspltr1: TJvNetscapeSplitter
      Left = 369
      Top = 1
      Height = 633
      Align = alLeft
      Maximized = False
      Minimized = False
      ButtonCursor = crDefault
    end
    object pnlR: TPanel
      Left = 1
      Top = 1
      Width = 368
      Height = 633
      Align = alLeft
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Caption = 'pnlR'
      TabOrder = 0
      object pnl1: TPanel
        Left = 2
        Top = 2
        Width = 364
        Height = 41
        Align = alTop
        Caption = ' :'
        TabOrder = 0
      end
      object pnlFiltr: TPanel
        Left = 2
        Top = 43
        Width = 364
        Height = 588
        Align = alClient
        TabOrder = 1
        object pnlData1: TPanel
          Left = 56
          Top = 24
          Width = 209
          Height = 401
          TabOrder = 0
          object lbl1: TLabel
            Left = 0
            Top = 256
            Width = 37
            Height = 13
            Caption = #1054#1090#1076#1077#1083':'
          end
          object lbl2: TLabel
            Left = 16
            Top = 72
            Width = 101
            Height = 13
            Caption = #1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090':'
          end
          object Label1: TLabel
            Left = 8
            Top = 120
            Width = 119
            Height = 13
            Caption = #1076#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090':'
          end
          object lbl5: TLabel
            Left = 8
            Top = 184
            Width = 85
            Height = 13
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081':'
          end
          object dtp1: TDateTimePicker
            Left = 8
            Top = 88
            Width = 186
            Height = 21
            Date = 42795.473246527780000000
            Time = 42795.473246527780000000
            TabOrder = 0
            OnChange = dtp1Change
          end
          object btn1: TButton
            Left = 8
            Top = 360
            Width = 161
            Height = 25
            Caption = #1086#1090#1086#1073#1088#1072#1090#1100' '#1079#1072#1087#1080#1089#1080' !'
            TabOrder = 1
            OnClick = btn1Click
          end
          object dtp2: TDateTimePicker
            Left = 8
            Top = 136
            Width = 186
            Height = 21
            Date = 42795.473246527780000000
            Time = 42795.473246527780000000
            TabOrder = 2
            OnChange = dtp2Change
          end
          object edt1: TEdit
            Left = 8
            Top = 200
            Width = 121
            Height = 21
            TabOrder = 3
            OnChange = edt1Change
          end
          object dblkcbb1: TDBLookupComboBox
            Left = 4
            Top = 270
            Width = 145
            Height = 21
            KeyField = 'id'
            ListField = 'depart'
            ListSource = DM.dsDepart
            TabOrder = 4
            OnClick = dblkcbb1Click
            OnExit = dblkcbb1Exit
          end
          object mmo2: TMemo
            Left = 1
            Top = 1
            Width = 207
            Height = 48
            Align = alTop
            Alignment = taCenter
            Lines.Strings = (
              #1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1079#1072#1087#1080#1089#1077#1081', '
              #1076#1083#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103' '#1074' '#1086#1090#1095#1077#1090' ')
            TabOrder = 5
          end
          object chkAll: TCheckBox
            Left = 8
            Top = 296
            Width = 97
            Height = 17
            AllowGrayed = True
            Caption = #1074#1089#1077' '#1086#1090#1076#1077#1083#1099
            State = cbGrayed
            TabOrder = 6
            OnClick = chkAllClick
          end
        end
      end
    end
    object pnlL: TPanel
      Left = 379
      Top = 1
      Width = 884
      Height = 633
      Align = alClient
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Caption = 'pnlL'
      TabOrder = 1
      object lbl3: TLabel
        Left = 2
        Top = 2
        Width = 880
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxGrid2: TcxGrid
        Left = 2
        Top = 20
        Width = 880
        Height = 611
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
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsReportFiltr
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
          object cxGrid2DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 55
          end
          object cxGrid2DBTableView1department: TcxGridDBColumn
            DataBinding.FieldName = 'department'
            Width = 55
          end
          object cxGrid2DBTableView1basis: TcxGridDBColumn
            DataBinding.FieldName = 'basis'
            Width = 55
          end
          object cxGrid2DBTableView1basis_ffile: TcxGridDBColumn
            DataBinding.FieldName = 'basis_ffile'
            Width = 55
          end
          object cxGrid2DBTableView1contract_name: TcxGridDBColumn
            DataBinding.FieldName = 'contract_name'
            Width = 55
          end
          object cxGrid2DBTableView1contract_number: TcxGridDBColumn
            DataBinding.FieldName = 'contract_number'
            Width = 55
          end
          object cxGrid2DBTableView1contract_file: TcxGridDBColumn
            DataBinding.FieldName = 'contract_file'
            Width = 55
          end
          object cxGrid2DBTableView1deadline: TcxGridDBColumn
            DataBinding.FieldName = 'deadline'
            Width = 55
          end
          object cxGrid2DBTableView1costofwork: TcxGridDBColumn
            DataBinding.FieldName = 'costofwork'
            Width = 55
          end
          object cxGrid2DBTableView1responsible: TcxGridDBColumn
            DataBinding.FieldName = 'responsible'
            Width = 55
          end
          object cxGrid2DBTableView1invoice: TcxGridDBColumn
            DataBinding.FieldName = 'invoice'
            Width = 55
          end
          object cxGrid2DBTableView1invoice_file: TcxGridDBColumn
            DataBinding.FieldName = 'invoice_file'
            Width = 55
          end
          object cxGrid2DBTableView1payment_note: TcxGridDBColumn
            DataBinding.FieldName = 'payment_note'
            Width = 55
          end
          object cxGrid2DBTableView1payment_date: TcxGridDBColumn
            DataBinding.FieldName = 'payment_date'
            Width = 55
          end
          object cxGrid2DBTableView1performance_of_work_note: TcxGridDBColumn
            DataBinding.FieldName = 'performance_of_work_note'
            Width = 55
          end
          object cxGrid2DBTableView1performance_of_work_file: TcxGridDBColumn
            DataBinding.FieldName = 'performance_of_work_file'
            Width = 55
          end
          object cxGrid2DBTableView1performance_of_work_date: TcxGridDBColumn
            DataBinding.FieldName = 'performance_of_work_date'
            Width = 55
          end
          object cxGrid2DBTableView1act_acceptance: TcxGridDBColumn
            DataBinding.FieldName = 'act_acceptance'
            Width = 55
          end
          object cxGrid2DBTableView1act_acceptance_file: TcxGridDBColumn
            DataBinding.FieldName = 'act_acceptance_file'
            Width = 55
          end
          object cxGrid2DBTableView1contract_execution_note: TcxGridDBColumn
            DataBinding.FieldName = 'contract_execution_note'
            Width = 55
          end
          object cxGrid2DBTableView1contract_execution_file: TcxGridDBColumn
            DataBinding.FieldName = 'contract_execution_file'
            Width = 55
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object pnl_Navigator1: TPanel
      Left = 1
      Top = 634
      Width = 1262
      Height = 31
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderStyle = bsSingle
      TabOrder = 2
      object cxdbnvgtr1: TcxDBNavigator
        Left = 207
        Top = 2
        Width = 885
        Height = 23
        DataSource = dsReportFiltr
        Align = alLeft
        TabOrder = 0
      end
      object pnl3: TPanel
        Left = 187
        Top = 2
        Width = 20
        Height = 23
        Align = alLeft
        AutoSize = True
        TabOrder = 1
        object jvdbstslbl2: TJvDBStatusLabel
          Left = 1
          Top = 3
          Width = 18
          Height = 13
          DataSource = dsReportFiltr
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
          Width = 81
          Height = 21
          DataSource = dsReportFiltr
          CalcRecCount = True
          ShowOptions = doBoth
          Align = alLeft
          Alignment = taRightJustify
        end
      end
    end
  end
  object dsReportFiltr: TDataSource [4]
    DataSet = DM.tblReportFiltr2
    Left = 448
    Top = 418
  end
  inherited jvfrmstrg1: TJvFormStorage
    Left = 578
    Top = 506
  end
  object actmgr1: TActionManager [6]
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Action = actExportExl
          end>
        ActionBar = acttb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Images = il1
    Left = 640
    Top = 388
    StyleName = 'XP Style'
    object act1Copy: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1082' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1079#1076#1072#1085#1080#1102' !'
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
    end
  end
  object il1: TImageList [7]
    Left = 752
    Top = 488
  end
  inherited jvpnflstrg1: TJvAppIniFileStorage
    Left = 508
    Top = 476
  end
  object cxLocalizer1: TcxLocalizer
    FileName = 'D:\Dropbox\Share5\Work\Monitoring_2017\DevExRus100Proc.ini'
    Left = 436
    Top = 495
  end
  object cxprprtstr1: TcxPropertiesStore
    Active = False
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
    Left = 656
    Top = 514
  end
  object actlst1: TActionList
    Left = 730
    Top = 386
    object actExportExl: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100'  '#1074' '#1069#1082#1089#1077#1083#1100' !'
      OnExecute = actExportExlExecute
    end
  end
end
