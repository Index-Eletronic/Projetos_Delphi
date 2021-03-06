unit U_Cronometro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TU_Form = class(TForm)
    t_tempo: TTimer;
    MediaPlayer1: TMediaPlayer;
    btn_play: TSpeedButton;
    lb_min: TLabel;
    lb_seg: TLabel;
    lb_ponto: TLabel;
    btn_abrir: TButton;
    OpenDialog1: TOpenDialog;
    txt_tempo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Splitter1: TSplitter;
    procedure t_tempoTimer(Sender: TObject);
    procedure btn_playClick(Sender: TObject);
    procedure btn_abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  U_Form: TU_Form;

implementation

{$R *.dfm}

procedure TU_Form.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MediaPlayer1.FileName := OpenDialog1.FileName;
    btn_play.Enabled := True;
  end;

end;

procedure TU_Form.btn_playClick(Sender: TObject);
begin
  t_tempo.Enabled := true;
end;

procedure TU_Form.t_tempoTimer(Sender: TObject);
 var seg, min, cont: integer;
 begin
   seg := strToInt(lb_seg.Caption);
   min := strToInt(lb_min.Caption);
   cont :=  seg +1;


   lb_seg.Caption := inttostr(cont);
   if lb_seg.Caption = '60' then
   begin
       lb_seg.Caption:= '0';
       lb_min.Caption:= inttostr(strtoint(lb_seg.Caption)+1);
   end;

   if lb_seg.Caption = txt_tempo.text then
   begin
     t_tempo.Enabled := false;
     MediaPlayer1.Open;
     MediaPlayer1.Play;
     btn_play.Enabled := False;
     txt_tempo.text := '';
     lb_seg.Caption := '0';
     lb_min.Caption := '0';
   end;


 end;
end.
