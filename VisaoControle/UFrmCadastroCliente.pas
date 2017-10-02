unit UFrmCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, StdCtrls, Menus, Buttons, ExtCtrls, Mask
  , URegraCRUDCliente
  , UCliente
  , ComCtrls
  , UUtilitarios
  , URepositorioCidade
  , URepositorioCliente, pngimage
  ;

type
  TFrmCadastroCliente = class(TFrmCRUD)
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    edDescricao: TMemo;
    edCep: TEdit;
    edBairro: TEdit;
    edEndereco: TEdit;
    edNome: TEdit;
    edCidade: TEdit;
    btnLocalizarCidade: TButton;
    rbCPF: TRadioButton;
    rbCNPJ: TRadioButton;
    mskedCPFCNPJ: TMaskEdit;
    pnlConteudo: TPanel;
    pnlRadioButons: TPanel;
    pnlCidade: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure rbCPFClick(Sender: TObject);
    procedure rbCNPJClick(Sender: TObject);
    procedure btnLocalizarCidadeClick(Sender: TObject);
    procedure edCidadeExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    FRegraCRUDCliente: TRegraCRUDCliente;
    FRepositorioCidade: TRepositorioCidade;

    FCLIENTE: TCLIENTE;
  protected

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;

  end;

var
  FrmCadastroCliente: TFrmCadastroCliente;

implementation

uses
    UOpcaoPesquisa
  , UEntidade
  , UCidade
  , UDialogo
  , UFrmPesquisa
  ;
{$R *.dfm}

procedure TFrmCadastroCliente.btnLimparClick(Sender: TObject);
begin
  inherited;
  mskedCPFCNPJ.EditMask := '';
end;

procedure TFrmCadastroCliente.btnLocalizarCidadeClick(
  Sender: TObject);
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

procedure TFrmCadastroCliente.btnSairClick(Sender: TObject);
begin
  Self.Owner.Free;
end;

procedure TFrmCadastroCliente.edCidadeExit(Sender: TObject);
var
  loCIDADE: TCIDADE;
  numero: String;
begin
  FCLIENTE.CIDADE.ID := 0;
  numero             := edCidade.Text;
  edCidade.Text      := EmptyStr;

  if StrToIntDef(numero, 0) <> 0 then
    try
      loCIDADE := TCIDADE(FRepositorioCidade.Retorna(StrToIntDef(numero, 0)));
      if loCIDADE = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FCLIENTE.CIDADE   := loCIDADE;
          edCidade.Text     := FCLIENTE.CIDADE.NOME;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCidade.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroCliente.Finaliza;
begin
  inherited;
    FreeAndNil(FRepositorioCidade);
end;

procedure TFrmCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  rbCPF.Checked := False;
  rbCNPJ.checked := False;
  mskedCPFCNPJ.EditMask := '';
  if(rbCPF.checked = True)then
    begin
      mskedCPFCNPJ.EditMask := '000\.000\.000\-00;1;';
    end;
end;

procedure TFrmCadastroCliente.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  pnlConteudo.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroCliente.Inicializa;
begin
  inherited;

  DefineRegraCRUD(@FRegraCRUDCliente, TRegraCRUDCliente);
  DefineEntidade(@FCLIENTE, TCLIENTE);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_CLIENTE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por Nome')
    .AdicionaFiltro(FLD_CLIENTE_NOME));

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_CLIENTE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por CPF')
    .AdicionaFiltro(FLD_CLIENTE_CPF_CNPJ));

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_CLIENTE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por CPNJ')
    .AdicionaFiltro(FLD_CLIENTE_CPF_CNPJ));

  FRepositorioCidade := TRepositorioCidade.Create;

end;

procedure TFrmCadastroCliente.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  mskedCPFCNPJ.SetFocus;

end;

procedure TFrmCadastroCliente.PreencheEntidade;
var
  CpfCnpj: String;
begin
  inherited;
  FCLIENTE.NOME      := edNome.Text;
  CpfCnpj            := mskedCPFCNPJ.Text;
  CpfCnpj            := StringReplace(CpfCnpj, '.', '', [rfReplaceAll, rfIgnoreCase]);
  CpfCnpj            := StringReplace(CpfCnpj, '-', '', [rfReplaceAll, rfIgnoreCase]);
  CpfCnpj            := StringReplace(CpfCnpj, '/', '', [rfReplaceAll, rfIgnoreCase]);
  FCLIENTE.CPF_CNPJ  := CpfCnpj;
  FCLIENTE.ENDERECO  := edEndereco.Text;
  FCLIENTE.BAIRRO    := edBairro.Text;
  FCLIENTE.CEP       := edCep.Text;
  FCLIENTE.DESCRICAO := edDescricao.text;
end;

procedure TFrmCadastroCliente.PreencheFormulario;
begin
  inherited;
  edNome.Text       := FCLIENTE.NOME;
  mskedCPFCNPJ.Text := FCLIENTE.CPF_CNPJ;
  edEndereco.Text   := FCLIENTE.ENDERECO;
  edBairro.Text     := FCLIENTE.BAIRRO;
  edCep.Text        := FCLIENTE.CEP;
  edDescricao.text  := FCLIENTE.DESCRICAO;
  edCidade.Text     := IntToStr(FCLIENTE.CIDADE.ID);

  edCidade.OnExit(Self);
end;

procedure TFrmCadastroCliente.rbCNPJClick(Sender: TObject);
begin
  rbCNPJ.checked := True;
  rbCPF.checked := False;
  if(rbCNPJ.checked = True)then
    begin
      mskedCPFCNPJ.EditMask := '99.999.999/9999-99;1;';
    end;

end;

procedure TFrmCadastroCliente.rbCPFClick(Sender: TObject);
begin
  if(rbCPF.checked = True)then
    begin
      mskedCPFCNPJ.EditMask := '000\.000\.000\-00;1';
    end;


end;

end.
