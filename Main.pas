unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, udmStorageApi, udmApiCommunicator, LoginView;

type
  TFMain = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FMain: TFMain;

implementation

{$R *.fmx}

procedure TFMain.FormShow(Sender: TObject);
begin
  dmStorageApi.initStorage;
  dmApiCommunicator.InitApp;
  if not dmApiCommunicator.isTokenValid then
  begin
    FLogin := TFLogin.Create(Self);
     try
      if FLogin.ShowModal <> mrOk then
        Application.Terminate;
    finally
      FLogin.Free;
    end;
  end;

end;

end.
