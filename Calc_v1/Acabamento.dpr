program Acabamento;

uses
  Vcl.Forms,
  index in 'index.pas' {frm_index},
  Vcl.Themes,
  Vcl.Styles,
  U_precos in 'U_precos.pas' {frm_preco},
  U_Acabam in 'U_Acabam.pas' {frm_acabam};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Turquoise Gray');
  Application.CreateForm(Tfrm_index, frm_index);
  Application.Run;
end.
