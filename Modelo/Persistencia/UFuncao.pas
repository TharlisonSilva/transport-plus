unit UFuncao;

interface

uses
    UEntidade
  ;

type
  TFUNCAO = class(TENTIDADE)
  public

   NOME          :String;

    constructor Create; override;
    destructor Destroy; override;
  end;

const

  TBL_FUNCAO               = 'FUNCAO';
  FLD_FUNCAO_NOME          = 'NOME';


resourcestring
  STR_FUNCAO = 'FUNCAO';

implementation

uses
    SysUtils
  ;

{ FUNCAO }

constructor TFUNCAO.Create;
begin
  inherited;

end;

destructor TFUNCAO.Destroy;
begin

  inherited;
end;
end.
