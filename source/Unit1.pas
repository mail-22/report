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
    FMaxUsedRows : integer; //максимальное количество используемых строк в компоненте
    FMaxUsedCols : integer; //максимальное количество столбцов в компоненте
    FWordTableCell : TWordTableCells;//массив €чеек компонента
Е
    procedure GetTable;//процедура считывает некоторые свойства €чеек таблицы Word в запись FWordTableCell
    procedure CalcWordTableProp;//процедура обрабатывает считанные данные
  public
    { Public declarations }
  end;

///////////////////////////////////////
TWordTableCell = record
   Merged : boolean;//индикатор объединенности €чеек
   VertCellMerged : boolean;
   PrevMerCol : integer;
   NextMerCol : integer;
   EndMerRow : integer;
   EndMerCol : integer;
   CellWidth : single;//ширина €чейки
   CellHeight : single;
   TableLeft : single;
   Text : OleVariant;//содержимое €чейки.   сожалению, только текст.
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
