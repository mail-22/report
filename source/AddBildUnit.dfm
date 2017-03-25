object AddBildForm: TAddBildForm
  Left = 232
  Top = 42
  Width = 800
  Height = 824
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1086#1073#1098#1077#1082#1090#1072' '#1074' '#1089#1087#1080#1089#1086#1082' '#1079#1076#1072#1085#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 756
    Width = 792
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOK: TButton
      Left = 40
      Top = 10
      Width = 75
      Height = 25
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' '
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 190
      Top = 10
      Width = 75
      Height = 25
      Caption = #1086#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object cxdbvrtclgrd1: TcxDBVerticalGrid
    Left = 0
    Top = 0
    Width = 792
    Height = 756
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times'
    Font.Style = []
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    OptionsView.GridLineColor = clBlue
    OptionsView.RowHeaderWidth = 401
    OptionsBehavior.RowSizing = True
    ParentFont = False
    TabOrder = 1
    DataController.DataSource = DM.dsBilding
    DataController.GridMode = True
    Version = 1
    object cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'id'
      Visible = False
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1086#1073#1098#1077#1082#1090#1072' '#1079#1072#1097#1080#1090#1099
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1072#1076#1088#1077#1089' '#1086#1073#1098#1077#1082#1090#1072' '#1079#1072#1097#1080#1090#1099
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1072#1074#1086#1086#1073#1083#1072#1076#1072#1090#1077#1083#1103
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow_FUN: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxMRUEditProperties'
      Properties.DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083#1100#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow4: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1069#1090#1072#1078#1085#1086#1089#1090#1100
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow5: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1042#1099#1089#1086#1090#1072' '#1079#1076#1072#1085#1080#1103
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow6: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1057#1090#1077#1085#1099' '#1085#1072#1088#1091#1078#1085#1099#1077'('#1084#1072#1090#1077#1088#1080#1072#1083')'
      ID = 7
      ParentID = -1
      Index = 7
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow7: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1080' '#1087#1077#1088#1077#1075#1086#1088#1086#1076#1082#1080' ('#1084#1072#1090#1077#1088#1080#1072#1083')'
      ID = 8
      ParentID = -1
      Index = 8
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow8: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1050#1088#1086#1074#1083#1103' ('#1090#1080#1087', '#1084#1072#1090#1077#1088#1080#1072#1083')'
      ID = 9
      ParentID = -1
      Index = 9
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow9: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1058#1080#1087' '#1083#1077#1089#1090#1085#1080#1094#1099', '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      ID = 10
      ParentID = -1
      Index = 10
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow10: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1055#1083#1086#1097#1072#1076#1100' '#1079#1076#1072#1085#1080#1103
      ID = 11
      ParentID = -1
      Index = 11
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1054#1073#1098#1077#1084' '#1079#1076#1072#1085#1080#1103
      ID = 12
      ParentID = -1
      Index = 12
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow12: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1040#1074#1072#1088#1080#1081#1085#1086#1077' '#1086#1089#1074#1077#1097#1077#1085#1080#1077
      ID = 13
      ParentID = -1
      Index = 13
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow13: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1042#1077#1085#1090#1080#1083#1103#1094#1080#1103
      ID = 14
      ParentID = -1
      Index = 14
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow14: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1054#1090#1086#1087#1083#1077#1085#1080#1077
      ID = 15
      ParentID = -1
      Index = 15
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow15: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1055#1088#1077#1076#1077#1083#1099' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081
      ID = 16
      ParentID = -1
      Index = 16
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow16: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1085#1077#1089#1091#1097#1080#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' '#1079#1076#1072#1085#1080#1103', '#1085#1077' '#1084#1077#1085#1077#1077
      ID = 17
      ParentID = -1
      Index = 17
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow17: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1085#1072#1088#1091#1078#1085#1099#1077' '#1085#1077' '#1085#1077#1089#1091#1097#1080#1077' '#1089#1090#1077#1085#1099', '#1085#1077' '#1084#1077#1085#1077#1077
      ID = 18
      ParentID = -1
      Index = 18
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow18: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1087#1077#1088#1077#1082#1088#1099#1090#1080#1103' '#1084#1077#1078#1076#1091#1101#1090#1072#1078#1085#1099#1077', '#1085#1077' '#1084#1077#1085#1077#1077
      ID = 19
      ParentID = -1
      Index = 19
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow19: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1074#1085#1091#1090#1088#1077#1085#1085#1080#1077' '#1089#1090#1077#1085#1099' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
      ID = 20
      ParentID = -1
      Index = 20
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow20: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1084#1072#1088#1096#1080' '#1080' '#1087#1083#1086#1097#1072#1076#1082#1080' '#1083#1077#1089#1090#1085#1080#1094' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082', '#1085#1077' '#1084#1077#1085#1077#1077
      ID = 21
      ParentID = -1
      Index = 21
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1C: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'C'#1090#1077#1087#1077#1085#1100' '#1086#1075#1085#1077#1089#1090#1086#1081#1082#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103
      ID = 22
      ParentID = -1
      Index = 22
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow21: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1089#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1093' '#1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1081
      ID = 23
      ParentID = -1
      Index = 23
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow22: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1085#1077#1089#1091#1097#1080#1077' '#1089#1090#1077#1088#1078#1085#1077#1074#1099#1077' '#1101#1083#1077#1084#1077#1085#1090#1099' ('#1082#1086#1083#1086#1085#1085#1099', '#1088#1080#1075#1077#1083#1080', '#1092#1077#1088#1084#1099')'
      ID = 24
      ParentID = -1
      Index = 24
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow23: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1085#1072#1088#1091#1078#1085#1099#1077' '#1089#1090#1077#1085#1099' '#1089' '#1074#1085#1077#1096#1085#1077#1081' '#1089#1090#1086#1088#1086#1085#1099
      ID = 25
      ParentID = -1
      Index = 25
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow24: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1089#1090#1077#1085#1099', '#1087#1077#1088#1077#1075#1086#1088#1086#1076#1082#1080' '#1080' '#1073#1077#1089#1095#1077#1088#1076#1072#1095#1085#1099#1077' '#1087#1077#1088#1077#1082#1088#1099#1090#1080#1103
      ID = 26
      ParentID = -1
      Index = 26
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow25: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1089#1090#1077#1085#1099' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1086#1082' '#1080' '#1087#1088#1086#1090#1080#1074#1086#1087#1086#1078#1072#1088#1085#1099#1077' '#1087#1088#1077#1075#1088#1072#1076#1099
      ID = 27
      ParentID = -1
      Index = 27
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow26: TcxDBEditorRow
      Properties.DataBinding.FieldName = '- '#1084#1072#1088#1096#1080' '#1080' '#1087#1083#1086#1097#1072#1076#1082#1080' '#1083#1077#1089#1090#1085#1080#1094' '#1074' '#1083#1077#1089#1090#1085#1080#1095#1085#1099#1093' '#1082#1083#1077#1090#1082#1072#1093
      ID = 28
      ParentID = -1
      Index = 28
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow27: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1050#1083#1072#1089#1089' '#1082#1086#1085#1089#1090#1088#1091#1082#1090#1080#1074#1085#1086#1081' '#1087#1086#1078#1072#1088#1085#1086#1081' '#1086#1087#1072#1089#1085#1086#1089#1090#1080' '#1079#1076#1072#1085#1080#1103
      ID = 29
      ParentID = -1
      Index = 29
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow28: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1075#1086#1076
      ID = 30
      ParentID = -1
      Index = 30
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1rtf: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'rtf'
      Visible = False
      ID = 31
      ParentID = -1
      Index = 31
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1sootvet: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'sootvet'
      Visible = False
      ID = 32
      ParentID = -1
      Index = 32
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow29: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1075#1086#1076' '#1087#1086#1078#1072#1088#1072
      Visible = False
      ID = 33
      ParentID = -1
      Index = 33
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow30: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1091#1097#1077#1088#1073' '#1086#1090' '#1087#1086#1078#1072#1088#1072
      Visible = False
      ID = 34
      ParentID = -1
      Index = 34
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow31: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1087#1086#1075#1080#1073#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
      Visible = False
      ID = 35
      ParentID = -1
      Index = 35
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow32: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1087#1086#1089#1090#1088#1072#1076#1072#1083#1086' '#1087#1088#1080' '#1087#1086#1078#1072#1088#1077
      Visible = False
      ID = 36
      ParentID = -1
      Index = 36
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1Region: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'Region'
      Visible = False
      ID = 37
      ParentID = -1
      Index = 37
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow33: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1085#1086#1084#1077#1088' '#1057#1069#1059
      Visible = False
      ID = 38
      ParentID = -1
      Index = 38
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1DBEditorRow34: TcxDBEditorRow
      Properties.DataBinding.FieldName = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1057#1069#1059
      Visible = False
      ID = 39
      ParentID = -1
      Index = 39
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1PprT: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'PprT'
      Visible = False
      ID = 40
      ParentID = -1
      Index = 40
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1ZT: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'ZT'
      Visible = False
      ID = 41
      ParentID = -1
      Index = 41
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1Et: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'Et'
      Visible = False
      ID = 42
      ParentID = -1
      Index = 42
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1P1: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'P1'
      Visible = False
      ID = 43
      ParentID = -1
      Index = 43
      Version = 1
    end
    object cxdbdtrwcxdbvrtclgrd1P2: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'P2'
      Visible = False
      ID = 44
      ParentID = -1
      Index = 44
      Version = 1
    end
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxprprtstr1'
    Left = 700
    Top = 20
  end
end
