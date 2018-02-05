//{$DEFINE DUNIT_CONSOLE_MODE}

program TestProject;

uses
  ExceptionLog,
  SysUtils,
  TestFramework,
  TestExtensions,
  GUITestRunner,
  TextTestRunner,
  TestUnit in 'TestUnit.pas';

{$IFDEF DUNIT_CONSOLE_MODE}
  {$APPTYPE CONSOLE}
{$ELSE}
  {$R *.RES}
{$ENDIF}

begin
{$IFDEF DUNIT_CONSOLE_MODE}
  if not FindCmdLineSwitch('Graphic', ['-','/'], True) then
    TextTestRunner.RunRegisteredTests(rxbHaltOnFailures)
  else
{$ENDIF}
    GUITestRunner.RunRegisteredTests;
end.
