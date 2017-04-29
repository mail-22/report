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
  ,dmunit, cxSplitter, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter
  ;

type
  TEditEmplForm = class(TBaseForm)
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    dsEmpl: TDataSource;
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    cxgrdDep: TcxGrid;
    cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid2Level1: TcxGridLevel;
    PanelTop: TPanel;
    mmoTop: TMemo;
    cxgrdEmpl: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1depart: TcxGridDBColumn;
    cxspltr1: TcxSplitter;
    cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1id_depart: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1surname: TcxGridDBColumn;
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
