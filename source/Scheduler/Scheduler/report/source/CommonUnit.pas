unit CommonUnit;
{%File 'svs.inc'}

interface

uses
  SysUtils, Classes, IniFiles, Forms
  //,PropStorageEh           SysUtils
  ;

type
  TCommon = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure Init;
    { Private declarations }
  protected
  public
    { Public declarations }
  end;  

//////////////////////
type
  tTypeOfTask = (Basic = 1, Mail, NiR, Dogovor );

  tTask = record
    strTypeOfTask: string;
    iTypeOfTask: integer;
    TypeOfTask: tTypeOfTask;
  end;

  aTask = array of tTask;
  actTypeOfTask = array[tTypeOfTask] of tTask;
  
var
  vTask: aTask;
  cTask: actTypeOfTask;

type
  TModuleOption = (moRemovePath, moIncludeHandle);
  TModuleOptions = set of TModuleOption;
  //enum  = (first , value2, value3, last );

function CreatePackagesCopier(sDestFileName: string): Boolean;
function GetLoadedModulesList(sl: TStrings; Options: TModuleOptions = [moRemovePath]): Boolean;

function Float2Str(Value: Extended): string; overload;
function Str2Float(const S: string): Extended; overload;
function TempDir: string;

var
  xls_template_FileName  : string;

  Common: TCommon;

strTX :string;
strTY :string;
strTZ :string;

arrX : array of real;
arrY : array of real;

ChartBMPFileName: string;

  IniFileName: string;
  IniFile: TIniFile; //GetWindowsDir

  LngINISupp_FileName: string;

  TempDirName: string;
  DataPath: string;

  SplashFormShow: integer;
  LDebug: integer;

  Vers: string;

  cur_type_task_str :string;
  cur_type_task_i :integer;

implementation

uses Dialogs
  , Windows
      //, JvFileUtil
      //,JvJVCLUtils
  , JvJCLUtils
  , utility
  ;

{$R *.dfm}

function TempDir: string;
{функция возвращает путь к папке временных файлов}
var
  Dir: array[0..MAX_PATH - 1] of char;
begin
  GetTempPath(SizeOf(Dir), Dir);
  Result := Dir;
end;


procedure TCommon.Init;
var
  Section, Ident, Default: string;
  i: integer;
begin
  i := High(vTask);
  i := Length(vTask);

  SetLength(vTask, Length(vTask) + 1);
  vTask[High(vTask)].TypeOfTask := Mail;
  cTask[Mail].TypeOfTask := Mail;
  cTask[Mail].strTypeOfTask := 'письмо';

  SetLength(vTask, Length(vTask) + 1);
  vTask[High(vTask)].TypeOfTask := Dogovor;
  cTask[Dogovor].TypeOfTask := Dogovor;
  cTask[Dogovor].strTypeOfTask := 'договор';

  SetLength(vTask, Length(vTask) + 1);
  vTask[High(vTask)].TypeOfTask := Nir;
  cTask[Nir].TypeOfTask := Nir;
  cTask[Nir].strTypeOfTask := 'НИР';


end;

procedure TCommon.DataModuleCreate(Sender: TObject);
var
  Section, Ident, Default: string;
  i: integer;
begin
  Init;

  IniFileName := ChangeFileExt(Application.ExeName, '.ini');
  //IniFileName := JvJCLUtils.GetWindowsDir +'\'+ ChangeFileExt(ExtractFileName(Application.ExeName), '.ini');

  IniFile := TIniFile.Create(IniFileName);

  Section := 'Hint';
  Application.HintShortPause := utility.INI(IniFile, Section, 'HintShortPause', 50); //50
  Application.HintHidePause := utility.INI(IniFile, Section, 'HintHidePause', 5000); //2500
  Application.HintPause := utility.INI(IniFile, Section, 'HintPause', 250); //500

  LDebug := utility.INI(IniFile, 'Debug', 'LDebug', 0);
  //SplashFormShow := utility.INI(IniFile, 'Debug', 'SplashFormShow', 1);

  //IniPropStorageManEh1.IniFileName := IniFileName;
  //IniPropStorageManEh1.

  if FileExists(ChangeFileExt(Application.ExeName, '.hlp')) then
    Application.HelpFile := ChangeFileExt(Application.ExeName, '.hlp');

  TempDirName := ExtractFilePath(Application.ExeName) + 'tmp'; // + '\';
  //TempDirName := JvJCLUtils.GetEnvVar('TMP') + '\' + 'fireplace_tmp'; { TODO : JvJVCLUtils.GetEnvVar }
  ForceDirectories(TempDirName); //MkDir(TempDirName);
  DeleteAllFilesInDir(TempDirName);

  DataPath := ExtractFilePath(ParamStr(0)) + 'data' + '\';


    xls_template_FileName:=ExtractFilePath(Application.ExeName) + 'template1.xls';

end;

procedure TCommon.DataModuleDestroy(Sender: TObject);
begin
  //DeleteAllFilesInDir(TempDirName);
{$IFDEF DEBUG}
  //MessageDlg('TCommon.DataModuleDestroy', mtInformation, [mbOK], 0);
{$ENDIF}
end;


////////////////////////////////////////////////////////////////////////////////////////

{
 type
  TModuleOption = (moRemovePath, moIncludeHandle);
  TModuleOptions = set of TModuleOption;
}
{
function CreatePackagesCopier(sDestFileName: string): Boolean;
function GetLoadedModulesList(sl: TStrings; Options: TModuleOptions = [moRemovePath]): Boolean;
     }

function GetLoadedModulesList(sl: TStrings; Options: TModuleOptions = [moRemovePath]): Boolean;
type
  TModuleArray = array[0..400] of HMODULE;
  EnumModType = function(hProcess: Longint; lphModule: TModuleArray;
    cb: DWord; var lpcbNeeded: Longint): Boolean; stdcall;
var
  psapilib: HModule;
  EnumProc: Pointer;
  ma: TModuleArray;
  I: Longint;
  FileName: array[0..MAX_PATH] of Char;
  S: string;
begin
  Result := False;

  (* Aaiiay ooieoey caioneaaony oieuei aey Widnows NT *)
  if Win32Platform <> VER_PLATFORM_WIN32_NT then
    Exit;

  psapilib := LoadLibrary('psapi.dll');
  if psapilib = 0 then
    Exit;
  try
    EnumProc := GetProcAddress(psapilib, 'EnumProcessModules');
    if not Assigned(EnumProc) then
      Exit;
    sl.Clear;
    FillChar(ma, SizeOF(TModuleArray), 0);
    if EnumModType(EnumProc)(GetCurrentProcess, ma, 400, I) then
    begin
      for I := 0 to 400 do
        if ma[i] <> 0 then
        begin
          FillChar(FileName, MAX_PATH, 0);
          GetModuleFileName(ma[i], FileName, MAX_PATH);
          S := FileName;
          if moRemovePath in Options then
            S := ExtractFileName(S);
          if moIncludeHandle in Options then
            sl.AddObject(S, TObject(ma[I]))
          else
            sl.Add(S);
        end;
    end;
    Result := True;
  finally
    FreeLibrary(psapilib);
  end;
end; //GetLoadedModulesList


function CreatePackagesCopier(sDestFileName: string): Boolean;
var
  ls: TStringList;
  i: Integer;
  ok: Boolean;
  s: string;
  sW: string;
begin
  sW := ExtractFilePath((Application.ExeName)) + '';
  sW := LeftStr(sW, Length(sW) - 1);
  result := false;
  if trim(sDestFileName) = '' then
    exit;
  ls := TStringList.Create;
  try
    GetLoadedModulesList(ls, []);
    i := 0;
    while i < ls.Count do
    begin
      s := trim(ls[i]);
      ok := SameText(copy(s, length(s) - 3, 4), '.bpl');
      if not ok then
        ls.Delete(i)
      else
      begin
        ls[i] := 'copy "' + s + '"' + ' ' + '"' + sW + '"';
        inc(i);
      end;
    end;
    ls.SaveToFile(sDestFileName);
    result := true;
  finally
    FreeAndNil(ls);
  end;
end; //CreatePackagesCopier

//////////////////////////////////////////////////////////////////////////////

function Float2Str(Value: Extended): string; overload;
var
  strTemp: string;
begin
  // TODO -cMM: Float2Str default body inserted
  strTemp := FloatToStrF(Value, ffGeneral, 7, 2);
  strTemp := FloatToStrF(Value, ffFixed, 7, 2);

  Result := strTemp;
  //DecimalSeparator   ThousandSeparator
end; //Float2Str

function Str2Float(const S: string): Extended; overload;
var
  dTmt: Extended;
  tmpDecimalSeparator: Char;
  FormatSettings: TFormatSettings;

  sacs: Boolean;
begin
  tmpDecimalSeparator := DecimalSeparator;
  //GetLocaleFormatSettings;

  if (S = '') then begin Result := 0; exit; end; //
  if (S = ' ') then begin Result := 0; exit; end; //
  //dTmt := StrToFloatDef( S , 0);

  try
    DecimalSeparator := ',';
    sacs := TryStrToFloat(S, dTmt);
    if not sacs then begin
      DecimalSeparator := '.';
      sacs := TryStrToFloat(S, dTmt);
    end;
  finally
    DecimalSeparator := tmpDecimalSeparator;
  end;

  Result := dTmt;
end; //Str2Float
////////////////////////////////////////////////////////////////////////////////////////


initialization

finalization
  //Dir := TempDirName + '\';
  //DeleteAllFilesInDir(TempDirName);
{$IFDEF DEBUG}
  //Windows.OutputDebugString('Отладочное сообщение');
  //MessageDlg('TCommon finalization', mtInformation, [mbOK], 0);
{$ENDIF}

end.

///////////////////////////////////////////////////////////////////////////////
  //var  Splash1 :TForm;
SplashStayOnTop := True; // True; False;
SplashStayOnTop := False; // True; False;
Splash1 := ShowSplashWindow(Application.Icon,
  '  ' + #13#10 + #13#10 +
  ' " читаем файл ... " ' + #13#10 + #13#10 +
  ' Подождите, пожалуйста... ',
  False, nil);
  //FreeAndNil(Splash1); //Splash1.Free; Splash1:=Nil;

