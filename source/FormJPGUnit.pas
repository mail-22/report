unit FormJPGUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxImage, cxDBEdit, DB, StdCtrls, OleCtnrs,
  DBOleContainer;

type
  TFormJPG = class(TForm)
    ds1: TDataSource;
    img1: TcxDBImage;
    mmo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJPG: TFormJPG;

implementation



{$R *.dfm}

end.
