unit MailFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinsdxStatusBarPainter, cxStyles, cxEdit, cxMRUEdit, cxCheckBox,
  cxCalendar, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, JvExControls, JvLabel, JvDBControls,
  cxNavigator, cxDBNavigator, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxVGrid,
  cxDBVGrid, cxInplaceContainer, cxSplitter, ExtCtrls, StdCtrls, ToolWin,
  ActnMan, ActnCtrls, ActnMenus, dxStatusBar, XPStyleActnCtrls, ActnList,
  cxPropertiesStore,GridFormUnit, CommonUnit;

type
  TMailForm = class(TBaseForm)
    cxprprtstr1: TcxPropertiesStore;
    actmgr1: TActionManager;
    dxstsbr1: TdxStatusBar;
    actmmb1: TActionMainMenuBar;
    pnlGrid: TPanel;
    Label1: TLabel;
    pnlBBB: TPanel;
    cxspltr1: TcxSplitter;
    pnlR: TPanel;
    lbl3: TLabel;
    cxdbVertgrd2: TcxDBVerticalGrid;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1department: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DepartL: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1basis: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1basis_ffile: TcxDBEditorRow;
    cxctgryrwcxdbvrtclgrd1CategoryRow1: TcxCategoryRow;
    cxdbdtrwcxdbvrtclgrd1contract_execution_note: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_execution_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_number: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_name: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1deadline: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1act_acceptance: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1act_acceptance_file: TcxDBEditorRow;
    cxctgryrwcxdbvrtclgrd1CategoryRow2: TcxCategoryRow;
    cxdbdtrwcxdbvrtclgrd1payment_date: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1payment_note: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1costofwork: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1invoice: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1invoice_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1responsible: TcxDBEditorRow;
    cxctgryrwcxdbvrtclgrd1CategoryRow3: TcxCategoryRow;
    cxdbdtrwcxdbvrtclgrd1performance_of_work_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1performance_of_work_date: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1performance_of_work_note: TcxDBEditorRow;
    pnlL: TPanel;
    lbl1: TLabel;
    cxgrd2: TcxGrid;
    cxgrd22View: TcxGridDBTableView;
    cxgrd22Viewid: TcxGridDBColumn;
    cxgrd22Viewdepartment: TcxGridDBColumn;
    cxgrd22ViewDepartL: TcxGridDBColumn;
    cxgrd22Viewbasis: TcxGridDBColumn;
    cxgrd22Viewfile: TcxGridDBColumn;
    cxgrd22Viewcontract_name: TcxGridDBColumn;
    cxgrd22Viewcontract_number: TcxGridDBColumn;
    cxgrd22Viewcontract_file: TcxGridDBColumn;
    cxgrd22Viewdeadline: TcxGridDBColumn;
    cxgrd22Viewcostofwork: TcxGridDBColumn;
    cxgrd22Viewresponsible: TcxGridDBColumn;
    cxgrd22Viewinvoice: TcxGridDBColumn;
    cxgrd22Viewinvoice_file: TcxGridDBColumn;
    cxgrd22Viewpayment_note: TcxGridDBColumn;
    cxgrd22Viewpayment_date: TcxGridDBColumn;
    cxgrd22Viewperformance_of_work_note: TcxGridDBColumn;
    cxgrd22Viewperformance_of_work_file: TcxGridDBColumn;
    cxgrd22Viewperformance_of_work_date: TcxGridDBColumn;
    cxgrd22Viewact_acceptance: TcxGridDBColumn;
    cxgrd22Viewact_acceptance_file: TcxGridDBColumn;
    cxgrd22Viewcontract_execution_note: TcxGridDBColumn;
    cxgrd22Viewcontract_execution_file: TcxGridDBColumn;
    cxgrd21View: TcxGridDBBandedTableView;
    cxgrdbndclmncxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd2DBBandedTableViewColumn1: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1contract_number: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1costofwork: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1responsible: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1invoice: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1invoice_file: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1payment_note: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1payment_date: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_note: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_file: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_date: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance_file: TcxGridDBBandedColumn;
    cxgrdlvl21: TcxGridLevel;
    cxgrdlvl22: TcxGridLevel;
    pnl_Navigator1: TPanel;
    cxDBNavigator3: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    actlst1: TActionList;
    actAdd: TAction;
    actEdit: TAction;
    acOle: TAction;
    actJpg: TAction;
    actDep: TAction;
    actTun: TAction;
    actEmpl: TAction;
    actSpisok: TAction;
    cxgrdbndclmncxgrd21Viewbasis_N: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd21Viewtype_task_i: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd21Viewtype_task_str: TcxGridDBBandedColumn;
    cxgrdbclmncxgrd22Viewbasis_N: TcxGridDBColumn;
    cxgrdbclmncxgrd22Viewbasis_ffile: TcxGridDBColumn;
    cxgrdbclmncxgrd22Viewtype_task_i: TcxGridDBColumn;
    cxgrdbclmncxgrd22Viewtype_task_str: TcxGridDBColumn;
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GridFormactAddExecute(Sender: TObject);
  private
    procedure AddMailMethod;
    { Private declarations }
  public
    procedure EditMailMethod;
    { Public declarations }
  end;

  procedure MailForm_Show;

/////////////////////////////
var
  MailForm: TMailForm;

  FileName_cxgrd21View : string;
  FileName_cxgrd22View : string;
  FileName_cxdbVertgrd2 : string;

implementation

uses DMUnit, MailEditFormUnit, SelDepUnit;

{$R *.dfm}

//
procedure MailForm_Show;
begin
  if (MailForm = nil) then
     Application.CreateForm(TMailForm, MailForm);
  MailForm.ShowModal;
end;

procedure TMailForm.actAddExecute(Sender: TObject);
begin
  inherited;
  AddMailMethod;
end;

procedure TMailForm.actEditExecute(Sender: TObject);
begin
  inherited;
  EditMailMethod;
end;

procedure TMailForm.btn1Click(Sender: TObject);
begin
  inherited;
  EditMailMethod;
end;

procedure TMailForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxgrd21View.StoreToIniFile(FileName_cxgrd21View, true);
  cxgrd22View.StoreToIniFile(FileName_cxgrd22View, true);
  cxdbVertgrd2.StoreToIniFile(FileName_cxdbVertgrd2, true);
  cxprprtstr1.StoreTo(True);
end;

procedure TMailForm.FormCreate(Sender: TObject);
var i:Integer;
begin
  inherited;
// cxgrd21View
  FileName_cxgrd21View:= ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxgrd21View' +'.ini';
  cxgrd21View.RestoreFromIniFile(FileName_cxgrd21View);
  FileName_cxgrd22View:= ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxgrd22View' +'.ini';
  cxgrd22View.RestoreFromIniFile(FileName_cxgrd22View);
//cxdbVertgrd2
  FileName_cxdbVertgrd2 := ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxdbVertgrd2' +'.ini';
  cxdbVertgrd2.RestoreFromIniFile(FileName_cxdbVertgrd2);

  cxprprtstr1.Active:=true;
  cxprprtstr1.StorageName:=ExtractFilePath(Application.ExeName) +'_'+  Self.Name +'_'+ 'cxprprtstr1' +'.ini';
  cxprprtstr1.RestoreFrom;

//////////////////////////////////////////////////////////////////////////////

end;

///////////////////////////////////////////////////////////////////////////////
procedure TMailForm.EditMailMethod;
//var  Form: TForm;
begin
  //Form := EditForm;

  try
     Screen.Cursor := crHourGlass;
   try
    dm.UniTransaction1.Active;
    dm.UniTransaction1.StartTransaction;


    dm.tblReport2.Edit;
    //DM.tblReport.FieldByName('department').AsInteger := Year;   //department

    MailEditForm_Show;//!!!

    if (AddBildFormResult = -1) then
    begin
      dm.UniTransaction1.Rollback;
      Beep;
      dm.RefreshDB(dm.tblReport2);
      Exit;
    end;
    if (AddBildFormResult = +1) then
    begin ;
      dm.tblReport2.Post; // !!!
      dm.UniTransaction1.Commit;
     end;
    if (AddBildFormResult = 0) then
    begin ;
      dm.tblReport2.Post; // ???
      dm.UniTransaction1.Commit; //?
     end;

  except on E: Exception do
    // откатываем транзакцию в случае ошибки
    begin
      dm.UniTransaction1.Rollback;
     // dm.ADOConnection1.RollbackTrans();  !!!
      ShowMessage(E.ClassName + ' db error: ' + E.Message);
    end;
  end;
  finally
    //dm.UniTransaction1.Commit;   // ?
    Screen.Cursor := crDefault;
  end;
end;  //EditMailMethod


procedure TMailForm.AddMailMethod;
begin
  inherited;
  try
     Screen.Cursor := crHourGlass;
   try
    dm.UniTransaction1.Active;
    dm.UniTransaction1.StartTransaction;

    dm.tblReport2.Append;
    // lookup field
    DM.tblReport2department.AsInteger := DepDefaultID;   //department strngfldunqry1DSDesigner   strngfldReportDepartName
    DM.DepartL.AsInteger := DepDefaultID;

    DM.DepartL.AsInteger := DepDefaultID;
    DM.DepartL.AsInteger := DepDefaultID;
{
  if (TComponent(Sender).Name = acAddContract.Name) then   //Договор
  begin
    IncMethod(dm.tblReport2, dm.tblReport2contract_file);
    SetTypeOfDoc(dm.tblJpg , dm.tblTypeOfDoc ,  cDoc[Contract]);}

    dm.strngfldReport2type_task_str.AsString := cTask[Mail].strTypeOfTask;
    dm.strngfldReport2type_task_i.AsInteger := Integer(cTask[Mail].TypeOfTask);

    dm.tblReport2.Post; // !!!
    dm.tblReport2.Edit;

    MailEditForm_Show;
    if (AddBildFormResult = -1) then
    begin
      dm.UniTransaction1.Rollback;
      Beep;
      dm.RefreshDB(dm.tblReport2);
      Exit;
    end;
    if (AddBildFormResult = +1) then
    begin ;
      dm.tblReport2.Post; // !!!
      dm.UniTransaction1.Commit;
    end;


  except on E: Exception do
    // откатываем транзакцию в случае ошибки
    begin
      dm.UniTransaction1.Rollback;
     // dm.ADOConnection1.RollbackTrans();  !!!
      ShowMessage(E.ClassName + ' db error: ' + E.Message);
    end;
  end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TMailForm.GridFormactAddExecute(Sender: TObject);
begin
  inherited;
  AddMailMethod;
end;

end.
