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
    NUMERO_DE_VOLUMES         :Integer;
    CEP_DESTINO               :String;
    ENDERECO_DESTINO          :String;
    BAIRRO_DESTINO            :String;
    NUMERO_DESTINO            :String;
    COMPLEMENTO_ENCOMENDAS    :String;
    DESCRICAO_ENCOMENDAS      :String;
	  COMPLEMENTO_VALORES       :String;
	  VALOR                     :Double;
	  FORMA_PAGAMENTO           :String;
	  RECEBEDOR                 :String;
    PESO                      :Double;

    EMPRESA                   :TEMPRESA;
    CIDADE_DESTINO            :TCIDADE;
    CLIENTE                   :TCLIENTE;
    MOTORISTA                 :TMOTORISTA;
    DATA                      :TDATE;







    constructor Create; override;
    destructor Destroy; override;
  end;

const
  TBL_OS                        = 'OS';
  FLD_OS_NUMERO_DE_VOLUMES      = 'NUMERO_DE_VOLUMES';
  FLD_OS_CEP_DESTINO            = 'CEP_DESTINO';
  FLD_OS_ENDERECO_DESTINO       = 'ENDERECO_DESTINO';
  FLD_OS_BAIRRO_DESTINO         = 'BAIRRO_DESTINO';
  FLD_OS_NUMERO_DESTINO         = 'NUMERO_DESTINO';
  FLD_OS_COMPLEMENTO_DADOS      = 'COMPLEMENTO_DADOS';
  FLD_OS_DESCRICAO_ENCOMENDAS   = 'DESCRICAO_ENCOMENDAS';
  FLD_OS_COMPLEMENTO_VALORES    = 'COMPLEMENTO_VALORES';
  FLD_OS_VALOR                  = 'VALOR';
  FLD_OS_FORMA_PAGAMENTO        = 'FORMA_PAGAMENTO';
  FLD_OS_RECEBEDOR              = 'RECEBEDOR';
  FLD_OS_PESO                   = 'PESO';

  FLD_OS_EMPRESA                = 'ID_EMPRESA';
  FLD_OS_CIDADE_DESTINO         = 'ID_CIDADE_DESTINO';
  FLD_OS_CLIENTE                = 'ID_CLIENTE';
  FLD_OS_MOTORISTA              = 'ID_MOTORISTA';
  FLD_OS_DATA                   = 'DATA';

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

  if Assigned(CIDADE_DESTINO) then
    FreeAndNil(CIDADE_DESTINO);

  if Assigned(CLIENTE) then
    FreeAndNil(CLIENTE);

  if Assigned(MOTORISTA) then
    FreeAndNil(MOTORISTA);

  if Assigned(EMPRESA) then
    FreeAndNil(EMPRESA);
  inherited;
end;

end.
