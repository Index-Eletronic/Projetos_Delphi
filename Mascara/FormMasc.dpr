program FormMasc;

uses
  Vcl.Forms,
  U_FormMask in 'U_FormMask.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
