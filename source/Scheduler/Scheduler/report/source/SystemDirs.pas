unit SystemDirs;

interface
  function GetWindowsDir : string;		    // ����� Windows
  function GetSystem32Dir : string;		    // System32
  function GetDesktopDir : string;		    // ����� ������� ����
  function GetUserDesktopDir : string;		// ������� ���� ������� ������������
  function GetMyDocsDir : string;		      // ��� ��������� ������������
  function GetAllMyDocsDir : string;      // ��� ��������� ���� �������������
  function GetProgramFilesDir : string;		// Program Files
  function GetUserAppDataDir : string;		// Application Data �������� ������������
  function GetAppDataDir : string;		    // Application Data ��� ���� �������������
  function GetTemplatesDir : string;      // ����� ������� MS Office

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
 