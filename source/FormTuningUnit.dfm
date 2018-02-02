inherited FormTuning: TFormTuning
  Left = 297
  Top = 255
  Width = 640
  Height = 480
  Caption = 'tuning'
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object actmmb1: TActionMainMenuBar [0]
    Left = 0
    Top = 0
    Width = 632
    Height = 125
    UseSystemFont = False
    ActionManager = actmgr1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object btn1: TButton [1]
    Left = 5
    Top = 142
    Width = 171
    Height = 33
    Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    Visible = False
  end
  inherited jvfrmstrg1: TJvFormStorage
    Active = True
    Options = [fpState, fpSize, fpLocation]
    Left = 100
    Top = 250
  end
  inherited jvpnflstrg1: TJvAppIniFileStorage
    AutoFlush = True
    AutoReload = True
    Top = 170
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actConn
          end
          item
            Action = acBack
          end
          item
            Action = acTreb
          end
          item
            Action = act1
            Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1053#1045' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1084' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1103#1084' '#1085#1077' '#1086#1073#1098#1077#1082#1090#1077' '
          end
          item
            Action = actXLS
          end
          item
            Action = actImport
          end
          item
            Action = actFolder
            Caption = '&actFolder'
          end>
        ActionBar = actmmb1
      end>
    LinkedActionLists = <
      item
        ActionList = actlst1
        Caption = 'actlst1'
      end>
    Left = 264
    Top = 128
    StyleName = 'XP Style'
    object actConn: TAction
      Caption = #1085#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
      OnExecute = actConnExecute
    end
    object acBack: TAction
      Caption = #1089#1086#1079#1076#1072#1085#1080#1077' '#1073#1101#1082#1072#1087#1072' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      OnExecute = acBackExecute
    end
    object acTreb: TAction
      Caption = #1088#1072#1073#1086#1090#1072' '#1089' '#1087#1077#1088#1077#1095#1085#1077#1084' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081' '#1053#1044
    end
    object act1: TAction
      Caption = 'act1'
    end
    object actXLS: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1095#1077#1082#1083#1080#1089#1090#1072' '
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1096#1072#1073#1083#1086#1085#1072' '#1076#1083#1103' '#1095#1077#1082#1083#1080#1089#1090#1072' '
    end
    object actImport: TAction
      Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093
    end
    object actFolder: TAction
      Caption = 'actFolder'
      OnExecute = actFolderExecute
    end
  end
  object actlst1: TActionList
    Left = 340
    Top = 118
  end
  object cxprprtstr1: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Position'
          'Top'
          'Width'
          'WindowState')
      end>
    StorageName = 'cxprprtstr1'
    Left = 190
    Top = 200
  end
end
