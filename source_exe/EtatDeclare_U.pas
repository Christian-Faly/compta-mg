unit EtatDeclare_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TFEtatDeclare = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand6: TQRBand;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRImage2: TQRImage;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText10: TQRDBText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape10: TQRShape;
    QuickRep3: TQuickRep;
    QRBand4: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand5: TQRBand;
    QRLabel40: TQRLabel;
    QRImage3: TQRImage;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape13: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRShape16: TQRShape;
    QRBand7: TQRBand;
    QRShape17: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QuickRep4: TQuickRep;
    QRBand9: TQRBand;
    QRShape29: TQRShape;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRShape30: TQRShape;
    QRDBText32: TQRDBText;
    QRShape31: TQRShape;
    QRDBText33: TQRDBText;
    QRShape32: TQRShape;
    QRDBText34: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRDBText35: TQRDBText;
    QRBand10: TQRBand;
    QRShape35: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel80: TQRLabel;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText40: TQRDBText;
    QRBand11: TQRBand;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRBand12: TQRBand;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRExpr5: TQRExpr;
    QRBand13: TQRBand;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel87: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel88: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape51: TQRShape;
    QRBand14: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText39: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRBand8: TQRBand;
    QRLabel65: TQRLabel;
    QRImage4: TQRImage;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape52: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRGroup5:TQRGroup;
    QRDBText15: TQRDBText;
    QRBand15: TQRBand;
    QRLabel92: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel86: TQRLabel;
    QuickRep5: TQuickRep;
    QRBand16: TQRBand;
    Label_Titre: TQRLabel;
    QRBand18: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText53: TQRDBText;
    QRShape81: TQRShape;
    QRShape83: TQRShape;
    QRShape85: TQRShape;
    QRShape61: TQRShape;
    QRShape63: TQRShape;
    QRShape77: TQRShape;
    QRShape58: TQRShape;
    QRShape69: TQRShape;
    QRBand17: TQRBand;
    QRLabel23: TQRLabel;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel93: TQRLabel;
    QRShape57: TQRShape;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel104: TQRLabel;
    QRShape65: TQRShape;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRLabel109: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRShape71: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRLabel24: TQRLabel;
    QRShape70: TQRShape;
    QRShape62: TQRShape;
    QRLabel110: TQRLabel;
    QuickRep6: TQuickRep;
    QRBand19: TQRBand;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel98: TQRLabel;
    QRShape78: TQRShape;
    QRShape80: TQRShape;
    QRLabel96: TQRLabel;
    QRShape82: TQRShape;
    QRLabel97: TQRLabel;
    QRShape84: TQRShape;
    QRLabel99: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRBand21: TQRBand;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRBand23: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRLabel130: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    Label_periode: TQRLabel;
    QRBand20: TQRBand;
    QRDBText63: TQRDBText;
    QRBand22: TQRBand;
    QRBand24: TQRBand;
    QRBand25: TQRBand;
    QRBand26: TQRBand;
    QRBand27: TQRBand;
    QRShape116: TQRShape;
    QRExpr8: TQRExpr;
    QRLabel21: TQRLabel;
    QRShape115: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRDBText52: TQRDBText;
    QRGroup6: TQRGroup;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape64: TQRShape;
    QRShape79: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRLabel131: TQRLabel;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QuickRep7: TQuickRep;
    QRBand28: TQRBand;
    QRLabel132: TQRLabel;
    QRBand29: TQRBand;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape132: TQRShape;
    QRDBText77: TQRDBText;
    QRBand30: TQRBand;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRShape135: TQRShape;
    QRLabel139: TQRLabel;
    QRShape136: TQRShape;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRShape140: TQRShape;
    QRBand31: TQRBand;
    QRLabel149: TQRLabel;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRGroup7: TQRGroup;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText71: TQRDBText;
    QRLabel117: TQRLabel;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape128: TQRShape;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRShape131: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QuickRep8: TQuickRep;
    QRBand32: TQRBand;
    QRLabel137: TQRLabel;
    QRBand34: TQRBand;
    QRShape150: TQRShape;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRShape152: TQRShape;
    QRLabel143: TQRLabel;
    QRShape153: TQRShape;
    QRLabel144: TQRLabel;
    QRLabel147: TQRLabel;
    QRShape149: TQRShape;
    QRBand35: TQRBand;
    QRLabel150: TQRLabel;
    QRShape156: TQRShape;
    QRShape158: TQRShape;
    QRShape143: TQRShape;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QuickRep9: TQuickRep;
    QRBand33: TQRBand;
    QRLabel138: TQRLabel;
    QRBand36: TQRBand;
    QRShape151: TQRShape;
    QRLabel142: TQRLabel;
    QRLabel148: TQRLabel;
    QRShape154: TQRShape;
    QRLabel152: TQRLabel;
    QRBand37: TQRBand;
    QRLabel154: TQRLabel;
    QRShape168: TQRShape;
    QRShape170: TQRShape;
    QRExpr22: TQRExpr;
    QRShape172: TQRShape;
    QRShape174: TQRShape;
    QRLabel155: TQRLabel;
    QRShape176: TQRShape;
    QRLabel156: TQRLabel;
    QRShape178: TQRShape;
    QRExpr24: TQRExpr;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRShape173: TQRShape;
    QRLabel151: TQRLabel;
    QRShape155: TQRShape;
    QRBand38: TQRBand;
    QRDBText85: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText73: TQRDBText;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRShape179: TQRShape;
    QRShape161: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRBand39: TQRBand;
    QRDBText82: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRShape163: TQRShape;
    QRShape169: TQRShape;
    QRShape171: TQRShape;
    QRShape177: TQRShape;
    QRShape180: TQRShape;
    QRShape181: TQRShape;
    QRExpr23: TQRExpr;
    QRDBText93: TQRDBText;
    QRLabel153: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRDBText76: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    procedure QuickRep4BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand19BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand20AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand16BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand22AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep5BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand13AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand24AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand25AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand26AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText54Print(sender: TObject; var Value: String);
    procedure QuickRep6BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText58Print(sender: TObject; var Value: String);
    procedure QRDBText74Print(sender: TObject; var Value: String);
    procedure QRBand31BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText75Print(sender: TObject; var Value: String);
    procedure QuickRep7BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep7AfterPreview(Sender: TObject);
    procedure QRDBText55Print(sender: TObject; var Value: String);
    procedure QRDBText56Print(sender: TObject; var Value: String);
    procedure QRBand22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText80Print(sender: TObject; var Value: String);
    procedure QRDBText81Print(sender: TObject; var Value: String);
    procedure QRBand12AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRBand27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    detail:boolean;
    c_agence:integer;
    titra, valeur :string;
    total_montant,somme_montant,montant :int64;
    TOTAL_tva,somme_tva,tva :int64;
    somme_impot,impot :int64;
    somme_comptabilisee,comptabilisee :int64;
    somme_versee,versee :int64;

  public
    { Public declarations }
  end;

var
  FEtatDeclare: TFEtatDeclare;

procedure AsehoyEtatDeclare(Typ,agence:integer; CheckDetail:boolean;titre:string);

implementation

uses DaDeclVao_U, informat, TypeElmt;

{$R *.dfm}

procedure AsehoyEtatDeclare(Typ,agence:integer;CheckDetail:boolean;titre:string);
begin
  FInformat.Asehoy('Chargement en cours ',' PATIENTEZ...',1000000);
  try
    FEtatDeclare := TFEtatDeclare.Create(Application);
    FEtatDeclare.detail := CheckDetail;
    FEtatDeclare.c_agence := agence;
    FEtatDeclare.titra := titre;
    case typ of
      1:FEtatDeclare.QuickRep1.Preview;
      2:FEtatDeclare.QuickRep2.Preview;
      3:FEtatDeclare.QuickRep3.Preview;
      4:FEtatDeclare.QuickRep4.Preview;
      5:FEtatDeclare.QuickRep5.Preview;
      6:FEtatDeclare.QuickRep6.Preview;
      7:FEtatDeclare.QuickRep7.Preview;
      8:FEtatDeclare.QuickRep8.Preview;
      9:FEtatDeclare.QuickRep9.Preview;
    end;
    finally
    FEtatDeclare.Free;
  end;
end;

procedure TFEtatDeclare.QuickRep4BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  somme_montant := 0;
  somme_tva := 0;
  if not detail then
  begin
    QRGroup5.Height := 0;
    QRBand9.Height := 0;
  end;
end;

procedure TFEtatDeclare.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  case c_agence of
    0  : QRDBText3.DataField := 'tmontant';
    210: QRDBText3.DataField := 'ttamatave';
    311: QRDBText3.DataField := 'tdiego';
  end;
end;

procedure TFEtatDeclare.QRBand19BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Label_periode.Caption := 'Période '+titra;
end;

procedure TFEtatDeclare.QRBand20AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    FInformat.Close;
end;

procedure TFEtatDeclare.QRBand16BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Label_Titre.Caption := 'ANNEXE '+uppercase(Titra);
end;

procedure TFEtatDeclare.QRBand22AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    FInformat.Close;
end;

procedure TFEtatDeclare.QuickRep5BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  somme_comptabilisee := 0;
  somme_versee := 0;

  if DaDeclVao.q_x_dcomm_export.Active then
    QRGroup6.Height := 19
  else
    QRGroup6.Height := 0;
  //if copy(uppercase(Titra),1,7)='PRODUIT' then
    //TextNature.DataField := 'produit'
  //else
    //TextNature.DataField := 'libelle'

end;

procedure TFEtatDeclare.QRBand13AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    FInformat.Close;
end;

procedure TFEtatDeclare.QRBand24AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    FInformat.Close;

end;

procedure TFEtatDeclare.QRBand25AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    FInformat.Close;
end;

procedure TFEtatDeclare.QRBand26AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    FInformat.Close;
end;

procedure TFEtatDeclare.QRExpr5Print(sender: TObject; var Value: String);
begin
  valeur := value
end;

procedure TFEtatDeclare.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel168.Caption := FormatFloat('#,##0',somme_montant);
  QRLabel167.Caption := FormatFloat('#,##0',somme_tva);

  if valeur = 'Total TVA déductibles sur les services locaux  [ 445350 ]' then
    QRBand12.Height := 0
end;

procedure TFEtatDeclare.QRDBText54Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,montant);
  somme_montant := somme_montant+ montant;
end;

procedure TFEtatDeclare.QuickRep6BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  somme_montant := 0;
  somme_impot := 0;
end;

procedure TFEtatDeclare.QRBand20BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel162.Caption := FormatFloat('#,##0',somme_montant);
  QRLabel153.Caption := FormatFloat('#,##0',somme_impot);

end;

procedure TFEtatDeclare.QRDBText58Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,impot);
  somme_impot := somme_impot+ impot;
end;

procedure TFEtatDeclare.QRDBText74Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,comptabilisee);
  somme_comptabilisee := somme_comptabilisee+ comptabilisee;
end;

procedure TFEtatDeclare.QRBand31BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel163.Caption := FormatFloat('#,##0',somme_comptabilisee);
  QRLabel164.Caption := FormatFloat('#,##0',somme_versee);
end;

procedure TFEtatDeclare.QRDBText75Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,versee);
  somme_versee := somme_versee + versee;
end;

procedure TFEtatDeclare.QuickRep7BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  somme_comptabilisee := 0;
  somme_versee := 0;
end;

procedure TFEtatDeclare.QuickRep7AfterPreview(Sender: TObject);
begin
  FInformat.Close;
end;

procedure TFEtatDeclare.QRDBText55Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,comptabilisee);
  somme_comptabilisee := somme_comptabilisee+ comptabilisee;
end;

procedure TFEtatDeclare.QRDBText56Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,versee);
  somme_versee := somme_versee + versee;
end;

procedure TFEtatDeclare.QRBand22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel165.Caption := FormatFloat('#,##0',somme_comptabilisee);
  QRLabel166.Caption := FormatFloat('#,##0',somme_versee);
end;

procedure TFEtatDeclare.QRDBText80Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,montant);
  somme_montant := somme_montant+ montant;
  total_montant := total_montant+ montant;
end;

procedure TFEtatDeclare.QRDBText81Print(sender: TObject;
  var Value: String);
begin
  avadihoInt64(Value,tva);
  somme_tva := somme_tva+ tva;
  total_tva := total_tva+ tva;
end;

procedure TFEtatDeclare.QRBand12AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  somme_montant := 0;
  somme_tva := 0;
end;

procedure TFEtatDeclare.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel170.Caption := FormatFloat('#,##0',total_montant);
  QRLabel169.Caption := FormatFloat('#,##0',total_tva);

end;

procedure TFEtatDeclare.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  somme_montant := 0;
end;

procedure TFEtatDeclare.QRDBText6Print(sender: TObject; var Value: String);
begin
  avadihoInt64(Value,montant);
  somme_montant := somme_montant + montant;
end;

procedure TFEtatDeclare.QRBand27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel171.Caption := FormatFloat('#,##0',somme_montant);

end;

end.
