unit Trebov_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, DB, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxImage, cxContainer, cxDBEdit,
DBCtrls, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGridLevel, cxGridCardView, cxGridDBCardView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ToolWin, ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, ActnMenus,
  ImgList, JvExControls, JvLabel, JvDBControls, ADODB, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, ComCtrls, dxtree,
  dxdbtree, cxTL, cxMaskEdit, cxCheckBox, cxMemo, cxTLdxBarBuiltInMenu,
  cxDBTL, cxTLData, JvExComCtrls, JvDBTreeView, cxLocalization, cxNavigator,
  cxSplitter, cxTextEdit,JvExStdCtrls, JvEdit, JvDBSearchEdit, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit, IniFiles, cxDBNavigator,
  cxPropertiesStore;

type
  TTrebov = class(TBaseForm)
    pnlH: TPanel;
    mmo1: TMemo;
    ds1: TDataSource;
    pnlR: TPanel;
    acttb1: TActionToolBar;
    actmgr1: TActionManager;
    act1Copy: TAction;
    il1: TImageList;
    cxLocalizer1: TcxLocalizer;
    spl3: TcxSplitter;
    pnlL: TPanel;
    lbl3: TLabel;
    cxdbm1: TcxDBMemo;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1N: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    pnl1: TPanel;
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl3: TJvDBStatusLabel;
    cxgrdbclmnGrid2DBTableView1F: TcxGridDBColumn;
    cxprprtstr1: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure dbrchvwdtoleClick(Sender: TObject);
    procedure act1CopyExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Trebov: TTrebov;

implementation

uses FormJPGUnit, FormRTFUnit, DMUnit;

{$R *.dfm}

procedure TTrebov.FormCreate(Sender: TObject);
var sMyDocAppPath :string;
begin
  inherited;

  sMyDocAppPath := ExtractFilePath(Application.ExeName)+'\';
  cxLocalizer1.FileName:='DevExRus100Proc.ini';
 cxLocalizer1.Active:=true;
 cxLocalizer1.Locale:=1049;

if FileExists(sMyDocAppPath + 'DevExRus100Proc.ini') then
  begin
      cxLocalizer1.Active   := false;
      cxLocalizer1.FileName := sMyDocAppPath + 'DevExRus100Proc.ini';
      cxLocalizer1.Active   := True;

      if FileExists(sMyDocAppPath + 'lang.ini') then
        with TIniFile.Create(sMyDocAppPath + 'lang.ini') do
        begin
          cxLocalizer1.Locale := ReadInteger('LANG', 'Locale', GetThreadLocale);//если пользователь ещё не указал, то берём локаль винды
          free;
        end//with
      else
        cxLocalizer1.Locale := GetThreadLocale;//если пользователь ещё не указал, то берём локаль винды
  end;//if FileExists(sMyDocAppPath + 'Lang\lang.ini') then

  if cxLocalizer1.Locale = 0 then
    cxLocalizer1.Locale := GetThreadLocale;

    cxprprtstr1.StorageName:=ExtractFilePath(Application.ExeName) +
    Self.Name + '.cxprprtstr1.ini'; 
    if not FileExists(cxprprtstr1.StorageName) then begin
       cxprprtstr1.StoreTo(True);
    end
    else begin
      cxprprtstr1.RestoreFrom;
    end;

end;

procedure TTrebov.img1Click(Sender: TObject);
begin
  inherited;
    if   (FormJPG = nil)  then
       Application.CreateForm(TFormJPG, FormJPG);
    FormJPG.Show;
end;

procedure TTrebov.dbrchvwdtoleClick(Sender: TObject);
begin
  inherited;
    if   (FormRTF = nil)  then
       Application.CreateForm(TFormRTF, FormRTF);
    FormRTF.Show;
end;

procedure TTrebov.act1CopyExecute(Sender: TObject);
var
    i:Integer;
    tmpRecordIndex:Integer;
    sFnn, sFn, sF :String;
    View : TcxGridDBTableView;
    //vValue : TcxFieltrCriteriaItem;

    DataSet:TDataSet;
    DataSet2:TDataSet;
begin
  //dm.tblBilding_Add;

end;

procedure TTrebov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  cxprprtstr1.StoreTo(True);

end;

end.
