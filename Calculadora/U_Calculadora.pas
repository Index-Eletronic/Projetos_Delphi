unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm2 = class(TForm)
    tclado: TLayout;
    bnt_0: TButton;
    bnt_2: TButton;
    btn_1: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_div: TButton;
    btn_igual: TButton;
    btn_mult: TButton;
    btn_ponto: TButton;
    btn_somar: TButton;
    btn_subtrair: TButton;
    caixa_topo: TLayout;
    Edit1: TEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

end.