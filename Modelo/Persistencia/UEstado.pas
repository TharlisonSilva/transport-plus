unit UEstado;

interface

uses
    UEntidade
  ;

type
  TESTADO = class(TENTIDADE)
  public
    NOME: String;
    SIGLA: String;
  end;

const
  TBL_ESTADO       = 'ESTADO';
  FLD_ESTADO_NOME  = 'NOME';
  FLD_ESTADO_SIGLA = 'SIGLA';

resourcestring
  STR_ESTADO = 'Estado';

implementation

end.
