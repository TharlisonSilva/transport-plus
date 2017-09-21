unit URegraCRUDEmpresa;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioEmpresa
  , UEntidade
  ;

type
  TRegraCRUDEmpresa = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDMotorista }

constructor TRegraCRUDEmpresa.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioEmpresa.Create);
end;

end.
