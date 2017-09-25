inherited NirEditForm: TNirEditForm
  Left = 459
  Top = 317
  Caption = 'NirEditForm'
  PixelsPerInch = 96
  TextHeight = 17
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 792
    Height = 573
    Align = alClient
    Caption = 'pnlMain'
    TabOrder = 0
    object pnl1: TPanel
      Left = 1
      Top = 518
      Width = 790
      Height = 54
      Align = alBottom
      TabOrder = 0
      object btnOK: TButton
        Left = 52
        Top = 13
        Width = 98
        Height = 33
        Caption = 'Ok'
        TabOrder = 0
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 248
        Top = 13
        Width = 99
        Height = 33
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = btnCancelClick
      end
    end
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 790
      Height = 33
      Align = alTop
      Alignment = taCenter
      Lines.Strings = (
        #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1088#1072#1073#1086#1090#1077' '#1089' '#1053#1048#1056)
      TabOrder = 1
    end
    object acttb2: TActionToolBar
      Left = 1
      Top = 34
      Width = 790
      Height = 27
      Caption = 'acttb2'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
    object cxdbvrtclgrd1: TcxDBVerticalGrid
      Left = 1
      Top = 61
      Width = 790
      Height = 457
      Align = alClient
      DragCursor = crDrag
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times'
      Font.Style = []
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      OptionsView.GridLineColor = clBlue
      OptionsView.RowHeaderWidth = 383
      OptionsBehavior.RowSizing = True
      ParentFont = False
      TabOrder = 3
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
        Properties.DataBinding.FieldName = 'basis'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1basis_ffile: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'basis_ffile'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1contract_name: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'contract_name'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1contract_number: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'contract_number'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1contract_file: TcxDBEditorRow
        Properties.Caption = #1076#1086#1075#1086#1074#1086#1088'_file'
        Properties.DataBinding.FieldName = 'contract_file'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1deadline: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'deadline'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1costofwork: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'costofwork'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1responsible: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'responsible'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1invoice: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'invoice'
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1invoice_file: TcxDBEditorRow
        Properties.Caption = #1057#1095#1077#1090' '#1085#1072' '#1086#1087#1083#1072#1090#1091', '#1092#1072#1081#1083
        Properties.DataBinding.FieldName = 'invoice_file'
        ID = 12
        ParentID = -1
        Index = 12
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1payment_note: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'payment_note'
        ID = 13
        ParentID = -1
        Index = 13
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1payment_date: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'payment_date'
        ID = 14
        ParentID = -1
        Index = 14
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1performance_of_work_note: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'performance_of_work_note'
        ID = 15
        ParentID = -1
        Index = 15
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1performance_of_work_file: TcxDBEditorRow
        Properties.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1088#1072#1073#1086#1090#1099'  '#1092#1072#1081#1083
        Properties.DataBinding.FieldName = 'performance_of_work_file'
        ID = 16
        ParentID = -1
        Index = 16
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1performance_of_work_date: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'performance_of_work_date'
        ID = 17
        ParentID = -1
        Index = 17
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1act_acceptance: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'act_acceptance'
        ID = 18
        ParentID = -1
        Index = 18
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1act_acceptance_file: TcxDBEditorRow
        Properties.Caption = #1040#1082#1090' '#1089#1076#1072#1095#1080' '#1087#1088#1080#1077#1084#1082#1080' - '#1092#1072#1081#1083
        Properties.DataBinding.FieldName = 'act_acceptance_file'
        ID = 19
        ParentID = -1
        Index = 19
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1contract_execution_note: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'contract_execution_note'
        ID = 20
        ParentID = -1
        Index = 20
        Version = 1
      end
      object cxdbdtrwcxdbvrtclgrd1contract_execution_file: TcxDBEditorRow
        Properties.Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072' - '#1092#1072#1081#1083
        Properties.DataBinding.FieldName = 'contract_execution_file'
        ID = 21
        ParentID = -1
        Index = 21
        Version = 1
      end
    end
  end
end
