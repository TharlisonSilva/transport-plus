unit UMotorista;

interface

uses
    UEntidade
  , UCidade
  ;

type
  TMOTORISTA = class(TENTIDADE)
  public
    NOME:                String;
    TELEFONE:            String;
    CELULAR:             String;
    ENDERECO:            String;
    BAIRRO:              String;
    CIDADE:              TCIDADE;
    CEP:                 String;
    CPF:                 String;
    RG:                  String;
    ORGAO_EXPEDIDOR:     String;
    DATA_EXPEDICAO:      TDate;
    DATA_NASCIMENTO:     TDate;
    CIDADE_NASCIMENTO:   TCIDADE;
    CNH_NUMERO_REGISTRO: String;
    CNH_CATEGORIA:       String;
    CNH_DATA_VALIDADE:   TDate;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_MOTORISTA                       = 'MOTORISTA';
  FLD_MOTORISTA_NOME                  = 'NOME';
  FLD_MOTORISTA_TELEFONE              = 'TELEFONE';
  FLD_MOTORISTA_CELULAR               = 'CELULAR';
  FLD_MOTORISTA_ENDERECO              = 'ENDERECO';
  FLD_MOTORISTA_BAIRRO                = 'BAIRRO';
  FLD_MOTORISTA_ID_CIDADE             = 'ID_CIDADE';
  FLD_MOTORISTA_CEP                   = 'CEP';
  FLD_MOTORISTA_CPF                   = 'CPF';
  FLD_MOTORISTA_RG                    = 'RG';
  FLD_MOTORISTA_ORGAO_EXPEDIDOR       = 'ORGAO_EXPEDIDOR';
  FLD_MOTORISTA_DATA_EXPEDICAO        = 'DATA_EXPEDICAO';
  FLD_MOTORISTA_DATA_NASCIMENTO       = 'DATA_NASCIMENTO';
  FLD_MOTORISTA_ID_CIDADE_NASCIMENTO  = 'ID_CIDADE_NASCIMENTO';
  FLD_MOTORISTA_CNH_NUMERO_REGISTRO   = 'CNH_NUMERO_REGISTRO';
  FLD_MOTORISTA_CNH_CATEGORIA         = 'CNH_CATEGORIA';
  FLD_MOTORISTA_CNH_DATA_VALIDADE     = 'CNH_DATA_VALIDADE';

resourcestring
  STR_MOTORISTA = 'Motorista';

implementation

uses
    SysUtils
  ;

{ TMOTORISTA }

constructor TMOTORISTA.Create;
begin
  inherited;
  CIDADE := TCIDADE.Create;
  CIDADE_NASCIMENTO := TCIDADE.Create;
end;

destructor TMOTORISTA.Destroy;
begin
  if Assigned(CIDADE) then
    FreeAndNil(CIDADE);

  if Assigned(CIDADE_NASCIMENTO) then
    FreeAndNil(CIDADE_NASCIMENTO);

  inherited;
end;

end.
