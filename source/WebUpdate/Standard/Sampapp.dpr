program sampapp;

uses
  ExceptionLog,
  Forms,
  Usampapp in 'Usampapp.pas' {Form1},
  uproxy in 'uproxy.pas' {proxy},
  uselcomp in 'uselcomp.pas' {selcomp};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tproxy, proxy);
  Application.CreateForm(Tselcomp, selcomp);
  Application.Run;
end.
