unit DisplayLabel;
{$include svs.inc}

interface

uses
  db,
  Forms,
  SysUtils, IniFiles;

type
 TDL = class(TObject)
  private
    fIniFile :TIniFile;
    fDataSet :TDataSet;
  protected
    fExt:string;
    procedure work;
  public
    fIniFileName :string;
    constructor Create(); //override;
    procedure Process(DataSet :TDataSet);
    destructor Destroy; override;
end;

implementation

constructor TDL.Create();
begin
  inherited;
  fExt := '.lds';
  fIniFileName := ChangeFileExt(Application.ExeName, fExt);
  fIniFile := TIniFile.Create(fIniFileName);
end;

destructor TDL.Destroy;
begin
  fIniFile.UpdateFile;
  fIniFile.Free;
  inherited;
end;

procedure TDL.Process(DataSet: TDataSet);
begin
  fDataSet:=DataSet;
  work;
end;

procedure TDL.work;
var
  i :integer;
  Section, Ident, Default, Value :string;
begin
  Section := fDataSet.Name;
  for i := 0 to fDataSet.FieldCount - 1 do begin
    Default := fDataSet.Fields[i].DisplayLabel;
    Ident   := fDataSet.Fields[i].FieldName;
    Value := fIniFile.ReadString(Section, Ident, Default);
    fDataSet.Fields[i].DisplayLabel:= Value;
    fIniFile.WriteString(Section, Ident, Value);
  end;
end;

end.
