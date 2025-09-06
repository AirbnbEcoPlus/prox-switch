program proxswitch;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  InfoView in 'Views\InfoView.pas' {Form2},
  udmApiCommunicator in 'udmApiCommunicator.pas' {dmApiCommunicator: TDataModule},
  udmStorageApi in 'udmStorageApi.pas' {dmStorageApi: TDataModule},
  LoginView in 'Views\LoginView.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TdmApiCommunicator, dmApiCommunicator);
  Application.CreateForm(TdmStorageApi, dmStorageApi);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
