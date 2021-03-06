unit Cadastro_Func;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FMX.Objects;

type
  TForm1 = class(TForm)
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permi: TEdit;
    txt_idade: TEdit;
    lb: TLabel;
    lbSobrenome: TLabel;
    lb_permis?o: TLabel;
    lbidade: TLabel;
    FDConnection1: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    tb_usuarios: TFDTable;
    btn_voltar: TButton;
    btn_prosseguir: TButton;
    Label1: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_prosseguirClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure tb_usuariosBeforePost(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    procedure CarregarDados;
    procedure Habilitardados;
    procedure Limpar;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_cancelarClick(Sender: TObject);
begin
FDConnection1.Connected := True;
 tb_usuarios.Cancel;
 CarregarDados;
end;

procedure TForm1.btn_editarClick(Sender: TObject);
begin
FDConnection1.Connected := True;
  tb_usuarios.Edit;
  Habilitardados;
end;

procedure TForm1.btn_excluirClick(Sender: TObject);
begin
FDConnection1.Connected := True;
  tb_usuarios.delete;
  ShowMessage('Usu?rio Apagado');
end;

procedure TForm1.btn_novoClick(Sender: TObject);
begin
FDConnection1.Connected := True;
  tb_usuarios.Insert;
  Habilitardados;
  Limpar;

end;

procedure TForm1.btn_prosseguirClick(Sender: TObject);
begin
FDConnection1.Connected := True;
  tb_usuarios.next;
  CarregarDados;
end;

procedure TForm1.btn_salvarClick(Sender: TObject);
begin
FDConnection1.Connected := True;
  tb_usuarios.Post;
  ShowMessage('Usu?rio Salvo');
  Limpar;
end;

procedure TForm1.btn_voltarClick(Sender: TObject);
begin
FDConnection1.Connected := True;
  tb_usuarios.Prior;
  CarregarDados;
end;

procedure TForm1.CarregarDados;
begin
  txt_nome.Text := tb_usuarios.FieldByName('nome').value;
  txt_sobrenome.Text := tb_usuarios.FieldByName('sobrenome').value;
  txt_permi.Text := tb_usuarios.FieldByName('permissao').value;
  txt_idade.Text := tb_usuarios.FieldByName('idade').value;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

// Conex?o remota
  FDConnection1.Params.Database := 'tuonmarcenaria';
  FDConnection1.Params.Username := 'tuonmarcenaria';
  FDConnection1.Params.Password := 'Lica126x';

  Driver.VendorLib := GetCurrentDir + '\dll\libmySQL.dll';

  FDConnection1.Connected := True;
  tb_usuarios.TableName := 'usuarios';
  tb_usuarios.Active := True;

  CarregarDados;

end;

procedure TForm1.Habilitardados;
begin
  txt_nome.Enabled := true;
  txt_sobrenome.Enabled := true;
  txt_permi.Enabled := true;
  txt_idade.Enabled := true;
end;

procedure TForm1.Limpar;
begin
  txt_nome.Text:= '';
  txt_sobrenome.text := '';
  txt_permi.text := '';
  txt_idade.text := '';
end;

procedure TForm1.tb_usuariosBeforePost(DataSet: TDataSet);
begin
FDConnection1.Connected := True;
  tb_usuarios.FieldByName('nome').Value := txt_nome.Text;
  tb_usuarios.FieldByName('sobrenome').Value := txt_sobrenome.Text;
  tb_usuarios.FieldByName('permissao').Value := txt_permi.Text;
  tb_usuarios.FieldByName('idade').Value := txt_idade.Text;
end;

end.
