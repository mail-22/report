unit NirFormUnit;

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
  TNirForm = class(TBaseForm)
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
    cxgrdbndclmncxgrd1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1responsible: TcxGridDBBandedColumn;
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
    cxgrdbndclmncxgrd21Viewtype_task_i: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd21Viewtype_task_str: TcxGridDBBandedColumn;
    cxgrdbclmncxgrd22Viewbasis_N: TcxGridDBColumn;
    cxgrdbclmncxgrd22Viewbasis_ffile: TcxGridDBColumn;
    cxgrdbclmncxgrd22Viewtype_task_i: TcxGridDBColumn;
    cxgrdbclmncxgrd22Viewtype_task_str: TcxGridDBColumn;
    cxgrd21Viewnir_zayvka: TcxGridDBBandedColumn;
    cxgrd21Viewnir_zayvka_otpravleno: TcxGridDBBandedColumn;
    cxgrd21Viewnir_plan: TcxGridDBBandedColumn;
    cxgrd21Viewnir_tz: TcxGridDBBandedColumn;
    cxgrd21Viewnir_etap_srok: TcxGridDBBandedColumn;
    cxgrd21Viewnir_otchet: TcxGridDBBandedColumn;
    cxgrd21Viewnir_act: TcxGridDBBandedColumn;
    cxgrd21Viewnir_vnedrenie: TcxGridDBBandedColumn;
    cxgrd21Viewnir_zayvka_file: TcxGridDBBandedColumn;
    procedure acOleExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridFormactAddExecute(Sender: TObject);
  protected
    MRUEdit_responsible  : string;
  private
    procedure AddNirMethod;
    { Private declarations }
  public
    procedure EditNirMethod;
    { Public declarations }
  end;

  procedure NirForm_Show;

/////////////////////////////
var
  NirForm: TNirForm;

  FileName_cxgrd21View : string;
  FileName_cxgrd22View : string;
  FileName_cxdbVertgrd2 : string;

implementation

uses DMUnit, NirEditFormUnit, SelDepUnit, EditGridOleFormUnit;

{$R *.dfm}

//
procedure NirForm_Show;
begin
  if (NirForm = nil) then
     Application.CreateForm(TNirForm, NirForm);
  NirForm.ShowModal;
end;

procedure TNirForm.acOleExecute(Sender: TObject);
begin
  inherited;
  EditGridJOleForm_Show;
end;

procedure TNirForm.actAddExecute(Sender: TObject);
begin
  inherited;
  AddNirMethod;
end;

procedure TNirForm.actEditExecute(Sender: TObject);
begin
  inherited;
  EditNirMethod;
end;

procedure TNirForm.btn1Click(Sender: TObject);
begin
  inherited;
  EditNirMethod;
end;

procedure TNirForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxgrd21View.StoreToIniFile(FileName_cxgrd21View, true);
  cxgrd22View.StoreToIniFile(FileName_cxgrd22View, true);
  cxdbVertgrd2.StoreToIniFile(FileName_cxdbVertgrd2, true);
  cxprprtstr1.StoreTo(True);


//MRU      cxgrdbndclmncxgrd1DBBandedTableView1responsible
  //MRUEdit_responsible := ExtractFilePath(Application.ExeName) + Self.Name + '.' + 'MRUEdit.responsible.txt';
  //MRUEdit_responsible := ExtractFilePath(Application.ExeName) +  'MRUEdit.responsible.txt';
  //
//if FileExists(MRUEdit_responsible) then
  if True then
  begin // проверить на наличие свойства MRU у поля !!!
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1responsible.Properties).LookupItems.SaveToFile(MRUEdit_responsible);
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1responsible.Properties).LookupItems.Text; //
  end // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;

end;

procedure TNirForm.FormCreate(Sender: TObject);
var i:Integer; tmpStr :string;
begin
  inherited;
// cxgrd21View
  FileName_cxgrd21View:= ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxgrd21View' +'.ini';
  tmpStr :=  '_' + Self.Name+ '_' + 'cxgrd21View'+ '_';
  FileName_cxgrd21View:=  ChangeFileExt2(tmpStr);;
  cxgrd21View.RestoreFromIniFile(FileName_cxgrd21View);

  FileName_cxgrd22View:= ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxgrd22View' +'.ini';
  tmpStr :=  '_' + Self.Name+ '_' + 'cxgrd22View'+ '_';
  FileName_cxgrd22View:=  ChangeFileExt2(tmpStr);;
  cxgrd22View.RestoreFromIniFile(FileName_cxgrd22View);

//cxdbVertgrd2
  FileName_cxdbVertgrd2 := ExtractFilePath(Application.ExeName) +'_'+ Self.Name +'_'+ 'cxdbVertgrd2' +'.ini';
  tmpStr :=  '_' + Self.Name+ '_' + 'cxdbVertgrd2'+ '_';
  FileName_cxdbVertgrd2:=  ChangeFileExt2(tmpStr);;
  cxdbVertgrd2.RestoreFromIniFile(FileName_cxdbVertgrd2);

  cxprprtstr1.Active:=true;
  cxprprtstr1.StorageName:=ExtractFilePath(Application.ExeName) +'_'+  Self.Name +'_'+ 'cxprprtstr1' +'.ini';
  tmpStr :=  '_' + Self.Name+ '_' + 'cxprprtstr1'+ '_';
  cxprprtstr1.StorageName:= ChangeFileExt2(tmpStr);;
  cxprprtstr1.RestoreFrom;
//////////////////////////////////////////////////////////////////////////////


  //MRU     cxgrdbndclmncxgrd1DBBandedTableView1responsible
  //tmpStr :=
  MRUEdit_responsible := ExtractFilePath(Application.ExeName) + Self.Name+ '.' +  'MRUEdit.responsible.txt';
  //MRUEdit_responsible := ExtractFilePath(Application.ExeName) + 'MRUEdit.responsible.txt';
  //
  if FileExists(MRUEdit_responsible) then
  begin // проверить на наличие свойства MRU у поля !!!
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1responsible.Properties).LookupItems.LoadFromFile(MRUEdit_responsible);
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1responsible.Properties).LookupItems.Text; //
  end // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;

end;

///////////////////////////////////////////////////////////////////////////////
procedure TNirForm.EditNirMethod;
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

    NirEditForm_Show;//!!!

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
end;  //EditNirMethod


procedure TNirForm.AddNirMethod;
begin
  inherited;
  try
     Screen.Cursor := crHourGlass;
   try
    dm.UniTransaction1.Active;
    //dm.UniTransaction1.StartTransaction;

    dm.tblReport2.Append;
    // lookup field
    DM.tblReport2department.AsInteger := DepDefaultID;   //department strngfldunqry1DSDesigner   strngfldReportDepartName
    DM.DepartL.AsInteger := DepDefaultID;

    DM.DepartL.AsInteger := DepDefaultID;
    DM.DepartL.AsInteger := DepDefaultID;

    dm.strngfldReport2type_task_str.AsString := cTask[Nir].strTypeOfTask;
    dm.strngfldReport2type_task_i.AsInteger := Integer(cTask[Nir].TypeOfTask);

    dm.tblReport2.Post; // !!!
    dm.tblReport2.Edit;
{
    NirEditForm_Show;
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
}

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

procedure TNirForm.FormShow(Sender: TObject);
var
  filtr, // формируемая строка фильтра
  add: string;

begin
  inherited;

  cur_type_task_str := cTask[Nir].strTypeOfTask;
  cur_type_task_i := Integer(cTask[Nir].TypeOfTask);
 DM.filtr_();
Exit;

  //dm.tblReport2.FieldByName('department').AsInteger = DepDefaultID;
  //dm.tblReport2.ParamByName('department').AsInteger := DepDefaultID;
//Exit;
  //DepDefaultName := IntToStr(DepDefaultID);

  dm.tblReport2.filtered := false;
  dm.tblReport2.Filter := '';
  filtr := '';
  if length(DepDefaultName) > 0 then
    filtr :=   'department = ' +#39+ IntToStr(DepDefaultID) +#39;

  if length(cur_type_task_str) > 0 then
  begin
    if length(filtr) > 0 then
      add := ' and '
    else
      add := '';
    filtr := filtr + add + 'type_task_i = ' +#39+ IntToStr(cur_type_task_i) + #39;
  end;

  if length(filtr) > 0 then
  begin
    dm.tblReport2.Filter := filtr;
    dm.tblReport2.filtered := true;
  end
  else
    Showmessage('Все поля пусты!');

end;

procedure TNirForm.GridFormactAddExecute(Sender: TObject);
begin
  inherited;
  AddNirMethod;
end;

end.
