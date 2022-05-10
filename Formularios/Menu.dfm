object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 164
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_texto: TButton
    Left = 39
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Texto'
    TabOrder = 0
    OnClick = btn_textoClick
  end
  object txt_img: TButton
    Left = 120
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Imagem'
    TabOrder = 1
    OnClick = txt_imgClick
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
      end
      object Abrir1: TMenuItem
        Caption = 'Abrir'
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
    end
    object Janelas1: TMenuItem
      Caption = 'Janelas'
      object exto1: TMenuItem
        Caption = 'Texto'
      end
      object Imagem1: TMenuItem
        Caption = 'Imagem'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
