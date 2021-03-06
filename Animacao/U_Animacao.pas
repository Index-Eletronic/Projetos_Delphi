unit U_Animacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Edit;

type
  TForm1 = class(TForm)
    Circle1: TCircle;
    FloatAnimation1: TFloatAnimation;
    lb_time: TLabel;
    txt_time: TEdit;
    btn_play: TButton;
    procedure btn_playClick(Sender: TObject);
    procedure txt_timeKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FloatAnimation1Process(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_playClick(Sender: TObject);
begin
  FloatAnimation1. Enabled := True;
end;

procedure TForm1.FloatAnimation1Process(Sender: TObject);
var txt: double;
begin
    txt:= strtofloat(txt_time.text);
    FloatAnimation1.Duration := txt
end;

procedure TForm1.txt_timeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
   if txt_time.Text <> '' then
  begin
   btn_play.Enabled := True;
  end
  else
  begin
    btn_play.Enabled := False;
  end;
end;

end.
