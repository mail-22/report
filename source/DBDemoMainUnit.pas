unit DBDemoMainUnit;

interface

{$I cxVer.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, DemoBasicMain, cxStyles, cxGraphics,
    cxEdit,
  cxScheduler, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, DB, cxSchedulerStorage,
  cxSchedulerDBStorage, DBTables, cxLookAndFeels, Menus, StdCtrls,
  ExtCtrls, cxControls, ComCtrls, cxSchedulerWeekView, Math,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerYearView,
  cxLookAndFeelPainters, cxContainer, cxCheckBox, cxButtons,
  cxSchedulerHolidays, cxSchedulerGanttView, cxGroupBox,
  cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxSchedulerPainter, cxClasses, dxmdaset;

type
  TDBDemoMainForm = class(TDemoBasicMainForm)
    cxButton1: TcxButton;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    SchedulerDataSource: TDataSource;
    mdEvents: TdxMemData;
    mdEventsID: TAutoIncField;
    mdEventsParentID: TIntegerField;
    mdEventsType: TIntegerField;
    mdEventsStart: TDateTimeField;
    mdEventsFinish: TDateTimeField;
    mdEventsOptions: TIntegerField;
    mdEventsCaption: TStringField;
    mdEventsRecurrenceIndex: TIntegerField;
    mdEventsRecurrenceInfo: TBlobField;
    mdEventsResourceID: TBlobField;
    mdEventsLocation: TStringField;
    mdEventsMessage: TStringField;
    mdEventsReminderDate: TDateTimeField;
    mdEventsReminderMinutes: TIntegerField;
    mdEventsState: TIntegerField;
    mdEventsLabelColor: TIntegerField;
    mdEventsActualStart: TDateTimeField;
    mdEventsActualFinish: TDateTimeField;
    mdEventsSyncIDField: TStringField;
    SchedulerDBStorage: TcxSchedulerDBStorage;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure chDataModeClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ViewModeClick(Sender: TObject);
  private
    FEventCount: Integer;
    FMaxID: Integer;
  protected
    ADate: TDateTime;
    AMode: TcxSchedulerViewMode;
  public
    mdEventsFile: string;
    procedure _EventCount;
  end;

procedure DBDemoMainForm_Show;
var
  DBDemoMainForm: TDBDemoMainForm;

implementation

uses
  dmunit;

{$R *.dfm}

procedure TDBDemoMainForm.FormCreate(Sender: TObject);
var
  I: Integer;
  tmpStr: string;

begin
  inherited;
  ADate := Scheduler.SelectedDays[0];
  ADate := Now;
  ADate := Date;
  AMode := vmMonth;
  AnchorDate := Scheduler.SelectedDays[0];
  Scheduler.SelectDays([ADate - 10, ADate, ADate + 10], True);
  Scheduler.GoToDate(ADate, AMode);
  //Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);

{
  mdEventsFile:= ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxSchedulerEvents' +'.ini';
  tmpStr :=  '_' + Self.Name+ '_' + 'mdEventsFile'+ '_';
  mdEventsFile :=  IncludeTrailingBackslash(GetApplicationDataFolder) + ExtractFileName(Application.ExeName)
  +'_Profile\' + cxSchedulerEvents.dat;
}
  mdEventsFile := dm.Data_Source + 'cxSchedulerEvents.dat';

  if (FileExists(mdEventsFile)) then
  begin
    mdEvents.LoadFromBinaryFile(mdEventsFile);
    mdEvents.Open;
  end
  else
  begin
    MessageDlg('Не определен  mdEventsFile: ' + mdEventsFile, mtWarning, [mbOK],
      0);
  end;

  //mdEvents.LoadFromBinaryFile('..\..\Data\cxSchedulerEvents.dat');
  mdEvents.Open;

  ADate := EncodeDate(2005, 9, 30);
  Scheduler.GotoDate(ADate);
  ADate := ADate + Scheduler.OptionsView.WorkStart;
  Scheduler.SelectTime(ADate, ADate, nil);
  FMaxID := 0;
  FEventCount := SchedulerDBStorage.EventCount;
  for I := 0 to FEventCount - 1 do
    FMaxID := Max(FMaxID, SchedulerDBStorage.Events[I].ID);

   ComboBox1.Items.Clear;
   for I := 0 to EventLabels.Count-1 do
     ComboBox1.Items.Add(EventLabels[i].Caption);
   EventLabels.Clear;
   EventLabels.Add(clRed,   'Просрочено');
   EventLabels.Add(clGreen, 'Выполнено');
   EventLabels.Add(clBlue,  'Выполняется');
   EventLabels.Add(clAqua,  'Выполняется');
end; //FormCreate

procedure TDBDemoMainForm.chDataModeClick(Sender: TObject);
begin
  SchedulerDBStorage.SmartRefresh := (Sender as TcxCheckBox).Checked;
end;

procedure TDBDemoMainForm.cxButton1Click(Sender: TObject);
begin
  MaxRandomPeriod := 720;
  GenerateRandomEvents(5000);
  MaxRandomPeriod := 180;
end;

procedure TDBDemoMainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I: Integer;
begin
  if (FEventCount < SchedulerDBStorage.EventCount) and
    (MessageDlg('Do you want to delete previously created events?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    SchedulerDBStorage.BeginUpdate;
    try
      I := 0;
      while I < SchedulerDBStorage.EventCount do
      begin
        if SchedulerDBStorage.Events[I].ID > FMaxID then
          SchedulerDBStorage.Events[I].Delete
        else
          Inc(I);
      end;
    finally
      SchedulerDBStorage.EndUpdate;
    end;
  end;
  mdEvents.SaveToBinaryFile(mdEventsFile);
end;

procedure TDBDemoMainForm.FormShow(Sender: TObject);
begin
  inherited;
  ADate := Scheduler.SelectedDays[0];
  ADate := Now;
  ADate := Date;
  AMode := vmMonth;
  AnchorDate := Scheduler.SelectedDays[0];
  Scheduler.SelectDays([ADate - 10, ADate, ADate + 10], True);
  Scheduler.GoToDate(ADate, AMode);

  _EventCount;
end;


procedure TDBDemoMainForm._EventCount;
var
  I: Integer;
  bRes: Boolean;
  dt: TDateTime;      deadline: TDateTime;  dt0 :TDateTime;
  cxSchedulerEvent: TcxSchedulerEvent;
  ID: Integer;
  OldColor : TColor;
begin
  //Exit;
  for I := 0 to SchedulerDBStorage.EventCount - 1 do
  begin
    cxSchedulerEvent := SchedulerDBStorage.Events[I];
    ID := cxSchedulerEvent.ID;
    bRes := DM.tblReport2.Locate('id', cxSchedulerEvent.ID, []);
    dt := DM.tblReport2performance_of_work_date.AsDateTime;
    deadline := DM.tblReport2deadline.AsDateTime;    dt0:= deadline;
    DM.tblReport2responsible.AsString;       DM.tblReport2responsible.AsString; DM.tblReport2.recNo; //test
    if ((dt = 0) OR (dt0 =0) ) then
    begin
      OldColor := cxSchedulerEvent.LabelColor;
      cxSchedulerEvent.LabelColor := clBlue;
      if (OldColor <> cxSchedulerEvent.LabelColor ) then
      begin
         cxSchedulerEvent.Post;
      end;
      continue; //
    end;
    if (dt < dt0) then
    begin
      OldColor := cxSchedulerEvent.LabelColor;
      cxSchedulerEvent.LabelColor := clGreen;
      if (OldColor <> cxSchedulerEvent.LabelColor ) then
      begin
         cxSchedulerEvent.Post;
      end;
    end;
    if (dt > dt0) then
    begin
      OldColor := cxSchedulerEvent.LabelColor;
      cxSchedulerEvent.LabelColor := clRed;
      if (OldColor <> cxSchedulerEvent.LabelColor ) then
      begin
         cxSchedulerEvent.Post;
      end;
    end;
    if (dt = dt0) then
    begin
      OldColor := cxSchedulerEvent.LabelColor;
      cxSchedulerEvent.LabelColor := clAqua;
      if (OldColor <> cxSchedulerEvent.LabelColor ) then
      begin
         cxSchedulerEvent.Post;
      end;
    end;
  end;
end;  //EventCount

procedure TDBDemoMainForm.ViewModeClick(Sender: TObject);
begin
  inherited;
end;

//-

procedure DBDemoMainForm_Show;
begin
  if (DBDemoMainForm = nil) then
    Application.CreateForm(TDBDemoMainForm, DBDemoMainForm);
  DBDemoMainForm.Show;
  //AddBildForm.WindowState := wsMaximized;
end;

end.

