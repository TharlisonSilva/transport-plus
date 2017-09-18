unit UFrmNotaBlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, ExtCtrls, Wininet, ActiveX;

type
  TFrmNotaBlu = class(TForm)
    PnTopo: TPanel;
    LbNometela: TLabel;
    WebBrowser1: TWebBrowser;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  procedure PagesemInternet (WebBrowser: TWebBrowser; HTMLCode: string) ;
//  procedure AtualizaWebbrowser (WebBrowser: TWebBrowser; HTMLCode: string) ;

  public
    { Public declarations }
  end;

var
  FrmNotaBlu: TFrmNotaBlu;

implementation

{$R *.dfm}

procedure TFrmNotaBlu.FormActivate(Sender: TObject);
var
  Flags : Cardinal;
  sHTML : string;
begin
  //mostras mensagem caso não haja conexao com internet
  if not InternetGetConnectedState(@Flags, 0) then
      begin
        sHTML := '<center>'           +
                 '<img src="D:\curso\T-plus\img\semconexao.jpg" width="auto" height="auto" />'+
                 '</center>';
        PagesemInternet(WebBrowser1,sHTML) ;
        end
      //caso haja conexao lan abre o link
      else if Flags and INTERNET_CONNECTION_LAN <> 0 then
        WebBrowser1.Navigate('https://nfse.blumenau.sc.gov.br/login.aspx?tipo=nota')
      //caso haja conexao proxy abre o link
      else if Flags and INTERNET_CONNECTION_PROXY <> 0 then
        WebBrowser1.Navigate('https://nfse.blumenau.sc.gov.br/login.aspx?tipo=nota')
      //caso haja conexao com algum outro tipo de internet
      else
        WebBrowser1.Navigate('https://nfse.blumenau.sc.gov.br/login.aspx?tipo=nota');
end;
//procedimento para carregar html no webbrowser

procedure TFrmNotaBlu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Application.MessageBox('Deseja gravar as alterações?', 'Confirmação', MB_ICONQUESTION + MB_YESNO) = IDYES;

  if CanClose then
  begin
    // execute a sua rotina de gravação
  end;
end;

procedure TFrmNotaBlu.PagesemInternet(WebBrowser: TWebBrowser;
  HTMLCode: string);
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;

end.
