unit UFrmCadastroVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCRUD, StdCtrls, Mask, ComCtrls, Menus, Buttons, ExtCtrls
  , UVeiculo
  , URegraCrudVeiculo
  , UUtilitarios, pngimage
  ;

type
  TFrmCadastroVeiculo = class(TFrmCRUD)
    edMarca: TEdit;
    Label2: TLabel;
    edModelo: TEdit;
    Label3: TLabel;
    tpikerAno: TDateTimePicker;
    Label4: TLabel;
    edCor: TEdit;
    Label5: TLabel;
    edmPlaca: TMaskEdit;
    Label6: TLabel;
    Label7: TLabel;
    edRntrc: TEdit;
    edRenavan: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edCapacidade: TEdit;
    Label10: TLabel;
    edKmAtual: TEdit;
    GroupBox1: TGroupBox;
    edDescricao: TMemo;
    pnlConteudo: TPanel;
    Image1: TImage;
    procedure btnSairClick(Sender: TObject);
  private
    FRegraCRUDVeiculo: TRegraCRUDVeiculo;

    FVEICULO: TVEICULO;
  protected

    procedure Inicializa; override;
    procedure Finaliza; override;
    procedure PreencheEntidade; override;
    procedure PreencheFormulario; override;
    procedure PosicionaCursorPrimeiroCampo; override;
    procedure HabilitaCampos(const ceTipoOperacaoUsuario: TTipoOperacaoUsuario); override;

  end;

var
  FrmCadastroVeiculo: TFrmCadastroVeiculo;

implementation

uses
    UOpcaoPesquisa
  , UEntidade
  , UDialogo
  , UFrmPesquisa
  ;

{$R *.dfm}

{ TFrmCadastroVeiculo }

procedure TFrmCadastroVeiculo.btnSairClick(Sender: TObject);
begin
  Self.Owner.Free;
end;

procedure TFrmCadastroVeiculo.Finaliza;
begin
end;

procedure TFrmCadastroVeiculo.HabilitaCampos(
  const ceTipoOperacaoUsuario: TTipoOperacaoUsuario);
begin
  inherited;
  pnlConteudo.Enabled := FTipoOperacaoUsuario In [touInsercao, touAtualizacao];
end;

procedure TFrmCadastroVeiculo.Inicializa;
begin
  inherited;

  DefineRegraCRUD(@FRegraCRUDVeiculo, TRegraCRUDVeiculo);
  DefineEntidade(@FVEICULO, TVEICULO);

  AdicionaOpcaoPesquisa(TOpcaoPesquisa.Create
    .DefineVisao(TBL_VEICULO)
    .DefineNomeCampoRetorno(FLD_ENTIDADE_ID)
    .DefineNomePesquisa('Por Placa')
    .AdicionaFiltro(FLD_VEICULO_PLACA));
end;

procedure TFrmCadastroVeiculo.PosicionaCursorPrimeiroCampo;
begin
  inherited;
  edMarca.SetFocus;
end;

procedure TFrmCadastroVeiculo.PreencheEntidade;
begin
  inherited;
  FVEICULO.MARCA         := edMarca.Text;
  FVEICULO.MODELO        := edModelo.Text;
  FVEICULO.ANO           := tpikerAno.Date;
  FVEICULO.COR           := edCor.Text;
  FVEICULO.PLACA         := edmPlaca.Text;
  FVEICULO.RNTRC         := edRntrc.Text;
  FVEICULO.RENAVAN       := StrToIntDef(edRenavan.Text, 0);
  FVEICULO.CAPACIDADE_KG := StrToFloatDef(edCapacidade.Text,0);
  FVEICULO.KM_ATUAL      := StrToFloatDef(edKmAtual.text, 0);
  FVEICULO.DESCRICAO     := edDescricao.Text;
end;

procedure TFrmCadastroVeiculo.PreencheFormulario;
var
  renavan: Integer;
  kmAtual, capacidade : Double;
begin
  inherited;
 edMarca.Text      :=      FVEICULO.MARCA;
 edModelo.Text     :=      FVEICULO.MODELO;
 tpikerAno.Date    :=      FVEICULO.ANO;
 edCor.Text        :=      FVEICULO.COR;
 edmPlaca.Text     :=      FVEICULO.PLACA;
 edRntrc.Text      :=      FVEICULO.RNTRC;
 renavan           :=      FVEICULO.RENAVAN;
 edRenavan.Text    :=      IntToStr(renavan);
 capacidade        :=      FVEICULO.CAPACIDADE_KG;
 edCapacidade.Text :=      FloatToStr(capacidade);
 kmAtual           :=      FVEICULO.KM_ATUAL;
 edKmAtual.text    :=      FloatToStr(kmAtual);
 edDescricao.Text  :=      FVEICULO.DESCRICAO;
end;

end.
