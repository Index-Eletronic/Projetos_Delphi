unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    txt_nome: TLabeledEdit;
    txt_nome2: TEdit;
    txt_nome3: TEdit;
    btn_deletar: TButton;
    lb_valor: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txt_vlr_1: TEdit;
    txt_vlr_2: TEdit;
    txt_vlr_3: TEdit;
    btn_Calcular: TButton;
    btn_tela2: TButton;
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_CalcularClick(Sender: TObject);
    procedure btn_tela2Click(Sender: TObject);
  private
    var nome:string;

  public
    var sobrenome, endereco:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses tela2;


procedure TForm1.btn_CalcularClick(Sender: TObject);
var cont: integer;
var vlr1, vlr2, total, media: integer;

begin
  vlr1 := strtoint(txt_vlr_1.Text);
  vlr2 := strtoint(txt_vlr_2.Text);

  total := vlr1 + vlr2;

  txt_vlr_3.Text := inttostr(total);

    // Operadores Logicos.
  media := 60;
  // if(total >= media) OU (total > 50)then
  if(total >= media) and (total < 80)then
  begin
    ShowMessage('APROVADO - O Aluno obteve '+ inttostr(total) + ' pontos');
  end
  Else
  begin
    ShowMessage('REPROVADO - O Aluno obteve '+ inttostr(total) + ' pontos');
  end;

  //Laços de Repitação FOR
  {//for cont := 1 to 5 do
  for cont := 5 downto 1 do
  begin
     ShowMessage(inttostr(cont));
     if (cont <= 0) then
     begin
       ShowMessage('O CONTADOR CHEGOU A 0');
     end; }

  // LOOP DE REPITAO WHILE
  cont := 1;
  while (cont <= 4) do
  begin
     ShowMessage(inttostr(cont));
     //cont := cont + 1;
     //cont++
     inc(cont);
  end;
  end;

procedure TForm1.btn_deletarClick(Sender: TObject);
begin
  nome := 'Filipe';
  sobrenome := 'freitas';
  endereco :='Rua A';
  lb_valor.Caption := (nome + ' ' + sobrenome + ' ' + endereco);
end;
procedure TForm1.btn_tela2Click(Sender: TObject);
begin

  frm_Tela2 := Tfrm_Tela2.Create(self);
  //frm_Tela2.Show; Abre a tela porem e possivel trabalhar na tela anterior
  frm_Tela2.ShowModal;  // Abre a tela porem nao e possivel trabalhar na ela anterior


end;

end.


