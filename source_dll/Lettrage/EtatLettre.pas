unit EtatLettre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls;

type
  TFEtatLettre = class(TForm)
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRLabel43: TQRLabel;
    QRDBText60: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRDBText9: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape14: TQRShape;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand3: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QuickRep2: TQuickRep;
    QRBand5: TQRBand;
    QRBand7: TQRBand;
    QRSysData5: TQRSysData;
    QRSysData6: TQRSysData;
    QRBand8: TQRBand;
    QRLabel30: TQRLabel;
    QRBand9: TQRBand;
    QRDBText23: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel23: TQRLabel;
    QRShape4: TQRShape;
    QRShape13: TQRShape;
    QRShape24: TQRShape;
    QRDBText32: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape8: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText3: TQRDBText;
    QRGroup3: TQRGroup;
    QRLabel35: TQRLabel;
    QRShape22: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape25: TQRShape;
    QRLabel40: TQRLabel;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel51: TQRLabel;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRShape17: TQRShape;
    QRDBText16: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape12: TQRShape;
    QRShape18: TQRShape;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape19: TQRShape;
    QuickRep3: TQuickRep;
    QRBand4: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape27: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRDBText26: TQRDBText;
    QRDBText29: TQRDBText;
    QRShape33: TQRShape;
    QRLabel18: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRBand11: TQRBand;
    QRSysData7: TQRSysData;
    QRSysData8: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText34: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText35: TQRDBText;
    QRBand13: TQRBand;
    QRShape45: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape46: TQRShape;
    QRShape48: TQRShape;
    QRDBText22: TQRDBText;
    QRShape21: TQRShape;
    QRLabel57: TQRLabel;
    QRShape49: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel44: TQRLabel;
    QRShape40: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape36: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape39: TQRShape;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr9: TQRExpr;
    QRShape44: TQRShape;
    QRShape47: TQRShape;
    QRLabel49: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel52: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRBand15: TQRBand;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel76: TQRLabel;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRShape79: TQRShape;
    QRBand10: TQRBand;
    QRLabel20: TQRLabel;
    QRBand12: TQRBand;
    QRLabel22: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand14: TQRBand;
    QRDBText7: TQRDBText;
    QRShape50: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRExpr13: TQRExpr;
    QRShape55: TQRShape;
    QRBand16: TQRBand;
    QRSysData9: TQRSysData;
    QRSysData10: TQRSysData;
    QRBand17: TQRBand;
    QRShape65: TQRShape;
    QRLabel67: TQRLabel;
    QRExpr16: TQRExpr;
    QRShape66: TQRShape;
    QRBand18: TQRBand;
    QRLabel68: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText40: TQRDBText;
    QRBand19: TQRBand;
    Fournisseur: TQRLabel;
    QRShape57: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape60: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape20: TQRShape;
    QRShape51: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape56: TQRShape;
    QRDBText33: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel89: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel90: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText42: TQRDBText;
    QRLabel60: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRLabel39: TQRLabel;
    procedure QuickRep2BeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr10Print(sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
    stdebit,stcredit:string;
  public
    { Déclarations publiques }
  end;

var
  FEtatLettre: TFEtatLettre;

implementation

uses UDaLettr;


{$R *.DFM}

procedure TFEtatLettre.QuickRep2BeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  DataTiers.SelNumAdres.Close;
  DataTiers.SelNumAdres.parameters[0].Value:=DataTiers.RRechLetCompte.Value;
  DataTiers.SelNumAdres.OPEN;
end;






























procedure TFEtatLettre.QRGroup3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var numb :integer;
begin
  numb:=strtoint(copy(DataTiers.RRechLetPeriode.Value,6,2));
  QRLabel51.Caption:=DataTiers.stmois[numb]+' '+copy(DataTiers.RRechLetPeriode.Value,1,4);
end;

procedure TFEtatLettre.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var sdate,st:string;
begin
  QRLabel4.Caption:=copy(DataTiers.RRechLetJournal.Value,5,4);
  sdate:=FormatFloat('00',DataTiers.RRechLetJour.Value)+ '/'+
         copy(DataTiers.RRechLetPeriode.Value,6,2)+ '/'+
         copy(DataTiers.RRechLetPeriode.Value,3,2);
end;

procedure TFEtatLettre.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var sdate,st:string;
begin
  QRLabel18.Caption:=copy(DataTiers.RRechLetJournal.Value,5,4);
  sdate:=FormatFloat('00',DataTiers.RRechLetJour.Value)+ '/'+
         copy(DataTiers.RRechLetPeriode.Value,6,2)+ '/'+
         copy(DataTiers.RRechLetPeriode.Value,3,2);
  QRLabel7.caption:=sdate;
end;

procedure TFEtatLettre.QRGroup4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var numb :integer;
begin
  numb:=strtoint(copy(DataTiers.EltLettreePeriode.Value,6,2));
{  QRLabel52.Caption:=stmois[numb]+' '+copy(Special.EltLettreePeriode.Value,1,4);}
end;




















procedure TFEtatLettre.QRExpr2Print(sender: TObject; var Value: String);
begin
  stdebit:=value;
end;

procedure TFEtatLettre.QRExpr10Print(sender: TObject; var Value: String);
begin
  stcredit:=value;
end;

procedure TFEtatLettre.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRExpr2.reset;
  QRExpr10.reset;
  QRExpr11.reset;
  QRExpr12.reset;
end;
























end.
