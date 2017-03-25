unit utility;

interface

//AnsiReplaceStr
uses Forms, IniFiles, Classes, windows , SysUtils;

procedure StrBreakApart(const S, Delimeter : string; Parts : TStrings);

procedure FileToForm(const Form :TForm; const FileName: string);
procedure FormToFile(const Form :TForm; const FileName: string);
procedure Form2File(const Form :TForm; const FileName: string);

procedure FormFromFile(const Form :TForm; const FileName: string);
procedure ForEachOnForm(const Form :TForm; const FileName: string);
procedure SaveComponentToTextFile(Component: TComponent; const FileName: string);

function  ChangeScreenResolution(X, Y: integer): boolean;
function  DeleteDir(Dir: string): boolean;
function  DeleteAllFilesInDir(Dir: string): boolean;     

function  AddSlashIfAbsence(str: string): string;
function  DelSlashIfAbsence(str: string): string;
function  QuotationIfAbsence(str: string): string;

procedure ShowForm(FormClass: TFormClass);

function  CopyFile3(SourceFileName, TargetFileName: string; bFailIfExists:boolean) :boolean;
function  FileExists1(FileName: string) :boolean;

procedure ExecuteEXE(ExecutableFile:string; Param:string; Dir:string);
//function  RunFile(FileName, Params:String):Integer;
Function RunFile(FileName:String; Params:String = ''):Integer;

function GetBrotherDir(Dir :string) :string;
function BrotherDir(MainDir, Dir :string) :string;
function GetDirUp() :string;

function INI(DataIniFile :TIniFile; Section :string; Ident :string; default :variant): variant;
function ReadReg(Key, Name :string): Variant;

procedure RegisterFileType(prefix:string; exepfad:string; IconIndex:byte);
function create_prc_cursor(min,max,pos:integer):hicon;

function isDelphiRunning : Boolean;
procedure AddToLog(s:string);
{
 //, ShellAPI//!!!
const
  shell32 = 'C:\Plan\Db\shell32.dll';

function ShellExecute(hWnd: windows.HWND; Operation, FileName, Parameters,
  Directory: PChar; ShowCmd: Integer): HINST; stdcall;
}

implementation

uses Dialogs ,   JvJCLUtils , Registry, Variants
   , ShellAPI
    , Graphics
   ;

///////////////////////////////////////////////////////////////////////////////
//function ShellExecute; external shell32 name 'ShellExecuteA';

procedure ExecuteEXE(ExecutableFile:string; Param:string; Dir:string);
var
  hWnd:windows.HWND;
  Operation:PChar;
  FileName:PChar;
  Parameters:PChar;
  Directory:PChar;
  ShowCmd: Integer;
  Handle: HINST;
begin
  //if not SetCurrentDir(Dir) then  MessageDlg('SetCurrentDir('+Dir+')', mtError, [mbOK], 0);
  //function ShellExecute(Wnd: HWnd; Operation, FileName, Parameters, Directory: PChar; ShowCmd: Integer): THandle;
  //Handle:= ShellAPI.ShellExecute(Application.Handle,'explore',PChar(ExecutableFile),PChar(Dir+'\'),PChar(Dir+'\'),SW_SHOWMAXIMIZED);//  ,ShellAPI
  //Handle:= ShellAPI.ShellExecute(Application.Handle,'explore',PChar(ExecutableFile),PChar(''),PChar(Dir+'\'),SW_SHOWMAXIMIZED);//  ,ShellAPI
  //Handle:= ShellAPI.ShellExecute(Application.Handle,'open',PChar(ExecutableFile),PChar('open'),PChar(Dir+'\'),SW_SHOWMAXIMIZED);//  ,ShellAPI
  //Handle:= ShellAPI.ShellExecute(Application.Handle,'',PChar(ExecutableFile),PChar('open'),PChar(Dir+'\'),SW_SHOWMAXIMIZED);//  ,ShellAPI

  Dir:=ExtractFilePath(ExecutableFile);//?

  //ExecutableFile := '"' + ExecutableFile + '"'; //??
  //ExecutableFile := QuotationIfAbsence(ExecutableFile);//??

  hWnd := Application.Handle;
  Operation := 'open';//nil;
  FileName := PChar(ExecutableFile);
  Parameters := PChar(Param);
  Directory := PChar(Dir);
  ShowCmd := SW_SHOWMAXIMIZED;

  Handle:=ShellExecute(hWnd, Operation, FileName, Parameters, Directory, ShowCmd);//ShellAPI.
  //Handle:=ShellAPI.ShellExecute(Application.Handle,'',PChar(ExecutableFile),PChar(''),PChar(Dir+'\'),SW_SHOWMAXIMIZED);//  ,ShellAPI
  if Handle<=32 then MessageDlg('ShellExecute('+ExecutableFile+')', mtError, [mbOK], 0);
  //WaitForSingleObject
end;

Function RunFile(FileName:String; Params:String = ''):Integer;
var
  Handle:integer;
begin
  Handle := ShellExecute(0,nil,pchar(filename),pchar(params),pchar(extractfilepath(filename)),sw_normal);
  if Handle<=32 then MessageDlg('не могу открыть файл' +#13#10+ 'ShellExecute('+filename+')', mtError, [mbOK], 0);
  Result:=Handle;
end;

procedure ExecuteFile(Dir:string; FileName:string);
var
  Handle:integer;
begin
  Handle:= ShellExecute(Application.Handle, 'open', PChar(FileName), PChar(Dir),nil, SW_SHOWMAXIMIZED);//  ,ShellAPI//ShellAPI.
  if Handle<=32 then MessageDlg('ShellExecute('+FileName+')', mtError, [mbOK], 0);
  //WaitForSingleObject
end;

procedure ShowForm(FormClass: TFormClass);//uses Form;
var
  Form: TForm;
begin
  Form:=nil;  //FreeAndNil(Form);
  if not Assigned(Form) then //???
    Application.CreateForm(FormClass, Form);
  Form.ShowModal;  //AboutForm.Show;  //ShowDialog(TAboutForm);
  SysUtils.FreeAndNil(Form);
end;


///////////////////////////////////////////////////////////////////////////////
//разрешение экрана (вызов с параметрами 0, 0 устанавливает разрешение из реестра).
function ChangeScreenResolution(X, Y: integer): boolean;
var
  ScreenMode: TDeviceMode; //TDeviceMode
begin
  ZeroMemory(@ScreenMode, SizeOf(TDeviceMode));
  with ScreenMode do
  begin
    dmSize := SizeOf(TDeviceMode);
    if (X > 0) and (Y > 0) then
    begin
      dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
      dmPelsWidth := X;
      dmPelsHeight := Y;
    end;
  end;
  Result := ChangeDisplaySettings(ScreenMode, 0) =
    DISP_CHANGE_SUCCESSFUL;
end; //ChangeScreenResolution

{ Удалить каталог со всем содержимым }
function DeleteDir(Dir: string): boolean;
var
  Found: integer;
  SearchRec: TSearchRec;
begin
  result := false;
  if IOResult <> 0 then
    ;
  ChDir(Dir);
  if IOResult <> 0 then
  begin
    ShowMessage('Не могу войти в каталог: ' + Dir);
    exit;
  end;
  Found := FindFirst('*.*', faAnyFile, SearchRec);
  while Found = 0 do
  begin
    if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      if (SearchRec.Attr and faDirectory) <> 0 then
      begin
        if not DeleteDir(SearchRec.Name) then
          exit;
      end
      else if not DeleteFile(SearchRec.Name) then
      begin
        //ShowMessage('Не могу удалить файл: ' + SearchRec.Name);
        exit;
      end;
    Found := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
  ChDir('..');
  RmDir(Dir);
  result := IOResult = 0;
end; //DeleteDir

function DeleteAllFilesInDir(Dir: string): boolean;
var
  Found: integer;
  SearchRec: TSearchRec;
begin
  if Dir = '' then
    exit;
  result := false;
  if IOResult <> 0 then
    ;
  ChDir(Dir);
  if IOResult <> 0 then
  begin
    ShowMessage('Не могу войти в каталог: ' + Dir);
    exit;
  end;
  Found := FindFirst('*.*', faAnyFile, SearchRec);
  while Found = 0 do
  begin
    if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      if (SearchRec.Attr and faDirectory) <> 0 then
      begin
        if not DeleteDir(SearchRec.Name) then
          exit;
      end
      else if not DeleteFile(SearchRec.Name) then
      begin
        ShowMessage('Не могу удалить файл: ' + SearchRec.Name);
        exit;
      end;
    Found := FindNext(SearchRec);
  end;
  FindClose(SearchRec);
  result := IOResult = 0;
end; //DeleteAllFilesInDir

function QuotationIfAbsence(str: string): string;
var iTmp: integer;
begin
  if str ='' then exit;

  iTmp := Length(str);
  if not (str[iTmp] = '"') then
  begin
    str := str + '"';
  end;
  if not (str[1] = '"') then
  begin
    str := '"' + str ;
  end;
  Result := str;
end;

function AddSlashIfAbsence(str: string): string;
var iTmp: integer;
begin
  iTmp := Length(str);
  if str[iTmp] = '\' then
  begin
    Result := '';
  end
  else
  begin
    Result := '\';
  end;
end;

function DelSlashIfAbsence(str: string): string;
var iTmp: integer;
    strTmp: string;
begin
  iTmp := Length(str);
  if str[iTmp] = '\' then
  begin
    Delete(str,iTmp,1);
  end
  else
  begin
  end;
    Result := str;
end;

function FileExists1(FileName: string) :boolean;
begin
  Result:=true;
  if not FileExists(FileName) then
  begin
    MessageDlg('нет файла'+#13 +FileName+ '', mtWarning, [mbOK], 0);
    Result:=false;
  end;
end;

function CopyFile3(SourceFileName, TargetFileName: string; bFailIfExists:boolean) :boolean;
begin
  Result:=false;
  if  not FileExists(SourceFileName) then
  begin
    MessageDlg('нет файла'+#13 +SourceFileName+ '', mtWarning, [mbOK], 0);
    Result:=false;
    exit;
  end;
  case bFailIfExists of
    true://not overwrites
      if not FileExists(TargetFileName) then
      begin
        windows.CopyFile(PChar(SourceFileName), PChar(TargetFileName), bFailIfExists);
        Result:=true;
      end
      else
      begin
        //MessageDlg('ALREADY FileExists'+#13+TargetFileName, mtInformation, [mbOK], 0);
      end;
    false://overwrites the existing file
      if not windows.CopyFile(PChar(SourceFileName), PChar(TargetFileName), bFailIfExists) then
      begin
        Result:=false;
        //MessageDlg('не могу скопировать' +#13+ SourceFileName +#13+'в'+#13+TargetFileName, mtWarning, [mbOK], 0);
        Raise Exception.Create(#13+ 'не могу скопировать файл: ' +#13+ SourceFileName +#13+ ' в файл: ' +#13+ TargetFileName +#13);
      end
      else begin Result:=true; end;
  end;//case
end;//CopyFile


function BrotherDir(MainDir, Dir :string) :string;
var Work_Dir, strTmp :string;
begin
  Work_Dir := GetCurrentDir;
  strTmp := Work_Dir;//
  if not SysUtils.SetCurrentDir(MainDir) then
  begin
    MessageDlg('SetCurrentDir(MainDir)', mtWarning, [mbOK], 0);
  end;
  if not SysUtils.SetCurrentDir('..\' + Dir) then
  begin
    MessageDlg('SetCurrentDir(''..\''' + Dir +')', mtWarning, [mbOK], 0);
  end;
  strTmp := GetCurrentDir;
  SetCurrentDir(Work_Dir);
  result := strTmp;
end;

function GetBrotherDir(Dir :string) :string;
var Work_Dir, strTmp :string;
begin
  Work_Dir := GetCurrentDir;
  strTmp := Work_Dir;
  if not SysUtils.SetCurrentDir('..\' + Dir) then
  begin
    MessageDlg('SetCurrentDir(''..\''' + Dir +')', mtWarning, [mbOK], 0);
  end;
  strTmp := GetCurrentDir;
  SetCurrentDir(Work_Dir);
  result := strTmp;
end;


function GetDirUp() :string;
var
  strTmp: string;
  Dir :string;
  DestName :string;
  const BaseName :string ='..\';
begin
  strTmp := ExtractFileDir(ExtractRelativePath('..\', Application.ExeName));
  DestName := ExtractFileDir(Application.ExeName);
  Dir := ExtractFileDir(ExtractRelativePath(BaseName, DestName));
  Result := Dir;//
  Dir := IncludeTrailingPathDelimiter(Dir);
  Result := Dir;
{
  Exit;
  OldDir := GetCurrentDir();
  Dir:= ExtractFileDir(Application.ExeName);
  if not SysUtils.SetCurrentDir(Dir) then begin
    MessageDlg('SetCurrentDir(Dir)', mtWarning, [mbOK], 0);  end;
  strTmp := GetCurrentDir(); //???

  if not SysUtils.SetCurrentDir('..\') then begin
    MessageDlg('SetCurrentDir(''..\'')', mtWarning, [mbOK], 0);  end;
  strTmp := GetCurrentDir(); //???
  Dir := GetCurrentDir();
  result := Dir;
  SetCurrentDir(OldDir);
  strTmp := GetCurrentDir(); //???
}
end;//GetDirUp

//IniFiles.
function INI(DataIniFile :TIniFile; Section :string; Ident :string; default :variant): variant;
var
  strTmp:string;
begin
  Result := DataIniFile.ReadString(Section, Ident, Default);
  strTmp := Result;
  DataIniFile.WriteString(Section, Ident, strTmp);
  //Result := 0;
end;


function ReadReg(Key, Name :string): Variant;
var FileName, DestName :string;
var
  Reg: Registry.TRegistry;
  strTmp:string;
begin
  result:=Variants.Unassigned;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(Key, false) then
    begin
      //Reg.GetKeyNames
      strTmp := Reg.ReadString(Name);//??
      result:=strTmp;
      //Reg.WriteString('Personal',ObjWorkDir);
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  TRegistry.Create;
end;

///////////////////////////////////////////////////////////////////////////////
//uses Classes;
procedure SaveComponentToTextFile(Component: TComponent; const FileName: string);
var
  ms: TMemoryStream;
  fs: TFileStream;
begin
  fs := TFileStream.Create(FileName, fmCreate or fmOpenReadWrite or fmShareDenyWrite);
  ms := TMemoryStream.Create;
  try
    ms.WriteComponent(Component);
    ms.position := 0;
    fs.Seek(0, soFromEnd);
    ObjectBinaryToText(ms, fs);
  finally
    ms.Free;
    fs.free;
  end;
end;//

procedure FormToFile(const Form :TForm; const FileName: string);
var
  i :Integer;
  Mode: Word;  //Stream: TStream;
  fs: TFileStream;
  ms: TMemoryStream;
begin
  try //if FileExists(FileName) then Mode := (fmOpenReadWrite  or fmShareDenyWrite) else Mode := fmCreate or fmShareDenyWrite;
    ms := TMemoryStream.Create;
    ms.WriteComponent(Form);
    ms.position := 0;

    Mode := fmCreate or fmShareDenyWrite;
    fs := TFileStream.Create(FileName, Mode);

    fs.Seek(0, soFromEnd);//
    ObjectBinaryToText(ms, fs);
  finally
    ms.Free;
    fs.Free;
  end;
end;

procedure SaveComponentToStream(const Component: TComponent; const Stream: TStream);
var
  ms: TMemoryStream;
begin
  ms := TMemoryStream.Create;
  try
    ms.WriteComponent(Component);
    ms.position := 0;
    Stream.Seek(0, soFromEnd);
    ObjectBinaryToText(ms, Stream);
  finally
    ms.Free;
  end;
end;//SaveComponentToStream

procedure FileToForm(const Form :TForm; const FileName: string);
var
  i :Integer;
  Mode: Word;  //Stream: TStream;
  fs: TFileStream;
  ms: TMemoryStream;
begin
  ms := TMemoryStream.Create;
  if FileExists(FileName) then
    try
      Mode := fmOpenRead or fmShareDenyWrite;
      fs := TFileStream.Create(FileName, Mode);

      ObjectTextToBinary(fs, ms);
      ms.position := 0;
      ms.ReadComponent(Form);
    finally
      fs.Free;
      ms.Free;
    end;
end;//

procedure LoadComponentFromStream(Component: TComponent; const Stream :TStream);
var
  ms: TMemoryStream;
  //fs: TFileStream;
begin
  ms := TMemoryStream.Create;
  try
    ObjectTextToBinary(Stream, ms);
    ms.position := 0;
    ms.ReadComponent(Component);
  finally
    ms.Free;
  end;
end;

procedure FormFromFile(const Form :TForm; const FileName: string);
var
  i :Integer;
  Mode: Word;  //Stream: TStream;
  fs: TFileStream;
begin
  if FileExists(FileName) then
    try
      Mode := fmOpenRead or fmShareDenyWrite;
      fs := TFileStream.Create(FileName, Mode);
      for i := 0 to Form.ComponentCount - 1 do
        LoadComponentFromStream(Form.Components[i], fs);
    finally
      fs.Free;
    end;
end;

procedure Form2File(const Form :TForm; const FileName: string);
var
  i :Integer;
  Mode: Word;  //Stream: TStream;
  fs: TFileStream;
  ms: TMemoryStream;
begin
  try //if FileExists(FileName) then Mode := (fmOpenReadWrite  or fmShareDenyWrite) else Mode := fmCreate or fmShareDenyWrite;
    Mode := fmCreate or fmShareDenyWrite;
    fs := TFileStream.Create(FileName, Mode);
    for i := 0 to Form.ComponentCount - 1 do
      SaveComponentToStream(Form.Components[i], fs);
  finally
    fs.Free;
  end;
end;

procedure ForEachOnForm(const Form :TForm; const FileName: string);
var
  i :Integer;
  Mode: Word;  //Stream: TStream;
  fs: TFileStream;
begin
  try
    if FileExists(FileName) then Mode := (fmOpenReadWrite  or fmShareDenyWrite) else Mode := fmCreate or fmShareDenyWrite;
    Mode := fmCreate or fmShareDenyWrite;
    fs := TFileStream.Create(FileName, Mode);
    for i := 0 to Form.ComponentCount - 1 do
      SaveComponentToStream(Form.Components[i], fs);
  finally
    fs.Free;
  end;
end;


procedure StrBreakApart(const S, Delimeter : string; Parts : TStrings);
var
  CurPos: integer;
  CurStr: string;
begin
  Parts.clear;
  Parts.BeginUpdate();
  try
    CurStr:= S;
    repeat
      CurPos:= Pos(Delimeter, CurStr);
      if (CurPos>0) then
      begin
        Parts.Add(Copy(CurStr, 1, Pred(CurPos)));
        CurStr:= Copy(CurStr, CurPos+Length(Delimeter),
                    Length(CurStr)-CurPos- Length(Delimeter)+1);
      end else
        Parts.Add(CurStr);
    until CurPos=0;
  finally
    Parts.EndUpdate();
  end;
end;//StrBreakApart

/////////////////////////////////////////////////////////////////////////////////
//windows,sysutils,registry
procedure RegisterFileType(prefix:string; exepfad:string; IconIndex:byte);
var reg:TRegistry;
begin
  reg:=TRegistry.Create;
  try
    reg.RootKey:= HKEY_CLASSES_ROOT;
    //create a new key >> .ext
    reg.OpenKey('.'+prefix,True);
    //create a new value for this key >> extfile
    reg.WriteString('',prefix+'file');
    reg.CloseKey;

    //create a new key >> extfile
    reg.CreateKey(prefix+'file');
    //create a new key extfile\DefaultIcon
    reg.OpenKey(prefix+'file\DefaultIcon',True);
    //and create a value where the icon is stored >> c:\project1.exe,0
    reg.WriteString('',exepfad+','+IntToStr(IconIndex));
    reg.CloseKey;

    reg.OpenKey(prefix+'file\shell\open\command',True);
    //create value where exefile is stored --> c:\project1.exe "%1"
    reg.WriteString('',exepfad+' "%1"');
    reg.CloseKey;
  finally
    reg.Free;
  end;
end;
{
Пример использования:
procedure TfmOptions.Button1Click(Sender: TObject);
begin
  //сопоставляем нашу програму для работы с таблицами Парадокс
  //используется 1 иконка из ресурсов Application
  RegisterFileType('db',Application.ExeName,1);

  //сопоставляем нашу програму для работы с DBF таблицами
  //используется 2 иконка из ресурсов Application
  RegisterFileType('dbf',Application.ExeName,2);

  //информируем пользователя о случившимся...
  dlgInfo('Registry suchessfully updated!');
end;
}

////////////////////////////////////////////////////////////////////////////////////
{
>> Создание курсора с процентом выполнения

Функция возвращает хэндл на созданный курсор Windows (hcursor, hicon)
с процентным соотношением, указанным в min,max и pos.
Своего рода ProgressBar, но только зашитый в курсор.

Зависимости: Windows, SysUtils, Graphics, Classes
Автор:       Роман Василенко, romix@nm.ru, Пятигорск
Copyright:   Василенко Роман
Дата:        07 мая 2002 г.
***************************************************** }

//Используемые модули
//uses Windows, SysUtils, Graphics, Classes;


//Сама функция
function create_prc_cursor(min,max,pos:integer):hicon;
var
    cwidth, cheight:integer;
    ii:iconinfo;
    bmc,bmm:tbitmap;
    icon:hicon;
    tw:integer;
    tx:string;

function int_percent(umin,umax,upos,uabs:integer):integer;
begin
    result:=0;
    if umax<umin then exit;
    if upos<umin then exit;
    if upos>umax then begin
        result:=100;
        exit;
    end;
    if (umin=upos) and (umax=upos) then begin
        result:=100;
        exit;
    end;
    result:=round((upos-umin)/((umax-umin)/uabs));
end;

function create_curspace:tbitmap;
begin
    result:=tbitmap.create;
    result.pixelformat:=pf4bit;
    result.width:=cwidth;
    result.height:=cheight;
end;

begin
    cwidth:=getsystemmetrics(sm_cxcursor);
    cheight:=getsystemmetrics(sm_cycursor);
    bmc:=create_curspace;
    bmm:=create_curspace;
    with bmm.Canvas do begin
        brush.color:=clwhite;
        FillRect(rect(0,0,bmm.width,bmm.height));
        brush.color:=clblack;
        fillrect(rect(0,bmm.height-8,bmm.width,bmm.height));
        brush.color:=clwhite;
        framerect(rect(0,bmm.height-8,bmm.width,bmm.height));
    end;
    with bmc.canvas do begin
        brush.color:=clblack;
        FillRect(rect(0,0,bmc.width,bmc.height));
        brush.color:=clwhite;
        fillrect(rect(1+int_percent(min,max,pos,bmc.width-2),bmm.height-7,bmc.width-1,bmc.height-1));
        brush.color:=clwhite;
        framerect(rect(0,bmc.height-8,bmc.width,bmc.height));
    end;
    tx:=inttostr(int_percent(min,max,pos,100))+'%';
    with bmm.canvas do begin
        font.Size:=8;
        font.style:=[fsbold];
        font.color:=clwhite;
        brush.color:=clwhite;
        tw:=textwidth(tx);
        textout((cwidth-tw) div 2,8,tx);
    end;
    with bmc.canvas do begin
        font.Size:=8;
        font.style:=[fsbold];
        font.color:=clwhite;
        brush.color:=clblack;
        textout((cwidth-tw) div 2,8,tx);
    end;

    ii.fIcon:=false;
    ii.hbmColor:=bmc.Handle;
    ii.hbmMask:=bmm.handle;
    ii.xHotspot:=0;
    ii.yHotspot:=0;
    icon:=createiconindirect(ii);
    result:=copyicon(icon);
    destroyicon(icon);
    bmc.free;
    bmm.Free;
end;

function isDelphiRunning;
begin
  Result := False;
if FindWindow('TAppBuilder', Nil) <> 0 Then
begin
    //ShowMessage('Delphi and or C++ Builder is running');
    Result := True;
end
else
begin
    //ShowMessage('Delphi and or C++ Builder is NOT running');
    Result := False;  
end;

end;







procedure AddToLog(s:string);
var
fn:string; 
F:TextFile; 
begin 
  Fn:=ExtractFilePath(ParamStr(0))+'log.txt';
  assignFile(f,fn); 
  if FileExists(fn) then Append(f) else Rewrite(f); 

  Writeln(f, SysUtils. DateTimeToStr(Now) +' : '+ s);
  //Writeln(f,s);

  Flush(f); 
  Closefile(f);
end;


end.
///////////////////////////////////////////////////////////////////////////////

procedure TLngINISupp.FindCaptions;
var
  i, j, k: Integer;
  Source: TComponent;
  XComponent: TComponent;
  XCaption: string;
  XPropInfo: PPropInfo;
begin
  for i := 0 to self.Owner.Owner.ComponentCount - 1 do
  begin
    for j := 0 to self.Owner.Owner.Components[i].ComponentCount - 1 do
    begin
      Source := self.Owner.Owner.Components[i].Components[j];
      XComponent := Source;
      if Assigned(XComponent) then
      begin
        XPropInfo := GetPropInfo(XComponent, 'Caption');
        if Assigned(XPropInfo) then
        begin
          XCaption := TypInfo.GetStrProp(XComponent, 'Caption');
          //VerifyValue(Owner.Name, XComponent.Name, XCaption)
          VerifyVal(Owner.Name, XComponent.Name, 'Caption', XCaption)
        end;
        XPropInfo := GetPropInfo(XComponent, 'Hint');
        if Assigned(XPropInfo) then
        begin
          XCaption := TypInfo.GetStrProp(XComponent, 'Hint');
          //VerifyValue(Owner.Name, XComponent.Name, XCaption)
          VerifyVal(Owner.Name, XComponent.Name, 'Hint', XCaption)
        end;
      end;//if Assigned(XComponent) then
    end;//for j := 0 to self.Owner.Owner.Components[i].ComponentCount - 1 do
  end;
end;//FindCaptions


//////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
procedure TCustomerForm._SetReadOnly(Obj: TComponent; Value: boolean);
var
  PropInfo: PPropInfo;
  valueInteger: integer;
begin
  if Value then
    valueInteger := 1
  else
    valueInteger := 0;
  if not (Obj.ClassInfo = nil) then
  begin
    PropInfo := GetPropInfo(Obj.ClassInfo, 'ReadOnly');
    if PropInfo <> nil then
    begin
      case PropInfo^.PropType^.Kind of
        tkEnumeration: SetOrdProp(obj, PropInfo, valueInteger);
      end; // case
    end; //if PropInfo <>
  end; //if not (Obj.ClassInfo = nil)
end; //_SetReadOnly

procedure TCustomerForm.SetReadOnly(Value: boolean);
var
  i : integer;
  f : boolean;
  Panel :TPanel;
  c: TComponent; //Controls
  l: TJvDBLookupCombo;
  g: TJvDBGrid;
begin
  Panel := PanelFind;
  f := Value;  // побежали по всем компоенентам
  for i:= 0 to ComponentCount-1 do
  begin
    c := Components[i];
    if c is TJvDBLookupCombo then
    begin
      l := TJvDBLookupCombo(c);
      with c as TJvDBLookupCombo do
      begin
        if l.Parent = Panel then
          Continue;
      end;
    end;
    if c is TJvDBGrid then
    begin
      g := TJvDBGrid(c);
      with g as TJvDBGrid do
      begin
        g.ReadOnly:=f;
        Continue;
      end;
    end;
    _SetReadOnly(Components[i],f);
  end;
end;




