unit Balance;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, Db, Qrctrls, quickrpt,
  ComCtrls, Mask, DBCtrls;

type
  vita=record
    cpt:string;
    eka:boolean;
  end;
  TFEtatCourant = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
    QuickRep: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRBand5: TQRBand;
    QRShape15: TQRShape;
    BitBtn1: TBitBtn;
    SpeedButton8: TSpeedButton;
    SpeedButton1: TSpeedButton;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape13: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRBand1: TQRBand;
    QRBand4: TQRBand;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape63: TQRShape;
    QuickRep1: TQuickRep;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    Edit12: TEdit;
    Edit13: TEdit;
    QuickRep2: TQuickRep;
    QRBand10: TQRBand;
    QRExpr3: TQRExpr;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRExpr4: TQRExpr;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRGroup6: TQRGroup;
    QRShape87: TQRShape;
    QRBand12: TQRBand;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRLabel77: TQRLabel;
    QRBand13: TQRBand;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRDBText38: TQRDBText;
    QRShape100: TQRShape;
    QRLabel91: TQRLabel;
    QRShape101: TQRShape;
    QRLabel92: TQRLabel;
    QRShape102: TQRShape;
    QRDBText40: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel72: TQRLabel;
    QRShape86: TQRShape;
    QRShape88: TQRShape;
    QRDBText29: TQRDBText;
    QRShape90: TQRShape;
    QuickRep3: TQuickRep;
    QRGroup7: TQRGroup;
    QRBand16: TQRBand;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape112: TQRShape;
    QRShape103: TQRShape;
    QRBand24: TQRBand;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRExpr27: TQRExpr;
    QRExpr44: TQRExpr;
    SourceBalance: TDataSource;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRBand15: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel202: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel113: TQRLabel;
    QRBand20: TQRBand;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape28: TQRShape;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape39: TQRShape;
    QRShape27: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel114: TQRLabel;
    SpeedButton3: TSpeedButton;
    QRLabel122: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel10: TQRLabel;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    Mois: TLabel;
    Annee: TLabel;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    UpDown2: TUpDown;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    UpDown1: TUpDown;
    SpeedButton2: TSpeedButton;
    DataSource1: TDataSource;
    QRLabel81: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel82: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel25: TQRLabel;
    QRShape30: TQRShape;
    CheckBox6: TCheckBox;
    QRLabel51: TQRLabel;
    QRExpr18: TQRExpr;
    QRLabel49: TQRLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Edit8: TEdit;
    Edit7: TEdit;
    CodeAnalytique: TCheckBox;
    Label7: TLabel;
    QRBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape33: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape40: TQRShape;
    QRLabel55: TQRLabel;
    QRShape41: TQRShape;
    QRLabel56: TQRLabel;
    QRShape42: TQRShape;
    QRLabel61: TQRLabel;
    QRShape43: TQRShape;
    QRBand6: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape50: TQRShape;
    QRDBText11: TQRDBText;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRGroup4: TQRGroup;
    QRGroup8: TQRGroup;
    QRGroup5: TQRGroup;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    QRGroup3: TQRGroup;
    QRShape44: TQRShape;
    QRBand7: TQRBand;
    QRLabel62: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    SpeedButton4: TSpeedButton;
    QRDBText12: TQRDBText;
    DataSource2: TDataSource;
    QRExpr7: TQRExpr;
    Panel5: TPanel;
    Label9: TLabel;
    Label3: TLabel;
    Edit6: TEdit;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Edit5: TEdit;
    CheckBox8: TCheckBox;
    QRExpr9: TQRExpr;
    QRLabel67: TQRLabel;
    Label8: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    QRBand9: TQRBand;
    QRLabel83: TQRLabel;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel84: TQRLabel;
    QRBand11: TQRBand;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRLabel87: TQRLabel;
    QRShape67: TQRShape;
    QRLabel86: TQRLabel;
    QRShape68: TQRShape;
    RadioGroup1: TRadioGroup;
    QRSysData3: TQRSysData;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape29: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRBand14: TQRBand;
    QRLabel88: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRExpr21: TQRExpr;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRGroup9: TQRGroup;
    QRExpr22: TQRExpr;
    QRBand21: TQRBand;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRShape81: TQRShape;
    QRShape89: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRDBText14: TQRDBText;
    CheckBox9: TCheckBox;
    QRLabel94: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRLabel93: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel112: TQRLabel;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRLabel99: TQRLabel;
    QRShape104: TQRShape;
    QRLabel100: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel101: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRBand17: TQRBand;
    QRShape93: TQRShape;
    QRLabel104: TQRLabel;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    RadioGroup2: TRadioGroup;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    MaskEdit1: TMaskEdit;
    Label12: TLabel;
    MaskEdit2: TMaskEdit;
    QRLabel105: TQRLabel;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    CheckOuverture: TCheckBox;
    QRLabel106: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel110: TQRLabel;
    QRBand18: TQRBand;
    QRLabel109: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel128: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel129: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRSysData6: TQRSysData;
    QRLabel131: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel132: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText24: TQRDBText;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton5: TSpeedButton;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    DBLookupComboBox1: TDBLookupComboBox;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    DataSource5: TDataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure QRExpr44Print(sender: TObject; var Value: String);
    procedure QRExpr27Print(sender: TObject; var Value: String);
    procedure QRBand20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData3Print(sender: TObject; var Value: String);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QRExpr45Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CodeAnalytiqueClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure QRExpr18Print(sender: TObject; var Value: String);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QRExpr9Print(sender: TObject; var Value: String);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr11Print(sender: TObject; var Value: String);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRExpr23Print(sender: TObject; var Value: String);
    procedure QRExpr24Print(sender: TObject; var Value: String);
    procedure QRBand9AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand11AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
    procedure QRLabel33Print(sender: TObject; var Value: String);
    procedure QRLabel34Print(sender: TObject; var Value: String);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup7AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRExpr15Print(sender: TObject; var Value: String);
    procedure QRExpr16Print(sender: TObject; var Value: String);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup2Click(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Déclarations privées }
    mody:shortint;
    DebitPrec,DebitPrecGroupe,DebitPrecSSGroupe,DebitPrecClasse,DebitPrecGene:real;
    CreditPrec,CreditPrecssGroupe,CreditPrecGroupe,CreditPrecClasse,CreditPrecGene:real;
    MvtDebit,MvtDebitSSGroupe,MvtDebitGroupe,MvtDebitClasse,MvtDebitGene:real;
    MvtCredit,MvtCreditSSGroupe,MvtCreditGroupe,MvtCreditClasse,MvtCreditGene:real;
    DebitNouv,DebitNouvSSGroupe,DebitNouvGroupe,DebitNouvClasse,DebitNouvGene:real;
    CreditNouv,CreditNouvSSGroupe,CreditNouvGroupe,CreditNouvClasse,CreditNouvGene:real;
    DebitPrecPage,CreditPrecPage,MvtDebitPage,MvtCreditPage,
    DebitNouvPage,CreditNouvPage:real;
    perio,cpt3chiffretal:string;
    printreport,NoChange:boolean;
    compte2,compte2tal:string;
    DebitAv,CreditAv:Double;
    DebitPer,CreditPer:Double;
    Debit,Credit:Double;
    balanceCount,DetailCount:integer;
    stdaty:string;
    RepMDebit,RepMCredit:Real;
    vitave:vita;
    nbcpt:word;
    TSCredit,TSDebit:real;
    procedure fafao;
    procedure Rafraichir;
    function  EcrireJournal:boolean;
    //procedure EcrireElt(compte1:string;audebit:boolean;montant:real);
    //procedure SelectEcriture(etat:shortint);
  public
    { Déclarations publiques }
    procedure Asehoy(mode:shortint);{0:general;2:auxiliaire;3:clôture}
  end;

var
  FEtatCourant: TFEtatCourant;

procedure AsehoyEtatCourant(mode:shortint);

implementation

uses Daspecia,  DaCommun,  Journaux_U, LstAuxi, TypeElmt, ImpPlan, USQL,
  UPStocke;

{$R *.DFM}

procedure AsehoyEtatCourant(mode:shortint);
begin
  try
    FEtatCourant:= TFEtatCourant.Create(Application);
    FEtatCourant.Asehoy(mode);
  finally
    FEtatCourant.Free;
  end;
end;

procedure TFEtatCourant.Asehoy(mode:shortint);
var year,Month,Day:word;
begin
  special.code_analytique.Open;
  height:=400;
  width:= 700;
  borderStyle:=bsDialog;
  Autoscroll:=false;
  vitave.cpt:='0';
  Nochange:=false;
  printreport:=false;
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  Edit3.text:=inttostr(Year);
  UpDown2.Position:=Year;
  ComboBox1.ItemIndex:=Month-1;
  DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);
  Edit4.text:=inttostr(Year);
  UpDown1.Position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  Special.Journaux.open;
  edit12.text:=Special.JournauxCode.Value;
  edit13.text:=Special.JournauxIntitule.Value;

  mody:=mode;
  Edit2.visible:=true;
  SpeedButton1.visible:=true;
  SpeedButton5.visible:=true;
  SourceBalance.DataSet:=DASQL.Balance;
  Autoscroll:=false;
  fafao;
  case mody of
    0:begin
        Caption:='Balance Générale';
        CheckBox2.Visible:=false;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=false;
        GroupBox2.Visible:=false;
        CheckBox3.Visible:=true;
        GroupBox2.Visible:=true;
        GroupBox1.Visible:=false;
        RadioGroup1.Visible:=false;
        edit6.text:='2';
        edit5.text:='3';
        GroupBox4.Visible:=false;
        SpeedButton4.Visible:=false;
        Panel5.visible:=true;
      end;
    1:begin
        Caption:='Balance Auxiliaire';
        CheckBox2.Visible:=false;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=false;
        GroupBox2.Visible:=false;
        CheckBox3.Visible:=true;
        GroupBox2.Visible:=true;
        GroupBox1.Visible:=true;
        RadioGroup1.Visible:=false;
        edit6.text:='3';
        edit5.text:='4';
        Edit9.text:='5';
        edit9.visible:=false;
        Label8.visible:=false;
        Label10.visible:=false;
        Edit10.visible:=false;
        GroupBox4.Visible:=false;
        SpeedButton4.Visible:=false;
        Panel5.visible:=true;
      end;
    4:begin
        Caption:='Journal traditionnel';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=false;
        GroupBox1.Visible:=false;
        CheckBox3.Visible:=true;
        RadioGroup1.Visible:=false;
        SpeedButton4.Visible:=false;
        Panel5.visible:=false;
      end;
    5:begin
        Caption:='Journal Normal';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=false;
        GroupBox1.Visible:=false;
        CheckBox3.Visible:=true;
        SpeedButton4.Visible:=false;
        RadioGroup1.Visible:=true;
        Panel5.visible:=false;
      end;
    6:begin
        Caption:='Cumul des comptes';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=true;
        CheckBox3.Visible:=true;
        RadioGroup1.Visible:=false;
        SpeedButton4.Visible:=false;
        Panel5.visible:=false;
      end;
    7:begin
        Caption:='Suivi des paiements fournisseurs';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=true;
        CheckBox3.Visible:=true;
        RadioGroup1.Visible:=false;
        SpeedButton4.Visible:=false;
        Panel5.visible:=false;
      end;
    8:begin
        Caption:='Suivi des règlements clients';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=true;
        CheckBox3.Visible:=true;
        SpeedButton4.Visible:=false;
        RadioGroup1.Visible:=false;
        Panel5.visible:=false;
      end;
    9:begin
        Caption:='Ré-imputation comptable';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=true;
        CheckBox3.Visible:=true;
        RadioGroup1.Visible:=false;
        Panel1.Visible:=false;
        GroupBox1.Caption:='à ré-imputer';
        Label1.Caption:='Compte';
        Label2.Caption:='par';
        CheckBox3.Visible:=false;
        Panel5.visible:=false;
      end;
  end;
  Special.DtImprBal.Open;
  if mody<>2 then showmodal;
end;

function  TFEtatCourant.EcrireJournal:boolean;
var y,m,d:word;
begin
  result:=true;
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
  DASQL.SelJournal.close;
  DASQL.SelJournal.sql.clear;
  DASQL.SelJournal.sql.Add('select * from Journal  ');
  DASQL.SelJournal.sql.Add('where CodeJrnx=''CL''');
  DASQL.SelJournal.open;
  while not DASQL.SelJournal.eof do
  begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.parameters[0].Value:=DASQL.SelJournalCode.Value;
    DASQL.SelEltJrn.open;
    while not  DASQL.SelEltJrn.eof do DASQL.SelEltJrn.delete;
    DASQL.SelJournal.delete;
  end;

  try
    Special.Journal.open;
    Special.Journal.insert;
    decodedate(Commun.SocieteExerFin.value,y,m,d);
    Special.JournalPeriode.Value:=inttoStr(y)+'/'+FormatFloat('00',m);
    Special.JournalCodeJrnx.Value:='CL';
    Special.JournalJour.Value:=d;
    Special.JournalCode.Value:='CL';
    Special.JournalTiers.Value:='';
    Special.JournalDateEsc.Value:=date;
    Special.Journal.post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Erreur d''écrirure Clôture',mtError, [mbOK],0);
      Special.Journal.cancel;
      Result:=false;
      Exit;
    end;
  end;
  Special.EltJrn.open;
end;

procedure TFEtatCourant.fafao;
begin
  edit1.text:='0';
  edit2.text:='Z';
  case mody of
    0:begin
        GroupBox1.visible:=false;
      end;
    1:begin
        GroupBox1.visible:=true;
      end;
    2:begin
        if EcrireJournal then QuickRep.preview;
      end;
  end;
end;
{
procedure TFEtatCourant.SelectEcriture(etat:shortint);
begin
  DASQL.SuiviTiers.close;
  DASQL.SuiviTiers.sql.clear;
  DASQL.SuiviTiers.sql.Add('select * from Journal a, EltJrn b, regleme c');
  DASQL.SuiviTiers.sql.Add('where (b.Compte>=:x)and(b.Compte<=:y)');
  DASQL.SuiviTiers.sql.Add('and (a.Numero=b.Journal)');
  DASQL.SuiviTiers.sql.Add('and (b.Numero=c.NumSource)');
  case etat of
    0:begin
      DASQL.SuiviTiers.sql.Add('and (b.Debit=''D'')');
    end;
    1:begin
      DASQL.SuiviTiers.sql.Add('and (b.Debit=''C'')');
    end;
  end;
  DASQL.SuiviTiers.sql.Add('order by compte');
end;
}
procedure TFEtatCourant.Rafraichir;
type
    mot=record
      pos:shortint;
      long:shortint;
    end;
    st10=string[10];
var annee:integer;
    dtfin:TDateTime;
    Numcpt:string;
    y,m,d,i,j,l,pos:word;
    vm:array[1..5]of mot;
    A:array[1..6]of st10;
    sq,text8,text7:string;
begin
  text8:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then text8:=text8+copy(Edit8.text,i,1);
  text7:='';
  for i:=1 to length(Edit7.text) do
    if copy(Edit7.text,i,1)<>',' then text7:=text7+copy(Edit7.text,i,1);
  annee:=StrToInt(edit4.text);
  dtfin:=MetterFinMois(annee,ComboBox2.ItemIndex+1);
  DecodeDate(dtfin,y,m,d);
  stdaty:=inttostr(D)+' '+special.stmois[ComboBox2.itemindex+1]+' '+edit4.text;
  {Expresiona;}
  perio:=edit4.text+'/'+FormatFloat('00',ComboBox2.itemindex+1);

  DASQL.Balance.Close;
  DASQL.Balance.SQL.clear;
  {Tri par nom de tiers}
  if not CheckBox9.Checked then
    DASQL.Balance.SQL.Add('select * from sel1EltJrn a')
   else
    DASQL.Balance.SQL.Add('select * from sel1ReEltJrn a');
  DASQL.Balance.SQL.Add('where (a.compte>=''' +edit1.text+''')and(a.compte<'''+edit2.text+'Z'+''')');
  DASQL.Balance.SQL.Add('and (a.periode<='''+perio+''')');
  if CodeAnalytique.Checked then
     DASQL.Balance.SQL.Add('and (a.code_analytique='''+DBLookupComboBox1.keyValue+ ''')');
  if CheckBox6.Checked and (edit1.text>='40')and(edit2.text<'5')and(mody=1) then
  begin
    Special.NumCp.Open;
    Special.NumCp.First;
    while not Special.NumCp.EOF do
    begin
      Special.NumCp.Edit;
      NumCpt:=Copy(Special.NumCpNumCpt.Value,1,strtoint(Edit6.text));
      while length(NumCpt)<strtoint(Edit6.text) do NumCpt:=NumCpt+'0';
      Special.NumCpOGroupe.Value:=strtoint(NumCpt);
      Special.NumCp.Edit;
      Special.NumCp.Next;
    end;
  end
  else
  begin
    if panel4.visible then
    begin
      i:=1;
      for j:=1 to 5 do begin vm[j].pos:=0;vm[j].long:=0; end;
      j:=1;
      pos:=1;
      while i<length(Edit8.text)+1 do
      begin
        if (copy(Edit8.text,i,1)<>'?')and(copy(Edit8.text,i,1)<>',') then
        begin
          vm[j].pos:=pos;
          l:=0;
          while (copy(Edit8.text,i+l,1)<>'?')and(copy(Edit8.text,i+l,1)<>',') do l:=l+1;
          vm[j].long:=l;i:=i+l;pos:=pos+l;
          ShowMessage(inttostr(vm[j].pos)+' '+inttostr(vm[j].long));
          j:=j+1;
        end
        else
        begin
          if copy(Edit8.text,i,1)<>',' then pos:=pos+1;
          i:=i+1;
        end;
      end;
      A[1]:='a.A1';A[2]:='a.A2';A[3]:='a.A3';A[4]:='a.A4';A[5]:='a.A5';A[6]:='a.A6';
      for j:=1 to 5 do
        if vm[j].pos>0 then
        begin
          sq:='';
          for i:=vm[j].pos  to vm[j].pos+vm[j].long-1 do
            if sq='' then sq:=sq+A[i]
            else sq:=sq+'+'+A[i];
          DASQL.Balance.SQL.Add('and ('+sq+'>='''+copy(text8,vm[j].pos,vm[j].long)+''') ');
          ShowMessage('and ('+sq+'>='''+copy(text8,vm[j].pos,vm[j].long)+''') ');
          DASQL.Balance.SQL.Add('and ('+sq+'<='''+copy(text7,vm[j].pos,vm[j].long)+''') ');
          ShowMessage('and ('+sq+'<='''+copy(text7,vm[j].pos,vm[j].long)+''') ');
        end;
    end;
  end;
  if CheckOuverture.Checked  then
    DASQL.Balance.SQL.Add('and (a.Typ=4)');
  DASQL.Balance.SQL.Add('order by a.compte');
  QRGroup8.Expression:='Balance.Compte';
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('select periode, count(*) from sel1eltjrn group by periode order by  periode');
  PStockee.Operation1.Open;
  DataSource5.DataSet := PStockee.Operation1;
  Memo1.Lines:=DASQL.Balance.SQL;
  Memo1.Lines.Add(DASQL.Balance.Connection.DefaultDatabase);
  DASQL.Balance.Open;
  if length(Edit6.text)=0 then edit6.text:='2';

  if mody=0 then
  begin
    if NOT CheckOuverture.Checked then
      QRLabel2.caption:= 'BALANCE GENERALE AU '+ inttostr(D)+' '
                      +special.stmois[ComboBox2.itemindex+1]+' '+edit4.text
    else
      QRLabel2.caption:= 'BALANCE GENERALE AU '+ FormatDateTime('dd\mm\yyyy',Commun.SocieteExerDeb.Value);
    QRGroup8.Expression:='Balance.NumGene';
    QRExpr45.Expression:='Balance.NumGene';
    QRExpr46.Expression:='Balance.IntitGene';
    QRGroup5.Expression:='COPY(Balance.Compte, 1, 1)';
    QRExpr44.Expression:='COPY(Balance.Compte, 1, 1)';

    QRGroup1.Expression:='COPY(Balance.NumGene, 1,'+Edit6.text+' )';
    QRExpr27.Expression:='COPY(Balance.NumGene, 1,'+Edit6.text+' )';
    QRExpr48.Expression:='COPY(Balance.NumGene, 1,'+Edit6.text+' )';

    QRGroup2.Expression:='COPY(Balance.NumGene, 1,'+Edit5.text+' )';
    QRExpr18.Expression:='COPY(Balance.NumGene, 1,'+Edit5.text+' )';
    QRExpr21.Expression:='COPY(Balance.NumGene, 1,'+Edit5.text+' )';


    QRGroup3.Expression:='COPY(Balance.NumGene, 1,'+Edit9.text+' )';
    QRExpr9.Expression:='COPY(Balance.NumGene, 1,'+Edit9.text+' )';

    if CheckOuverture.Checked then
      QRLabel113.Caption:='Ouverture'
    else
      QRLabel113.Caption:='';
    //DASQL.EnregistreInfoImpression(stdaty,Commun.SocieteCode.Value,'Balance générale',edit1.text,edit2.text);
  end
  else
  begin
    DASQL.SelNumCpt.close;
    DASQL.SelNumCpt.Parameters[0].value:=edit1.text;
    DASQL.SelNumCpt.open;
    QRLabel2.caption:='BALANCE AUXILIAIRE '+EnleveBlancDroite(DASQL.SelNumCptIntitule.Value);
    QRExpr45.Expression:='Balance.Compte';
    QRExpr46.Expression:='Balance.Intitule';
    QRGroup5.Expression:='COPY(Balance.Compte, 1, 2)';
    QRExpr44.Expression:='COPY(Balance.Compte, 1, 2)';

    QRGroup1.Expression:='COPY(Balance.Compte, 1,'+Edit6.text+' )';
    QRExpr27.Expression:='COPY(Balance.Compte, 1,'+Edit6.text+' )';
    QRExpr48.Expression:='COPY(Balance.Compte, 1,'+Edit6.text+' )';

    QRGroup2.Expression:='COPY(Balance.Compte, 1,'+Edit5.text+' )';
    QRExpr18.Expression:='COPY(Balance.Compte, 1,'+Edit5.text+' )';
    QRExpr21.Expression:='COPY(Balance.Compte, 1,'+Edit5.text+' )';

    QRGroup3.Expression:='COPY(Balance.Compte, 1,'+Edit9.text+' )';
    QRExpr9.Expression:='COPY(Balance.Compte, 1,'+Edit9.text+' )';

    QRLabel20.Caption:='';
    QRLabel16.Caption:='Total ';
    QRExpr47.Expression:='COPY(Balance.Compte, 1, 2)';
    if CheckOuverture.Checked then
      QRLabel113.Caption:='Ouverture'
    else
      QRLabel113.Caption:=stdaty;
    DASQL.EnregistreInfoImpression(FormatDateTime('dd mmmm yyyy',date),Commun.SocieteCode.Value,'Balance auxiliaire',edit1.text,edit2.text);

  end;
  if QRGroup5.Expression>QRGroup1.Expression then QRGroup5.Expression:=QRGroup1.Expression;
  if QRGroup5.Expression=QRGroup1.Expression then QRGroup1.Height:=0;
  if QRGroup1.Expression>QRGroup2.Expression then QRGroup1.Expression:=QRGroup2.Expression;
  if QRGroup1.Expression=QRGroup2.Expression then QRGroup2.Height:=0;
end;

procedure TFEtatCourant.SpeedButton1Click(Sender: TObject);
var k:string;
begin
  if length(Edit2.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit2.text:=Commun.TemponString1.Value;
end;

procedure TFEtatCourant.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFEtatCourant.SpeedButton8Click(Sender: TObject);
var k:string;
begin
  if length(Edit1.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false ,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit1.text:=Commun.TemponString1.Value;
  Edit2.text:=Commun.TemponString1.Value;
end;

procedure TFEtatCourant.UpDown2Click(Sender: TObject; Button: TUDBtnType);
var annee:word;
begin
  try
    annee:=strtoint(edit3.text);
    if Button=btNext then annee:=annee+1;
    if Button=btPrev then annee:=annee-1;
    edit3.text:=inttostr(annee);
  except
  end;
end;

procedure TFEtatCourant.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var annee:word;
begin
  try
    annee:=strtoint(edit4.text);
    if Button=btNext then annee:=annee+1;
    if Button=btPrev then annee:=annee-1;
    edit4.text:=inttostr(annee);
  except
  end;
end;

{procedure TFEtatCourant.EcrireElt(compte1:string;audebit:boolean;montant:real);
begin
  PStockee.RIncreEltJrn.Open;
  PStockee.RIncreEltJrn.Requery;
  Special.EltJrn.insert;
  Special.EltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value+1;
  Special.EltJrnJournal.Value:='CL';
  Special.EltJrnCompte.Value:=Compte1;
  Special.EltJrnLibelle.Value:='Clôture';
  if audebit then Special.EltJrnDebit.Value:='D'
  else Special.EltJrnDebit.Value:='C';
  Special.EltJrnMontant.Value:=montant;
  Special.EltJrnContrepartie.Value:='9999999';
  Special.EltJrnNbContre.Value:=0;
  Special.EltJrnNumFact.Value:='';
  Special.EltJrn.post;
end;
}

procedure TFEtatCourant.CheckBox2Click(Sender: TObject);
begin
  GroupBox3.Visible:=CheckBox2.checked;
end;

procedure TFEtatCourant.CheckBox1Click(Sender: TObject);
begin
  GroupBox2.Visible:=CheckBox1.checked;
end;

procedure TFEtatCourant.CheckBox3Click(Sender: TObject);
begin
  GroupBox1.Visible:=CheckBox3.checked;
end;

procedure TFEtatCourant.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel46.Caption:='Ag : '+Commun.SocieteCode.Value;
  DASQL.SelToPrint2.close;
  DASQL.SelToPrint2.sql.clear;
  DASQL.SelToPrint2.sql.Add('select * from Journaux a,');
  DASQL.SelToPrint2.sql.Add('Journal b, EltJrn c');
  DASQL.SelToPrint2.sql.Add('where (a.Code= b.codejrnx)and(b.Code= c.journal)');
  if GroupBox3.Visible then
    DASQL.SelToPrint2.sql.Add('and (b.CodeJrnx='''+edit12.text+''')')
  else
    DASQL.SelToPrint2.sql.Add('and (a.typ<4)');
  if GroupBox2.Visible then
  begin
    DASQL.SelToPrint2.sql.Add('and (b.Periode>='''+edit3.text+'/'+
                              FormatFloat('00',ComboBox1.itemindex+1)+''')');
    DASQL.SelToPrint2.sql.Add('and (b.Periode<='''+edit4.text+'/'+
                              FormatFloat('00',ComboBox2.itemindex+1)+''')');
  end;
  DASQL.SelToPrint2.sql.Add('order by b.Periode, b.Jour, b.code, c.Debit desc');
  DASQL.SelToPrint2.open;
end;

procedure TFEtatCourant.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var  c:integer;
begin
  if GroupBox3.Visible then QRLabel80.Caption:=Edit13.Text;
  QRLabel82.Caption:='Ag : '+Commun.SocieteCode.Value;
  DASQL.SelToPrint2.close;
  DASQL.SelToPrint2.sql.clear;
  DASQL.SelToPrint2.sql.Add('select * from Journaux a,');
  DASQL.SelToPrint2.sql.Add('Journal b, EltJrn c');
  DASQL.SelToPrint2.sql.Add('where (a.Code= b.codejrnx)and(b.Code= c.journal)');
  if GroupBox3.Visible then
    DASQL.SelToPrint2.sql.Add('and (b.CodeJrnx='''+edit12.text+''')')
  else
    DASQL.SelToPrint2.sql.Add('and (a.typ<4)');
  if GroupBox2.Visible then
  begin
    if RadioGroup2.ItemIndex=0 then
      DASQL.SelToPrint2.sql.Add('and (b.Periode<'''+edit3.text+'/'+
                              FormatFloat('00',ComboBox1.itemindex+1)+''')')
    else
      DASQL.SelToPrint2.sql.Add('and (b.DateEsc<'+MaskEdit1.Text+')');
    c:=DASQL.SelToPrint2.sql.Count;
    RepMDebit:=0;
    RepMCredit:=0;
    DASQL.SelToPrint2.open;
    while not DASQL.SelToPrint2.EOF do
    begin
      RepMDebit :=RepMDebit  + DASQL.SelToPrint2MDebit.Value;
      RepMCredit:=RepMCredit + DASQL.SelToPrint2MCredit.Value;
      DASQL.SelToPrint2.Next;
    end;
    DASQL.SelToPrint2.Close;

    if RadioGroup2.ItemIndex=0 then
    begin
      DASQL.SelToPrint2.sql[c-1]:='and (b.Periode>='''+edit3.text+'/'+
                              FormatFloat('00',ComboBox1.itemindex+1)+''')';
      DASQL.SelToPrint2.sql.Add('and (b.Periode<='''+edit4.text+'/'+
                              FormatFloat('00',ComboBox2.itemindex+1)+''')');
    end
    else
    begin
      DASQL.SelToPrint2.sql[c-1]:='and (b.DateEsc>='+MaskEdit1.Text+')';
      DASQL.SelToPrint2.sql.Add('and (b.Periode<='''+MaskEdit2.Text+')');
    end;
  end;
  case RadioGroup1.ItemIndex of
    0:DASQL.SelToPrint2.sql.Add('order by b.Periode, b.DateEsc, b.code, c.Debit desc');
    1:DASQL.SelToPrint2.sql.Add('order by b.Periode, b.code, b.DateEsc, c.Debit desc');
    2:DASQL.SelToPrint2.sql.Add('order by b.Periode, b.code, c.Compte');
  end;
  DASQL.SelToPrint2.open;

  QRLabel68.Caption:= FormatFloat('#,##0',RepMDebit);
  QRLabel69.Caption:= FormatFloat('#,##0',RepMCredit);
  if RepMDebit=0 then
    QRLabel71.Caption:='                                                      '+
                       '                                                      '
  else
    QRLabel71.Caption:='';
  QRLabel86.Caption:='';
end;


procedure TFEtatCourant.SpeedButton7Click(Sender: TObject);
var edit6tal,edit1tal,edit2tal,texte:string;
  i:integer;
begin
  if not ((Edit6.text<=Edit5.text)and(Edit5.text<=Edit9.text))then
  begin
    ShowMessage('Vérifiez les longueurs des titres');
    exit;
  end;
  texte:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then texte:=texte+copy(Edit8.text,i,1);
  //if (length(texte)<6)and panel4.visible then
  //begin
    //MessageDlg('Compléter le code analytique à 6 chiffre ou par ?',mtConfirmation,[mbOk],0);
    //exit;
  //end;
  edit6tal:=edit6.text;
  edit1tal:=edit1.text;
  edit2tal:=edit2.text;

  case mody of
    0:begin
        {edit6.text:='4';
        mody:=1;
        edit1.text:='40';
        edit2.text:='40';
        QuickRep.PrePARE;
        edit1.text:='41';
        edit2.text:='41';
        QuickRep.Prepare;

        mody:=0;
        edit1.text:=edit1tal;
        edit2.text:=edit2tal;
        edit6.text:=edit6tal;}
        QuickRep.Preview;
      end;
    1:QuickRep.Preview;
    2:QuickRep.Preview;
    4:QuickRep1.Preview;
    5:{if GroupBox3.visible and  (edit12.text='AP') then
       QuickRep1.preview else} QuickRep2.Preview;
    6:QuickRep3.Preview;//Cummul des comptes
  end;
end;

procedure TFEtatCourant.Edit6Change(Sender: TObject);

begin
  if length(Edit6.text)>0 then
  try
    strtoint(Edit6.text);
  except
    on EConvertError do
    begin
      MessageDlg('Entrez un nombre',mtError,[mbok],0);
      edit6.text:='2';
    end;
  end;
end;

procedure TFEtatCourant.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (EnleveBlancDroite(DASQL.BalanceCodejrnx.Value)='AN')or (DASQL.BalancePeriode.Value<perio) then
  begin
    DebitPrec:=Debitprec+ DASQL.BalanceBDebit.Value;
    CreditPrec:=Creditprec+DASQL.BalanceBCredit.Value;
  end
  else
  begin
     MvtDebit:=MvtDebit+DASQL.BalanceBDebit.Value;
     MvtCredit:=MvtCredit+DASQL.BalanceBCredit.Value;
  end;
  DebitNouv:=DebitNouv+ DASQL.BalanceBDebit.Value;
  CreditNouv:=CreditNouv+DASQL.BalanceBCredit.Value;
end;

procedure TFEtatCourant.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR auxi:string;
reussi,OII:boolean;
begin
  reussi:=false;
  QRBand4.Height:=21;
  if mody=0 then
  begin
    if (vitave.cpt<>DASQL.BalanceNumGene.Value)then
      vitave.cpt:=DASQL.BalanceNumGene.Value
    else
    begin
      QRBand4.Height:=0;
      exit;
    end;
  end;

  if Special.IsAuxiliaire(DASQL.BalanceCompte.Value,false,auxi)and (mody=0) then
  begin
    DASQL.Auxiliaire.close;
    DASQL.Auxiliaire.parameters[0].Value:=Auxi;
    DASQL.Auxiliaire.open;
    OII:=Special.OuvreInfoImpression('',Commun.SocieteCode.Value,'Balance auxiliaire',Auxi,Auxi);
    if OII and (not DASQL.Auxiliaire.EOF) then
      reussi:=true
    else
      MessageDlg('Lancez la balance auxiliaire de '+auxi+' svp pour améliorer la balance',mterror,[mbok],0);
  end;
  if Reussi then
  begin
    DebitPrec:=DASQL.AuxiliaireDebitPrec.Value;
    CreditPrec:=DASQL.AuxiliaireCreditPrec.Value;
    MvtDebit:=DASQL.AuxiliaireMvtDebit.Value;
    MvtCredit:=DASQL.AuxiliaireMvtCredit.Value;
    DebitNouv:=DASQL.AuxiliaireDebitNouv.Value;
    CreditNouv:=DASQL.AuxiliaireCreditNouv.Value;

    QRLabel17.caption:=FormatFloat('#,##0',DebitPrec);
    QRLabel32.caption:=FormatFloat('#,##0',CreditPrec);
    DebitPrecSSGroupe:=DebitPrecSSGroupe+DebitPrec;
    CreditPrecSSGroupe:=CreditPrecSSGroupe+CreditPrec;
    QRLabel8.caption:=FormatFloat('#,##0',DebitNouv);
    QRLabel9.caption:=FormatFloat('#,##0',CreditNouv);
    DebitNouvSSGroupe:=DebitNouvSSGroupe+DebitNouv;
    CreditNouvSSGroupe:=CreditNouvSSGroupe+CreditNouv;
  end
  else
  begin
    if (DebitPrec-Creditprec) >0 then
    begin
      QRLabel17.caption:=FormatFloat('#,##0',DebitPrec-Creditprec);
      QRLabel32.caption:='0';
      DebitPrecSSGroupe:=DebitPrecSSGroupe+DebitPrec-Creditprec;
    end
    else
    begin
       QRLabel17.caption:='0';
       QRLabel32.caption:=FormatFloat('#,##0',-DebitPrec+Creditprec);
       CreditPrecSSGroupe:=CreditPrecSSGroupe+CreditPrec-Debitprec;
    end;
    {Nouveau solde }
    if (DebitNouv-CreditNouv)>0 then
    begin
      QRLabel8.caption:=FormatFloat('#,##0',DebitNouv-CreditNouv);
      QRLabel9.caption:='0';
      DebitNouvSSGroupe:=DebitNouvSSGroupe+DebitNouv-CreditNouv;
      {DebitNouvPage:=DebitNouvPage+DebitNouv-CreditNouv;}
    end
    else
    begin
       QRLabel8.caption:='0';
       QRLabel9.caption:=FormatFloat('#,##0',-DebitNouv+CreditNouv);
       CreditNouvSSGroupe:=CreditNouvSSGroupe-DebitNouv+CreditNouv;
     end;
  end;

  QRLabel33.caption:=FormatFloat('#,##0',MvtDebit);
  QRLabel34.caption:=FormatFloat('#,##0',MvtCredit);
  if CheckBox4.Checked then
  begin
    if ((DebitPrec-Creditprec)=0)and(MvtDebit=0)and(MvtCredit=0) then
      QRBand4.Height:=0
    else
      QRBand4.Height:=19;
  end
  else
  begin
    QRBand4.Height:=19;
  end;

  MvtDebitPage:=MvtDebitPage+MvtDebit;
  MvtCreditPage:=MvtCreditPage+MvtCredit;

  MvtDebitSSGroupe:=MvtDebitSSGroupe+MvtDebit;
  MvtCreditSSGroupe:=MvtCreditSSGroupe+MvtCredit;

  DebitPrec:=0;
  CreditPrec:=0;

  DebitNouv:=0;
  CreditNouv:=0;

  MvtDebit:=0;
  MvtCredit:=0;
end;

procedure TFEtatCourant.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel35.caption:=FormatFloat('#,##0',DebitPrecGroupe);
  QRLabel36.caption:=FormatFloat('#,##0',CreditPrecGroupe);

  {QRLabel37.caption:=FormatFloat('#,###',MvtDebitPage);
  QRLabel38.caption:=FormatFloat('#,###',MvtCreditPage);}

  QRLabel37.caption:=FormatFloat('#,##0',MvtDebitGroupe);
  QRLabel38.caption:=FormatFloat('#,##0',MvtCreditGroupe);

  QRLabel19.caption:=FormatFloat('#,##0',DebitNouvGroupe);
  QRLabel43.caption:=FormatFloat('#,##0',CreditNouvGroupe);

  DebitPrecClasse:=DebitPrecClasse+DebitPrecGroupe;
  CreditPrecClasse:=CreditPrecClasse+CreditPrecGroupe;

  MvtDebitClasse:=MvtDebitClasse+MvtDebitGroupe;
  MvtCreditClasse:=MvtCreditClasse+MvtCreditGroupe;

  DebitNouvClasse:=DebitNouvClasse+DebitNouvGroupe;
  CreditNouvClasse:=CreditNouvClasse+CreditNouvGroupe;
{
  DebitPrecPage:=DebitPrecPage+DebitPrecGroupe;
  CreditPrecPage:=CreditPrecPage+CreditPrecGroupe;
}
  DebitPrecGroupe:=0;
  CreditPrecGroupe:=0;

  MvtDebitGroupe:=0;
  MvtCreditGroupe:=0;

{  DebitNouvPage:=DebitNouvPage+DebitNouvGroupe;
  CreditNouvPage:=CreditNouvPage+CreditNouvGroupe;
}
  DebitNouvGroupe:=0;
  CreditNouvGroupe:=0;
end;

procedure TFEtatCourant.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel39.caption:=FormatFloat('#,##0',DebitPrecClasse);
  QRLabel40.caption:=FormatFloat('#,##0',CreditPrecClasse);

 {   QRLabel41.caption:=FormatFloat('#,###',MvtDebitPage);
    QRLabel42.caption:=FormatFloat('#,###',MvtCreditPage);}
  QRLabel41.caption:=FormatFloat('#,##0',MvtDebitClasse);
  QRLabel42.caption:=FormatFloat('#,##0',MvtCreditClasse);

  QRLabel44.caption:=FormatFloat('#,##0',DebitNouvClasse);
  QRLabel50.caption:=FormatFloat('#,##0',CreditNouvClasse);

  DebitPrecGene:=DebitPrecGene+DebitPrecClasse;
  CreditPrecGene:=CreditPrecGene+CreditPrecClasse;

  MvtDebitGene:=MvtDebitGene+MvtDebitClasse;
  MvtCreditGene:=MvtCreditGene+MvtCreditClasse;

  DebitNouvGene:=DebitNouvGene+DebitNouvClasse;
  CreditNouvGene:=CreditNouvGene+CreditNouvClasse;

  DebitPrecClasse:=0;
  CreditPrecClasse:=0;

  MvtDebitClasse:=0;
  MvtCreditClasse:=0;

  DebitNouvClasse:=0;
  CreditNouvClasse:=0;

end;

procedure TFEtatCourant.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var auxi:string;
begin
  QRLabel10.Caption:='              ';
  QRSysData4.Width:=0;
  QRLabel52.caption:=FormatFloat('#,##0',DebitPrecGene);
  QRLabel53.caption:=FormatFloat('#,##0',CreditPrecGene);

  {  QRLabel54.caption:=FormatFloat('#,###',MvtDebitPage);
    QRLabel57.caption:=FormatFloat('#,###',MvtCreditPage); }
  QRLabel54.caption:=FormatFloat('#,##0',MvtDebitGene);
  QRLabel57.caption:=FormatFloat('#,##0',MvtCreditGene);

  QRLabel45.caption:=FormatFloat('#,##0',DebitNouvGene);
  QRLabel58.caption:=FormatFloat('#,##0',CreditNouvGene);

  if Special.IsAuxiliaire(edit1.text,true,auxi) and
     (Caption='Balance Auxiliaire')and(EnleveBlancDroite(edit1.text)+'Z'=EnleveBlancDroite(edit2.text)) then
  begin
    DASQL.Auxiliaire.close;
    DASQL.Auxiliaire.parameters[0].value:=edit1.text;
    DASQL.Auxiliaire.open;
    DASQL.Auxiliaire.edit;
    DASQL.AuxiliaireTypa.Value:=edit1.text;
    DASQL.AuxiliaireDebitPrec.Value:=DebitPrecGene;
    DASQL.AuxiliaireCreditPrec.Value:=CreditPrecGene;
    DASQL.AuxiliaireMvtDebit.Value:=MvtDebitGene;
    DASQL.AuxiliaireMvtCredit.Value:=MvtCreditGene;
    DASQL.AuxiliaireDebitNouv.Value:=DebitNouvGene;
    DASQL.AuxiliaireCreditNouv.Value:=CreditNouvGene;
    DASQL.Auxiliaire.post;
  end;
end;

procedure TFEtatCourant.Edit1Change(Sender: TObject);
begin
  if mody=1 then
  begin
    Edit2.text:=Edit1.text;
  end;
end;

procedure TFEtatCourant.QRExpr44Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel4.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatCourant.QRExpr27Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel18.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatCourant.QRBand20BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetailCount<BalanceCount then
  begin
    QRLabel121.Caption:='A reporter';
    QRLabel115.caption:=FormatFloat('#,##0',DebitPrecPage+DebitPrecSSGroupe);
    QRLabel116.caption:=FormatFloat('#,##0',CreditPrecPage+CreditPrecSSGroupe);

    QRLabel117.caption:=FormatFloat('#,##0',MvtDebitPage);
    QRLabel118.caption:=FormatFloat('#,##0',MvtCreditPage);

    QRLabel119.caption:=FormatFloat('#,##0',DebitNouvPage+DebitNouvSSGroupe);
    QRLabel120.caption:=FormatFloat('#,##0',CreditNouvPage+CreditNouvSSGroupe);
  end
  else
  begin
    QRLabel115.Caption:='';
    QRLabel121.Caption:='';
    QRLabel116.Caption:='';
    QRLabel117.Caption:='';
    QRLabel118.Caption:='';
    QRLabel119.Caption:='';
    QRLabel120.Caption:='';
  end;

end;




procedure TFEtatCourant.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QuickRep.PageNumber=1 then
  begin
    QRLabel5.Caption:='';
    QRLabel59.caption:='';
    QRLabel60.caption:='';

    QRLabel63.caption:='';
    QRLabel64.caption:='';

    QRLabel65.caption:='';
    QRLabel66.caption:='';
  end
  else
  begin
    QRLabel5.Caption:='Reports';
    QRLabel59.caption:=FormatFloat('#,##0',DebitPrecPage+DebitPrecSSGroupe);
    QRLabel60.caption:=FormatFloat('#,##0',CreditPrecPage+CreditPrecSSGroupe);

    QRLabel63.caption:=FormatFloat('#,##0',MvtDebitPage);
    QRLabel64.caption:=FormatFloat('#,##0',MvtCreditPage);

    QRLabel65.caption:=FormatFloat('#,##0',DebitNouvPage+DebitNouvSSGroupe);
    QRLabel66.caption:=FormatFloat('#,##0',CreditNouvPage+CreditNouvSSGroupe);
  end;
end;

procedure TFEtatCourant.QRSysData3Print(sender: TObject;
  var Value: String);
begin
  DetailCount:=Strtoint(Value);
end;

procedure TFEtatCourant.SpeedButton3Click(Sender: TObject);
begin
  AsehoyJournaux(2);
  edit12.text:=Special.JournauxCode.Value;
  edit13.text:=Special.JournauxIntitule.Value;
end;

procedure TFEtatCourant.QRExpr45Print(sender: TObject; var Value: String);
begin
  Compte2:=Value;
end;

procedure TFEtatCourant.QRLabel8Print(sender: TObject; var Value: String);
begin
  Avadihoreal(Value,Debit);
end;

procedure TFEtatCourant.QRLabel9Print(sender: TObject; var Value: String);
begin
  Avadihoreal(Value,Credit);
end;

procedure TFEtatCourant.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if CheckBox5.Checked then
  begin
    if compte2tal<> Compte2 then // hilana @ miverina indroa
    try
      Special.PrepCons.Insert;
      Special.PrepConsCompte.Value:=Compte2;
      Compte2tal:= Compte2;
      Special.PrepConsDebitAv.Value:=DebitAv;
      Special.PrepConsCreditAv.Value:=CreditAv;
      Special.PrepConsDebitPer.Value:=DebitPer;
      Special.PrepConsCreditPer.Value:=CreditPer;
      Special.PrepConsDebit.Value:=Debit;
      Special.PrepConsCredit.Value:=Credit;
      Special.PrepConsAutre.Value:='Band:'+QRGroup8.Expression;
      Special.PrepConsAutre.Value:=' Expr:'+QRExpr45.Expression;
      Special.PrepConsIntitul.Value:=Special.PrepConsIntitule.Value;
      Special.PrepCons.Post;
    except
      On EDataBaseError do ;
    end;
  end;
end;

procedure TFEtatCourant.SpeedButton2Click(Sender: TObject);
var Auxi:string;
begin
  AsehoyLstAuxi(auxi);
  if length(auxi)>0 then
  begin
    Edit1.text:=EnleveBlancDroite(auxi);
    Edit2.text:=EnleveBlancDroite(auxi)+'Z';
  end;
end;

procedure TFEtatCourant.CheckBox6Click(Sender: TObject);
begin
  if not((edit1.text>='40')and(edit2.text<'5')and(mody=1)) then
  begin
    ShowMessage('N''a pas d''effet que pour les balances auxiliaires des tiers');
    CheckBox6.Checked:=false;
  end;
end;

procedure TFEtatCourant.CodeAnalytiqueClick(Sender: TObject);
begin
  Panel4.Visible := CodeAnalytique.Checked;
end;

procedure TFEtatCourant.Edit8Change(Sender: TObject);
var texte:string;
  i:integer;
begin
  texte:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then texte:=texte+copy(Edit8.text,i,1);
  Commun.SelPostAnal.Close;
  Commun.SelPostAnal.Parameters[0].Value:=texte;
  Commun.SelPostAnal.Open;
  QRLabel51.Caption:=Commun.SelPostAnalIntitule.Value ;
  edit7.text:=edit8.text;
end;

procedure TFEtatCourant.QRExpr18Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel49.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatCourant.FormShow(Sender: TObject);
begin
  edit8.text:='';
end;

procedure TFEtatCourant.SpeedButton4Click(Sender: TObject);
begin
    PStockee.ReInputation.close;
    PStockee.ReInputation.sql.clear;
    PStockee.ReInputation.sql.Add('UPDATE Journal INNER JOIN EltJrn ON Journal.Code = EltJrn.Journal ');
    PStockee.ReInputation.sql.Add('SET EltJrn.Compte ='''+Edit2.text+'''');
    PStockee.ReInputation.sql.Add('WHERE ((EltJrn.Compte)='''+Edit1.text+''')');
    if CheckBox2.Checked then {Journal}
      PStockee.ReInputation.sql.Add('and ((Journal.CodeJrnx)='''+Edit12.text+''')');
    if CheckBox1.checked then
    begin
      PStockee.ReInputation.sql.Add('and ((Journal.Periode)>='''+edit3.text+'/'+
                              FormatFloat('00',ComboBox1.itemindex+1)+''')');
      PStockee.ReInputation.sql.Add('and ((Journal.Periode)<='''+edit4.text+'/'+
                              FormatFloat('00',ComboBox2.itemindex+1)+''')');
    end;
    PStockee.ReInputation.execSQL;
end;

procedure TFEtatCourant.QRExpr9Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel67.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatCourant.QRGroup3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DASQL.BalanceCompte.Value>edit10.text then
  begin
    QRGroup3.Height:=24;
    QRGroup3.Frame.DrawTop:=true;
    QRGroup3.Frame.DrawBottom:=true;
  end
  else
  begin
    QRGroup3.Height:=0;
    QRGroup3.Frame.DrawBottom:=false;
  end;
  if edit5.text=edit9.text then
  begin
    QRGroup3.Height:=0;
    QRGroup3.Frame.DrawBottom:=false;
  end;
end;





procedure TFEtatCourant.QRExpr11Print(sender: TObject; var Value: String);
var Areporter:Real;
begin
  try
    AReporter:=StrToFloat(Value)+repMDebit;
    Value:=FormatFloat('#,##0',AReporter);
  except
  end;
end;

procedure TFEtatCourant.QRExpr12Print(sender: TObject; var Value: String);
var Areporter:Real;
begin
  try
    AReporter:=StrToFloat(Value)+repMCredit;
    Value:=FormatFloat('#,##0',AReporter);
  except
  end;
end;

procedure TFEtatCourant.QRExpr23Print(sender: TObject; var Value: String);
var  AReporter:real;
begin
  try
    AReporter:=StrToFloat(Value)+repMDebit;
    Value:=FormatFloat('#,##0',AReporter);
    QRLabel68.Caption:=Value;
  except
  end;
end;

procedure TFEtatCourant.QRExpr24Print(sender: TObject; var Value: String);
var  AReporter:real;
begin
  try
    AReporter:=StrToFloat(Value)+repMCredit;
    Value:=FormatFloat('#,##0',AReporter);
    QRLabel69.Caption:=Value;
  except
  end;
end;

procedure TFEtatCourant.QRBand9AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel86.Caption:='                                                      '+
                       '                                                      '
end;








procedure TFEtatCourant.QRBand11AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel71.Caption:='';
end;


procedure TFEtatCourant.QRLabel17Print(sender: TObject; var Value: String);
begin
  Avadihoreal(Value,DebitAv);

end;

procedure TFEtatCourant.QRLabel32Print(sender: TObject; var Value: String);
begin
  Avadihoreal(Value,CreditAv);

end;

procedure TFEtatCourant.QRLabel33Print(sender: TObject; var Value: String);
begin
  Avadihoreal(Value,DebitPer);

end;

procedure TFEtatCourant.QRLabel34Print(sender: TObject; var Value: String);
begin
  Avadihoreal(Value,CreditPer);

end;


procedure TFEtatCourant.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel89.caption:=FormatFloat('#,##0',DebitPrecSSGroupe);
  QRLabel90.caption:=FormatFloat('#,##0',CreditPrecSSGroupe);

  {QRLabel37.caption:=FormatFloat('#,###',MvtDebitPage);
  QRLabel38.caption:=FormatFloat('#,###',MvtCreditPage);}

  QRLabel123.caption:=FormatFloat('#,##0',MvtDebitSSGroupe);
  QRLabel124.caption:=FormatFloat('#,##0',MvtCreditSSGroupe);

  QRLabel125.caption:=FormatFloat('#,##0',DebitNouvSSGroupe);
  QRLabel126.caption:=FormatFloat('#,##0',CreditNouvSSGroupe);

  DebitPrecGroupe:=DebitPrecGroupe+DebitPrecSSGroupe;
  CreditPrecGroupe:=CreditPrecGroupe+CreditPrecSSGroupe;

  MvtDebitGroupe:=MvtDebitGroupe+MvtDebitSSGroupe;
  MvtCreditGroupe:=MvtCreditGroupe+MvtCreditSSGroupe;

  DebitNouvGroupe:=DebitNouvGroupe+DebitNouvSSGroupe;
  CreditNouvGroupe:=CreditNouvGroupe+CreditNouvSSGroupe;

  DebitPrecPage:=DebitPrecPage+DebitPrecSSGroupe;
  CreditPrecPage:=CreditPrecPage+CreditPrecSSGroupe;

  DebitPrecSSGroupe:=0;
  CreditPrecSSGroupe:=0;

  MvtDebitSSGroupe:=0;
  MvtCreditSSGroupe:=0;

  DebitNouvPage:=DebitNouvPage+DebitNouvSSGroupe;
  CreditNouvPage:=CreditNouvPage+CreditNouvSSGroupe;

  DebitNouvSSGroupe:=0;
  CreditNouvSSGroupe:=0;

end;

procedure TFEtatCourant.QRGroup7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRExpr30.Reset;
  if (nbcpt mod 2) = 0 then  QRGroup7.ForceNewPage:=true
  else QRGroup7.ForceNewPage:=false;
end;

procedure TFEtatCourant.QRGroup7AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  nbcpt:=nbcpt+1;
end;

procedure TFEtatCourant.QRExpr15Print(sender: TObject; var Value: String);
var mvalue:double;
begin
  avadihoreal(value,mvalue);
  TSDebit:=TSDebit+mvalue;
end;

procedure TFEtatCourant.QRExpr16Print(sender: TObject; var Value: String);
var mvalue:double;
begin
  avadihoreal(value,mvalue);
  TSCredit:=TSCredit+mvalue;
end;


procedure TFEtatCourant.QRBand24BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel102.Caption:=FormatFloat('#,##0',TSDebit);
  QRLabel103.Caption:=FormatFloat('#,##0',TSCredit);
  TSDebit:=0;
  TSCredit:=0;
end;

procedure TFEtatCourant.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    GroupBox5.Visible:=false;
    GroupBox4.Visible:=true;
    GroupBox2.Visible:=true;
  end
  else
  begin
    GroupBox5.Visible:=true;
    GroupBox4.Visible:=false;
    GroupBox2.Visible:=false;
  end

end;

procedure TFEtatCourant.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var year1,year2,month,day:word;
begin
  if CheckBox5.Checked then
  begin
    PStockee.Operation1.close;
    PStockee.Operation1.SQL.Clear;
    PStockee.Operation1.SQL.Add('DELETE FROM prepcons');
    PStockee.Operation1.ExecSQL;
    Special.PrepCons.close;
    Special.PrepCons.open;
  end;
  QRLabel114.Caption:='Ag : '+Commun.SocieteCode.Value;
  DecodeDate(Commun.SocieteExerDeb.Value,Year1,month,day);
  DecodeDate(Commun.SocieteExerDeb.Value,Year2,month,day);
  if year1=year2 then QRDBText62.caption:=inttostr(Year1)
  else  QRDBText62.caption:=inttostr(Year1)+'/'+inttostr(Year2);
  QRGroup8.Height:=0;
  QRBand1.Height:=0;
  Rafraichir;
  Special.DtImprBal.Requery;
  //DaSQL.SelDtImprBal.Requery;
  BalanceCount:=DASQL.Balance.RecordCount;
  DebitPrec:=0;DebitPrecSSGroupe:=0;DebitPrecGroupe:=0;DebitPrecClasse:=0;DebitPrecGene:=0;
  CreditPrec:=0;CreditPrecSSGroupe:=0;CreditPrecGroupe:=0;CreditPrecClasse:=0;CreditPrecGene:=0;
  MvtDebit:=0;MvtDebitSSGroupe:=0;MvtDebitGroupe:=0;MvtDebitClasse:=0;MvtDebitGene:=0;
  MvtCredit:=0;MvtCreditSSGroupe:=0;MvtCreditGroupe:=0;MvtCreditClasse:=0;MvtCreditGene:=0;
  DebitNouv:=0;DebitNouvSSGroupe:=0;DebitNouvGroupe:=0;DebitNouvClasse:=0;DebitNouvGene:=0;
  CreditNouv:=0;CreditNouvSSGroupe:=0;CreditNouvGroupe:=0;CreditNouvClasse:=0;CreditNouvGene:=0;

  Cpt3chiffretal:='';

  DebitPrecPage:=0;
  CreditPrecPage:=0;

  MvtDebitPage:=0;
  MvtCreditPage:=0;

  DebitNouvPage:=0;
  CreditNouvPage:=0;
end;

procedure TFEtatCourant.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  nbcpt:=0;
  TSDebit:=0;
  TSCredit:=0;
  QRGroup9.Height:=0;
  QRBand16.Height:=0;
  QRLabel101.Caption:='Ag:'+Commun.SocieteCode.Value;
  DASQL.SelCummul.close;
  DASQL.SelCummul.sql.clear;
  if not checkbox9.Checked then
  begin
    DASQL.SelCummul.sql.Add('select * from Sel1EltJrn a');
    DASQL.SelCummul.sql.Add('where (1=1)');
    {DASQL.SelCummul.sql.Add('and (a.typ<4)');}
  end
  else
  begin
    DASQL.SelCummul.sql.Add('select * from JournalEltResum b');
    {DASQL.SelCummul.sql.Add('and (a.typ<4)');}
  end;
  if CheckBox1.checked then
  begin
    DASQL.SelCummul.sql.Add('and (a.Periode>='''+edit3.text+'/'+
                              FormatFloat('00',ComboBox1.itemindex+1)+''')');
    DASQL.SelCummul.sql.Add('and (a.Periode<='''+edit4.text+'/'+
                              FormatFloat('00',ComboBox2.itemindex+1)+''')');
  end;
  if CheckBox3.checked then
  begin
    DASQL.SelCummul.sql.Add('and (a.Compte>='''+edit1.text+''')');
    DASQL.SelCummul.sql.Add('and (a.Compte<='''+edit2.text+'Z'')');
  end;
  DASQL.SelCummul.sql.Add('order by a.compte, a.periode, a.Journal');
  {for i:=0 to DASQL.SelCummul.sql.count-1 do
    showMessage(DASQL.SelCummul.sql[i]);}
  DASQL.SelCummul.open;
  QRLabel105.Caption:=EnleveBlancDroite(Commun.AdresseCptBQ.Value);
end;

procedure TFEtatCourant.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

procedure TFEtatCourant.SpeedButton9Click(Sender: TObject);
begin

  AsehoyJournaux(2);
  edit12.text:=Special.JournauxCode.Value;
  edit13.text:=Special.JournauxIntitule.Value;

end;

end.
