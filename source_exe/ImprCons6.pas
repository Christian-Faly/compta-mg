unit ImprCons6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, DB, Grids, DBGrids;

type
  TFImprCons6 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape38: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape39: TQRShape;
    QRShape42: TQRShape;
    QRBand7: TQRBand;
    QRGroup2: TQRGroup;
    QRBand8: TQRBand;
    QRShape50: TQRShape;
    QRBand9: TQRBand;
    QRGroup3: TQRGroup;
    QRBand10: TQRBand;
    QRBand12: TQRBand;
    QRGroup1: TQRGroup;
    QRGroup4: TQRGroup;
    QRBand3: TQRBand;
    QRShape44: TQRShape;
    QRShape46: TQRShape;
    QRShape49: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRBand11: TQRBand;
    QRShape122: TQRShape;
    QRShape124: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRExpr13: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel53: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRExpr17: TQRExpr;
    QRExpr21: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape37: TQRShape;
    QRShape41: TQRShape;
    QRShape43: TQRShape;
    QRShape45: TQRShape;
    QRShape51: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRExpr27: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr70: TQRExpr;
    QRSysData1: TQRSysData;
    QRShape73: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape154: TQRShape;
    QRShape151: TQRShape;
    QRShape74: TQRShape;
    QRExpr52: TQRExpr;
    QRExpr57: TQRExpr;
    QRShape75: TQRShape;
    QRExpr45: TQRExpr;
    QRExpr47: TQRExpr;
    QRShape77: TQRShape;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRBand2: TQRBand;
    QRShape66: TQRShape;
    QRGroup5: TQRGroup;
    QRExpr56: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape4: TQRShape;
    QRShape47: TQRShape;
    QRShape53: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRExpr33: TQRExpr;
    QRExpr38: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape57: TQRShape;
    QRExpr36: TQRExpr;
    QRExpr40: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape78: TQRShape;
    QRExpr76: TQRExpr;
    QRExpr79: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRShape86: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape195: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape72: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRExpr23: TQRExpr;
    QRExpr28: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape21: TQRShape;
    QRShape52: TQRShape;
    QRExpr62: TQRExpr;
    QRShape76: TQRShape;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRShape85: TQRShape;
    QRShape9: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape11: TQRShape;
    QRShape17: TQRShape;
    QRShape27: TQRShape;
    QRShape62: TQRShape;
    QRExpr30: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape63: TQRShape;
    QRShape88: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape64: TQRShape;
    QRShape84: TQRShape;
    QRExpr66: TQRExpr;
    QRExpr71: TQRExpr;
    QRShape79: TQRShape;
    QRExpr11: TQRExpr;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand10AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand9AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand12AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
    totdeb,totcred,totdeb_1,totcred_1:array[0..7]of real;
  public
    { Déclarations publiques }
  end;


var
  FImprCons6: TFImprCons6;

implementation

uses Daspecia, DaCommun, USQL, UPStocke;

{$R *.DFM}

procedure TFImprCons6.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i:integer;
begin
  DaSQL.QTotConsilid_1.Close;
  DaSQL.QTotConsilid_1.Parameters[0].Value := DASQL.QconsolidCompte.Value;
  DaSQL.QTotConsilid_1.Open;


  if (TotDeb[7]=0)and(TotCred[7]=0)and
     (DaSQL.QTotConsilid_1TotDebit.Value=0)and
     (DaSQL.QTotConsilid_1TotCredit.Value=0)then
    QRBand8.Height := 0
  else
    QRBand8.Height :=18;

  //solder tous les total
  {SelectParam('CONSOLID','NC_COMSLDC');
  if DansParam(Qconsolidcompte.Value)then
  }

  if totdeb[7]>totcred[7] then
  begin
    totdeb[7]:=totdeb[7]-totcred[7];
    totcred[7]:=0;
  end
  else
  begin
    totCred[7]:=totcred[7]-totdeb[7];
    totdeb[7]:=0;
  end;

  for i:=1 to 6 do    //6 au lieu de 7
  begin
    totdeb[i]:=totdeb[i]+totdeb[7];
    totcred[i]:=totcred[i]+totcred[7];
  end;

  Special.TotConsolid.Insert;
  Special.TotConsolidCompte.Value:=DASQL.QconsolidCompte.Value;
  Special.TotConsolidTotDebit.Value:=TotDeb[7];
  Special.TotConsolidTotCredit.Value:=TotCred[7];
  Special.TotConsolid.Post;

  for i:=1 to 7 do
  begin
    TotDeb_1[i]:=TotDeb_1[i]+DaSQL.QTotConsilid_1TotDebit.Value;
    TotCred_1[i]:=TotCred_1[i]+DaSQL.QTotConsilid_1TotCredit.Value;
  end;

  QRLabel12.Caption:=FormatFloat('#,##0',TotDeb[7]);
  QRLabel11.Caption:=FormatFloat('#,##0',TotCred[7]);

  QRLabel41.Caption:=FormatFloat('#,##0',DaSQL.QTotConsilid_1TotDebit.Value);
  QRLabel42.Caption:=FormatFloat('#,##0',DaSQL.QTotConsilid_1TotCredit.Value);

  TotDeb[7]:=0;
  TotCred[7]:=0;
end;

procedure TFImprCons6.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var i:integer;
begin
  QRGroup2.Height:=0;
  QRGroup3.Height:=0;
  QRGroup1.Height:=0;
  QRGroup4.Height:=0;
  QRGroup5.Height:=0;
  QRBand2.Height:=0;

  QRBand8.Height :=18;
  QRBand1.Height :=20;
  QRBand3.Height :=20;
  QRBand10.Height:=20;
  QRBand9.Height :=27;
  QRBand12.Height:=46;

  for i:=0 to 7 do totdeb[i]:=0;
  for i:=0 to 7 do totdeb_1[i]:=0;


  for i:=1 to 3 do DASQL.Qconsolidee.Next;
  //{5ème sté} DASQL.Qconsolidee.Next; QRLabel75.Caption :=DASQL.QconsolideeNom.Value ;
  //{6ème sté} DASQL.Qconsolidee.Next; QRLabel28.Caption :=DASQL.QconsolideeNom.Value ;
  //7ème sté DASQL.Qconsolidee.Next; QRLabel24.Caption :=DASQL.QconsolideeNom.Value ;

  PStockee.SupprimerTout('Document','TotConsolid');
  Special.TotConsolid.Open;
end;

procedure TFImprCons6.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DASQL.SelectParam('CONSOLID','PAS 3 POS');
  if not DASQL.DansParam(DASQL.QConsolidCompte.Value) then
  begin
    QRBand3.Height:=20;
    QRBand3.Frame.DrawTop:=true;
    QRBand3.Frame.DrawBottom:=true;
  end
  else
  begin
    QRBand3.Height:=0;
    QRBand3.Frame.DrawTop:=false;
    QRBand3.Frame.DrawBottom:=false;
  end;
  QRLabel6.Caption:=FormatFloat('#,##0',TotDeb[1]);
  QRLabel1.Caption:=FormatFloat('#,##0',TotCred[1]);
  TotDeb[1]:=0;
  TotCred[1]:=0;

  QRLabel22.Caption:=FormatFloat('#,##0',TotDeb_1[1]);
  QRLabel32.Caption:=FormatFloat('#,##0',TotCred_1[1]);
  TotDeb_1[1]:=0;
  TotCred_1[1]:=0;
end;

procedure TFImprCons6.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:=FormatFloat('#,##0',TotDeb[2]);
  QRLabel2.Caption:=FormatFloat('#,##0',TotCred[2]);
  TotDeb[2]:=0;
  TotCred[2]:=0;

  QRLabel33.Caption:=FormatFloat('#,##0',TotDeb_1[2]);
  QRLabel34.Caption:=FormatFloat('#,##0',TotCred_1[2]);
  TotDeb_1[2]:=0;
  TotCred_1[2]:=0;
end;

procedure TFImprCons6.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=FormatFloat('#,##0',TotDeb[3]);
  QRLabel3.Caption:=FormatFloat('#,##0',TotCred[3]);
  TotDeb[3]:=0;
  TotCred[3]:=0;

  QRLabel35.Caption:=FormatFloat('#,##0',TotDeb_1[3]);
  QRLabel36.Caption:=FormatFloat('#,##0',TotCred_1[3]);
  TotDeb_1[3]:=0;
  TotCred_1[3]:=0;
end;

procedure TFImprCons6.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=FormatFloat('#,##0',TotDeb[6]);
  QRLabel18.Caption:=FormatFloat('#,##0',TotCred[6]);

  QRLabel9.Caption:=FormatFloat('#,##0',TotDeb[4]);
  QRLabel4.Caption:=FormatFloat('#,##0',TotCred[4]);

  QRLabel37.Caption:=FormatFloat('#,##0',TotDeb_1[6]);
  QRLabel38.Caption:=FormatFloat('#,##0',TotCred_1[6]);

  QRLabel39.Caption:=FormatFloat('#,##0',TotDeb_1[4]);
  QRLabel40.Caption:=FormatFloat('#,##0',TotCred_1[4]);
  TotDeb[4]:=0;
  TotCred[4]:=0;

  TotDeb_1[4]:=0;
  TotCred_1[4]:=0;
end;

procedure TFImprCons6.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DASQL.SelectParam('CONSOLID','TIT 4 POS');
  if not DASQL.DansParam(DASQL.QConsolidCompte.Value) then
  begin
    QRBand1.Height:=0;
    QRBand1.Frame.DrawTop:=false;
    QRBand1.Frame.DrawBottom:=false;
  end
  else
  begin
    QRBand1.Height:=20;
    QRBand1.Frame.DrawTop:=true;
    QRBand1.Frame.DrawBottom:=true;
  end;
  QRLabel17.Caption:=FormatFloat('#,##0',TotDeb[5]);
  QRLabel16.Caption:=FormatFloat('#,##0',TotCred[5]);
  TotDeb[5]:=0;
  TotCred[5]:=0;

  QRLabel20.Caption:=FormatFloat('#,##0',TotDeb_1[5]);
  QRLabel21.Caption:=FormatFloat('#,##0',TotCred_1[5]);
  TotDeb_1[5]:=0;
  TotCred_1[5]:=0;
end;



















procedure TFImprCons6.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if copy(DASQL.QConsolidCompte.Value,1,1)<>'6' then
    QRGroup2.Height:=0
  else
  begin
    QRGroup2.Height:=27;
    QRExpr79.Reset;
    QRExpr76.Reset;
    QRExpr33.Reset;
    QRExpr38.Reset;
    QRLabel10.Caption:=FormatFloat('#,##0',TotDeb[6]);
    QRLabel5.Caption:=FormatFloat('#,##0',TotCred[6]);
    TotDeb[6]:=0;
    TotCred[6]:=0;

    QRLabel24.Caption:=FormatFloat('#,##0',TotDeb_1[6]);
    QRLabel23.Caption:=FormatFloat('#,##0',TotCred_1[6]);
    TotDeb_1[6]:=0;
    TotCred_1[6]:=0;
  end;
end;

























procedure TFImprCons6.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr52.Reset;
  QRExpr57.Reset;
  QRExpr17.Reset;
  QRExpr21.Reset;

end;

procedure TFImprCons6.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr45.Reset;
  QRExpr47.Reset;
  QRExpr3.Reset;
  QRExpr8.Reset;

end;

procedure TFImprCons6.QRBand10AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr48.Reset;
  QRExpr49.Reset;
  QRExpr13.Reset;
  QRExpr18.Reset;

end;

procedure TFImprCons6.QRBand9AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr50.Reset;
  QRExpr51.Reset;
  QRExpr23.Reset;
  QRExpr28.Reset;
end;

procedure TFImprCons6.QRBand12AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRExpr76.Reset;
  QRExpr79.Reset;
  QRExpr33.Reset;
  QRExpr38.Reset;
end;

procedure TFImprCons6.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  totdeb[7]:=totdeb[7]+DASQL.QconsolidStTotDeb.Value;
  totcred[7]:=totcred[7]+DASQL.QconsolidStTotCred.Value;
end;

end.
