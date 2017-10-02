unit URepositorioCliente;

interface

uses
    UEntidade
  , UCliente
  , UCidade
  , URepositorioDB
  , URepositorioCidade
  , SysUtils
  , SqlExpr
  ;

type
  TRepositorioCliente = class(TRepositorioDB<TCLIENTE>)
  private
    FRepositorioCidade: TRepositorioCidade;

  protected
    procedure AtribuiDBParaEntidade(const coCLIENTE: TCLIENTE); override;
    procedure AtribuiEntidadeParaDB(const coCLIENTE: TCLIENTE;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRepositorioVeiculo }

procedure TRepositorioCliente.AtribuiDBParaEntidade(
  const coCLIENTE: TCLIENTE);
begin
  inherited;
  with FSQLSelect do
  begin
    coCLIENTE.NOME        := FieldByName(FLD_CLIENTE_NOME).AsString;
    coCLIENTE.CPF_CNPJ    := FieldByName(FLD_CLIENTE_CPF_CNPJ).AsString;
    coCLIENTE.ENDERECO    := FieldByName(FLD_CLIENTE_ENDERECO).AsString;
    coCLIENTE.BAIRRO      := FieldByName(FLD_CLIENTE_BAIRRO).AsString;
    coCLIENTE.CIDADE      := TCIDADE(FRepositorioCidade.Retorna(FieldByName(FLD_CLIENTE_CIDADE).AsInteger));
    coCLIENTE.CEP         := FieldByName(FLD_CLIENTE_CEP).AsString;
    coCLIENTE.DESCRICAO   := FieldByName(FLD_CLIENTE_DESCRICAO).AsString;

  end;
end;

procedure TRepositorioCliente.AtribuiEntidadeParaDB(
  const coCLIENTE: TCLIENTE; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_CLIENTE_NOME).AsString       := coCLIENTE.NOME;
    ParamByName(FLD_CLIENTE_CPF_CNPJ).AsString   := coCLIENTE.CPF_CNPJ;
    ParamByName(FLD_CLIENTE_ENDERECO).AsString   := coCLIENTE.ENDERECO;
    ParamByName(FLD_CLIENTE_BAIRRO).AsString     := coCLIENTE.BAIRRO;
    ParamByName(FLD_CLIENTE_CIDADE).AsInteger    := coCLIENTE.CIDADE.ID;
    ParamByName(FLD_CLIENTE_CEP).AsString        := coCLIENTE.CEP;
    ParamByName(FLD_CLIENTE_DESCRICAO).AsString  := coCLIENTE.DESCRICAO;
  end;
end;

constructor TRepositorioCliente.Create;
begin
  inherited Create(TCLIENTE, TBL_CLIENTE, FLD_ENTIDADE_ID, STR_CLIENTE);

  FRepositorioCidade := TRepositorioCidade.Create;
end;

destructor TRepositorioCliente.Destroy;
begin

  FreeAndNil(FRepositorioCidade);
  inherited;
end;

end.
