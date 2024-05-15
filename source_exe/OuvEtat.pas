unit OuvEtat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, quickrpt;

type
  TFOuvEtat = class(TForm)
    QuickRep: TQuickRep;
    SpeedButton1: TSpeedButton;
    QuickRep3: TQuickRep;
    SpeedButton2: TSpeedButton;
    QuickRep7: TQuickRep;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FOuvEtat: TFOuvEtat;

implementation

{$R *.DFM}


procedure TFOuvEtat.SpeedButton1Click(Sender: TObject);
begin
  QuickRep.Preview;
end;


procedure TFOuvEtat.SpeedButton2Click(Sender: TObject);
begin
  QuickRep3.Preview ;
end;


procedure TFOuvEtat.SpeedButton3Click(Sender: TObject);
begin
  QuickRep7.Preview ; 
end;

end.
