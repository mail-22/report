unit EditFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxVGrid, cxDBVGrid, DB,
  cxInplaceContainer, cxPropertiesStore, StdCtrls, ExtCtrls,
  cxDBLookupComboBox, cxMRUEdit, cxCalendar, dxSkinsCore,
  dxSkinOffice2007Blue, XPStyleActnCtrls, ActnList, ActnMan, ToolWin,
  ActnCtrls, GridFormUnit, cxCheckBox;

type
  TEditForm = class(TBaseForm)
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    cxprprtstr31: TcxPropertiesStore;
    ds1: TDataSource;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    Memo1: TMemo;
    cxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbvrtclgrd1department: TcxDBEditorRow;
    cxdbvrtclgrd1DepartL: TcxDBEditorRow;
    cxdbvrtclgrd1basis: TcxDBEditorRow;
    cxdbvrtclgrd1basis_ffile: TcxDBEditorRow;
    cxdbvrtclgrd1contract_name: TcxDBEditorRow;
    cxdbvrtclgrd1contract_number: TcxDBEditorRow;
    cxdbvrtclgrd1contract_file: TcxDBEditorRow;
    cxdbvrtclgrd1deadline: TcxDBEditorRow;
    cxdbvrtclgrd1costofwork: TcxDBEditorRow;
    cxdbvrtclgrd1responsible: TcxDBEditorRow;
    cxdbvrtclgrd1invoice: TcxDBEditorRow;
    cxdbvrtclgrd1invoice_file: TcxDBEditorRow;
    cxdbvrtclgrd1payment_note: TcxDBEditorRow;
    cxdbvrtclgrd1payment_date: TcxDBEditorRow;
    cxdbvrtclgrd1performance_of_work_note: TcxDBEditorRow;
    cxdbvrtclgrd1performance_of_work_file: TcxDBEditorRow;
    cxdbvrtclgrd1performance_of_work_date: TcxDBEditorRow;
    cxdbvrtclgrd1act_acceptance: TcxDBEditorRow;
    cxdbvrtclgrd1act_acceptance_file: TcxDBEditorRow;
    cxdbvrtclgrd1contract_execution_note: TcxDBEditorRow;
    cxdbvrtclgrd1contract_execution_file: TcxDBEditorRow;
    ActionManager1: TActionManager;
    acttb2: TActionToolBar;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    AddBildFormResult :Integer;
  end;

procedure EditForm_Show;

var
  EditForm: TEditForm;

implementation

{$R *.dfm}

procedure TEditForm.btnCancelClick(Sender: TObject);
begin
  inherited;

  AddBildFormResult :=-1;
  EditForm.Close;
end;

procedure TEditForm.btnOKClick(Sender: TObject);
begin
  inherited;
   AddBildFormResult := +1;
   EditForm.Close;
end;

procedure EditForm_Show;
begin
  if (EditForm = nil) then
    Application.CreateForm(TEditForm, EditForm);

     
  EditForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;

end.
