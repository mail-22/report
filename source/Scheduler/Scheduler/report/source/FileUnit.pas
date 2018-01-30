unit FileUnit;

interface

function ExtractFileExtOnly(const AFileName: string): string;

implementation

// Извлечение из пути расширения файла без точки

function ExtractFileExtOnly(const AFileName: string): string;
var Index, PointPos: Integer;
begin Result := '';
  PointPos := 0;
  for Index := Length(AFileName) downto 1 do if AFileName[Index] = '.'
    then
    begin
      PointPos := Index; Break;
    end;
  if PointPos <> 0
    then Result := Copy(AFileName, PointPos + 1, Length(AFileName));
end;

end.

