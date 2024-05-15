unit EtComman;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TFEtCommand = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure Asehoy;
  end;

var
  FEtCommand: TFEtCommand;

procedure AsehoyEtCommande;

implementation

uses UObjet;

{$R *.DFM}

procedure AsehoyEtCommande;
begin
  FEtCommand:=TFEtCommand.Create(Application);
  try
    FEtCommand.Asehoy;
  finally
    FEtCommand.free;
  end;
end;

procedure TFEtCommand.Asehoy;
begin
  QuickRep1.Preview;
end;

end.
