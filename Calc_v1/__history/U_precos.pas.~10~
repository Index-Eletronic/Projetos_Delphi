unit U_precos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_preco = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_preco: Tfrm_preco;

implementation

{$R *.dfm}

uses index;

procedure Tfrm_preco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_index := Tfrm_index(self);
frm_index.Show
end;

end.
