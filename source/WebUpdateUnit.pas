unit WebUpdateUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, WUpdateWiz, WUpdateLanguages, WUpdate;

type
  TWebUpdateForm = class(TBaseForm)
    WebUpdateWizard1: TWebUpdateWizard;
    WebUpdate1: TWebUpdate;
    WebUpdateWizardEnglish1: TWebUpdateWizardEnglish;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
     procedure Work;
  end;

  procedure WebUpdateForm_Show;
var
  WebUpdateForm: TWebUpdateForm;

implementation

{$R *.dfm}

procedure TWebUpdateForm.Work();
begin
{   //WebUpdate1.URL := 'D:\TEST_UpdateBuilder_To';     .
   if WebUpdate1.NewVersionAvailable then
   begin
     ShowMessage('A new version of this application is available !');
     WebUpdate1.DoUpdate(true);
   end;
}
   WebUpdate1.LogFileName := ExtractFilePath(Application.ExeName)+'\'+ 'WUPDATE.LOG';
{
   WebUpdate1.Connected;
   WebUpdate1.StartConnection;
 //WebUpdate1.GetControlFile;   // ???
   //WebUpdate1.DoVersionCheck;
   if WebUpdate1.NewVersionInfo > WebUpdate1.CurVersionInfo
   then WebUpdate1.DoUpdate;;
   //WebUpdate1.s
   WebUpdate1.StopConnection;
   //WebUpdate1.DoUpdate;
}
   WebUpdateWizard1.Execute(true);
   //WebUpdateForm.close;
end;

procedure WebUpdateForm_Show;
begin
  if (WebUpdateForm = nil) then
    Application.CreateForm(TWebUpdateForm, WebUpdateForm);
  //WebUpdateForm.ShowModal;
  WebUpdateForm.Work;
  WebUpdateForm.Close;
  FreeAndNil(WebUpdateForm);
end;


end.
