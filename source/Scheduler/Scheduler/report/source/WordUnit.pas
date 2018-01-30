unit WordUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WordXP, OleServer, Grids, JvExGrids, JvStringGrid,
  JvgStringGrid
  , ComObj
  ;



type TGridRect = record
    case Integer of
      0: (Left, Top, Right, Bottom: Longint);
      1: (TopLeft, BottomRight: TGridCoord);
  end;



///////////////////////////////////////
type

  TWordTableCell = record
    Merged: boolean; //индикатор объединенности €чеек
    VertCellMerged: boolean;
    PrevMerCol: integer;
    NextMerCol: integer;
    EndMerRow: integer;
    EndMerCol: integer;
    CellWidth: single; //ширина €чейки
    CellHeight: single;
    TableLeft: single;
    Text: OleVariant; //содержимое €чейки.   сожалению, только текст.
  end;

  TWordTableCells = array of array of TWordTableCell;

///////////////////////////

type
  TWordForm = class(TForm)
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    WordFont1: TWordFont;
    WordParagraphFormat1: TWordParagraphFormat;
    MStringGrid1: TStringGrid;
    JvgStringGrid1: TJvgStringGrid;
    JvStringGrid1: TJvStringGrid;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private
  protected
    WApp: WordApplication;
    FTable: Table;
    FMaxUsedRows: integer; //максимальное количество используемых строк в компоненте
    FMaxUsedCols: integer; //максимальное количество столбцов в компоненте
    FWordTableCell: TWordTableCells; //массив €чеек компонента

    procedure GetTable; //процедура считывает некоторые свойства €чеек таблицы Word в запись FWordTableCell
    procedure CalcWordTableProp; //процедура обрабатывает считанные данные

/////////////////////////////
  public
    { Public declarations }
  end;


var
  WordForm: TWordForm;

  XL: Variant;
  Doc: Variant;

  { input }
  DocFileName: string;

//
  MSWord, Table: OLEVariant;
  iRows, iCols, iGridRows, jGridCols, iNumTables, iTableChosen: Integer;
  CellText: string;
  InputString: string;
//

implementation

uses Math;

{$R *.dfm}

procedure TWordForm.FormCreate(Sender: TObject);
var
  before: string;
  after: string;
  AWordDoc: string;
  ReadOnly: boolean;
  errCell: Boolean;
label StartHere;
begin
  exit;
  AWordDoc := 'Tablica ITOG.doc';
  AWordDoc := ExtractFilePath(Application.ExeName) + AWordDoc;
  if not FileExists(AWordDoc) then Exit;
{
  try
    MsWord := GetActiveOleObject('Word.Application');
  except
    try
      MsWord := CreateOleObject('Word.Application');
      MsWord.Visible := True;
    except
      Exception.Create('Error');
    end;
  end;
 }
  try
      MsWord := CreateOleObject('Word.Application');
      MsWord.Visible := True;
  except
      Exception.Create('Error');
  end;

  try
    MSWord.Visible := true; ReadOnly := true;
    MSWord.Documents.Open(AWordDoc, ReadOnly);

    // Get number of tables in document
    iNumTables := MSWord.ActiveDocument.Tables.Count;

    //InputString := InputBox(IntToStr(iNumTables) +  ' Tables in Word Document', 'Please Enter Table Number', '1');
    // Todo: Validate string for integer, range...
    //iTableChosen := StrToInt(InputString);
    iTableChosen := 2;
    // access table
    Table := MSWord.ActiveDocument.Tables.Item(iTableChosen);
    // get dimensions of table
    iCols := Table.Columns.Count;
    iRows := Table.Rows.Count;
    // adjust stringgrid columns
    StringGrid1.RowCount := iRows;
    StringGrid1.ColCount := iCols;

    // loop through cells
    errCell := False;
    for iGridRows := 1 to iRows do
    begin   
      for jGridCols := 1 to iCols do
      begin
        try
          CellText := Table.Cell(iGridRows, jGridCols).Range.FormattedText;
        except
           continue;
          errCell := True;
        end;
        //if errCell then goto StartHere;

        if not VarisEmpty(CellText) then
        begin
          before := '#0$D';  after := '';    // Remove Tabs
          //CellText := SysUtils.StringReplace(CellText, before, after, [rfReplaceAll]);            
          before := '#0$7';   after := ''; // Remove linebreaks
          CellText := StringReplace(CellText, Chr(7), after, [rfReplaceAll]);
          CellText := StringReplace(CellText, #13, after, [rfReplaceAll]);
          CellText := StringReplace(CellText, #10, after, [rfReplaceAll]);
          // fill Stringgrid
          Stringgrid1.Cells[jGridCols , iGridRows] := CellText;
        end;
      end; //for jGridCols := 1 to iCols do
      StartHere: ;
    end; //for iGridRows := 1 to iRows do

  finally
    MSWord.Quit;
  end;
  //Exit;
  //GetTable;
  //CalcWordTableProp;
end;

{ядром обработки таблицы €вл€етс€ следующа€ процедура:}

procedure TWordForm.GetTable;
var i, j, UndoCount: integer;
  NumRows, NumColumns: OleVariant;
  bool: boolean;
begin

  FTable := WApp.ActiveDocument.Tables.Item(1); //перва€ таблица активного документа
  FMaxUsedRows := FTable.Rows.Count;
  FMaxUsedCols := FTable.Columns.Count;

  SetLength(FWordTableCell, 0, 0);
  SetLength(FWordTableCell, FMaxUsedRows + 1, FMaxUsedCols + 1);
  WApp.Visible := true;
  NumColumns := 1;

  for i := 1 to FMaxUsedRows do
    for j := 1 to FMaxUsedCols do
    begin
      FWordTableCell[i, j].VertCellMerged := false;
      try
        FTable.Cell(i, j).HeightRule := wdRowHeightAtLeast;

        if FTable.Cell(i, j).Width >= 99999 then
        begin
          NumRows := 1;
          UndoCount := 1;
          repeat
            inc(NumRows);
            inc(UndoCount);
            if (FTable.Cell(i, j).Width >= 99999) then
            begin
              bool := false;
              try
                try
                  try
                    FTable.Cell(i, j).Split(NumRows, NumColumns);
                    NumRows := 1;
                  except
                  end;
                except
                end;
              except
              end;
            end
            else bool := true;
          until bool;
          FWordTableCell[i, j].CellWidth := FTable.Cell(i, j).Width;
          while UndoCount <> 1 do
          begin
            dec(UndoCount);
            WApp.ActiveDocument.Undo(EmptyParam);
          end;
        end else
          FWordTableCell[i, j].CellWidth := FTable.Cell(i, j).Width;
        FWordTableCell[i, j].CellHeight := FTable.Cell(i, j).Height;
        FWordTableCell[i, j].Merged := false;
        FWordTableCell[i, j].Text := FTable.Cell(i, j).Range;
      except
        FWordTableCell[i, j].CellWidth := 0;
        FWordTableCell[i, j].CellHeight := FTable.Rows.Height;
        FWordTableCell[i, j].Merged := true;
      end;
      FWordTableCell[i, j].PrevMerCol := -1;
      FWordTableCell[i, j].NextMerCol := -1;
    end;
  CalcWordTableProp;
end;

{
¬ этой процедуре выполн€етс€ последовательное обращение к €чейкам таблицы и формирование записи FWordTableCell дл€ каждой €чейки,
характеризующей считываемую таблицу Word (как ни странно, здесь необходима именно тройна€ упаковка в try except end).
Ќужно обратить внимание, что некоторые €чейки приходитс€ разбивать, т.к. дл€ них невозможно определить никаких данных.
(  сожалению, при прогонке программы в ручном режиме клавишами F7, F8 или F9, всегда возникает сообщение об ошибке,
даже если отключить Tools->Debugger Option->Language Exception Stop on Delphi Exception).
 ак видно из кода, инициализируютс€ не все пол€ записи FWordTableCell.
ƒл€ определени€ остальных полей производитс€ обработка данных в процедуре CalcWordTableProp:
}

procedure TWordForm.CalcWordTableProp;
var i, j, k, N, EndCol: integer;
  FTableWidth: single;

  procedure CalcTableVertMergedInfo(i, j: integer);
  var Col: integer;
  begin
    for Col := 1 to FMaxUsedCols do
      if ((abs(FWordTableCell[i - 1, Col].TableLeft -
        FWordTableCell[i, j].TableLeft) <= 1) and
        (FWordTableCell[i - 1, Col].CellWidth <> 0)) then
      begin
        FWordTableCell[i - 1, Col].VertCellMerged := true;
        FWordTableCell[i - 1, Col].NextMerCol := j;
        FWordTableCell[i, j].PrevMerCol := col;
        FWordTableCell[i, j].CellWidth := FWordTableCell[i - 1, Col].CellWidth;
        Exit;
      end;
  end;
begin
{Ёта часть дл€ нахождени€ признаков вериткальной объединенности €чеек  существующей таблицы}
  for i := 1 to FMaxUsedRows do
  begin
    FWordTableCell[i, 0].TableLeft := 0;
    for j := 1 to FMaxUsedCols do
    begin
      with FWordTableCell[i, j] do
      begin
        TableLeft := FWordTableCell[i, j - 1].TableLeft +
          FWordTableCell[i, j - 1].CellWidth;

        FTableWidth := 0;
        for k := 1 to FMaxUsedCols do FTableWidth := FTableWidth + FWordTableCell[i - 1, k].CellWidth;

        VertCellMerged := false;
        if Merged and not (FWordTableCell[i, j].TableLeft = FTableWidth) then
          CalcTableVertMergedInfo(i, j);
      end;
    end;
  end;

{Ёта часть дл€ нахождени€ характеристик вертикально объединенных €чеек}
  for j := 1 to FMaxUsedCols do
    for i := 1 to FMaxUsedRows do
      if FWordTableCell[i, j].VertCellMerged then
      begin
        N := 0;
        EndCol := j;
        while FWordTableCell[i + N, EndCol].NextMerCol <> -1 do
        begin
          EndCol := FWordTableCell[i + N, EndCol].NextMerCol;
          inc(N);
        end;
        FWordTableCell[i, j].EndMerRow := i + N;
        FWordTableCell[i, j].EndMerCol := EndCol;
      end;
{================================}
end;

procedure R1();
var tmpBoolean: Boolean;
begin



end;

end.

