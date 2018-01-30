unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  IBCustomDataSet, IBQuery, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, Menus, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, dxSkinscxScheduler3Painter,
  cxSchedulerDBStorage, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ImgList, cxCalendar, cxTimeEdit, cxTextEdit, cxImageComboBox, cxMemo,
  cxCheckBox, cxColorComboBox, cxProgressBar, cxSchedulercxGridConnection,
  DBCtrls, dxSkinOffice2007Blue, cxNavigator, cxSchedulerRecurrence,
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor,
  dxSkinscxSchedulerPainter;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtnAddEvent: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DateTimeFrom: TDateTimePicker;
    DateTimeTo: TDateTimePicker;
    Label3: TLabel;
    EditCaption: TEdit;
    DateTimeDate: TDateTimePicker;
    DataSource1: TDataSource;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBQuery: TIBQuery;
    DataSourceEvent: TDataSource;
    IBDataSet1: TIBDataSet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    IBDataSetResourse: TIBDataSet;
    DataSourceResourse: TDataSource;
    BitBtnOn: TBitBtn;
    cxScheduler1: TcxScheduler;
    BitBtnOff: TBitBtn;
    BitBtnReload: TBitBtn;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DATE_CREATION: TcxGridDBColumn;
    cxGrid1DBTableView1TIME_START: TcxGridDBColumn;
    cxGrid1DBTableView1TIME_FINISH: TcxGridDBColumn;
    cxGrid1DBTableView1CAPTION: TcxGridDBColumn;
    cxGrid1DBTableView1RESOURSE_ID: TcxGridDBColumn;
    cxGrid1DBTableView1EVENTTYPE: TcxGridDBColumn;
    cxGrid1DBTableView1OPTIONS: TcxGridDBColumn;
    Label4: TLabel;
    DBLookupComboBoxResourse: TDBLookupComboBox;
    Label5: TLabel;
    procedure BitBtnOnClick(Sender: TObject);
    procedure BitBtnOffClick(Sender: TObject);
    procedure BitBtnAddEventClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnReloadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Math;

{$R *.dfm}



procedure TForm1.BitBtnOnClick(Sender: TObject);
begin
{Подключаем Базу}
IBDatabase1.Connected:= True;
{Активируем датасеты}
IBDataSet1.Active:= True;
IBDataSetResourse.Active:= True;
{Активиреум/Деактивируем кнопки}
BitBtnOn.Enabled:= False;
BitBtnOff.Enabled:= True;
BitBtnAddEvent.Enabled:= True;
BitBtnReload.Enabled:= True;
{Заполняем сразу поле ресурсом, хотя это и не обязательно}
DBLookupComboBoxResourse.KeyValue:= 1;
end;

procedure TForm1.BitBtnOffClick(Sender: TObject);
begin
{Активиреум/Деактивируем кнопки}
BitBtnOn.Enabled:= True;
BitBtnOff.Enabled:= False;
BitBtnAddEvent.Enabled:= False;
BitBtnReload.Enabled:= False;
{Отключаем Базу}
IBDatabase1.Connected:= False;
end;

procedure TForm1.BitBtnAddEventClick(Sender: TObject);
begin
{Запрос при помощи которого мы записываем данные}
IBQuery.SQL.Text:= 'Insert Into table_sheduler(date_creation,'
+ 'time_start, time_finish, caption, resourse_id, EventType, Options) '
+ 'values(:date_creation, :time_start, :time_finish, '
+ ':caption, :resourse_id, :EventType, :Options) ';
{Определяем передаваемые в запрос параметры}
IBQuery.ParamByName('date_creation').Value:= floor(DateTimeDate.Date);
IBQuery.ParamByName('time_start').Value:= DateTimeFrom.Time;
IBQuery.ParamByName('time_finish').Value:= DateTimeTo.Time;
IBQuery.ParamByName('caption').Value:= EditCaption.Text;
IBQuery.ParamByName('resourse_id').AsInteger:= DBLookupComboBoxResourse.KeyValue;
IBQuery.ParamByName('EventType').AsInteger:= 0;
IBQuery.ParamByName('Options').AsInteger:= 0;
{Выполняем запрос}
IBQuery.ExecSQL;
{Подтверждаем транзакцию}
IBTransaction1.Commit;
{Открываем датасеты после добавления данных}
IBDataSet1.Open;
IBDataSetResourse.Open;
{Очищаем поле Описание}
EditCaption.Clear;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
DateTimeDate.Date:= Now;
BitBtnOn.Enabled:= True;
BitBtnOff.Enabled:= False;
BitBtnAddEvent.Enabled:= False;
BitBtnReload.Enabled:= False
end;

procedure TForm1.BitBtnReloadClick(Sender: TObject);
begin
{Закрываем/Открываем датасеты после добавления данных}
IBDataSet1.Close;
IBDataSet1.Open;
IBDataSetResourse.Close;
IBDataSetResourse.Open;
end;

end.
