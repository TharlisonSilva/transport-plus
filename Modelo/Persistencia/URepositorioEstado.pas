unit URepositorioEstado;

interface

uses
    URepositorioDB
  , UEstado
  , UEntidade
  , SQLExpr
  ;

type
  TRepositorioEstado = class(TRepositorioDB<TESTADO>)
  protected
    procedure AtribuiDBParaEntidade(const coESTADO: TESTADO); override;
    procedure AtribuiEntidadeParaDB(const coESTADO: TESTADO;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
  end;

implementation

{ TRepositorioEstado }

procedure TRepositorioEstado.AtribuiDBParaEntidade(const coESTADO: TESTADO);
begin
  inherited;
  with FSQLSelect do
  begin
    coESTADO.NOME  := FieldByName(FLD_ESTADO_NOME).AsString;
    coESTADO.SIGLA := FieldByName(FLD_ESTADO_SIGLA).AsString;
  end;
end;

procedure TRepositorioEstado.AtribuiEntidadeParaDB(const coESTADO: TESTADO;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_ESTADO_NOME).AsString := coESTADO.NOME;
    ParamByName(FLD_ESTADO_SIGLA).AsString := coESTADO.SIGLA;
  end;
end;

constructor TRepositorioEstado.Create;
begin
  inherited Create(TESTADO, TBL_ESTADO, FLD_ENTIDADE_ID, STR_ESTADO);
end;


end.
