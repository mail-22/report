unit EditGridJpgFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, JvExControls, JvLabel, JvDBControls, cxNavigator,
  cxDBNavigator, ExtCtrls, cxSplitter, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, cxContainer, cxImage, cxDBEdit
  ,
  DMUnit, OleCtnrs, DBOleContainer, ActnList, ToolWin, ActnMan, ActnCtrls,
  XPStyleActnCtrls, ExtDlgs, jpeg ,  ShellApi, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter
  , CommonUnit;

type
  TEditGridJpgForm = class(TBaseForm)
    ds1: TDataSource;
    cxspltr1: TcxSplitter;
    pnl_Navigator1: TPanel;
    cxdbnvgtr1: TcxDBNavigator;
    pnl3: TPanel;
    jvdbstslbl1: TJvDBStatusLabel;
    pnl4: TPanel;
    jvdbstslbl2: TJvDBStatusLabel;
    pnl1: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    cxSplitter1: TcxSplitter;
    cxgrd2: TcxGrid;
    cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid2Level1: TcxGridLevel;
    pnlL: TPanel;
    pnlR: TPanel;
    imgjpg: TcxDBImage;
    cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1jpg: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1text1: TcxGridDBColumn;
    actlst1: TActionList;
    actmgr1: TActionManager;
    acttb1: TActionToolBar;
    actAdd: TAction;
    pnl2: TPanel;
    mmo1: TMemo;
    openDialog: TOpenPictureDialog;
    actExtractJPG: TAction;
    procedure actAddExecute(Sender: TObject);
    procedure actExtractJPGExecute(Sender: TObject);
  private
    procedure AddMethod;
    procedure ExtractJPGMethod;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure EditGridJpgForm_Show;
procedure Jpg2Field(DataSet, MasterDataSet: TDataSet; FileName, FieldName: string);

var
  EditGridJpgForm: TEditGridJpgForm;
  FileName: string;

const
  Qu = '"';
  CommaSpace = ', ';
  CRLF = #13#10;
  constTmpDir = 'tmp';

implementation

{$R *.dfm}

procedure EditGridJpgForm_Show;
begin
  if (EditGridJpgForm = nil) then
    Application.CreateForm(TEditGridJpgForm, EditGridJpgForm);
  EditGridJpgForm.ShowModal;

  EditGridJpgForm.Close;
  FreeAndNil(EditGridJpgForm);
  //AddBildForm.WindowState := wsMaximized;
end;


procedure TEditGridJpgForm.actAddExecute(Sender: TObject);
begin
 // inherited;
  AddMethod;
end;    

procedure TEditGridJpgForm.AddMethod;
begin

  // Создание объекта OpenDialog - назначение на нашу переменную OpenDialog
  //openDialog := TOpenDialog.Create(self);

  // Установка начального каталога, чтобы сделать его текущим
  openDialog.InitialDir := GetCurrentDir;

  // Только разрешенные существующие файлы могут быть выбраны
  //openDialog.Options := [ofFileMustExist];

  // Разрешено выбрать только .dpr и .pas файлы
  //openDialog.Filter :=    '  files|*.*|  files|*.*';

  // Выбор файлов Паскаля как стартовый тип фильтра
  //openDialog.FilterIndex := 2;

  // Показ диалог открытия файла

   DM.tblJpg.Append;
   EditGridJpgForm.imgjpg.LoadFromFile;
   DM.tblJpg.Post;
exit;

  if openDialog.Execute
    then begin //ShowMessage2('File : '+openDialog.FileName);
  end
  else begin ShowMessage2('Открытие файла остановлено');
  end;

  FileName := openDialog.FileName;

  // Освобождение диалога
  //openDialog.Free;

  //OleContainer :=  dblcntnrole;
  //DataSet := DM.tblJpg;
  //MasterDataSet := DM.tblReport;
  //FieldName := 'ole';// blbfldJpgole

  Jpg2Field(DM.tblJpg, DM.tblReport2, FileName, 'jpg');
end;

procedure Jpg2Field1(DataSet, MasterDataSet: TDataSet; FileName, FieldName: string);
var
  //fs: TFileStream;
  //ds: TDataSet;

  strTmp: string;

  //
  jpeg: TJPEGImage;
  bmp: TBitmap;
begin //ds := DM.BLOB;   //OleContainer := XMLForm.XMLFrame1.DBOleContainer1;
  try
    ;
  except
    on E: Exception do
    begin
      MessageDlg('Jpg2Field' + CRLF + FileName + CRLF + Qu + E.Message + Qu + CRLF, mtError, [mbOk], 0);
      Exit;
    end;
  end;

  jpeg := TJPEGImage.Create;
  bmp := TBitmap.Create;
  try
    jpeg.LoadFromFile(FileName);
    bmp.Assign(jpeg);
  // DataSet.Append;  //!!!
    DataSet.RecNo; // debug
    DataSet.RecordCount; // debug
    if not (DataSet.State in [dsInsert, dsEdit]) then
      DataSet.Edit;
    DataSet.FieldByName('idR1').AsInteger := MasterDataSet.FieldByName('id').AsInteger; //
    strTmp := SysUtils.ExtractFileName(FileName); // debug

    DataSet.FieldByName('jpg').Assign(bmp); // jpeg error #53
    DataSet.Post; DataSet.RecNo; DataSet.RecordCount; //
  finally
    jpeg.Free;
    bmp.Free;
  end;
end; //Jpg2Field


procedure Jpg2Field(DataSet, MasterDataSet: TDataSet; FileName, FieldName: string);
var
  //fs: TFileStream;
  //ds: TDataSet;

  strTmp: string;

  //
  jpeg: TJPEGImage;
  bmp: TBitmap;
begin //ds := DM.BLOB;   //OleContainer := XMLForm.XMLFrame1.DBOleContainer1;
  try
    ;
  except
    on E: Exception do
    begin
      MessageDlg('Jpg2Field' + CRLF + FileName + CRLF + Qu + E.Message + Qu + CRLF, mtError, [mbOk], 0);
      Exit;
    end;
  end;

exit;
  EditGridJpgForm.imgjpg.LoadFromFile;
Exit;

  jpeg := TJPEGImage.Create;
  bmp := TBitmap.Create;
  try
    jpeg.LoadFromFile(FileName);
    bmp.Assign(jpeg);
  // DataSet.Append;  //!!!
    DataSet.RecNo; // debug
    DataSet.RecordCount; // debug
    if not (DataSet.State in [dsInsert, dsEdit]) then
      DataSet.Edit;
    DataSet.FieldByName('idR1').AsInteger := MasterDataSet.FieldByName('id').AsInteger; //
    strTmp := SysUtils.ExtractFileName(FileName); // debug

    DataSet.FieldByName('jpg').Assign(bmp); // jpeg error #53
    DataSet.Post; DataSet.RecNo; DataSet.RecordCount; //
  finally
    jpeg.Free;
    bmp.Free;
  end;
end; //Jpg2Field


procedure TEditGridJpgForm.actExtractJPGExecute(Sender: TObject);
begin
  inherited;
  ExtractJPGMethod;
end;

procedure TEditGridJpgForm.ExtractJPGMethod;
var
strMyDir : string;
strTempFile : array[0..MAX_PATH-1] of char;
nTempNumber : integer;
TempDirName :string;
begin
   TempDirName := ExtractFileDir(Application.ExeName) +'\'+ constTmpDir;
   FileName := DM.tblJpg.FieldByName('text1').AsString;
   if (FileName = '') then
   begin
      nTempNumber := Windows.GetTempFileName(PChar(TempDirName), '_prefix_', 0, strTempFile);
      FileName:= strTempFile ;
   end;
   if ExtractFileExt(FileName) = '' then begin
      FileName :=  FileName  + '.jpeg'; //???  + '.doc';
   end;
   FileName :=  TempDirName +'\'+ FileName ; //

   imgjpg.Picture.SaveToFile(FileName);
   //imgjpg.SaveToFile();

   //ShellExecute(handle,'explore',Pchar(TempDirName),nil,nil,SW_SHOWNORMAL); //
   ShellApi.ShellExecute(EditGridJpgForm.Handle, 'open', Pchar(FileName), nil, nil, SW_RESTORE);
end;

end.

