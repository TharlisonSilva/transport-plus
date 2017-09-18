object frmPesquisa: TfrmPesquisa
  Left = 226
  Top = 187
  ActiveControl = cbOpcoes
  Caption = 'Pesquisa'
  ClientHeight = 461
  ClientWidth = 764
  Color = 9658417
  TransparentColorValue = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 420
    Width = 764
    Height = 41
    Align = alBottom
    Color = 7621415
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      764
      41)
    object btnSair: TBitBtn
      Left = 645
      Top = 4
      Width = 115
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnConfirmar: TBitBtn
      Left = 529
      Top = 4
      Width = 115
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = '&Confirmar'
      DoubleBuffered = True
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
  end
  object gbParametros: TGroupBox
    Left = 0
    Top = 49
    Width = 764
    Height = 57
    Cursor = crHandPoint
    Align = alTop
    BiDiMode = bdLeftToRight
    Caption = ' Par'#226'metros '
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    object lbOpcao: TLabel
      Left = 13
      Top = 24
      Width = 38
      Height = 14
      Alignment = taRightJustify
      Caption = 'Op'#231#227'o'
      Color = clWhite
      ParentColor = False
    end
    object lbIgualA: TLabel
      Left = 186
      Top = 24
      Width = 42
      Height = 14
      Alignment = taRightJustify
      Caption = 'Igual a'
    end
    object edPesquisa: TEdit
      Left = 238
      Top = 21
      Width = 233
      Height = 19
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = dbgClienteKeyDown
      OnKeyUp = edPesquisaKeyUp
    end
    object cbOpcoes: TComboBox
      Left = 57
      Top = 21
      Width = 109
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      Color = clInfoBk
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cbOpcoesChange
      OnKeyDown = dbgClienteKeyDown
    end
  end
  object dbgCliente: TDBGrid
    Left = 0
    Top = 106
    Width = 764
    Height = 314
    Align = alClient
    Color = clSilver
    FixedColor = clGradientInactiveCaption
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgClienteDblClick
    OnKeyDown = dbgClienteKeyDown
  end
  object lbCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 764
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = 7621415
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      764
      49)
    object LbNometela: TLabel
      Left = 24
      Top = 4
      Width = 114
      Height = 39
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
  end
end
