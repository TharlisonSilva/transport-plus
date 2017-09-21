program TransportPlus;

uses
  Forms,
  UFrmPrincipal in 'VisaoControle\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCRUD in 'VisaoControle\UFrmCRUD.pas' {FrmCRUD},
  UUtilitarios in 'Modelo\UUtilitarios.pas',
  UMensagens in 'Modelo\UMensagens.pas',
  UConstantes in 'Modelo\UConstantes.pas',
  UDialogo in 'Modelo\UDialogo.pas',
  UOpcaoPesquisa in 'Modelo\UOpcaoPesquisa.pas',
  UDM in 'Modelo\Persistencia\UDM.pas' {dmEntra21: TDataModule},
  UEntidade in 'Modelo\Persistencia\UEntidade.pas',
  URepositorio in 'Modelo\Persistencia\URepositorio.pas',
  URepositorioDB in 'Modelo\Persistencia\URepositorioDB.pas',
  URegraCRUD in 'Modelo\Regra\URegraCRUD.pas',
  UCidade in 'Modelo\Persistencia\UCidade.pas',
  UCliente in 'Modelo\Persistencia\UCliente.pas',
  UEstado in 'Modelo\Persistencia\UEstado.pas',
  UMotorista in 'Modelo\Persistencia\UMotorista.pas',
  URepositorioCidade in 'Modelo\Persistencia\URepositorioCidade.pas',
  URepositorioCliente in 'Modelo\Persistencia\URepositorioCliente.pas',
  URepositorioMotorista in 'Modelo\Persistencia\URepositorioMotorista.pas',
  URepositorioEstado in 'Modelo\Persistencia\URepositorioEstado.pas',
  UFrmCadastroMotorista in 'VisaoControle\UFrmCadastroMotorista.pas' {FrmCadastroMotorista},
  URegraCRUDMotorista in 'Modelo\Regra\URegraCRUDMotorista.pas',
  UVeiculo in 'Modelo\Persistencia\UVeiculo.pas',
  URepositorioVeiculo in 'Modelo\Persistencia\URepositorioVeiculo.pas',
  URegraCRUDVeiculo in 'Modelo\Regra\URegraCRUDVeiculo.pas',
  URegraCRUDCliente in 'Modelo\Regra\URegraCRUDCliente.pas',
  UEmpresa in 'Modelo\Persistencia\UEmpresa.pas',
  URepositorioEmpresa in 'Modelo\Persistencia\URepositorioEmpresa.pas',
  URegraCRUDEmpresa in 'Modelo\Regra\URegraCRUDEmpresa.pas',
  UFuncao in 'Modelo\Persistencia\UFuncao.pas',
  URepositorioFuncao in 'Modelo\Persistencia\URepositorioFuncao.pas',
  UNivel in 'Modelo\Persistencia\UNivel.pas',
  URepositorioNivel in 'Modelo\Persistencia\URepositorioNivel.pas',
  UUsuario in 'Modelo\Persistencia\UUsuario.pas',
  URepositorioUsuario in 'Modelo\Persistencia\URepositorioUsuario.pas',
  URegraCRUDUsuario in 'Modelo\Regra\URegraCRUDUsuario.pas',
  UOs in 'Modelo\Persistencia\UOs.pas',
  URepositorioOs in 'Modelo\Persistencia\URepositorioOs.pas',
  URegraCRUDOs in 'Modelo\Regra\URegraCRUDOs.pas',
  UFrmCadastroVeiculo in 'VisaoControle\UFrmCadastroVeiculo.pas' {FrmCadastroVeiculo},
  UFrmCadastroCliente in 'VisaoControle\UFrmCadastroCliente.pas' {FrmCadastroCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmEntra21, dmEntra21);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastroVeiculo, FrmCadastroVeiculo);
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  Application.Run;
end.
