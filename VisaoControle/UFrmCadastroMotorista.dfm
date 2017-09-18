inherited FrmCadastroMotorista: TFrmCadastroMotorista
  Tag = 1
  Caption = 'CADASTRO MOTORISTA'
  ClientHeight = 528
  ClientWidth = 998
  ExplicitWidth = 1014
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 998
    ExplicitWidth = 998
  end
  inherited gbLocalizar: TGroupBox
    Width = 998
    ExplicitWidth = 998
    inherited btnLocalizar: TButton
      Left = 176
      Top = 22
      ExplicitLeft = 176
      ExplicitTop = 22
    end
    inherited edCodigo: TEdit
      Left = 49
      Top = 22
      ExplicitLeft = 49
      ExplicitTop = 22
    end
  end
  object pnlConteudo: TPanel [2]
    Left = 0
    Top = 86
    Width = 998
    Height = 401
    Align = alClient
    BevelOuter = bvNone
    Color = 14540253
    Enabled = False
    ParentBackground = False
    TabOrder = 6
    object Label1: TLabel
      Left = 596
      Top = 26
      Width = 67
      Height = 16
      Caption = 'Telefone *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 521
      Top = 167
      Width = 116
      Height = 16
      Caption = 'Registro de CNH *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 825
      Top = 164
      Width = 75
      Height = 16
      Caption = 'Categoria *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 49
      Top = 225
      Width = 121
      Height = 16
      Caption = 'Data de validade *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 275
      Top = 225
      Width = 72
      Height = 16
      Caption = 'Endere'#231'o *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 822
      Top = 222
      Width = 36
      Height = 16
      Caption = 'Cep *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 49
      Top = 288
      Width = 51
      Height = 16
      Caption = 'Bairro *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 275
      Top = 288
      Width = 55
      Height = 16
      Caption = 'Cidade *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 778
      Top = 26
      Width = 56
      Height = 16
      Caption = 'Celular *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 49
      Top = 98
      Width = 34
      Height = 16
      Caption = 'CPF *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 275
      Top = 98
      Width = 29
      Height = 16
      Caption = 'RG *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 521
      Top = 98
      Width = 118
      Height = 16
      Caption = #211'rg'#227'o Expedidor *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 691
      Top = 98
      Width = 118
      Height = 16
      Caption = 'Data de Emiss'#227'o *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 822
      Top = 98
      Width = 141
      Height = 16
      Caption = 'Data de Nascimento *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCidadeNascimento: TLabel
      Left = 49
      Top = 167
      Width = 153
      Height = 16
      Caption = 'Cidade de Nascimento *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 49
      Top = 26
      Width = 47
      Height = 16
      Caption = 'Nome *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4868682
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edBairro: TEdit
      Left = 49
      Top = 310
      Width = 211
      Height = 28
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
      TabOrder = 8
    end
    object edCategoria: TEdit
      Left = 822
      Top = 186
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
      TabOrder = 5
    end
    object edCep: TEdit
      Left = 822
      Top = 244
      Width = 144
      Height = 27
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
      TabOrder = 7
    end
    object edEndereco: TEdit
      Left = 275
      Top = 247
      Width = 534
      Height = 27
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
      TabOrder = 6
    end
    object edNome: TEdit
      Left = 49
      Top = 48
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
    object edOrgaoExpedidor: TEdit
      Left = 521
      Top = 121
      Width = 160
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
      ParentFont = False
      TabOrder = 3
    end
    object edRegistroCnh: TEdit
      Left = 521
      Top = 189
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
      TabOrder = 4
    end
    object edRG: TEdit
      Left = 275
      Top = 120
      Width = 222
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
      Left = 49
      Top = 120
      Width = 211
      Height = 31
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
      Left = 596
      Top = 48
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
      TabOrder = 9
      Text = '(  )    -    '
    end
    object edCelular: TMaskEdit
      Left = 778
      Top = 48
      Width = 163
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
      TabOrder = 10
      Text = '(  )    -    '
    end
    object edCidadeNascimento: TEdit
      Left = 49
      Top = 186
      Width = 179
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
      TabOrder = 11
      OnExit = edCidadeNascimentoExit
    end
    object btnLocalizarCidadeNascimento: TButton
      Left = 230
      Top = 186
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
      TabOrder = 12
      TabStop = False
      OnClick = btnLocalizarCidadeNascimentoClick
    end
    object stNomeCidadeNascimento: TStaticText
      Left = 275
      Top = 186
      Width = 222
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
      TabOrder = 13
      Transparent = False
    end
    object edCidade: TEdit
      Left = 275
      Top = 310
      Width = 191
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
      TabOrder = 14
      OnExit = edCidadeExit
    end
    object btnLocalizarCidade: TButton
      Left = 467
      Top = 310
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
      TabOrder = 15
      TabStop = False
      OnClick = btnLocalizarCidadeClick
    end
    object stNomeCidade: TStaticText
      Left = 521
      Top = 310
      Width = 288
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
      TabOrder = 16
      Transparent = False
    end
  end
  object edDataValidade: TDateTimePicker [3]
    Left = 49
    Top = 333
    Width = 211
    Height = 27
    Date = 42984.864001400460000000
    Time = 42984.864001400460000000
    TabOrder = 3
  end
  object edDataEmissao: TDateTimePicker [4]
    Left = 693
    Top = 206
    Width = 116
    Height = 31
    Date = 42984.864001400460000000
    Time = 42984.864001400460000000
    TabOrder = 4
  end
  object edDataNascimento: TDateTimePicker [5]
    Left = 822
    Top = 206
    Width = 144
    Height = 31
    Date = 42984.864001400460000000
    Time = 42984.864001400460000000
    TabOrder = 5
  end
  inherited pnlBotoes: TPanel
    Top = 487
    Width = 998
    ExplicitTop = 487
    ExplicitWidth = 998
    DesignSize = (
      998
      41)
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
  inherited pmOpcoes: TPopupMenu
    Left = 784
  end
end
