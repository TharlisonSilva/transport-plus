unit UFrmControledeUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Menus, Buttons, ExtCtrls, StdCtrls, ComCtrls
, URegraCRUDUsuario
, UUsuario
, URepositorioUsuario
, UPapel
, UUtilitarios
, URepositorioPapel, pngimage
;

type
  TFrmCadastroUsuario = class(TFrmCRUD)
    Label1: TLabel;
    edNome: TEdit;
    Label5: TLabel;
    edLogin: TEdit;
    lbSenha: TLabel;
    edSenha: TEdit;
    Label2: TLabel;
    pnlConteudo: TPanel;
    cbPapel: TComboBox;
    edSenhaAtual: TEdit;
    lbSenhaAtual: TLabel;
    Label4: TLabel;
    edConfirmacaoSenha: TEdit;
    procedure VerificaSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  protected
    FUSUARIO: TUSUARIO;
    FRegraCRUDUsuario: TRegraCRUDUsuario;
    FRepositorioPapel: TRepositorioPapel;

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;

  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

uses
    UOpcaoPesquisa
  , UEntidade
  , UCidade
  , UDialogo
  , UFrmPesquisa
  , StrUtils
  , UUsuarioLogado
  ;

resourcestring
  STR_NOVA_SENHA = 'Nova Senha';
  STR_SENHA      = 'Senha';

{$R *.dfm}

{ TFrmControleUsuario }

procedure TFrmCadastroUsuario.btnSairClick(Sender: TObject);
begin
  Self.Owner.Free;

end;

procedure TFrmCadastroUsuario.Finaliza;
begin
  inherited;

end;

procedure TFrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  lbSenhaAtual.Visible := False;
  edSenhaAtual.Visible := False;
end;

procedure TFrmCadastroUsuario.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  pnlConteudo.Enabled := ceTipoOperacaoUsuario in [touInsercao, touAtualizacao];
  edSenhaAtual.Visible  := ceTipoOperacaoUsuario = touAtualizacao;
  if edSenhaAtual.Visible = True then
    lbSenhaAtual.Visible := True;
  edLogin.Enabled       := ceTipoOperacaoUsuario = touInsercao;

  lbSenha.Caption := IfThen(ceTipoOperacaoUsuario = touAtualizacao
                                    , STR_NOVA_SENHA
                                    , STR_SENHA);
end;

procedure TFrmCadastroUsuario.Inicializa;
var
  coPAPEL: TPAPEL;
begin
  inherited;
  DefineRegraCRUD(@FRegraCRUDUsuario, TRegraCRUDUsuario);
  DefineEntidade(@FUsuario, TUsuario);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_USUARIO)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por Nome')
    .AdicionaFiltro(FLD_USUARIO_NOME));

  FRepositorioPapel := TRepositorioPapel.Create;

  for coPAPEL in FRepositorioPapel.RetornaTodos do
    cbPapel.Items.Add(coPAPEL.DESCRICAO);

    cbPapel.ItemIndex := 1;
end;

procedure TFrmCadastroUsuario.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmCadastroUsuario.PreencheEntidade;
var
  senha:String;
begin
  inherited;

  FUSUARIO.NOME                       := edNome.Text;
  FUSUARIO.LOGIN                      := edLogin.Text;
  senha                               := TUsuarioLogado.RetornaHash(edSenha.Text);
  FUSUARIO.SENHA                      := senha;
  FUSUARIO.PAPEL                      := TPapelUsuario(cbpapel.ItemIndex);

  FRegraCRUDUsuario.CONFIRMACAO_SENHA := edConfirmacaoSenha.Text;
  FRegraCRUDUsuario.SENHA_ATUAL       := edSenhaAtual.Text;

end;

procedure TFrmCadastroUsuario.PreencheFormulario;
begin
  inherited;

  edNome.Text                      :=  FUSUARIO.NOME;
  edLogin.Text                     :=  FUSUARIO.LOGIN;
  cbPapel.ItemIndex                :=  Integer(FUSUARIO.PAPEL);

end;

procedure TFrmCadastroUsuario.VerificaSenhaExit(Sender: TObject);
begin
  inherited;
  if  (Trim(edSenha.Text) <> EmptyStr)
  and (Trim(edConfirmacaoSenha.Text) <> EmptyStr) then
    try
      FRegraCRUDUsuario.ValidaSenha(edSenha.Text, edConfirmacaoSenha.Text);
    except
      on E: EValidacaoNegocio do
        begin
          TDialogo.Excecao(E);
          edSenha.Clear;
          edConfirmacaoSenha.Clear;
          edSenha.SetFocus;
        end;
    end;
end;

end.
