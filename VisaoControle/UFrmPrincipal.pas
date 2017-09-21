unit UFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus
  , StdCtrls, ComCtrls, ExtCtrls, pngimage
  , UUtilitarios, UFrmNotaBlu
  ;

type
  TFrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    miSair: TMenuItem;
    sbPrincipal: TStatusBar;
    miCadastro: TMenuItem;
    miMotorista: TMenuItem;
    Timer1: TTimer;
    PnTopo: TPanel;
    LbNomeSistema: TLabel;
    pgcPrincipal: TPageControl;
    INICIO: TTabSheet;
    PnClientes: TPanel;
    LbClientes: TLabel;
    ImClientes: TImage;
    PnEnviar: TPanel;
    LbEnviar: TLabel;
    ImEnviar: TImage;
    PnLocalizar: TPanel;
    LbLocalizar: TLabel;
    ImLocalizar: TImage;
    PnMotorista: TPanel;
    ImMotorista: TImage;
    LbMotorista: TLabel;
    PnNotablu: TPanel;
    LbNotablu: TLabel;
    ImNotablu: TImage;
    LbE: TLabel;
    PnRelatorios: TPanel;
    LbRelatorios: TLabel;
    ImRelatorios: TImage;
    Veiculo1: TMenuItem;
    procedure miSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure miMotoristaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure LbEClick(Sender: TObject);
    procedure ImNotabluClick(Sender: TObject);
    procedure PnNotabluClick(Sender: TObject);
    procedure LbNotabluClick(Sender: TObject);
    procedure Veiculo1Click(Sender: TObject);
  private
    { Private declaration }
  public
    Procedure VerificaTabSheet(const Tag: Integer);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
    UDM
  , UFrmCadastroMotorista
  , UFrmInicio
  , UFrmCadastroVeiculo
  ;


const
  CNT_CLASSE_TIPO_FORMULARIO: Array[TTipoFormulario] of TFormClass =
    (TFrmCadastroMotorista
    ,TFrmCadastroVeiculo);

{$R *.dfm}

procedure TFrmPrincipal.miMotoristaClick(Sender: TObject);
begin
    VerificaTabSheet((Sender as TMenuItem).Tag);
end;

procedure TFrmPrincipal.miSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.PnNotabluClick(Sender: TObject);
begin
  Application.CreateForm(TFrmNotaBlu, FrmNotaBlu);
end;

procedure TFrmPrincipal.Veiculo1Click(Sender: TObject);
begin
  VerificaTabSheet((Sender as TMenuItem).Tag);
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

  //CRIA UMA NOVA ABA
  Aba := TTabSheet.Create(pgcPrincipal);
  Aba.PageControl := pgcPrincipal;

  //CRIA UM NOVO FORMULARIO
  NovoForm             := CNT_CLASSE_TIPO_FORMULARIO[TTipoFormulario(Tag)].Create(Aba);
  NovoForm.Parent      := Aba;
  NovoForm.Align       := alClient;
  NovoForm.BorderStyle := bsNone;
  NovoForm.Visible     := True;
  NovoForm.Tag         := Tag;

  Aba.Caption := NovoForm.Caption;
  Aba.Tag     := Tag;

  //ATIVA A ABA
  pgcPrincipal.ActivePage := Aba;
end;



procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
CanClose := False;
If Application.MessageBox('Você deseja fechar o programa?', 'AVISO DO SISTEMA',MB_ICONWARNING+MB_YESNO)=ID_YES then
CanClose := True
else
CanClose := False;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  sbPrincipal.Panels[0].Text :=
    'Banco de Dados: ' + dmEntra21.SQLConnection.Params.Values[CNT_DATA_BASE];
  sbPrincipal.Panels[1].Text := ' ' + FormatDateTime('hh:nn:ss',now); //para aparecer a hora
  sbPrincipal.Panels[2].Text := ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now); //para aparecer a data
end;

procedure TFrmPrincipal.ImNotabluClick(Sender: TObject);
begin
  Application.CreateForm(TFrmNotaBlu, FrmNotaBlu);
end;

procedure TFrmPrincipal.LbEClick(Sender: TObject);
begin
  Application.CreateForm(TFrmNotaBlu, FrmNotaBlu);
end;

procedure TFrmPrincipal.LbNotabluClick(Sender: TObject);
begin
  Application.CreateForm(TFrmNotaBlu, FrmNotaBlu);
end;

end.
