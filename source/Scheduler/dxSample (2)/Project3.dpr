program Project3;

uses
  Forms,
  Unit3 in 'Unit3.pas' {Form3},
  cxSchedulerEventEditor in 'cxSchedulerEventEditor.pas' {cxSchedulerEventEditorForm},
  Unit1 in 'Unit1.pas' {cxSchedulerEventEditorForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TcxSchedulerEventEditorForm1, cxSchedulerEventEditorForm1);
  Application.Run;
end.
