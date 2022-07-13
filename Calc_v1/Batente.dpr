program Batente;

uses
  Vcl.Forms,
  index in 'index.pas' {frm_index},
  Vcl.Themes,
  Vcl.Styles,
  Bat in 'Bat.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(Tfrm_index, frm_index);
  Application.Run;
end.
