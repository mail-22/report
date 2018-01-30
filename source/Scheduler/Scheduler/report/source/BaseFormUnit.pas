unit BaseFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, JvExControls, JvLabel, JvDBControls,
  cxNavigator, cxDBNavigator, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, ExtCtrls, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement,
  DMUnit, Grids, DBGrids
  ;

type
  TBaseForm1 = class(TBaseForm)
    pnlT: TPanel;
    pnlGrid: TPanel;
    lbl1: TLabel;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    pnlBBB: TPanel;
    lbl2: TLabel;
    pnl_Navigator1: TPanel;
    cxDBNavigator3: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    cxgrdbclmncxgrdbtblvw1id: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn1: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn2: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn3: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn4: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn5: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1DBColumn6: TcxGridDBColumn;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseForm1: TBaseForm1;

implementation

{$R *.dfm}

end.
