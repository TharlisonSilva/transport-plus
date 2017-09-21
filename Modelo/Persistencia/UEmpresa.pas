unit UEmpresa;

interface

uses
    SysUtils
  , UEntidade
  ;

type
  TEMPRESA = class(TENTIDADE)
  public
    NOME_FANTASIA   : String;
    ENDERECO        : String;
    BAIRRO          : String;
    INSC_ESTADUAL   : String;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_EMPRESA                  = 'EMPRESA';
  FLD_EMPRESA_NOME_FANTASIA    = 'NOME_FANTASIA';
  FLD_EMPRESA_ENDERECO         = 'ENDERECO';
  FLD_EMPRESA_BAIRRO           = 'BAIRRO';
  FLD_EMPRESA_INSC_ESTADUAL            = 'INSC_ESTADUAL';

resourcestring
  STR_EMPRESA = 'EMPRESA';

implementation

{ TEMPRESA }

constructor TEMPRESA.Create;
begin
  inherited;

end;

destructor TEMPRESA.Destroy;
begin

  inherited;
end;

end.
