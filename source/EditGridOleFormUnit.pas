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
  JvComponentBase, JvFormPlacement, cxContainer, cxImage, cxDBEdit,
  DMUnit, cxBlobEdit, OleCtnrs, DBOleContainer, DialogsX, Grids, DBGrids,
  ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus, XPStyleActnCtrls, ShellApi,
  ActnColorMaps, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxMRUEdit;

type
  tTypeOfDoc = (Basic = 1, Contract, Invoice, Performance, Act,
    Contract_Execution);

  tDoc = record
    strTypeOfDoc: string;
    TypeOfDoc: tTypeOfDoc;
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
    lbl1: TLabel;
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
    procedure AddAnyDocMethod(Sender: TObject);
    procedure OLE2File(OleContainer: TOleContainer; DataSet: TDataSet;
      FileName, FieldName: string);
    procedure Init;
    procedure SetTypeOfDoc(DataSet: TDataSet; Field: TField; Doc: tDoc);
    { Private declarations }
  public
    procedure AddMethod;
    procedure ExtractMethod;
    procedure IncMethod(DataSet:TDataSet; Field :TIntegerField);

    procedure MakeUniqName;
    { Public declarations }
  end;

procedure EditGridJOleForm_Show;
procedure File2OleField(OleContainer: TOleContainer; DataSet, MasterDataSet:
  TDataSet; FileName, FieldName: string);

var
  EditGridJOleForm: TEditGridJOleForm;

  FileName: string;
  TempDirName: string;

  FileNamePathSource: string; //���� ����� �� ������� �������� �������
  BDDirPathName: string; // ���� ����� ���� ������

  ExportPath: string; // ��� ����� �������� ������
  ExportFilePath: string; //���� ����� ��� �������� �� ������� �������� �������

  ext: string;
  FileNameSource: string; //��� ����� �� ������� �������� �������

  FileNamePathUniq: string; //���� ����� �� ���������� �������� �������
  UniqueName: string; //��� ����� �� ���������� �������� �������

  DataSet: TDataSet;

  MRUEdit_rubricator: string;
  vDoc: aDoc;
  cDoc: actTypeOfDoc;

const
  Qu = '"';
  CommaSpace = ', ';
  CRLF = #13#10;
  constTmpDir = 'tmp';
  // global const

  constBDname = 'db'; // ��� ����� ���� ������
  constExportDir = 'export'; // ��� ����� �������� ������

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

  // �������� ������� OpenDialog - ���������� �� ���� ���������� OpenDialog
  //openDialog := TOpenDialog.Create(self);

  // ��������� ���������� ��������, ����� ������� ��� �������
  openDialog.InitialDir := GetCurrentDir;

  // ������ ����������� ������������ ����� ����� ���� �������
  openDialog.Options := [ofFileMustExist];

  // ��������� ������� ������ .dpr � .pas �����
  openDialog.Filter :=
    '  files|*.doc*|  files|*.pdf  files|*.jpg';

  // ����� ������ ������� ��� ��������� ��� �������
  //openDialog.FilterIndex := 2;

  // ����� ������ �������� �����
  if openDialog.Execute then
  begin //ShowMessage('File : '+openDialog.FileName);
  end
  else
  begin
    ShowMessage('�������� ����� �����������');
    Exit;
  end;

  FileNamePathSource := openDialog.FileName;

  // ������������ �������
  //openDialog.Free;

  //OleContainer :=  dblcntnrole;
  //DataSet := DM.tblJpg;
  //MasterDataSet := DM.tblReport;
  //FieldName := 'ole';// blbfldJpgole

  //File2OleField(dblcntnrole,  DM.tblJpg , DM.tblReport2 ,  FileName, 'ole');

  MakeUniqName;
end;

procedure File2OleField(OleContainer: TOleContainer; DataSet, MasterDataSet:
  TDataSet; FileName, FieldName: string);
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

  DataSet.Append; //!!!

  DataSet.RecNo;
  DataSet.RecordCount; //
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;
  //DataSet.FieldByName('id_Description').AsInteger := DM.tblDescription.FieldByName('id').AsInteger;
  DataSet.FieldByName('idR1').AsInteger :=
    MasterDataSet.FieldByName('id').AsInteger; //
  strTmp := SysUtils.ExtractFileName(FileName);
  DataSet.FieldByName('text1').AsString := strTmp; //???
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
  AddAnyDocMethod(Sender);
end;

procedure TEditGridJOleForm.actAddActExecute(Sender: TObject);
begin
  inherited;
  //��� ����� �������
  AddAnyDocMethod(Sender);
end;

procedure TEditGridJOleForm.actAddBasisExecute(Sender: TObject);
begin
  inherited;
  AddAnyDocMethod(Sender);
end;

procedure TEditGridJOleForm.SetTypeOfDoc(DataSet:TDataSet ; Field :TField ; Doc :tDoc);
begin

    if not (DataSet.State in [dsInsert, dsEdit]) then
        DataSet.Edit;
    Field.AsString :=  Doc.strTypeOfDoc;
end;

procedure TEditGridJOleForm.IncMethod(DataSet:TDataSet ; Field :TIntegerField);
begin
    if not (DataSet.State in [dsInsert, dsEdit]) then
         DataSet.Edit;
    Field.AsInteger := Field.AsInteger + 1;
end;


procedure TEditGridJOleForm.actAddContrExExecute(Sender: TObject);
begin
  inherited;
  // Contract execution note  - ������� � ���������� ��������
  AddAnyDocMethod(Sender);
end;

procedure TEditGridJOleForm.actAddInvoiceExecute(Sender: TObject);
begin
  inherited;
  //  invoice - ���� �� ������ -�������� !
  AddAnyDocMethod(Sender);
end;

procedure TEditGridJOleForm.actAddPerfExecute(Sender: TObject);
begin
  inherited;
  // ������� � ���������� ������
  AddAnyDocMethod(Sender);
end;

procedure TEditGridJOleForm.AddAnyDocMethod(Sender: TObject);
begin

  if not (Sender is TComponent) then   begin
     Exit;
  end;

  AddMethod;

  if (TComponent(Sender).Name = actAddBasis.Name) then  // ��������� ��� ��������
  begin
    IncMethod(dm.tblReport2 , dm.tblReport2basis_ffile);
    SetTypeOfDoc(dm.tblJpg ,  dm.tblTypeOfDoc ,  cDoc[Basic]);
  end
  else
  if (TComponent(Sender).Name = acAddContract.Name) then   //�������
  begin
    IncMethod(dm.tblReport2, dm.tblReport2contract_file);
    SetTypeOfDoc(dm.tblJpg , dm.tblTypeOfDoc ,  cDoc[Contract]);
  end else
  if (TComponent(Sender).Name = actAddAct.Name) then  //��� ����� �������
  begin
    IncMethod(dm.tblReport2, dm.tblReport2act_acceptance_file);
    SetTypeOfDoc(dm.tblJpg , dm.tblTypeOfDoc ,  cDoc[Act]);
  end else
  if (TComponent(Sender).Name = actAddContrEx.Name) then   // Contract execution note  - ������� � ���������� ��������
  begin
    IncMethod(dm.tblReport2, dm.tblReport2contract_execution_file);
    SetTypeOfDoc(dm.tblJpg , dm.tblTypeOfDoc ,  cDoc[Contract_Execution]);
  end else
  if (TComponent(Sender).Name = actAddInvoice.Name) then //  invoice - ���� �� ������
  begin
    IncMethod(dm.tblReport2, dm.tblReport2invoice_file);
    SetTypeOfDoc(dm.tblJpg , dm.tblTypeOfDoc ,  cDoc[Invoice]);
  end
  else
  if (TComponent(Sender).Name = actAddPerf.Name) then   // ������� � ���������� ������
  begin
    IncMethod(dm.tblReport2, dm.tblReport2performance_of_work_file);
    SetTypeOfDoc(dm.tblJpg , dm.tblTypeOfDoc ,  cDoc[Performance]);
  end
  else
  begin
    MessageDlg('����������� ��� ����������������� ���������: ' + PAnsiChar(actAddPerf.Name),
          mtWarning, [mbOK], 0)
   end;

end;  //  AddAnyDocMethod 

procedure TEditGridJOleForm.FormCreate(Sender: TObject);
begin
  inherited;
  Init();
end;

procedure TEditGridJOleForm.Init();
var
  i: integer;
begin
  BDDirPathName := ExtractFileDir(Application.ExeName) +'\'+ constBDname +'\';
  BDDirPathName := ExtractFileDir(strConnection) +'\'+ constBDname +'\';

  ExportPath := ExtractFileDir(Application.ExeName) + '\' + constExportDir +
    '\';

  //'ConnectionString'
  DataSet := DM.tblJpg;

  //MRU
  MRUEdit_rubricator := ExtractFilePath(Application.ExeName) + Self.Name + '.' +
    'MRUEdit.rubricator_F.txt';
  MRUEdit_rubricator := ExtractFilePath(Application.ExeName) +
    'MRUEdit.rubricator_F.txt';
  //
  if FileExists(MRUEdit_rubricator) then
  begin // ��������� �� ������� �������� MRU � ���� !!!

    TcxMRUEditProperties(cxgrdbclmn_Type_MRU.Properties).LookupItems.LoadFromFile(MRUEdit_rubricator);
    TcxMRUEditProperties(cxgrdbclmn_Type_MRU.Properties).LookupItems.Text; //
  end // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;

  // tTypeOfDoc = (Basic=1, Contract, Invoice, Performance, Act, Contract_Execution);

  i := High(vDoc);
  i := Length(vDoc);
  SetLength(vDoc, Length(vDoc) + 1);
  vDoc[High(vDoc)].TypeOfDoc := Basic;

  cDoc[Basic].TypeOfDoc := Basic;
  cDoc[Basic].strTypeOfDoc := '��������� ��� ��������';

  cDoc[Contract].TypeOfDoc := Contract;
  cDoc[Contract].strTypeOfDoc := '�������';

  cDoc[Invoice].TypeOfDoc := Invoice;
  cDoc[Invoice].strTypeOfDoc := '���� �� ������';

  cDoc[Act].TypeOfDoc := Act;
  cDoc[Act].strTypeOfDoc := '��� ����� �������';

  cDoc[Performance].TypeOfDoc := Performance;
  cDoc[Performance].strTypeOfDoc := '������� � ���������� ������';

  cDoc[Contract_Execution].TypeOfDoc := Contract_Execution;
  cDoc[Contract_Execution].strTypeOfDoc := '������� � ���������� ��������';
end;

///////////////////////////////////////////////////////////////////////////////

procedure TEditGridJOleForm.OLE2File(OleContainer: TOleContainer; DataSet:
  TDataSet; FileName, FieldName: string);
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
    //raise EOleException.Create('�� ����� ��������');
    MessageDlg('OLE2File:' + #13 + #10 + '�� ����� ��������', mtInformation,
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
  strMyDir: string;
  bFileExist: Boolean;
begin
  FileName := DataSet.FieldByName('filename').AsString;
  ext := DataSet.FieldByName('ext').AsString;
  ExportFilePath := ExportPath + FileName + '.' + ext;

  UniqueName := DataSet.FieldByName('UniqueName').AsString;
  FileNamePathUniq := BDDirPathName + '/' + UniqueName;

  CopyFile(PChar(FileNamePathUniq), PChar(ExportFilePath), bFileExist); //

  ShellApi.ShellExecute(EditGridJOleForm.Handle, 'open', Pchar(ExportFilePath),
    nil, nil, SW_RESTORE);
end;



procedure TEditGridJOleForm.MakeUniqName;
var
  strTempFile: array[0..MAX_PATH - 1] of char;
  nTempNumber: integer;
  bFileExist: Boolean;
  bResult: Boolean;
  strTmp: string;

  guid: tguid;
begin
  // TODO -cMM: TEditGridJOleForm.MakeUniqName default body inserted

//begin
//  nTempNumber := Windows.GetTempFileName(PChar(BDDirPathName), '_prefix_', 0, strTempFile);
//  FileNamePathUniq := strTempFile ;
//end;

  Createguid(guid);
  FileNamePathUniq := BDDirPathName + GUIDToString(guid);

  UniqueName := SysUtils.ExtractFileName(FileNamePathUniq);

  FileName := SysUtils.ExtractFileName(FileNamePathSource);
  FileName := SysUtils.ChangeFileExt(FileName, '');
  ext := ExtractFileExtOnly(FileNamePathSource);

  bResult := CopyFile(PChar(FileNamePathSource), PChar(FileNamePathUniq),
    bFileExist);
  if bResult then
  begin
    ; // ok!
  end
  else
  begin
    { TODO -oSVS : svs err }
    //strTmp := SysErrorMessage(GetLastError);
    MessageDlg(FileNamePathSource + ' ' + FileNamePathUniq + ' '
      + SysErrorMessage(GetLastError), mtWarning, [mbOK], 0);
  end;

  DataSet.Append; //!!!
  DataSet.RecNo;
  DataSet.RecordCount; //
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;

  DataSet.FieldByName('idR1').AsInteger :=
    dm.tblReport2.FieldByName('id').AsInteger; //

  DataSet.FieldByName('filename').AsString := FileName; //
  DataSet.FieldByName('filepath').AsString := FileNamePathSource; //
  DataSet.FieldByName('ext').AsString := ext; //
  DataSet.FieldByName('UniqueName').AsString := UniqueName; //

  DataSet.Post;
  DataSet.RecNo;
  DataSet.RecordCount;
end;

end.

