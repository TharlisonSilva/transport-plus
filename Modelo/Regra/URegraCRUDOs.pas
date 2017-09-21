unit URegraCRUDOs;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioOs
  , UEntidade
  ;

type
  TRegraCRUDOs = class(TRegraCRUD)
  public
    constructor Create; override;
  end;

implementation

{ TRegraCRUDMotorista }

constructor TRegraCRUDOs.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioOs.Create);
end;

end.
