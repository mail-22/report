unit LexUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    mmo2: TMemo;
    mmo3: TMemo;
  private
    procedure Lexemy;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Lexemy;
var
  Separators, WhiteSpace: TSysCharSet;
  S: AnsiString;
  Lex, Separ: AnsiString;
  i: integer;
begin
  S:=mmo1.Text;
  for i := 1 to Length(S) do
  begin
    if (S[i] in Separators)
      then begin
      if Lex <> ''
        then begin
        mmo2.Lines.Add(Lex);

        mmo3.Lines.Add(Separ);
        Lex := '';
        Separ := '';
      end;
      if (not (S[i] in WhiteSpace))
        then Separ := Separ + S[i];
      Continue;
    end;
    Lex := Lex + S[i];
  end;
  mmo2.Lines.Add(Lex);
  mmo3.Lines.Add(Separ);

end;

end.

