object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'INDEX'
  ClientHeight = 360
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lb_valor: TLabel
    Left = 48
    Top = 208
    Width = 3
    Height = 13
  end
  object Label1: TLabel
    Left = 48
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 184
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 320
    Top = 240
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object txt_nome: TLabeledEdit
    Left = 56
    Top = 56
    Width = 121
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'txt_nome'
    TabOrder = 0
  end
  object txt_nome2: TEdit
    Left = 224
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object txt_nome3: TEdit
    Left = 408
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn_deletar: TButton
    Left = 152
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = btn_deletarClick
  end
  object txt_vlr_1: TEdit
    Left = 48
    Top = 272
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object txt_vlr_2: TEdit
    Left = 184
    Top = 272
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 5
  end
  object txt_vlr_3: TEdit
    Left = 320
    Top = 272
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 6
  end
  object btn_Calcular: TButton
    Left = 366
    Top = 299
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 7
    OnClick = btn_CalcularClick
  end
  object btn_tela2: TButton
    Left = 488
    Top = 299
    Width = 75
    Height = 25
    Caption = 'TEla 2'
    TabOrder = 8
    OnClick = btn_tela2Click
  end
end
