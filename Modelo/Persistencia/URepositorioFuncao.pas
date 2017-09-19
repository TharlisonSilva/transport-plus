unit URepositorioFuncao;

interface

uses
    URepositorioDB
  , UFuncao
  , UEntidade
  , SQLExpr
  ;

type
  TRepositorioFuncao = class(TRepositorioDB<TFUNCAO>)
  protected
    procedure AtribuiDBParaEntidade(const coFUNCAO: TFUNCAO); override;
    procedure AtribuiEntidadeParaDB(const coFUNCAO: TFUNCAO;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
  end;

implementation

{ TRepositorioEstado }

procedure TRepositorioFuncao.AtribuiDBParaEntidade(const coFUNCAO: TFUNCAO);
begin
  inherited;
  with FSQLSelect do
  begin
    coFUNCAO.NOME  := FieldByName(FLD_FUNCAO_NOME).AsString;
  end;
end;

procedure TRepositorioFuncao.AtribuiEntidadeParaDB(const coFUNCAO: TFUNCAO;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin

    FieldByName(FLD_FUNCAO_NOME).AsString := coFUNCAO.NOME;

  end;
end;

constructor TRepositorioFuncao.Create;
begin
  inherited Create(TFUNCAO, TBL_FUNCAO, FLD_ENTIDADE_ID, STR_FUNCAO);
end;

end.
