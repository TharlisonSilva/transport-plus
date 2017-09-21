unit UUsuario;

interface

uses
    UEntidade
  , Univel
  ;

type
  TUSUARIO = class(TENTIDADE)
  public
    NOME     :String;
    LOGIN    :String;
    SENHA    :String;
    ID_NIVEL :TNIVEL;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_USUARIO           = 'USUARIO';
  FLD_USUARIO_NOME      = 'NOME';
  FLD_USUARIO_LOGIN     = 'LOGIN';
  FLD_USUARIO_SENHA     = 'SENHA';
  FLD_USUARIO_ID_NIVEL  = 'ID_NIVEL';

resourcestring
  STR_USUARIO = 'USUARIO';

implementation

uses
    SysUtils
  ;

{ TCIDADE }

constructor TUSUARIO.Create;
begin
  ID_NIVEL := TNIVEL.Create;
end;

destructor TUSUARIO.Destroy;
begin
  if Assigned(ID_NIVEL) then
    FreeAndNil(ID_NIVEL);

  inherited;
end;

end.
