object frm_index: Tfrm_index
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Calculadora'
  ClientHeight = 856
  ClientWidth = 1694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clSilver
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 1464
    Top = 50
    Width = 116
    Height = 13
    Caption = 'Status Bando Dados:'
  end
  object pn1: TPanel
    Left = 0
    Top = -2
    Width = 1694
    Height = 73
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 656
      Top = 6
      Width = 378
      Height = 58
      Caption = 'CALCULADORA'
      Color = clBtnShadow
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -48
      Font.Name = 'Square721 BT'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lb_BD: TLabel
      Left = 1456
      Top = 42
      Width = 116
      Height = 13
      Caption = 'Status Bando Dados:'
    end
    object lb_statuts_bd: TLabel
      Left = 1578
      Top = 42
      Width = 3
      Height = 13
    end
  end
  object radape: TPanel
    Left = 0
    Top = 816
    Width = 1694
    Height = 40
    Align = alBottom
    Color = clHighlightText
    ParentBackground = False
    TabOrder = 1
    object Label5: TLabel
      Left = 1578
      Top = 42
      Width = 3
      Height = 13
    end
  end
  object SplitView1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 816
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 2
    TabStop = True
    object btn_1: TButton
      Left = 16
      Top = 77
      Width = 145
      Height = 68
      Caption = 'BATENTES / PORTAS'
      TabOrder = 0
      OnClick = btn_1Click
    end
    object btn_2: TButton
      Left = 16
      Top = 171
      Width = 145
      Height = 70
      Caption = 'PAINEIS'
      TabOrder = 1
      OnClick = btn_2Click
    end
    object btn_planejado: TButton
      Left = 16
      Top = 272
      Width = 145
      Height = 65
      Caption = 'MOVEIS / PLANEJADOS'
      TabOrder = 2
      OnClick = btn_planejadoClick
    end
  end
  object pn_bat: TPanel
    Left = 206
    Top = 69
    Width = 1485
    Height = 750
    TabOrder = 3
    object lb_batente: TLabel
      Left = 0
      Top = 8
      Width = 140
      Height = 13
      Caption = 'CALCULADORA BATENTES'
    end
  end
  object pn_paineis: TPanel
    Left = 206
    Top = 69
    Width = 1485
    Height = 750
    TabOrder = 4
    object lb_paineis: TLabel
      Left = 0
      Top = 0
      Width = 130
      Height = 13
      Caption = 'CALCULADORA PAINEIS'
    end
  end
  object pn_planj: TPanel
    Left = 206
    Top = 69
    Width = 1485
    Height = 750
    TabOrder = 5
    object lb_planj: TLabel
      Left = 0
      Top = 3
      Width = 211
      Height = 13
      Caption = 'CALCULADORA MOVEIS / PLANEJADOS'
    end
  end
  object btn_acabam: TButton
    Left = 48
    Top = 368
    Width = 75
    Height = 25
    Caption = 'ACABAMENTOS'
    TabOrder = 6
    OnClick = btn_acabamClick
  end
  object MainMenu1: TMainMenu
    Left = 1064
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
    end
    object Arquivo2: TMenuItem
      Caption = 'Parametros'
      object Menu_precos: TMenuItem
        Caption = 'Pre'#231'os'
        OnClick = Menu_precosClick
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      object Sair2: TMenuItem
        Caption = 'Sair'
        OnClick = Sair2Click
      end
    end
  end
end
