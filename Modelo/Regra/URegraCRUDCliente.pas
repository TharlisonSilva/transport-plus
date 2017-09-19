unit URegraCRUDCliente;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioCliente
  , UEntidade
  ;

type
  TRegraCRUDCliente = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDMotorista }

constructor TRegraCRUDCliente.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCliente.Create);
end;

end.
