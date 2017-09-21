inherited FrmCadastroVeiculo: TFrmCadastroVeiculo
  Tag = 2
  BorderStyle = bsNone
  Caption = 'Cadastro Veiculo'
  ClientHeight = 595
  ClientWidth = 576
  FormStyle = fsMDIForm
  Position = poDesktopCenter
  ExplicitWidth = 576
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteudo: TPanel [0]
    Left = 0
    Top = 107
    Width = 576
    Height = 431
    Align = alClient
    BevelOuter = bvNone
    Color = 9658417
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 200
    ExplicitTop = 280
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label10: TLabel
      Left = 185
      Top = 136
      Width = 85
      Height = 19
      Caption = 'Km Atual*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 8
      Width = 59
      Height = 19
      Caption = 'Marca*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 192
      Top = 8
      Width = 69
      Height = 19
      Caption = 'Modelo*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 439
      Top = 8
      Width = 42
      Height = 19
      Caption = 'Ano*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 25
      Top = 75
      Width = 38
      Height = 19
      Caption = 'Cor*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 135
      Top = 75
      Width = 54
      Height = 19
      Caption = 'Placa*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 229
      Top = 75
      Width = 44
      Height = 19
      Caption = 'Rntrc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 367
      Top = 75
      Width = 81
      Height = 19
      Caption = 'Renavan*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 25
      Top = 136
      Width = 144
      Height = 19
      Caption = 'Capacidade (Kg)*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 224
      Width = 553
      Height = 177
      Caption = '   Informa'#231#245'es do Veiculo   '
      TabOrder = 9
      object edDescricao: TMemo
        Left = 7
        Top = 16
        Width = 543
        Height = 153
        TabOrder = 0
      end
    end
    object edCapacidade: TEdit
      Left = 24
      Top = 161
      Width = 153
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 7
    end
    object edCor: TEdit
      Left = 24
      Top = 100
      Width = 105
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edKmAtual: TEdit
      Left = 185
      Top = 160
      Width = 144
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 8
    end
    object edMarca: TEdit
      Left = 24
      Top = 33
      Width = 162
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edModelo: TEdit
      Left = 192
      Top = 33
      Width = 241
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edmPlaca: TMaskEdit
      Left = 135
      Top = 100
      Width = 88
      Height = 30
      AutoSize = False
      EditMask = 'lll\-9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 4
      Text = '   -    '
    end
    object edRenavan: TEdit
      Left = 368
      Top = 100
      Width = 182
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edRntrc: TEdit
      Left = 229
      Top = 100
      Width = 132
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tpikerAno: TDateTimePicker
      Left = 439
      Top = 33
      Width = 110
      Height = 30
      Date = 42984.864001400460000000
      Time = 42984.864001400460000000
      TabOrder = 2
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 576
    ExplicitWidth = 570
    inherited btnLocalizar: TButton
      Top = 22
      ExplicitTop = 22
    end
    inherited edCodigo: TEdit
      Top = 22
      Color = clBtnHighlight
      ExplicitTop = 22
    end
  end
  inherited pnlBotoes: TPanel
    Top = 538
    Width = 576
    ExplicitTop = 509
    ExplicitWidth = 570
    inherited btnLimpar: TBitBtn
      Left = 341
      ExplicitLeft = 335
    end
    inherited btnExcluir: TBitBtn
      Left = 212
      ExplicitLeft = 206
    end
    inherited btnGravar: TBitBtn
      Left = 107
      ExplicitLeft = 101
    end
    inherited btnSair: TBitBtn
      Left = 458
      ExplicitLeft = 452
    end
  end
  inherited pnlCabecalho: TPanel
    Width = 576
    ExplicitWidth = 570
    inherited lbCabecalho: TLabel
      Width = 216
      Caption = 'Cadastro Veiculo'
      ExplicitWidth = 216
    end
  end
  inherited pmOpcoes: TPopupMenu
    Left = 520
  end
end
