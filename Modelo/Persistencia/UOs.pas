unit UOs;

interface

uses
    UEntidade
  , UCidade
  , UEmpresa
  , UCliente
  , UMotorista
  ;

type
  TOS = class(TENTIDADE)
  public
    EMPRESA           :TEMPRESA;
    NUMERO_DE_VOLUMES :Integer;
    CEP_DESTINO       :String;
    ENDERECO_DESTINO  :String;
    BAIRRO_DESTINO    :String;
    CIDADE_DESTINO    :TCIDADE;
    PESO              :Double;
    CLIENTE           :TCLIENTE;
    MOTORISTA         :TMOTORISTA;
    STATUS            :Integer;

    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_OS                      = 'OS';
  FLD_OS_NUMERO               = 'OS_NUMERO';
  FLD_OS_EMPRESA              = 'ID_EMPRESA';
  FLD_OS_NUMERO_DE_VOLUMES    = 'NUMERO_DE_VOLUMES';
  FLD_OS_CEP_DESTINO          = 'CEP_DESTINO';
  FLD_OS_ENDERECO_DESTINO     = 'ENDERECO_DESTINO';
  FLD_OS_BAIRRO_DESTINO       = 'BAIRRO_DESTINO';
  FLD_OS_CIDADE_DESTINO       = 'ID_CIDADE_DESTINO';
  FLD_OS_PESO                 = 'PESO';
  FLD_OS_CLIENTE              = 'ID_CLIENTE';
  FLD_OS_MOTORISTA            = 'ID_MOTORISTA';
  FLD_OS_STATUS               = 'STATUS';

resourcestring
  STR_OS = 'OS';

implementation

uses
    SysUtils
  ;

{ TCIDADE }

constructor TOS.Create;
begin
  EMPRESA        := TEMPRESA.Create;
  CIDADE_DESTINO := TCIDADE.Create;
  CLIENTE        := TCLIENTE.Create;
  MOTORISTA      := TMOTORISTA.Create;
end;

destructor TOS.Destroy;
begin
  if Assigned(EMPRESA) then
    FreeAndNil(EMPRESA);

  if Assigned(CIDADE_DESTINO) then
    FreeAndNil(CIDADE_DESTINO);

  if Assigned(CLIENTE) then
    FreeAndNil(CLIENTE);

  if Assigned(MOTORISTA) then
    FreeAndNil(MOTORISTA);
  inherited;
end;

end.
