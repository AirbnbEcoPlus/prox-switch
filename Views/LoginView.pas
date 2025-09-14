unit LoginView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TFLogin = class(TForm)
    BLogin: TButton;
    EServer: TEdit;
    EUsername: TEdit;
    LServer: TLabel;
    EPassword: TEdit;
    LPassword: TLabel;
    LUsername: TLabel;
    procedure BLoginClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.fmx}

uses udmApiCommunicator, udmStorageApi;

procedure TFLogin.BLoginClick(Sender: TObject);
begin
  dmStorageApi.saveValue('server_url', EServer.Text);
  dmStorageApi.saveValue('username', LServer.Text);
  dmStorageApi.saveValue('password', LPassword.Text);
  Close;
end;

end.
