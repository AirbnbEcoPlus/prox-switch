unit udmApiCommunicator;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, JSON;

type
  TdmApiCommunicator = class(TDataModule)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
  private
    FToken: string;
    FCSRF: string;
  public
    { Déclarations publiques }
    procedure InitApp;
    function isTokenValid: boolean;
  end;

var
  dmApiCommunicator: TdmApiCommunicator;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses udmStorageApi;

{$R *.dfm}

{ TDataModule1 }

procedure TdmApiCommunicator.InitApp;
var
  Server, Username, Password: string;
begin
  Server := dmStorageApi.getValue('server_url');
  Username := dmStorageApi.getValue('username');
  Password := dmStorageApi.getValue('password');

  if (Server = '') or (Username = '') or (Password = '') then
    Exit;

  RESTClient.BaseURL := Server + '/api2/json';

  RESTRequest.Method := rmPOST;
  RESTRequest.Resource := 'access/ticket';
  RESTRequest.Params.Clear;
  RESTRequest.AddParameter('username', Username, pkGETorPOST);
  RESTRequest.AddParameter('password', Password, pkGETorPOST);

  RESTRequest.Execute;

  if RESTResponse.StatusCode = 200 then
  begin
    var json := TJSONObject.ParseJSONValue(RESTResponse.Content) as TJSONObject;
    try
      var data := json.GetValue<TJSONObject>('data');
      FToken := data.GetValue<string>('ticket');
      FCSRF := data.GetValue<string>('CSRFPreventionToken');
    finally
      json.Free;
    end;
  end
  else
    raise Exception.Create('Erreur login Proxmox: ' + RESTResponse.StatusText);
end;


function TdmApiCommunicator.isTokenValid: boolean;
begin
  Result := FToken <> '';
end;

end.
