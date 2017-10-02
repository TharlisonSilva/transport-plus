unit UCliente;

interface

uses
    SysUtils
  , UEntidade
  , UCidade
  ;

type
  TCLIENTE = class(TENTIDADE)
  public
    NOME         : String;
    CPF_CNPJ     : String;
    ENDERECO     : String;
    BAIRRO       : String;
    CIDADE       : TCIDADE;
    CEP          : String;
    DESCRICAO    : String;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_CLIENTE               = 'CLIENTE';
  FLD_CLIENTE_NOME          = 'NOME';
  FLD_CLIENTE_CPF_CNPJ      = 'CPF_CNPJ';
  FLD_CLIENTE_ENDERECO      = 'ENDERECO';
  FLD_CLIENTE_BAIRRO        = 'BAIRRO';
  FLD_CLIENTE_CIDADE        = 'ID_CIDADE';
  FLD_CLIENTE_CEP           = 'CEP';
  FLD_CLIENTE_DESCRICAO     = 'DESCRICAO';

resourcestring
  STR_CLIENTE = 'Cliente';

implementation

{ TCLIENTE }

constructor TCLIENTE.Create;
begin
  inherited;
  CIDADE := TCIDADE.Create;
end;

destructor TCLIENTE.Destroy;
begin
    if Assigned(CIDADE) then
        FreeAndNil(CIDADE);
  inherited;
end;

end.


