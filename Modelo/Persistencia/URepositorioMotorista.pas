unit URepositorioMotorista;

interface

uses
    URepositorioDB
  , URepositorioCidade
  , UMotorista
  , UEntidade
  , SqlExpr
  ;

type
  TRepositorioMotorista = class(TRepositorioDB<TMOTORISTA>)
  private
    FRepositorioCidade: TRepositorioCidade;

  protected
    procedure AtribuiDBParaEntidade(const coMOTORISTA: TMOTORISTA); override;
    procedure AtribuiEntidadeParaDB(const coMOTORISTA: TMOTORISTA;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
    SysUtils
  , UCidade
  ;

{ TRepositorioMotorista }

procedure TRepositorioMotorista.AtribuiDBParaEntidade(
  const coMOTORISTA: TMOTORISTA);
begin
  inherited;
  with FSQLSelect do
  begin
    coMOTORISTA.NOME                := FieldByName(FLD_MOTORISTA_NOME).AsString;
    coMOTORISTA.TELEFONE            := FieldByName(FLD_MOTORISTA_TELEFONE).AsString;
    coMOTORISTA.CELULAR             := FieldByName(FLD_MOTORISTA_CELULAR).AsString;
    coMOTORISTA.ENDERECO            := FieldByName(FLD_MOTORISTA_ENDERECO).AsString;
    coMOTORISTA.BAIRRO              := FieldByName(FLD_MOTORISTA_BAIRRO).AsString;
    coMOTORISTA.CEP                 := FieldByName(FLD_MOTORISTA_CEP).AsString;
    coMOTORISTA.CPF                 := FieldByName(FLD_MOTORISTA_CPF).AsString;
    coMOTORISTA.RG                  := FieldByName(FLD_MOTORISTA_RG).AsString;
    coMOTORISTA.DATA_NASCIMENTO     := FieldByName(FLD_MOTORISTA_DATA_NASCIMENTO).AsDateTime;
    coMOTORISTA.CNH_NUMERO_REGISTRO := FieldByName(FLD_MOTORISTA_CNH_NUMERO_REGISTRO).AsString;
    coMOTORISTA.CNH_CATEGORIA       := FieldByName(FLD_MOTORISTA_CNH_CATEGORIA).AsString;
    coMOTORISTA.CNH_DATA_VALIDADE   := FieldByName(FLD_MOTORISTA_CNH_DATA_VALIDADE).AsDateTime;

    coMOTORISTA.CIDADE              := TCIDADE(FRepositorioCidade.Retorna(FieldByName(FLD_MOTORISTA_CIDADE).AsInteger));
  end;
end;

procedure TRepositorioMotorista.AtribuiEntidadeParaDB(
  const coMOTORISTA: TMOTORISTA; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_MOTORISTA_NOME).AsString                  := coMOTORISTA.NOME;
    ParamByName(FLD_MOTORISTA_TELEFONE).AsString              := coMOTORISTA.TELEFONE;
    ParamByName(FLD_MOTORISTA_CELULAR).AsString               := coMOTORISTA.CELULAR;
    ParamByName(FLD_MOTORISTA_ENDERECO).AsString              := coMOTORISTA.ENDERECO;
    ParamByName(FLD_MOTORISTA_BAIRRO).AsString                := coMOTORISTA.BAIRRO;
    ParamByName(FLD_MOTORISTA_CEP).AsString                   := coMOTORISTA.CEP;
    ParamByName(FLD_MOTORISTA_CPF).AsString                   := coMOTORISTA.CPF;
    ParamByName(FLD_MOTORISTA_RG).AsString                    := coMOTORISTA.RG;
    ParamByName(FLD_MOTORISTA_DATA_NASCIMENTO).AsDate         := coMOTORISTA.DATA_NASCIMENTO;
    ParamByName(FLD_MOTORISTA_CNH_NUMERO_REGISTRO).AsString   := coMOTORISTA.CNH_NUMERO_REGISTRO;
    ParamByName(FLD_MOTORISTA_CNH_CATEGORIA).AsString         := coMOTORISTA.CNH_CATEGORIA;
    ParamByName(FLD_MOTORISTA_CNH_DATA_VALIDADE).AsDate       := coMOTORISTA.CNH_DATA_VALIDADE;

    ParamByName(FLD_MOTORISTA_CIDADE).AsInteger               := coMOTORISTA.CIDADE.ID;

  end;
end;

constructor TRepositorioMotorista.Create;
begin
  inherited Create(TMOTORISTA, TBL_MOTORISTA, FLD_ENTIDADE_ID, STR_MOTORISTA);
  FRepositorioCidade := TRepositorioCidade.Create;
end;

destructor TRepositorioMotorista.Destroy;
begin
  FreeAndNil(FRepositorioCidade);
  inherited;
end;

end.
