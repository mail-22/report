unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit_BaseForm, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, ImgList, StdActns,
  ActnList, XPStyleActnCtrls, ActnMan, JvAppHotKey, ToolWin, ActnCtrls,
  ActnMenus, JvExControls, JvStaticText, dxGDIPlusClasses, ExtCtrls,
  JvExExtCtrls, JvImage, UBusyRtl, cxPropertiesStore;

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
    cxprprtstr1: TcxPropertiesStore;
    acttb1: TActionToolBar;
    procedure AboutExecuteExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure actHELP2Execute(Sender: TObject);
    procedure actListOfBildingExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  FormHelp(Command: Word; Data: Integer; var CallHelp: Boolean): Boolean;
    procedure hlpcntnts3Execute(Sender: TObject);
    procedure hlpnhlp1Execute(Sender: TObject);
    procedure hlptpcsrch1Execute(Sender: TObject);
    procedure jvplctnhtky1HotKey(Sender: TObject);
    procedure jvstctxt3Click(Sender: TObject);
  private

  public
    procedure FormTuning_Show;
    procedure AddBildForm_Show;
  end;

procedure Help2;

var
  FormMain: TFormMain;
  strTmp: string;
  Detector: TBusyDetector;

implementation

uses
    FormTuningUnit,  CommonUnit,
   ABOUT, utility, WordUnit,  AddBildUnit, GridFormUnit;

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

  cxprprtstr1.StorageName := ExtractFilePath(Application.ExeName) + Self.Name +'.'+ 'cxprprtstr1.ini';
  if not FileExists(cxprprtstr1.StorageName) then begin
    cxprprtstr1.StoreTo(True);
  end
  else begin
    cxprprtstr1.RestoreFrom;
  end;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  sl: TStrings; { declare the list }
  sFileName: string; { }
begin
  //FormGrAll_Show;
  //OLAPForm_Show;
  //WordForm.ShowModale;

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

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxprprtstr1.StoreTo(True);
end;


procedure TFormMain.jvstctxt3Click(Sender: TObject);
begin
  inherited;
end;

///////////////////////////////////////////////////////////////////////////////

end.
