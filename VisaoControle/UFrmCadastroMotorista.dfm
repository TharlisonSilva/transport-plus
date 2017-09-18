inherited FrmCadastroMotorista: TFrmCadastroMotorista
  Tag = 1
  Caption = 'CADASTRO MOTORISTA'
  ClientHeight = 528
  ClientWidth = 998
  FormStyle = fsNormal
  ExplicitWidth = 1004
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbLocalizar: TGroupBox
    Width = 998
    ExplicitWidth = 998
    inherited btnLocalizar: TButton
      Left = 198
      Top = 22
      ExplicitLeft = 198
      ExplicitTop = 22
    end
    inherited edCodigo: TEdit
      Top = 22
      ExplicitTop = 22
    end
  end
  inherited pnlBotoes: TPanel
    Top = 471
    Width = 998
    ExplicitTop = 471
    ExplicitWidth = 998
    DesignSize = (
      998
      57)
    inherited btnLimpar: TBitBtn
      Left = 762
      ExplicitLeft = 762
    end
    inherited btnExcluir: TBitBtn
      Left = 645
      ExplicitLeft = 645
    end
    inherited btnGravar: TBitBtn
      Left = 528
      ExplicitLeft = 528
    end
    inherited btnSair: TBitBtn
      Left = 879
      ExplicitLeft = 879
    end
  end
  object pnlConteudo: TPanel [2]
    Left = 0
    Top = 107
    Width = 998
    Height = 364
    Align = alClient
    BevelOuter = bvNone
    Color = 9658417
    Enabled = False
    ParentBackground = False
    TabOrder = 5
    ExplicitTop = 101
    object Label1: TLabel
      Left = 555
      Top = 12
      Width = 87
      Height = 19
      Caption = 'Telefone *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 17
      Top = 206
      Width = 149
      Height = 19
      Caption = 'Registro de CNH *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 528
      Top = 206
      Width = 95
      Height = 19
      Caption = 'Categoria *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 311
      Top = 206
      Width = 153
      Height = 19
      Caption = 'Data de validade *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 17
      Top = 135
      Width = 90
      Height = 19
      Caption = 'Endere'#231'o *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 726
      Top = 69
      Width = 46
      Height = 19
      Caption = 'Cep *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 335
      Top = 135
      Width = 65
      Height = 19
      Caption = 'Bairro *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 552
      Top = 135
      Width = 71
      Height = 19
      Caption = 'Cidade *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 726
      Top = 12
      Width = 73
      Height = 19
      Caption = 'Celular *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 73
      Width = 46
      Height = 19
      Caption = 'CPF *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 172
      Top = 73
      Width = 39
      Height = 19
      Caption = 'RG *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 332
      Top = 73
      Width = 110
      Height = 19
      Caption = 'Nascimento *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCidadeNascimento: TLabel
      Left = 487
      Top = 73
      Width = 196
      Height = 19
      Caption = 'Cidade de Nascimento *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 12
      Width = 62
      Height = 19
      Caption = 'Nome *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edBairro: TEdit
      Left = 335
      Top = 160
      Width = 211
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edCategoria: TEdit
      Left = 528
      Top = 231
      Width = 144
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edCep: TEdit
      Left = 726
      Top = 94
      Width = 144
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 6
    end
    object edEndereco: TEdit
      Left = 17
      Top = 160
      Width = 312
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edNome: TEdit
      Left = 17
      Top = 37
      Width = 532
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
    object edRegistroCnh: TEdit
      Left = 17
      Top = 231
      Width = 288
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edRG: TEdit
      Left = 172
      Top = 98
      Width = 154
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = 19
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
    end
    object edCpf: TMaskEdit
      Left = 17
      Top = 98
      Width = 149
      Height = 30
      BevelInner = bvNone
      BorderStyle = bsNone
      EditMask = '!999.999.999-99;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 1
    end
    object edTelefone: TMaskEdit
      Left = 555
      Top = 37
      Width = 165
      Height = 30
      BevelInner = bvNone
      BorderStyle = bsNone
      EditMask = '!\(99\)0000-0000;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 8
      Text = '(  )    -    '
    end
    object edCelular: TMaskEdit
      Left = 726
      Top = 37
      Width = 144
      Height = 30
      BevelInner = bvNone
      BorderStyle = bsNone
      EditMask = '!\(99\)0000-0000;1; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 9
      Text = '(  )    -    '
    end
    object edCidadeNascimento: TEdit
      Left = 448
      Top = 98
      Width = 33
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 10
      OnExit = edCidadeNascimentoExit
    end
    object btnLocalizarCidadeNascimento: TButton
      Left = 689
      Top = 99
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      TabStop = False
      OnClick = btnLocalizarCidadeNascimentoClick
    end
    object stNomeCidadeNascimento: TStaticText
      Left = 487
      Top = 99
      Width = 196
      Height = 30
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'stNomeCidadeNascimento'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      Transparent = False
    end
    object edCidade: TEdit
      Left = 552
      Top = 160
      Width = 49
      Height = 30
      AutoSelect = False
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3552822
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 13
      OnExit = edCidadeExit
    end
    object btnLocalizarCidade: TButton
      Left = 833
      Top = 160
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      TabStop = False
      OnClick = btnLocalizarCidadeClick
    end
    object stNomeCidade: TStaticText
      Left = 607
      Top = 160
      Width = 220
      Height = 30
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'stNomeCidade'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      Transparent = False
    end
  end
  object edDataValidade: TDateTimePicker [3]
    Left = 311
    Top = 338
    Width = 211
    Height = 30
    Date = 42984.864001400460000000
    Time = 42984.864001400460000000
    TabOrder = 3
  end
  object edDataNascimento: TDateTimePicker [4]
    Left = 332
    Top = 205
    Width = 110
    Height = 30
    Date = 42984.864001400460000000
    Time = 42984.864001400460000000
    TabOrder = 4
  end
  inherited lbCabecalho: TPanel
    Width = 998
    ExplicitWidth = 998
  end
  inherited pmOpcoes: TPopupMenu
    Left = 832
    Top = 40
  end
end
