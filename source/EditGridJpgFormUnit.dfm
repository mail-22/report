inherited EditGridJpgForm: TEditGridJpgForm
  Left = 447
  Top = 322
  Caption = 'EditGridJpgForm'
  PixelsPerInch = 96
  TextHeight = 13
  object cxspltr1: TcxSplitter [0]
    Left = 473
    Top = 0
    Width = 8
    Height = 490
    HotZoneClassName = 'TcxSimpleStyle'
    Control = pnlL
  end
  object pnl_Navigator1: TPanel [1]
    Left = 0
    Top = 490
    Width = 784
    Height = 31
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object cxdbnvgtr1: TcxDBNavigator
      Left = 209
      Top = 2
      Width = 555
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
      object jvdbstslbl2: TJvDBStatusLabel
        Left = 0
        Top = 0
        Width = 81
        Height = 23
        DataSource = ds1
        CalcRecCount = True
        ShowOptions = doBoth
        Align = alLeft
        Alignment = taRightJustify
      end
    end
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 521
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnOK: TButton
      Left = 40
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 190
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 0
    Width = 8
    Height = 490
    Control = cxgrd2
  end
  object pnlL: TPanel [4]
    Left = 8
    Top = 0
    Width = 465
    Height = 490
    Align = alLeft
    Caption = 'pnlL'
    TabOrder = 4
    object cxgrd2: TcxGrid
      Left = 1
      Top = 24
      Width = 463
      Height = 465
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
          Width = 44
        end
        object cxgrdbclmnGrid2DBTableView1text1: TcxGridDBColumn
          DataBinding.FieldName = 'text1'
          Width = 393
        end
        object cxgrdbclmnGrid2DBTableView1jpg: TcxGridDBColumn
          DataBinding.FieldName = 'jpg'
          PropertiesClassName = 'TcxImageProperties'
          Properties.CustomFilter = #1057#1082#1072#1085' '#1074' JPG files (*.jpg)|*.JPG'
          Properties.GraphicClassName = 'TJPEGImage'
          Width = 20
        end
      end
      object cxgrdlvlGrid2Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid2DBTableView1
      end
    end
    object acttb1: TActionToolBar
      Left = 1
      Top = 1
      Width = 463
      Height = 23
      ActionManager = actmgr1
      Caption = 'acttb1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Spacing = 0
    end
  end
  object pnlR: TPanel [5]
    Left = 481
    Top = 0
    Width = 303
    Height = 490
    Align = alClient
    Caption = 'pnlR'
    TabOrder = 5
    object imgjpg: TcxDBImage
      Left = 1
      Top = 42
      Align = alClient
      DataBinding.DataField = 'jpg'
      DataBinding.DataSource = ds1
      Properties.CustomFilter = #1057#1082#1072#1085' '#1074' JPG files (*.jpg)|*.JPG'
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.ImmediatePost = True
      TabOrder = 0
      Height = 447
      Width = 301
    end
    object pnl2: TPanel
      Left = 1
      Top = 1
      Width = 301
      Height = 41
      Align = alTop
      Caption = 'pnl2'
      TabOrder = 1
      object mmo1: TMemo
        Left = 1
        Top = 1
        Width = 299
        Height = 39
        Align = alClient
        Alignment = taCenter
        Lines.Strings = (
          #1087#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088)
        TabOrder = 0
      end
    end
  end
  object ds1: TDataSource
    DataSet = DM.tblJpg
    Left = 354
    Top = 176
  end
  object actlst1: TActionList
    Left = 424
    Top = 112
    object actAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      OnExecute = actAddExecute
    end
    object actExtractJPG: TAction
      Caption = #1080#1079#1074#1083#1077#1095#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      OnExecute = actExtractJPGExecute
    end
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actAdd
          end
          item
            Action = actExtractJPG
          end>
        ActionBar = acttb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Left = 360
    Top = 120
    StyleName = 'XP Style'
  end
  object openDialog: TOpenPictureDialog
    Left = 384
    Top = 264
  end
end
