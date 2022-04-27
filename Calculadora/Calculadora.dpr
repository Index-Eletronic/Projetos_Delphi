program Calculadora;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Calculadora in 'U_Calculadora.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
