unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj;

type
  TForm1 = class(TForm)
  private

  protected
    WApp : WordApplication;
    FTable : Table;
    FMaxUsedRows : integer; //������������ ���������� ������������ ����� � ����������
    FMaxUsedCols : integer; //������������ ���������� �������� � ����������
    FWordTableCell : TWordTableCells;//������ ����� ����������
�
    procedure GetTable;//��������� ��������� ��������� �������� ����� ������� Word � ������ FWordTableCell
    procedure CalcWordTableProp;//��������� ������������ ��������� ������
  public
    { Public declarations }
  end;

///////////////////////////////////////
TWordTableCell = record
   Merged : boolean;//��������� �������������� �����
   VertCellMerged : boolean;
   PrevMerCol : integer;
   NextMerCol : integer;
   EndMerRow : integer;
   EndMerCol : integer;
   CellWidth : single;//������ ������
   CellHeight : single;
   TableLeft : single;
   Text : OleVariant;//���������� ������. � ���������, ������ �����.
end;

TWordTableCells = array of array of TWordTableCell;

///////////////////////////
var
  Form1: TForm1;

  XL: Variant;
  Doc: Variant;

  { input }
  DocFileName:string;

implementation

{$R *.dfm}

procedure R1();
var tmpBoolean :Boolean;
begin



end;  

end.
