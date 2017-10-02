unit URepositorioOs;

interface

uses
    URepositorioDB
  , UEntidade
  , UOs
  , UCidade
  , UEmpresa
  , UCliente
  , UMotorista
  , URepositorioCidade
  , URepositorioCliente
  , URepositorioEmpresa
  , URepositorioMotorista
  , SQLExpr
  , SysUtils
  ;

type
  TRepositorioOs = class(TRepositorioDB<TOS>)
  private
    FRepositorioCidade    : TRepositorioCidade;
    FRepositorioEmpresa   : TRepositorioEmpresa;
    FRepositorioCliente   : TRepositorioCliente;
    FRepositorioMotorista : TRepositorioMotorista;

  protected
    procedure AtribuiDBParaEntidade(const coOS: TOS); override;
    procedure AtribuiEntidadeParaDB(const coOS: TOS; const coSQLQuery: TSQLQuery); override;

  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRepositorioCidade }

procedure TRepositorioOs.AtribuiDBParaEntidade(const coOS: TOS);
begin
  inherited;
  with FSQLSelect do
  begin
    coOS.NUMERO_DE_VOLUMES     := FieldByName(FLD_OS_NUMERO_DE_VOLUMES).AsInteger;
    coOS.CEP_DESTINO           := FieldByName(FLD_OS_CEP_DESTINO).AsString;
    coOS.ENDERECO_DESTINO      := FieldByName(FLD_OS_ENDERECO_DESTINO).AsString;
    coOS.BAIRRO_DESTINO        := FieldByName(FLD_OS_BAIRRO_DESTINO).AsString;
    coOS.NUMERO_DESTINO        := FieldByName(FLD_OS_NUMERO_DESTINO).AsString;
    coOS.COMPLEMENTO_ENCOMENDAS:= FieldByName(FLD_OS_COMPLEMENTO_DADOS).AsString;
    coOS.DESCRICAO_ENCOMENDAS  := FieldByName(FLD_OS_DESCRICAO_ENCOMENDAS).AsString;
    coOS.COMPLEMENTO_VALORES   := FieldByName(FLD_OS_COMPLEMENTO_VALORES).AsString;
    coOS.VALOR                 := FieldByName(FLD_OS_VALOR).AsFloat;
    coOS.FORMA_PAGAMENTO       := FieldByName(FLD_OS_FORMA_PAGAMENTO).AsString;
    coOS.RECEBEDOR             := FieldByName(FLD_OS_RECEBEDOR).AsString;
    coOS.CIDADE_DESTINO        := TCIDADE(FRepositorioCidade.Retorna(FieldByName(FLD_OS_CIDADE_DESTINO).AsInteger));
    coOS.PESO                  := FieldByName(FLD_OS_PESO).AsFloat;
    coOS.CLIENTE               := TCLIENTE(FRepositorioCliente.Retorna(FieldByName(FLD_OS_CLIENTE).AsInteger));
    coOS.MOTORISTA             := TMOTORISTA(FRepositorioMotorista.Retorna(FieldByName(FLD_OS_MOTORISTA).AsInteger));
    coOS.EMPRESA               := TEMPRESA(FRepositorioEMpresa.Retorna(FieldByName(FLD_OS_EMPRESA).AsInteger));
    coOS.DATA                  := FieldByName(FLD_OS_DATA).AsDateTime;

  end;
end;

procedure TRepositorioOs.AtribuiEntidadeParaDB(const coOS: TOS;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin

    ParamByName(FLD_OS_NUMERO_DE_VOLUMES).AsInteger   := coOS.NUMERO_DE_VOLUMES;
    ParamByName(FLD_OS_CEP_DESTINO).AsString          := coOS.CEP_DESTINO;
    ParamByName(FLD_OS_ENDERECO_DESTINO).AsString     := coOS.ENDERECO_DESTINO;
    ParamByName(FLD_OS_BAIRRO_DESTINO).AsString       := coOS.BAIRRO_DESTINO;
    ParamByName(FLD_OS_NUMERO_DESTINO).AsString       := coOS.NUMERO_DESTINO;
    ParamByName(FLD_OS_COMPLEMENTO_DADOS).AsString    := coOS.COMPLEMENTO_ENCOMENDAS;
    ParamByName(FLD_OS_DESCRICAO_ENCOMENDAS).AsString := coOS.DESCRICAO_ENCOMENDAS;
    ParamByName(FLD_OS_COMPLEMENTO_VALORES).AsString  := coOS.COMPLEMENTO_VALORES;
    ParamByName(FLD_OS_VALOR).AsFloat                 := coOS.VALOR;
    ParamByName(FLD_OS_FORMA_PAGAMENTO).AsString      := coOS.FORMA_PAGAMENTO;
    ParamByName(FLD_OS_RECEBEDOR).AsString            := coOS.RECEBEDOR;
    ParamByName(FLD_OS_CIDADE_DESTINO).AsInteger      := coOS.CIDADE_DESTINO.ID;
    ParamByName(FLD_OS_PESO).AsFloat                  := coOS.PESO;
    ParamByName(FLD_OS_CLIENTE).AsInteger             := coOS.CLIENTE.ID;
    ParamByName(FLD_OS_MOTORISTA).AsInteger           := coOS.MOTORISTA.ID;
    ParamByName(FLD_OS_EMPRESA).AsInteger             := coOS.EMPRESA.ID;
    ParamByName(FLD_OS_DATA).AsDate                   := coOS.DATA;


  end;
end;

constructor TRepositorioOs.Create;
begin
  inherited Create(TOS, TBL_OS, FLD_ENTIDADE_ID, STR_OS);

  FRepositorioCidade    := TRepositorioCidade.Create;
  FRepositorioEmpresa   := TRepositorioEmpresa.Create;
  FRepositorioCliente   := TRepositorioCliente.Create;
  FRepositorioMotorista := TRepositorioMotorista.Create;

end;

destructor TRepositorioOs.Destroy;
begin
  FreeAndNil(FRepositorioCidade);
  FreeAndNil(FRepositorioEmpresa);
  FreeAndNil(FRepositorioCliente);
  FreeAndNil(FRepositorioMotorista);
  inherited;
end;

end.
