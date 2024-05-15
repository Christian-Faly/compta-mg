unit Couvert;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, Grids, DBGrids;

type
  TFCouvert = class(TForm)
    QuickRep6: TQuickRep;
    QRBand16: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRMemo2: TQRMemo;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel45: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape13: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRMemo5: TQRMemo;
    QRMemo6: TQRMemo;
    QRLabel64: TQRLabel;
    QRLabel73: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel77: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QuickRep10: TQuickRep;
    QRBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape2: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel35: TQRLabel;
    QRMemo3: TQRMemo;
    QRMemo4: TQRMemo;
    QRLabel36: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel37: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel49: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel78: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText15: TQRDBText;
    //procedure QRDBText45Print(sender: TObject; var Value: String);  //desactivé
    procedure QuickRep6BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    //procedure QRDBText2Print(sender: TObject; var Value: String);  //desactivé
  private
    { Déclarations privées }
    annee:string;
  public
    { Déclarations publiques }
  end;

var
  FCouvert: TFCouvert;

implementation

uses DaCommun, USQL, TypeElmt;

{$R *.DFM}



//N° stat taloha teo @ couverture vente : desactivé
{procedure TFCouvert.QRDBText45Print(sender: TObject; var Value: String);
begin
  value:=enleveblancDroite(Value);
  QRLabel91.Caption:=copy(value,length(value),1);
  QRLabel90.Caption:=copy(value,length(value)-1,1);
  QRLabel89.Caption:=copy(value,length(value)-2,1);
  QRLabel94.Caption:=copy(value,length(value)-3,1);
  QRLabel88.Caption:=copy(value,length(value)-4,1);
  QRLabel86.Caption:=copy(value,length(value)-5,1);
  Value:='';
end; }



procedure TFCouvert.QuickRep6BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var androany:TDate;
  y,m,d:word;
begin
  androany:=date;
  decodedate(androany,y,m,d);
  Annee:=InputBox('Information ,supplémentaire ', 'Année de déclaration :', IntToStr(y));
  {QRLabel20.Caption:=Annee;}
  QRLabel21.Caption:=Annee;
  QRLabel18.Caption:=inttostr(strtoint(annee)+1);
  Commun.QSocieteConsolidee.Close;
  Commun.QSocieteConsolidee.Parameters[0].Value:=Commun.SocieteCode.Value;
  Commun.QSocieteConsolidee.Open;
  QRLabel10.Caption:=Commun.QSocieteConsolideeTotal.Value;
end;


procedure TFCouvert.QRDBText5Print(sender: TObject; var Value: String);
begin
  QRLabel42.Caption:=copy(value,length(value),1);
  QRLabel41.Caption:=copy(value,length(value)-1,1);
  QRLabel40.Caption:=copy(value,length(value)-2,1);
  QRLabel43.Caption:=copy(value,length(value)-3,1);
  QRLabel39.Caption:=copy(value,length(value)-4,1);
  QRLabel38.Caption:=copy(value,length(value)-5,1);
end;

procedure TFCouvert.QRDBText3Print(sender: TObject; var Value: String);
begin
  Commun.QSocieteConsolidee.Close;
  Commun.QSocieteConsolidee.Parameters[0].Value:=Value;
  Commun.QSocieteConsolidee.Open;
  Commun.QAdresse.Close;
  Commun.QAdresse.Parameters[0].value:=Commun.QSocieteConsolideeSiege.Value;
  Commun.QAdresse.Open;
  QRLabel35.Caption:=Commun.QAdresseLotOuRue.Value
                    +' '+Commun.QAdresseQuartier.Value
                    +' '+Commun.QAdresseCP.Value+' '+Commun.QAdresseLieu.Value;
end;







procedure TFCouvert.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var androany:TDate;
  y,m,d:word;
begin
  androany:=date;
  decodedate(androany,y,m,d);
  Annee:=InputBox('Information ,supplémentaire ', 'Année de déclaration :', IntToStr(y));
  {QRLabel20.Caption:=Annee;}
  QRLabel76.Caption:=Annee;
  QRLabel77.Caption:=inttostr(strtoint(annee)+1);
  Commun.QSocieteConsolidee.Close;
  Commun.QSocieteConsolidee.Parameters[0].Value:=Commun.SocieteCode.Value;
  Commun.QSocieteConsolidee.Open;
  QRLabel63.Caption:=Commun.QSocieteConsolideeTotal.Value;
end;

//N° stat taloha teo @ couverture achat : desactivé
{procedure TFCouvert.QRDBText2Print(sender: TObject; var Value: String);
begin
  value:=enleveblancDroite(Value);
  QRLabel70.Caption:=copy(value,length(value),1);
  QRLabel69.Caption:=copy(value,length(value)-1,1);
  QRLabel68.Caption:=copy(value,length(value)-2,1);
  QRLabel71.Caption:=copy(value,length(value)-3,1);
  QRLabel67.Caption:=copy(value,length(value)-4,1);
  QRLabel66.Caption:=copy(value,length(value)-5,1);
  Value:='';
end;}

end.
