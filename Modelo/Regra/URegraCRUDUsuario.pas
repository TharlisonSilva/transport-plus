unit URegraCRUDUsuario;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioUsuario
  , UEntidade
  ;

type
  TRegraCRUDUsuario = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDMotorista }

constructor TRegraCRUDUsuario.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioUsuario.Create);
end;

end.
