unit udmStorageApi;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  TdmStorageApi = class(TDataModule)
    FDConnection: TFDConnection;
    FDQueryUpdateSettings: TFDQuery;
    FDCommandCreateSettings: TFDCommand;
    FDTableConfig: TFDTable;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure initStorage;
  end;

var
  dmStorageApi: TdmStorageApi;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TDataModule2 }


{ TdmStorageApi }

procedure TdmStorageApi.initStorage;
begin
     FDCommandCreateSettings.Open;


end;

end.
