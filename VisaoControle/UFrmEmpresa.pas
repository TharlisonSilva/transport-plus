unit UFrmEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, ExtCtrls, StdCtrls
  , UEmpresa
  , URegraCrudEmpresa
  , ComCtrls
  , UUtilitarios
  , UOpcaoPesquisa
  , UEntidade
  , UDialogo
  , UFrmPesquisa, pngimage;

type
  TFrmCadastroEmpresa = class(TFrmCRUD)
    edNome: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    edEndereco: TEdit;
    edBairro: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edCnpj: TEdit;
    edInscricaoEstadual: TEdit;
    Label4: TLabel;
    pnlConteudo: TPanel;
    procedure btnSairClick(Sender: TObject);
   private
    FRegraCRUDEmpresa: TRegraCRUDEmpresa;

    FEMPRESA: TEMPRESA;
  protected

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;

  end;

var
  FrmCadastroEmpresa: TFrmCadastroEmpresa;

implementation

{$R *.dfm}

{ TFrmCadastroEmpresa }

procedure TFrmCadastroEmpresa.btnSairClick(Sender: TObject);
begin
  self.Owner.Free;

end;

procedure TFrmCadastroEmpresa.Finaliza;
begin
  inherited;


end;

procedure TFrmCadastroEmpresa.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
    pnlConteudo.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroEmpresa.Inicializa;
begin
  inherited;

  DefineRegraCRUD(@FRegraCRUDEmpresa, TRegraCRUDEmpresa);
  DefineEntidade(@FEMPRESA, TEMPRESA);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_EMPRESA)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por CNPJ')
    .AdicionaFiltro(FLD_EMPRESA_CNPJ));
end;

procedure TFrmCadastroEmpresa.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;

end;

procedure TFrmCadastroEmpresa.PreencheEntidade;
begin
  inherited;
  FEMPRESA.NOME_FANTASIA    := edNome.Text;
  FEMPRESA.ENDERECO         := edEndereco.Text;
  FEMPRESA.BAIRRO           := edBairro.Text;
  FEMPRESA.INSC_ESTADUAL    := edInscricaoEstadual.Text;
  FEMPRESA.CNPJ             := edCnpj.Text;
end;

procedure TFrmCadastroEmpresa.PreencheFormulario;
begin
  inherited;
  edNome.Text              := FEMPRESA.NOME_FANTASIA;
  edEndereco.Text          := FEMPRESA.ENDERECO;
  edBairro.Text            := FEMPRESA.BAIRRO;
  edInscricaoEstadual.Text := FEMPRESA.INSC_ESTADUAL;
  edCnpj.Text              := FEMPRESA.CNPJ;
end;

end.
