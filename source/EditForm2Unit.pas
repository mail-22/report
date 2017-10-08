unit EditForm2Unit;

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
  ,dmunit, cxSplitter, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter
  ;

type
  TEditForm2 = class(TBaseForm)
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
    cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


procedure EditForm2_Show;

var
  EditForm2: TEditForm2;

implementation

{$R *.dfm}

//- Редактирование наименований department
procedure EditForm2_Show;
begin
  if (EditForm2 = nil) then
    Application.CreateForm(TEditForm2, EditForm2);
  EditForm2.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;

end.
