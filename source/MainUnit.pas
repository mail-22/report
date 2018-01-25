unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit_BaseForm, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, ImgList, StdActns,
  ActnList, XPStyleActnCtrls, ActnMan, JvAppHotKey, ToolWin, ActnCtrls,
  ActnMenus, JvExControls, JvStaticText, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, UBusyRtl, cxPropertiesStore, cxClasses, DBCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinsdxStatusBarPainter, dxStatusBar,
  cxContainer, cxEdit, cxTextEdit, ComCtrls, AppEvnts, JvBalloonHint,
  JvExComCtrls, JvStatusBar, JvHint, WUpdateWiz, WUpdate, WUpdateLanguages;

type
  TFormMain = class(TBaseForm)
    il1: TImageList;
    actlst1: TActionList;
    hlpcntnts1: THelpContents;
    AboutExecute: TAction;
    hlpcntnts2: THelpContents;
    act1: THelpContextAction;
    actmgr1: TActionManager;
    hlpcntnts3: THelpContents;
    hlptpcsrch1: THelpTopicSearch;
    hlpnhlp1: THelpOnHelp;
    act2: THelpContextAction;
    jvplctnhtky1: TJvApplicationHotKey;
    actmmb1: TActionMainMenuBar;
    actHELP2: TAction;
    actTuning2: TAction;
    actListOfBilding: TAction;
    jvstctxt1: TJvStaticText;
    img1: TJvImage;
    jvstctxt2: TJvStaticText;
    jvstctxt3: TJvStaticText;
    jvstctxt4: TJvStaticText;
    jvstctxt5: TJvStaticText;
    actAbout: TAction;
    acttb1: TActionToolBar;
    cxprprtstr2: TcxPropertiesStore;
    actNir: TAction;
    actMail: TAction;
    actListOfDep: TAction;
    actListOfEmpl: TAction;
    pnlDep: TPanel;
    dblkcbbDEP: TDBLookupComboBox;
    dxstsbr1: TdxStatusBar;
    stat1: TStatusBar;
    cxTextEdit1: TcxTextEdit;
    aplctnvnts1: TApplicationEvents;
    jvstsbr1: TJvStatusBar;
    jvblnhnt1: TJvBalloonHint;
    jvhnt1: TJvHint;
    act3: TAction;
    actSpisok: TAction;
    Action1: TAction;
    WebUpdate1: TWebUpdate;
    WebUpdateWizard1: TWebUpdateWizard;
    WebUpdateWizardEnglish1: TWebUpdateWizardEnglish;
    procedure AboutExecuteExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actHELP2Execute(Sender: TObject);
    procedure actListOfBildingExecute(Sender: TObject);
    procedure actListOfDepExecute(Sender: TObject);
    procedure actListOfEmplExecute(Sender: TObject);
    procedure actMailExecute(Sender: TObject);
    procedure actNirExecute(Sender: TObject);
    procedure actSpisokExecute(Sender: TObject);
    procedure actTuning2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  FormHelp(Command: Word; Data: Integer; var CallHelp: Boolean): Boolean;
    procedure hlpcntnts3Execute(Sender: TObject);
    procedure hlpnhlp1Execute(Sender: TObject);
    procedure hlptpcsrch1Execute(Sender: TObject);
    procedure jvplctnhtky1HotKey(Sender: TObject);
    procedure jvstctxt3Click(Sender: TObject);
    procedure dblkcbbDEPCloseUp(Sender: TObject);
    procedure aplctnvnts1Hint(Sender: TObject);
  private
    procedure cxPropertiesStoreMethod(Sender: TObject);
    procedure EmplMethod;
    procedure TunMethod;
    procedure SpisokMethod;

  public
    procedure FormTuning_Show;
    procedure AddBildForm_Show;
  end;

procedure Help2;     
procedure DepMethod;
function GetVersion: string;

var
  FormMain: TFormMain;
  strTmp: string;
  Detector: TBusyDetector;

implementation

uses
    FormTuningUnit,  CommonUnit,
   ABOUT, utility, WordUnit,  AddBildUnit, GridFormUnit, MailFormUnit, SelDepUnit, EditForm2Unit, EditEmplFormUnit,
  DMUnit, DBDemoMainUnit, SpisokUnit, NirFormUnit;

{$R *.dfm}

procedure TFormMain.AboutExecuteExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(AboutForm) then
    Application.CreateForm(TAboutForm, AboutForm);
  //FormDBeditAct.ShowModale;
  AboutForm.ShowModal;
  FreeAndNil(AboutForm);
end;

procedure TFormMain.act1Execute(Sender: TObject);
begin
  inherited;
  Application.HelpContext(self.HelpContext);

  strTmp := ExtractFilePath(Application.ExeName) + 'example.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.act2Execute(Sender: TObject);
begin
  inherited;
  strTmp := ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.actHELP2Execute(Sender: TObject);
begin
  inherited;
  Help2;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Caption := Self.Caption + GetVersion;
    //Application.CreateForm(TForm3, Form3);
    //Form2.ShowModale;
    //Form3.ShowModale;
{
  Detector := TBusyDetector.Create(Self);
  with Detector do begin
    Interval := 100;
    Caption:=Application.Title;
    Text := 'Программа занята'#13#10'Подождите пожалуйста';
    Enabled:=true;
  end;
}

  (*TODO: extracted code
  cxprprtstr1.StorageName := ExtractFilePath(Application.ExeName) + Self.Name +'.'+ 'cxprprtstr1.ini';
  if not FileExists(cxprprtstr1.StorageName) then begin
    cxprprtstr1.StoreTo(True);
  end
  else begin
    cxprprtstr1.RestoreFrom;
  end;
  *)
  cxPropertiesStoreMethod(Sender);

   //WebUpdate1.URL := 'D:\TEST_UpdateBuilder_To';
   if WebUpdate1.NewVersionAvailable then
   begin
     ShowMessage('A new version of this application is available !');
     //WebUpdate1.DoUpdate(true);
   end;

   WebUpdate1.Connected;
   WebUpdate1.StartConnection;
   WebUpdate1.GetControlFile;
   WebUpdate1.DoVersionCheck;
   if WebUpdate1.NewVersionInfo > WebUpdate1.CurVersionInfo
   then WebUpdate1.DoUpdate;;
   //WebUpdate1.s
   WebUpdate1.StopConnection;
   WebUpdate1.DoUpdate;
   WebUpdateWizard1.Execute(true);
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  sl: TStrings; { declare the list }
  sFileName: string; { }
begin
  //FormGrAll_Show;
  //OLAPForm_Show;
  //WordForm.ShowModale;

  dm.Get_Dep;
  dblkcbbDEP.KeyValue := dblkcbbDEP.ListSource.DataSet.FieldByName(dblkcbbDEP.KeyField).Value;

  Exit;
  sl := TStringList.Create;
  GetLoadedModulesList(sl);
  sFileName := ExtractFilePath((Application.ExeName)) + 'bpl_list.bat';
  CreatePackagesCopier(sFileName);
end;


///////////////////////////////////////////////////////////////////////////////


procedure TFormMain.FormTuning_Show;
begin
  if (FormTuning = nil) then begin
    Application.CreateForm(TFormTuning, FormTuning);
    //FormTuning := TFormTuning.Create(FormMain);
    //FormTuning.Parent := FormMain;
    //FormTuning := TFormTuning.Create(Application);
  end;
  FormTuning.ShowModal;
  //FormTuning.Show;
  //FormTuning.WindowState := wsMaximized;
end;

procedure TFormMain.AddBildForm_Show;
begin
  if (AddBildForm = nil) then
    Application.CreateForm(TAddBildForm, AddBildForm);
  AddBildForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;


function TFormMain.FormHelp(Command: Word; Data: Integer; var CallHelp:
  Boolean): Boolean;
begin
  inherited;
  strTmp := ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.hlpcntnts3Execute(Sender: TObject);
begin
  inherited;
  strTmp := ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.hlpnhlp1Execute(Sender: TObject);
begin
  inherited;
  strTmp := ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.hlptpcsrch1Execute(Sender: TObject);
begin
  inherited;
  strTmp := ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.jvplctnhtky1HotKey(Sender: TObject);
begin
  inherited;
  Help2
end;

procedure Help2;
begin
  strTmp := ExtractFilePath(Application.ExeName) + 'help.doc';
  RunFile(strTmp, '');
end;

procedure TFormMain.actListOfBildingExecute(Sender: TObject);
begin
  inherited;
  GridForm_Show;
end;

procedure TFormMain.actListOfDepExecute(Sender: TObject);
begin
  inherited;
  DepMethod;
end;

procedure DepMethod;
begin
   EditForm2_Show;
end;

procedure TFormMain.act3Execute(Sender: TObject);
begin
  inherited;
  DBDemoMainForm_Show;
end;

procedure TFormMain.actAboutExecute(Sender: TObject);
begin
  inherited;
  AboutForm_Show;
end;

procedure TFormMain.actListOfEmplExecute(Sender: TObject);
begin
  inherited;
  EmplMethod;
end;

procedure TFormMain.EmplMethod;
begin
  EditEmplForm_Show;
end;

procedure TFormMain.actMailExecute(Sender: TObject);
begin
  inherited;
  MailForm_Show;
end;

procedure TFormMain.actNirExecute(Sender: TObject);
begin
  inherited;
  NirForm_Show;
end;

procedure TFormMain.actSpisokExecute(Sender: TObject);
begin
  inherited;
  SpisokMethod;
end;

procedure TFormMain.SpisokMethod;
begin
  SpisokForm_Show;
end;

procedure TFormMain.actTuning2Execute(Sender: TObject);
begin
  inherited;
  TunMethod;
end;

procedure TFormMain.TunMethod;
begin
    SelDepForm_Show;
end;

procedure TFormMain.cxPropertiesStoreMethod(Sender: TObject);
begin
  cxprprtstr2.active := false;
  cxprprtstr2.StorageName := ExtractFilePath(Application.ExeName) + Self.Name +'.'+ 'cxprprtstr2.ini';
  if not FileExists(cxprprtstr2.StorageName) then begin
    cxprprtstr2.StoreTo(True);
  end
  else begin
    cxprprtstr2.RestoreFrom;
  end;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxprprtstr2.StoreTo(True); // cxprprtstr1.StorageName
end;

procedure TFormMain.jvstctxt3Click(Sender: TObject);
begin
  inherited;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TFormMain.dblkcbbDEPCloseUp(Sender: TObject);
begin
  inherited;
  dm.Set_Dep;
end;

procedure TFormMain.aplctnvnts1Hint(Sender: TObject);
begin
  inherited;
  stat1.SimpleText := Application.Hint;
end;

function GetVersion: string;
var VerInfoSize: DWORD;
    VerInfo: Pointer;
    VerValueSize: DWORD;
    VerValue: PVSFixedFileInfo;
    Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;


end.
