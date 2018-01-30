unit NirEditFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, dxSkinsCore,
  dxSkinOffice2007Blue, cxVGrid, cxDBVGrid, cxInplaceContainer, ToolWin,
  ActnMan, ActnCtrls, StdCtrls, ExtCtrls;

type
  TNirEditForm = class(TBaseForm)
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
    cxdbdtrwcxdbvrtclgrd1deadline: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1responsible: TcxDBEditorRow;
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

procedure NirEditForm_Show;
  
var
  NirEditForm: TNirEditForm;
  AddBildFormResult :Integer;

implementation

uses EditFormUnit;

{$R *.dfm}

procedure TNirEditForm.btnCancelClick(Sender: TObject);
begin
  inherited;
  AddBildFormResult :=-1;
  NirEditForm.Close;
end;

procedure TNirEditForm.btnOKClick(Sender: TObject);
begin
  inherited;
  AddBildFormResult := +1;
  NirEditForm.Close;
end;

procedure NirEditForm_Show;
begin
  if (NirEditForm = nil) then
     Application.CreateForm(TNirEditForm, NirEditForm);
  NirEditForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;


end.
