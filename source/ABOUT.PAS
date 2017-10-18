unit ABOUT;

interface

//{$I svs.INC}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvGIF, ExtCtrls, JvJVCLUtils
  //, JvxCtrls
  , ComCtrls,
  //JvGradientHeaderPanel,
  JvGradientHeaderPanel,
  //JvAnimatedImage,
  JvGIFCtrl, JvComponent,
  JvxCheckListBox, JvSecretPanel, JvTextListBox, JvSpeedButton
  ,JvVersionInfo
  ,JvJCLUtils, JvExControls, JvAnimatedImage
  ;

type
  TAboutForm = class(TForm)
    LabelVer: TLabel;
    AppIcon: TImage;
    lbCopyright: TLabel;//TJvxLabel;
    lbProgName: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    RxGradientCaption1: TJvGradientHeaderPanel;//TJvGradientHeaderPanel ;
    edMailto: TEdit;
    Label2: TLabel;
    Image2: TImage;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    RxGIFAnimator1: TJvGIFAnimator ;
    Panel2: TPanel;
    Panel4: TPanel;
    ProgNameMemo: TMemo;
    VerMemo: TMemo;
    ADOMemo: TMemo;
    JvGIFAnimator1: TJvGIFAnimator;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure WebLabelSVSClick(Sender: TObject);
    procedure edMailtoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure VerMemoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
  public
  end;

procedure StartEMailClient(MailTo, Subject, Body :string);
procedure AboutForm_Show;

var
  AboutForm: TAboutForm;

implementation

uses ComObj,
     //SetupApi,//     ,JvVersionInfo
     ShellAPI
     ,QStrings
     ;
{$R *.dfm}

procedure TAboutForm.FormCreate(Sender: TObject);
var
  JvVersionInfo: TJvVersionInfo ; //JvVersionInfo
  tmp: string;
  WordDelims: TCharSet;
  v: OleVariant;
begin
  AppIcon.Picture.Icon := Application.Icon;
  AppIcon.Cursor := crHandPoint;

  JvVersionInfo := TJvVersionInfo .Create(Application.ExeName);
  WordDelims := ['.'];
  tmp := 'Version: ' + JvJCLUtils.ExtractWord(1, JvVersionInfo.FileVersion, WordDelims);
  tmp := tmp + '.' + ExtractWord(2, JvVersionInfo.FileVersion, WordDelims);
  tmp := tmp + #10#13 + 'Release ' + ExtractWord(3, JvVersionInfo.FileVersion, WordDelims);
  tmp := tmp + '  Build ' + ExtractWord(4, JvVersionInfo.FileVersion, WordDelims);
  tmp := tmp + #10#13 + 'LastCompiled: ' + DateTimeToStr(JvVersionInfo.VerFileDate);
  //JvVersionInfo.
  LabelVer.Caption := tmp;
  VerMemo.Clear;
  VerMemo.Lines.Add('Version: ' + ExtractWord(1, JvVersionInfo.FileVersion, WordDelims)+'.' + ExtractWord(2, JvVersionInfo.FileVersion, WordDelims));
  VerMemo.Lines.Add('Release ' + ExtractWord(3, JvVersionInfo.FileVersion, WordDelims));
  VerMemo.Lines.Add('Build ' + ExtractWord(4, JvVersionInfo.FileVersion, WordDelims));
  VerMemo.Lines.Add('LastCompiled: ' + DateTimeToStr(JvVersionInfo.VerFileDate));
  JvVersionInfo.FreeInstance;

  lbProgName.Caption:='"'+Application.Title+'"';
  ProgNameMemo.Lines.Add('Program: '+'"'+Application.Title+'"');

  Self.Caption := '';//{'About ... ' +'"'+} ' '+ Application.Title {+ '"'};  //Self.Caption
{ TODO :  }
  //RxGradientCaption1.FormCaption := Caption;//

  try
    label1.Caption:= '' ;
    v := CreateOleObject ( 'ADODB.Connection' );
    //ShowMessage ( v.Version );
    label1.Caption:= v.Version;
    ADOMemo.Clear;ADOMemo.Lines.Add('На front-end computer установлена ADO версии: '+v.Version);
  except  ;
  end;
end;//FormCreate


procedure TAboutForm.WebLabelSVSClick(Sender: TObject);
begin
//
end;

procedure TAboutForm.edMailtoClick(Sender: TObject);
  var str1, strmsg, MailTo, Body, Subject: string;
  var p : string;//QStrings
begin
  p := '%20';
  Subject := 'о программе: ' + Application.Title + ' ';
  Body := 'Во первых строках своего письма хочу выразить чувство глубокого восхищения и сказать спасибо за замечательную прогу !!!';
  MailTo := edMailTo.Text;

  StartEMailClient(MailTo, Subject, Body);
end;

///////////////////////////////////////////////////////////////////////////////
//QStrings //ShellAPI
procedure StartEMailClient(MailTo, Subject, Body :string);
  var strmsg :string;
  var p : string;//QStrings //ShellAPI
begin
  p := '%20';
  strmsg := 'mailto:'+ MailTo + '?Subject=' + Subject + '&Body=' + Body;

  Q_ReplaceCharsByOneChar(strmsg , [' '], ' ');
  strmsg := Q_ReplaceStr(strmsg, ' ', p);
  ShellAPI.ShellExecute(Application.Handle,'open',pChar(strmsg),'','',SW_SHOW);
end;

procedure TAboutForm.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TAboutForm.VerMemoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
    close;
end;

procedure TAboutForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
    close;
end;

procedure TAboutForm.BitBtn1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
    close;
end;

procedure TAboutForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //if Key=VK_ESCAPE then    close;
end;

procedure TAboutForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
    close;
end;

procedure TAboutForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if msg.CharCode=VK_ESCAPE then close;
end;

procedure AboutForm_Show;
begin
  if (AboutForm = nil) then
    Application.CreateForm(TAboutForm, AboutForm);
  AboutForm.ShowModal;
end;

end.
