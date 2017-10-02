unit UFrmInformacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TfrmInformacoes = class(TForm)
    Button1: TButton;
    logo: TImage;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformacoes: TfrmInformacoes;

implementation

{$R *.dfm}

procedure TfrmInformacoes.Button1Click(Sender: TObject);
begin
  Close;
end;

end.
