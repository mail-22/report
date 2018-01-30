unit DbUtil;

interface
{$I SVS.INC}

uses
  ADODB
  , JvJCLUtils
  , Classes
  , StdCtrls //TComboBox
  //, DBCtrlsEh //TDBComboBoxEh
  , Forms
  ,DB, DBCtrls
  ;

procedure CompactDb(ADOConnection: TADOConnection);
procedure _SetReadOnly(Obj: TComponent; Value: boolean);
//procedure FillComboBox(ComboBox: TDBComboBoxEh; dataset: TAdoDataSet; FieldName: string);
procedure canedit(can: Boolean; EnterForm: TForm);
procedure RefreshDataSet(DataSet: TDataSet; F: Boolean = true);
procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);

implementation

uses ComObj, Variants, SysUtils, windows, Dialogs, TypInfo, QStrings
  , Controls, utility
  ;

//TADOConnection.ConnectionString

//Q_StrTok
type
  TCharSet = set of Char;

  ///////////////////////////////////////////////////////////////////////////////

procedure CompactDb(ADOConnection: TADOConnection);
var
  V: Variant;
  SourceDB, TargetDB: string; //: Variant;
  NameSourceDB, NameTargetDB, strProvider: string;
  fullNameNameSourceDB, fullNameNameTargetDB, fullNameNameBakDB: string;
  r: Boolean;
  tmp: string;
  WordDelims: TCharSet; //JvJCLUtils;
  ConnectionString: string;
  Password: string;
  Data_Source: string;
  User_ID: string;
  StringList: TStringList;
  i: Integer;
begin
  ConnectionString := ADOConnection.ConnectionString;
  if not (0 = Pos('.udl', ConnectionString)) then
  begin
    MessageDlg('подключение через UDL ...', mtInformation, [mbOK], 0);
    Exit;
  end;

  StringList := TStringList.Create;
  StrBreakApart(ConnectionString, ';', StringList);
  i := StringList.IndexOfName('Provider');
  strProvider := StringList[i];
  i := StringList.IndexOfName('Password');
  if i = -1 then
    Password := ''
  else
    Password := StringList[i];
  i := StringList.IndexOfName('Data Source');
  Data_Source := StringList[i];
  i := StringList.IndexOfName('User ID');
  User_ID := StringList[i];

  WordDelims := ['='];
  fullNameNameSourceDB := ExtractWord(2, Data_Source, WordDelims);
    //NameSourceDB := 'ci.mdb'; NameTargetDB := 'ci2.mdb';fullNameNameSourceDB := ExtractFilePath(Application.ExeName) + 'Data\' + NameSourceDB;
  fullNameNameTargetDB := ChangeFileExt(fullNameNameSourceDB, '.NEW');
  fullNameNameBakDB := ChangeFileExt(fullNameNameSourceDB, '.BAK');

  SourceDB := strProvider + ';' + 'Data Source=' + fullNameNameSourceDB + ';' + User_ID +
    ';' + Password + ';';
  TargetDB := strProvider + ';' + 'Data Source=' + fullNameNameTargetDB + ';' + User_ID +
    ';' + Password + ';';

  //DiskFree; //?? надобы проверить
  try
    try
      ADOConnection.Close;
      ADOConnection.connected := False; //?
      CopyFile(PChar(fullNameNameSourceDB), PChar(fullNameNameBakDB), False);
      V := CreateOleObject('jro.JetEngine');

      r := DeleteFile(PChar(fullNameNameTargetDB));
      V.CompactDatabase(SourceDB, TargetDB);
      //Исходная БД - должна быть
      //'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\\m.mdb;',
      //Сжатая БД - не должно быть, будет создана
      //'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=d:\\m2.mdb;' );
      CopyFile(PChar(fullNameNameTargetDB), PChar(fullNameNameSourceDB), False);
      r := DeleteFile(PChar(fullNameNameTargetDB));
    finally
      V := Unassigned;
      ADOConnection.Open;
      ADOConnection.Connected := True; //?
    end;
  except
  else
    ShowMessage('procedure CompactDb: ' + #13#10 + Exception(ExceptObject).message);
  end;
  //надобы открыть таблицы  //OpenTables;
end; //CompactDb

///////////////////////////////////////////////////////////////////////////////
procedure Button1Click(Sender: TObject);
var
  i: integer;
  f: boolean;
  Form: TForm;
begin
  //f := CheckBox1.Checked; // побежали по всем компоенентам
  for i := 0 to Form.ComponentCount - 1 do
  begin
    _SetReadOnly(Form.Components[i], f);
  end;
end;

///////////////////////////////////////////////////////////////////////////////
// добавляет (!!!) в ComboBox все строки из поля FieldName таблицы DataSet
//procedure FillComboBox(ComboBox :TComboBox; DataSet :TAdoDataSet; FieldName :string);
{procedure FillComboBox(ComboBox: TDBComboBoxEh; DataSet: TAdoDataSet; FieldName: string);
var
  strTmp: string;
begin
  while not dataset.Eof do
  begin
    strTmp := dataset.FieldByName(FieldName).AsString;
    ComboBox.Items.Add(strTmp);
    dataset.Next;
  end;
end;
}
///////////////////////////////////////////////////////////////////////////////
procedure _SetReadOnly(Obj: TComponent; Value: boolean);
var
  PropInfo: PPropInfo;
  valueInteger: integer;
  i: Integer;
begin
  if Value then
    valueInteger := 1
  else
    valueInteger := 0;
  if not (Obj.ClassInfo = nil) then
  begin
    PropInfo := GetPropInfo(Obj.ClassInfo, 'ReadOnly');
    if PropInfo <> nil then
    begin
      case PropInfo^.PropType^.Kind of
        tkEnumeration: SetOrdProp(obj, PropInfo, valueInteger);
      end; // case
    end;
  end;
end; //SetReadOnly

///////////////////////////////////////////////////////////////////////////////
procedure canedit(can: Boolean; EnterForm: TForm);
var
  tmp: integer;
  c: TComponent; //Controls
  tmpCustomEdit: TCustomEdit;
  tmpControl: TControl;

  i: integer;
  ReadOnly: Boolean;
  Form: TForm;
begin
  Form := EnterForm;
  ReadOnly := not can;
  for i := 0 to Form.ComponentCount - 1 do
  begin
    DbUtil._SetReadOnly(Form.Components[i], ReadOnly);
  end;
end; //canedit

//uses DB;
procedure RefreshDataSet(DataSet: TDataSet; F: boolean);
var
  B: TBookMark;
begin
  if DataSet.Active then
  begin
    B := DataSet.GetBookMark;
    try
      DataSet.Close;
      //Unprepare; {Если не поставить этого, то если используется select SP, то иногда последующая операция вешает сервер. Кто скажет почему?!}
      DataSet.Active := True;
      if F then
      begin
        try
          DataSet.GotoBookMark(B)
        except
          on EDatabaseError do
            DataSet.First;
          on EOleException do
            DataSet.First;
          else DataSet.First;
        end
      end
      else
        DataSet.First;
    finally
      DataSet.FreeBookmark(B);
    end;
  end; //if DataSet.Active
end; //RefreshDataSet

procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
var
  BtnName: string;
  DataSet :TDataSet;
begin
  DataSet :=  (Sender as TDBNavigator).DataSource.DataSet;
  case Button of
    nbFirst  : BtnName := 'nbFirst';
    nbPrior  : BtnName := 'nbPrior';
    nbNext   :
      begin
        BtnName := 'nbNext';
        DataSet.DisableControls;
        DataSet.EnableControls;
      end;
    nbLast   : BtnName := 'nbLast';
    nbInsert : BtnName := 'nbInsert';
    nbDelete : BtnName := 'nbDelete';
    nbEdit   : BtnName := 'nbEdit';
    nbPost   : BtnName := 'nbPost';
    nbCancel : BtnName := 'nbCancel';
    nbRefresh: BtnName := 'nbRefresh';
  end;
end;

end.

case  of
  : ;
  : ;
else ;
end;

