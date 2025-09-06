unit udmApiCommunicator;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TdmApiCommunicator = class(TDataModule)
    RESTClient: TRESTClient;
    RESTRequestListVm: TRESTRequest;
    RESTResponseListVm: TRESTResponse;
    RESTRequestStopVm: TRESTRequest;
    RESTResponseStopVm: TRESTResponse;
    RESTRequestStartVm: TRESTRequest;
    RESTResponseStartVm: TRESTResponse;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure InitApp;
    function isTokenValid: boolean;
  end;

var
  dmApiCommunicator: TdmApiCommunicator;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TdmApiCommunicator.InitApp;
begin

end;


function TdmApiCommunicator.isTokenValid: boolean;
begin
  Result := false;
end;

end.
