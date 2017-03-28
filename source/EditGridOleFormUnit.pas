unit EditGridOleFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, JvExControls, JvLabel, JvDBControls, cxNavigator,
  cxDBNavigator, ExtCtrls, cxSplitter, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, cxContainer, cxImage, cxDBEdit
  ,
  DMUnit, cxBlobEdit, OleCtnrs, DBOleContainer, DialogsX, Grids, DBGrids,
  ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus, XPStyleActnCtrls     , ShellApi,
  ActnColorMaps, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxMRUEdit
  ;


 type
   tTypeOfDoc = (Basic=2, Invoice, Act, Exec);

  tDoc = record
    strTypeOfDoc :string;
    TypeOfDoc :tTypeOfDoc;
  end;

  aDoc = array of tDoc;
  actTypeOfDoc = array[tTypeOfDoc] of tDoc;


  TEditGridJOleForm = class(TBaseForm)
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    cxSplitter1: TcxSplitter;
    pnlL: TPanel;
    openDialog: TOpenDialog;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    actmgr1: TActionManager;
    actlst1: TActionList;
    actAdd: TAction;
    actExtract: TAction;
    Memo1: TMemo;
    actAddBasis: TAction;
    acAddContract: TAction;
    cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1idR1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jpg: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ole: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1text1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1filename: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1filepath: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ext: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1UniqueName: TcxGridDBColumn;
    actAddInvoice: TAction;
    actAddPerf: TAction;
    actAddAct: TAction;
    actAddContrEx: TAction;
    actmmb2: TActionMainMenuBar;
    acttb1: TActionToolBar;
    acttb2: TActionToolBar;
    xpclrmp1: TXPColorMap;
    cxgrdbclmn_Type_MRU: TcxGridDBColumn;
    procedure acAddContractExecute(Sender: TObject);
    procedure actAddActExecute(Sender: TObject);
    procedure actAddBasisExecute(Sender: TObject);
    procedure actAddContrExExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actAddInvoiceExecute(Sender: TObject);
    procedure actAddPerfExecute(Sender: TObject);
    procedure actExtractExecute(Sender: TObject);
  private
    procedure OLE2File(OleContainer: TOleContainer; DataSet: TDataSet;
      FileName, FieldName: string);
    procedure Init;
    { Private declarations }
  public
    procedure AddMethod;
    procedure ExtractMethod;
    procedure MakeUniqName;
    { Public declarations }
  end;

procedure EditGridJOleForm_Show;
procedure File2OleField(OleContainer: TOleContainer; DataSet , MasterDataSet :TDataSet; FileName, FieldName: string);

var
  EditGridJOleForm: TEditGridJOleForm;

  FileName :string;
  TempDirName :string;

  FileNamePathSource :string;  //путь файла их внешней файловой системы
  BDDirPathName :string; // путь папки базы данных

  ExportPath :string ;  // имя папки экспорта файлов
  ExportFilePath :string ;  //путь файла для экспорта во внешнею файловую систему

  ext :string;
  FileNameSource :string;  //имя файла из внешней файловой системы

  FileNamePathUniq :string;  //путь файла во внутренней файловой системы
  UniqueName :string;  //имя файла во внутренней файловой системы

  DataSet :TDataSet;

  MRUEdit_rubricator :string;
  vDoc :aDoc;
  cDoc :actTypeOfDoc;
const
  Qu='"';
  CommaSpace=', ';
  CRLF=#13#10;
  constTmpDir = 'tmp';
// global const

  constBDname = 'db';  // имя папки базы данных
  constExportDir = 'export';  // имя папки экспорта файлов

implementation

uses
  FileUnit;

{$R *.dfm}

procedure EditGridJOleForm_Show;
begin
  if (EditGridJOleForm = nil) then
    Application.CreateForm(TEditGridJOleForm, EditGridJOleForm);
  EditGridJOleForm.ShowModal;

  EditGridJOleForm.Close;
  FreeAndNil(EditGridJOleForm);
  //AddBildForm.WindowState := wsMaximized;
end;

procedure TEditGridJOleForm.actAddExecute(Sender: TObject);
begin
  AddMethod;
end;

procedure TEditGridJOleForm.actExtractExecute(Sender: TObject);
begin
  inherited;
  ExtractMethod;
end;

procedure TEditGridJOleForm.AddMethod;
begin

  // Создание объекта OpenDialog - назначение на нашу переменную OpenDialog
  //openDialog := TOpenDialog.Create(self);

  // Установка начального каталога, чтобы сделать его текущим
  openDialog.InitialDir := GetCurrentDir;

  // Только разрешенные существующие файлы могут быть выбраны
  openDialog.Options := [ofFileMustExist];

  // Разрешено выбрать только .dpr и .pas файлы
  openDialog.Filter :=
    '  files|*.*|  files|*.*';

  // Выбор файлов Паскаля как стартовый тип фильтра
  //openDialog.FilterIndex := 2;

  // Показ диалог открытия файла
  if openDialog.Execute
  then begin //ShowMessage('File : '+openDialog.FileName);
  end
  else begin ShowMessage('Открытие файла остановлено');
  end;

  FileNamePathSource := openDialog.FileName;

  // Освобождение диалога
  //openDialog.Free;

  //OleContainer :=  dblcntnrole;
  //DataSet := DM.tblJpg;
  //MasterDataSet := DM.tblReport;
  //FieldName := 'ole';// blbfldJpgole

  //File2OleField(dblcntnrole,  DM.tblJpg , DM.tblReport2 ,  FileName, 'ole');

  MakeUniqName;
end;


procedure File2OleField(OleContainer: TOleContainer; DataSet , MasterDataSet :TDataSet; FileName, FieldName :string);
var
  //fs: TFileStream;
  //ds: TDataSet;
  bf: TBlobField;
  strTmp: string;
  //OleContainer :TOleContainer;
  ms: TMemoryStream;
begin //ds := DM.BLOB;   //OleContainer := XMLForm.XMLFrame1.DBOleContainer1;
  try
    OleContainer.CreateObjectFromFile(FileName, false);
  except
    on E: Exception do
    begin
      MessageDlg('OleContainer.CreateObjectFromFile' + CRLF + FileName + CRLF +
        Qu + E.Message + Qu + CRLF, mtError, [mbOk], 0);
      Exit;
    end;
  end;
  ms := TMemoryStream.Create;
  OleContainer.SaveToStream(ms);
  ms.Position := 0;
  OleContainer.DestroyObject;

  DataSet.Append;  //!!!

  DataSet.RecNo;
  DataSet.RecordCount; //
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;
  //DataSet.FieldByName('id_Description').AsInteger := DM.tblDescription.FieldByName('id').AsInteger;
  DataSet.FieldByName('idR1').AsInteger := MasterDataSet.FieldByName('id').AsInteger;  //
  strTmp := SysUtils.ExtractFileName(FileName);
  DataSet.FieldByName('text1').AsString := strTmp;  //???
  //  //fs := TFileStream.Create(FileName, fmOpenRead + fmShareDenyNone);
//if not (DataSet.State in [dsInsert, dsEdit]) then DataSet.Edit;
  bf := DataSet.FieldByName(FieldName) as TBlobField;
  bf.LoadFromStream(ms); //bf.LoadFromStream(fs);
  DataSet.Post;
  DataSet.RecNo;
  DataSet.RecordCount;

  ms.Free; //fs.Free;
end; //File2OLE

procedure TEditGridJOleForm.acAddContractExecute(Sender: TObject);
begin
  inherited;
  //Договор - Добавить документ!
  AddMethod;
  if not (dm.tblReport2.State in [dsInsert, dsEdit]) then
       dm.tblReport2.Edit;
  dm.tblReport2contract_file.AsInteger := dm.tblReport2contract_file.AsInteger  +1;
end;

procedure TEditGridJOleForm.actAddActExecute(Sender: TObject);
begin
  inherited;
//Акт сдачи приемки
  AddMethod;
  if not (dm.tblReport2.State in [dsInsert, dsEdit]) then
       dm.tblReport2.Edit;
  dm.tblReport2act_acceptance_file.AsInteger := dm.tblReport2act_acceptance_file.AsInteger  +1;

  if not (dm.tblJpg.State in [dsInsert, dsEdit]) then
       dm.tblJpg.Edit;
  dm.tblTypeOfDoc.AsString := cDoc[Act].strTypeOfDoc;
end;

procedure TEditGridJOleForm.actAddBasisExecute(Sender: TObject);
begin
  inherited;
  // Основание для договора - Добавить документ !
  AddMethod;
  if not (dm.tblReport2.State in [dsInsert, dsEdit]) then
       dm.tblReport2.Edit;
  dm.tblReport2basis_ffile.AsInteger := dm.tblReport2basis_ffile.AsInteger  +1;

  if not (dm.tblJpg.State in [dsInsert, dsEdit]) then
       dm.tblJpg.Edit;
  dm.tblTypeOfDoc.AsString := cDoc[Basic].strTypeOfDoc;

end;

procedure TEditGridJOleForm.actAddContrExExecute(Sender: TObject);
begin
  inherited;
// Contract execution note  - Отметка о выполнении договора
  AddMethod;
  if not (dm.tblReport2.State in [dsInsert, dsEdit]) then
       dm.tblReport2.Edit;
  dm.tblReport2contract_execution_file.AsInteger := dm.tblReport2contract_execution_file.AsInteger  +1;

  if not (dm.tblJpg.State in [dsInsert, dsEdit]) then
       dm.tblJpg.Edit;
    dm.tblTypeOfDoc.AsString := cDoc[Exec].strTypeOfDoc;
end;

procedure TEditGridJOleForm.actAddInvoiceExecute(Sender: TObject);
begin
  inherited;
//  invoice - счет на оплату -добавить !
  AddMethod;
  if not (dm.tblReport2.State in [dsInsert, dsEdit]) then
       dm.tblReport2.Edit;
  dm.tblReport2invoice_file.AsInteger := dm.tblReport2invoice_file.AsInteger  +1;

  if not (dm.tblJpg.State in [dsInsert, dsEdit]) then
       dm.tblJpg.Edit;
      dm.tblTypeOfDoc.AsString := cDoc[Invoice].strTypeOfDoc;
end;

procedure TEditGridJOleForm.actAddPerfExecute(Sender: TObject);
begin
  inherited;
// Отметка о выполнении работы
  AddMethod;
  if not (dm.tblReport2.State in [dsInsert, dsEdit]) then
       dm.tblReport2.Edit;
  dm.tblReport2performance_of_work_file.AsInteger := dm.tblReport2performance_of_work_file.AsInteger  +1;
  
end;

procedure TEditGridJOleForm.FormCreate(Sender: TObject);
begin
  inherited;
  Init();
end;

procedure TEditGridJOleForm.Init();
var i:integer;
begin
      BDDirPathName := ExtractFileDir(Application.ExeName) +'\'+ constBDname  +'\';
      ExportPath := ExtractFileDir(Application.ExeName) +'\'+ constExportDir  +'\';
      DataSet :=  DM.tblJpg ;

 //MRU
  MRUEdit_rubricator :=ExtractFilePath(Application.ExeName) + Self.Name +'.'+ 'MRUEdit.rubricator_F.txt';
  MRUEdit_rubricator :=ExtractFilePath(Application.ExeName)                 + 'MRUEdit.rubricator_F.txt';
   //
  if FileExists(MRUEdit_rubricator) then  begin   // проверить на наличие свойства MRU у поля !!!

    TcxMRUEditProperties(cxgrdbclmn_Type_MRU.Properties).LookupItems.LoadFromFile(MRUEdit_rubricator);
    TcxMRUEditProperties(cxgrdbclmn_Type_MRU.Properties).LookupItems.Text;//
  end   // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;

  //    tTypeOfDoc = (Basic=2, Invoice, Act, Exec);

  i:= High(vDoc);
  i:= Length(vDoc);
  SetLength(vDoc, Length(vDoc) +1 );
  vDoc[High(vDoc)].TypeOfDoc := Basic;

  cDoc[Basic].TypeOfDoc := Basic;
  cDoc[Basic].strTypeOfDoc := 'Основание для договора';

  cDoc[Invoice].TypeOfDoc := Invoice;
  cDoc[Invoice].strTypeOfDoc := 'Счет на оплату';

  cDoc[Act].TypeOfDoc := Act;
  cDoc[Act].strTypeOfDoc := 'Акт сдачи приемки';

  cDoc[Exec].TypeOfDoc := Exec;
  cDoc[Exec].strTypeOfDoc := 'Отметка о выполнении договора';
end;

///////////////////////////////////////////////////////////////////////////////
procedure TEditGridJOleForm.OLE2File(OleContainer: TOleContainer; DataSet: TDataSet; FileName, FieldName: string);
var
  //fs: TFileStream;
  //ds: TDataSet;
  bf: TBlobField;
  strTmp: string;
  //OleContainer :TOleContainer;
  ms: TMemoryStream;
  Dir: string;
  FullFileName: string;
begin
  if OleContainer.State in [osEmpty] then { TODO : SaveAsDocument to TempDirName}
  begin
    //raise EOleException.Create('Не задан документ');
    MessageDlg('OLE2File:' + #13 + #10 + 'Не задан документ', mtInformation,
      [mbOK], 0);
    exit;
  end;
  Dir := TempDirName + '\';
  OleContainer.SaveAsDocument(FileName);
  DataSet.RecNo;
  DataSet.RecordCount; //
end; //OLEB2File



procedure TEditGridJOleForm.ExtractMethod;
var
  strMyDir : string;
  bFileExist :Boolean;
begin
  FileName := DataSet.FieldByName('filename').AsString ;
  ext := DataSet.FieldByName('ext').AsString;
  ExportFilePath :=  ExportPath + FileName +'.'+ ext;

  UniqueName := DataSet.FieldByName('UniqueName').AsString;
  FileNamePathUniq := BDDirPathName +'/'+ UniqueName;

  CopyFile(PChar(FileNamePathUniq), PChar(ExportFilePath), bFileExist); //

   ShellApi.ShellExecute(EditGridJOleForm.Handle, 'open', Pchar(ExportFilePath), nil, nil, SW_RESTORE);
end;

procedure TEditGridJOleForm.MakeUniqName;
var
strTempFile : array[0..MAX_PATH-1] of char;
nTempNumber : integer;
bFileExist : Boolean ;
bResult : Boolean;
strTmp: string ;

 guid:tguid;
begin
  // TODO -cMM: TEditGridJOleForm.MakeUniqName default body inserted

//begin
//  nTempNumber := Windows.GetTempFileName(PChar(BDDirPathName), '_prefix_', 0, strTempFile);
//  FileNamePathUniq := strTempFile ;
//end;

  Createguid(guid);
  FileNamePathUniq:= BDDirPathName + GUIDToString(guid);

  UniqueName   := SysUtils.ExtractFileName(FileNamePathUniq);



  FileName  := SysUtils.ExtractFileName(FileNamePathSource);
  FileName  := SysUtils.ChangeFileExt(FileName,'');
  ext  := ExtractFileExtOnly(FileNamePathSource);

  bResult:=CopyFile(PChar(FileNamePathSource), PChar(FileNamePathUniq), bFileExist);
  if bResult then
  begin
     ;// ok!
  end
  else
  begin
    { TODO -oSVS : svs err }
    //strTmp := SysErrorMessage(GetLastError);
    MessageDlg(FileNamePathSource +' '+ FileNamePathUniq +' '
                      + SysErrorMessage(GetLastError), mtWarning, [mbOK], 0);
  end;

  DataSet.Append;  //!!!
  DataSet.RecNo;   DataSet.RecordCount; //
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;

  DataSet.FieldByName('idR1').AsInteger := dm.tblReport2.FieldByName('id').AsInteger;  //

  DataSet.FieldByName('filename').AsString := FileName;  //
  DataSet.FieldByName('filepath').AsString := FileNamePathSource;  //
  DataSet.FieldByName('ext').AsString := ext;  //
  DataSet.FieldByName('UniqueName').AsString := UniqueName;  //

  DataSet.Post;
  DataSet.RecNo;
  DataSet.RecordCount;
end;



end.
