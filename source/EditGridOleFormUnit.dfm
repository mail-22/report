inherited EditGridJOleForm: TEditGridJOleForm
  Left = 385
  Top = 267
  Width = 828
  Height = 640
  Caption = 'EditGridJOleForm'
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Navigator1: TPanel [0]
    Left = 0
    Top = 530
    Width = 812
    Height = 31
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 0
    object cxdbnvgtr1: TcxDBNavigator
      Left = 248
      Top = 2
      Width = 555
      Height = 23
      DataSource = DM.dsJpg
      Align = alClient
      TabOrder = 0
    end
    object pnl3: TPanel
      Left = 187
      Top = 2
      Width = 61
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
        DataSource = DM.dsJpg
        CalcRecCount = True
        ShowOptions = doBoth
        Align = alLeft
        Alignment = taRightJustify
      end
    end
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 561
    Width = 812
    Height = 41
    Align = alBottom
    TabOrder = 1
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
  object cxSplitter1: TcxSplitter [2]
    Left = 0
    Top = 23
    Width = 8
    Height = 507
  end
  object pnlL: TPanel [3]
    Left = 8
    Top = 23
    Width = 804
    Height = 507
    Align = alClient
    Caption = 'pnlL'
    TabOrder = 3
    object cxgrd1: TcxGrid
      Left = 1
      Top = 88
      Width = 802
      Height = 418
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
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 802
      Height = 32
      Align = alTop
      Alignment = taCenter
      Lines.Strings = (
        #1089#1087#1080#1089#1086#1082' '#1089#1086#1087#1088#1086#1074#1086#1076#1080#1090#1077#1083#1100#1085#1099#1093' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074)
      TabOrder = 1
    end
    object actmmb2: TActionMainMenuBar
      Left = 1
      Top = 62
      Width = 802
      Height = 26
      UseSystemFont = False
      ActionManager = actmgr1
      Caption = 'actmmb2'
      ColorMap = xpclrmp1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
    end
    object acttb1: TActionToolBar
      Left = 1
      Top = 33
      Width = 802
      Height = 29
      Caption = 'acttb1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Spacing = 0
    end
  end
  object acttb2: TActionToolBar [4]
    Left = 0
    Top = 0
    Width = 812
    Height = 23
    ActionManager = actmgr1
    Caption = 'acttb2'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Spacing = 0
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
