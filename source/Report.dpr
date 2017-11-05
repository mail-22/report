program Report;
{$WARNINGS OFF}
{$WARN UNIT_PLATFORM OFF}

uses
  ExceptionLog,
  Forms,
  DMUnit in 'dmunit.pas' {DM: TDataModule},
  CommonUnit in 'CommonUnit.pas' {Common: TDataModule},
  MainUnit in 'MainUnit.pas' {FormMain},
  Unit_BaseForm in 'Unit_BaseForm.pas' {BaseForm},
  FormRTFUnit in 'FormRTFUnit.pas' {FormRTF},
  FormJPGUnit in 'FormJPGUnit.pas' {FormJPG},
  FormTuningUnit in 'FormTuningUnit.pas' {FormTuning},
  ABOUT in 'ABOUT.PAS' {AboutForm},
  UBusyRtl in 'BusyDetect\UBusyrtl.pas',
  WordUnit in 'WordUnit.pas' {WordForm},
  LexUnit in 'LexUnit.pas' {Form1},
  W3Unit in 'W3Unit.pas' {Form2},
  GridFormUnit in 'GridFormUnit.pas' {GridForm},
  Unit2 in 'Unit2.pas' {BaseForm2},
  EditFormUnit in 'EditFormUnit.pas' {EditForm},
  EditForm2Unit in 'EditForm2Unit.pas' {EditForm2},
  SelDepUnit in 'SelDepUnit.pas' {SelDepForm},
  LogicUnit in 'LogicUnit.pas' {LogicForm},
  EditGridJpgFormUnit in 'EditGridJpgFormUnit.pas' {EditGridJpgForm},
  EditGridOleFormUnit in 'EditGridOleFormUnit.pas' {EditGridJOleForm},
  DBOleContainer in 'DBOleContainer.pas',
  EditEmplFormUnit in 'EditEmplFormUnit.pas' {EditEmplForm},
  SpisokUnit in 'SpisokUnit.pas' {SpisokForm},
  ExportXLSFormUnit in 'ExportXLSFormUnit.pas' {ExportXLSForm},
  FileUnit in 'FileUnit.pas',
  DisplayLabel in 'DisplayLabel.pas',
  MailFormUnit in 'MailFormUnit.pas' {MailForm},
  MailEditFormUnit in 'MailEditFormUnit.pas' {MailEditForm},
  SystemDirs in 'SystemDirs.pas',
  VCLFixPack in 'VCLFixPack.pas',
  NirFormUnit in 'NirFormUnit.pas' {NirForm},
  NirEditFormUnit in 'NirEditFormUnit.pas' {NirEditForm},
  DBDemoMainUnit in 'DBDemoMainUnit.pas' {DBDemoMainForm},
  DemoBasicMain in 'DemoBasicMain.pas' {DemoBasicMainForm};

{$R *.res}

begin
  Application.Initialize;

  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TCommon, Common);
  Application.CreateForm(TDM, DM);
  //Application.CreateForm(TDemoBasicMainForm, DemoBasicMainForm);
  Application.Run;
end.

