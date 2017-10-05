inherited FrmCadastroVeiculo: TFrmCadastroVeiculo
  Tag = 2
  BorderStyle = bsNone
  Caption = 'CADASTRO VEICULO'
  ClientHeight = 595
  ClientWidth = 576
  Position = poDesktopCenter
  ExplicitWidth = 576
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteudo: TPanel [0]
    Left = 0
    Top = 113
    Width = 576
    Height = 425
    Align = alClient
    BevelOuter = bvNone
    Color = 9658417
    ParentBackground = False
    TabOrder = 3
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
    ExplicitWidth = 576
    inherited edCodigo: TEdit
      Color = clBtnHighlight
    end
  end
  inherited pnlBotoes: TPanel
    Top = 538
    Width = 576
    ExplicitTop = 538
    ExplicitWidth = 576
    inherited btnGravar: TImage
      Left = 311
      ExplicitLeft = 311
    end
    inherited btnExcluir: TImage
      Left = 389
      ExplicitLeft = 389
    end
    inherited btnLimpar: TImage
      Left = 468
      ExplicitLeft = 468
    end
    object Image1: TImage
      Left = 533
      Top = 13
      Width = 35
      Height = 35
      Cursor = crHandPoint
      Hint = 'Sair'
      Anchors = [akTop, akRight]
      AutoSize = True
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000230000
        002308060000001ED9B3590000019E4944415478DAED988F55833010C6C304B2
        41E904760370027502E9067502E904BA41EB04EA067402DB091A36A813E077F6
        F485BCD0E4D113FAB4DF7BF78E7F397E847039122987EABA8EE11E61192C5172
        D2B012761F45D1CE3E19B5806C61B120842D0219DB402E9825DC1DEF56FC3452
        4A6023DE7E064CEE83D972A30A1727D25D82F89A8134E28F7D30356FAE7071F6
        0B30255CFA7573E80C738631E2A468BF721C7F85BBEE0D0621666A9F34E9C653
        339F701EA3E3695F3005DC03EFAE61577682A37C169267A461481A768B78EB43
        EDFA8221ED18A81483C1E989E2017840199B4B3486965230EF70932E3D66A840
        ECB9044CAD644403787A2A30A4C69736340CE9A794181A6603CB4EA167828A2B
        1F0CBDE7CB2341E6885DD807BBE6991BCFCDA85DDA724E2ECF84A825037FD043
        8866E08E3015830C3E3735BE18E39AC5D1492F1026875BC0DE60B9A39E7961C0
        DE2ABDCC353E7AAFF43C9004F88F0BF23F09A355CBBFB010CCF7BFFC06F11B45
        9A6F15422BF9558884B78326CA98012EA47BC5104D0D89777DC6007A52FB096F
        E40D1D2E9A164AD8CCB572F509ADF5623301C54BE90000000049454E44AE4260
        82}
      OnClick = btnSairClick
    end
  end
  inherited pnlCabecalho: TPanel
    Width = 576
    ExplicitWidth = 576
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
