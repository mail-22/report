inherited cxSchedulerEventEditorForm1: TcxSchedulerEventEditorForm1
  Left = 669
  Top = 385
  Caption = 'cxSchedulerEventEditorForm1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited cxGroupBox1: TcxGroupBox
      Width = 296
    end
    inherited teSubject: TcxTextEdit
      Width = 345
    end
    inherited teLocation: TcxTextEdit
      Top = 133
      TabOrder = 4
      Width = 184
    end
    inherited icbLabel: TcxImageComboBox
      Top = 133
      TabOrder = 5
    end
    inherited deStart: TcxDateEdit
      Top = 170
      TabOrder = 6
    end
    inherited teStart: TcxTimeEdit
      Top = 170
      TabOrder = 7
    end
    inherited cbAllDayEvent: TcxCheckBox
      Top = 170
      TabOrder = 8
    end
    inherited deEnd: TcxDateEdit
      Top = 195
      TabOrder = 9
    end
    inherited teEnd: TcxTimeEdit
      Top = 195
      TabOrder = 10
    end
    inherited seTaskComplete: TcxSpinEdit
      Top = 232
      TabOrder = 11
    end
    inherited cbxTaskStatus: TcxComboBox
      Top = 232
      TabOrder = 12
    end
    inherited lbRecurrencePattern: TcxLabel
      Top = 269
      Width = 345
    end
    inherited cbResources: TcxCheckComboBox
      Top = 289
      TabOrder = 14
      Width = 345
    end
    inherited cbReminder: TcxCheckBox
      Top = 326
      TabOrder = 15
    end
    inherited cbReminderMinutesBeforeStart: TcxComboBox
      Top = 326
      TabOrder = 16
    end
    inherited icbShowTimeAs: TcxImageComboBox
      Top = 326
      TabOrder = 17
      Width = 147
    end
    inherited meMessage: TcxMemo
      Top = 365
      TabOrder = 18
      Height = 71
      Width = 422
    end
    inherited btnOk: TcxButton
      TabOrder = 19
    end
    inherited btnCancel: TcxButton
      TabOrder = 20
    end
    inherited btnDelete: TcxButton
      TabOrder = 21
    end
    inherited btnRecurrence: TcxButton
      TabOrder = 22
    end
    object Edit1: TEdit [22]
      Left = 10000
      Top = 10000
      Width = 121
      Height = 17
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 26
      Text = 'Test Editor'
      Visible = False
    end
    object cxLookupComboBox1: TcxLookupComboBox [23]
      Left = 92
      Top = 94
      Properties.KeyFieldNames = 'Value'
      Properties.ListColumns = <
        item
          FieldName = 'Value_Description'
        end>
      Properties.ListSource = DataSource3
      Properties.OnChange = cxLookupComboBox1PropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Width = 328
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
      Index = -1
    end
    inherited dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Index = 1
    end
    inherited pnlInformation: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 0
      AutoCreated = True
    end
    inherited dxLayoutItem2: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 1
    end
    inherited pnlCaption: TdxLayoutGroup
      ItemIndex = 1
      Index = 1
    end
    inherited lbSubject: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Index = 2
      AutoCreated = True
    end
    inherited lbLocation: TdxLayoutItem
      Index = 0
    end
    inherited lbLabel: TdxLayoutItem
      Index = 1
    end
    inherited pnlTime: TdxLayoutGroup
      Index = 2
    end
    inherited dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Index = 1
      AutoCreated = True
    end
    inherited lbStartTime: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutItem3: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutItem4: TdxLayoutItem
      Index = 2
    end
    inherited dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Index = 2
      AutoCreated = True
    end
    inherited lbEndTime: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutItem5: TdxLayoutItem
      Index = 1
    end
    inherited pnlTaskComplete: TdxLayoutGroup
      Index = 3
    end
    inherited dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Index = 1
      AutoCreated = True
    end
    inherited lbTaskComplete: TdxLayoutItem
      Index = 0
    end
    inherited lbTaskStatus: TdxLayoutItem
      Index = 1
    end
    inherited pnlRecurrenceInfo: TdxLayoutGroup
      Index = 4
    end
    inherited dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Index = 0
    end
    inherited lbRecurrence: TdxLayoutItem
      Index = 1
    end
    inherited pnlResource: TdxLayoutGroup
      Index = 5
    end
    inherited lbResource: TdxLayoutItem
      Index = 0
    end
    inherited pnlPlaceHolder: TdxLayoutGroup
      Index = 6
    end
    inherited dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Index = 1
      AutoCreated = True
    end
    inherited pnlReminder: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutItem6: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutItem7: TdxLayoutItem
      Index = 1
    end
    inherited pnlShowTimeAs: TdxLayoutGroup
      Index = 1
    end
    inherited lbShowTimeAs: TdxLayoutItem
      Index = 0
    end
    inherited pnlMessage: TdxLayoutGroup
      Index = 7
    end
    inherited dxLayoutSeparatorItem6: TdxLayoutSeparatorItem
      Index = 0
    end
    inherited dxLayoutItem8: TdxLayoutItem
      Index = 1
    end
    inherited pnlThreeButtons: TdxLayoutGroup
      Index = 0
    end
    inherited dxLayoutItem11: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutItem9: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutItem10: TdxLayoutItem
      Index = 2
    end
    inherited pnlRecurrence: TdxLayoutItem
      Index = 1
    end
    inherited pnlButtons: TdxLayoutGroup
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = pnlCaption
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      CaptionOptions.Text = 'Edit1'
      Control = Edit1
      Index = -1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Custom Field:'
      Control = cxLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object DataSource3: TDataSource
    DataSet = dxMemData2
    Left = 248
    Top = 80
  end
  object dxMemData2: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F02000000040000000300060056616C756500140000
      000100120056616C75655F4465736372697074696F6E00010100000001030000
      004F6E650102000000010300000054776F010300000001050000005468726565}
    SortOptions = []
    Left = 296
    Top = 80
    object dxMemData2Value: TIntegerField
      FieldName = 'Value'
    end
    object dxMemData2Value_Description: TStringField
      FieldName = 'Value_Description'
    end
  end
end
