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
    coCLIENTE.ID_CIDADE   := TCIDADE(FRepositorioCidade.Retorna(FieldByName(FLD_CLIENTE_ID_CIDADE).AsInteger));
    coCLIENTE.CEP         :=  FieldByName(FLD_CLIENTE_CEP).AsString;
  end;
end;

procedure TRepositorioCliente.AtribuiEntidadeParaDB(
  const coCLIENTE: TCLIENTE; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    FieldByName(FLD_CLIENTE_NOME).AsString       := coCLIENTE.NOME;
    FieldByName(FLD_CLIENTE_CPF_CNPJ).AsString   := coCLIENTE.CPF_CNPJ;
    FieldByName(FLD_CLIENTE_ENDERECO).AsString   := coCLIENTE.ENDERECO;
    FieldByName(FLD_CLIENTE_BAIRRO).AsString     := coCLIENTE.BAIRRO;
    ParamByName(FLD_CLIENTE_ID_CIDADE).AsInteger := coCLIENTE.ID_CIDADE.ID;
    FieldByName(FLD_CLIENTE_CEP).AsString        := coCLIENTE.CEP;
  end;
end;

constructor TRepositorioCliente.Create;
begin
  inherited Create(TCLIENTE, TBL_CLIENTE, FLD_ENTIDADE_ID, STR_CLIENTE);
end;

destructor TRepositorioCliente.Destroy;
begin
  inherited;
end;

end.
