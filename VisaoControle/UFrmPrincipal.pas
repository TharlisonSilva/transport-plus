unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus
  , StdCtrls, ComCtrls, ExtCtrls, pngimage
  , UUtilitarios
  , UFrmNotaBlu
  ;

type
  TFrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    miSair: TMenuItem;
    sbPrincipal: TStatusBar;
    miComercial: TMenuItem;
    miMotorista: TMenuItem;
    Timer1: TTimer;
    PnTopo: TPanel;
    LbNomeSistema: TLabel;
    pgcPrincipal: TPageControl;
    INICIO: TTabSheet;
    PnClientes: TPanel;
    LbClientes: TLabel;
    ImClientes: TImage;
    pnlUsuario: TPanel;
    LbLocalizar: TLabel;
    PnMotorista: TPanel;
    ImMotorista: TImage;
    LbMotorista: TLabel;
    PnNotablu: TPanel;
    LbNotablu: TLabel;
    ImNotablu: TImage;
    LbE: TLabel;
    pnlVeiculos: TPanel;
    LbVeiculos: TLabel;
    ImVeiculos: TImage;
    miVeiculo: TMenuItem;
    miCliente: TMenuItem;
    miInfo: TMenuItem;
    miUsuario: TMenuItem;
    miTransporte: TMenuItem;
    miOs: TMenuItem;
    miEmpresa: TMenuItem;
    imgUsuario: TImage;
    pnlEmpresa: TPanel;
    lbEmpresa: TLabel;
    imgEmpresa: TImage;
    pnlInformacoes: TPanel;
    Label2: TLabel;
    Image3: TImage;
    NotaBlu1: TMenuItem;
    pnlOS: TPanel;
    imgOS: TImage;
    lbOS: TLabel;
    pnlTransporte: TPanel;
    lbTransporte: TLabel;
    imgTransporte: TImage;
    procedure miSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miMotoristaClick(Sender: TObject);
    procedure LbEClick(Sender: TObject);
    procedure PnNotabluClick(Sender: TObject);
    procedure LbNotabluClick(Sender: TObject);
    procedure miVeiculoClick(Sender: TObject);
    procedure miClienteClick(Sender: TObject);
    procedure miUsuarioClick(Sender: TObject);
    procedure ImClientesClick(Sender: TObject);
    procedure ImMotoristaClick(Sender: TObject);
    procedure ImVeiculosClick(Sender: TObject);
    procedure imgUsuarioClick(Sender: TObject);
    procedure miInfoClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure imgEmpresaClick(Sender: TObject);
    procedure miEmpresaClick(Sender: TObject);
    procedure miOsClick(Sender: TObject);
    procedure NotaBlu1Click(Sender: TObject);
    procedure imgOSClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure miTransporteClick(Sender: TObject);
    procedure imgTransporteClick(Sender: TObject);
    procedure ImNotabluClick(Sender: TObject);
  private
    { Private declaration }
  public
    Procedure VerificaTabSheet(const Tag: Integer);
    procedure AtivaMenus;
    procedure AtualizaUsuarioLogado;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
    UDM
  , UFrmCadastroMotorista
  , UFrmInicio
  , UFrmCadastroVeiculo
  , UFrmCadastroCliente
  , UFrmControledeUsuario
  , UUsuarioLogado
  , UFrmInformacoes
  , UFrmEmpresa
  , UFrmCadastroOs
  , UFrmTransporte
  ;


const
  CNT_CLASSE_TIPO_FORMULARIO: Array[TTipoFormulario] of TFormClass =
    (TFrmCadastroMotorista
    ,TFrmCadastroVeiculo
    ,TFrmCadastroCliente
    ,TFrmCadastroUsuario
    ,TFrmCadastroEmpresa
    ,TFrmCadastroOs
    ,TFrmNotaBlu
    ,TFrmTransporte)
    ;

{$R *.dfm}
procedure TFrmPrincipal.AtivaMenus;
begin
  miMotorista.Visible   := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                          [tpruCadastraMotorista, tpruCadastraCliente]);

  miVeiculo.Visible  := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                          [tpruCadastraMotorista, tpruCadastraVeiculo]);

  miCliente.Visible  := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruCadastraVeiculo, tpruCadastraCliente]);

  miUsuario.Visible := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruCadastraUsuario, tpruCadastraUsuario]);
  pnlUsuario.Visible := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruCadastraUsuario, tpruCadastraUsuario]);

  pnlEmpresa.Visible := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruCadastraUsuario, tpruCadastraUsuario]);

  miTransporte.Visible := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruCadastraUsuario, tpruCadastraMotorista]);

  miEmpresa.Visible := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruEmpresa, tpruCadastraUsuario]);

  miInfo.Visible := TUsuarioLogado.PossuiAoMenosUmaDasPermissoes(
                        [tpruCadastraUsuario, tpruCadastraMotorista]);
end;

procedure TFrmPrincipal.AtualizaUsuarioLogado;
begin
  sbPrincipal.Panels[1].Text :=
    'Usuário: ' + TUsuarioLogado.USUARIO.NOME;
end;

procedure TFrmPrincipal.miMotoristaClick(Sender: TObject);
begin
    VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.miOsClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.miSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.miTransporteClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.PnNotabluClick(Sender: TObject);
begin
  Application.CreateForm(TFrmNotaBlu, FrmNotaBlu);
end;

procedure TFrmPrincipal.miUsuarioClick(Sender: TObject);
begin
   VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.miVeiculoClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.NotaBlu1Click(Sender: TObject);
begin
    Application.CreateForm(TFrmNotaBlu, FrmNotaBlu);
end;

procedure TFrmPrincipal.VerificaTabSheet(const Tag: Integer);
var
  Aba: TTabSheet;
  Indice: Integer;
  NovoForm: TForm;
begin
  for Indice := 0 to Pred(pgcPrincipal.PageCount) do
    begin
      Aba := pgcPrincipal.Pages[Indice];
      if Aba.Tag = Tag then
        begin
          pgcPrincipal.ActivePage := Aba;
          Exit;
        end;
    end;


  Aba := TTabSheet.Create(pgcPrincipal);
  Aba.PageControl := pgcPrincipal;


  NovoForm             := CNT_CLASSE_TIPO_FORMULARIO[TTipoFormulario(Tag)].Create(Aba);
  NovoForm.Parent      := Aba;
  NovoForm.Align       := alClient;
  NovoForm.BorderStyle := bsNone;
  NovoForm.Visible     := True;
  NovoForm.Tag         := Tag;

  Aba.Caption := NovoForm.Caption;
  Aba.Tag     := Tag;


  pgcPrincipal.ActivePage := Aba;
end;

procedure TFrmPrincipal.miClienteClick(Sender: TObject);
begin
   VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.miEmpresaClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.miInfoClick(Sender: TObject);
var
   informacoes : TFrmInformacoes;
begin
   informacoes := TFrmInformacoes.Create(nil);
   informacoes.ShowModal;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose := False;
If Application.MessageBox('Você deseja fechar o programa?', 'AVISO DO SISTEMA',MB_ICONWARNING+MB_YESNO)=ID_YES then
begin
  CanClose := True;
  Application.Terminate;
end
else
CanClose := False;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];
  sbPrincipal.Panels[1].Text := ' ' + FormatDateTime('hh:nn:ss',now); //para aparecer a hora
  sbPrincipal.Panels[2].Text := ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now); //para aparecer a data
  AtivaMenus;
  AtualizaUsuarioLogado;
end;

procedure TFrmPrincipal.imgUsuarioClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.Image3Click(Sender: TObject);
var
   informacoes : TFrmInformacoes;
begin
   informacoes := TFrmInformacoes.Create(nil);
   informacoes.ShowModal;
end;

procedure TFrmPrincipal.ImClientesClick(Sender: TObject);
begin
   VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.imgEmpresaClick(Sender: TObject);
begin
 VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.imgOSClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.imgTransporteClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.ImMotoristaClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.ImNotabluClick(Sender: TObject);
var
  NotaBlu :TFrmNotaBlu;
begin
  NotaBlu := TFrmNotaBlu.Create(self);
  NotaBlu.Show;
end;

procedure TFrmPrincipal.ImVeiculosClick(Sender: TObject);
begin
  VerificaTabSheet((Sender as TImage).Tag);
end;

procedure TFrmPrincipal.LbEClick(Sender: TObject);
var
  NotaBlu :TFrmNotaBlu;
begin
  NotaBlu := TFrmNotaBlu.Create(Self);
  NotaBlu.Show;
end;
procedure TFrmPrincipal.LbNotabluClick(Sender: TObject);
var
  NotaBlu :TFrmNotaBlu;
begin
  NotaBlu := TFrmNotaBlu.Create(Self);
  NotaBlu.Show;
end;

end.
