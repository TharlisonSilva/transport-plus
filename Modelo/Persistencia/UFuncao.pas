unit UFuncao;

interface

uses
    UEntidade
  ;

type
  TFUNCAO = class(TENTIDADE)
  public
    NOME: String;
  end;

const
  TBL_FUNCAO       = 'FUNCAO';
  FLD_FUNCAO_NOME  = 'NOME';

resourcestring
  STR_FUNCAO = 'FUNCAO';

implementation

end.
