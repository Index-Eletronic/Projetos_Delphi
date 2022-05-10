object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 317
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
  object Image1: TImage
    Left = 0
    Top = 8
    Width = 281
    Height = 225
  end
  object Memo1: TMemo
    Left = 287
    Top = 8
    Width = 297
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btn_img: TButton
    Left = 96
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Abrir IMG'
    TabOrder = 1
    OnClick = btn_imgClick
  end
  object btn_txt: TButton
    Left = 296
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Abrir TXT'
    TabOrder = 2
    OnClick = btn_txtClick
  end
  object btn_salvar: TButton
    Left = 377
    Top = 248
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 3
    OnClick = btn_salvarClick
  end
  object dg_txt: TOpenTextFileDialog
    Filter = '|*.txt|txt'
    Left = 488
    Top = 248
  end
  object dg_img: TOpenPictureDialog
    Left = 192
    Top = 248
  end
  object dg_save: TSaveDialog
    Filter = 'Txt(*.txt)|*.txt|Doc(*.doc)|*.docx'
    Left = 552
    Top = 248
  end
end
