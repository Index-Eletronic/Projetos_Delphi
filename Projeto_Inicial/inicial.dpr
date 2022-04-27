program inicial;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  tela2 in 'tela2.pas' {frm_Tela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
