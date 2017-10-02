program TransportPlus;

uses
  Forms,
  SysUtils,
  Controls,
  UFrmPrincipal in 'VisaoControle\UFrmPrincipal.pas' {FrmPrincipal},
  UFrmCRUD in 'VisaoControle\UFrmCRUD.pas' {FrmCRUD},
  UUtilitarios in 'Modelo\UUtilitarios.pas',
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
  UUsuario in 'Modelo\Persistencia\UUsuario.pas',
  URepositorioUsuario in 'Modelo\Persistencia\URepositorioUsuario.pas',
  UOs in 'Modelo\Persistencia\UOs.pas',
  URepositorioOs in 'Modelo\Persistencia\URepositorioOs.pas',
  UFrmCadastroVeiculo in 'VisaoControle\UFrmCadastroVeiculo.pas' {FrmCadastroVeiculo},
  UFrmCadastroCliente in 'VisaoControle\UFrmCadastroCliente.pas' {FrmCadastroCliente},
  UFrmInicio in 'VisaoControle\UFrmInicio.pas' {frmInicio},
  UFrmControledeUsuario in 'VisaoControle\UFrmControledeUsuario.pas' {FrmCadastroUsuario},
  UUsuarioLogado in 'Modelo\UUsuarioLogado.pas',
  UPapel in 'Modelo\Persistencia\UPapel.pas',
  URepositorioPapel in 'Modelo\Persistencia\URepositorioPapel.pas',
  URegraCRUDUsuario in 'Modelo\Regra\URegraCRUDUsuario.pas',
  UConstantes in 'Modelo\UConstantes.pas',
  UMensagens in 'Modelo\UMensagens.pas',
  UFrmLogin in 'VisaoControle\UFrmLogin.pas' {FrmLogin},
  UFrmCadastroOS in 'VisaoControle\UFrmCadastroOS.pas' {FrmCadastroOs},
  URegraCRUDOs in 'Modelo\Regra\URegraCRUDOs.pas',
  URepositorioPapelPermissao in 'Modelo\Persistencia\URepositorioPapelPermissao.pas',
  UFrmInformacoes in 'VisaoControle\UFrmInformacoes.pas' {frmInformacoes},
  UFrmEmpresa in 'VisaoControle\UFrmEmpresa.pas' {FrmCadastroEmpresa},
  UFrmNotaBlu in 'VisaoControle\UFrmNotaBlu.pas' {FrmNotaBlu},
  UFrmTransporte in 'VisaoControle\UFrmTransporte.pas' {FrmTransporte};

{$R *.res}

begin
{$DEFINE PROD}
  Application.Initialize;
  Application.CreateForm(TdmEntra21, dmEntra21);
  {$IFDEF PROD}
  FrmLogin := TFrmLogin.Create(nil);
  if FrmLogin.ShowModal = mrYes then
    begin
      FreeAndNil(FrmLogin);
      Application.CreateForm(TFrmPrincipal, FrmPrincipal);
      Application.Run;
    end
  else
    begin
      Application.Run;
      Application.Terminate;
    end;
  {$ELSE}
    Application.Run;
    Application.Terminate;
  {$ENDIF}






end.
