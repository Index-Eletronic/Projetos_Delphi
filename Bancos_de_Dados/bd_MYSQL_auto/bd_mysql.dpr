program bd_mysql;

uses
  System.StartUpCopy,
  FMX.Forms,
  Cadastro_Func in 'Cadastro_Func.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
