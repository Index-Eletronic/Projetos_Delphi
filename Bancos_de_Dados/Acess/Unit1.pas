unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, FMX.Controls.Presentation, FMX.Edit,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, FMX.StdCtrls;

type
  Tfrm_Inicial = class(TForm)
    FDConnection1: TFDConnection;
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permisao: TEdit;
    BindSourceusuarios: TBindSourceDB;
    FDTableusuarios: TFDTable;
    NavigatorBindSourceusuarios: TBindNavigator;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    lb_nome: TLabel;
    lb_Sobrenome: TLabel;
    lb_permi: TLabel;
    lb_idade: TLabel;
    txt_edit: TEdit;
    LinkControlToField5: TLinkControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Inicial: Tfrm_Inicial;

implementation

{$R *.fmx}

end.
