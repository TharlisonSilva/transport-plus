unit URepositorioVeiculo;

interface

uses
    URepositorioDB
  , SysUtils
  , UVeiculo
  , UEntidade
  , SqlExpr
  ;

type
  TRepositorioVeiculo = class(TRepositorioDB<TVEICULO>)
  private

  protected
    procedure AtribuiDBParaEntidade(const coVEICULO: TVEICULO); override;
    procedure AtribuiEntidadeParaDB(const coVEICULO: TVEICULO;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TRepositorioVeiculo }

procedure TRepositorioVeiculo.AtribuiDBParaEntidade(
  const coVEICULO: TVEICULO);
begin
  inherited;
  with FSQLSelect do
  begin
    coVEICULO.MARCA             := FieldByName(FLD_VEICULO_MARCA).AsString;
    coVEICULO.MODELO            := FieldByName(FLD_VEICULO_MODELO).AsString;
    coVEICULO.ANO               := FieldByName(FLD_VEICULO_ANO).AsInteger;
    coVEICULO.COR               := FieldByName(FLD_VEICULO_COR).AsString;
    coVEICULO.PLACA             := FieldByName(FLD_VEICULO_PLACA).AsString;
    coVEICULO.RNTRC             := FieldByName(FLD_VEICULO_RNTRC).AsString;
    coVEICULO.RENAVAN           := FieldByName(FLD_VEICULO_RENAVAN).AsInteger;
    coVEICULO.CAPACIDADE_KG     := FieldByName(FLD_VEICULO_CAPACIDADE_KG).AsFloat;
    coVEICULO.KM_ATUAL          := FieldByName(FLD_VEICULO_KM_ATUAL).AsFloat;
  end;
end;

procedure TRepositorioVeiculo.AtribuiEntidadeParaDB(
  const coVEICULO: TVEICULO; const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    FieldByName(FLD_VEICULO_MARCA).AsString         :=  coVEICULO.MARCA;
    FieldByName(FLD_VEICULO_MODELO).AsString        := coVEICULO.MODELO;
    FieldByName(FLD_VEICULO_ANO).AsInteger          := coVEICULO.ANO;
    FieldByName(FLD_VEICULO_COR).AsString           := coVEICULO.COR;
    FieldByName(FLD_VEICULO_PLACA).AsString         := coVEICULO.PLACA;
    FieldByName(FLD_VEICULO_RNTRC).AsString         := coVEICULO.RNTRC;
    FieldByName(FLD_VEICULO_RENAVAN).AsInteger      := coVEICULO.RENAVAN;
    FieldByName(FLD_VEICULO_CAPACIDADE_KG).AsFloat  := coVEICULO.CAPACIDADE_KG;
    FieldByName(FLD_VEICULO_KM_ATUAL).AsFloat       := coVEICULO.KM_ATUAL ;

  end;
end;

constructor TRepositorioVeiculo.Create;
begin
  inherited Create(TVEICULO, TBL_VEICULO, FLD_ENTIDADE_ID, STR_VEICULO);
end;

destructor TRepositorioVeiculo.Destroy;
begin
  inherited;
end;
end.
