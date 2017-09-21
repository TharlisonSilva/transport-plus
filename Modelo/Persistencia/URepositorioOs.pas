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
    coOS.EMPRESA             := TEMPRESA(FRepositorioEmpresa.Retorna(FieldByName(FLD_OS_EMPRESA).AsInteger));
    coOS.NUMERO_DE_VOLUMES   := FieldByName(FLD_OS_NUMERO_DE_VOLUMES).AsInteger;
    coOS.CEP_DESTINO         := FieldByName(FLD_OS_CEP_DESTINO).AsString;
    coOS.ENDERECO_DESTINO    := FieldByName(FLD_OS_ENDERECO_DESTINO).AsString;
    coOS.BAIRRO_DESTINO      := FieldByName(FLD_OS_BAIRRO_DESTINO).AsString;
    coOS.CIDADE_DESTINO      := TCIDADE(FRepositorioCidade.Retorna(FieldByName(FLD_OS_CIDADE_DESTINO).AsInteger));
    coOS.PESO                := FieldByName(FLD_OS_PESO).AsFloat;
    coOS.CLIENTE             := TCLIENTE(FRepositorioCliente.Retorna(FieldByName(FLD_OS_CLIENTE).AsInteger));
    coOS.MOTORISTA           := TMOTORISTA(FRepositorioMotorista.Retorna(FieldByName(FLD_OS_MOTORISTA).AsInteger));
    coOs.STATUS              := FieldByName(FLD_OS_STATUS).AsInteger;

  end;
end;

procedure TRepositorioOs.AtribuiEntidadeParaDB(const coOS: TOS;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_OS_EMPRESA).AsInteger           := coOS.EMPRESA.ID;
    ParamByName(FLD_OS_NUMERO_DE_VOLUMES).AsInteger := coOS.NUMERO_DE_VOLUMES;
    ParamByName(FLD_OS_CEP_DESTINO).AsString        := coOS.CEP_DESTINO;
    ParamByName(FLD_OS_ENDERECO_DESTINO).AsString   := coOS.ENDERECO_DESTINO;
    ParamByName(FLD_OS_BAIRRO_DESTINO).AsString     := coOS.BAIRRO_DESTINO;
    ParamByName(FLD_OS_CIDADE_DESTINO).AsInteger    := coOS.CIDADE_DESTINO.ID;
    ParamByName(FLD_OS_PESO).AsFloat                := coOS.PESO;
    ParamByName(FLD_OS_CLIENTE).AsInteger           := coOS.CLIENTE.ID;
    ParamByName(FLD_OS_MOTORISTA).AsInteger         := coOS.MOTORISTA.ID;
    ParamByName(FLD_OS_STATUS).AsInteger            := coOs.STATUS;
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
