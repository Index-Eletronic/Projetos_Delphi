object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit11: TMaskEdit1
    Left = 128
    Top = 152
    Width = 137
    Height = 21
    EditMask = '99.999.999/9999-99;1:_'
    MaxLength = 20
    TabOrder = 0
    Text = '  .   .   /    -  :_'
    Pessoa = pJuridica
  end
  object RadioGroup1: TRadioGroup
    Left = 112
    Top = 90
    Width = 185
    Height = 56
    Caption = 'CNPJ / CPF'
    Columns = 2
    Items.Strings = (
      'Juridica'
      'Fisica')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
end
