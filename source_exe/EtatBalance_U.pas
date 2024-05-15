unit EtatBalance_U;

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
  TFEtatBalance = class(TForm)
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
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    Edit12: TEdit;
    Edit13: TEdit;
    QRExpr27: TQRExpr;
    QRExpr44: TQRExpr;
    SourceBalance: TDataSource;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
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
    QRLabel19: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel58: TQRLabel;
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
    GroupPeriodeDe: TGroupBox;
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
    CheckBox6: TCheckBox;
    QRLabel51: TQRLabel;
    QRExpr18: TQRExpr;
    Panel4: TPanel;
    Label4: TLabel;
    Edit8: TEdit;
    Edit7: TEdit;
    CodeAnalytique: TCheckBox;
    Label7: TLabel;
    SpeedButton4: TSpeedButton;
    DataSource2: TDataSource;
    Panel5: TPanel;
    Label9: TLabel;
    Label3: TLabel;
    Edit6: TEdit;
    CheckBox4: TCheckBox;
    Edit5: TEdit;
    CheckBox8: TCheckBox;
    QRExpr9: TQRExpr;
    Label8: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    RadioGroup1: TRadioGroup;
    QRBand14: TQRBand;
    QRLabel88: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRExpr21: TQRExpr;
    CheckBox9: TCheckBox;
    RadioGroup2: TRadioGroup;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    MaskEdit1: TMaskEdit;
    Label12: TLabel;
    MaskEdit2: TMaskEdit;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    CheckOuverture: TCheckBox;
    QRLabel108: TQRLabel;
    QRLabel110: TQRLabel;
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
    CheckBox5: TCheckBox;
    Label13: TLabel;
    CheckJusquAu: TCheckBox;
    QRCreditAv: TQRDBText;
    QRDebitPer: TQRDBText;
    QRCreditPer: TQRDBText;
    QRNvDebit: TQRDBText;
    QRNvCredit: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape33: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    SpeedButton10: TSpeedButton;
    QRDBText1: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel67: TQRLabel;
    CheckBox7: TCheckBox;
    QRGroup5:TQRGroup;
    QRGroup1:TQRGroup;
    QRGroup2:TQRGroup;
    QRGroup3:TQRGroup;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure QRExpr27Print(sender: TObject; var Value: String);
    procedure QRBand20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData3Print(sender: TObject; var Value: String);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CodeAnalytiqueClick(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure QRExpr18Print(sender: TObject; var Value: String);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QRExpr9Print(sender: TObject; var Value: String);
    procedure QRExpr11Print(sender: TObject; var Value: String);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr15Print(sender: TObject; var Value: String);
    procedure QRExpr16Print(sender: TObject; var Value: String);
    procedure RadioGroup2Click(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    procedure QRBand15AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure GroupBox2Click(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRCreditAvPrint(sender: TObject; var Value: String);
    procedure QRDebitPerPrint(sender: TObject; var Value: String);
    procedure QRCreditPerPrint(sender: TObject; var Value: String);
    procedure QRNvDebitPrint(sender: TObject; var Value: String);
    procedure QRNvCreditPrint(sender: TObject; var Value: String);
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRExpr44Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
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
    isa_detail, isa_ss, isa_grp : integer;
    procedure fafao;
    procedure Rafraichir(mode:integer);
    function  EcrireJournal:boolean;
    //procedure EcrireElt(compte1:string;audebit:boolean;montant:real);
    //procedure SelectEcriture(etat:shortint);
  public
    { D�clarations publiques }
    procedure Asehoy(mode:shortint);{0:general;2:auxiliaire;3:cl�ture}
  end;

var
  FEtatBalance: TFEtatBalance;

procedure AsehoyEtatBalance(mode:shortint);

implementation

uses Daspecia,  DaCommun,  Journaux_U, LstAuxi, TypeElmt, ImpPlan, USQL,
  UPStocke;

{$R *.DFM}

procedure AsehoyEtatBalance(mode:shortint);
begin
  try
    FEtatBalance:= TFEtatBalance.Create(Application);
    FEtatBalance.Asehoy(mode);
  finally
    FEtatBalance.Free;
  end;
end;

procedure TFEtatBalance.Asehoy(mode:shortint);
var year,Month,Day:word;
begin

  special.code_analytique.Open;
  borderStyle:=bsDialog;
  height:=400;
  width:= 700;
  Autoscroll := tRUE;
  vitave.cpt := '0';
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
        CheckBox7.Checked := false;
        CheckBox7.Visible := false;
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
        CheckBox7.Checked := true;
        CheckBox7.Visible := true;
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
        CheckJusquAu.Visible := true;
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

function  TFEtatBalance.EcrireJournal:boolean;
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

procedure TFEtatBalance.fafao;
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
procedure TFEtatBalance.Rafraichir(mode:integer);
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
    sq,text8,text7, table:string;
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
  //perio:=edit4.text+'/'+FormatFloat('00',ComboBox2.itemindex+1);
  periode_de:=edit3.text+'/'+FormatFloat('00',ComboBox1.itemindex+1);
  periode_a:=edit4.text+'/'+FormatFloat('00',ComboBox2.itemindex+1);

  DASQL.Balance.Close;
  DASQL.Balance.SQL.clear;
  {
  case mode of
    0:table:= 'balance_g';
    1:table:= 'sel1EltJrn';
  end;

  if not CheckBox9.Checked then
    DASQL.Balance.SQL.Add('select * from '+table+' a')
   else
    DASQL.Balance.SQL.Add('select * from sel1ReEltJrn a');
  }

  DASQL.Balance.Close;
  DASQL.Balance.SQL.Clear;
  if mode=0 then
  begin
    DASQL.Balance.SQL.Add('SELECT compte_auxi AS compte,');
    DASQL.Balance.SQL.Add('SUM(prec_debit) AS prec_debit,');
    DASQL.Balance.SQL.Add('SUM(prec_credit) AS prec_credit,');
    DASQL.Balance.SQL.Add('SUM(mvt_debit) AS mvt_debit,');
    DASQL.Balance.SQL.Add('SUM(mvt_credit) AS mvt_credit,');
    DASQL.Balance.SQL.Add('SUM(nouv_debit) AS nouv_debit,');
    DASQL.Balance.SQL.Add('SUM(nouv_credit) AS nouv_credit');
    DASQL.Balance.SQL.Add('FROM (');
  end;
    DASQL.Balance.SQL.Add('SELECT compte_auxi,compte,');
    DASQL.Balance.SQL.Add('CASE WHEN SUM(mvt_prec)>0 THEN SUM(mvt_prec) ELSE 0 END AS prec_debit,');
    DASQL.Balance.SQL.Add('CASE WHEN SUM(mvt_prec)<0 THEN -SUM(mvt_prec) ELSE 0 END AS prec_credit,');
    DASQL.Balance.SQL.Add('SUM(CASE WHEN mvt_encours>0 THEN  mvt_encours ELSE 0 END) AS mvt_debit,');
    DASQL.Balance.SQL.Add('SUM(CASE WHEN mvt_encours<0 THEN  -mvt_encours ELSE 0 END) AS mvt_credit,');
    DASQL.Balance.SQL.Add('CASE WHEN SUM(tot_mvt)>0 THEN SUM(tot_mvt) ELSE 0 END AS nouv_debit,');
    DASQL.Balance.SQL.Add('CASE WHEN SUM(tot_mvt)<0 THEN -SUM(tot_mvt) ELSE 0 END AS nouv_credit');
    DASQL.Balance.SQL.Add('FROM(');
    DASQL.Balance.SQL.Add('SELECT compte_auxi,compte,code_analytique,');

  //if GroupPeriodeDe.Visible then
  //begin
    //DASQL.Balance.SQL.Add('CASE WHEN codejrnx = ''AN'' or periode<'''+periode_de+''' THEN');
    DASQL.Balance.SQL.Add('CASE WHEN codejrnx = ''AN'' or periode<'''+periode_a+''' THEN');
    DASQL.Balance.SQL.Add('CASE WHEN debit =''D'' THEN  montant ELSE - montant END ELSE 0');
    DASQL.Balance.SQL.Add('END as mvt_prec,');
    //DASQL.Balance.SQL.Add('CASE WHEN (codejrnx <> ''AN'') AND (periode>='''+periode_de+''') AND (periode<='''+periode_a+''') THEN');
    DASQL.Balance.SQL.Add('CASE WHEN (codejrnx <> ''AN'') AND (periode>='''+periode_a+''') AND (periode<='''+periode_a+''') THEN');
    DASQL.Balance.SQL.Add('   CASE WHEN debit =''D'' THEN  montant ELSE - montant END ELSE 0');
    DASQL.Balance.SQL.Add('END as mvt_encours,');
  //end
  //else
  //begin
    //DASQL.Balance.SQL.Add('CASE WHEN codejrnx = ''AN'' THEN');
    //DASQL.Balance.SQL.Add('  CASE WHEN debit =''D'' THEN  montant ELSE - montant END ELSE 0');
    //DASQL.Balance.SQL.Add('END as mvt_prec,');
    //DASQL.Balance.SQL.Add('CASE WHEN (codejrnx <> ''AN'') AND (periode<='''+periode_a+''') THEN');
    //DASQL.Balance.SQL.Add('  CASE WHEN debit =''D'' THEN  montant ELSE - montant END ELSE 0');
    //DASQL.Balance.SQL.Add(' END as mvt_encours,');
  //end;
    DASQL.Balance.SQL.Add('CASE WHEN periode<='''+periode_a+''' THEN');
    DASQL.Balance.SQL.Add('  CASE WHEN debit =''D'' THEN  montant ELSE - montant END ELSE 0 END as tot_mvt');
    DASQL.Balance.SQL.Add('FROM balance');
    DASQL.Balance.SQL.Add('WHERE (compte>=''' +edit1.text+''')and(compte<'''+edit2.text+'Z'+''')');
    if CodeAnalytique.Checked then
      DASQL.Balance.SQL.Add('and (code_analytique='''+DBLookupComboBox1.keyValue+ ''')');
    if CheckOuverture.Checked  then
      DASQL.Balance.SQL.Add('and (Typ=4)');
    if CheckBox7.Checked then
      DASQL.Balance.SQL.Add('and (compte_auxi<>compte)');


    DASQL.Balance.SQL.Add(') as a');
    DASQL.Balance.SQL.Add('GROUP BY compte_auxi,compte');

  if mode =0 then
  begin
    DASQL.Balance.SQL.Add(') AS b');
    DASQL.Balance.SQL.Add('GROUP BY compte_auxi');
  end;
    DASQL.Balance.SQL.Add('ORDER BY compte');

  {
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
  }


  {
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('select periode, count(*) from sel1eltjrn group by periode order by  periode');
  PStockee.Operation1.Open;
  DataSource5.DataSet := PStockee.Operation1;
  }

  Memo1.Lines:=DASQL.Balance.SQL;
  Memo1.Lines.Add(DASQL.Balance.Connection.DefaultDatabase);
  Memo1.Lines := DASQL.Balance.SQL;
  DASQL.Balance.Open;
  if length(Edit6.text)=0 then edit6.text:='2';

  if mody=0 then
  begin
    if NOT CheckOuverture.Checked then
      QRLabel2.caption:= 'BALANCE GENERALE AU '+ inttostr(D)+' '
                      +special.stmois[ComboBox2.itemindex+1]+' '+edit4.text
    else
      QRLabel2.caption:= 'BALANCE GENERALE AU '+ FormatDateTime('dd\mm\yyyy',Commun.SocieteExerDeb.Value);
    //QRExpr45.Expression:='Balance.NumGene';
    //QRExpr46.Expression:='Balance.IntitGene';
    QRGroup5.Expression:='COPY(Balance.Compte, 1, 1)';
    QRExpr44.Expression:='COPY(Balance.Compte, 1, 1)';

    QRGroup1.Expression:='COPY(Balance.Compte, 1,'+Edit6.text+' )';
    QRExpr27.Expression:='COPY(Balance.Compte, 1,'+Edit6.text+' )';
    QRExpr48.Expression:='COPY(Balance.Compte, 1,'+Edit6.text+' )';

    QRGroup2.Expression:='COPY(Balance.Compte, 1,'+Edit5.text+' )';
    QRExpr18.Expression:='COPY(Balance.Compte, 1,'+Edit5.text+' )';
    QRExpr21.Expression:='COPY(Balance.Compte, 1,'+Edit5.text+' )';


    QRGroup3.Expression:='COPY(Balance.Compte, 1,'+Edit9.text+' )';
    QRExpr9.Expression:='COPY(Balance.Compte, 1,'+Edit9.text+' )';

    if CheckOuverture.Checked then
      QRLabel113.Caption:='Ouverture'
    else
      QRLabel113.Caption:='';
    //DASQL.EnregistreInfoImpression(stdaty,Commun.SocieteCode.Value,'Balance g�n�rale',edit1.text,edit2.text);
  end
  else
  begin
    DASQL.SelNumCpt.close;
    DASQL.SelNumCpt.Parameters[0].value:=edit1.text;
    DASQL.SelNumCpt.open;
    QRLabel2.caption:='BALANCE AUXILIAIRE '+EnleveBlancDroite(DASQL.SelNumCptIntitule.Value);
    //QRExpr45.Expression:='Balance.Compte';
    //QRExpr46.Expression:='Balance.Intitule';
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

procedure TFEtatBalance.SpeedButton1Click(Sender: TObject);
var k:string;
begin
  if length(Edit2.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit2.text:=Commun.TemponString1.Value;
end;

procedure TFEtatBalance.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TFEtatBalance.SpeedButton8Click(Sender: TObject);
var k:string;
begin
  if length(Edit1.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false ,true)
  else AsehoyLstCpt('41',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  Edit1.text:=Commun.TemponString1.Value;
  Edit2.text:=Commun.TemponString1.Value;
end;

procedure TFEtatBalance.UpDown2Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFEtatBalance.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFEtatBalance.CheckBox2Click(Sender: TObject);
begin
  GroupBox3.Visible:=CheckBox2.checked;
end;

procedure TFEtatBalance.CheckBox1Click(Sender: TObject);
begin
  GroupBox2.Visible:=CheckBox1.checked;
end;

procedure TFEtatBalance.CheckBox3Click(Sender: TObject);
begin
  GroupBox1.Visible:=CheckBox3.checked;
end;

procedure TFEtatBalance.SpeedButton7Click(Sender: TObject);
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
    1:
      begin
        QuickRep.Preview;
      end;
    2:QuickRep.Preview;
  end;
end;

procedure TFEtatBalance.Edit6Change(Sender: TObject);
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

procedure TFEtatBalance.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if isa_ss > 0 then
  begin
    isa_ss := 0;
    isa_grp := isa_grp +1;
    QRLabel35.caption:=FormatFloat('#,##0',DebitPrecGroupe);
    QRLabel36.caption:=FormatFloat('#,##0',CreditPrecGroupe);

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

    DebitPrecGroupe:=0;
    CreditPrecGroupe:=0;

    MvtDebitGroupe:=0;
    MvtCreditGroupe:=0;

    DebitNouvGroupe:=0;
    CreditNouvGroupe:=0;
  end
  else
    QRBand5.Height := 0;
end;

procedure TFEtatBalance.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if isa_grp > 0 then
  begin
    isa_grp := 0 ;
    QRLabel39.caption:=FormatFloat('#,##0',DebitPrecClasse);
    QRLabel40.caption:=FormatFloat('#,##0',CreditPrecClasse);

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
  end
  else
    QRBand3.Height:=0;

end;

procedure TFEtatBalance.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var auxi:string;
begin
  if mody=1 then
    QRBand15.Height := 0
  else
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
  end;
  {if Special.IsAuxiliaire(edit1.text,true,auxi) and
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
  end;}
end;

procedure TFEtatBalance.Edit1Change(Sender: TObject);
begin
  if mody=1 then
  begin
    Edit2.text:=Edit1.text;
  end;
end;

procedure TFEtatBalance.QRExpr27Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel18.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatBalance.QRBand20BeforePrint(Sender: TQRCustomBand;
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




procedure TFEtatBalance.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
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

procedure TFEtatBalance.QRSysData3Print(sender: TObject;
  var Value: String);
begin
  DetailCount:=Strtoint(Value);
end;

procedure TFEtatBalance.SpeedButton3Click(Sender: TObject);
begin
  AsehoyJournaux(2);
  edit12.text:=Special.JournauxCode.Value;
  edit13.text:=Special.JournauxIntitule.Value;
end;

procedure TFEtatBalance.SpeedButton2Click(Sender: TObject);
var Auxi:string;
begin
  AsehoyLstAuxi(auxi);
  if length(auxi)>0 then
  begin
    Edit1.text:=EnleveBlancDroite(auxi);
    Edit2.text:=EnleveBlancDroite(auxi)+'Z';
  end;
end;

procedure TFEtatBalance.CheckBox6Click(Sender: TObject);
begin
  if not((edit1.text>='40')and(edit2.text<'5')and(mody=1)) then
  begin
    ShowMessage('N''a pas d''effet que pour les balances auxiliaires des tiers');
    CheckBox6.Checked:=false;
  end;
end;

procedure TFEtatBalance.CodeAnalytiqueClick(Sender: TObject);
begin
  Panel4.Visible := CodeAnalytique.Checked;
end;

procedure TFEtatBalance.Edit8Change(Sender: TObject);
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

procedure TFEtatBalance.QRExpr18Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel49.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatBalance.FormShow(Sender: TObject);
begin
  edit8.text:='';
end;

procedure TFEtatBalance.SpeedButton4Click(Sender: TObject);
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

procedure TFEtatBalance.QRExpr9Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel67.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatBalance.QRExpr11Print(sender: TObject; var Value: String);
var Areporter:Real;
begin
  try
    AReporter:=StrToFloat(Value)+repMDebit;
    Value:=FormatFloat('#,##0',AReporter);
  except
  end;
end;

procedure TFEtatBalance.QRExpr12Print(sender: TObject; var Value: String);
var Areporter:Real;
begin
  try
    AReporter:=StrToFloat(Value)+repMCredit;
    Value:=FormatFloat('#,##0',AReporter);
  except
  end;
end;

procedure TFEtatBalance.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if isa_detail>0 then
  begin
    isa_detail := 0;
    isa_ss := isa_ss +1;

    QRLabel26.caption:=FormatFloat('#,##0',DebitPrecSSGroupe);
    QRLabel27.caption:=FormatFloat('#,##0',CreditPrecSSGroupe);

    QRLabel28.caption:=FormatFloat('#,##0',MvtDebitSSGroupe);
    QRLabel29.caption:=FormatFloat('#,##0',MvtCreditSSGroupe);

    QRLabel30.caption:=FormatFloat('#,##0',DebitNouvSSGroupe);
    QRLabel31.caption:=FormatFloat('#,##0',CreditNouvSSGroupe);

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
  end
  else
    QRBand14.Height := 0
end;

procedure TFEtatBalance.QRExpr15Print(sender: TObject; var Value: String);
var mvalue:double;
begin
  avadihoreal(value,mvalue);
  TSDebit:=TSDebit+mvalue;
end;

procedure TFEtatBalance.QRExpr16Print(sender: TObject; var Value: String);
var mvalue:double;
begin
  avadihoreal(value,mvalue);
  TSCredit:=TSCredit+mvalue;
end;

procedure TFEtatBalance.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    GroupBox5.Visible:=false;
    CheckJusquAu.Visible:=true;
    GroupBox2.Visible:=true;
  end
  else
  begin
    GroupBox5.Visible:=true;
    //GroupBox4.Visible:=false;
    GroupBox2.Visible:=false;
  end

end;

procedure TFEtatBalance.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var year1,year2,month,day:word;
begin
  isa_detail:= 0; isa_ss:= 0; isa_grp := 0;

  is_additionee:=true;
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
  //QRBand1.Height:=0;
  QRBand5.Height:=0;
  vrai_compte_tal := '';
  Rafraichir(mody);

  Special.DtImprBal.Requery;
  //DaSQL.SelDtImprBal.Requery;
  BalanceCount:=DASQL.Balance.RecordCount;

  DebitPrec:=0;  DebitPrecSSGroupe:=0;  DebitPrecGroupe:=0;  DebitPrecClasse:=0;  DebitPrecGene:=0;
  CreditPrec:=0; CreditPrecSSGroupe:=0; CreditPrecGroupe:=0; CreditPrecClasse:=0; CreditPrecGene:=0;
  MvtDebit:=0;   MvtDebitSSGroupe:=0;   MvtDebitGroupe:=0;   MvtDebitClasse:=0;   MvtDebitGene:=0;
  MvtCredit:=0;  MvtCreditSSGroupe:=0;  MvtCreditGroupe:=0;  MvtCreditClasse:=0;  MvtCreditGene:=0;
  DebitNouv:=0;  DebitNouvSSGroupe:=0;  DebitNouvGroupe:=0;  DebitNouvClasse:=0;  DebitNouvGene:=0;
  CreditNouv:=0; CreditNouvSSGroupe:=0; CreditNouvGroupe:=0; CreditNouvClasse:=0; CreditNouvGene:=0;

  //ShowMessage(FormatFloat('0',MvtCreditSSGroupe));
  Cpt3chiffretal:='';

  DebitPrecPage:=0;
  CreditPrecPage:=0;

  MvtDebitPage:=0;
  MvtCreditPage:=0;

  DebitNouvPage:=0;
  CreditNouvPage:=0;
end;

procedure TFEtatBalance.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

procedure TFEtatBalance.SpeedButton9Click(Sender: TObject);
begin

  AsehoyJournaux(2);
  edit12.text:=Special.JournauxCode.Value;
  edit13.text:=Special.JournauxIntitule.Value;

end;

procedure TFEtatBalance.QRDBText40Print(sender: TObject;
  var Value: String);
begin
    ej_jrnx:=Value;

end;

procedure TFEtatBalance.QRDBText27Print(sender: TObject;
  var Value: String);
begin
  ej_numero:=Value;
end;

procedure TFEtatBalance.QRDBText29Print(sender: TObject;
  var Value: String);
begin
  ej_daty:=strtodate(value);
end;

procedure TFEtatBalance.QRDBText25Print(sender: TObject;
  var Value: String);
begin
  ej_compte:= Value;
end;

procedure TFEtatBalance.QRDBText28Print(sender: TObject;
  var Value: String);
begin
  ej_contre:= Value;
end;

procedure TFEtatBalance.QRExpr7Print(sender: TObject; var Value: String);
begin
  ej_facture:=Value;
end;

procedure TFEtatBalance.QRDBText26Print(sender: TObject;
  var Value: String);
begin
  ej_libellle:= Value;
end;

procedure TFEtatBalance.QRExpr3Print(sender: TObject; var Value: String);
begin
  ej_debit:=StrToInt(EnleveBlanc(Value));
end;

procedure TFEtatBalance.QRExpr4Print(sender: TObject; var Value: String);
begin
  ej_credit:=StrToInt(EnleveBlanc(Value));
end;

procedure TFEtatBalance.QRBand10AfterPrint(Sender: TQRCustomBand;
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

procedure TFEtatBalance.QRBand15AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRBand20.Height := 0;
end;

procedure TFEtatBalance.GroupBox2Click(Sender: TObject);
begin
  GroupPeriodeDe.Visible := CheckJusquAu.Checked;
end;

procedure TFEtatBalance.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if QRBand1.Height > 0 then
  begin
    DebitPrecSSGroupe:= DebitPrecSSGroupe + DebitAv;//
    CreditPrecSSGroupe := CreditPrecSSGroupe +  CreditAv;
    MvtDebitSSGroupe := MvtDebitSSGroupe +   DebitPer;
    MvtCreditSSGroupe := MvtCreditSSGroupe + CreditPer;
    DebitNouvSSGroupe := DebitNouvSSGroupe + Debit;
    CreditNouvSSGroupe := CreditNouvSSGroupe + Credit;
    //QRLabel8.Caption := inttostr(isa);

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
        //Special.PrepConsAutre.Value:=' Expr:'+QRExpr45.Expression;
        Special.PrepConsIntitul.Value:=Special.PrepConsIntitule.Value;
        Special.PrepCons.Post;
        DebitAv :=0;
        CreditAv :=0;
        DebitPer :=0;
        CreditPer :=0;
        Debit :=0;
        Credit :=0;
      except
        On E:EDataBaseError do
      //    showMessage('enregistrement excel '+Special.PrepConsCompte.Value+' '+E.Message);
      end;
    end;
  end;
end;

procedure TFEtatBalance.QRCreditAvPrint(sender: TObject;
  var Value: String);
begin
  AvadihoInt64(Value,CreditAv);
end;

procedure TFEtatBalance.QRDebitPerPrint(sender: TObject;
  var Value: String);
begin
  AvadihoInt64(Value,DebitPer);
end;

procedure TFEtatBalance.QRCreditPerPrint(sender: TObject;
  var Value: String);
begin
  AvadihoInt64(Value,CreditPer);
end;

procedure TFEtatBalance.QRNvDebitPrint(sender: TObject; var Value: String);
begin
  AvadihoInt64(Value,Debit);
end;

procedure TFEtatBalance.QRNvCreditPrint(sender: TObject;
  var Value: String);
begin
  AvadihoInt64(Value,Credit);
end;

procedure TFEtatBalance.QRGroup3BeforePrint(Sender: TQRCustomBand;
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

procedure TFEtatBalance.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DASQL.Balanceprec_debit.Value = 0) and (DASQL.Balanceprec_credit.Value = 0) and
    (DASQL.Balancemvt_debit.Value = 0) and (DASQL.Balancemvt_credit.Value = 0) and
    (DASQL.Balancenouv_debit.Value = 0) and (DASQL.Balancenouv_credit.Value = 0)
    AND CheckBox4.Checked then
    QRBand1.Height := 0
  else
  begin
    isa_detail := isa_detail + 1;
    QRBand1.Height := 24;
  end;
end;

procedure TFEtatBalance.QRDBText1Print(sender: TObject; var Value: String);
begin
  AvadihoInt64(Value,DebitAv);
end;

procedure TFEtatBalance.QRDBText3Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].value:=Value;
  DASQL.SelNumCpt.open;
  Compte2 := Value;
  QRLabel25.Caption := DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatBalance.QRExpr44Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.Parameters[0].value:=Value;
  DASQL.SelNumCpt.open;
  QRLabel4.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatBalance.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if mody=1 then
    QuickRep.NewPage;
end;

end.
