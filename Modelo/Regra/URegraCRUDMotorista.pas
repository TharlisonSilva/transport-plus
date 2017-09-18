unit URegraCRUDMotorista;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioMotorista
  , UEntidade
  ;

type
  TRegraCRUDMotorista = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDMotorista }

constructor TRegraCRUDMotorista.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioMotorista.Create);
end;

end.
