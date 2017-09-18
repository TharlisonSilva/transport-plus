unit UCliente;

interface

uses
    UEntidade
  ;

type
  TCLIENTE = class(TENTIDADE)
  public
    NOME: String;
  end;

const
  TBL_CLIENTE      = 'CLIENTE';
  FLD_CLIENTE_NOME = 'NOME';

resourcestring
  STR_CLIENTE = 'Cliente';

implementation

end.


