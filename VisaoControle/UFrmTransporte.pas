unit UFrmTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids
  , UDM, pngimage
  ;

type
  TFrmTransporte = class(TForm)
    pnlCabecalho: TPanel;
    edMotorista: TEdit;
    Button1: TButton;
    pnlMotorista: TPanel;
    Label10: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Panel2: TPanel;
    Edit2: TEdit;
    Button3: TButton;
    Label3: TLabel;
    dbOS: TDBGrid;
    pnlBotoes: TPanel;
    btnSair: TImage;
    pnlImprimir: TPanel;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure inicializa;
  end;

var
  FrmTransporte: TFrmTransporte;

implementation

{$R *.dfm}


{ TFrmTransporte }

procedure TFrmTransporte.btnSairClick(Sender: TObject);
begin
  Self.Owner.Free;
end;

procedure TFrmTransporte.inicializa;
begin

end;

end.
