unit URepositorioUsuario;

interface

uses
    URepositorioDB
  , URepositorioNivel
  , UUsuario
  , UEntidade
  , SQLExpr
  ;

type
  TRepositorioUsuario = class(TRepositorioDB<TUSUARIO>)
  private
    FRepositorioNivel: TRepositorioNivel;

  protected
    procedure AtribuiDBParaEntidade(const coUSUARIO: TUSUARIO); override;
    procedure AtribuiEntidadeParaDB(const coUSUARIO: TUSUARIO;
                                    const coSQLQuery: TSQLQuery); override;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
    SysUtils
  , UNivel
  ;

{ TRepositorioCidade }

procedure TRepositorioUsuario.AtribuiDBParaEntidade(const coUSUARIO: TUSUARIO);
begin
  inherited;
  with FSQLSelect do
  begin
    coUSUARIO.NOME      := FieldByName(FLD_USUARIO_NOME).AsString;
    coUSUARIO.LOGIN     := FieldByName(FLD_USUARIO_LOGIN).AsString;
    coUSUARIO.SENHA     := FieldByName(FLD_USUARIO_SENHA).AsString;
    coUSUARIO.ID_NIVEL  := TNIVEL(FRepositorioNivel.Retorna(FieldByName(FLD_USUARIO_ID_NIVEL).AsInteger));
  end;
end;

procedure TRepositorioUsuario.AtribuiEntidadeParaDB(const coUSUARIO: TUSUARIO;
  const coSQLQuery: TSQLQuery);
begin
  inherited;
  with coSQLQuery do
  begin
    ParamByName(FLD_USUARIO_NOME).AsString      := coUSUARIO.NOME;
    ParamByName(FLD_USUARIO_LOGIN).AsString     := coUSUARIO.LOGIN;
    ParamByName(FLD_USUARIO_SENHA).AsString     := coUSUARIO.SENHA;
    ParamByName(FLD_USUARIO_ID_NIVEL).AsInteger := coUSUARIO.ID_NIVEL.ID;
  end;
end;

constructor TRepositorioUsuario.Create;
begin
  inherited Create(TUSUARIO, TBL_USUARIO, FLD_ENTIDADE_ID, STR_USUARIO);
  FRepositorioNivel := TRepositorioNivel.Create;
end;

destructor TRepositorioUsuario.Destroy;
begin
  FreeAndNil(FRepositorioNivel);
  inherited;
end;

end.
