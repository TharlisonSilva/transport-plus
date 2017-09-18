unit URegraCRUDVeiculo;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioVeiculo
  , UEntidade
  ;

type
  TRegraCRUDVeiculo = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDMotorista }

constructor TRegraCRUDVeiculo.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioVeiculo.Create);
end;

end.
