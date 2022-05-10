program BDAcess;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {frm_Inicial};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_Inicial, frm_Inicial);
  Application.Run;
end.
