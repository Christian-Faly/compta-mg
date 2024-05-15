unit EtatPlan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TFEtatPlan = class(TForm)
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape2: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand5: TQRBand;
    QRLabel10: TQRLabel;
    QRBand6: TQRBand;
    QuickRep2: TQuickRep;
    QRBand7: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape11: TQRShape;
    QRBand8: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape12: TQRShape;
    QRBand9: TQRBand;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRBand10: TQRBand;
    QRLabel12: TQRLabel;
    QRBand11: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
    QRLabel13: TQRLabel;
    QRShape14: TQRShape;
    QRLabel14: TQRLabel;
    QRShape15: TQRShape;
    QRLabel15: TQRLabel;
    QRShape16: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText13: TQRDBText;
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FEtatPlan: TFEtatPlan;

implementation

uses DaPlanCp, TypeElmt;

{$R *.DFM}


procedure TFEtatPlan.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if length(EnleveBlancDroite((DataCpte.qAuxiNonUtilNumCp.Value )))<10 then
    QRBand7.Height :=0
  else
    QRBand7.Height :=20;
end;

end.
