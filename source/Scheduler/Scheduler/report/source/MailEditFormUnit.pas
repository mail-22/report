unit MailEditFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, dxSkinsCore,
  dxSkinOffice2007Blue, cxVGrid, cxDBVGrid, cxInplaceContainer, ToolWin,
  ActnMan, ActnCtrls, StdCtrls, ExtCtrls;

type
  TMailEditForm = class(TBaseForm)
    pnlMain: TPanel;
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    mmo1: TMemo;
    acttb2: TActionToolBar;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1department: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DepartL: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1basis: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1basis_ffile: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_name: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_number: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1deadline: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1costofwork: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1responsible: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1invoice: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1invoice_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1payment_note: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1payment_date: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1performance_of_work_note: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1performance_of_work_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1performance_of_work_date: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1act_acceptance: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1act_acceptance_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_execution_note: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_execution_file: TcxDBEditorRow;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure MailEditForm_Show;
  
var
  MailEditForm: TMailEditForm;
  AddBildFormResult :Integer;

implementation

uses EditFormUnit;

{$R *.dfm}

procedure TMailEditForm.btnCancelClick(Sender: TObject);
begin
  inherited;
  AddBildFormResult :=-1;
  MailEditForm.Close;
end;

procedure TMailEditForm.btnOKClick(Sender: TObject);
begin
  inherited;
  AddBildFormResult := +1;
  MailEditForm.Close;
end;

procedure MailEditForm_Show;
begin
  if (MailEditForm = nil) then
     Application.CreateForm(TMailEditForm, MailEditForm);
  MailEditForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;


end.
