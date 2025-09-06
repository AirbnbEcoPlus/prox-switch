unit LoginView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm3 = class(TForm)
    BLogin: TButton;
    EServer: TEdit;
    EUsername: TEdit;
    LServer: TLabel;
    EPassword: TEdit;
    LPassword: TLabel;
    LUsername: TLabel;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

end.
