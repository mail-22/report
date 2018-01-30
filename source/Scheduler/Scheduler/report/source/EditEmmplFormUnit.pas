unit EditEmmplFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxDBLookupComboBox, JvExControls, JvLabel,
  JvDBControls, cxNavigator, cxDBNavigator, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxVGrid, cxDBVGrid, cxInplaceContainer,
  StdCtrls, ExtCtrls, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement
  ,dmunit, cxSplitter
  ;

type
  TEditEmmplForm = class(TBaseForm)
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    ds1: TDataSource;
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1depart: TcxDBEditorRow;
    cxgrd2: TcxGrid;
    cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid2Level1: TcxGridLevel;
    cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1depart: TcxGridDBColumn;
    cxspltr1: TcxSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


procedure EditEmmplForm_Show;

var
  EditEmmplForm: TEditEmmplForm;

implementation

{$R *.dfm}

//- Редактирование наименований department
procedure EditEmmplForm_Show;
begin
  if (EditEmmplForm = nil) then
    Application.CreateForm(TEditEmmplForm, EditEmmplForm);
  EditEmmplForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;

end.
