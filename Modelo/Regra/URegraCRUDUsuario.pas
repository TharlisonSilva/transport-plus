unit URegraCRUDUsuario;

interface

uses
    URegraCRUD
  , URepositorioDB
  , URepositorioUsuario
  , UEntidade
  ;

type
  TRegraCRUDUsuario = class(TRegraCRUD)
  public
    CONFIRMACAO_SENHA: String;
    SENHA_ATUAL: String;
    constructor Create; override;
    procedure ValidaSenha(const csSenha, csConfimacaoSenha: String);
  end;

implementation

{ TRegraCRUDMotorista }

uses
    SysUtils
  , UUtilitarios
  , UMensagens
  , UConstantes
  , UUsuarioLogado
  ;
constructor TRegraCRUDUsuario.Create;
begin
  inherited;
  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioUsuario.Create);
end;

procedure TRegraCRUDUsuario.ValidaSenha(const csSenha, csConfimacaoSenha: String);
begin
  if Length(Trim(csSenha)) < CNT_MINIMO_CARACTERES_SENHA then
    raise EValidacaoNegocio.CreateFmt(STR_SENHA_NAO_SEGURA,
                                     [CNT_MINIMO_CARACTERES_SENHA]);

  if csSenha <> csConfimacaoSenha then
    raise EValidacaoNegocio.Create(STR_SENHAS_NAO_CONFEREM);
end;

end.
