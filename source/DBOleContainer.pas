unit DBOleContainer;

interface
{$I svs.INC}

//{*$DEFINE BlobViaFile}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OleCtnrs, DB, DBCtrls;

type
  TDBOleContainer = class(TOleContainer)
  private
    FDataLink: TFieldDataLink;
    FAutoDisplay: Boolean;
    FFocused: Boolean;
    FObjectLoaded: Boolean;
    FDummy: integer;
    FFromActivate: boolean;
    procedure DataChange(Sender: TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetReadOnly: Boolean;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure SetAutoDisplay(Value: Boolean);
    procedure SetFocused(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message
      WM_LBUTTONDBLCLK;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure DoDeactivate(Sender: TObject);
  protected
    procedure Loaded; override;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure LoadObject; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Field: TField read GetField;
    function InsertObjectDialog: boolean;
    procedure DestroyObject;
  published
    { Published declarations }
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DataField: string read GetDataField write SetDataField;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly default False;
    property AutoDisplay: Boolean read FAutoDisplay write SetAutoDisplay default
      True;
    property AutoActivate: integer read FDummy;
  end;

procedure Register;

implementation

uses
  JvJVCLUtils; //VCLUtils;

var
  TempDirName :string;

{$IFDEF BlobViaFile}
//uses dmUnit;
{$ENDIF BlobViaFile}

//{$DEFINE name}
{$IFDEF Signature}
//const  Signature: integer = -525465623;
{$ELSE}
{$ENDIF}

constructor TDBOLEContainer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  inherited AutoActivate := aaDoubleClick;
  ControlStyle := ControlStyle + [csReplicatable];
  FAutoDisplay := True;
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := UpdateData;
  OnDeactivate := DoDeactivate;
end;

destructor TDBOLEContainer.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  inherited Destroy;
end;

procedure TDBOLEContainer.Loaded;
begin
  inherited Loaded;
  if (csDesigning in ComponentState) then
    DataChange(Self);
end;

procedure TDBOLEContainer.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then
    DataSource := nil;
end;

procedure TDBOLEContainer.DoDeactivate(Sender: TObject);
begin
  if Modified then
  begin
    if not FDataLink.Editing then
      FDataLink.Edit;
    FDataLink.Modified;
  end;
end;

function TDBOLEContainer.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TDBOLEContainer.SetDataSource(Value: TDataSource);
var
  tmp: string;
begin
  tmp := Value.Name;
  FDataLink.DataSource := Value;
  if Value <> nil then
    Value.FreeNotification(Self);
end;

function TDBOLEContainer.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TDBOLEContainer.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TDBOLEContainer.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TDBOLEContainer.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
  if Value then
    inherited AutoActivate := aaDoubleClick
  else
    inherited AutoActivate := aaManual;
end;

function TDBOLEContainer.GetField: TField;
begin
  Result := FDataLink.Field;
end;

////////////////////////////////////////////////////////
// LoadObject
// создаем ADOBlobStream из BlobField
// из ADOBlobStream в MemoryStream
// из MemoryStream в OLEContainer
procedure TDBOLEContainer.LoadObject;
var
  Stream: TMemoryStream;
  N: integer;
  tmp: string;
  tmpFileName: string;
  tmpCursor: TCursor;
begin
  if not FObjectLoaded and Assigned(FDataLink.Field) and FDataLink.Field.IsBlob then
  begin
    inherited DestroyObject;
    Stream := nil;
    try
      Stream := TMemoryStream.Create;
        {Creation memory stream and saving content from database}
      tmp := FDataLink.FieldName;
      TBlobField(FDataLink.Field).SaveToStream(Stream);
      Stream.Seek(0, soFromBeginning);
{$IFDEF Signature}
      if Stream.Size > 4 then
      begin {if size<4 then bad field - even though signature was not entered}
        Stream.Read(N, sizeof(N));
        if N = Signature then
          LoadFromStream(Stream);
      end;
{$ELSE}

{$IFDEF BlobViaFile}
      tmpCursor := Screen.Cursor;
      Screen.Cursor := crSQLWait; // crMyCursor;
      tmpFileName := TempDirName + '\' + 'tmp.doc';
                   //+ FDataLink.DataSource.DataSet.FieldByName('FileName').AsString;
      tmpFileName := TempDirName +'\'+ FDataLink.DataSource.DataSet.FieldByName('FileName').AsString;
      try
        if not FDataLink.DataSource.DataSet.FieldByName('BLOB').IsNull and
           not FDataLink.DataSource.DataSet.FieldByName(FDataLink.FieldName).IsNull then
        begin
          //DeleteFile(tmpFileName);
          if not FileExists(tmpFileName) then
          begin
            TBlobField(FDataLink.DataSource.DataSet.FieldByName(FDataLink.FieldName)).SaveToFile(tmpFileName); //Application.Minimize;
          end;
          CreateLinkToFile(tmpFileName, false);
          //DeleteFile(tmpFileName);
          //aOleContainer.CreateObjectFromFile(tmpFileName, False);
          //aOleContainer.DoVerb(1);   //aOleContainer.DoVerb(ovShow);   //aOleContainer.DoVerb(ovPrimary);
        end;
      finally
        Screen.Cursor := tmpCursor;
      end;//try
{$ELSE}
      if not FDataLink.DataSource.DataSet.FieldByName(FDataLink.FieldName).IsNull then
      begin  // из MemoryStream в OLEContainer
        try
          Stream.Position:=0;//
          LoadFromStream(Stream);//---
        except
          on E: exception do
          begin
            MessageDlg('LoadFromStream'+#13+'', mtError, [mbOK], 0);
          end; //
        end;
      end; //not IsNull
{$ENDIF BlobViaFile}

{$ENDIF Signature}
      if Assigned(Stream) then
      begin
        Stream.Free;
        Stream := nil;
      end;
      FObjectLoaded := True;
    except
      on E: exception do
      begin
        if Assigned(Stream) then
          Stream.Free;
        MessageDlg(E.Message, mtError, [mbOK], 0);
      end;
    end;
    Modified := False;
  end;//FObjectLoaded
end;//FObjectLoaded

procedure TDBOLEContainer.DataChange(Sender: TObject);
begin
  if (FDataLink.Field <> nil) then
    if FDataLink.Field.IsBlob then
    begin
      if FAutoDisplay or (FDataLink.Editing and FObjectLoaded) then
      begin
        FObjectLoaded := False;
        LoadObject;
      end
      else
      begin
        FObjectLoaded := False;
      end;
    end;
  if HandleAllocated then
    RedrawWindow(Handle, nil, 0, RDW_INVALIDATE or RDW_ERASE or RDW_FRAME);
end;

/////////////////////////////////////////////////////////
// UpdateData
// »з OLEContainer в MemoryStream
// создаем ADOBlobStream из BlobField
// в ADOBlobStream из  MemoryStream
procedure TDBOLEContainer.UpdateData(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  {Read OLE data from container}
  if FDataLink.Field.IsBlob then
  begin
    Stream := nil;
    try
      Stream := TMemoryStream.Create;
{$IFDEF Signature}
      Stream.Write(Signature, sizeof(Signature));
{$ELSE}
{$ENDIF}
      if Assigned(OleObjectInterface) then
        SaveToStream(Stream);
      Stream.Seek(0, soFromBeginning);
      TBlobField(FDataLink.Field).LoadFromStream(Stream);
      if Assigned(Stream) then
      begin
        Stream.Free;
        Stream := nil;
      end;
      Modified := False;
    except
      on E: exception do
      begin
        if Assigned(Stream) then
          Stream.Free;
        //MessageDlg(E.Message, mtError, [mbOK], 0); //SVS
      end;
    end;
  end;
end;

procedure TDBOLEContainer.SetFocused(Value: Boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
    if not Assigned(FDataLink.Field) or not FDataLink.Field.IsBlob then
      FDataLink.Reset;
  end;
end;

procedure TDBOLEContainer.CMEnter(var Message: TCMEnter);
begin
  if FFromActivate then
  begin
    inherited;
    Exit;
  end;
  SetFocused(True);
  inherited;
end;

procedure TDBOLEContainer.CMExit(var Message: TCMExit);
begin
  if FFromActivate then
  begin
    inherited;
    Exit;
  end;
  try
    FDataLink.UpdateRecord;
  except
    SetFocus;
    raise;
  end;
  SetFocused(False);
  inherited;
end;

procedure TDBOLEContainer.SetAutoDisplay(Value: Boolean);
begin
  if FAutoDisplay <> Value then
  begin
    FAutoDisplay := Value;
    if Value then
      LoadObject;
  end;
end;

procedure TDBOLEContainer.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  if Assigned(OleObjectInterface) then
  try
    FFromActivate := True;
    FDataLink.Edit;
    inherited;
    FDataLink.Modified;
  finally
    FFromActivate := False;
  end
  else
  try
    FFromActivate := True;
    FObjectLoaded := True;
    FDataLink.Edit;
    if inherited InsertObjectDialog then
      FDataLink.Modified;
  finally
    FFromActivate := False;
  end;
end;

procedure TDBOLEContainer.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

function TDBOLEContainer.InsertObjectDialog: boolean;
begin
  Result := False;
  try
    FFromActivate := True;
    FObjectLoaded := True;
    FDataLink.Edit;
    Result := inherited InsertObjectDialog;
    if Result then
      FDataLink.Modified;
  finally
    FFromActivate := False;
  end;
end;

procedure TDBOleContainer.DestroyObject;
begin
  FDataLink.Edit;
  inherited DestroyObject;
  FDataLink.Modified;
  Invalidate;
end;

procedure Register;
begin
  RegisterComponents('Util', [TDBOleContainer]);
end;

initialization
{$IFDEF BlobViaFile}
  TempDirName := VCLUtils.GetEnvVar('TMP'); //  JvJVCLUtils; //VCLUtils;
  if TempDirName = '' then TempDirName := 'c:\tmp';
  TempDirName := TempDirName +'\'+ 'svs_tmp\';
  //TempDirName := ExtractFilePath(Application.ExeName) + 'tmp'; // + '\';
  //MkDir(TempDirName);
  ForceDirectories(TempDirName);
{$ENDIF BlobViaFile}

end.
