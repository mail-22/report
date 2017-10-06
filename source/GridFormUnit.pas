unit GridFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, JvExControls, JvLabel, JvDBControls,
  cxNavigator, cxDBNavigator, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, ExtCtrls, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement,
  DMUnit, Grids, DBGrids
  , cxDBLookupComboBox, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxSplitter, ActnList, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, ActnMenus, cxCalendar, cxMRUEdit, cxCheckBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxGridBandedTableView, cxGridDBBandedTableView,
  dxSkinsdxStatusBarPainter, dxStatusBar, JvAppEvent, ComCtrls,
  JvExComCtrls, JvStatusBar, cxPropertiesStore, CommonUnit, cxCurrencyEdit
  ;

type
  TGridForm = class(TBaseForm)
    pnlT: TPanel;
    pnlGrid: TPanel;
    lbl1: TLabel;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    pnlBBB: TPanel;
    pnl_Navigator1: TPanel;
    cxDBNavigator3: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    cxspltr1: TcxSplitter;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    actmmb1: TActionMainMenuBar;
    actmgr1: TActionManager;
    actlst1: TActionList;
    actAdd: TAction;
    actEdit: TAction;
    acOle: TAction;
    actJpg: TAction;
    actDep: TAction;
    actTun: TAction;
    actEmpl: TAction;
    actSpisok: TAction;
    cxgrdbtblvw1id: TcxGridDBColumn;
    cxgrdbtblvw1department: TcxGridDBColumn;
    cxgrdbtblvw1DepartL: TcxGridDBColumn;
    cxgrdbtblvw1basis: TcxGridDBColumn;
    cxgrdbtblvw1file: TcxGridDBColumn;
    cxgrdbtblvw1contract_name: TcxGridDBColumn;
    cxgrdbtblvw1contract_number: TcxGridDBColumn;
    cxgrdbtblvw1contract_file: TcxGridDBColumn;
    cxgrdbtblvw1deadline: TcxGridDBColumn;
    cxgrdbtblvw1costofwork: TcxGridDBColumn;
    cxgrdbtblvw1responsible: TcxGridDBColumn;
    cxgrdbtblvw1invoice: TcxGridDBColumn;
    cxgrdbtblvw1invoice_file: TcxGridDBColumn;
    cxgrdbtblvw1payment_note: TcxGridDBColumn;
    cxgrdbtblvw1payment_date: TcxGridDBColumn;
    cxgrdbtblvw1performance_of_work_note: TcxGridDBColumn;
    cxgrdbtblvw1performance_of_work_file: TcxGridDBColumn;
    cxgrdbtblvw1performance_of_work_date: TcxGridDBColumn;
    cxgrdbtblvw1act_acceptance: TcxGridDBColumn;
    cxgrdbtblvw1act_acceptance_file: TcxGridDBColumn;
    cxgrdbtblvw1contract_execution_note: TcxGridDBColumn;
    cxgrdbtblvw1contract_execution_file: TcxGridDBColumn;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1department: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DepartL: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1basis: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1basis_ffile: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_name: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_execution_file: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_number: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1contract_execution_note: TcxDBEditorRow;
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
    cxdbdtrwcxdbvrtclgrd1contract_file: TcxDBEditorRow;
    cxctgryrwcxdbvrtclgrd1CategoryRow1: TcxCategoryRow;
    cxctgryrwcxdbvrtclgrd1CategoryRow2: TcxCategoryRow;
    cxctgryrwcxdbvrtclgrd1CategoryRow3: TcxCategoryRow;
    pnlR: TPanel;
    pnlL: TPanel;
    dxstsbr1: TdxStatusBar;
    lbl3: TLabel;
    lbl2: TLabel;
    jvstsbr1: TJvStatusBar;
    jvpvnts1: TJvAppEvents;
    cxprprtstr1: TcxPropertiesStore;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrdlvlcxgrd1Level1: TcxGridLevel;
    cxgrdbndclmncxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1id: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1contract_number: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1invoice: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1invoice_file: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1payment_note: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1payment_date: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1performance_of_work_date:
    TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1act_acceptance_file:
    TcxGridDBBandedColumn;
    cxprprtstr2cxgrdbtblvw1: TcxPropertiesStore;
    cxgrdbndclmncxgrd1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column11: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column12: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxgrdbndclmncxgrd1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    procedure actOleExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actDepExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actEmplExecute(Sender: TObject);
    procedure actJpgExecute(Sender: TObject);
    procedure actSpisokExecute(Sender: TObject);
    procedure actTunExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure jvpvnts1Hint(Sender: TObject);
  private
  protected
    MRUEdit_responsible: string;
  public
    procedure AddMethod;
    procedure DepMethod;
    procedure EditMethod;
    procedure JpgMethod;
    procedure OleMethod;
    procedure TunMethod;
    procedure EmplMethod;
    procedure SpisokMethod;
    procedure ExportXLSMethod;
    { Public declarations }
  end;

procedure GridForm_Show;

var
  GridForm: TGridForm;

implementation

uses MainUnit, EditForm2Unit, LogicUnit, SelDepUnit, EditGridJpgFormUnit,
  EditGridOleFormUnit, EditEmplFormUnit, SpisokUnit, ExportXLSFormUnit,
  EditFormUnit;

{$R *.dfm}

var
  FileName_cxgrdbtblvw1: string;
  FileName_cxdbvrtclgrd1: string;
  FileName_cxgrd1DBBandedTableView1: string;

procedure TGridForm.actOleExecute(Sender: TObject);
begin
  OleMethod;
end;

procedure TGridForm.actAddExecute(Sender: TObject);
begin
  AddMethod;
end;

procedure TGridForm.actDepExecute(Sender: TObject);
begin
  DepMethod;
end;

procedure TGridForm.actEditExecute(Sender: TObject);
begin
  EditMethod;
end;

procedure TGridForm.actEmplExecute(Sender: TObject);
begin
  inherited;
  EmplMethod;
end;

procedure TGridForm.actJpgExecute(Sender: TObject);
begin
  JpgMethod;
end;

procedure TGridForm.SpisokMethod;
begin
  SpisokForm_Show;
end;

procedure TGridForm.actSpisokExecute(Sender: TObject);
begin
  inherited;
  SpisokMethod;
end;

procedure TGridForm.actTunExecute(Sender: TObject);
begin
  TunMethod;
end;

procedure TGridForm.DepMethod;
begin
  EditForm2_Show;
end;

procedure TGridForm.EmplMethod;
begin
  EditEmplForm_Show;
end;

procedure TGridForm.JpgMethod;
begin
  EditGridJpgForm_Show;
end;

procedure TGridForm.OleMethod;
begin
  EditGridJOleForm_Show;
end;

procedure TGridForm.ExportXLSMethod;
begin
  ExportXLSForm_Show;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TGridForm.AddMethod;
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    try
      dm.UniTransaction1.Active;
      //dm.UniTransaction1.StartTransaction;

      dm.tblReport2.Append;
      // lookup field
      DM.tblReport2department.AsInteger := DepDefaultID;
      //department strngfldunqry1DSDesigner   strngfldReportDepartName
      DM.DepartL.AsInteger := DepDefaultID;

      DM.DepartL.AsInteger := DepDefaultID;
      DM.DepartL.AsInteger := DepDefaultID;

      dm.strngfldReport2type_task_str.AsString := cTask[Dogovor].strTypeOfTask;
      dm.strngfldReport2type_task_i.AsInteger :=
        Integer(cTask[Dogovor].TypeOfTask);

      dm.tblReport2.Post; // !!!
      dm.tblReport2.Edit;
{
      EditForm_Show;
      if (AddBildFormResult = -1) then
      begin
        dm.UniTransaction1.Rollback;
        Beep;
        dm.RefreshDB(dm.tblReport2);
        Exit;
      end;
      if (AddBildFormResult = +1) then
      begin
        ;
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

///////////////////////////////////////////////////////////////////////////////

procedure TGridForm.EditMethod;
var
  Form: TForm;
begin
  //Form := EditForm;

  try
    Screen.Cursor := crHourGlass;
    try
      dm.UniTransaction1.Active;
      dm.UniTransaction1.StartTransaction;

      dm.tblReport2.Edit;
      //DM.tblReport.FieldByName('department').AsInteger := Year;   //department

      EditForm_Show; //!!!

      if (AddBildFormResult = -1) then
      begin
        dm.UniTransaction1.Rollback;
        Beep;
        dm.RefreshDB(dm.tblReport2);
        Exit;
      end;
      if (AddBildFormResult = +1) then
      begin
        ;
        dm.tblReport2.Post; // !!!
        dm.UniTransaction1.Commit;
      end;
      if (AddBildFormResult = 0) then
      begin
        ;
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
end;

procedure TGridForm.FormCreate(Sender: TObject);
begin
  inherited;
  // ???
{
DM.tblReport2.FindLast;
DM.tblReport2.FindFirst;
DM.tblReport2.FindLast;
}

// cxgrd1
  FileName_cxgrdbtblvw1 := ExtractFilePath(Application.ExeName) + '_' + Self.Name
    + '_' + 'cxgrdbtblvw1' + '.ini';
  cxgrdbtblvw1.RestoreFromIniFile(FileName_cxgrdbtblvw1);

  FileName_cxdbvrtclgrd1 := ExtractFilePath(Application.ExeName) + '_' +
    Self.Name + '_' + 'cxdbvrtclgrd1' + '.ini';
  cxdbvrtclgrd1.RestoreFromIniFile(FileName_cxdbvrtclgrd1);

  //cxgrd1DBBandedTableView1
  FileName_cxgrd1DBBandedTableView1 := ExtractFilePath(Application.ExeName) + '_'
    + Self.Name + '_' + 'cxgrd1DBBandedTableView1' + '.ini';
  cxgrd1DBBandedTableView1.RestoreFromIniFile(FileName_cxgrd1DBBandedTableView1);

  cxprprtstr1.Active := true;
  cxprprtstr1.StorageName := ExtractFilePath(Application.ExeName) + '_' +
    Self.Name + '_' + 'cxprprtstr1' + '.ini';
  cxprprtstr1.RestoreFrom;

  //MRU     cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible
  MRUEdit_responsible := ExtractFilePath(Application.ExeName) + Self.Name + '.'
    +
    'MRUEdit.responsible.txt';
  MRUEdit_responsible := ExtractFilePath(Application.ExeName) +
    'MRUEdit.responsible.txt';
  //
  if FileExists(MRUEdit_responsible) then
  begin // проверить на наличие свойства MRU у поля !!!
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible.Properties).LookupItems.LoadFromFile(MRUEdit_responsible);
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible.Properties).LookupItems.Text; //
  end // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;

end;

procedure TGridForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  cxgrdbtblvw1.StoreToIniFile(FileName_cxgrdbtblvw1, true);
  cxdbvrtclgrd1.StoreToIniFile(FileName_cxdbvrtclgrd1, true);
  cxgrd1DBBandedTableView1.StoreToIniFile(FileName_cxgrd1DBBandedTableView1,
    true);

  cxprprtstr1.StoreTo(True);

  //MRU     cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible
  MRUEdit_responsible := ExtractFilePath(Application.ExeName) + Self.Name + '.'
    +
    'MRUEdit.responsible.txt';
  MRUEdit_responsible := ExtractFilePath(Application.ExeName) +
    'MRUEdit.responsible.txt';
  //
//if FileExists(MRUEdit_responsible) then
  if True then
  begin // проверить на наличие свойства MRU у поля !!!
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible.Properties).LookupItems.SaveToFile(MRUEdit_responsible);
    TcxMRUEditProperties(cxgrdbndclmncxgrd1DBBandedTableView1_MRU_responsible.Properties).LookupItems.Text; //
  end // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;

end;

procedure TGridForm.FormShow(Sender: TObject);
var
  filtr, // формируемая строка фильтра
  add: string;
begin
  inherited;

  cur_type_task_str := cTask[Dogovor].strTypeOfTask;
  cur_type_task_i := Integer(cTask[Dogovor].TypeOfTask);
DM.filtr_();
Exit;

  //dm.tblReport2.FieldByName('department').AsInteger = DepDefaultID;
  //dm.tblReport2.ParamByName('department').AsInteger := DepDefaultID;
//Exit;
  //DepDefaultName := IntToStr(DepDefaultID);

  dm.tblReport2.filtered := false;
  dm.tblReport2.Filter := '';
  filtr := '';
  if(DepDefaultName = 'все') then begin

                                  end
                                  else begin
  if length(DepDefaultName) > 0 then
    filtr := filtr+  'department = ' +#39+ IntToStr(DepDefaultID) +#39;
                                       end;



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

procedure TGridForm.jvpvnts1Hint(Sender: TObject);
begin
  inherited;
  jvstsbr1.SimpleText := Application.Hint;
end;

procedure TGridForm.TunMethod;
begin
  SelDepForm_Show;
  ;
end;

///////////////////////////////////////////////////////////////////////////////

//-

procedure GridForm_Show;
begin
  if (GridForm = nil) then
    Application.CreateForm(TGridForm, GridForm);
  GridForm.ShowModal;
end;

end.

