unit SystemDirs;

interface
  function GetWindowsDir : string;		    // Папка Windows
  function GetSystem32Dir : string;		    // System32
  function GetDesktopDir : string;		    // Общий рабочий стол
  function GetUserDesktopDir : string;		// Рабочий стол данного пользователя
  function GetMyDocsDir : string;		      // Мои документы пользователя
  function GetAllMyDocsDir : string;      // Мои документы всех пользователей
  function GetProgramFilesDir : string;		// Program Files
  function GetUserAppDataDir : string;		// Application Data текущего пользователя
  function GetAppDataDir : string;		    // Application Data для всех пользователей
  function GetTemplatesDir : string;      // Папка шаблнов MS Office

implementation

uses
  Windows, ShlObj,SHFolder;


function GetWindowsDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_WINDOWS, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetSystem32Dir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_SYSTEM, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetDesktopDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_COMMON_DESKTOPDIRECTORY, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetUserDesktopDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_DESKTOPDIRECTORY, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetMyDocsDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_PERSONAL, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetProgramFilesDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_PROGRAM_FILES, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetUserAppDataDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_APPDATA, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetAppDataDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_COMMON_APPDATA, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetAllMyDocsDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_COMMON_DOCUMENTS, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

function GetTemplatesDir : string;
var
  c   : array [0..MAX_PATH] of char;
  dir : string;
begin
  SHGetFolderPath(0, CSIDL_TEMPLATES, 0, 0, c);
  dir := c;
  result := dir + '\';
end;

end.
 