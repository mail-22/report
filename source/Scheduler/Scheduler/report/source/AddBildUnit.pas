unit AddBildUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPropertiesStore, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxMRUEdit,
  cxVGrid, cxDBVGrid, cxInplaceContainer, utility;

type
  TAddBildForm = class(TForm)
    cxprprtstr1: TcxPropertiesStore;
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    cxdbvrtclgrd1: TcxDBVerticalGrid;
    cxdbdtrwcxdbvrtclgrd1id: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow1: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow2: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow_FUN: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow4: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow5: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow6: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow7: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow8: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow9: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow10: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow11: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow12: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow13: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow14: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow15: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow16: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow17: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow18: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow19: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow20: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1C: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow21: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow22: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow23: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow24: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow25: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow26: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow27: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow28: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1rtf: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1sootvet: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow29: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow30: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow31: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow32: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1Region: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow33: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1DBEditorRow34: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1PprT: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1ZT: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1Et: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1P1: TcxDBEditorRow;
    cxdbdtrwcxdbvrtclgrd1P2: TcxDBEditorRow;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    AddBildFormResult :Integer;
  end;

var
  AddBildForm: TAddBildForm;

implementation

uses
  dmunit;

{$R *.dfm}

procedure TAddBildForm.btnCancelClick(Sender: TObject);
begin
   //ModalResult
   AddBildFormResult :=-1;
   AddBildForm.Close;
end;

procedure TAddBildForm.btnOKClick(Sender: TObject);
begin
   AddBildFormResult := +1;
   AddBildForm.Close;
end;

procedure TAddBildForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxprprtstr1.StoreTo(True);
end;

procedure TAddBildForm.FormCreate(Sender: TObject);
var
   MRUEdit_rubricator : string;
begin
    cxprprtstr1.StorageName:=ExtractFilePath(Application.ExeName) +    Self.Name +'.'+ 'cxprprtstr1.ini';
    if not FileExists(cxprprtstr1.StorageName) then begin
       cxprprtstr1.StoreTo(True);
    end
    else begin
      cxprprtstr1.RestoreFrom;
      cxprprtstr1.Active := True ;
    end;


 //MRU
  MRUEdit_rubricator :=ExtractFilePath(Application.ExeName) + Self.Name +'.'+ 'MRUEdit.rubricator_F.txt';
  MRUEdit_rubricator :=ExtractFilePath(Application.ExeName)                 + 'MRUEdit.rubricator_F.txt';
   //FormListOfBilding
  if FileExists1(MRUEdit_rubricator) then  begin   // проверить на наличие свойства MRU у поля !!!
    TcxMRUEditProperties(cxdbdtrwcxdbvrtclgrd1DBEditorRow_FUN.Properties.EditProperties).Items.LoadFromFile(MRUEdit_rubricator);
    TcxMRUEditProperties(cxdbdtrwcxdbvrtclgrd1DBEditorRow_FUN.Properties.EditProperties).Items.Text;
  end   // cxdbdtrwcxdbvrtclgrd1DBEditorRow3
  else
  begin
  end;


end;

end.
