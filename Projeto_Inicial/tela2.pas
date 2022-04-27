unit tela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_Tela2 = class(TForm)
    lb_Tela2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Tela2: Tfrm_Tela2;

implementation

{$R *.dfm}

procedure Tfrm_Tela2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frm_Tela2 := nil;
end;

end.
