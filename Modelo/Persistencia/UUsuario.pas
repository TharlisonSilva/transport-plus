unit UUsuario;

interface

uses
    UEntidade
  , UUtilitarios
  ;

type
  TUSUARIO = class(TENTIDADE)
  public
    NOME     :String;
    LOGIN    :String;
    SENHA    :String;
    PAPEL    :TPapelUsuario;
    PERMISSOES : TListaPermissoesUsuario;

  end;

const
  TBL_USUARIO           = 'USUARIO';
  FLD_USUARIO_NOME      = 'NOME';
  FLD_USUARIO_LOGIN     = 'LOGIN';
  FLD_USUARIO_SENHA     = 'SENHA';
  FLD_USUARIO_ID_PAPEL  = 'ID_PAPEL';

resourcestring
  STR_USUARIO = 'USUARIO';

implementation

uses
    SysUtils
  ;

end.
