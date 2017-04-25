inherited EditGridJOleForm: TEditGridJOleForm
  Left = 385
  Top = 267
  Width = 828
  Height = 640
  Caption = 'EditGridJOleForm'
  PixelsPerInch = 96
  TextHeight = 17
  object lbl1: TLabel [0]
    Left = 0
    Top = 42
    Width = 820
    Height = 17
    Align = alTop
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1074#1080#1076#1072' :'
  end
  object pnl_Navigator1: TPanel [1]
    Left = 0
    Top = 519
    Width = 820
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 0
    object cxdbnvgtr1: TcxDBNavigator
      Left = 324
      Top = 2
      Width = 480
      Height = 33
      DataSource = DM.dsJpg
      Align = alClient
      TabOrder = 0
    end
    object pnl3: TPanel
      Left = 244
      Top = 2
      Width = 80
      Height = 33
      Align = alLeft
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object jvdbstslbl1: TJvDBStatusLabel
        Left = 0
        Top = 4
        Width = 72
        Height = 17
        DataSource = DM.dsJpg
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
      Height = 33
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object jvdbstslbl2: TJvDBStatusLabel
        Left = 0
        Top = 0
        Width = 92
        Height = 33
        DataSource = DM.dsJpg
        CalcRecCount = True
        ShowOptions = doBoth
        Align = alLeft
        Alignment = taRightJustify
      end
    end
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 560
    Width = 820
    Height = 53
    Align = alBottom
    TabOrder = 1
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
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 115
    Width = 10
    Height = 404
  end
  object pnlL: TPanel [4]
    Left = 10
    Top = 115
    Width = 810
    Height = 404
    Align = alClient
    Caption = 'pnlL'
    TabOrder = 3
    object cxgrd1: TcxGrid
      Left = 1
      Top = 71
      Width = 808
      Height = 332
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DM.dsJpg
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.Indicator = True
        object cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Width = 33
        end
        object cxgrdbclmnGrid1DBTableView1idR1: TcxGridDBColumn
          DataBinding.FieldName = 'idR1'
          Width = 33
        end
        object cxgrdbclmnGrid1DBTableView1jpg: TcxGridDBColumn
          DataBinding.FieldName = 'jpg'
          Width = 33
        end
        object cxgrdbclmnGrid1DBTableView1ole: TcxGridDBColumn
          DataBinding.FieldName = 'ole'
          Width = 33
        end
        object cxgrdbclmnGrid1DBTableView1text1: TcxGridDBColumn
          DataBinding.FieldName = 'text1'
          Width = 33
        end
        object cxgrdbclmnGrid1DBTableView1filename: TcxGridDBColumn
          DataBinding.FieldName = 'filename'
          Width = 88
        end
        object cxgrdbclmnGrid1DBTableView1filepath: TcxGridDBColumn
          DataBinding.FieldName = 'filepath'
          Width = 88
        end
        object cxgrdbclmnGrid1DBTableView1ext: TcxGridDBColumn
          DataBinding.FieldName = 'ext'
          Width = 88
        end
        object cxgrdbclmnGrid1DBTableView1UniqueName: TcxGridDBColumn
          DataBinding.FieldName = 'UniqueName'
          Width = 88
        end
        object cxgrdbclmn_Type_MRU: TcxGridDBColumn
          DataBinding.FieldName = 'type'
          PropertiesClassName = 'TcxMRUEditProperties'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
    object actmmb2: TActionMainMenuBar
      Left = 1
      Top = 39
      Width = 808
      Height = 32
      UseSystemFont = False
      ActionManager = actmgr1
      Caption = 'actmmb2'
      ColorMap = xpclrmp1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
    end
    object acttb1: TActionToolBar
      Left = 1
      Top = 1
      Width = 808
      Height = 38
      Caption = 'acttb1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Spacing = 0
    end
  end
  object acttb2: TActionToolBar [5]
    Left = 0
    Top = 59
    Width = 820
    Height = 56
    ActionManager = actmgr1
    Caption = 'acttb2'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object Memo1: TMemo [6]
    Left = 0
    Top = 0
    Width = 820
    Height = 42
    Align = alTop
    Alignment = taCenter
    Lines.Strings = (
      #1089#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074)
    TabOrder = 5
  end
  inherited jvpnflstrg1: TJvAppIniFileStorage
    Left = 124
    Top = 12
  end
  object openDialog: TOpenDialog
    Left = 581
    Top = 250
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actExtract
          end
          item
            Action = acAddContract
          end
          item
            Action = actAddBasis
          end
          item
            Action = actAddInvoice
          end
          item
            Action = actAddPerf
          end
          item
            Action = actAddAct
          end
          item
            Action = actAddContrEx
          end>
      end
      item
        Items = <
          item
            Action = actAddContrEx
          end
          item
            Action = actAddAct
          end
          item
            Action = actAddPerf
          end
          item
            Action = actAddInvoice
          end
          item
            Action = acAddContract
          end
          item
            Action = actAddBasis
          end
          item
            Action = actAdd
          end>
      end
      item
        Items = <
          item
            Action = actExtract
          end>
        ActionBar = actmmb2
      end
      item
        Items = <
          item
            Action = actAddContrEx
          end
          item
            Action = actAddAct
          end
          item
            Action = actAddPerf
          end
          item
            Action = actAddInvoice
          end
          item
            Action = acAddContract
          end
          item
            Action = actAddBasis
          end
          item
            Action = actAdd
          end>
        ActionBar = acttb2
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Left = 336
    Top = 104
    StyleName = 'XP Style'
  end
  object actlst1: TActionList
    Left = 408
    Top = 144
    object actAdd: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnExecute = actAddExecute
    end
    object actExtract: TAction
      Caption = #1048#1079#1074#1083#1077#1095#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnExecute = actExtractExecute
    end
    object actAddBasis: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1076#1086#1075#1086#1074#1086#1088#1072' - '#1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' !'
      OnExecute = actAddBasisExecute
    end
    object acAddContract: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1044#1086#1075#1086#1074#1086#1088
      Hint = #1044#1086#1075#1086#1074#1086#1088' - '#1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'!'
      OnExecute = acAddContractExecute
    end
    object actAddInvoice: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091
      Hint = #1089#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091'- '#1076#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'!'
      OnExecute = actAddInvoiceExecute
    end
    object actAddPerf: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080
      Hint = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099'- '#1076#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'!'
      OnExecute = actAddPerfExecute
    end
    object actAddAct: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080
      Hint = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080'- '#1076#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'!'
      OnExecute = actAddActExecute
    end
    object actAddContrEx: TAction
      Category = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
      Hint = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072'- '#1076#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090'!'
      OnExecute = actAddContrExExecute
    end
  end
  object xpclrmp1: TXPColorMap
    HighlightColor = clWhite
    BtnSelectedColor = clBtnFace
    UnusedColor = clWhite
    Left = 648
    Top = 112
  end
end
