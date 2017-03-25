unit SpisokUnit;

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
  cxPropertiesStore, DateUtils, Uni, Grids, DBGrids , SelDepUnit,
  JvExExtCtrls, JvSplitter, JvNetscapeSplitter, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TSpisokForm = class(TBaseForm)
    pnlH: TPanel;
    mmo1: TMemo;
    dsReportFiltr: TDataSource;
    pnlR: TPanel;
    acttb1: TActionToolBar;
    actmgr1: TActionManager;
    act1Copy: TAction;
    il1: TImageList;
    cxLocalizer1: TcxLocalizer;
    pnlL: TPanel;
    lbl3: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    pnl1: TPanel;
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl3: TJvDBStatusLabel;
    cxprprtstr1: TcxPropertiesStore;
    pnlFiltr: TPanel;
    pnlData1: TPanel;
    dtp1: TDateTimePicker;
    btn1: TButton;
    dtp2: TDateTimePicker;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    Label1: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dblkcbb1: TDBLookupComboBox;
    mmo2: TMemo;
    actlst1: TActionList;
    actExportExl: TAction;
    pnl_LR: TPanel;
    jvntscpspltr1: TJvNetscapeSplitter;
    chkAll: TCheckBox;
    cxGrid2DBTableView1id: TcxGridDBColumn;
    cxGrid2DBTableView1department: TcxGridDBColumn;
    cxGrid2DBTableView1basis: TcxGridDBColumn;
    cxGrid2DBTableView1basis_ffile: TcxGridDBColumn;
    cxGrid2DBTableView1contract_name: TcxGridDBColumn;
    cxGrid2DBTableView1contract_number: TcxGridDBColumn;
    cxGrid2DBTableView1contract_file: TcxGridDBColumn;
    cxGrid2DBTableView1deadline: TcxGridDBColumn;
    cxGrid2DBTableView1costofwork: TcxGridDBColumn;
    cxGrid2DBTableView1responsible: TcxGridDBColumn;
    cxGrid2DBTableView1invoice: TcxGridDBColumn;
    cxGrid2DBTableView1invoice_file: TcxGridDBColumn;
    cxGrid2DBTableView1payment_note: TcxGridDBColumn;
    cxGrid2DBTableView1payment_date: TcxGridDBColumn;
    cxGrid2DBTableView1performance_of_work_note: TcxGridDBColumn;
    cxGrid2DBTableView1performance_of_work_file: TcxGridDBColumn;
    cxGrid2DBTableView1performance_of_work_date: TcxGridDBColumn;
    cxGrid2DBTableView1act_acceptance: TcxGridDBColumn;
    cxGrid2DBTableView1act_acceptance_file: TcxGridDBColumn;
    cxGrid2DBTableView1contract_execution_note: TcxGridDBColumn;
    cxGrid2DBTableView1contract_execution_file: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure dbrchvwdtoleClick(Sender: TObject);
    procedure actExportExlExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure chkAllClick(Sender: TObject);
    procedure dblkcbb1Click(Sender: TObject);
    procedure dblkcbb1Exit(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MakeFiltr;
    { Public declarations }
  end;

procedure SpisokForm_Show;
  
var
  SpisokForm: TSpisokForm;
  chkAllDep : Boolean;

implementation

uses FormJPGUnit, FormRTFUnit, DMUnit, ExportXLSFormUnit, GridFormUnit;

{$R *.dfm}

procedure TSpisokForm.FormCreate(Sender: TObject);
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

procedure TSpisokForm.img1Click(Sender: TObject);
begin
  inherited;
    if   (FormJPG = nil)  then
       Application.CreateForm(TFormJPG, FormJPG);
    FormJPG.Show;
end;

procedure TSpisokForm.dbrchvwdtoleClick(Sender: TObject);
begin
  inherited;
    if   (FormRTF = nil)  then
       Application.CreateForm(TFormRTF, FormRTF);
    FormRTF.Show;
end;

procedure TSpisokForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  cxprprtstr1.StoreTo(True);

end;


//- Редактирование
procedure SpisokForm_Show;
begin
  if (SpisokForm = nil) then
     Application.CreateForm(TSpisokForm, SpisokForm);
  SpisokForm.ShowModal;
  //AddBildForm.WindowState := wsMaximized;
end;


procedure TSpisokForm.actExportExlExecute(Sender: TObject);
begin
  inherited;
  GridForm.ExportXLSMethod;    ///
end;

procedure TSpisokForm.btn1Click(Sender: TObject);
begin
  MakeFiltr;
end;

procedure TSpisokForm.chkAllClick(Sender: TObject);
begin
  inherited;
 //chkAll.AllowGrayed := True;
  if (chkAll.State = cbChecked) then
  begin
     chkAllDep := True;
  end;
  if (chkAll.State = cbUnchecked) then
  begin
     chkAllDep := False;
  end;

  MakeFiltr;
end;

procedure TSpisokForm.dblkcbb1Click(Sender: TObject);
begin
  inherited;
  ;
  MakeFiltr;
end;

procedure TSpisokForm.dblkcbb1Exit(Sender: TObject);
begin
  inherited;
  MakeFiltr;
end;

procedure TSpisokForm.dtp1Change(Sender: TObject);
begin
  inherited;
  MakeFiltr;
end;

procedure TSpisokForm.dtp2Change(Sender: TObject);
begin
  inherited;
  MakeFiltr;
end;

procedure TSpisokForm.edt1Change(Sender: TObject);
begin
  inherited;
  MakeFiltr;
end;

procedure TSpisokForm.FormShow(Sender: TObject);
begin
  inherited;

dblkcbb1.KeyValue := dblkcbb1.ListSource.DataSet.FieldByName(dblkcbb1.KeyField).Value;

end;

procedure TSpisokForm.MakeFiltr;
var
  Date1:TDate;
  Date2:TDate;
  DataSet0: TDataSet;
  DataSet : TUniQuery;
  strSQL :TStringList;
  EmplName :string;
  strDepDefaultID :string;
begin
  inherited;
  // uses DateUtils
  //  Regional Settings
  Date1:=dtp1.Date;
  Date2:=dtp2.Date;
  DataSet:=dsReportFiltr.DataSet as TUniQuery;

  DataSet.Active:=False;
  strSQL:= TStringList.create;
  strSQL.Text := 'SELECT * FROM r1 WHERE '+
    ' "responsible" LIKE :responsible AND '+
    ' "department"  LIKE :department AND '+
    ' "deadline" BETWEEN :in AND :end ' ;

  dataset.SQL.Clear;
  dataset.Params.Clear;

  DataSet.SQL := strSQL;

  DepDefaultID := DM.intgrfld1.AsInteger;
  SelDepUnit.DepDefaultName := DM.strngfldunqry1depart.AsString;
  strDepDefaultID := IntToStr(DepDefaultID);
  if (chkAllDep) then begin strDepDefaultID := ''; end;

  EmplName:= edt1.Text;
  dataset.ParamByName('responsible').Value := EmplName + '%';
  dataset.ParamByName('department').Value := strDepDefaultID +'%';
  dataset.ParamByName('in').Value  := Date1;
  dataset.ParamByName('end').Value := Date2;
  DataSet.Active:=True;

  DataSet.Close;
  DataSet.Open;       
end;

end.
