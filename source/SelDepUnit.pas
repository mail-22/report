unit SelDepUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs
  , dmunit, Unit_BaseForm, DB, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, Grids, DBGrids, StdCtrls, cxListBox, cxDBEdit
  , ExtCtrls, cxPropertiesStore  , utility     , CommonUnit, cxClasses
   ;

type
  TSelDepForm = class(TBaseForm)
    ds1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    dbgrd1: TDBGrid;
    pnl1: TPanel;
    mmo1: TMemo;
    cxprprtstr21: TcxPropertiesStore;
    pnl2: TPanel;
    mmo2: TMemo;
    openDialog: TOpenDialog;
    edt1: TEdit;
    btnOpen: TButton;
    procedure btnOpenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

procedure SelDepForm_Show;

var
  SelDepForm: TSelDepForm;

  DepDefaultID :integer;
  DepDefaultName :string;

implementation

{$R *.dfm}


//- �����  �������� department �� ���������
procedure SelDepForm_Show;
var
  strTmp:string;
begin
  if (SelDepForm = nil) then
     Application.CreateForm(TSelDepForm, SelDepForm);
  SelDepForm.ShowModal;
end;

procedure TSelDepForm.btnOpenClick(Sender: TObject);
begin
  inherited;

  // �������� ������� OpenDialog - ���������� �� ���� ���������� OpenDialog
  //openDialog := TOpenDialog.Create(self);

  // ��������� ���������� ��������, ����� ������� ��� �������
  openDialog.InitialDir := GetCurrentDir;

  // ������ ����������� ������������ ����� ����� ���� �������
  openDialog.Options := [ofFileMustExist];

  // ��������� ������� ������ .dpr � .pas �����
  openDialog.Filter := '  files|*.*|  files|*.mdb';
    openDialog.Filter := 'mdb files (*.mdb)|*.mdb';

  // ����� ������ ������� ��� ��������� ��� �������
  //openDialog.FilterIndex := 2;

  // ����� ������ �������� �����
  if openDialog.Execute
  then begin
    edt1.text := DM.strConnection_Get;
  dm.strConnection_Set ( openDialog.FileName);
  IniFile.WriteString('ConnectionString', 'ConnectionString', dm.strConnection_Get);
  edt1.text := dm.strConnection_Get;
  end
  else begin 
   Application.MessageBox('�������� ����� �����������:', ' ', MB_OK + MB_ICONWARNING + MB_TOPMOST);
  end;


  // ������������ �������
  //openDialog.Free;
  
end;

procedure TSelDepForm.FormCreate(Sender: TObject);
var
  strTmp:string; res:boolean;
begin
  inherited;
  DM.Get_Dep;
  edt1.text := dm.strConnection_Get;
end;

procedure TSelDepForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  strTmp:string;
begin
  inherited;

  dm.Set_Dep;
end;

procedure TSelDepForm.FormShow(Sender: TObject);
var
  strTmp:string;
begin
  inherited;

  DBLookupComboBox1.KeyValue := DBLookupComboBox1.ListSource.DataSet.FieldByName(DBLookupComboBox1.KeyField).Value;
  dm.Set_Dep;
end;

end.
