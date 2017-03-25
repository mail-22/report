inherited EditForm: TEditForm
  Left = 509
  Top = 185
  Height = 782
  Caption = 'EditForm'
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel [0]
    Left = 0
    Top = 703
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOK: TButton
      Left = 40
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 190
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object cxdbvrtclgrd1: TcxDBVerticalGrid [1]
    Left = 0
    Top = 25
    Width = 784
    Height = 678
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times'
    Font.Style = []
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    OptionsView.GridLineColor = clBlue
    OptionsView.RowHeaderWidth = 309
    OptionsBehavior.RowSizing = True
    ParentFont = False
    TabOrder = 1
    DataController.DataSource = DM.dsReport
    DataController.GridMode = True
    Version = 1
    object cxdbvrtclgrd1id: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'id'
      ID = 16
      ParentID = -1
      Index = 0
      Version = 1
    end
    object cxdbvrtclgrd1department: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'department'
      ID = 17
      ParentID = -1
      Index = 1
      Version = 1
    end
    object cxdbvrtclgrd1DepartL: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'DepartL'
      ID = 18
      ParentID = -1
      Index = 2
      Version = 1
    end
    object cxdbvrtclgrd1basis: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'basis'
      ID = 19
      ParentID = -1
      Index = 3
      Version = 1
    end
    object cxdbvrtclgrd1basis_ffile: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'basis_ffile'
      ID = 20
      ParentID = -1
      Index = 4
      Version = 1
    end
    object cxdbvrtclgrd1contract_name: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'contract_name'
      ID = 21
      ParentID = -1
      Index = 5
      Version = 1
    end
    object cxdbvrtclgrd1contract_number: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'contract_number'
      ID = 22
      ParentID = -1
      Index = 6
      Version = 1
    end
    object cxdbvrtclgrd1contract_file: TcxDBEditorRow
      Properties.Caption = #1076#1086#1075#1086#1074#1086#1088'_file'
      Properties.DataBinding.FieldName = 'contract_file'
      ID = 23
      ParentID = -1
      Index = 7
      Version = 1
    end
    object cxdbvrtclgrd1deadline: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'deadline'
      ID = 24
      ParentID = -1
      Index = 8
      Version = 1
    end
    object cxdbvrtclgrd1costofwork: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'costofwork'
      ID = 25
      ParentID = -1
      Index = 9
      Version = 1
    end
    object cxdbvrtclgrd1responsible: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'responsible'
      ID = 26
      ParentID = -1
      Index = 10
      Version = 1
    end
    object cxdbvrtclgrd1invoice: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'invoice'
      ID = 27
      ParentID = -1
      Index = 11
      Version = 1
    end
    object cxdbvrtclgrd1invoice_file: TcxDBEditorRow
      Properties.Caption = #1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091', '#1092#1072#1081#1083
      Properties.DataBinding.FieldName = 'invoice_file'
      ID = 28
      ParentID = -1
      Index = 12
      Version = 1
    end
    object cxdbvrtclgrd1payment_note: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'payment_note'
      ID = 29
      ParentID = -1
      Index = 13
      Version = 1
    end
    object cxdbvrtclgrd1payment_date: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'payment_date'
      ID = 30
      ParentID = -1
      Index = 14
      Version = 1
    end
    object cxdbvrtclgrd1performance_of_work_note: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'performance_of_work_note'
      ID = 31
      ParentID = -1
      Index = 15
      Version = 1
    end
    object cxdbvrtclgrd1performance_of_work_file: TcxDBEditorRow
      Properties.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099'  '#1092#1072#1081#1083
      Properties.DataBinding.FieldName = 'performance_of_work_file'
      ID = 32
      ParentID = -1
      Index = 16
      Version = 1
    end
    object cxdbvrtclgrd1performance_of_work_date: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'performance_of_work_date'
      ID = 33
      ParentID = -1
      Index = 17
      Version = 1
    end
    object cxdbvrtclgrd1act_acceptance: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'act_acceptance'
      ID = 34
      ParentID = -1
      Index = 18
      Version = 1
    end
    object cxdbvrtclgrd1act_acceptance_file: TcxDBEditorRow
      Properties.Caption = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080' - '#1092#1072#1081#1083
      Properties.DataBinding.FieldName = 'act_acceptance_file'
      ID = 35
      ParentID = -1
      Index = 19
      Version = 1
    end
    object cxdbvrtclgrd1contract_execution_note: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'contract_execution_note'
      ID = 36
      ParentID = -1
      Index = 20
      Version = 1
    end
    object cxdbvrtclgrd1contract_execution_file: TcxDBEditorRow
      Properties.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072' - '#1092#1072#1081#1083
      Properties.DataBinding.FieldName = 'contract_execution_file'
      ID = 37
      ParentID = -1
      Index = 21
      Version = 1
    end
  end
  object Memo1: TMemo [2]
    Left = 0
    Top = 0
    Width = 784
    Height = 25
    Align = alTop
    Alignment = taCenter
    Lines.Strings = (
      #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1085#1086#1081' '#1088#1072#1073#1086#1090#1077)
    TabOrder = 2
  end
  object cxprprtstr1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = 'cxprprtstr1'
    Left = 700
    Top = 20
  end
  object ds1: TDataSource
    Left = 314
    Top = 506
  end
end
