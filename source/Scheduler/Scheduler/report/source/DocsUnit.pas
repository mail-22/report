unit DocsUnit;
{$I svs.INC}
//{*$DEFINE BlobViaFile}

interface
uses Classes {TStrings} {TFileStream}, DB, OleCtnrs
  , filectrl {TFileListBox}
  , ComCtrls //TTreeView
  , JvRichEdit
  , ADODB
  ;

type
  TDocument = record
    FileName: ShortString;
    TablesOfContents: TStringList; //:TStringList;
    description: ShortString;
  end;

  TDocuments = array of TDocument;

  TListOfDocuments = class
  private
    FileListBox: TFileListBox;
    Memo: TRichEdit; //Memo:TJvMemo;  //Memo :TJvRichEdit ;//ComCtrls TRichEdit
    Tree: TTreeView; //ComCtrls//TTreeView
  protected
    Documents: TDocuments;
    CRLF: string; //CRLF := #13#10;
  public
    constructor Create;
    destructor Destroy; override;

    procedure FillDocuments;
    procedure FillDocument(var Document: TDocument; const FileName: string);
    procedure Doc2Memo(Document: TDocument);
    procedure Docs2Memo;
    procedure Doc2Tree(Document: TDocument);
    procedure Docs2Tree;

    //procedure Docs2CDS;
    procedure Docs2ADO(DataSet: TCustomADODataSet); //ADODB.TCustomADODataSet
    procedure Doc2ADO(Document: TDocument; DataSet: TCustomADODataSet);
    //procedure RTF2BLOB(OleContainer :TOleContainer; DataSet: TDataSet; FileName, FieldName: string);
    procedure OLE2File(OleContainer: TOleContainer; DataSet: TDataSet; FileName,
      FieldName: string);
    procedure File2BLOB(DataSet: TDataSet; FileName, FieldName: string);

    procedure Docs2RTF();
  end;

procedure File2OleField(OleContainer: TOleContainer; DataSet , MasterDataSet:
  TDataSet; FileName, FieldName: string);
  
procedure Doc2ADO(Document: TDocument; DataSet: TCustomADODataSet);

function ReplaceChars(const str: string): string;
function TablesOfContents2Strings(str: string; var Strings: TStrings): TStrings;
//procedure CreateCDSFile;

var
  LOD: TListOfDocuments;
  MaxDoc: integer;
  FillDocumentsEnd: boolean;

implementation

uses
  WordSVS,
  //JvDriveCtrls {TJvFileListBox},
  Forms {Application}, Variants,
  SysUtils {FileExists},
  QStrings {Q_StrTok},
  //JvRichEdit {JvRichEdit},
  Graphics {clMaroon},
  JvSplashWindow, XML_Unit,
  //dbclient,
  utility {TDataSet},
  DMUnit, CommonUnit, Dialogs, EftUnit
  ;

///////////////////////////////////////////////////////////////////////////////
constructor TListOfDocuments.Create;
begin
  inherited Create;
  CRLF := #13#10;
  //FileListBox := Main.JvFileListBox1 as TFileListBox;
    //FileListBox: TFileListBox;
  //Memo := Main.RichEdit2;//  RichEdit :TJvRichEdit ;//RichEdit := RichEdit2;
    //  Memo: TJvRichEdit ; //Memo:TJvMemo;  //Memo :TJvRichEdit ;//ComCtrls TRichEdit
  //Tree := Main.TreeView; //Tree: TTreeView; //ComCtrls
end;

///////////////////////////////////////////////////////////////////////////////
destructor TListOfDocuments.Destroy;
begin

  inherited;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TListOfDocuments.Docs2RTF();
var
  i: integer; //j :integer;
  FileName: string;
begin
  for i := 0 to FileListBox.Items.Count - 1 do
  begin
    FileName := FileListBox.Directory + '\' + FileListBox.Items[i];
    WordSVS.Doc2RTF(FileName);
  end;
end; //Docs2RTF();

///////////////////////////////////////////////////////////////////////////////
procedure TListOfDocuments.FillDocuments;
var
  Splash1: TForm;
  i: integer; //j :integer;
  FileName: string;
  strTmp, strTmp2: string;
  Strings: TStrings;

  tmpDocument: TDocument;
  tmpHigh: integer;
begin //  Application.ProcessMessages;
  JvSplashWindow.SplashStayOnTop := False; // True; False;
  Splash1 := ShowSplashWindow(Application.Icon,
    'сканируем файлы' + #13#10 + #13#10 +
    'в каталоге ...' + #13#10 + #13#10 +
    'Подождите, пожалуйста...',
    False, nil);
  Application.ProcessMessages;
  i := 0;
  MaxDoc := 0;
  LOD.Documents := nil;
  for i := 0 to FileListBox.Items.Count - 1 do
  begin //TablesOfContentsReady := true;//TablesOfContentsReady := false;
    FileName := FileListBox.Directory + '\' + FileListBox.Items[i];
    SetLength(LOD.Documents, Length(LOD.Documents) + 1);
    tmpHigh := High(LOD.Documents);
    tmpDocument := LOD.Documents[High(LOD.Documents)];

    FillDocument(LOD.Documents[High(LOD.Documents)], FileName);
    inc(MaxDoc);
    Doc2Memo(LOD.Documents[High(LOD.Documents)]);
    Doc2Tree(LOD.Documents[High(LOD.Documents)]);
  end;
  FreeAndNil(Splash1); //Splash1.Free; Splash1:=Nil;
  //TablesOfContentsReady := true;
  FillDocumentsEnd := true;
end; //FillDocuments

///////////////////////////////////////////////////////////////////////////////
//procedure TListOfDocuments.FillDocument(var Document: TDocument; const Item:string; const FileName: string);
procedure TListOfDocuments.FillDocument(var Document: TDocument; const FileName:
  string);
var
  Splash1: TForm;
  i: integer; //j :integer;   //FileName: string;
  strTmp, strTmp2: string;
  FileListBox: TFileListBox;
  Strings: TStrings;
begin
  Document.FileName := FileName;
  if not SysUtils.FileExists(FileName) then
  begin //MessageDlg('not FileExists'+#13 +strOpenFileName+ '', mtWarning, [mbOK], 0);
    exit;
  end
  else
  begin //TablesOfContentsReady := false;
    WordOpen(FileName, true);
    //Application.ProcessMessages;        //TablesOfContentsReady := true;   //TablesOfContentsReady := false;
    strTmp := GetTablesOfContents; //Application.ProcessMessages;
    WordClose(''); //Application.ProcessMessages;
    { TODO : Memory leak }
    Document.TablesOfContents := TStringList.Create;
    {   if Document.TablesOfContents = nil then
        begin //Strings := nil;//
          Document.TablesOfContents := TStringList.Create;
        end
        else
        begin
          Document.TablesOfContents.Clear;
        end;
    }
    TablesOfContents2Strings(strTmp, TStrings(Document.TablesOfContents));
  end;
end; //FillDocument

///////////////////////////////////////////////////////////////////////////////
function TablesOfContents2Strings(str: string; var Strings: TStrings): TStrings;
var
  strTmp, strTmp2: string;
  CR: char;
  i: Integer;
begin //CR := chr(13);   //Application.ProcessMessages;
  strTmp := ReplaceChars(str); //strTmp2 := strTmp;
  Q_ReplaceChar(strTmp, #$D, '$'); //,QStrings
  while not (strTmp = '') do
  begin //Application.ProcessMessages;
    strTmp2 := QStrings.Q_StrTok1(strTmp, ['$']); //Application.ProcessMessages;
    Strings.Add(strTmp2);
  end;
end; //TablesOfContents2Strings

///////////////////////////////////////////////////////////////////////////////

procedure TListOfDocuments.Doc2Memo(Document: TDocument);
var
  FileName: string; //i :integer;
  j: integer;
  strTmp, strTmp2: string;
begin
  FileName := Document.FileName;
  strTmp := ExtractFilename(FileName);
  Memo.SelAttributes.Color := Graphics.clMaroon;
  //Memo.Font.Color := clMaroon;      Memo.Font.Height := 16;
  Memo.SelAttributes.Height := 14; //Memo.SelAttributes.BackColor := clInfoBk;
  Memo.SelAttributes.Style := Memo.SelAttributes.Style + [fsBold];
  Memo.Lines.Add(strTmp); //FileName := JvFileListBox1.Directory +'\'+ FileName;
  //Memo.Lines.Add(#13);//Memo.Font.Color := clNavy;      Memo.Font.Height := 12;
  //Memo.SelAttributes.BackColor := clWindow;
  if Document.TablesOfContents = nil then
  begin //continue;//
    exit;
  end
  else
  begin
  end;
  for j := 0 to Document.TablesOfContents.Count - 1 do // Iterate
  begin
    strTmp := Document.TablesOfContents.Strings[j];
    Memo.SelAttributes.Color := clNavy;
    Memo.SelAttributes.Height := 10;
    Memo.SelAttributes.Style := Memo.SelAttributes.Style - [fsBold];
    Memo.Lines.Add(strTmp);
  end; // for
  Memo.Lines.Add(#13#10); //Application.ProcessMessages;
end; //Doc2Memo

///////////////////////////////////////////////////////////////////////////////

procedure TListOfDocuments.Docs2Memo;
var
  FileName: string;
  i: integer;
  j: integer;
  strTmp, strTmp2: string;
begin
  Memo.Clear; //Application.ProcessMessages;
  for i := 0 to Length(LOD.Documents) - 1 do
  begin
    Doc2Memo(LOD.Documents[i]);
  end; //for i := 0 to Length(Documents) -1 do
end; //Docs2Memo

///////////////////////////////////////////////////////////////////////////////

procedure TListOfDocuments.Doc2Tree(Document: TDocument);
var
  Nodes: TTreeNodes;
  Node: TTreeNode; //i :integer;
  j: integer;
  strTmp, strTmp2: string;
begin
  Node := Tree.Items.AddChild(nil, ExtractFilename(Document.FileName));
  for j := 0 to Document.TablesOfContents.Count - 1 do // Iterate
  begin
    strTmp := Document.TablesOfContents.Strings[j];
    Tree.Items.AddChild(Node, strTmp);
  end; // for
end; //Doc2Tree

///////////////////////////////////////////////////////////////////////////////

procedure TListOfDocuments.Docs2Tree;
var
  Nodes: TTreeNodes;
  Node: TTreeNode;
  i: integer;
  j: integer;
  strTmp, strTmp2: string;
begin
  Tree.Items.Clear;
  //Tree.Items.Add(nil, '-----');
  for i := 0 to Length(LOD.Documents) - 1 do
  begin
    Doc2Tree(LOD.Documents[i]);
  end; //for i := 0 to Length(Documents) -1 do
end;

///////////////////////////////////////////////////////////////////////////////

function ReplaceChars(const str: string): string;
var
  strTmp: string;
  CR: char;
begin
  CR := chr(36);
  strTmp := str;
  Q_ReplaceChar(strTmp, #$D, CR); //,QStrings
  Q_SpaceCompressInPlace(strTmp); //strTmp := Q_ReplaceStr(strTmp, '$ ', '$');
  Q_ReplaceCharsByOneChar(strTmp, [CR], #13);
  //strTmp2 := Q_KeepOneChar(strTmp, '$');  //Q_ReplaceCharsByOneChar(strTmp, [#$D], #10);
  Result := strTmp;
end;

///////////////////////////////////////////////////////////////////////////////
procedure TListOfDocuments.OLE2File(OleContainer: TOleContainer; DataSet:
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

///////////////////////////////////////////////////////////////////////////////
procedure TListOfDocuments.File2BLOB(DataSet: TDataSet; FileName, FieldName:
  string);
var
  fs: TFileStream; //ds: TDataSet;
  bf: TBlobField;
  strTmp: string; //ms :TMemoryStream;
begin //ms := TMemoryStream.Create;
  DataSet.Append;
  DataSet.RecNo;
  DataSet.RecordCount; //
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;
  strTmp := SysUtils.ExtractFileName(FileName);
  DataSet.FieldByName('FileName').AsString := strTmp;
  DataSet.Post;
  DataSet.RecNo;
  DataSet.RecordCount; //

  fs := TFileStream.Create(FileName, fmOpenRead + fmShareDenyNone);
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;
  bf := DataSet.FieldByName(FieldName) as TBlobField;
  bf.LoadFromStream(fs); //bf.LoadFromStream(fs);
  fs.Free; //ms.Free;
end; //File2BLOB

///////////////////////////////////////////////////////////////////////////////
procedure File2OleField(OleContainer: TOleContainer; DataSet , MasterDataSet:
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
  DataSet.Append;
  DataSet.RecNo;
  DataSet.RecordCount; //
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit;
  //DataSet.FieldByName('id_Description').AsInteger := DM.tblDescription.FieldByName('id').AsInteger;
  DataSet.FieldByName('id_Description').AsInteger := MasterDataSet.FieldByName('id').AsInteger;
  strTmp := SysUtils.ExtractFileName(FileName);
  DataSet.FieldByName('FileName').AsString := strTmp;
  //  //fs := TFileStream.Create(FileName, fmOpenRead + fmShareDenyNone);
//if not (DataSet.State in [dsInsert, dsEdit]) then DataSet.Edit;
  bf := DataSet.FieldByName(FieldName) as TBlobField;
  bf.LoadFromStream(ms); //bf.LoadFromStream(fs);
  DataSet.Post;
  DataSet.RecNo;
  DataSet.RecordCount;

  ms.Free; //fs.Free;
end; //File2OLE

///////////////////////////////////////////////////////////////////////////////
procedure TListOfDocuments.Docs2ADO(DataSet: TCustomADODataSet);
var //DataSet: TDataSet; {dbclient}
  //DataSet :TCustomADODataSet;//TADODataSet;//TCustomADODataSet
  i: integer;
  j: integer;
  strTmp, strTmp2: string;
  slList: TStringList;
begin
  { TODO : DataSet := DM.qryDescription; }
    //DataSet := DM.qryDescription;//DataSet :TCustomADODataSet;//TADODataSet;//TCustomADODataSet
  DataSet.Active := true;
  for i := 0 to DataSet.RecordCount - 1 do
  begin
    DataSet.Delete;
  end;

  slList := TStringList.Create;
  for i := 0 to Length(LOD.Documents) - 1 do
  begin
    Doc2ADO(LOD.Documents[i], DataSet);
  end; //for i := 0 to Length(Documents) -1 do
  strTmp := '';
  {
    DataSet.SaveToFile(ChangeFileExt(Application.ExeName, '.xml'), DBClient.dfXMLUTF8);
    // DBClient type TDataPacketFormat = (dfBinary, dfXML, dfXMLUTF8);
  }
end; //Docs2ADO

///////////////////////////////////////////////////////////////////////////////
procedure Doc2ADO(Document: TDocument; DataSet: TCustomADODataSet);
var //DataSet: TDataSet; {dbclient}
  //DataSet :TCustomADODataSet;//TADODataSet;//TCustomADODataSet
  //i: integer;
  j: integer;
  strTmp, strTmp2: string;
  slList: TStringList;
  oldDataSource: TDataSource;
  ADOQuery: TADOQuery;
begin { TODO : Doc2ADO }
  DataSet.Active := true;
  //slList := TStringList.Create;/..,,
  //DM.ADOConnection1.BeginTrans;   //DM.ADOConnection1.CommitTrans; //DM.ADOConnection1.InTransaction;
{
    ADOQuery := DataSet as TADOQuery;
    oldDataSource:=ADOQuery.DataSource;
    ADOQuery.DataSource := nil;
}
  //DataSet.Name;  DataSet.Edit;
  DM.OpenDB(DM.Description);
  DataSet := DM.Description;
  //DataSet := DM.qryDescription;
  DataSet.Edit; //DataSet.State;
  DataSet.Append; //DataSet.Insert;//
  //DataSet.InsertRecord([0]);//  Null

  DataSet.FieldByName('FileName').AsString := Document.FileName;
  DataSet.FieldByName('title').AsString := Document.FileName;
  DataSet.FieldByName('description').AsString :=
    ChangeFileExt(ExtractFilename(Document.FileName), ' ');
  strTmp := '';
  DataSet.RecNo;
  DataSet.RecordCount; //
  //DataSet.FieldByName('id_TypeOfDoc').AsInteger := DM.qryDescription.FieldByName('id_TypeOfDoc').AsInteger;
  DataSet.Edit; //DataSet.State;
  DataSet.FieldByName('id_TypeOfDoc').AsInteger :=
    DM.TypeOfDoc.FieldByName('id').AsInteger;
  DataSet.FieldByName('id').AsInteger;
  DM.qryDescription.FieldByName('id').AsInteger;
  DM.BLOB.FieldByName('id_Description').AsInteger;
  DM.BLOB.FieldByName('id').AsInteger;
  DM.tblDescription.FieldByName('id').AsInteger;
  {
      for j := 0 to Document.TablesOfContents.Count - 1 do // Iterate
      begin
        strTmp := strTmp + Document.TablesOfContents.Strings[j] + CRLF;
      end; // for
      if not (DataSet.State in [dsInsert, dsEdit]) then DataSet.Edit;
      DataSet.FieldByName('TablesOfContents').AsString := strTmp;
  }
  DataSet.Edit; //DataSet.State;
  DataSet.Post;
  j := DM.qryDescription.FieldByName('id_TypeOfDoc').AsInteger; //
  //id_TypeOfDoc_NONE:=10;//
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit; //?

{$IFDEF BlobViaFile}
  File2BLOB(DM.BLOB, Document.FileName, 'BLOB');
{$ELSE}
  File2OleField(XMLForm.DBOleContainer1, DM.BLOB, DataSet, Document.FileName, 'BLOB');
{$ENDIF BlobViaFile}

  DataSet.RecNo;
  DataSet.RecordCount; //
  //DataSet.Close; DataSet.Open;
{
  DM.qryDescription.Close;
  DM.qryDescription.Open;
}
  //DM.TypeOfDoc.Close; DM.TypeOfDoc.Open;
  strTmp := '';
  {TODO : strTmp := GetWordText(Document.FileName); }
    //strTmp := GetWordText(Document.FileName);
  {
    WordOpen(Document.FileName, true);
    //Application.ProcessMessages;        //TablesOfContentsReady := true;   //TablesOfContentsReady := false;
    //strTmp := GetTablesOfContents; //Application.ProcessMessages;
    strTmp := GetText();
    WordClose(''); //Application.ProcessMessages;
  }
  DataSet.Edit; //DataSet.State;
  DataSet.FieldByName('text').AsString := strTmp;
  DataSet.Post;
  //DM.ADOConnection1.CommitTrans; //DM.ADOConnection1.BeginTrans;   //DM.ADOConnection1.CommitTrans; //DM.ADOConnection1.InTransaction;
  //strTmp := EftForm.GetWordFileText(Document.FileName);
  strTmp2 := strTmp;
end; //Doc2ADO

///////////////////////////////////////////////////////////////////////////////
procedure TListOfDocuments.Doc2ADO(Document: TDocument; DataSet:
  TCustomADODataSet);
var //DataSet: TDataSet; {dbclient}
  //DataSet :TCustomADODataSet;//TADODataSet;//TCustomADODataSet
  //i: integer;
  j: integer;
  strTmp, strTmp2: string;
  slList: TStringList;
begin
  { TODO : Doc2ADO }
  DataSet.Active := true;
  slList := TStringList.Create;

  DataSet.Append;
  DataSet.FieldByName('FileName').AsString := Document.FileName;
  DataSet.FieldByName('description').AsString :=
    ChangeFileExt(ExtractFilename(Document.FileName), ' ');
  strTmp := '';
  DataSet.RecNo;
  DataSet.RecordCount; //
  DataSet.FieldByName('id_TypeOfDoc').AsInteger :=
    DM.qryDescription.FieldByName('id_TypeOfDoc').AsInteger;
  DataSet.FieldByName('id_TypeOfDoc').AsInteger :=
    DM.TypeOfDoc.FieldByName('id').AsInteger;
  DataSet.FieldByName('id').AsInteger;
  DM.qryDescription.FieldByName('id').AsInteger;
  DM.BLOB.FieldByName('id_Description').AsInteger;
  DM.BLOB.FieldByName('id').AsInteger;
  DM.tblDescription.FieldByName('id').AsInteger;
  {
      for j := 0 to Document.TablesOfContents.Count - 1 do // Iterate
      begin
        strTmp := strTmp + Document.TablesOfContents.Strings[j] + CRLF;
      end; // for
      if not (DataSet.State in [dsInsert, dsEdit]) then DataSet.Edit;
      DataSet.FieldByName('TablesOfContents').AsString := strTmp;
  }
  DataSet.Post;
  j := DM.qryDescription.FieldByName('id_TypeOfDoc').AsInteger; //
  //id_TypeOfDoc_NONE:=10;//
  if not (DataSet.State in [dsInsert, dsEdit]) then
    DataSet.Edit; //?

{$IFDEF BlobViaFile}
  File2BLOB(DM.BLOB, Document.FileName, 'BLOB');
{$ELSE}
  File2OleField(XMLForm.DBOleContainer1, DM.BLOB, DataSet, Document.FileName, 'BLOB');
{$ENDIF BlobViaFile}

  DataSet.RecNo;
  DataSet.RecordCount; //
  //DataSet.Close; DataSet.Open;
{
  DM.qryDescription.Close;
  DM.qryDescription.Open;
}
  //DM.TypeOfDoc.Close; DM.TypeOfDoc.Open;
  strTmp := '';
end; //Doc2ADO

{
procedure TListOfDocuments.Docs2CDS;
var
  ClientDataSet: TClientDataSet; //dbclient
  i: integer;
  j: integer;
  strTmp, strTmp2: string;
  slList: TStringList;
begin
  ClientDataSet := XMLForm.XMLFrame1.ClientDataSet1;
  ClientDataSet.Active := true;

  for i := 0 to ClientDataSet.RecordCount - 1 do
  begin
    ClientDataSet.Delete;
  end;

  slList := TStringList.Create;
  for i := 0 to Length(LOD.Documents) - 1 do
  begin
    ClientDataSet.Append;
    ClientDataSet.FieldByName('FileName').AsString := LOD.Documents[i].FileName;
    ClientDataSet.FieldByName('description').AsString :=
      ChangeFileExt(ExtractFilename(LOD.Documents[i].FileName), ' ');
    strTmp := '';
    RTF2BLOB(LOD.Documents[i].FileName, 'RTF');
    for j := 0 to LOD.Documents[i].TablesOfContents.Count - 1 do // Iterate
    begin
      strTmp := strTmp + LOD.Documents[i].TablesOfContents.Strings[j] + CRLF;
      ClientDataSet.FieldByName('TablesOfContents').AsString := strTmp;
    end; // for
  end; //for i := 0 to Length(Documents) -1 do
  strTmp := '';
  ClientDataSet.SaveToFile(
    ChangeFileExt(Application.ExeName, '.xml'),
    DBClient.dfXMLUTF8);
      // DBClient type TDataPacketFormat = (dfBinary, dfXML, dfXMLUTF8);
end;//Docs2CDS
}

{
procedure CreateCDSFile;
var
  ClientDataSet: TClientDataSet; //dbclient
begin
  ClientDataSet := XMLForm.XMLFrame1.ClientDataSet1;
  ClientDataSet.SaveToFile(
    ChangeFileExt(Application.ExeName, '.xml'),
    DBClient.dfXMLUTF8);  DBClient type TDataPacketFormat = (dfBinary, dfXML, dfXMLUTF8);
end;//CreateCDSFile
}

end.

