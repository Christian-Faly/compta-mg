unit UDaLettr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB;

type
  TDataTiers = class(TDataModule)
    SourceRegle: TDataSource;
    SourceEcriture: TDataSource;
    SourceRJournal: TDataSource;
    SelJournal1: TQuery;
    SelJournal1Code: TStringField;
    SelJournal1Periode: TStringField;
    SelJournal1Jour: TSmallintField;
    SelJournal1CodeJrnx: TStringField;
    SelJournal1Transferer: TBooleanField;
    SelJournal1Tiers: TStringField;
    SelJournal1NumCHQ: TStringField;
    SelJournal1DateEsc: TDateField;
    SelJournal1DateSaisie: TDateTimeField;
    SelNumDivers1: TQuery;
    SelNumDivers1NumCpt: TStringField;
    SelNumDivers1Statistique: TStringField;
    SelNumDivers1Quittance: TStringField;
    SelNumDivers1NIF: TStringField;
    SelNumDivers1DateQuit: TDateField;
    SelNumDivers1NatureProd: TStringField;
    SelNumDivers1CodeProd: TStringField;
    SelNumDivers1CodeDecl: TStringField;
    SelNumDivers1Abrev: TStringField;
    SelNumAdres1: TQuery;
    SelNumAdres1NumCpt: TStringField;
    SelNumAdres1RS: TStringField;
    SelNumAdres1Nom: TStringField;
    SelNumAdres1Adresse: TStringField;
    SelNumAdres1CP: TStringField;
    SelNumAdres1Pays: TStringField;
    SelNumAdres1BP: TStringField;
    SelNumAdres1TEL: TStringField;
    SelNumAdres1Fax: TStringField;
    SelNumAdres1CptBQ: TStringField;
    SelNumAdres1NII: TStringField;
    Element1: TQuery;
    Element1Journal: TStringField;
    Element1Debit: TStringField;
    Element1Numero: TIntegerField;
    Element1Compte: TStringField;
    Element1Montant: TFloatField;
    Element1Izy: TBooleanField;
    Element1Libelle: TStringField;
    Element1Contrepartie: TStringField;
    Element1Nbcontre: TSmallintField;
    Element1Qte: TFloatField;
    Element1DateFact: TDateField;
    Element1NumFact: TStringField;
    Element1Colis: TFloatField;
    Element1TypX: TStringField;
    Element1SigleTaxe: TStringField;
    DernierNum1: TQuery;
    DernierNum1Code: TStringField;
    DataSource1: TDataSource;
    SourceQTiers: TDataSource;
    SourceQInterlo1: TDataSource;
    C_Exercice: TADOConnection;
    RJournal: TADOQuery;
    RJournalCode: TStringField;
    RJournalPeriode: TStringField;
    RJournalJour: TSmallintField;
    RJournalCodeJrnx: TStringField;
    RJournalTiers: TStringField;
    RJournalNumCHQ: TStringField;
    RJournalDateEsc: TDateField;
    RJournalDateSaisie: TDateTimeField;
    RJournalDeclarer: TSmallintField;
    RDernierLettre: TADOQuery;
    Journal: TADOQuery;
    JournalCode: TStringField;
    JournalPeriode: TStringField;
    JournalJour: TSmallintField;
    JournalCodeJrnx: TStringField;
    JournalTiers: TStringField;
    JournalNumCHQ: TStringField;
    JournalDateEsc: TDateField;
    JournalDateSaisie: TDateTimeField;
    JournalDeclarer: TSmallintField;
    SuiviTiers: TADOQuery;
    SuiviTiersNumero: TIntegerField;
    SuiviTiersPeriode: TStringField;
    SuiviTiersJour: TSmallintField;
    SuiviTiersCodeJrnx: TStringField;
    SuiviTiersLibelle: TStringField;
    SuiviTiersTiers: TStringField;
    SuiviTiersDebit: TStringField;
    SuiviTiersCompte: TStringField;
    SuiviTiersNumSource: TIntegerField;
    SuiviTiersReference: TStringField;
    SuiviTiersRang: TSmallintField;
    SuiviTiersSur: TSmallintField;
    SuiviTiersPourc: TFloatField;
    SuiviTiersEcheance: TDateField;
    SuiviTiersMontant_1: TFloatField;
    QLettrage: TADOQuery;
    QLettrageNumElt: TIntegerField;
    QLettrageLettre: TStringField;
    RechPeriode: TADOQuery;
    RechPeriodeLettre: TStringField;
    RechPeriodePeriode: TStringField;
    SelNumCpt: TADOQuery;
    SelNumCptNumCpt: TStringField;
    SelNumCptIntitule: TStringField;
    RRechLet: TADOQuery;
    RRechLetDateEsc: TDateField;
    RRechLetJournal: TStringField;
    RRechLetNumFact: TStringField;
    RRechLetMDebit: TFloatField;
    RRechLetMCredit: TFloatField;
    RRechLetLettre: TStringField;
    RRechLetLibel2: TStringField;
    RRechLetCompte: TStringField;
    RRechLetIntitule: TStringField;
    RRechLetLibelle: TStringField;
    RRechLetDateFact: TDateField;
    RRechLetDebit: TStringField;
    RRechLetNumero: TIntegerField;
    RRechLetNbcontre: TSmallintField;
    RRechLetContrepartie: TStringField;
    RRechLetLContre: TStringField;
    RRechLetPeriode: TStringField;
    RRechLetCodeJrnx: TStringField;
    RRechLetJour: TSmallintField;
    RRechLetTypJx: TSmallintField;
    RRechLetSigleTaxe: TStringField;
    RRechLetTyp: TSmallintField;
    RRechLetQte: TFloatField;
    RRechLetCode: TStringField;
    RRechLetTiers: TStringField;
    RRechLetNumCHQ: TStringField;
    RRechLetDateSaisie: TDateTimeField;
    RRechLetA1: TStringField;
    RRechLetA2: TStringField;
    RRechLetA3: TStringField;
    RRechLetA4: TStringField;
    RRechLetA5: TStringField;
    RRechLetA6: TStringField;
    RRechLetColis: TFloatField;
    RRechLetTypX: TStringField;
    SuiviLet: TADOQuery;
    SuiviLetJournal: TStringField;
    SuiviLetNumFact: TStringField;
    SuiviLetDateFact: TDateField;
    SuiviLetlettre: TStringField;
    SuiviLetLibelle: TStringField;
    SuiviLetCompte: TStringField;
    SuiviLetdebit: TStringField;
    SuiviLetNumElt: TIntegerField;
    SuiviLetNumero: TIntegerField;
    SuiviLetCode: TStringField;
    SuiviLetPeriode: TStringField;
    SuiviLetJour: TSmallintField;
    SuiviLetCodeJrnx: TStringField;
    SuiviLetSigleTaxe: TStringField;
    NonLettre: TADOQuery;
    NonLettreJournal: TStringField;
    NonLettreNumFact: TStringField;
    NonLettreDateFact: TDateField;
    NonLettreLettre: TStringField;
    NonLettreLibelle: TStringField;
    NonLettreDebit: TStringField;
    NonLettreCompte: TStringField;
    NonLettreContrepartie: TStringField;
    NonLettreNbcontre: TSmallintField;
    NonLettreQte: TFloatField;
    NonLettreNumero: TIntegerField;
    ModifPeriode: TADOQuery;
    ModifPeriodePeriodeLet: TStringField;
    SelLettrage: TADOQuery;
    SelLettrageNumElt: TIntegerField;
    SelLettrageLettre: TStringField;
    SelLettrageDebit: TStringField;
    SelLettrageMontant: TFloatField;
    SelLettrageMaxPerio: TStringField;
    SelLettragePeriodeLet: TStringField;
    SelLettrageTypeLet: TStringField;
    EltLettree: TADOQuery;
    EltLettreePeriode: TStringField;
    EltLettreeCompte: TStringField;
    EltLettreeLibelle: TStringField;
    EltLettreeDateFact: TDateField;
    EltLettreeJour: TSmallintField;
    EltLettreeNumFact: TStringField;
    EltLettreeLettre: TStringField;
    EltLettreeDebit: TStringField;
    EltLettreeMDebit: TFloatField;
    EltLettreeMCredit: TFloatField;
    EltLettreeIntitule: TStringField;
    EltLettreejournal: TStringField;
    EltLettreeLContre: TStringField;
    EltLettreeContrepartie: TStringField;
    EltLettreeNbcontre: TSmallintField;
    EltLettreeCodeJrnx: TStringField;
    EltLettreeQte: TFloatField;
    EltLettreeColis: TFloatField;
    EltLettreePU: TFloatField;
    EltLettreeDateEsc: TDateField;
    EltLettreeLibel2: TStringField;
    EltLettreeTyp: TSmallintField;
    EltLettreeSigleTaxe: TStringField;
    Ecriture: TADOQuery;
    EcritureCode: TStringField;
    EcriturePeriode: TStringField;
    EcritureJour: TSmallintField;
    EcritureCodeJrnx: TStringField;
    EcritureDateFact: TDateField;
    EcritureNumFact: TStringField;
    EcritureJournal: TStringField;
    EcritureDebit: TStringField;
    EcritureNumero: TIntegerField;
    EcritureCompte: TStringField;
    EcritureLettre: TStringField;
    EcritureIntitule: TStringField;
    EcritureTiers: TStringField;
    EcritureLibelle: TStringField;
    Element: TADOQuery;
    ElementJournal: TStringField;
    ElementDebit: TStringField;
    ElementNumero: TIntegerField;
    ElementCompte: TStringField;
    ElementLibelle: TStringField;
    ElementContrepartie: TStringField;
    ElementNbcontre: TSmallintField;
    ElementQte: TFloatField;
    ElementDateFact: TDateField;
    ElementNumFact: TStringField;
    ElementColis: TFloatField;
    ElementTypX: TStringField;
    ElementSigleTaxe: TStringField;
    SelNumAdres: TADOQuery;
    SelNumAdresNumCpt: TStringField;
    SelNumAdresRS: TStringField;
    SelNumAdresNom: TStringField;
    SelNumAdresAdresse: TStringField;
    SelNumAdresCP: TStringField;
    SelNumAdresPays: TStringField;
    SelNumAdresBP: TStringField;
    SelNumAdresTEL: TStringField;
    SelNumAdresFax: TStringField;
    SelNumAdresCptBQ: TStringField;
    SelNumAdresNII: TStringField;
    ToutEltJrn: TADOQuery;
    ToutEltJrnJournal: TStringField;
    ToutEltJrnNumero: TIntegerField;
    ToutEltJrnDebit: TStringField;
    ToutEltJrnCompte: TStringField;
    ToutEltJrnLibelle: TStringField;
    ToutEltJrnContrepartie: TStringField;
    ToutEltJrnNbcontre: TSmallintField;
    ToutEltJrnQte: TFloatField;
    ToutEltJrnDateFact: TDateField;
    ToutEltJrnNumFact: TStringField;
    ToutEltJrnColis: TFloatField;
    ToutEltJrnTypX: TStringField;
    ToutEltJrnSigleTaxe: TStringField;
    ToutEltJrnPeriode: TStringField;
    DernierNum: TADOQuery;
    DernierNumCode: TStringField;
    SelNumDivers: TADOQuery;
    SelNumDiversNumCpt: TStringField;
    SelNumDiversStatistique: TStringField;
    SelNumDiversQuittance: TStringField;
    SelNumDiversNIF: TStringField;
    SelNumDiversDateQuit: TDateField;
    SelNumDiversNatureProd: TStringField;
    SelNumDiversCodeProd: TStringField;
    SelNumDiversCodeDecl: TStringField;
    SelNumDiversAbrev: TStringField;
    SelEltJrn: TADOQuery;
    SelEltJrnDateFact: TDateField;
    SelEltJrnNumFact: TStringField;
    SelEltJrnJournal: TStringField;
    SelEltJrnLibelle: TStringField;
    SelEltJrnlettre: TStringField;
    SelEltJrnCompte: TStringField;
    SelEltJrnContrepartie: TStringField;
    SelEltJrnNbcontre: TSmallintField;
    SelEltJrnQte: TFloatField;
    SelEltJrnDebit: TStringField;
    SelEltJrnIntitule: TStringField;
    SelEltJrnColis: TFloatField;
    SelEltJrnTypX: TStringField;
    SelEltJrnSigleTaxe: TStringField;
    SelEltJrnPeriodeLet: TStringField;
    SelJournal: TADOQuery;
    SelJournalCode: TStringField;
    SelJournalPeriode: TStringField;
    SelJournalJour: TSmallintField;
    SelJournalCodeJrnx: TStringField;
    SelJournalTiers: TStringField;
    SelJournalNumCHQ: TStringField;
    SelJournalDateEsc: TDateField;
    SelJournalDateSaisie: TDateTimeField;
    SelTypProd: TADOQuery;
    SelTypProdMarque: TStringField;
    SelTypProdReference: TStringField;
    SelTypProdFamille: TStringField;
    SelTypProdUniteX: TStringField;
    SelTypProdUniteCol: TStringField;
    SelTypProdcode: TStringField;
    SelTypProdNature: TStringField;
    SelLieu: TADOQuery;
    SelLieucode: TStringField;
    SelLieuLieu: TStringField;
    SelAdresse: TADOQuery;
    SelAdresseCodeSoc: TStringField;
    SelAdresseCP: TStringField;
    SelAdressePays: TStringField;
    SelAdresseBP: TStringField;
    SelAdresseTEL: TStringField;
    SelAdresseFax: TStringField;
    SelAdresseCptBQ: TStringField;
    SelAdresseNumCpt: TStringField;
    SelAdresseNII: TStringField;
    SelAdresseDEVISE: TStringField;
    SelAdresseTel2: TStringField;
    SelAdresseTel3: TStringField;
    SelAdresseEmail: TStringField;
    SelAdresseSiteWeb: TStringField;
    SelAdresseBanque: TStringField;
    SelAdresseLotOuRue: TStringField;
    SelAdresseQuartier: TStringField;
    SelTaxe: TADOQuery;
    SelTaxeSigle: TStringField;
    SelTaxeDenomination: TStringField;
    SelTaxecollecte: TStringField;
    SelTaxedeductible: TStringField;
    SelTaxeTaux: TFloatField;
    Societe: TADOQuery;
    Societecode: TStringField;
    SocieteChemin: TStringField;
    SocieteActivite: TStringField;
    SocieteCAP: TStringField;
    SocieteStatut: TStringField;
    SocieteStatis: TStringField;
    SocieteNIF: TStringField;
    SocieteATP: TStringField;
    SocieteDtATP: TDateField;
    SocieteQuit: TStringField;
    SocieteDtQuit: TDateField;
    SocieteRegistre: TStringField;
    SocieteCompteBQ: TStringField;
    SocieteCheminPrec: TStringField;
    SocieteExerDeb: TDateField;
    SocieteExerFin: TDateField;
    SocieteRS: TStringField;
    C_Societe: TADOConnection;
    Afficher: TADOQuery;
    AfficherJournal: TStringField;
    AfficherLibelle: TStringField;
    AfficherDateFact: TDateField;
    Journaux: TADOTable;
    JournauxCode: TStringField;
    JournauxIntitule: TStringField;
    JournauxTyp: TSmallintField;
    JournauxCompte: TStringField;
    NumCpt: TADOTable;
    NumCptNumCpt: TStringField;
    NumCptIntitule: TStringField;
    NumCptDetail: TSmallintField;
    NumCptClasse: TSmallintField;
    NumCptGClasse: TSmallintField;
    NumCptGGroupe: TIntegerField;
    NumCptOGroupe: TIntegerField;
    NumCptExonere: TSmallintField;
    NumCptIzy: TSmallintField;
    lettrage: TADOTable;
    lettrageNumElt: TIntegerField;
    lettrageLettre: TStringField;
    lettragePeriodeLet: TStringField;
    lettrageTypeLet: TStringField;
    Taxe: TADOTable;
    TaxeSigle: TStringField;
    TaxeDenomination: TStringField;
    TaxeCollecte: TStringField;
    TaxeDeductible: TStringField;
    TaxeTaux: TFloatField;
    Societe1: TADOTable;
    Societe1Code: TStringField;
    Societe1Chemin: TStringField;
    Societe1NIF: TStringField;
    Societe1ATP: TStringField;
    Societe1DtATP: TDateField;
    Societe1Quit: TStringField;
    Societe1DtQuit: TDateField;
    Societe1Registre: TStringField;
    Societe1CompteBQ: TStringField;
    Societe1RS: TStringField;
    Lieu: TADOTable;
    LieuCode: TStringField;
    LieuLieu: TStringField;
    Tempon: TADOTable;
    TemponString1: TStringField;
    TemponString2: TStringField;
    TemponReal1: TFloatField;
    TemponReal2: TFloatField;
    TemponDATE1: TDateField;
    TemponDATE2: TDateField;
    TemponSTRING3: TStringField;
    TemponSTRING4: TStringField;
    EltSuivi: TADOTable;
    EltSuiviDebit: TStringField;
    EltSuiviNumero: TAutoIncField;
    EltSuiviCompte: TStringField;
    EltSuiviJournal: TStringField;
    Repos: TADOTable;
    SuiviTiersJournal: TWideStringField;
    SuiviTiersNumCHQ: TWideStringField;
    SuiviTiersDateEsc: TDateTimeField;
    SuiviTiersDateSaisie: TDateTimeField;
    SuiviTiersA1: TWideStringField;
    SuiviTiersNumDest: TWideStringField;
    RRechLetDeclarer: TSmallintField;
    SelEltJrnNumero: TIntegerField;
    SuppLettrage: TADOQuery;
    RDernierLettreDernier: TWideStringField;
    TLettre: TADOQuery;
    TLettrelettre: TWideStringField;
    TLettredebit: TWideStringField;
    TLettreTotal: TBCDField;
    RPropoEcriture: TADOQuery;
    RPropoEcritureDateFact: TDateTimeField;
    RPropoEcritureNumFact: TWideStringField;
    RPropoEcritureJournal: TWideStringField;
    RPropoEcritureLibelle: TWideStringField;
    RPropoEcritureDebit: TWideStringField;
    RPropoEcritureLettre: TWideStringField;
    RPropoEcritureNumero: TIntegerField;
    RPropoEcritureNumElt: TIntegerField;
    RPropoEcritureCompte: TWideStringField;
    RPropoEcritureQte: TFloatField;
    RCalculLettre_X_tal: TADOTable;
    SuppToutLettre: TADOQuery;
    EnleveLettre: TADOQuery;
    SelLettreNumero: TADOQuery;
    SelLettreNumerolettre: TWideStringField;
    MettreIzyFalse: TADOQuery;
    RCalculIzy: TADOTable;
    RCalculIzyTotal: TFloatField;
    RCalculIzyMDebit: TFloatField;
    RCalculIzyMCredit: TFloatField;
    RLettrageManuel: TADOQuery;
    RElementIzy: TADOTable;
    RElementIzyPeriode: TWideStringField;
    RIncreEltJrn: TADOQuery;
    RIncreEltJrnDernierNum: TIntegerField;
    RLettreNonValide: TADOTable;
    QLettrageAuto: TADOQuery;
    QLettrageAutoNumero: TIntegerField;
    QLettrageAutoNumFact: TWideStringField;
    RPropoEcritureMDebit: TFloatField;
    RPropoEcritureMCredit: TFloatField;
    RLettreNonValideDifference: TFloatField;
    RLettreNonValideLettre: TWideStringField;
    ListeNonValide: TADOTable;
    NumeroNouvElt: TADOTable;
    NumeroNouvEltNum: TIntegerField;
    doublonsEltJrn: TADOTable;
    doublonsEltJrnNumero: TIntegerField;
    RRechLetNumElt: TIntegerField;
    MAJIzy: TADOQuery;
    MAJIzyNumero: TIntegerField;
    RRechLetDaty: TStringField;
    Lettrer: TADOQuery;
    QLettrageAutoExpr1: TWideStringField;
    QLettrageAutoCompte: TWideStringField;
    SocieteFiltre: TWideStringField;
    RJournaltransferer: TStringField;
    Journaltransferer: TStringField;
    SuiviLetizy: TStringField;
    SuiviLettransferer: TStringField;
    EltSuiviizy: TStringField;
    ToutEltJrnizy: TStringField;
    SelEltJrnizy: TStringField;
    NumCpttotalisateur: TStringField;
    SelJournaltransferer: TStringField;
    Elementizy: TStringField;
    NonLettreizy: TStringField;
    MAJIzyizy: TStringField;
    Ecrituretransferer: TStringField;
    Ecritureizy: TStringField;
    SuiviTiersizy: TStringField;
    Temponboolean1: TSmallintField;
    Temponboolean2: TSmallintField;
    Societesiege: TSmallintField;
    Societetransferer: TSmallintField;
    RRechLettransferer: TStringField;
    RRechLetizy: TStringField;
    RRechLetX: TStringField;
    RCalculLettre_X: TADOQuery;
    RCalculLettre_XTotal: TFloatField;
    RCalculLettre_XMDebit: TFloatField;
    RCalculLettre_XMCredit: TFloatField;
    SuiviLetmontant: TLargeintField;
    EltSuivimontant: TLargeintField;
    Elementmontant: TLargeintField;
    ToutEltJrnmontant: TLargeintField;
    SelEltJrnmontant: TLargeintField;
    SelEltJrnMDebit: TLargeintField;
    SelEltJrnMCredit: TLargeintField;
    NonLettremontant: TLargeintField;
    Affichermontant: TLargeintField;
    SuiviTiersmontant: TLargeintField;
    EltLettreemontant: TLargeintField;
    Ecrituremontant: TLargeintField;
    RRechLetmontant: TLargeintField;
    RPropoEcrituremontant: TLargeintField;
    RCalculLettre_X_taltotal: TLargeintField;
    RCalculLettre_X_talmdebit: TLargeintField;
    RCalculLettre_X_talmcredit: TLargeintField;
    ADOQuery1: TADOQuery;
    procedure DataTiersCreate(Sender: TObject);
    procedure SelEltJrnCalcFields(DataSet: TDataSet);
    procedure RRechLetCalcFields(DataSet: TDataSet);
    procedure EltLettreeCalcFields(DataSet: TDataSet);
    procedure RPropoEcritureCalcFields(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    lettre:array[0..25] of string[1];
    stmois:array[1..12]of string[20];
    procedure ChangeChemin(ip,codesoc:string);
    function  EquivIndex(lettree:string):longint;
    function  EquivLettre(Index:longint):string;
    function  DeletrerElt(Numero:LongInt):boolean;
    procedure SupprimerLettre(Lettre:string);
    procedure SupprimerLettreNonValide;
  end;

var
  DataTiers: TDataTiers;
  IsFourni,IsCollect,IsClient,IsCompoCli,IsCompoFou,IsContact:Boolean;

procedure ChangeCheminTiers( ip,codesoc:string);export;
procedure CreerDataTiers;
procedure VonoyDataTiers;
procedure DataDeletrerElt(numero:integer;ip,codesoc:string);export;

implementation

uses lettrage;


{$R *.DFM}


procedure CreerDataTiers;
begin
  try
    Application.CreateForm(TDataTiers,DataTiers);
  except
  end;
end;

procedure VonoyDataTiers;
begin
  DataTiers.Free;
end;

procedure ChangeCheminTiers(ip,codesoc:string);
begin
  DataTiers.ChangeChemin(ip,codesoc);
end;

procedure DataDeletrerElt(numero:integer;ip,codesoc:string);
begin
  try
    CreerDataTiers;
    ChangeCheminTiers(ip,codesoc);
    DataTiers.DeletrerElt(numero);
  finally
    VonoyDataTiers;
  end;
end;

procedure TDataTiers.SupprimerLettre(Lettre:string);
begin
  SuppLettrage.Close;
  SuppLettrage.Parameters[0].Value :=Lettre;
  SuppLettrage.ExecSQL;
end;

procedure TDataTiers.SupprimerLettreNonValide;
begin
  RLettreNonValide.Open;
  RLettreNonValide.Requery;
  RLettreNonValide.First;
  while not RLettreNonValide.EOF do
  begin
    SupprimerLettre(RLettreNonValideLettre.Value);
    RLettreNonValide.Next;
  end;
end;

function TDataTiers.DeletrerElt(Numero:LongInt): boolean;
begin
  QLettrage.close;
  QLettrage.sql.clear;
  QLettrage.sql.Add('select * from Lettrage where NumElt=:a');
  QLettrage.parameters[0].Value:=Numero;
  QLettrage.open;
  if QLettrage.EOF then
  begin
    Result := false;//élement non letrré
    exit;
  end;
  DataTiers.SuppLettrage.close;
  DataTiers.SuppLettrage.parameters[0].Value:=DataTiers.RRechLetLettre.Value;
  DataTiers.SuppLettrage.ExecSQL;
  DataTiers.RRechLet.REquery;
  Result:=true;
end;

function TDataTiers.EquivIndex(lettree:string):longint;
var mille,cent,dix,reste:longint;
  i:integer;
begin
  result:=-1;
  mille:=0;
  cent:=0;
  dix:=0;
  reste:=0;
  if length(lettree)=0 then exit;
  if (lettree<'AAAA')and(lettree>'ZZZZ')then exit;
  for i:=0 to 25 do
    if lettree[1]=lettre[i] then
    begin
      mille:=i;
      break;
    end;
  for i:=0 to 25 do
    if lettree[2]=lettre[i] then
    begin
      cent:=i;
      break;
    end;
  for i:=0 to 25 do
    if lettree[3]=lettre[i] then
    begin
      dix:=i;
      break;
    end;
  for i:=0 to 25 do
    if lettree[4]=lettre[i] then
    begin
      reste:=i;
      break;
    end;
  result:=mille*26*26*26+cent*26*26+dix*26+reste;
end;

procedure TDataTiers.ChangeChemin(ip,codesoc:string);
var hita:boolean;
begin
  //showmessage(codesoc);
  if length(codesoc)=0 then exit;
  Societe.Close;
  Societe.Parameters[0].Value:=CodeSoc;
  Societe.Open;
  SelAdresse.Close;
  SelAdresse.Parameters[0].Value:=SocieteCode.Value;
  SelAdresse.Open;
  C_Exercice.Close;
  C_Exercice.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;'+
                                    'Extended Properties="DRIVER={PostgreSQL Unicode};'+
                                    'DATABASE='+SocieteChemin.Value+';'+
                                    'PASSWORD=vony;'+
                                    'SERVER='+ip+';PORT=5432;UID=postgres;SSLmode=disable;'+
                                    'ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;'+
                                    'RowVersioning=0;ShowSystemTables=0;ConnSettings=;Fetch=100;'+
                                    'UnknownSizes=0;MaxVarcharSize=255;MaxLongVarcharSize=8190;'+
                                    'Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLongVarchar=1;'+
                                    'UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSysTablePrefixes=;'+
                                    'LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;'+
                                    'UseServerSidePrepare=1;LowerCaseIdentifier=0;GssAuthUseGSS=0;XaOpt=1"';
  C_Exercice.Open;
  //showMessage(SocieteChemin.Value);
  Hita:=false;
end;


function TDataTiers.EquivLettre(Index:longint):string;
var    mille,cent,dix,reste:longint;
       millaine,centaine,disaine:longint;
begin
  if Index > 26*26*26*26 then
  begin
    showMessage('Dépasse nombre max des lettres:'+IntToStr(26*26*26*26));
    Result:='ZZZZ';
    Exit;
  end;
  mille:=Index div (26*26*26);
  millaine:=mille*(26*26*26);
  cent:=(Index-millaine)div (26*26);
  centaine:=cent* (26*26);
  dix:=(Index-millaine-centaine)div 26;
  disaine:=dix*26;
  reste:=index-millaine-centaine-disaine;
  result:=DataTiers.lettre[mille]+DataTiers.lettre[cent]+DataTiers.lettre[dix]+DataTiers.lettre[reste];
  {ShowMessage('mille:'+DataTiers.lettre[mille]+
              ' - cent:'+DataTiers.lettre[cent]+
              ' - dix:'+DataTiers.lettre[dix]+
              ' - reste:'+DataTiers.lettre[reste]);}

end;


procedure TDataTiers.DataTiersCreate(Sender: TObject);
begin
  lettre[0] :='A';lettre[1] :='B';lettre[2] :='C';lettre[3] :='D';
  lettre[4] :='E';lettre[5] :='F';lettre[6] :='G';lettre[7] :='H';
  lettre[8] :='I';lettre[9] :='J';lettre[10]:='K';lettre[11]:='L';
  lettre[12]:='M';lettre[13]:='N';lettre[14]:='O';lettre[15]:='P';
  lettre[16]:='Q';lettre[17]:='R';lettre[18]:='S';Lettre[19]:='T';
  lettre[20]:='U';lettre[21]:='V';lettre[22]:='W';lettre[23]:='X';
  lettre[24]:='Y';lettre[25]:='Z';

  stmois[1]:='Janvier';
  stmois[2]:='Février';
  stmois[3]:='Mars';
  stmois[4]:='Avril';
  stmois[5]:='Mai';
  stmois[6]:='Juin';
  stmois[7]:='Juillet';
  stmois[8]:='Août';
  stmois[9]:='Septembre';
  stmois[10]:='Octobre';
  stmois[11]:='Novembre';
  stmois[12]:='Décembre';  
end;

procedure TDataTiers.SelEltJrnCalcFields(DataSet: TDataSet);
begin
  if SelEltJrnDebit.Value='D' then
  begin
    SelEltJrnMDebit.value:=SelEltJrnMontant.Value;
    SelEltJrnMCredit.value:=0;
  end
  else
  begin
    SelEltJrnMcredit.value:=SelEltJrnMontant.Value;
    SelEltJrnMDebit.value:=0;
  end
end;

procedure TDataTiers.RRechLetCalcFields(DataSet: TDataSet);
var   Year, Month, Day: Word;
begin
  decodedate(RRechLetDateEsc.Value,Year, Month, Day);
  if (Year<1900) then
    RRechLetDaty.Value:=''
  else
    RRechLetDaty.Value:=FormatDateTime('dd/mm/yyyy',RRechLetDateEsc.Value);

  if RRechLetNbContre.Value=1 then
    RRechLetLContre.Value:=RRechLetContrePartie.value
  else
    RRechLetLContre.Value:='999999';
  if RRechLetDebit.value='D' then
  begin
    RRechLetMDebit.value:=RRechLetMontant.value;
    RRechLetMCredit.value:=0;
  end
  else
  begin
    RRechLetMDebit.value:=0;
    RRechLetMCredit.value:=RRechLetMontant.value;
  end;
  { Calcule libellé}
  RRechLetLibel2.Value:= RRechLetLibelle.value;
  {Achat : Libellé + Qté}
  if RRechLetTyp.Value=0 then
    RRechLetLibel2.Value:= RRechLetLibel2.value+' '+FormatFloat('#',RRechLetQte.value);
  {Vente : Libellé + Qté}
  if RRechLetTyp.Value=1 then
    RRechLetLibel2.Value:= RRechLetLibel2.value+' '+FormatFloat('#',RRechLetQte.value);
  {Tresorerie : N°CHQ+ Libellé}
  if RRechLetTyp.Value=2 then
      RRechLetLibel2.Value:= RRechLetSigleTaxe.value+' '+RRechLetLibel2.value;
  {Si Effet : libellé + EF AU + Date d'échéance}
  if ((RRechLetCompte.Value>'4121')and(RRechLetCompte.Value<'4122'))
    or ((RRechLetCompte.Value>'4021')and(RRechLetCompte.Value<'4022'))
    {or ((RechLetContrepartie.Value>'4121')and(RechLetContrepartie.Value<'4122'))
    or ((RechLetContrepartie.Value>'4021')and(RechLetContrepartie.Value<'4022'))}then
        RRechLetLibel2.Value:= RRechLetLibelle.value+' EF AU '+RRechLetDateFact.AsString;
  if RRechLetizy.Value<> '0' then
    RRechLetX.Value := 'X'
  else
    RRechLetX.Value := '';
end;

procedure TDataTiers.EltLettreeCalcFields(DataSet: TDataSet);
begin
  if EltLettreeDebit.value='D' then
  begin
    EltLettreeMDebit.value:=EltLettreeMontant.value;
    EltLettreeMCredit.value:=0;
  end
  else
  begin
    EltLettreeMDebit.value:=0;
    EltLettreeMCredit.value:=EltLettreeMontant.value;
  end;
  if EltLettreeNbContre.Value=1 then
    EltLettreeLContre.Value:=EltLettreeContrePartie.value
  else
    EltLettreeLContre.Value:='99999999';
  if EltLettreeQte.Value>0 then
    EltLettreePU.Value:=abs(EltLettreeMontant.Value/EltLettreeQte.Value)
  else
    EltLettreePU.Value:=0;
  { Calcule libellé}
  EltLettreeLibel2.Value:= EltLettreeLibelle.value;
  {Achat : Libellé + Qté}
  if EltLettreeTyp.Value=0 then
    EltLettreeLibel2.Value:= EltLettreeLibel2.value+' '+FormatFloat('#',EltLettreeQte.value);
  {Vente : Libellé + Qté}
  if EltLettreeTyp.Value=1 then
    EltLettreeLibel2.Value:= EltLettreeLibel2.value+' '+FormatFloat('#',EltLettreeQte.value);
  {Tresorerie : N°CHQ+ Libellé}
  if EltLettreeTyp.Value=2 then
      EltLettreeLibel2.Value:= EltLettreeSigleTaxe.value+' '+EltLettreeLibel2.value;
  {Si Effet : libellé + EF AU + Date d'échéance}
  if ((EltLettreeCompte.Value>'4121')and(EltLettreeCompte.Value<'4122'))
    or ((EltLettreeCompte.Value>'4021')and(EltLettreeCompte.Value<'4022'))
    {or ((EltLettreeContrepartie.Value>'4121')and(EltLettreeContrepartie.Value<'4122'))
    or ((EltLettreeContrepartie.Value>'4021')and(EltLettreeContrepartie.Value<'4022'))}then
        EltLettreeLibel2.Value:= EltLettreeLibelle.value+' EF AU '+EltLettreeDateFact.AsString;
end;

procedure TDataTiers.RPropoEcritureCalcFields(DataSet: TDataSet);
begin
  if RPropoEcritureDebit.Value='D' then
  begin
    RPropoEcritureMDebit.Value:=RPropoEcritureMontant.Value ;
    RPropoEcritureMCredit.Value:=0;
  end
  else
  begin
    RPropoEcritureMDebit.Value:=0;
    RPropoEcritureMCredit.Value:=RPropoEcritureMontant.Value ;
  end
end;

end.
