unit seek;

interface
uses
  extctrls, forms, db, JvDBLookup, classes, Controls, ADOdb, Sysutils;

type
  TTypeDataSet = (tdTADODataSet, tdTADOQuery);

type
  TSeek = class(TObject)
  private
    TypeDataSet :TTypeDataSet;
    //Form: TForm; //owner
    //tag: Longint;
    Panel: TPanel;
    //DataSet: TCustomADODataSet;
    //DataSet: TADODataSet;
    ADODataSet : TADODataSet;
    ADOQuery : TADOQuery;

    Select: string;
    F: array of string;
    numF: integer;
    SQLStr: string;
    Where0: string;
    A :Array of TJvDBLookupCombo;
    S :Array of TJvDBLookupCombo;
  protected
    procedure Init(aPanel: TPanel; aSelect: string; aWhere0: string);
    procedure MakeSql(SQLStr: string);
    procedure DataSetClose;
    procedure DataSetOpen;
  public
    strDisplayEmpty : string;
    constructor Create(aPanel: TPanel; aADODataSet: TADODataSet; aSelect: string; aWhere0: string); overload;//override; //overload; virtual;
    constructor Create(aPanel: TPanel; aADOQuery: TADOQuery; aSelect: string; aWhere0: string);   overload;//override; //overload; virtual;
    destructor  Destroy; override;
    procedure seek;
  end;

const
  ap: string = ''''; { просто апостроф }

implementation

//{ TFind }

uses
  Graphics;//Graphics //.clMaroon
////////////////////////////////////////////////////////////////////////////////
//S := TSeek.create(search_f_drawings_Form, FindPanel, dmDraw.qrDraw, dmDraw.qrDraw.SQL.Text, 0);
constructor TSeek.Create(aPanel: TPanel; aADODataSet: TADODataSet; aSelect: string; aWhere0: string);
begin
  TypeDataSet := tdTADODataSet;
  ADODataSet := aADODataSet;
  ADOQuery := nil;
  Init(aPanel, aSelect, aWhere0);
end;

////////////////////////////////////////////////////////////////////////////////
constructor TSeek.Create(aPanel: TPanel; aADOQuery: TADOQuery; aSelect: string; aWhere0: string);
begin
  TypeDataSet := tdTADOQuery;
  ADODataSet := nil;
  ADOQuery := aADOQuery;
  Init(aPanel, aSelect, aWhere0);
end;

////////////////////////////////////////////////////////////////////////////////
procedure TSeek.Init(aPanel: TPanel; aSelect: string; aWhere0: string);
var
  i: integer; //tmp:integer;
  RxDBLookupCombo:TJvDBLookupCombo;
  //c: TComponent; //
  c: TControl;
  l: TJvDBLookupCombo;
begin
  //Form := aForm;
  Panel := aPanel;
  //tag := atag;
  Where0 := aWhere0;
  Select := TrimRight(aSelect); //Select.len;

  if Select[Length(Select)] =';' then
  begin
    Select[Length(Select)] := ' '; //убрать ';'
  end
  else
  begin
  end;
  Select := Select + ' ';

  //for i := 0 to Panel.Owner.ComponentCount - 1 do
  for i := 0 to Panel.ControlCount - 1 do
    begin
      //c := Panel.Owner.Components[i];
      c := Panel.Controls[i];
      if c is TJvDBLookupCombo then
      begin
        l := TJvDBLookupCombo(c);
        RxDBLookupCombo := TJvDBLookupCombo.Create(nil);
        //RxDBLookupCombo.Assign(l);
        RxDBLookupCombo.DataSource := l.DataSource;
        RxDBLookupCombo.DataField := l.DataField;

        SetLength(A, Length(A) + 1);
        A[High(A)] := RxDBLookupCombo;

        SetLength(S, Length(S) + 1);
        S[High(S)] := l;
        l.DataSource := nil;
        l.DataField := '';
        l.DisplayEmpty := strDisplayEmpty;//Graphics.clMaroon;//Graphics
      end; //if c is TJvDBLookupCombo
    end; //for
end;

procedure TSeek.seek;
var
  i: integer; //tmp:integer;
  c: TComponent; //Controls
  l: TJvDBLookupCombo;
  first: boolean;
  tmpCursor: TCursor;
  WHERE: string;
  apostrophize: boolean;
  DataType: TFieldType;
  strTmp: string;
begin
  tmpCursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; // crMyCursor;
  SQLStr := '';
  first := true;
  apostrophize := false;
  try
    //DataSet.DisableControls;
    for i := Low(A) to High(A) do //i: Integer;
    begin
      if (S[i].Value <> '') then
      begin
        if first then
        begin
          first := false;
          SQLStr := SQLStr + 'WHERE ';
        end
        else
        begin
          SQLStr := SQLStr + ' AND ';
        end;
        DataType := S[i].LookupSource.DataSet.FieldByName(S[i].LookupField).DataType;
        //l.DataField; l.DisplayValue;  l.LookupDisplay; l.LookupField; l.Value;

        case S[i].LookupSource.DataSet.FieldByName(S[i].LookupField).DataType of
          ftString, ftWideString: apostrophize := true;
        else
          apostrophize := false;
        end; //case
        if apostrophize then
          SQLStr := SQLStr + A[i].DataField + ' = ' + ap + S[i].Value + ap
        else
          SQLStr := SQLStr + A[i].DataField + ' = ' + S[i].Value;
      end;
    end;
    DataSetClose; //CommandType := cmdText;
    //DataSet.CommandText.Clear;
    if not(Where0 = '') then
    begin
      strTmp := Where0;
      Delete(strTmp,1,5);
      if not(SQLStr = '') then
      begin
        SQLStr := SQLStr +#13+#10+ 'AND';
      end
      else
      begin
        SQLStr := SQLStr +#13+#10+ 'WHERE ';
      end;
      SQLStr := SQLStr +#13+#10+ strTmp;
    end
    else
    begin
      SQLStr := SQLStr +#13+#10+ 'AND' +#13+#10+ Where0;
    end;

    MakeSql(Select +#13+#10+ SQLStr);// + ';'
  finally
    //DataSet.EnableControls;
    //ADOQuery.open;
    DataSetOpen;
    //DataSet.Refresh; //?
    Screen.Cursor := tmpCursor;
  end; //try
end; //exec

////////////////////////////////////////////////////////////////////////////
procedure TSeek.MakeSql(SQLStr: string);
begin
  case TypeDataSet of
    tdTADOQuery: ADOQuery.SQL.Text := SQLStr;
    tdTADODataSet: ADODataSet.CommandText := SQLStr;
  else ;
  end;
end;

procedure TSeek.DataSetClose;
begin
  case TypeDataSet of
    tdTADOQuery: ADOQuery.Close;
    tdTADODataSet: ADODataSet.Close;
  else ;
  end;
end;

procedure TSeek.DataSetOpen;
begin
  case TypeDataSet of
    tdTADOQuery: ADOQuery.Open;
    tdTADODataSet: ADODataSet.Open;
  else ;
  end;
end;

destructor TSeek.Destroy;
begin
  inherited;
end;

end.

