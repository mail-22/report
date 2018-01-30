unit uCxGridToMemTable;

interface

uses
  cxGridDBTableView, cxGridCustomTableView, dxmdaset, DB, Classes, dxCore;

Type
 TcxGridToMemTable = class(TObject)
 private
    fGrid: TcxCustomGridTableView;
    fMemData: TdxMemData;



    function  GetValidName(AOwner: TComponent; AName: string): string;
    procedure LoadAllRecords();
    procedure LoadSelectedRecords();
 protected

 public
   constructor Create(grid1: TcxCustomGridTableView; memdata1: TdxMemData = nil);
   destructor Destroy; override;


   procedure CreateFields();
   procedure LoadData(bOnlySelected: boolean);

 end;

implementation

uses
  SysUtils, Dialogs, cxGridDBBandedTableView, cxCustomData;

{ TcxGridToMemTable }

constructor TcxGridToMemTable.Create(grid1: TcxCustomGridTableView; memdata1: TdxMemData = nil);
begin

  //если не передаём в класс memdata1, то создаём его сами
  if memdata1 = nil then
     fMemData := TdxMemData.Create(nil)
  else
    fMemData := memdata1;


  fGrid := grid1;
end;

destructor TcxGridToMemTable.Destroy;
begin
  if fMemData <> nil then FreeAndNil(fMemData);

  inherited;
end;

function TcxGridToMemTable.GetValidName(AOwner: TComponent;
  AName: string): string;
var
  I: Integer;
begin
//фунцию выдрал из модуля dxmdaset.pas

  for I := 1 to Length(AName) do
    if not (dxCharInSet(AName[I], ['A'..'z']) or dxCharInSet(AName[I], ['0'..'9'])) then
      AName[I] := '_';
  if dxCharInSet(AName[1], ['0'..'9']) then
    AName := '_' + AName;

  Result := AName;

  I := 0;
  while AOwner.FindComponent(Result) <> nil do
  begin
    Result := AName + IntToStr(I);
    Inc(I);
  end
end;

procedure TcxGridToMemTable.LoadAllRecords;
Var
 i, f: integer;
 FieldVal: Variant;
begin
  //загружаем только видимые записи, т.к. пользователь может отфильтровать некоторые записи
  fMemData.open;

  if fGrid is TcxGridDBBandedTableView then
    with TcxGridDBBandedTableView(fGrid) do
      for I := 0 to fGrid.DataController.FilteredRecordCount - 1 do
        begin
          fMemData.Append;
          for f := 0 to ColumnCount - 1 do
            if fMemData.FindField(columns[f].DataBinding.Field.FieldName) <> nil then
              begin
                FieldVal := DataController.Values[DataController.FilteredRecordIndex[i], columns[f].Index];
                fMemData.FieldByName(columns[f].DataBinding.Field.FieldName).Value :=  FieldVal;
              end;//for f := 0 to ColumnCount - 1 do
          fMemData.post;
        end;//for I := 0 to fGrid.DataController.FilteredRecordCount - 1 do

  if fGrid is TcxGridDBTableView then
    with TcxGridDBTableView(fGrid) do
      for I := 0 to fGrid.DataController.FilteredRecordCount - 1 do
        begin
          fMemData.Append;
          for f := 0 to ColumnCount - 1 do
            if fMemData.FindField(columns[f].DataBinding.Field.FieldName) <> nil then
              begin
                FieldVal := DataController.Values[DataController.FilteredRecordIndex[i], columns[f].Index];
                fMemData.FieldByName(columns[f].DataBinding.Field.FieldName).Value :=  FieldVal;
              end;//for f := 0 to ColumnCount - 1 do
          fMemData.post;
        end;//for I := 0 to fGrid.DataController.FilteredRecordCount - 1 do

end;

procedure TcxGridToMemTable.LoadData(bOnlySelected: boolean);
begin
  fMemData.Open;
  
  case bOnlySelected of
    True : LoadSelectedRecords;
    False: LoadAllRecords;
  end;

end;

procedure TcxGridToMemTable.LoadSelectedRecords;
Var
 i, f: integer;
 FieldVal: Variant;
 ARowIndex: Integer;
 ARowInfo:  TcxRowInfo;
begin
  //загружаем только видимые записи, т.к. пользователь может отфильтровать некоторые записи
  fMemData.open;

  if fGrid is TcxGridDBBandedTableView then
    with TcxGridDBBandedTableView(fGrid), TcxGridDBBandedTableView(fGrid).DataController do
        begin
          beginupdate;
          try
            for I := 0 to GetSelectedCount - 1 do
              begin
                ARowIndex := GetSelectedRowIndex(I);
                ARowInfo  := GetRowInfo(ARowIndex);
                if ARowInfo.Level < Groups.GroupingItemCount then
                  Continue
                else
                  begin

                    fMemData.Append;
                    for f := 0 to ColumnCount - 1 do
                      if fMemData.FindField(columns[f].DataBinding.Field.FieldName) <> nil then
                        begin
                          FieldVal := Values[ARowInfo.RecordIndex, columns[f].Index];
                          fMemData.FieldByName(columns[f].DataBinding.Field.FieldName).Value :=  FieldVal;
                        end;//for f := 0 to ColumnCount - 1 do
                    fMemData.post;


                  end;
              end;//for I := 0 to GetSelectedCount - 1 do
          finally
            endupdate;
          end;
        end;//with


  if fGrid is TcxGridDBTableView then
    with TcxGridDBTableView(fGrid), TcxGridDBTableView(fGrid).DataController do
        begin
          beginupdate;
          try
            for I := 0 to GetSelectedCount - 1 do
              begin
                ARowIndex := GetSelectedRowIndex(I);
                ARowInfo  := GetRowInfo(ARowIndex);
                if ARowInfo.Level < Groups.GroupingItemCount then
                  Continue
                else
                  begin

                    fMemData.Append;
                    for f := 0 to ColumnCount - 1 do
                      if fMemData.FindField(columns[f].DataBinding.Field.FieldName) <> nil then
                        begin
                          FieldVal := Values[ARowInfo.RecordIndex, columns[f].Index];
                          fMemData.FieldByName(columns[f].DataBinding.Field.FieldName).Value :=  FieldVal;
                        end;//for f := 0 to ColumnCount - 1 do
                    fMemData.post;


                  end;
              end;//for I := 0 to GetSelectedCount - 1 do
          finally
            endupdate;
          end;
        end;//with


end;

procedure TcxGridToMemTable.CreateFields();
Var
 i: integer;
 AField: TField;
begin
  fMemData.close;
  //удаляем все поля, чтобы создать их заново, если есть уже созданные
  with fMemData do
    while FieldCount > 1 do
      Fields[FieldCount - 1].Free;


  if fGrid is TcxGridDBBandedTableView then
    with TcxGridDBBandedTableView(fGrid) do
      begin
        for i := 0 to ColumnCount - 1 do
          if Columns[i].Visible then
            with TField.Create(fMemData) do
              begin
                AField              := DefaultFieldClasses[Columns[i].DataBinding.Field.DataType].Create(fMemData);
                AField.Name         := GetValidName(fMemData, Name + Columns[i].DataBinding.Field.FieldName);

                AField.DisplayLabel := Columns[i].DataBinding.Field.DisplayLabel;
                AField.DisplayWidth := Columns[i].DataBinding.Field.DisplayWidth;
                AField.EditMask     := Columns[i].DataBinding.Field.EditMask;
                AField.FieldName    := Columns[i].DataBinding.Field.FieldName;
                AField.Visible      := Columns[i].DataBinding.Field.Visible;
                AField.FieldKind    := Columns[i].DataBinding.Field.FieldKind;
                AField.DataSet      := fMemData;
              end;//with TField.Create(fMemData) do
              
        fMemData.FieldDefs.Update;
      end;//with TcxGridDBTableView(fGrid) do


  if fGrid is TcxGridDBTableView then
    with TcxGridDBTableView(fGrid) do
      begin
        for i := 0 to ColumnCount - 1 do
          if Columns[i].Visible then
            with TField.Create(fMemData) do
              begin
                AField              := DefaultFieldClasses[Columns[i].DataBinding.Field.DataType].Create(fMemData);
                AField.Name         := GetValidName(fMemData, Name + Columns[i].DataBinding.Field.FieldName);

                AField.DisplayLabel := Columns[i].DataBinding.Field.DisplayLabel;
                AField.DisplayWidth := Columns[i].DataBinding.Field.DisplayWidth;
                AField.EditMask     := Columns[i].DataBinding.Field.EditMask;
                AField.FieldName    := Columns[i].DataBinding.Field.FieldName;
                AField.Visible      := Columns[i].DataBinding.Field.Visible;
                AField.FieldKind    := Columns[i].DataBinding.Field.FieldKind;
                AField.DataSet      := fMemData;
              end;//with TField.Create(fMemData) do
              
        fMemData.FieldDefs.Update;
      end;//with TcxGridDBTableView(fGrid) do
end;


end.







Использование, например с EMS Advanced Data Export
procedure TfmExport.actExport2Execute(Sender: TObject);
Var
 cxGridToMemTable: TcxGridToMemTable;
begin
  if not CanExportData(True) then exit;

  //Подставляем гирид, который выбрал пользователь()
  case cxGrid1.ActiveLevel.Index of
    0: cxGridToMemTable := TcxGridToMemTable.Create(dbgApart, memExport);
    1: cxGridToMemTable := TcxGridToMemTable.Create(dbgArenda, memExport);
    2: cxGridToMemTable := TcxGridToMemTable.Create(dbgOffices, memExport);
  end;

  cxGridToMemTable.CreateFields;//создаём только видимые поля грида
  cxGridToMemTable.LoadData(False);//загружаем данные, все или только выделенные записи, False - все

  //включаем восстновление/сохранение настроек экспорта
  dmExport.QExport4Dialog1.AutoLoadOptions := true;
  dmExport.QExport4Dialog1.AutoSaveOptions := true;

  //вызываем диалог экспорта
  dmExport.QExport4Dialog1.Execute;
end;


