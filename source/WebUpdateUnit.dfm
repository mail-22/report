inherited WebUpdateForm: TWebUpdateForm
  Left = 167
  Top = 217
  Caption = 'WebUpdateForm'
  PixelsPerInch = 96
  TextHeight = 17
  object WebUpdateWizard1: TWebUpdateWizard
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Language = WebUpdateWizardEnglish1
    WebUpdate = WebUpdate1
    Left = 168
    Top = 432
  end
  object WebUpdate1: TWebUpdate
    Agent = 'TWebUpdate'
    Authenticate = waAuto
    CertCheck = ccDisable
    DateFormat = 'dd/mm/yyyy'
    DateSeparator = '/'
    ExtractCAB = True
    FTPDirectory = 'REPORT'
    Host = 'ftp.gear.host'
    Logging = True
    LogFileName = 'WUPDATE.LOG'
    Password = 'WMhecowPhRtatcGQtckyw3SbkbL0fG98Pbuk7ZwthrjjwvN3nyiBRmcudvxl'
    PostUpdateInfo.Enabled = False
    ShowDownloadProgress = True
    Signature = 'WebUpdate'
    TempDirectory = '.'
    TimeFormat = 'hh:nn'
    TimeSeparator = ':'
    UpdateType = ftpUpdate
    URL = 'ftp://test2018%255C%2524test2018@ftp.gear.host/REPORT/REPORT.INF'
    UserID = 'test2018\$test2018'
    UseCRC32 = True
    UseWinTempDir = False
    Version = '2.2.0.1'
    Left = 64
    Top = 432
  end
  object WebUpdateWizardEnglish1: TWebUpdateWizardEnglish
    Welcome = 
      #1053#1072#1078#1084#1080#1090#1077' '#171#1057#1090#1072#1088#1090#187', '#1095#1090#1086#1073#1099' '#1085#1072#1095#1072#1090#1100' '#1087#1088#1086#1074#1077#1088#1082#1091' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1081' '#1087#1088#1080#1083 +
      #1086#1078#1077#1085#1080#1081' ...'
    StartButton = 'Start'
    NextButton = 'Next'
    ExitButton = 'Exit'
    RestartButton = #1055#1077#1088#1077#1079#1072#1087#1091#1089#1082
    CancelButton = 'Cancel'
    FailedDownload = #1053#1077' '#1091#1076#1072#1083#1086#1089#1100' '#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
    GetUpdateButton = #1055#1086#1083#1091#1095#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077
    NewVersionFound = #1053#1072#1081#1076#1077#1085#1072' '#1085#1086#1074#1072#1103' '#1074#1077#1088#1089#1080#1103
    NewVersion = #1053#1086#1074#1072#1103' '#1074#1077#1088#1089#1080#1103
    NoNewVersionAvail = #1053#1077#1090' '#1085#1086#1074#1086#1081' '#1074#1077#1088#1089#1080#1080'.'
    NewVersionAvail = #1044#1086#1089#1090#1091#1087#1085#1072' '#1085#1086#1074#1072#1103' '#1074#1077#1088#1089#1080#1103'.'
    CurrentVersion = #1090#1077#1082#1091#1097#1072#1103' '#1074#1077#1088#1089#1080#1103
    NoFilesFound = #1060#1072#1081#1083#1099' '#1085#1077' '#1085#1072#1081#1076#1077#1085#1099' '#1076#1083#1103' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
    NoUpdateOnServer = #1085#1072' '#1089#1077#1088#1074#1077#1088#1077' '#1085#1077#1090' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1081' ...'
    CannotConnect = #1053#1077' '#1091#1076#1072#1083#1086#1089#1100' '#1087#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103' '#1082' '#1089#1077#1088#1074#1077#1088#1091' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1081' '#1080#1083#1080
    WhatsNew = 'What'#39's new'
    License = #1051#1080#1094#1077#1085#1079#1080#1086#1085#1085#1086#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1077
    AcceptLicense = #1071' '#1089#1086#1075#1083#1072#1089#1077#1085
    NotAcceptLicense = #1103' '#1085#1077' '#1087#1088#1080#1085#1080#1084#1072#1102
    ComponentsAvail = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1099' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
    DownloadingFiles = #1047#1072#1075#1088#1091#1079#1082#1072' '#1092#1072#1081#1083#1086#1074
    CurrentProgress = #1058#1077#1082#1091#1097#1080#1081' '#1087#1088#1086#1075#1088#1077#1089#1089' '#1092#1072#1081#1083#1072
    TotalProgress = #1054#1073#1097#1080#1081' '#1087#1088#1086#1075#1088#1077#1089#1089' '#1092#1072#1081#1083#1072
    UpdateComplete = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1079#1072#1074#1077#1088#1096#1077#1085#1086' ...'
    RestartInfo = 
      #1053#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' '#1087#1077#1088#1077#1079#1072#1075#1088#1091#1079#1082#1080', '#1095#1090#1086#1073#1099' '#1079#1072#1087#1091#1089#1090#1080#1090#1100' '#1086#1073#1085#1086#1074#1083#1077#1085#1085#1086#1077' '#1087#1088#1080#1083#1086#1078#1077 +
      #1085#1080#1077'.'
    WhatsNewPopup = 'View in Notepad'
    LicensePopup = 'View in Notepad'
    Left = 280
    Top = 420
  end
end
