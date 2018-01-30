unit W3Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Math
  , WinSock, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdAuthentication, IdHTTP, IdIPWatch;

type
  TForm2 = class(TForm)
    idhtp1: TIdHTTP;
    idpwtch1: TIdIPWatch;
    procedure FormCreate(Sender: TObject);
  private
    procedure GetHostName128;
    { Private declarations }
  public
  protected
    procedure w3;
    procedure _2ip;
    function GetIP: string;
    function GetLocalIP: string;
  end;

var
  Form2: TForm2;
  strGetHostName128: string;

//procedure w3();
function GetLocalIP: string;
procedure GetMyInetIP;

implementation

{$R *.dfm}

procedure TForm2.w3;
var
  closetime, opentime: tdatetime;
  Present: TDateTime;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  DelYear, DelMonth: Word;
  EndDate: TDateTime;
  Program_Build_Date: TDateTime;
  r: Integer;
  a: double;
  strGetIP: string;
  strGetLocalIP: string;
begin //  обновить программу
exit;

  //GetHostName128;
  //_2ip;
  GetMyInetIP;
  DelYear := 0; DelMonth := 0;
  opentime := time; //
  closetime := opentime + strtotime('00:00:30');

  Present := Now;
  Program_Build_Date := FileDateToDateTime(PInteger(PImageNtHeaders(hInstance +
    DWORD(PImageDosHeader(hInstance)._lfanew)).OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_RESOURCE].VirtualAddress + hInstance + 4)^);
  DecodeDate(Program_Build_Date, Year, Month, Day);
  DelYear := 0; DelMonth := 6;
  Year := Year + DelYear;
  Month := Month + DelMonth;
  EndDate := Program_Build_Date + DelYear * 365 + DelMonth * 30;
  DecodeDate(EndDate, Year, Month, Day);
  //EndDate := EncodeDate(2012, 1, 1);  // проба

  strGetIP := GetIP;
  strGetLocalIP := GetLocalIP;
  if (EndDate < Now) then
  begin
    Randomize;
    r := RandomRange(1, 100);
    if (r < 50) then
    begin
      a := 100 / 0;
      Application.Terminate;
    end
    else
    begin
      Exit;
    end;

  end
  else
  begin
    Exit;
  end;

  if (EndDate < Now) then
    Application.Terminate; //Установить обновленную версию программы

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  w3;
end;

function TForm2.GetLocalIP: string;
var
  WSAData: TWSAData;
  P: PHostEnt;
  Name: array[0..$FF] of Char;
begin // WinSock;
  WSAStartup($0101, WSAData);
  GetHostName(Name, $FF);
  P := GetHostByName(Name);
  Result := inet_ntoa(PInAddr(P.h_addr_list^)^);
  WSACleanup;
end;

function TForm2.GetIP: string;
var
  ip: string;
begin
  exit;
  //ip := idhtp1.Get('http://www.whatismyip.com/automation/n09230945.asp');
  Result := ip;
end;


const
  WINSOCK_VERSION = $0101;

//определение имени своего компа

function GetLocalName: string;
var
  WSAData: TWSAData;
  Buf: array[0..127] of Char;
begin
  Result := '';
  if WSAStartup(WINSOCK_VERSION, WSAData) = 0 then
  begin
    if GetHostName(@Buf, SizeOf(Buf)) = 0 then
    begin
      Result := Buf;
    end;
    WSACleanup;
  end;
end;

//все следующие функции однотипные, только приведения типов данных там по-///разному реализовывается. Остаётся только выбрать одну за эталон

//определение своего IP. Либо можно GetLocalName и подставить в одну из следующих за этим функций.

function GetLocalIP: string;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Buf: array[0..127] of Char;
begin
  Result := '';
  if WSAStartup(WINSOCK_VERSION, WSAData) = 0 then
  begin
    if GetHostName(@Buf, SizeOf(Buf)) = 0 then
    begin
      HostEnt := GetHostByName(@Buf);
      if HostEnt <> nil then Result := inet_ntoa(PInAddr(HostEnt^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
end;

//следующие функции вообще идентичны
//определить IP по имени компа (можно использовать сокращенные или полные)

function GetIP2(LocalName: string): string;
var
  WSAData: TWSAData;
  SockAddrIn: TSockAddrIn;
  HostEnt: PHostEnt;
begin
  Result := '';
  if WSAStartup(WINSOCK_VERSION, WSAData) = 0 then
  begin
    HostEnt := GetHostByName(@LocalName[1]);
    if HostEnt <> nil then
    begin
      SockAddrIn.sin_addr.S_addr := Longint(PLongint(HostEnt^.h_addr_list^)^);
      Result := inet_ntoa(SockAddrIn.sin_addr);
    end;
    WSACleanup;
  end;
end;

function HostToIP(name: string): string;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  addr: PChar;
begin
  Result := '';
  if WSAStartup(WINSOCK_VERSION, WSAData) = 0 then
  begin
    HostEnt := GetHostByName(@Name[1]);
    if HostEnt <> nil then
      if HostEnt^.h_addr_list <> nil then
      begin
        addr := HostEnt^.h_addr_list^;
        if addr <> nil then
          Result := Format('%d.%d.%d.%d', [Byte(addr[0]), Byte(addr[1]), Byte(addr[2]), Byte(addr[3])]);
      end;
    WSACleanup;
  end;
end;

//а эта чуть-чуть посложнее

function GetIPFromHost(const HostName: string): string;
type
  TaPInAddr = array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  pptr: PaPInAddr;
  i: Integer;
begin
  Result := '';
  if WSAStartup(WINSOCK_VERSION, WSAData) = 0 then
  begin
    HostEnt := GetHostByName(PChar(HostName));
    if HostEnt <> nil then
    begin
      pPtr := PaPInAddr(HostEnt^.h_addr_list);
      i := 0;
      while pPtr^[i] <> nil do
      begin
        Result := inet_ntoa(pptr^[i]^);
        Inc(i);
      end;
    end;
    WSACleanup;
  end;
end;

//а вот и обратное преобразование
//получить имя компа (ПОЛНОЕ! ДОМЕННОЕ) по его IP

function IPAddrToName(IPAddr: string): string;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  SockAddrIn: TSockAddrIn;
// IA: Longint; // internet address
begin
  Result := '';
  if WSAStartup(WINSOCK_VERSION, WSAData) = 0 then
  begin
    SockAddrIn.sin_addr.S_addr := inet_addr(PChar(IPAddr));
  {чтобы не писать ещё одну функцию
    вместо предыдущей строчки можно так:
  IA := inet_addr(PChar(AIP)); // переводим в internet address in IP's network order - и далее GetHostByAddr(@IA,..
    }
    HostEnt := GetHostByAddr(@SockAddrIn.sin_addr.S_addr, 4, AF_INET);
    if HostEnt <> nil then
      Result := StrPas(HostEnt^.h_name);
    WSACleanup;
  end;
end;

procedure TForm2.GetHostName128;
var
  wVerReq: WORD;
  wsaData: TWSAData;
  i: PChar;
  h: PHostEnt;
  c: array[0..128] of char;
begin
  wVerReq := MAKEWORD(1, 1);
  WSAStartup(wVerReq, wsaData);
  GetHostName(@c, 128);
  h := GetHostByName(@c);
  strGetHostName128 := h^.h_Name;
  i := iNet_ntoa(PInAddr(h^.h_addr_list^)^);

  strGetHostName128 := i;

  WSACleanup;
end;

{
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdHTTP, Vcl.StdCtrls;
}

procedure TForm2._2ip;
var
  s, p: string;
  IP: TextFile;
  IdHTTP1: TidHTTP;
begin

 // s := idhtp1.Get('http://2ip.ru');
  p := Copy(s, pos('<big>', s) + 5, pos('</big>', s) - pos('<big>', s) - 5);
  //AssignFile(IP, 'ip.txt'); ReWrite (IP); WriteLn(IP, p);
  strGetHostName128 := p;
end;

{-------------------------------------------------------------------------------
    Функция: ParseStr
    Автор:    ArhangeL
    Дата:  2011.01.11
    Входные параметры: str, sub1, sub2: string
    Результат:    string
    Описание: Парсер строки, вытаскивает текст из строки str между тегами sub1, sub2
    Stt входная строка.
    sub1 - открывающий тег.
    Sub2 - закрывающий тег.
  -------------------------------------------------------------------------------}

function ParseStr(str, sub1, sub2: string): string;
var
  st, fin: Integer;
begin
  st := Pos(sub1, str);
  if st > 0 then
  begin
    str := Copy(str, st + length(sub1), length(str) - 1);
    st := 1;
    fin := Pos(sub2, str);
    Result := Copy(str, st, fin - st);
    str := Copy(str, fin + length(sub2), length(str) - 1);
  end;
end;

procedure RuWriteln(const S: string); //Перекодируем стандартный writeln
var
  NewStr: string;
begin
  SetLength(NewStr, Length(S));
  CharToOem(PChar(S), PChar(NewStr));
  Writeln(NewStr);
end;

procedure GetMyInetIP; //Маин процедуре
var
  http: TIdHTTP;
  s: string;
  TruPos: Integer;
  WHOIS_IP: string;
begin
  WHOIS_IP := 'http://2ip.ru/';
  WHOIS_IP := 'http://scanner.esy.es/ipka.php';
  Http := TIdHTTP.Create(nil);
  try
    s := Utf8ToAnsi(http.Get(WHOIS_IP));
    strGetHostName128 := s;
    exit;
    TruPos := AnsiPos('Ваш IP адрес:', s);
    if not (TruPos = 0) then
    begin
      strGetHostName128 := ParseStr(s, '<big>', '</big>');
      RuWriteln('Ваш внешний интернет IP: ' + ParseStr(s, '<big>', '</big>')); //выводим IP
    end;
  finally
    FreeAndNil(http);
  end;
end;

end.
