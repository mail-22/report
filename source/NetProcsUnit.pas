unit NetProcsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit_BaseForm, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement;

type
  TNetProcsForm = class(TBaseForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TAdapterStatus = record
    adapter_address: array[0..5] of Char;
    filler: array[1..4 * SizeOf(Char) + 19 * SizeOf(Word)
    + 3 * SizeOf(DWORD)] of Byte;
  end;
  THostInfo = record
    username: PWideChar;
    logon_domain: PWideChar;
    oth_domains: PWideChar;
    logon_server: PWideChar;
  end; {record}

function IsNetConnect: Boolean;
{���������� TRUE ���� ��������� ��������� � ����, ����� - FALSE}

function AdapterToString(Adapter: TAdapterStatus): string;
{����������� MAC ���� � ��������� xx-xx-xx-xx}

function GetMacAddresses(const Machine: string;
  const Addresses: TStrings): Integer;
{��������� Addresses MAC-�������� ���������� � ������� ������  Machine.
 ���������� ����� ��� ������� �� ����������}

function GetNetUser(HostName: WideString): THostInfo;
{���������� LOGIN �������� ������������ �� HOSTNAME ����������}



function GetMACAddressTest: string;

var
  NetProcsForm: TNetProcsForm;
  strMac :string;
implementation

uses NB30;

{$R *.dfm}


function IsNetConnect: Boolean;
begin
  if GetSystemMetrics(SM_NETWORK) and $01 = $01 then
    Result := True
  else
    Result := False;
end; {function}

function AdapterToString(Adapter: TAdapterStatus): string;
begin
  with Adapter do
    Result :=
      Format('%2.2x-%2.2x-%2.2x-%2.2x-%2.2x-%2.2x', [
      Integer(adapter_address[0]), Integer(adapter_address[1]),
        Integer(adapter_address[2]), Integer(adapter_address[3]),
        Integer(adapter_address[4]), Integer(adapter_address[5])]);
end; {function}

function GetMacAddresses(const Machine: string;
  const Addresses: TStrings): Integer;
const
  NCBNAMSZ = 16; // absolute length of a net name
  MAX_LANA = 254; // lana's in range 0 to MAX_LANA inclusive
  NRC_GOODRET = $00; // good return
  NCBASTAT = $33; // NCB ADAPTER STATUS
  NCBRESET = $32; // NCB RESET
  NCBENUM = $37; // NCB ENUMERATE LANA NUMBERS
type
  PNCB = ^TNCB;
  TNCBPostProc = procedure(P: PNCB); stdcall;
  TNCB = record
    ncb_command: Byte;
    ncb_retcode: Byte;
    ncb_lsn: Byte;
    ncb_num: Byte;
    ncb_buffer: PChar;
    ncb_length: Word;
    ncb_callname: array[0..NCBNAMSZ - 1] of Char;
    ncb_name: array[0..NCBNAMSZ - 1] of Char;
    ncb_rto: Byte;
    ncb_sto: Byte;
    ncb_post: TNCBPostProc;
    ncb_lana_num: Byte;
    ncb_cmd_cplt: Byte;
    ncb_reserve: array[0..9] of Char;
    ncb_event: THandle;
  end;
  PLanaEnum = ^TLanaEnum;
  TLanaEnum = record
    length: Byte;
    lana: array[0..MAX_LANA] of Byte;
  end;
  ASTAT = record
    adapt: TAdapterStatus;
    namebuf: array[0..29] of TNameBuffer;
  end;
var
  NCB: TNCB;
  Enum: TLanaEnum;
  I: Integer;
  Adapter: ASTAT;
  MachineName: string;
begin
  Result := -1;
  Addresses.Clear;
  MachineName := UpperCase(Machine);
  if MachineName = '' then
    MachineName := '*';
  FillChar(NCB, SizeOf(NCB), #0);
  NCB.ncb_command := NCBENUM;
  NCB.ncb_buffer := Pointer(@Enum);
  NCB.ncb_length := SizeOf(Enum);
  if Word(NetBios(@NCB)) = NRC_GOODRET then
  begin
    Result := Enum.Length;
    for I := 0 to Ord(Enum.Length) - 1 do
    begin
      FillChar(NCB, SizeOf(TNCB), #0);
      NCB.ncb_command := NCBRESET;
      NCB.ncb_lana_num := Enum.lana[I];
      if Word(NetBios(@NCB)) = NRC_GOODRET then
      begin
        FillChar(NCB, SizeOf(TNCB), #0);
        NCB.ncb_command := NCBASTAT;
        NCB.ncb_lana_num := Enum.lana[i];
        StrLCopy(NCB.ncb_callname, PChar(MachineName), NCBNAMSZ);
        StrPCopy(@NCB.ncb_callname[Length(MachineName)],
          StringOfChar(' ', NCBNAMSZ - Length(MachineName)));
        NCB.ncb_buffer := PChar(@Adapter);
        NCB.ncb_length := SizeOf(Adapter);
        if Word(NetBios(@NCB)) = NRC_GOODRET then
          Addresses.Add(AdapterToString(Adapter.adapt));
      end;
    end;
  end;
end; {function}

function
  NetWkstaUserEnum(servername: PWideChar;
  level: DWord;
  var bufptr: Pointer;
  prefmaxlen: DWord;
  var entriesread: PDWord;
  var totalentries: PDWord;
  var resumehandle: PDWord): LongInt;
  stdcall; external 'netapi32.dll' name 'NetWkstaUserEnum';

function GetNetUser(HostName: WideString): THostInfo;
var
  Info: Pointer;
  ElTotal: PDWord;
  ElCount: PDWord;
  Resume: PDWord;
  Error: LongInt;
begin
  Resume := 0;
  NetWkstaUserEnum(PWideChar(HostName), 1, Info, 0,
    ElCount, ElTotal, Resume);
  Error := NetWkstaUserEnum(PWideChar(HostName), 1, Info, 256 *
    Integer(ElTotal),
    ElCount, ElTotal, Resume);
  case Error of
    ERROR_ACCESS_DENIED: Result.UserName := 'ERROR - ACCESS DENIED';
    ERROR_MORE_DATA: Result.UserName := 'ERROR - MORE DATA';
    ERROR_INVALID_LEVEL: Result.UserName := 'ERROR - INVALID LEVEL';
  else if Info <> nil then
    Result := THostInfo(info^)
  else
  begin
    Result.username := '???';
    Result.logon_domain := '???';
    Result.oth_domains := '???';
    Result.logon_server := '???';
  end; {if}
  end; {case}
end; {function}

//////
function GetAdapterInfo(Lana: Char): string;
var
  Adapter: TAdapterStatus;
  NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBRESET);
  NCB.ncb_lana_num := AnsiChar(Lana);
  if Netbios(@NCB) <> Char(NRC_GOODRET) then
  begin
    Result := '����� �� ��������';
    Exit;
  end;
 
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBASTAT);
  NCB.ncb_lana_num := AnsiChar(Lana);
  NCB.ncb_callname := '*';
 
  FillChar(Adapter, SizeOf(Adapter), 0);
  NCB.ncb_buffer := @Adapter;
  NCB.ncb_length := SizeOf(Adapter);
  if Netbios(@NCB) <> Char(NRC_GOODRET) then
  begin
    Result := '����� �� ��������';
    Exit;
  end;
  Result :=
  IntToHex(Byte(Adapter.adapter_address[0]), 2) + '-' +
  IntToHex(Byte(Adapter.adapter_address[1]), 2) + '-' +
  IntToHex(Byte(Adapter.adapter_address[2]), 2) + '-' +
  IntToHex(Byte(Adapter.adapter_address[3]), 2) + '-' +
  IntToHex(Byte(Adapter.adapter_address[4]), 2) + '-' +
  IntToHex(Byte(Adapter.adapter_address[5]), 2);
end;

function GetMACAddress: string;
var
  AdapterList: TLanaEnum;
  NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBENUM);
  NCB.ncb_buffer := @AdapterList;
  NCB.ncb_length := SizeOf(AdapterList);
  Netbios(@NCB);
  if Byte(AdapterList.length) > 0 then  begin
    Result := GetAdapterInfo(Char(AdapterList.lana[0]));
    strMac  :=  Result;
  end
  else begin
    Result := '����� �� ��������';
    strMac :=  Result;
  end
end;



function GetMACAddressTest: string;
var
mac:string;
begin
 mac :=GetMacAddress;
 Result :=  mac;
 //ShowMessage(mac);
end;

end.



end.
