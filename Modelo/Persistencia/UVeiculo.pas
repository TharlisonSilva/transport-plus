unit UVeiculo;

interface

uses
    UEntidade
  ;

type
  TVEICULO = class(TENTIDADE)
  public

   MARCA          :     String;
	 MODELO         :     String;
	 ANO            :     TDate;
	 COR            :     String;
	 PLACA          :     String;
	 RNTRC          :     String;
	 RENAVAN        :     Integer;
	 CAPACIDADE_KG  :     Double;
	 KM_ATUAL       :     Double;
   DESCRICAO      :     String;

    constructor Create; override;
    destructor Destroy; override;
  end;

const

  TBL_VEICULO                = 'VEICULO';
  FLD_VEICULO_MARCA          = 'MARCA';
  FLD_VEICULO_MODELO         = 'MODELO';
  FLD_VEICULO_ANO            = 'ANO';
  FLD_VEICULO_COR            = 'COR';
  FLD_VEICULO_PLACA          = 'PLACA';
  FLD_VEICULO_RNTRC          = 'RNTRC';
  FLD_VEICULO_RENAVAN        = 'RENAVAN';
  FLD_VEICULO_CAPACIDADE_KG  = 'CAPACIDADE_KG';
  FLD_VEICULO_KM_ATUAL       = 'KM_ATUAL';
  FLD_VEICULO_DESCRICAO      = 'DESCRICAO';

resourcestring
  STR_VEICULO = 'Veiculo';

implementation

uses
    SysUtils
  ;

{ TMOTORISTA }

{ TVEICULO }

constructor TVEICULO.Create;
begin
  inherited;

end;

destructor TVEICULO.Destroy;
begin

  inherited;
end;

end.
