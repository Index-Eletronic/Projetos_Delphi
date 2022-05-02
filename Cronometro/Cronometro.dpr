program Cronometro;

uses
  Vcl.Forms,
  U_Cronometro in 'U_Cronometro.pas' {U_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_Form, U_Form);
  Application.Run;
end.
