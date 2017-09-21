unit URepositorioEmpresa;

interface

uses
    UEntidade
  , UEmpresa
  , URepositorioDB
  , SysUtils
  , SqlExpr
  ;

type
  TRepositorioEmpresa = class(TRepositorioDB<TEMPRESA>)
  private

  protected
    procedure AtribuiDBParaEntidade(const coEMPRESA: TEMPRESA); override;
    procedure AtribuiEntidadeParaDB(const coEMPRESA: TEMPRESA;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRepositorioVeiculo }

procedure TRepositorioEmpresa.AtribuiDBParaEntidade(
  const coEMPRESA: TEMPRESA);
begin
  inherited;
  with FSQLSelect do
  begin
    coEMPRESA.NOME_FANTASIA     := FieldByName(FLD_EMPRESA_NOME_FANTASIA).AsString;
    coEMPRESA.ENDERECO          := FieldByName(FLD_EMPRESA_ENDERECO).AsString;
    coEMPRESA.BAIRRO            := FieldByName(FLD_EMPRESA_BAIRRO).AsString;
    coEMPRESA.INSC_ESTADUAL     := FieldByName(FLD_EMPRESA_INSC_ESTADUAL).AsString;
  end;
end;

procedure TRepositorioEmpresa.AtribuiEntidadeParaDB(
  const coEMPRESA: TEMPRESA; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_EMPRESA_NOME_FANTASIA).AsString   :=   coEMPRESA.NOME_FANTASIA;
    ParamByName(FLD_EMPRESA_ENDERECO).AsString        :=   coEMPRESA.ENDERECO;
    ParamByName(FLD_EMPRESA_BAIRRO).AsString          :=   coEMPRESA.BAIRRO;
    ParamByName(FLD_EMPRESA_INSC_ESTADUAL).AsString   :=   coEMPRESA.INSC_ESTADUAL;
  end;
end;

constructor TRepositorioEmpresa.Create;
begin
  inherited Create(TEMPRESA, TBL_EMPRESA, FLD_ENTIDADE_ID, STR_EMPRESA);
end;

destructor TRepositorioEmpresa.Destroy;
begin
  inherited;
end;

end.
