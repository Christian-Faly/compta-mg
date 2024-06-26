unit EtatCourant_U;

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
    BitBtn1: TBitBtn;
    SpeedButton8: TSpeedButton;
    SpeedButton1: TSpeedButton;
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
    SourceBalance: TDataSource;
    SpeedButton3: TSpeedButton;
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
    Edit5: TEdit;
    CheckBox8: TCheckBox;
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
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape29: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
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
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    DataSource5: TDataSource;
    CheckBox5: TCheckBox;
    Label13: TLabel;
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
    procedure Edit1Change(Sender: TObject);
    procedure QRSysData3Print(sender: TObject; var Value: String);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QRExpr45Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CodeAnalytiqueClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
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
    procedure QRGroup7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup7AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRExpr15Print(sender: TObject; var Value: String);
    procedure QRExpr16Print(sender: TObject; var Value: String);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup2Click(Sender: TObject);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure QRDBText40Print(sender: TObject; var Value: String);
    procedure QRDBText27Print(sender: TObject; var Value: String);
    procedure QRDBText29Print(sender: TObject; var Value: String);
    procedure QRDBText25Print(sender: TObject; var Value: String);
    procedure QRDBText28Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRDBText26Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRBand10AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { D�clarations priv�es }
    mody:shortint;
    DebitPrec,DebitPrecGroupe,DebitPrecSSGroupe,DebitPrecClasse,DebitPrecGene,
    CreditPrec,CreditPrecssGroupe,CreditPrecGroupe,CreditPrecClasse,CreditPrecGene,
    MvtDebit,MvtDebitSSGroupe,MvtDebitGroupe,MvtDebitClasse,MvtDebitGene,
    MvtCredit,MvtCreditSSGroupe,MvtCreditGroupe,MvtCreditClasse,MvtCreditGene,
    DebitNouv,DebitNouvSSGroupe,DebitNouvGroupe,DebitNouvClasse,DebitNouvGene,
    CreditNouv,CreditNouvSSGroupe,CreditNouvGroupe,CreditNouvClasse,CreditNouvGene,
    DebitPrecPage,CreditPrecPage,MvtDebitPage,MvtCreditPage,
    DebitNouvPage,CreditNouvPage,DebitAv,CreditAv,DebitPer,CreditPer,Debit,Credit:Int64;

    periode_de,periode_a,cpt3chiffretal:string;
    printreport,NoChange:boolean;
    compte2,compte2tal:string;
    balanceCount,DetailCount:integer;
    stdaty:string;
    RepMDebit,RepMCredit:Real;
    vitave:vita;
    nbcpt:word;
    TSCredit,TSDebit:real;
    ej_jrnx: String;
    ej_numero: String;
    ej_daty: TDate;
    ej_compte: String;
    ej_contre: String;
    ej_libellle: String;
    ej_facture: String;
    ej_debit: integer;
    ej_credit: integer;
    vrai_compte_tal:string;
    solde_vrai_compte : Int64;
    is_additionee:boolean;
    procedure fafao;
    function  EcrireJournal:boolean;
    //procedure EcrireElt(compte1:string;audebit:boolean;montant:real);
    //procedure SelectEcriture(etat:shortint);
  public
    { D�clarations publiques }
    procedure Asehoy(mode:shortint);{0:general;2:auxiliaire;3:cl�ture}
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
  borderStyle:=bsDialog;
  height:=400;
  width:= 700;
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
  fafao;
  case mody of
    0:begin
        Caption:='Balance G�n�rale';
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
        //GroupBox4.Visible:=false;
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
        GroupBox4.Visible := true;
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
        Caption:='Suivi des r�glements clients';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=true;
        CheckBox3.Visible:=true;
        SpeedButton4.Visible:=false;
        RadioGroup1.Visible:=false;
        Panel5.visible:=false;
      end;
    9:begin
        Caption:='R�-imputation comptable';
        CheckBox2.Visible:=true;
        CheckBox3.Visible:=true;
        GroupBox1.Visible:=true;
        CheckBox3.Visible:=true;
        RadioGroup1.Visible:=false;
        Panel1.Visible:=false;
        GroupBox1.Caption:='� r�-imputer';
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
      MessageDlg('Erreur d''�crirure Cl�ture',mtError, [mbOK],0);
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
  Special.EltJrnLibelle.Value:='Cl�ture';
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
  if CheckBox5.Checked then
  begin
    PStockee.Operation1.close;
    PStockee.Operation1.SQL.Clear;
    PStockee.Operation1.SQL.Add('CREATE TABLE IF NOT EXISTS etat_jrn(');
    PStockee.Operation1.SQL.Add('jrnx VARCHAR(2),');
    PStockee.Operation1.SQL.Add('numero VARCHAR(4),');
    PStockee.Operation1.SQL.Add('daty date,');
    PStockee.Operation1.SQL.Add('compte VARCHAR(10),');
    PStockee.Operation1.SQL.Add('contre VARCHAR(10),');
    PStockee.Operation1.SQL.Add('libellle VARCHAR(10),');
    PStockee.Operation1.SQL.Add('facture VARCHAR(10),');
    PStockee.Operation1.SQL.Add('debit bigint,');
    PStockee.Operation1.SQL.Add('credit bigint)');
    Memo1.Lines :=  PStockee.Operation1.SQL;
    PStockee.Operation1.ExecSQL;

    PStockee.Operation1.close;
    PStockee.Operation1.SQL.Clear;
    PStockee.Operation1.SQL.Add('DELETE FROM etat_jrn');
    PStockee.Operation1.ExecSQL;

    Special.etat_jrn.close;
    Special.etat_jrn.open;
  end;

  if GroupBox3.Visible then
    QRLabel80.Caption:=Edit13.Text;
  QRLabel82.Caption:='Ag : '+Commun.SocieteCode.Value;
  DASQL.SelToPrint2.close;
  DASQL.SelToPrint2.sql.clear;
  DASQL.SelToPrint2.sql.Add('SELECT * FROM Journaux a,');
  DASQL.SelToPrint2.sql.Add('Journal b, EltJrn c');
  DASQL.SelToPrint2.sql.Add('WHERE (a.Code= b.codejrnx)and(b.Code= c.journal)');
  if GroupBox3.Visible then
    DASQL.SelToPrint2.sql.Add('AND (b.CodeJrnx='''+edit12.text+''')')
  else
    DASQL.SelToPrint2.sql.Add('AND (a.typ<4)');
  if GroupBox2.Visible then
  begin
    if RadioGroup2.ItemIndex=0 then
      DASQL.SelToPrint2.sql.Add('AND (b.Periode<'''+edit3.text+'/'+
                              FormatFloat('00',ComboBox1.itemindex+1)+''')')
    else
      DASQL.SelToPrint2.sql.Add('AND (b.DateEsc<'+MaskEdit1.Text+')');
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
    ShowMessage('V�rifiez les longueurs des titres');
    exit;
  end;
  texte:='';
  for i:=1 to length(Edit8.text) do
    if copy(Edit8.text,i,1)<>',' then texte:=texte+copy(Edit8.text,i,1);
  //if (length(texte)<6)and panel4.visible then
  //begin
    //MessageDlg('Compl�ter le code analytique � 6 chiffre ou par ?',mtConfirmation,[mbOk],0);
    //exit;
  //end;
  edit6tal:=edit6.text;
  edit1tal:=edit1.text;
  edit2tal:=edit2.text;

  case mody of
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
{  // =========== Avant ========================
  if (EnleveBlancDroite(DASQL.BalanceCodejrnx.Value)='AN')or (DASQL.BalancePeriode.Value<periode_de) then
  begin
    DebitPrec:=Debitprec+ DASQL.BalanceBDebit.Value;
    CreditPrec:=Creditprec+DASQL.BalanceBCredit.Value;
  end
  else  // =========== Mouvment ========================
  begin
     MvtDebit:=MvtDebit+DASQL.BalanceBDebit.Value;
     MvtCredit:=MvtCredit+DASQL.BalanceBCredit.Value;
  end;
  // =========== Nouveau situation ou solde ========================
  if vrai_compte_tal = '' then
  begin
    vrai_compte_tal := DASQL.Balancevrai_compte.Value;
    solde_vrai_compte := 0;
  end;
  if DASQL.Balancevrai_compte.Value = DASQL.Balancecompte.Value then
  begin
    DebitNouv := DebitNouv + DASQL.BalanceBDebit.Value;
    CreditNouv := CreditNouv + DASQL.BalanceBCredit.Value;
  end
  else
  begin
    QRLabel70.Caption := vrai_compte_tal;
    //QRLabel133.Caption :=
    if (DASQL.Balancevrai_compte.Value = vrai_compte_tal)  then
    begin
      // ==== Par �criture ============
      solde_vrai_compte := solde_vrai_compte + DASQL.BalanceBDebit.Value - DASQL.BalanceBCredit.Value;
      is_additionee := false;
    end
    else
    begin
      // ==== Par compte ============
      if solde_vrai_compte > 0 then
         DebitNouv := DebitNouv + solde_vrai_compte
      else
         CreditNouv :=  CreditNouv - solde_vrai_compte;
      is_additionee := True;

      vrai_compte_tal := DASQL.Balancevrai_compte.Value;
      solde_vrai_compte := 0;
      // ==== mampiditra ny voalohany ==============
      solde_vrai_compte := solde_vrai_compte + DASQL.BalanceBDebit.Value - DASQL.BalanceBCredit.Value;
    end
  end;
  QRLabel133.Caption := FormatFloat('#,##0',solde_vrai_compte);
  }
end;

procedure TFEtatCourant.Edit1Change(Sender: TObject);
begin
  if mody=1 then
  begin
    Edit2.text:=Edit1.text;
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
  AvadihoInt64(Value,Debit);
end;

procedure TFEtatCourant.QRLabel9Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(Value,Credit);
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
  edit7.text:=edit8.text;
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
  AvadihoInt64(Value,DebitAv);
end;

procedure TFEtatCourant.QRLabel32Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(Value,CreditAv);
end;

procedure TFEtatCourant.QRLabel33Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(Value,DebitPer);

end;

procedure TFEtatCourant.QRLabel34Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(Value,CreditPer);

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
    //GroupBox4.Visible:=false;
    GroupBox2.Visible:=false;
  end

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

procedure TFEtatCourant.QRDBText40Print(sender: TObject;
  var Value: String);
begin
    ej_jrnx:=Value;

end;

procedure TFEtatCourant.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  ej_numero:=Value;
end;

procedure TFEtatCourant.QRDBText29Print(sender: TObject;
  var Value: String);
begin
  ej_daty:=strtodate(value);
end;

procedure TFEtatCourant.QRDBText25Print(sender: TObject;
  var Value: String);
begin
  ej_compte:= Value;
end;

procedure TFEtatCourant.QRDBText28Print(sender: TObject;
  var Value: String);
begin
  ej_contre:= Value;
end;

procedure TFEtatCourant.QRExpr7Print(sender: TObject; var Value: String);
begin
  ej_facture:=Value;
end;

procedure TFEtatCourant.QRDBText26Print(sender: TObject;
  var Value: String);
begin
  ej_libellle:= Value;
end;

procedure TFEtatCourant.QRExpr3Print(sender: TObject; var Value: String);
begin
  ej_debit:=StrToInt(EnleveBlanc(Value));
end;

procedure TFEtatCourant.QRExpr4Print(sender: TObject; var Value: String);
begin
  ej_credit:=StrToInt(EnleveBlanc(Value));
end;

procedure TFEtatCourant.QRBand10AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  special.etat_jrn.Insert;
  special.etat_jrnjrnx.Value := ej_jrnx;
  special.etat_jrnnumero.Value :=ej_numero;
  special.etat_jrndaty.Value :=ej_daty;
  special.etat_jrncompte.Value := ej_compte;
  special.etat_jrncontre.Value := ej_contre;
  special.etat_jrnlibellle.Value := ej_libellle;
  special.etat_jrnfacture.Value := ej_facture;
  special.etat_jrndebit.Value := ej_debit;
  special.etat_jrncredit.Value := ej_credit;
  special.etat_jrn.Post;
end;

end.
