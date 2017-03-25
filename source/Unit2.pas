unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, DB, MemDS, DBAccess, Uni, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement
  ,  dmunit, ExtCtrls
  ;

type
  TBaseForm2 = class(TBaseForm)
    pnl1: TPanel;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseForm2: TBaseForm2;

implementation



{$R *.dfm}

end.
