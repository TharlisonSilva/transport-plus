unit UFrmCadastroMotorista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, Mask, StdCtrls, Menus, Buttons, ExtCtrls
  , URegraCRUDMotorista
  , UMotorista
  , ComCtrls
  , UUtilitarios
  , URepositorioCidade
  ;

type
  TFrmCadastroMotorista = class(TFrmCRUD)
    pnlConteudo: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    lbCidadeNascimento: TLabel;
    Label3: TLabel;
    edBairro: TEdit;
    edCategoria: TEdit;
    edCep: TEdit;
    edEndereco: TEdit;
    edNome: TEdit;
    edRegistroCnh: TEdit;
    edRG: TEdit;
    edCpf: TMaskEdit;
    edDataValidade: TDateTimePicker;
    edDataNascimento: TDateTimePicker;
    edTelefone: TMaskEdit;
    edCelular: TMaskEdit;
    edCidadeNascimento: TEdit;
    btnLocalizarCidadeNascimento: TButton;
    stNomeCidadeNascimento: TStaticText;
    edCidade: TEdit;
    btnLocalizarCidade: TButton;
    stNomeCidade: TStaticText;
    procedure edCidadeNascimentoExit(Sender: TObject);
    procedure btnLocalizarCidadeNascimentoClick(Sender: TObject);
    procedure btnLocalizarCidadeClick(Sender: TObject);
    procedure edCidadeExit(Sender: TObject);
  private
    FRegraCRUDMotorista: TRegraCRUDMotorista;
    FRepositorioCidade: TRepositorioCidade;

    FMOTORISTA: TMOTORISTA;
  protected

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;


var
  FrmCadastroMotorista: TFrmCadastroMotorista;

implementation

{$R *.dfm}

uses
    UOpcaoPesquisa
  , UEntidade
  , UCidade
  , UDialogo
  , UFrmPesquisa
  ;


{ TFrmCadastroMotorista }

procedure TFrmCadastroMotorista.btnLocalizarCidadeClick(Sender: TObject);
begin
  edCidade.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_CIDADE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_CIDADE)
    .AdicionaFiltro(FLD_CIDADE_NOME));

  if Trim(edCidade.Text) <> EmptyStr then
    edCidade.OnExit(btnLocalizarCidade);
end;

procedure TFrmCadastroMotorista.btnLocalizarCidadeNascimentoClick(
  Sender: TObject);
begin
  edCidadeNascimento.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_CIDADE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_CIDADE)
    .AdicionaFiltro(FLD_CIDADE_NOME));

  if Trim(edCidadeNascimento.Text) <> EmptyStr then
    edCidadeNascimento.OnExit(btnLocalizarCidadeNascimento);
end;

procedure TFrmCadastroMotorista.edCidadeExit(Sender: TObject);
var
  loCIDADE: TCIDADE;
begin
  FMOTORISTA.CIDADE.ID := 0;
  if StrToIntDef(edCidade.Text, 0) <> 0 then
    try
      loCIDADE := TCIDADE(FRepositorioCidade.Retorna(StrToIntDef(edCidade.Text, 0)));
      if loCIDADE = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FMOTORISTA.CIDADE    := loCIDADE;
          stNomeCidade.Caption := FMOTORISTA.CIDADE.NOME;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCidade.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroMotorista.edCidadeNascimentoExit(Sender: TObject);
var
  loCIDADE: TCIDADE;
begin
  FMOTORISTA.CIDADE.ID := 0;
  if StrToIntDef(edCidadeNascimento.Text, 0) <> 0 then
    try
      loCIDADE := TCIDADE(FRepositorioCidade.Retorna(StrToIntDef(edCidadeNascimento.Text, 0)));
      if loCIDADE = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FMOTORISTA.CIDADE              := loCIDADE;
          stNomeCidadeNascimento.Caption := FMOTORISTA.CIDADE.NOME;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCidadeNascimento.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroMotorista.Finaliza;
begin
  inherited;
  FreeAndNil(FRepositorioCidade);
end;

procedure TFrmCadastroMotorista.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  pnlConteudo.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroMotorista.Inicializa;
begin
  inherited;

  DefineRegraCRUD(@FRegraCRUDMotorista, TRegraCRUDMotorista);
  DefineEntidade(@FMOTORISTA, TMOTORISTA);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_MOTORISTA)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por Nome')
    .AdicionaFiltro(FLD_MOTORISTA_NOME));

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_MOTORISTA)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por CPF')
    .AdicionaFiltro(FLD_MOTORISTA_CPF));

  FRepositorioCidade := TRepositorioCidade.Create;
end;

procedure TFrmCadastroMotorista.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edNome.SetFocus;
end;

procedure TFrmCadastroMotorista.PreencheEntidade;
begin
  inherited;
  FMOTORISTA.NOME                := edNome.Text;
  FMOTORISTA.TELEFONE            := edTelefone.Text;
  FMOTORISTA.CELULAR             := edCelular.Text;
  FMOTORISTA.ENDERECO            := edEndereco.Text;
  FMOTORISTA.BAIRRO              := edBairro.Text;
  FMOTORISTA.CEP                 := StrToIntDef(edCep.Text, 0);
  FMOTORISTA.CPF                 := edCpf.Text;
  FMOTORISTA.RG                  := edRG.Text;
  //FMOTORISTA.ORGAO_EXPEDIDOR     := edOrgaoExpedidor.Text;
  //FMOTORISTA.DATA_EXPEDICAO      := edDataEmissao.DateTime;
  FMOTORISTA.DATA_NASCIMENTO     := edDataNascimento.DateTime;
  FMOTORISTA.CNH_NUMERO_REGISTRO := edRegistroCnh.Text;
  FMOTORISTA.CNH_CATEGORIA       := edCategoria.Text;
  FMOTORISTA.CNH_DATA_VALIDADE   := edDataValidade.DateTime;
end;

procedure TFrmCadastroMotorista.PreencheFormulario;
begin
  inherited;
  edNome.Text               := FMOTORISTA.NOME;
  edTelefone.Text           := FMOTORISTA.TELEFONE;
  edCelular.Text            := FMOTORISTA.CELULAR;
  edEndereco.Text           := FMOTORISTA.ENDERECO;
  edBairro.Text             := FMOTORISTA.BAIRRO;
  edCep.Text                := IntToStr(FMOTORISTA.CEP);
  edCpf.Text                := FMOTORISTA.CPF;
  edRG.Text                 := FMOTORISTA.RG;
 // edOrgaoExpedidor.Text     := FMOTORISTA.ORGAO_EXPEDIDOR;
 // edDataEmissao.DateTime    := FMOTORISTA.DATA_EXPEDICAO;
  edDataNascimento.DateTime := FMOTORISTA.DATA_NASCIMENTO;
  edRegistroCnh.Text        := FMOTORISTA.CNH_NUMERO_REGISTRO;
  edCategoria.Text          := FMOTORISTA.CNH_CATEGORIA;
  edDataValidade.DateTime   := FMOTORISTA.CNH_DATA_VALIDADE;
  edCidadeNascimento.Text   := IntTOStr(FMOTORISTA.CIDADE_NASCIMENTO.ID);
  edCidade.Text             := IntTOStr(FMOTORISTA.CIDADE.ID);

  edCidadeNascimento.OnExit(Self);
  edCidade.OnExit(Self);
end;

end.
