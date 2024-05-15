unit UEtaRembTVA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFEtaRemTVA = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape13: TQRShape;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QuickRep2: TQuickRep;
    QRBand6: TQRBand;
    QRBand7: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel26: TQRLabel;
    QRShape26: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel29: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape31: TQRShape;
    QRLabel33: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel34: TQRLabel;
    QRShape34: TQRShape;
    QRLabel35: TQRLabel;
    QRBand8: TQRBand;
    QRDBText20: TQRDBText;
    QRShape35: TQRShape;
    QRDBText21: TQRDBText;
    QRShape36: TQRShape;
    QRDBText22: TQRDBText;
    QRShape37: TQRShape;
    QRDBText23: TQRDBText;
    QRShape38: TQRShape;
    QRDBText24: TQRDBText;
    QRShape39: TQRShape;
    QRDBText25: TQRDBText;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRDBText26: TQRDBText;
    QRShape42: TQRShape;
    QRDBText27: TQRDBText;
    QRShape43: TQRShape;
    QRDBText28: TQRDBText;
    QRShape44: TQRShape;
    QRDBText29: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel42: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand10: TQRBand;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel57: TQRLabel;
    QRShape48: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel60: TQRLabel;
    QRShape51: TQRShape;
    QRLabel61: TQRLabel;
    QRShape53: TQRShape;
    QRBand11: TQRBand;
    QRDBText42: TQRDBText;
    QRShape57: TQRShape;
    QRDBText43: TQRDBText;
    QRShape58: TQRShape;
    QRDBText44: TQRDBText;
    QRShape59: TQRShape;
    QRDBText45: TQRDBText;
    QRShape60: TQRShape;
    QRDBText46: TQRDBText;
    QRShape61: TQRShape;
    QRDBText47: TQRDBText;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRDBText48: TQRDBText;
    QRBand12: TQRBand;
    QRShape52: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRLabel49: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand13: TQRBand;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRLabel50: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand14: TQRBand;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRLabel51: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QuickRep4: TQuickRep;
    QRBand16: TQRBand;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRLabel66: TQRLabel;
    QRShape75: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel69: TQRLabel;
    QRShape78: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape79: TQRShape;
    QRBand17: TQRBand;
    QRDBText39: TQRDBText;
    QRShape80: TQRShape;
    QRDBText40: TQRDBText;
    QRShape81: TQRShape;
    QRDBText41: TQRDBText;
    QRShape82: TQRShape;
    QRDBText49: TQRDBText;
    QRShape83: TQRShape;
    QRDBText50: TQRDBText;
    QRShape84: TQRShape;
    QRDBText51: TQRDBText;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRDBText53: TQRDBText;
    QRBand18: TQRBand;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRBand19: TQRBand;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRLabel73: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRBand20: TQRBand;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRLabel74: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRGroup3: TQRGroup;
    QRBand21: TQRBand;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel72: TQRLabel;
    QRDBText56: TQRDBText;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRDBText57: TQRDBText;
    QRDBText55: TQRDBText;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel89: TQRLabel;
    QRBand22: TQRBand;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRLabel90: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRLabel91: TQRLabel;
    QRBand23: TQRBand;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel92: TQRLabel;
    QRBand24: TQRBand;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRLabel93: TQRLabel;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel94: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText9: TQRDBText;
    QRShape5: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape56: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText33: TQRDBText;
    QRShape114: TQRShape;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel43Print(sender: TObject; var Value: String);
    procedure QuickRep4BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand20AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand18AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand14AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand12AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand22AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand23AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    MinDateRglt:TDateTime;
    NumFact,PcsRglt:string;
  public
    { Public declarations }
  end;

var
  FEtaRemTVA: TFEtaRemTVA;

implementation

uses UPStocke, TypeElmt, URembTVA;

{$R *.dfm}

procedure TFEtaRemTVA.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  MinDateRglt:=StrToDate('01/01/2020');
  NumFact:='';
  PcsRglt:='';
end;

procedure TFEtaRemTVA.QRLabel43Print(sender: TObject; var Value: String);
begin
  Value:=FormatDateTime('dd/mm/yyyy',MinDateRglt);
end;

procedure TFEtaRemTVA.QuickRep4BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel75.Caption :='                                             ';
  QRLabel76.Caption :='';
  QRLabel85.Caption:=FRembTVA.ComboBox2.Text+' '+FRembTVA.Edit4.text;
  QRGroup3.Height:=0;
end;

procedure TFEtaRemTVA.QRBand20AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel75.Caption :='';
end;

procedure TFEtaRemTVA.QRBand18AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel76.Caption :='                                                           ';
end;

procedure TFEtaRemTVA.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel77.Caption :='                                             ';
  QRLabel78.Caption :='';
  QRLabel83.Caption:=FRembTVA.ComboBox2.Text+' '+FRembTVA.Edit4.text;
end;

procedure TFEtaRemTVA.QRBand14AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel77.Caption :='';
end;

procedure TFEtaRemTVA.QRBand12AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel78.Caption :='                                              ';
end;

procedure TFEtaRemTVA.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel87.Caption:=FRembTVA.ComboBox2.Text+' '+FRembTVA.Edit4.text;
  QRLabel91.Caption:='                                                         ';
  QRLabel94.Caption:='';
end;

procedure TFEtaRemTVA.QRBand22AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel91.Caption:='';
end;

procedure TFEtaRemTVA.QRBand23AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel94.Caption :='                                              ';
end;

end.
