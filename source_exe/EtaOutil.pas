unit EtaOutil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls;

type
  TFEtaOutil = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText62: TQRDBText;
    QRLabel202: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText88: TQRDBText;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
    TiersTal:String;
  public
    { Déclarations publiques }
    Detail:boolean;
  end;

var
  FEtaOutil: TFEtaOutil;

implementation

uses Daspecia, DaCommun, USQL;

{$R *.DFM}

procedure TFEtaOutil.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  TiersTal:='';
end;

procedure TFEtaOutil.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if detail or (not(DASQL.DetTaxeTiers.Value>'0')) then
     QRLabel9.Caption:=''
   else
     QRLabel9.Caption:='Exemple';
    QRLabel5.caption:='Pas d''erreur';
    QRBand3.Height:=20 ;
    if (DASQL.DetTaxeTiers.Value>'4011') and (DASQL.DetTaxeTiers.Value<'4112Z')then
    begin
      DASQL.SelNumAdres.Close;
      DASQL.SelNumAdres.Parameters[0].Value:=DASQL.DetTaxeTiers.Value;
      DASQL.SelNumAdres.open;
      DASQL.SelNumDivers.Close;
      DASQL.SelNumDivers.Parameters[0].Value:=DASQL.DetTaxeTiers.Value;
      DASQL.SelNumDivers.open;
      if (DASQL.DetTaxeTiers.Value<'4112')and
        ((DASQL.SelNumAdres.RecordCount=0)or
         (DASQL.SelNumAdresAdresse.Value<'0')or
         (DASQL.SelNumDivers.RecordCount=0)or
         (DASQL.SelNumDiversStatistique.Value<'0')or
         (DASQL.SelNumDiversNIF.Value<'0')or
         ((length(DASQL.DetTaxeTiers.Value)<10)or
         (copy(DASQL.DetTaxeTiers.Value,1,1)='4'))) then
      begin // recap. Erreur
        if (DASQL.SelNumAdres.RecordCount=0)or
          (DASQL.SelNumAdresAdresse.Value<'0')then
          QRLabel5.caption:='Adresse non trouvée';
        if (DASQL.SelNumDivers.RecordCount=0) then
           QRLabel5.caption:='Info. divers non trouvée';
        if (DASQL.SelNumDiversStatistique.Value<'0')or
           (DASQL.SelNumDiversNIF.Value<'0') then
           QRLabel5.caption:='Statistique ou NIF  non trouvée';
         if ((length(DASQL.DetTaxeTiers.Value)<10)and(copy(DASQL.DetTaxeTiers.Value,1,1)='4')) then
           QRLabel5.caption:='Compte tiers de longueur < 10';
      end;
    end
    else
    begin
      QRLabel5.caption:='case Tiers non valide';
    end;
    if QRLabel5.caption='Pas d''erreur' then
      QRBand3.Height:=0;
    if (not detail) and
       (TiersTal=DASQL.DetTaxeTiers.Value) and
       (DASQL.DetTaxeTiers.Value>'') then
      QRBand3.Height:=0;
    TiersTal:=DASQL.DetTaxeTiers.Value;
end;

end.
