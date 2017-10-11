unit DBDemoMainUnit;

interface

{$I cxVer.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, DemoBasicMain, cxStyles, cxGraphics, cxEdit,
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
      mdEventsFile :string;
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
  tmpStr :string;



begin
  inherited;
    ADate := Scheduler.SelectedDays[0];
    ADate := Now;
    ADate := Date;
    AMode := vmMonth	;
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
  mdEventsFile :=  dm.Data_Source + 'cxSchedulerEvents.dat';

  if ( FileExists(mdEventsFile)) then  begin
     mdEvents.LoadFromBinaryFile(mdEventsFile);
     mdEvents.Open;
  end
  else begin
     MessageDlg('Не определен  mdEventsFile: ' +mdEventsFile, mtWarning, [mbOK], 0);
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
end;

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
    (MessageDlg('Do you want to delete previously created events?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
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
    AMode := vmMonth	;
    AnchorDate := Scheduler.SelectedDays[0];
    Scheduler.SelectDays([ADate - 10, ADate, ADate + 10], True);
    Scheduler.GoToDate(ADate, AMode);
end;

procedure TDBDemoMainForm.ViewModeClick(Sender: TObject);
begin
  inherited;
end;

//-
procedure DBDemoMainForm_Show;
begin
  if (DBDemoMainForm = nil) then
    Application.CreateForm(TDBDemoMainForm, DBDemoMainForm);
  DBDemoMainForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;

end.
