unit UNivel;

interface

uses
    UEntidade
  , UFUNCAO
  ;

type
  TNIVEL = class(TENTIDADE)
  public
    NOME        : String;
    ID_FUNCAO   : TFUNCAO;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_NIVEL           = 'NIVEL';
  FLD_NIVEL_NOME      = 'NOME';
  FLD_NIVEL_ID_FUNCAO = 'ID_FUNCAO';

resourcestring
  STR_NIVEL = 'Nivel';

implementation

uses
    SysUtils
  ;

{ TCIDADE }

constructor TNIVEL.Create;
begin
  ID_FUNCAO := TFUNCAO.Create;
end;

destructor TNIVEL.Destroy;
begin
  if Assigned(ID_FUNCAO) then
    FreeAndNil(ID_FUNCAO);

  inherited;
end;

end.
