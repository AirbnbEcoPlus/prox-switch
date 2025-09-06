program proxswitch;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  InfoView in 'Views\InfoView.pas' {Form2},
  ApiCommunicator in 'ApiCommunicator.pas' {DataModule1: TDataModule},
  udmStorageApi in 'udmStorageApi.pas' {dmStorageApi: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmStorageApi, dmStorageApi);
  Application.Run;
end.
