unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, UBusyRtl;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    Detector : TBusyDetector;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  Detector := TBusyDetector.Create(Self);
  with Detector do begin
    Interval := 500;
    Caption:=Application.Title;
    Text := 'Программа занята'#13#10'Подождите пожалуйста';
    Enabled:=true;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i : integer;
  s : ShortString;
begin
//  s :='asfkmasklnfvsdkgjwegjg';
  Detector.Min:=0;
  Detector.Max:=1000;
  for i:=0 to 1000 do begin
    Sleep(10);
    Detector.Position:=i;
//    s[0]:=Char(random(20));
    Detector.State := 'Detector.Position : '+IntToStr(i)+' '+s;
  end;
  Detector.Progressed:=false;
  Detector.Stated:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Detector.Progressed:=false;
  Detector.Stated:=false;
  Sleep(5000);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  OpenDialog1.Execute;
end;

end.
