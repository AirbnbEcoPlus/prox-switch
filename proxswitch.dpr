program proxswitch;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {FMain},
  InfoView in 'Views\InfoView.pas' {Form2},
  udmApiCommunicator in 'udmApiCommunicator.pas' {dmApiCommunicator: TDataModule},
  udmStorageApi in 'udmStorageApi.pas' {dmStorageApi: TDataModule},
  LoginView in 'Views\LoginView.pas' {FLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TdmApiCommunicator, dmApiCommunicator);
  Application.CreateForm(TdmStorageApi, dmStorageApi);
  Application.CreateForm(TFLogin, FLogin);
  Application.Run;
end.
