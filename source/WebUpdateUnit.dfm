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
      'Press start to start checking for available application updates ' +
      '...'
    StartButton = 'Start'
    NextButton = 'Next'
    ExitButton = 'Exit'
    RestartButton = 'Restart'
    CancelButton = 'Cancel'
    FailedDownload = 'Failed to download updates'
    GetUpdateButton = 'Get update'
    NewVersionFound = 'New version found'
    NewVersion = 'New version'
    NoNewVersionAvail = 'No new version available.'
    NewVersionAvail = 'New version available.'
    CurrentVersion = 'Current version'
    NoFilesFound = 'No files found for update'
    NoUpdateOnServer = 'no update found on server ...'
    CannotConnect = 'Could not connect to update server or'
    WhatsNew = 'What'#39's new'
    License = 'License agreement'
    AcceptLicense = 'I accept'
    NotAcceptLicense = 'I do not accept'
    ComponentsAvail = 'Available application components'
    DownloadingFiles = 'Downloading files'
    CurrentProgress = 'Current file progress'
    TotalProgress = 'Total file progress'
    UpdateComplete = 'Update completed ...'
    RestartInfo = 'Press restart to start the updated application.'
    WhatsNewPopup = 'View in Notepad'
    LicensePopup = 'View in Notepad'
    Left = 280
    Top = 420
  end
end
