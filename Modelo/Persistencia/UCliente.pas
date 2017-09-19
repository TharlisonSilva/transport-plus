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
    ID_CIDADE    : TCIDADE;
    CEP          : String;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_CLIENTE               = 'CLIENTE';
  FLD_CLIENTE_NOME          = 'NOME';
  FLD_CLIENTE_CPF_CNPJ      = 'CPF_CNPJ';
  FLD_CLIENTE_ENDERECO      = 'ENDERECO';
  FLD_CLIENTE_BAIRRO        = 'BAIRRO';
  FLD_CLIENTE_ID_CIDADE     = 'ID_CIDADE';
  FLD_CLIENTE_CEP           = 'CEP';

resourcestring
  STR_CLIENTE = 'Cliente';

implementation

{ TCLIENTE }

constructor TCLIENTE.Create;
begin
  inherited;
  ID_CIDADE := TCIDADE.Create;
end;

destructor TCLIENTE.Destroy;
begin
    if Assigned(ID_CIDADE) then
        FreeAndNil(ID_CIDADE);
  inherited;
end;

end.


