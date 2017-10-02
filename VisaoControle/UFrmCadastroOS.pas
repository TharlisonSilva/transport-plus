unit UFrmCadastroOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, ComCtrls, Menus, Buttons, ExtCtrls, StdCtrls
  , UUtilitarios
  , UEntidade
  , URegraCRUDOS
  , UOS
  , UOpcaoPesquisa
  , URepositorioCidade
  , URepositorioMotorista
  , URepositorioEmpresa
  , URepositorioCliente
  , UFrmPesquisa
  , UCliente
  , UDialogo
  , UMotorista
  , UCidade
  , UEmpresa, pngimage
  ;

type
  TFrmCadastroOs = class(TFrmCRUD)
    pgOS: TPageControl;
    tabDados: TTabSheet;
    tabProduto: TTabSheet;
    pnlConteudo1: TPanel;
    pnlConteudo2: TPanel;
    gbDestino: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    edCepDestino: TEdit;
    edEnderecoDestino: TEdit;
    edComplementoDados: TEdit;
    gbMotorista: TGroupBox;
    Label4: TLabel;
    gbCliente: TGroupBox;
    Label3: TLabel;
    gbVolumes: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    edPeso: TEdit;
    edVolumes: TEdit;
    memoDescricao: TMemo;
    gbValores: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edValor: TEdit;
    edRecebedor: TEdit;
    edComplementoValores: TEdit;
    edFormaPagamento: TEdit;
    edBairroDestino: TEdit;
    Label5: TLabel;
    edNumeroDestino: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    gbEmpresa: TGroupBox;
    Label11: TLabel;
    edData: TEdit;
    pnlEmpresa: TPanel;
    edEmpresa: TEdit;
    btnLocalizarEmpresa: TButton;
    pnlCliente: TPanel;
    edCliente: TEdit;
    btnLocalizarCliente: TButton;
    pnlMotorista: TPanel;
    edMotorista: TEdit;
    btnLocalizarMotorista: TButton;
    pnlCidade: TPanel;
    edCidade: TEdit;
    btnLocalizarCidade: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnLocalizarClienteClick(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure btnLocalizarMotoristaClick(Sender: TObject);
    procedure edMotoristaExit(Sender: TObject);
    procedure btnLocalizarCidadeClick(Sender: TObject);
    procedure edCidadeExit(Sender: TObject);
    procedure btnLocalizarEmpresaClick(Sender: TObject);
    procedure edEmpresaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FRegraCRUDOs          : TRegraCRUDOs;
    FRepositorioCidade    : TRepositorioCidade;
    FRepositorioCliente   : TRepositorioCliente;
    FRepositorioMotorista : TRepositorioMotorista;
    FRepositorioEmpresa   : TRepositorioEmpresa;

    FOS: TOS;

  protected
    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;
  end;

var
  FrmCadastroOs: TFrmCadastroOs;

implementation

{$R *.dfm}

{ TFrmCadastroOs }

procedure TFrmCadastroOs.btnLocalizarCidadeClick(Sender: TObject);
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

procedure TFrmCadastroOs.btnLocalizarClienteClick(Sender: TObject);
begin
  edCliente.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_CLIENTE)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_CLIENTE)
    .AdicionaFiltro(FLD_CLIENTE_NOME));

  if Trim(edCliente.Text) <> EmptyStr then
    edCliente.OnExit(btnLocalizarCliente);

end;

procedure TFrmCadastroOs.btnLocalizarEmpresaClick(Sender: TObject);
begin
  edEmpresa.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_EMPRESA)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_EMPRESA)
    .AdicionaFiltro(FLD_EMPRESA_NOME_FANTASIA));

  if Trim(edEmpresa.Text) <> EmptyStr then
    edEmpresa.OnExit(btnLocalizarEmpresa);
end;

procedure TFrmCadastroOs.btnLocalizarMotoristaClick(Sender: TObject);
begin
  edMotorista.Text := TfrmPesquisa.MostrarPesquisa(TOpcaoPesquisa
    .Create
    .DefineVisao(TBL_MOTORISTA)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa(STR_MOTORISTA)
    .AdicionaFiltro(FLD_MOTORISTA_NOME));

  if Trim(edCliente.Text) <> EmptyStr then
    edMotorista.OnExit(btnLocalizarMotorista);

end;

procedure TFrmCadastroOs.btnSairClick(Sender: TObject);
begin
  Self.Owner.Free;
end;

procedure TFrmCadastroOs.edCidadeExit(Sender: TObject);
var
  loCIDADE: TCIDADE;
  numero: String;
begin
  FOS.CIDADE_DESTINO.ID := 0;
  numero             := edCidade.Text;
  edCidade.Text      := EmptyStr;

  if StrToIntDef(numero, 0) <> 0 then
    try
      loCIDADE := TCIDADE(FRepositorioCidade.Retorna(StrToIntDef(numero, 0)));
      if loCIDADE = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FOS.CIDADE_DESTINO   := loCIDADE;
          edCidade.Text        := FOS.CIDADE_DESTINO.NOME;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCidade.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOs.edClienteExit(Sender: TObject);
var
  loCLIENTE: TCLIENTE;
  numero: String;
begin
  FOS.CLIENTE.ID := 0;
  numero             := edCliente.Text;
  edCliente.Text     := EmptyStr;

  if StrToIntDef(numero, 0) <> 0 then
    try
      loCLIENTE := TCLIENTE(FRepositorioCliente.Retorna(StrToIntDef(numero, 0)));
      if loCLIENTE = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FOS.CLIENTE           := loCLIENTE;
          edCliente.Text        := FOS.CLIENTE.NOME;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edCliente.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOs.edEmpresaExit(Sender: TObject);
var
  loEMPRESA: TEMPRESA;
  numero: String;
begin
  FOS.EMPRESA.ID := 0;
  numero             := edEmpresa.Text;
  edEmpresa.Text      := EmptyStr;

  if StrToIntDef(numero, 0) <> 0 then
    try
      loEMPRESA := TEMPRESA(FRepositorioEmpresa.Retorna(StrToIntDef(numero, 0)));
      if loEMPRESA = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FOS.EMPRESA           := loEMPRESA;
          edEmpresa.Text        := FOS.EMPRESA.NOME_FANTASIA;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edEmpresa.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOs.edMotoristaExit(Sender: TObject);
var
  loMOTORISTA: TMOTORISTA;
  numero: String;
begin
  FOS.MOTORISTA.ID := 0;
  numero             := edMotorista.Text;
  edMotorista.Text   := EmptyStr;

  if StrToIntDef(numero, 0) <> 0 then
    try
      loMOTORISTA := TMOTORISTA(FRepositorioMotorista.Retorna(StrToIntDef(numero, 0)));
      if loMOTORISTA = nil then
        raise EValidacaoNegocio.Create('Cidade informada não foi encontrada')
      else
        begin
          FOS.MOTORISTA           := loMOTORISTA;
          edMotorista.Text        := FOS.MOTORISTA.NOME;
        end;
    except
      on E: Exception do
        begin
          TDialogo.Excecao(E);
          edMotorista.SetFocus;
        end;
    end;
end;

procedure TFrmCadastroOs.Finaliza;
begin
  inherited;

end;

procedure TFrmCadastroOs.FormCreate(Sender: TObject);
begin
  inherited;
   edData.Text := '';
end;

procedure TFrmCadastroOs.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  pgOS.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroOs.Inicializa;
begin
  inherited;

  DefineRegraCRUD(@FRegraCRUDOs, TRegraCRUDOs);
  DefineEntidade(@FOS, TOS);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_OS)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por NUMERO')
    .AdicionaFiltro(FLD_OS_CLIENTE));

  FRepositorioCidade    := TRepositorioCidade.Create;
  FRepositorioCliente   := TRepositorioCliente.Create;
  FRepositorioMotorista := TRepositorioMotorista.Create;
  FRepositorioEmpresa   := TRepositorioEmpresa.Create;
end;

procedure TFrmCadastroOs.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edEmpresa.setFocus;

end;

procedure TFrmCadastroOs.PreencheEntidade;
begin
  inherited;
  FOS.NUMERO_DE_VOLUMES       := StrToIntDef(edVolumes.text,0);
  FOS.CEP_DESTINO             := edCepDestino.text;
  FOS.ENDERECO_DESTINO        := edEnderecoDestino.text;
  FOS.BAIRRO_DESTINO          := edBairroDestino.text;
  FOS.NUMERO_DESTINO          := edNumeroDestino.text;

  FOS.COMPLEMENTO_ENCOMENDAS  := edComplementoDados.text;
  FOS.DESCRICAO_ENCOMENDAS    := memoDescricao.Text;
  FOS.COMPLEMENTO_VALORES     := edComplementoValores.text;

  FOS.VALOR                   := StrToFloatDef(edValor.Text, 0);
  FOS.FORMA_PAGAMENTO         := edFormaPagamento.Text;
  FOS.RECEBEDOR               := edRecebedor.Text;
  FOS.PESO                    := StrToFloatDef(edPeso.text, 0);
  if edData.Text <> '' then
    FOS.DATA                  := StrToDate(edData.Text)
  else
    FOS.DATA                    := NOW;


end;

procedure TFrmCadastroOs.PreencheFormulario;
var
  peso, valor: Double;
  volumes: integer;
begin
  inherited;

  edCepDestino.text         := FOS.CEP_DESTINO;
  edEnderecoDestino.text    := FOS.ENDERECO_DESTINO;
  edBairroDestino.text      := FOS.BAIRRO_DESTINO;
  edNumeroDestino.text      := FOS.NUMERO_DESTINO;

  edComplementoDados.text   := FOS.COMPLEMENTO_ENCOMENDAS;
  memoDescricao.Text        := FOS.DESCRICAO_ENCOMENDAS;
  edComplementoValores.text := FOS.COMPLEMENTO_VALORES;

  valor := FOS.VALOR;
  peso  := FOS.PESO;
  volumes                   := FOS.NUMERO_DE_VOLUMES;

  edVolumes.text            := IntToStr(volumes);
  edValor.Text              := FloatToStr(valor);
  edFormaPagamento.Text     := FOS.FORMA_PAGAMENTO;
  edRecebedor.Text          := FOS.RECEBEDOR;
  edPeso.text               := FloatToStr(peso);

  edCidade.Text             := IntToStr(FOS.CIDADE_DESTINO.ID);
  edCliente.Text            := IntToStr(FOS.CLIENTE.ID);
  edMotorista.Text          := IntToStr(FOS.MOTORISTA.ID);
  edEmpresa.text            := IntToStr(FOS.EMPRESA.ID);
  edData.Text               := DateToStr(FOS.DATA);

end;

end.
