unit index;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ComCtrls,
  Vcl.WinXCtrls;

type
  Tfrm_index = class(TForm)
    pn1: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Arquivo2: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Label1: TLabel;
    lb_BD: TLabel;
    Label2: TLabel;
    lb_statuts_bd: TLabel;
    radape: TPanel;
    Label5: TLabel;
    SplitView1: TSplitView;
    pn_bat: TPanel;
    btn_1: TButton;
    btn_2: TButton;
    pn_paineis: TPanel;
    lb_paineis: TLabel;
    lb_batente: TLabel;
    btn_planejado: TButton;
    pn_planj: TPanel;
    lb_planj: TLabel;
    Menu_precos: TMenuItem;
    btn_acabam: TButton;
    procedure Sair2Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_planejadoClick(Sender: TObject);
    procedure Menu_precosClick(Sender: TObject);
    procedure btn_acabamClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_index: Tfrm_index;

implementation

{$R *.dfm}

uses U_precos, U_Acabam;


procedure Tfrm_index.btn_1Click(Sender: TObject);
begin
pn_bat.Show;
pn_paineis.Hide;
pn_planj.hide;
end;

procedure Tfrm_index.btn_2Click(Sender: TObject);
begin
pn_bat.Hide;
pn_planj.hide;
pn_paineis.show;
end;

procedure Tfrm_index.btn_acabamClick(Sender: TObject);
begin
frm_acabam := Tfrm_acabam(self);
frm_acabam.Show;
end;

procedure Tfrm_index.btn_planejadoClick(Sender: TObject);
begin
pn_bat.Hide;
pn_paineis.Hide;
pn_planj.Show;

frm_preco := Tfrm_preco(self);
frm_preco.Show;

end;


procedure Tfrm_index.Menu_precosClick(Sender: TObject);
begin
frm_preco := Tfrm_preco(self);
frm_preco.Show;
//frm_index.Hide;

end;

procedure Tfrm_index.Sair2Click(Sender: TObject);
begin
   frm_index.Close;
end;

end.
