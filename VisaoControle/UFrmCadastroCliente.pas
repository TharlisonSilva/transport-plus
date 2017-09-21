unit UFrmCadastroCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, StdCtrls, Menus, Buttons, ExtCtrls, Mask
  , UCliente
  , URegraCrudCliente
  , UUtilitarios
  ;

type
  TFrmCadastroCliente = class(TFrmCRUD)
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Edit6: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    edCidadeNascimento: TEdit;
    stNomeCidadeNascimento: TStaticText;
    btnLocalizarCidadeNascimento: TButton;
    rbCPF: TRadioButton;
    rbCNPJ: TRadioButton;
    mskedCPFCNPJ: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure rbCPFClick(Sender: TObject);
    procedure rbCNPJClick(Sender: TObject);
  private
    FRegraCRUDCliente: TRegraCRUDCliente;

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
  , UDialogo
  , UFrmPesquisa
  ;
{$R *.dfm}

procedure TFrmCadastroCliente.Finaliza;
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

end;

procedure TFrmCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  rbCPF.Checked := True;
  rbCNPJ.checked := False;
  if(rbCPF.checked = True)then
    begin
      mskedCPFCNPJ.EditMask := '000\.000\.000\-00;1;';
    end;
end;

procedure TFrmCadastroCliente.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;

end;

procedure TFrmCadastroCliente.Inicializa;
begin
  inherited;

end;

procedure TFrmCadastroCliente.PosicionaCursorPrimeiroCampo;
begin
  inherited;

end;

procedure TFrmCadastroCliente.PreencheEntidade;
begin
  inherited;

end;

procedure TFrmCadastroCliente.PreencheFormulario;
begin
  inherited;

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
