unit udmApiCommunicator;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmApiCommunicator = class(TDataModule)
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
    procedure InitApp;
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

end.
