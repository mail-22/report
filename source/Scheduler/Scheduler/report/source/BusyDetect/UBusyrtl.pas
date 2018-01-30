unit UBusyRtl;

interface

uses Classes, Messages, Controls, Windows, SysUtils, ExtCtrls, StdCtrls, ComCtrls;

const

  CBDI_BORDER_WIDTH = 10;

type
  TBusyDetector = class;
  TBusyWindow = class;

  TBusyWindowClass = class of TBusyWindow;

  TBusyWindowClassEvent = procedure(Sender: TObject; var WindowClass: TBusyWindowClass) of object;

  TBusyDetectorInfo = record
    Modify,
    MCaption,
    MText,
    MState,
    MProgress,
    MPosition,
    MMinMax,
    MStep : Integer;
  end;

{ TBusyDetector }

  TBusyDetector = class(TComponent)
  private
    FInfo : TBusyDetectorInfo;

    FInterval : Cardinal;
    FCaption  : TCaption;
    FText     : TCaption;

    FStated   : Boolean;
    FState    : TCaption;

    FProgressed : Boolean;
    FMin: Integer;
    FMax: Integer;
    FPosition: Integer;
    FStep: Integer;

    FWindowClass: TBusyWindowClass;
    FWindow: TBusyWindow;
    FThread: TThread;

    FOnGetWindowClass: TBusyWindowClassEvent;
    FOnBusyDetect: TNotifyEvent;
    FOnIdleDetect: TNotifyEvent;

    procedure SetEnabled(Value: Boolean);
    procedure SetInterval(Value: Cardinal);

    procedure SetMin(Value: Integer);
    procedure SetMax(Value: Integer);
    procedure SetPosition(Value: Integer);
    procedure SetStep(Value: Integer);
    procedure SetCaption(const Value: TCaption);
    procedure SetProgressed(Value: Boolean);
    procedure SetStated(Value: Boolean);
    procedure SetState(const Value: TCaption);
    procedure SetText(const Value: TCaption);
    function  GetEnabled: Boolean;
    function  GetDetectorInfo : TBusyDetectorInfo;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BusyDetect;
    procedure UpdateDetect;
    procedure IdleDetect;
  published
    property Enabled: Boolean read GetEnabled write SetEnabled default True;
    property Interval: Cardinal read FInterval write SetInterval default 3000;
    property Caption: TCaption read FCaption write SetCaption;
    property Text: TCaption read FText write SetText;

    property Stated: Boolean read FStated write SetStated default False;
    property State: TCaption read FState write SetState;

    property Progressed: Boolean read FProgressed write SetProgressed default False;
    property Min: Integer read FMin write SetMin;
    property Max: Integer read FMax write SetMax;
    property Position: Integer read FPosition write SetPosition default 0;
    property Step: Integer read FStep write SetStep default 10;

    property OnGetWindowClass: TBusyWindowClassEvent read FOnGetWindowClass write FOnGetWindowClass;
    property OnBusyDetect: TNotifyEvent read FOnBusyDetect write FOnBusyDetect;
    property OnIdleDetect: TNotifyEvent read FOnIdleDetect write FOnIdleDetect;
  end;

  TBusyWindow = class(TPanel)
  private
    FDetector : TBusyDetector;
    FInfo     : TBusyDetectorInfo;

    FTextLabel     : TLabel;
    FStateLabel    : TLabel;
    FStateAnimate  : TAnimate;
    FStateProgress : TProgressBar;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateBody; virtual;
    function  DoUpdateBody : boolean; virtual;
    procedure ReCalcBody; virtual;
    procedure Paint; override;
  public
    constructor CreateParented(ParentWindow: HWnd; ADetector : TBusyDetector);
    procedure UpdateBody;
    procedure Show;
    procedure Hide;
    property BiDiMode;
    property Caption;
    property Color;
    property Font;
  end;

implementation

uses Forms;

{$R Busyavi.res}

type

{ TBusyThread }

  TBusyThread = class(TThread)
  private
    FDetector  : TBusyDetector;
    FException : Exception;
    FStep,
    FBackStep,
    FErrorCount,
    FCallCount : word;
    FMsgCode   : UINT;
  protected
    procedure Execute; override;
    procedure HandleException;
    function  ProcessMessages : boolean;
    function  WaitForInputIdleWindow(Wnd : HWND; TimeOut : Longword) : boolean;
  public
    constructor Create(Detector: TBusyDetector; Enabled: Boolean);
  end;

 { TBusyDetector }

constructor TBusyDetector.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FWindowClass := nil;
  FWindow      := nil;
  FInterval    := 3000;
  FillChar(FInfo,SizeOf(FInfo),0);
  Progressed   := false;
  Stated       := false;
  FThread      := TBusyThread.Create(Self, False);
end;

destructor TBusyDetector.Destroy;
begin
  Destroying;

  FOnGetWindowClass := nil;
  FOnBusyDetect     := nil;
  FOnIdleDetect     := nil;
  if FThread.Suspended then FThread.Resume;
  FThread.Terminate;

  inherited Destroy;
end;

procedure TBusyDetector.IdleDetect;
begin
  if Assigned(FOnIdleDetect) then FOnIdleDetect(Self);

  if Assigned(FWindow) then FWindow.Hide;
end;

procedure TBusyDetector.BusyDetect;
begin
  if not Assigned(FWindowClass) then begin
    if Assigned(FOnGetWindowClass) then FOnGetWindowClass(Self, FWindowClass);
    if not Assigned(FWindowClass) then FWindowClass := TBusyWindow;
  end;

  if not Assigned(FWindow) then begin
    FWindow := FWindowClass.CreateParented(GetDesktopWindow, Self);
  end;

  if Assigned(FOnBusyDetect) then FOnBusyDetect(Self);

  if Assigned(FWindow) then FWindow.Show;
end;

procedure TBusyDetector.UpdateDetect;
begin
  if Assigned(FWindow) then FWindow.UpdateBody;
end;

procedure TBusyDetector.SetCaption(const Value: TCaption);
begin
  inc(FInfo.Modify);
  inc(FInfo.MCaption);
  FCaption := Value;
end;

procedure TBusyDetector.SetEnabled(Value: Boolean);
begin
  FThread.Suspended := not Value;
end;

procedure TBusyDetector.SetInterval(Value: Cardinal);
begin
  FInterval := Value;
end;

procedure TBusyDetector.SetMax(Value: Integer);
begin
  inc(FInfo.Modify);
  inc(FInfo.MProgress);
  inc(FInfo.MMinMax);
  FMax := Value;
end;

procedure TBusyDetector.SetMin(Value: Integer);
begin
  inc(FInfo.Modify);
  inc(FInfo.MProgress);
  inc(FInfo.MMinMax);
  FMin := Value;
end;

procedure TBusyDetector.SetPosition(Value: Integer);
begin
  inc(FInfo.Modify);
  inc(FInfo.MProgress);
  inc(FInfo.MPosition);
  FProgressed := true;
  FPosition := Value;
end;

procedure TBusyDetector.SetProgressed(Value: Boolean);
begin
  inc(FInfo.Modify);
  inc(FInfo.MProgress);
  inc(FInfo.MPosition);
  FProgressed := Value;
end;

procedure TBusyDetector.SetState(const Value: TCaption);
begin
  inc(FInfo.Modify);
  inc(FInfo.MState);
  FStated := true;
  FState := Value;
end;

procedure TBusyDetector.SetStep(Value: Integer);
begin
  inc(FInfo.Modify);
  inc(FInfo.MProgress);
  inc(FInfo.MStep);
  FStep := Value;
end;

procedure TBusyDetector.SetText(const Value: TCaption);
begin
  inc(FInfo.Modify);
  inc(FInfo.MText);
  FText := Value;
end;

function TBusyDetector.GetDetectorInfo: TBusyDetectorInfo;
begin
  result := FInfo;
end;

function TBusyDetector.GetEnabled: Boolean;
begin
  result := not FThread.Suspended;
end;

procedure TBusyDetector.SetStated(Value: Boolean);
begin
  inc(FInfo.Modify);
  inc(FInfo.MState);
  FStated := Value;
end;

{ TBusyThread }

constructor TBusyThread.Create(Detector: TBusyDetector; Enabled: Boolean);
begin
  FDetector := Detector;
  inherited Create(not Enabled);
  FreeOnTerminate := True;
  FStep := 0;
  FBackStep :=0;
  FMsgCode := RegisterWindowMessage('TBusyThreadMessage');
end;

procedure TBusyThread.HandleException;
begin
  if not (FException is EAbort) then begin
    if Assigned(Application.OnException) then
      Application.OnException(Self, FException)
    else
      Application.ShowException(FException);
  end;
end;

procedure TBusyThread.Execute;

  function ThreadClosed: Boolean;
  begin
    Result := Terminated or Application.Terminated or (FDetector = nil);
  end;

begin
  while not ThreadClosed do begin
    if SleepEx(FDetector.Interval, False) = 0 then
      if not (WaitForInputIdleWindow(Application.Handle,500)) then begin
        try
          FDetector.BusyDetect;
        except
          on E: Exception do begin
            FException := E;
            HandleException;
          end;
        end;
        while not WaitForInputIdleWindow(Application.Handle,100) do begin
          try
            FDetector.UpdateDetect;
          except
            on E: Exception do begin
              FException := E;
              HandleException;
            end;
          end;
        end;
        try
          FDetector.IdleDetect;
        except
          on E: Exception do begin
            FException := E;
            HandleException;
          end;
        end;
      end;
  end;
end;

procedure BusyThreadAsyncProc(wnd : HWND; uMsg : UINT; dwData : DWORD;  Result : LRESULT); stdcall;
begin
  TBusyThread(dwData).FBackStep := TBusyThread(dwData).FStep;
end;

function TBusyThread.WaitForInputIdleWindow(Wnd: HWND;
  TimeOut: Longword): boolean;
var
  i : integer;
begin
  result := false;
  if SendMessageCallback(Application.Handle,
                          FMsgCode,0,0,
                          @BusyThreadAsyncProc,
                          Integer(Self))
  then
    Inc(FCallCount)
  else
    Inc(FErrorCount);
  for i:=0 to TimeOut div 23 do begin
    if (FStep=FBackStep) or ProcessMessages then begin
      FCallCount  := 0;
      FErrorCount := 0;
      result      := true;
      Inc(FStep);
      break;
    end;
    Sleep(23);
  end;
end;


function  TBusyThread.ProcessMessages : boolean;
var
  Msg : TMsg;
begin
  result := false;
  while PeekMessage(Msg, 0, 0, 0, PM_REMOVE) do begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
    if Terminated then begin
      result := true;
    end;
  end;
end;

{ TBusyWindow }

constructor TBusyWindow.CreateParented(ParentWindow: HWnd; ADetector : TBusyDetector);
begin
  inherited CreateParented(ParentWindow);
  FDetector := ADetector;
  FillChar(FInfo,SizeOf(FInfo),0);
  FInfo.Modify:=-1;
  BevelInner:=bvNone;
  BevelOuter:=bvNone;
  Align:=alNone;
  AutoSize:=true;
  if Left=0 then Left:=(Screen.Width-Width) div 2;
  if Top=0  then Top :=(Screen.Height-Height) div 2;
  BorderWidth:=CBDI_BORDER_WIDTH;
  CreateBody;
end;

procedure TBusyWindow.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := Style or WS_POPUP or WS_CAPTION;
    Style := Style and not WS_VISIBLE;
    ExStyle := ExStyle or WS_EX_DLGMODALFRAME or WS_EX_TOPMOST;
  end;
end;

procedure TBusyWindow.CreateBody;
begin
  FTextLabel  := TLabel.Create(Self);
  FTextLabel.Parent := Self;
  FStateLabel  := TLabel.Create(Self);
  FStateLabel.Parent := Self;
  FStateAnimate := TAnimate.Create(Self);
  FStateAnimate.Parent := Self;
  FStateAnimate.ResId:=1;
  FStateProgress := TProgressBar.Create(Self);
  FStateProgress.Parent := Self;
end;


function  TBusyWindow.DoUpdateBody : boolean;
var
  LInfo : TBusyDetectorInfo;
begin
  LInfo := FDetector.GetDetectorInfo;
  result := false;
  if LInfo.Modify <> FInfo.Modify then begin
    if LInfo.MCaption<>FInfo.MCaption then Caption:= FDetector.Caption;
    if LInfo.MText<>FInfo.MText then begin
      FTextLabel.Caption:= FDetector.Text;
      result := true;
    end;
    if LInfo.MState<>FInfo.MState then begin
      FStateLabel.Visible:=FDetector.Stated;
      FStateLabel.Caption:= FDetector.State;
      result := true;
    end;
    if LInfo.MProgress<>FInfo.MProgress then begin
      FStateProgress.Visible:=FDetector.Progressed;
      if LInfo.MPosition<>FInfo.MPosition then FStateProgress.Position:= FDetector.Position;
      if LInfo.MMinMax<>FInfo.MMinMax then begin
        FStateProgress.Min:= FDetector.Min;
        FStateProgress.Max:= FDetector.Max;
      end;
      if LInfo.MStep<>FInfo.MStep then FStateProgress.Step:= FDetector.Step;
    end;
    Move(LInfo,FInfo,SizeOf(FInfo));
  end;
end;

procedure TBusyWindow.ReCalcBody;
var
  LTop : integer;
begin
  FTextLabel.Left:=FStateAnimate.Left+FStateAnimate.Width+CBDI_BORDER_WIDTH;
  if FTextLabel.Height>FStateAnimate.Height then LTop :=FTextLabel.Top+FTextLabel.Height+CBDI_BORDER_WIDTH
  else LTop :=FStateAnimate.Top+FStateAnimate.Height+CBDI_BORDER_WIDTH;
  if FStateProgress.Visible then begin
    FStateProgress.Top:=LTop;
    FStateProgress.Width:=FTextLabel.Left+FTextLabel.Width-FStateProgress.Left;
    LTop := FStateProgress.Top+FStateProgress.Height+CBDI_BORDER_WIDTH;
  end;
  if FStateLabel.Visible then begin
    FStateLabel.Top:=LTop;
  end;
end;

procedure TBusyWindow.Hide;
begin
  ShowWindow(Handle, SW_HIDE);
  try
    FStateAnimate.Active:=false;
  except
  end;
end;

procedure TBusyWindow.Show;
begin
  UpdateBody;
  try
    FStateAnimate.Active:=true;
  except
  end;
  ShowWindow(Handle, SW_SHOW);
end;

procedure TBusyWindow.UpdateBody;
begin
  if DoUpdateBody then ReCalcBody;
end;

procedure TBusyWindow.Paint;
var
  Rect: TRect;
begin
  Rect := GetClientRect;
  with Canvas do
  begin
    Brush.Color := Color;
    FillRect(Rect);
  end;
end;

end.
