unit UFrmInicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, pngimage, StdCtrls, Menus;

type
  TfrmInicio = class(TForm)
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
    PnTopo: TPanel;
    LbNomeSistema: TLabel;
    sbPrincipal: TStatusBar;
    Timer1: TTimer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInicio: TfrmInicio;

implementation

{$R *.dfm}

end.
