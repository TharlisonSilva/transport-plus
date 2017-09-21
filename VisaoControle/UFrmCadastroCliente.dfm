inherited FrmCadastroCliente: TFrmCadastroCliente
  Caption = 'Cadastro Cliente'
  ClientHeight = 551
  ClientWidth = 670
  ExplicitWidth = 676
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel [0]
    Left = 24
    Top = 252
    Width = 41
    Height = 19
    Caption = 'Cep*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [1]
    Left = 367
    Top = 187
    Width = 66
    Height = 19
    Caption = 'Cidade*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [2]
    Left = 229
    Top = 187
    Width = 60
    Height = 19
    Caption = 'Bairro*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [3]
    Left = 24
    Top = 187
    Width = 85
    Height = 19
    Caption = 'Endere'#231'o*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 229
    Top = 120
    Width = 57
    Height = 19
    Caption = 'Nome*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited gbLocalizar: TGroupBox
    Width = 670
    ExplicitWidth = 670
  end
  inherited pnlBotoes: TPanel
    Top = 494
    Width = 670
    ExplicitTop = 494
    ExplicitWidth = 670
    inherited btnLimpar: TBitBtn
      Left = 435
      ExplicitLeft = 435
    end
    inherited btnExcluir: TBitBtn
      Left = 306
      ExplicitLeft = 306
    end
    inherited btnGravar: TBitBtn
      Left = 201
      ExplicitLeft = 201
    end
    inherited btnSair: TBitBtn
      Left = 552
      ExplicitLeft = 552
    end
  end
  inherited pnlCabecalho: TPanel
    Width = 670
    ExplicitWidth = 670
    inherited lbCabecalho: TLabel
      Width = 213
      Caption = 'Cadastro Cliente'
      ExplicitWidth = 213
    end
  end
  object GroupBox1: TGroupBox [8]
    Left = 8
    Top = 313
    Width = 654
    Height = 175
    Caption = '   Observa'#231#245'es do Cliente   '
    TabOrder = 3
    object Memo1: TMemo
      Left = 10
      Top = 16
      Width = 635
      Height = 145
      TabOrder = 0
    end
  end
  object Edit6: TEdit [9]
    Left = 24
    Top = 278
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
    ParentFont = False
    TabOrder = 4
  end
  object Edit4: TEdit [10]
    Left = 229
    Top = 212
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
  object Edit3: TEdit [11]
    Left = 24
    Top = 212
    Width = 199
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
  object Edit2: TEdit [12]
    Left = 229
    Top = 145
    Width = 423
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
    TabOrder = 7
  end
  object edCidadeNascimento: TEdit [13]
    Left = 367
    Top = 212
    Width = 45
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
    TabOrder = 8
  end
  object stNomeCidadeNascimento: TStaticText [14]
    Left = 418
    Top = 212
    Width = 196
    Height = 30
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'stNomeCidadeNascimento'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 9
    Transparent = False
  end
  object btnLocalizarCidadeNascimento: TButton [15]
    Left = 620
    Top = 212
    Width = 32
    Height = 30
    Cursor = crHandPoint
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TabStop = False
  end
  object rbCPF: TRadioButton [16]
    Left = 24
    Top = 122
    Width = 45
    Height = 17
    Caption = 'CPF'
    Checked = True
    Color = 9658417
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 11
    TabStop = True
    OnClick = rbCPFClick
  end
  object rbCNPJ: TRadioButton [17]
    Left = 89
    Top = 122
    Width = 52
    Height = 17
    Caption = 'CNPJ'
    Color = 9658417
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 12
    OnClick = rbCNPJClick
  end
  object mskedCPFCNPJ: TMaskEdit [18]
    Left = 24
    Top = 145
    Width = 198
    Height = 30
    AutoSelect = False
    AutoSize = False
    EditMask = '000\.000\.000\-00;1; '
    Font.Charset = ANSI_CHARSET
    Font.Color = 3552822
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 14
    ParentFont = False
    TabOrder = 13
    Text = '   .   .   -  '
  end
end
