unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerAgendaView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor,
  cxSchedulerTreeListBrowser, cxClasses,
  cxSchedulerDialogs, Unit1, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, dxmdaset, cxSchedulerDBStorage, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDBLookupComboBox, Menus, DB, Classes, Controls, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxSchedulerPainter, dxSkinscxPCPainter;

type
  TForm3 = class(TForm)
    cxScheduler1: TcxScheduler;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1ActualFinish: TcxGridDBColumn;
    cxGrid1DBTableView1ActualStart: TcxGridDBColumn;
    cxGrid1DBTableView1Caption: TcxGridDBColumn;
    cxGrid1DBTableView1Start: TcxGridDBColumn;
    cxGrid1DBTableView1Finish: TcxGridDBColumn;
    cxGrid1DBTableView1EventType: TcxGridDBColumn;
    cxGrid1DBTableView1LabelColor: TcxGridDBColumn;
    cxGrid1DBTableView1Location: TcxGridDBColumn;
    cxGrid1DBTableView1Message: TcxGridDBColumn;
    cxGrid1DBTableView1Options: TcxGridDBColumn;
    cxGrid1DBTableView1State: TcxGridDBColumn;
    cxGrid1DBTableView1ResourceID: TcxGridDBColumn;
    cxGrid1DBTableView1ParentID: TcxGridDBColumn;
    cxGrid1DBTableView1RecurrenceIndex: TcxGridDBColumn;
    cxGrid1DBTableView1RecurrenceInfo: TcxGridDBColumn;
    cxGrid1DBTableView1ReminderDate: TcxGridDBColumn;
    cxGrid1DBTableView1ReminderMinutesBeforeStart: TcxGridDBColumn;
    cxGrid1DBTableView1ReminderResourcesData: TcxGridDBColumn;
    cxGrid1DBTableView1TaskCompleteField: TcxGridDBColumn;
    cxGrid1DBTableView1TaskIndexField: TcxGridDBColumn;
    cxGrid1DBTableView1TaskLinksField: TcxGridDBColumn;
    cxGrid1DBTableView1TaskStatusField: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    mdEvents: TdxMemData;
    mdEventsActualFinish: TIntegerField;
    mdEventsActualStart: TIntegerField;
    mdEventsCaption: TStringField;
    mdEventsEventType: TIntegerField;
    mdEventsFinish: TDateTimeField;
    mdEventsLabelColor: TIntegerField;
    mdEventsLocation: TStringField;
    mdEventsMessage: TStringField;
    mdEventsOptions: TIntegerField;
    mdEventsParentID: TIntegerField;
    mdEventsRecurrenceIndex: TIntegerField;
    mdEventsRecurrenceInfo: TBlobField;
    mdEventsReminderDate: TDateTimeField;
    mdEventsReminderMinutesBeforeStart: TIntegerField;
    mdEventsReminderResourcesData: TBlobField;
    mdEventsResourceID: TBlobField;
    mdEventsStart: TDateTimeField;
    mdEventsState: TIntegerField;
    mdEventsTaskCompleteField: TIntegerField;
    mdEventsTaskIndexField: TIntegerField;
    mdEventsTaskLinksField: TBlobField;
    mdEventsTaskStatusField: TIntegerField;
    mdEventsGroupID: TIntegerField;
    DataSource1: TDataSource;
    mdEventsCustomField_Value: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

initialization
  cxEventEditorClass := TcxSchedulerEventEditorForm1;

end.
