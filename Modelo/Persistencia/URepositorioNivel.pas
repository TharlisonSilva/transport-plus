unit URepositorioNivel;

interface

uses
    URepositorioDB
  , URepositorioFuncao
  , UNivel
  , UEntidade
  , SQLExpr
  ;

type
  TRepositorioNivel = class(TRepositorioDB<TNIVEL>)
  private
    FRepositorioFuncao: TRepositorioFuncao;

  protected
    procedure AtribuiDBParaEntidade(const coNIVEL: TNIVEL); override;
    procedure AtribuiEntidadeParaDB(const coNIVEL: TNIVEL;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
    SysUtils
  , Ufuncao
  ;

{ TRepositorioCidade }

procedure TRepositorioNivel.AtribuiDBParaEntidade(const coNIVEL: TNIVEL);
begin
  inherited;
  with FSQLSelect do
  begin
    coNIVEL.NOME      := FieldByName(FLD_NIVEL_NOME).AsString;
    coNIVEL.ID_FUNCAO := TFUNCAO(FRepositorioFuncao.Retorna(FieldByName(FLD_NIVEL_ID_FUNCAO).AsInteger));
  end;
end;

procedure TRepositorioNivel.AtribuiEntidadeParaDB(const coNIVEL: TNIVEL;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_NIVEL_NOME).AsString       := coNIVEL.NOME;
    ParamByName(FLD_NIVEL_ID_FUNCAO).AsInteger := coNIVEL.ID_FUNCAO.ID;
  end;
end;

constructor TRepositorioNivel.Create;
begin
  inherited Create(TNIVEL, TBL_NIVEL, FLD_ENTIDADE_ID, STR_NIVEL);
  FRepositorioFuncao := TRepositorioFuncao.Create;
end;

destructor TRepositorioNivel.Destroy;
begin
  FreeAndNil(FRepositorioFuncao);
  inherited;
end;

end.
