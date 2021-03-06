unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FMX.StdCtrls, FMX.Controls.Presentation, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Edit, FMX.Objects;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    tb_usuario: TFDTable;
    btn_conectar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permi: TEdit;
    txt_idade: TEdit;
    btn_novo: TButton;
    btn_editar: TButton;
    btn_salvar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    btn_volta: TButton;
    btn_frente: TButton;
    imagem: TImage;
    btn_carregar: TButton;
    OpenDialog1: TOpenDialog;
    procedure btn_conectarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_usuarioBeforePost(DataSet: TDataSet);
    procedure tb_usuarioBeforeInsert(DataSet: TDataSet);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_voltaClick(Sender: TObject);
    procedure btn_frenteClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure tb_usuarioBeforeEdit(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_carregarClick(Sender: TObject);
  private
   procedure Limpar; //Declarar a procedure
   procedure Bloqueartxt;
   procedure CarregarDados;
   procedure HabilitarCampos;
  public
  nomeimg : string;

  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Limpar;
begin
  txt_nome.Text := '';
  txt_sobrenome.Text := '';
  txt_permi.Text := '';
  txt_idade.Text := '';



end;

procedure TForm1.Bloqueartxt;
begin
txt_nome.Enabled := false;
txt_sobrenome.Enabled := false;
txt_permi.Enabled := false;
txt_idade.Enabled := false;

end;

procedure TForm1.btn_cancelarClick(Sender: TObject);
begin
    tb_usuario.Cancel;
    CarregarDados;
    Bloqueartxt;
end;

procedure TForm1.btn_carregarClick(Sender: TObject);
var formato:string;
begin
  if OpenDialog1.Execute then
  begin
    imagem.Bitmap.LoadFromFile(OpenDialog1.FileName);
    //imagem.Bitmap.SaveToFile(GetCurrentDir + '\Acess\img\'+ floatTostr( tb_usuario.FieldByName('id').Value) + '_' + tb_usuario.FieldByName('nome').Value + 'png'); //Somente img .png
    formato := ExtractFileExt(OpenDialog1.FileName);
    nomeimg := floatTostr( tb_usuario.FieldByName('id').Value) + '_' + tb_usuario.FieldByName('nome').Value + formato;
    imagem.Bitmap.SaveToFile(GetCurrentDir + '\Acess\img\'+ nomeimg);
  end;

end;

procedure TForm1.btn_conectarClick(Sender: TObject);
begin
{
 FDConnection1.Params.Database := GetCurrentDir+'/Acess/bd.mdb';
 FDConnection1.Connected := true;

 if FDConnection1.Connected = true then
 begin
    Label1.Text := 'CONECTADO';
    Label1.FontColor := TAlphaColorRec.Lime;
 end
 else
 begin
     Label1.Text := 'ERRO';
    Label1.FontColor := TAlphaColorRec.Red;
 end;
}
end;

procedure TForm1.btn_editarClick(Sender: TObject);
begin
 tb_usuario.Edit;
 btn_volta.Enabled := false;
 btn_frente.Enabled := false;
 btn_carregar.Enabled := true;
end;

procedure TForm1.btn_excluirClick(Sender: TObject);
begin
  tb_usuario.Delete;
  ShowMessage('Usu?rio EXCLUIDO');
  CarregarDados;
  Bloqueartxt;
end;

procedure TForm1.btn_frenteClick(Sender: TObject);
begin
 tb_usuario.Next; // Ir para frente nos registros.
 CarregarDados;
end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
    tb_usuario.Insert;
    Limpar;
    btn_volta.Enabled := false;
    btn_frente.Enabled := false;
    imagem.Bitmap.LoadFromFile(GetCurrentDir + '\Acess\img\no_img.png');
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
    tb_usuario.Post;
    ShowMessage('Usu?rio Salvo');
    CarregarDados;
    Bloqueartxt;
     btn_volta.Enabled := true;
 btn_frente.Enabled := true;
end;

procedure TForm1.btn_voltaClick(Sender: TObject);
begin
   tb_usuario.Prior; // Preview (voltar)
   CarregarDados;

end;

procedure TForm1.CarregarDados;
begin
  txt_nome.Text := tb_usuario.FieldByName('nome').Value; // Faz a pesquiesa o bando e dados pelo nome
 //e traz para o campo txt_nome.
 txt_sobrenome.Text := tb_usuario.FieldByName('sobrenome').Value;
 txt_permi.Text := tb_usuario.FieldByName('permisao').Value;
 txt_idade.Text := tb_usuario.FieldByName('idade').Value;
 imagem.Bitmap.LoadFromFile(GetCurrentDir + '\Acess\img\' + tb_usuario.FieldByName('imagem').Value);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 FDConnection1.Params.Database := GetCurrentDir+'/Acess/bd.mdb';
 FDConnection1.Connected := true;

 tb_usuario.TableName := 'usuarios';
 tb_usuario.Active := true;

  CarregarDados;


end;

procedure TForm1.HabilitarCampos;
begin
txt_nome.Enabled := true;
txt_sobrenome.Enabled := true;
txt_permi.Enabled := true;
txt_idade.Enabled  := true;
btn_volta.Enabled := true;
btn_frente.Enabled := true;
end;

procedure TForm1.tb_usuarioBeforeEdit(DataSet: TDataSet);
begin
HabilitarCampos;
end;

procedure TForm1.tb_usuarioBeforeInsert(DataSet: TDataSet);
begin
HabilitarCampos;

end;

procedure TForm1.tb_usuarioBeforePost(DataSet: TDataSet);
begin
 tb_usuario.FieldByName('nome').Value := txt_nome.Text; //vai na tabela usuario e filtra pelo campo nome e adiciona o valor no txt
 tb_usuario.FieldByName('sobrenome').Value := txt_sobrenome.Text;
 tb_usuario.FieldByName('permisao').Value := txt_permi.Text;
 tb_usuario.FieldByName('idade').Value := txt_idade.Text;
 if nomeimg = '' then
 begin
   tb_usuario.FieldByName('imagem').Value := 'no_img.png';  // valor da nomeimg procedure
 end
 else
 begin
   tb_usuario.FieldByName('imagem').Value := nomeimg;  // valor da nomeimg procedure
 end;
end;

end.
