unit FormRTFUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxRichEdit, cxDBRichEdit, StdCtrls, JvExStdCtrls,
  JvRichEdit, JvDBRichEdit, ComCtrls, DBCtrls, DB, dxSkinsCore,
  dxSkinOffice2007Blue;

type
  TFormRTF = class(TForm)
    ds1: TDataSource;
    cxdbrchdt1: TcxDBRichEdit;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ts3: TTabSheet;
    edtole2: TJvDBRichEdit;
    mmo1: TMemo;
    dbrchvwdtole: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRTF: TFormRTF;

implementation



{$R *.dfm}

end.
