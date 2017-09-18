unit URepositorioCliente;

interface

uses
    URepositorioDB
  , UCliente
  , UEntidade
  ;

type
  TRepositorioCliente = class(TRepositorioDB<TCLIENTE>)
  public
    constructor Create;
  end;

implementation

{ TRepositorioCliente }

constructor TRepositorioCliente.Create;
begin
  inherited Create(TCLIENTE, TBL_CLIENTE, FLD_ENTIDADE_ID, STR_CLIENTE);
end;

end.
