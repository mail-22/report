unit EditEmplFormUnit;

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
  TEditEmplForm = class(TBaseForm)
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    dsEmpl: TDataSource;
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    cxgrd2: TcxGrid;
    cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid2Level1: TcxGridLevel;
    cxspltr1: TcxSplitter;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1id_depart: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow;
    cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1id_depart: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1DBColumn: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


procedure EditEmplForm_Show;

var
  EditEmplForm: TEditEmplForm;

implementation

{$R *.dfm}

//- Редактирование наименований department
procedure EditEmplForm_Show;
begin
  if (EditEmplForm = nil) then
    Application.CreateForm(TEditEmplForm, EditEmplForm);
  EditEmplForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;

end.
