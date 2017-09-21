unit UCidade;

interface

uses
    UEntidade
  , UEstado
  ;

type
  TCIDADE = class(TENTIDADE)
  public
    NOME: String;
    ESTADO: TESTADO;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_CIDADE           = 'CIDADE';
  FLD_CIDADE_NOME      = 'NOME';
  FLD_CIDADE_ID_ESTADO = 'ID_ESTADO';

resourcestring
  STR_CIDADE = 'Cidade';

implementation

uses
    SysUtils
  ;

{ TCIDADE }

constructor TCIDADE.Create;
begin
  ESTADO := TESTADO.Create;
end;

destructor TCIDADE.Destroy;
begin
  if Assigned(ESTADO) then
    FreeAndNil(ESTADO);

  inherited;
end;

end.
