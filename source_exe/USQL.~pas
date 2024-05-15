Unit USQL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB;

type
  TDASQL = class(TDataModule)
    BatchMove1: TBatchMove;
    SourceJournal: TDataSource;
    SourceARegler: TDataSource;
    SourceEcriture: TDataSource;
    SourceRegle: TDataSource;
    SourceRElement: TDataSource;
    SourceSuivi: TDataSource;
    SourceSelEltJrn: TDataSource;
    SourceSelJournal: TDataSource;
    QJournaux: TADOQuery;
    CalculElt: TADOQuery;
    CalculEltDebit: TStringField;
    Balance: TADOQuery;
    ARegler: TADOQuery;
    SelBalanceC: TADOQuery;
    SelBalanceCNumCpt: TStringField;
    SelBalanceCSld1: TFloatField;
    SelBalanceCSld2: TFloatField;
    SelBalanceCSld3: TFloatField;
    SelBalanceCSld4: TFloatField;
    SelBalanceCSld5: TFloatField;
    SelBalanceCSld6: TFloatField;
    SelBalanceCSld7: TFloatField;
    SelBalanceCSld8: TFloatField;
    SelBalanceCSld9: TFloatField;
    SelBalanceCSld10: TFloatField;
    Bilan: TADOQuery;
    BilanNumero: TIntegerField;
    BilanIntitule: TStringField;
    BilanTotal: TFloatField;
    BilanTypa: TSmallintField;
    BilanRang: TStringField;
    BilanTitre: TIntegerField;
    BilanIntitule_1: TStringField;
    BilanTotal_1: TFloatField;
    BilanRubrique: TIntegerField;
    BilanRang_1: TStringField;
    BilanNumero_2: TIntegerField;
    BilanIntitule_2: TStringField;
    BilanSSTitre: TIntegerField;
    BilanUnioncp: TIntegerField;
    BilanNumero_3: TIntegerField;
    BilanDebutCpt: TStringField;
    BilanFinCompte: TStringField;
    BilanAmDebut: TStringField;
    BilanAmFin: TStringField;
    BilanBrut: TFloatField;
    BilanAmPro: TFloatField;
    BilanNet: TFloatField;
    BilanProDebut: TStringField;
    BilanProFin: TStringField;
    BilanSldInit: TFloatField;
    BilanNumero_1: TIntegerField;
    Amorti: TADOQuery;
    AmortiJournal: TStringField;
    AmortiDebit: TStringField;
    AmortiNumero: TIntegerField;
    AmortiCompte: TStringField;
    AmortiLibelle: TStringField;
    Provision: TADOQuery;
    ProvisionJournal: TStringField;
    ProvisionDebit: TStringField;
    ProvisionNumero: TIntegerField;
    ProvisionCompte: TStringField;
    ProvisionLibelle: TStringField;
    SelJournal: TADOQuery;
    SelJournalCode: TStringField;
    SelJournalPeriode: TStringField;
    SelJournalJour: TSmallintField;
    SelJournalCodeJrnx: TStringField;
    SelJournalTiers: TStringField;
    SelJournalNumCHQ: TStringField;
    SelJournalDateEsc: TDateField;
    RepQuery: TADOQuery;
    RepQuery1: TADOQuery;
    RepQueryNumero: TIntegerField;
    RepQueryIntitule: TStringField;
    RepQueryTotal: TFloatField;
    RepQueryTypa: TSmallintField;
    RepQueryRang: TStringField;
    RepQueryTitre: TIntegerField;
    RepQueryNumero_1: TIntegerField;
    RepQueryIntitule_1: TStringField;
    RepQueryTotal_1: TFloatField;
    RepQueryRubrique: TIntegerField;
    RepQueryRang_1: TStringField;
    RepQueryNumero_2: TIntegerField;
    RepQueryIntitule_2: TStringField;
    RepQuerySSTitre: TIntegerField;
    RepQueryUnioncp: TIntegerField;
    RepQueryNumero_3: TIntegerField;
    RepQueryDebutCpt: TStringField;
    RepQueryFinCompte: TStringField;
    RepQueryAmDebut: TStringField;
    RepQueryAmFin: TStringField;
    RepQueryBrut: TFloatField;
    RepQueryAmPro: TFloatField;
    RepQueryNet: TFloatField;
    RepQueryProDebut: TStringField;
    RepQueryProFin: TStringField;
    RepQuerySldInit: TFloatField;
    RepQuery1Numero: TIntegerField;
    RepQuery1Intitule: TStringField;
    RepQuery1Total: TFloatField;
    RepQuery1Typa: TSmallintField;
    RepQuery1Rang: TStringField;
    RepQuery1Titre: TIntegerField;
    RepQuery1Numero_1: TIntegerField;
    RepQuery1Intitule_1: TStringField;
    RepQuery1Total_1: TFloatField;
    RepQuery1Rubrique: TIntegerField;
    RepQuery1Rang_1: TStringField;
    RepQuery1Numero_2: TIntegerField;
    RepQuery1Intitule_2: TStringField;
    RepQuery1SSTitre: TIntegerField;
    RepQuery1Unioncp: TIntegerField;
    RepQuery1Numero_3: TIntegerField;
    RepQuery1DebutCpt: TStringField;
    RepQuery1FinCompte: TStringField;
    RepQuery1AmDebut: TStringField;
    RepQuery1AmFin: TStringField;
    RepQuery1Brut: TFloatField;
    RepQuery1AmPro: TFloatField;
    RepQuery1Net: TFloatField;
    RepQuery1ProDebut: TStringField;
    RepQuery1ProFin: TStringField;
    RepQuery1SldInit: TFloatField;
    Taxable: TADOQuery;
    TaxableCode: TStringField;
    TaxablePeriode: TStringField;
    TaxableJour: TSmallintField;
    TaxableCodeJrnx: TStringField;
    TaxableDateFact: TDateField;
    TaxableNumFact: TStringField;
    TaxableJournal: TStringField;
    TaxableDebit: TStringField;
    TaxableNumero: TIntegerField;
    Taxablecompte: TStringField;
    TaxableLibelle: TStringField;
    DetTaxe: TADOQuery;
    DetTaxeCode: TStringField;
    DetTaxeMontant: TCurrencyField;
    DetTaxeNumFact: TStringField;
    DetTaxeLibelle: TStringField;
    DetTaxeQte: TFloatField;
    DetTaxeTiers: TStringField;
    DetTaxeNIF: TStringField;
    DetTaxeStatistique: TStringField;
    DetTaxeNom: TStringField;
    DetTaxeAdresse: TStringField;
    DetTaxeCompte: TStringField;
    DetTaxeDebit: TStringField;
    DetTaxeMDebit: TFloatField;
    DetTaxeMCredit: TFloatField;
    DetTaxeIntitule: TStringField;
    DetTaxeNature: TStringField;
    DetTaxeJournal: TStringField;
    DetTaxeDateEsc: TDateField;
    DetTaxeSMontant: TFloatField;
    DetTaxePeriode: TStringField;
    DetTaxeTypX: TStringField;
    DetTaxeNatureProd: TStringField;
    DetTaxeContrepartie: TStringField;
    DetTaxeTiersOuContre: TStringField;
    DetTaxeSQte: TFloatField;
    DetTaxeSigleTaxe: TStringField;
    DetTaxeTVACompte: TStringField;
    DetTaxeStatDouane: TStringField;
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
    EcritureDateEsc: TDateField;
    SelEltJrn2: TADOQuery;
    RechLet: TADOQuery;
    RechLetJournal: TStringField;
    RechLetNumFact: TStringField;
    RechLetMCredit: TFloatField;
    RechLetMDebit: TFloatField;
    RechLetLettre: TStringField;
    RechLetLibelle: TStringField;
    RechLetCompte: TStringField;
    RechLetDateFact: TDateField;
    RechLetDebit: TStringField;
    RechLetNumero: TIntegerField;
    RechLetNbcontre: TSmallintField;
    RechLetContrepartie: TStringField;
    RechLetLContre: TStringField;
    RechLetIntitule: TStringField;
    RechLetPeriode: TStringField;
    RechLetCodeJrnx: TStringField;
    RechLetJour: TSmallintField;
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
    SelToPrint2: TADOQuery;
    SelToPrint2Code: TStringField;
    SelToPrint2Code_1: TStringField;
    SelToPrint2Periode: TStringField;
    SelToPrint2Jour: TSmallintField;
    SelToPrint2CodeJrnx: TStringField;
    SelToPrint2DateFact: TDateField;
    SelToPrint2Tiers: TStringField;
    SelToPrint2NumCHQ: TStringField;
    SelToPrint2journal: TStringField;
    SelToPrint2Debit: TStringField;
    SelToPrint2Numero: TIntegerField;
    SelToPrint2Compte: TStringField;
    SelToPrint2Contrepartie: TStringField;
    SelToPrint2Nbcontre: TSmallintField;
    SelToPrint2Qte: TFloatField;
    SelToPrint2MDebit: TFloatField;
    SelToPrint2MCredit: TFloatField;
    SelToPrint2Contre: TStringField;
    SelToPrint2Num: TStringField;
    SelToPrint2Libel2: TStringField;
    SelToPrint2Libelle: TStringField;
    SelToPrint2Compte_1: TStringField;
    SelToPrint2NumFact: TStringField;
    SelToPrint2Typ: TSmallintField;
    SelToPrint2TypX: TStringField;
    SelToPrint2SigleTaxe: TStringField;
    SelToPrint2DateEsc: TDateField;
    SelCummul: TADOQuery;
    SelCummulDebit: TStringField;
    SelCummulMontant: TCurrencyField;
    SelCummulMDebit: TFloatField;
    SelCummulMCredit: TFloatField;
    SelCummulcompte: TStringField;
    SelCummulPeriode: TStringField;
    SelCummulMois: TStringField;
    SelCummulJournal: TStringField;
    SelCummulIntitule: TStringField;
    SelCummulIntitCpt: TStringField;
    Declare: TADOQuery;
    SuiviTiers: TADOQuery;
    SuiviTiersCode: TStringField;
    SuiviTiersPeriode: TStringField;
    SuiviTiersJour: TSmallintField;
    SuiviTiersCodeJrnx: TStringField;
    SuiviTiersDateFact: TDateField;
    SuiviTiersNumFact: TStringField;
    SuiviTiersJournal: TStringField;
    SuiviTiersDebit: TStringField;
    SuiviTiersNumero: TIntegerField;
    SuiviTiersCompte: TStringField;
    SuiviTiersNumSource: TIntegerField;
    SuiviTiersReference: TStringField;
    SuiviTiersRang: TSmallintField;
    SuiviTiersSur: TSmallintField;
    SuiviTiersPourc: TFloatField;
    SuiviTiersEcheance: TDateField;
    SuiviTiersMontant_1: TFloatField;
    SuiviTiersLibelle: TStringField;
    SuiviTiersNumDest: TStringField;
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
    Resume: TADOQuery;
    ResumePeriode: TStringField;
    ResumeCompte: TStringField;
    ResumeDebit: TStringField;
    Resumejournal: TStringField;
    ResumeCompteG: TStringField;
    QEltJrn: TADOQuery;
    QEltJrnJournal: TStringField;
    QEltJrnNumero: TIntegerField;
    QEltJrnDebit: TStringField;
    QEltJrnCompte: TStringField;
    QEltJrnLibelle: TStringField;
    QEltJrnContrepartie: TStringField;
    QEltJrnNbcontre: TSmallintField;
    QEltJrnQte: TFloatField;
    QEltJrnDateFact: TDateField;
    QEltJrnNumFact: TStringField;
    QEltJrnColis: TFloatField;
    QEltJrnTypX: TStringField;
    QEltJrnSigleTaxe: TStringField;
    QEltJrnLettre: TStringField;
    SelDecl: TADOQuery;
    SelDeclCOMPTE: TStringField;
    SelDeclMONTHT: TFloatField;
    SelDeclTAXE: TFloatField;
    SelDeclQTE: TFloatField;
    SelDeclOBSERVATIO: TStringField;
    SelDeclNature: TStringField;
    SelDeclAdresse: TStringField;
    SelDeclNom: TStringField;
    SelDeclPrestation: TStringField;
    SelDeclNIF: TStringField;
    SelDeclQuit: TStringField;
    SelDeclDtQuit: TDateField;
    SelDeclChoixStat1: TStringField;
    SelDeclUnite: TStringField;
    SelDeclCodedecl: TStringField;
    SelDeclPrestation1: TStringField;
    SelDeclSTAT: TStringField;
    SelDeclTP: TStringField;
    SelDeclDateTP: TDateField;
    SelDeclDateQuittance: TStringField;
    SelDeclDateTaxeProf: TStringField;
    SelLettrage: TADOQuery;
    SelLettrageNumElt: TIntegerField;
    SelLettrageLettre: TStringField;
    SelLettragePeriodeLet: TStringField;
    SelLettrageTypeLet: TStringField;
    DernierLettre: TADOQuery;
    DernierLettreNumElt: TIntegerField;
    DernierLettreLettre: TStringField;
    DernierLettreEqIndex: TIntegerField;
    RecaTaxe: TADOQuery;
    RecaTaxeRubrique: TStringField;
    RecaTaxecompte: TStringField;
    RecaTaxeDateEsc: TDateField;
    RecaTaxeNumFact: TStringField;
    RecaTaxeMontant: TCurrencyField;
    RecaTaxeTaxable: TFloatField;
    RecaTaxeMTaxable: TFloatField;
    RecaTaxeMNonTaxable: TFloatField;
    RecaTaxeMTVA: TFloatField;
    RecaTaxeNonTaxable: TBooleanField;
    RecaTaxeDescription: TStringField;
    RecaTaxeSMontant: TFloatField;
    RecaTaxeDebit: TStringField;
    RecaTaxeJournal: TStringField;
    SelToPrint: TADOQuery;
    SelToPrintJour: TSmallintField;
    SelToPrintCompte: TStringField;
    SelToPrintDebit: TStringField;
    SelToPrintPeriode: TStringField;
    SelToPrintIntitu: TStringField;
    SelToPrintCode: TStringField;
    SelToPrintCodeJrnx: TStringField;
    SelToPrintDateFact: TDateField;
    SelToPrintNumFact: TStringField;
    SelToPrintjournal: TStringField;
    SelToPrintNumero: TIntegerField;
    SelToPrintLibelle: TStringField;
    NumCHQ_Fact: TADOQuery;
    TVASurEcr: TADOQuery;
    SoldeCpte: TADOQuery;
    NumCheque: TADOQuery;
    EF: TADOQuery;
    TiersSurEcr: TADOQuery;
    Qannexe: TADOQuery;
    EFBrut_1: TADOQuery;
    SuiviLet: TADOQuery;
    NumCHQ_FactSigleTaxe: TStringField;
    NumCHQ_Factcompte: TStringField;
    NumCHQ_FactCheque: TStringField;
    NumCHQ_FactCodeJx: TStringField;
    NumCHQ_FactTyp: TIntegerField;
    TVASurEcrJournal: TStringField;
    TVASurEcrcompte: TStringField;
    SoldeCpteDebit: TStringField;
    EFTypa: TSmallintField;
    EFTitre: TIntegerField;
    EFSSTitre: TIntegerField;
    EFUnionCp: TIntegerField;
    EFNumero_3: TIntegerField;
    EFcompte: TStringField;
    EFDebit: TStringField;
    EFMDebit: TFloatField;
    EFMCredit: TFloatField;
    EFDebutCpt: TStringField;
    EFFinCompte: TStringField;
    EFUtilisation: TSmallintField;
    EFProDebut: TStringField;
    EFAmDebut: TStringField;
    EFAmFin: TStringField;
    EFProFin: TStringField;
    EFIntitule: TStringField;
    EFIntitule_2: TStringField;
    EFIntitule_3: TStringField;
    EFIntitule_1: TStringField;
    EFSMontant: TFloatField;
    EFTypSomme: TSmallintField;
    EFJournal: TStringField;
    EFvalexpr: TFloatField;
    EFExpr: TStringField;
    QannexeTypa: TSmallintField;
    QannexeRang: TStringField;
    QannexeNumero: TIntegerField;
    QannexeIntitule: TStringField;
    QannexeTotal: TFloatField;
    QannexeTitre: TIntegerField;
    QannexeRang_1: TStringField;
    QannexeNumero_1: TIntegerField;
    QannexeIntitule_1: TStringField;
    QannexeTotal_1: TFloatField;
    QannexeRubrique: TIntegerField;
    QannexeExpr: TStringField;
    QannexeSSTitre: TIntegerField;
    QannexeNumero_2: TIntegerField;
    QannexeIntitule_2: TStringField;
    QannexeTotal_2: TFloatField;
    QannexeUnionCp: TIntegerField;
    QannexeNumero_3: TIntegerField;
    QannexeDebutCpt: TStringField;
    QannexeFinCompte: TStringField;
    QannexeAmDebut: TStringField;
    QannexeAmFin: TStringField;
    QannexeBrut: TFloatField;
    QannexeAmPro: TFloatField;
    QannexeNet: TFloatField;
    QannexeProDebut: TStringField;
    QannexeProFin: TStringField;
    QannexeSldInit: TFloatField;
    QannexeUtilisation: TSmallintField;
    QannexeTypSomme: TSmallintField;
    QannexeTotal_3: TFloatField;
    QannexeCompte: TStringField;
    QannexeDEBIT1: TFloatField;
    QannexeCREDIT1: TFloatField;
    QannexeDEBIT2: TFloatField;
    QannexeCREDIT2: TFloatField;
    QannexeDEBIT3: TFloatField;
    QannexeCREDIT3: TFloatField;
    QannexeDEBIT4: TFloatField;
    QannexeCREDIT4: TFloatField;
    QannexeDEBIT5: TFloatField;
    QannexeCREDIT5: TFloatField;
    QannexeDEBIT6: TFloatField;
    QannexeCREDIT6: TFloatField;
    QannexeDEBIT7: TFloatField;
    QannexeCREDIT7: TFloatField;
    QannexeDEBIT8: TFloatField;
    QannexeCREDIT8: TFloatField;
    QannexeCREDIT9: TFloatField;
    QannexeDEBIT10: TFloatField;
    QannexeCREDIT10: TFloatField;
    QannexeAUTRE: TStringField;
    QannexeDEBIT9: TFloatField;
    QannexeINTITULE_3: TStringField;
    QannexeDEBIT_1: TFloatField;
    QannexeCREDIT_1: TFloatField;
    QannexeIntitGroup: TStringField;
    EFBrut_1Debit: TStringField;
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
    EFProv: TADOQuery;
    QCalculResultat: TADOQuery;
    NumFacture: TADOQuery;
    Auxiliaire: TADOQuery;
    BalConCo: TADOQuery;
    precu: TADOQuery;
    EFProvDebit: TStringField;
    QCalculResultatRDebit1: TFloatField;
    QCalculResultatRCredit1: TFloatField;
    QCalculResultatRDebit2: TFloatField;
    QCalculResultatRCredit2: TFloatField;
    QCalculResultatRDebit3: TFloatField;
    QCalculResultatRCredit3: TFloatField;
    QCalculResultatRDebit4: TFloatField;
    QCalculResultatRCredit4: TFloatField;
    QCalculResultatRDebit5: TFloatField;
    QCalculResultatRCredit5: TFloatField;
    QCalculResultatRDebit6: TFloatField;
    QCalculResultatRCredit6: TFloatField;
    QCalculResultatRDebit7: TFloatField;
    QCalculResultatRCredit7: TFloatField;
    QCalculResultatRDebit8: TFloatField;
    QCalculResultatRCredit8: TFloatField;
    QCalculResultatRDebit9: TFloatField;
    QCalculResultatRCredit9: TFloatField;
    AuxiliaireTypa: TStringField;
    BalConCocode: TStringField;
    BalConCoCompteG: TStringField;
    BalConCoIntituleG: TStringField;
    BalConCoCompte: TStringField;
    BalConCoDebit: TStringField;
    BalConCoIntitule: TStringField;
    BalConCoPeriode: TStringField;
    DerJournal: TADOQuery;
    R_EcriturePourLettrage: TADOQuery;
    EltDansJrnx: TADOQuery;
    DerJournalCode: TStringField;
    R_EcriturePourLettrageNumero: TIntegerField;
    EltDansJrnxPeriode: TStringField;
    EltDansJrnxJour: TSmallintField;
    EltDansJrnxcodeJrnx: TStringField;
    EltDansJrnxCode: TStringField;
    EFBrut: TADOQuery;
    EFBrutDebit: TStringField;
    EFBrutcompte: TStringField;
    EFBrutIntitule: TStringField;
    DeclareDebit: TWideStringField;
    DeclareCompte: TWideStringField;
    DeclareMontant: TBCDField;
    DeclareSMontant: TFloatField;
    DeclareSQte: TFloatField;
    DeclareQte: TFloatField;
    DeclareTiers: TWideStringField;
    DeclareCpteStat: TWideStringField;
    DeclareChoixStat: TStringField;
    DeclareQuittance: TWideStringField;
    DeclareDateQuittance: TStringField;
    DeclareDateQuit: TDateTimeField;
    DeclareTP: TWideStringField;
    DeclareDateTaxeProf: TStringField;
    DeclareDateTP: TDateTimeField;
    DeclareTypX: TWideStringField;
    DeclareNIF_1: TWideStringField;
    DeclareAdresse: TWideStringField;
    DeclareNom: TWideStringField;
    DeclareCodeProd: TWideStringField;
    DeclareNumCHQ: TWideStringField;
    DeclareJournal: TWideStringField;
    DeclareStatistique: TWideStringField;
    DeclareNIF: TWideStringField;
    SelConsolide: TADOQuery;
    SelConsolideSiege: TStringField;
    SelConsolideagence: TStringField;
    SelConsolideChemSiege: TStringField;
    SelNumCpt: TADOQuery;
    SelNumCptNumCpt: TStringField;
    SelNumCptIntitule: TStringField;
    SelParamet: TADOQuery;
    SelParametNumero: TSmallintField;
    SelParametTexte: TStringField;
    SelParametDaty: TDateField;
    SelParametEntier: TIntegerField;
    SelParametReel: TFloatField;
    SelGroupe: TADOQuery;
    ExpTotal: TADOQuery;
    ExpTotalnumero: TIntegerField;
    ExpTotalTotal: TFloatField;
    SelTitre3: TADOQuery;
    SelTitre3Total: TFloatField;
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
    SelNumDiverDeA: TADOQuery;
    SelNumDiverDeACodeProd: TStringField;
    SelNumDiverDeANumCpt: TStringField;
    SelUnion: TADOQuery;
    SelUnionNumero: TAutoIncField;
    SelUnionIntitule: TStringField;
    SelUnionSSTitre: TIntegerField;
    SelParaDecl: TADOQuery;
    SelParaDeclparametre: TStringField;
    SelParaDeclrubrique: TStringField;
    SelParaDeclCompteDe: TStringField;
    SelParaDeclA: TStringField;
    SelParaDeclCompteA: TStringField;
    SelNumDiverByStat: TADOQuery;
    SelNumDiverByStatNumCpt: TStringField;
    SelNumDiverByStatStatistique: TStringField;
    SelNumDiverByStatQuittance: TStringField;
    SelNumDiverByStatNIF: TStringField;
    SelNumDiverByStatDateQuit: TDateField;
    SelNumDiverByStatNatureProd: TStringField;
    SelNumDiverByStatCodeProd: TStringField;
    SelNumDiverByStatCodeDecl: TStringField;
    SelNumDiverByStatAbrev: TStringField;
    SelNumDiverByStatUniteProd: TStringField;
    SelNumDiverByStatNom: TStringField;
    SelNumDiver3: TADOQuery;
    SelNumDiver3CodeProd: TStringField;
    Am_Prov: TADOQuery;
    Am_ProvDEBIT1: TFloatField;
    Am_ProvCREDIT1: TFloatField;
    Am_ProvDEBIT2: TFloatField;
    Am_ProvCREDIT2: TFloatField;
    Am_ProvDEBIT3: TFloatField;
    Am_ProvCREDIT3: TFloatField;
    Am_ProvDEBIT4: TFloatField;
    Am_ProvCREDIT4: TFloatField;
    Am_ProvDEBIT5: TFloatField;
    Am_ProvCREDIT5: TFloatField;
    Am_ProvDEBIT6: TFloatField;
    Am_ProvCREDIT6: TFloatField;
    Am_ProvINTITULE: TStringField;
    Am_ProvDEBIT_1: TFloatField;
    Am_ProvCREDIT_1: TFloatField;
    ParamEF: TADOQuery;
    ParamEFRang: TStringField;
    ParamEFRang_1: TStringField;
    ParamEFRang_2: TStringField;
    ParamEFNumero: TIntegerField;
    ParamEFNumero_1: TIntegerField;
    ParamEFNumero_2: TIntegerField;
    ParamEFNumero_3: TIntegerField;
    ParamEFDebutCpt: TStringField;
    ParamEFFinCompte: TStringField;
    ParamEFAmDebut: TStringField;
    ParamEFAmFin: TStringField;
    ParamEFProDebut: TStringField;
    ParamEFProFin: TStringField;
    ParamEFDEBIT1: TFloatField;
    ParamEFCREDIT1: TFloatField;
    ParamEFDEBIT2: TFloatField;
    ParamEFCREDIT2: TFloatField;
    ParamEFDEBIT3: TFloatField;
    ParamEFCREDIT3: TFloatField;
    ParamEFDEBIT4: TFloatField;
    ParamEFCREDIT4: TFloatField;
    ParamEFDEBIT5: TFloatField;
    ParamEFCREDIT5: TFloatField;
    ParamEFDEBIT6: TFloatField;
    ParamEFCREDIT6: TFloatField;
    ParamEFDEBIT_1: TFloatField;
    ParamEFCREDIT_1: TFloatField;
    ParamEFTypa: TSmallintField;
    ParamEFMontant1: TFloatField;
    ParamEFMontant2: TFloatField;
    ParamEFMontant3: TFloatField;
    ParamEFMontant4: TFloatField;
    ParamEFMontant5: TFloatField;
    ParamEFMontant6: TFloatField;
    ParamEFMontant7: TFloatField;
    ParamEFTotMontant: TFloatField;
    ParamEFLeDetail: TSmallintField;
    ParamEFUtilisation: TSmallintField;
    ParamEFRang_3: TStringField;
    ParamEFIntitDebCpt: TStringField;
    ParamEFIntitGroup: TStringField;
    ParamEFIntitule: TStringField;
    ParamEFIntitule_1: TStringField;
    ParamEFIntitule_2: TStringField;
    ParamEFIntitule_3: TStringField;
    ParamEFNumero_4: TIntegerField;
    ParamEFINTITULE_4: TStringField;
    ParamEFTypSomme: TSmallintField;
    SelConsolid: TADOQuery;
    SelConsolidDEBIT1: TFloatField;
    SelConsolidCREDIT1: TFloatField;
    SelConsolidDEBIT2: TFloatField;
    SelConsolidCREDIT2: TFloatField;
    SelConsolidDEBIT3: TFloatField;
    SelConsolidCREDIT3: TFloatField;
    SelConsolidDEBIT4: TFloatField;
    SelConsolidCREDIT4: TFloatField;
    SelConsolidDEBIT5: TFloatField;
    SelConsolidCREDIT5: TFloatField;
    SelConsolidDEBIT6: TFloatField;
    SelConsolidCREDIT6: TFloatField;
    SelConsolidINTITULE: TStringField;
    SelConsolidDEBIT_1: TFloatField;
    SelConsolidCREDIT_1: TFloatField;
    QConsolidee: TADOQuery;
    QConsolideesiege: TStringField;
    QConsolideeAgence: TStringField;
    QConsolideeNom: TStringField;
    NumCompte: TADOQuery;
    NumCompteNumero: TStringField;
    NumCompteNumCpt: TStringField;
    NumCompteIntitule: TStringField;
    NumCompteDetail: TSmallintField;
    NumCompteClasse: TSmallintField;
    NumCompteGClasse: TSmallintField;
    SelExpSSTT: TADOQuery;
    SelExpSSTTSSTitre: TIntegerField;
    SelExpSSTTNumero: TIntegerField;
    SelExpSSTTNumTitre: TIntegerField;
    SelExpSSTTOperation: TStringField;
    SelExpSSTTTotal: TFloatField;
    SelExpSSTTIntitule: TStringField;
    SelSSTitre: TADOQuery;
    SelSSTitreRang: TStringField;
    SelSSTitreTotal: TFloatField;
    SelSSTitreRubrique: TIntegerField;
    SelSSTitreNumero: TAutoIncField;
    SelSSTitreTitre: TIntegerField;
    SelSSTitreIntitule: TStringField;
    SelSSTitre2: TADOQuery;
    SelSSTitre2Numero_1: TIntegerField;
    SelSSTitre2Total_1: TFloatField;
    SelSSTitre2Intitule_1: TStringField;
    SelTypProd: TADOQuery;
    SelTypProdMarque: TStringField;
    SelTypProdReference: TStringField;
    SelTypProdFamille: TStringField;
    SelTypProdUniteX: TStringField;
    SelTypProdUniteCol: TStringField;
    SelTypProdcode: TStringField;
    SelTypProdNature: TStringField;
    Sel2TypProd: TADOQuery;
    Sel2TypProdcode: TStringField;
    Sel2TypProdnature: TStringField;
    Sel2TypProdMarque: TStringField;
    Sel2TypProdReference: TStringField;
    Sel2TypProdFamille: TStringField;
    Sel2TypProdUniteX: TStringField;
    Sel2TypProdUniteCol: TStringField;
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
    SelNumDivers2: TADOQuery;
    SelNumDivers2NumCpt: TStringField;
    SelNumDivers2Statistique: TStringField;
    SelNumDivers2Quittance: TStringField;
    SelNumDivers2NIF: TStringField;
    SelNumDivers2DateQuit: TDateField;
    SelNumDivers2NatureProd: TStringField;
    SelNumDivers2CodeProd: TStringField;
    SelNumDivers2CodeDecl: TStringField;
    SelNumDivers2Abrev: TStringField;
    SelNumDivers2UniteProd: TStringField;
    SelUnion2: TADOQuery;
    SelUnion2Numero: TAutoIncField;
    SelUnion2SSTitre: TIntegerField;
    SelUnion2Intitule: TStringField;
    BilanAct_1: TADOQuery;
    BilanAct_1NUMERO_2: TFloatField;
    BilanAct_1BRUT: TFloatField;
    BilanAct_1AMPRO: TFloatField;
    BilanAct_1NET_N_1: TFloatField;
    BilanAct_1NUMERO_3: TFloatField;
    SeUnion3: TADOQuery;
    SeUnion3Numero: TAutoIncField;
    SeUnion3SSTitre: TIntegerField;
    SeUnion3TypSomme: TSmallintField;
    SelTitre: TADOQuery;
    SelTitreRang: TStringField;
    SelTitreTotal: TFloatField;
    SelTitreTypa: TSmallintField;
    SelTitreNumero: TAutoIncField;
    SelTitreIntitule: TStringField;
    Qconsolid: TADOQuery;
    QconsolidDEBIT1: TFloatField;
    QconsolidCREDIT1: TFloatField;
    QconsolidDEBIT2: TFloatField;
    QconsolidCREDIT2: TFloatField;
    QconsolidDEBIT3: TFloatField;
    QconsolidCREDIT3: TFloatField;
    QconsolidDEBIT4: TFloatField;
    QconsolidCREDIT4: TFloatField;
    QconsolidDEBIT5: TFloatField;
    QconsolidCREDIT5: TFloatField;
    QconsolidDEBIT6: TFloatField;
    QconsolidCREDIT6: TFloatField;
    QconsolidDEBIT_1: TFloatField;
    QconsolidCREDIT_1: TFloatField;
    QconsolidDebit_Prec: TFloatField;
    QconsolidCredit_Prec: TFloatField;
    QconsolidStDebit1: TFloatField;
    QconsolidStDebit2: TFloatField;
    QconsolidStDebit3: TFloatField;
    QconsolidStDebit4: TFloatField;
    QconsolidStDebit5: TFloatField;
    QconsolidStDebit6: TFloatField;
    QconsolidStCredit1: TFloatField;
    QconsolidStCredit2: TFloatField;
    QconsolidStCredit3: TFloatField;
    QconsolidStCredit4: TFloatField;
    QconsolidStCredit5: TFloatField;
    QconsolidStCredit6: TFloatField;
    QconsolidTotDebit: TFloatField;
    QconsolidTotCredit: TFloatField;
    QconsolidStTotDeb: TFloatField;
    QconsolidStTotCred: TFloatField;
    QconsolidStDebitPrec: TFloatField;
    QconsolidStCreditPrec: TFloatField;
    SelUnionCp: TADOQuery;
    SelUnionCpNumero: TIntegerField;
    SelUnionCpIntitule: TStringField;
    NumDivers: TADOQuery;
    NumDiversNumCpt: TStringField;
    NumDiversStatistique: TStringField;
    NumDiversQuittance: TStringField;
    NumDiversNIF: TStringField;
    NumDiversDateQuit: TDateField;
    NumDiversUniteProd: TStringField;
    NumDiversNatureProd: TStringField;
    NumDiversCodeProd: TStringField;
    NumDiversCodeDecl: TStringField;
    NumDiversAbrev: TStringField;
    SelDtImprBal: TADOQuery;
    SelDtImprBaldaty: TStringField;
    SelDtImprBalAgence: TStringField;
    SelDtImprBaltypa: TStringField;
    SelDtImprBaldonnee: TStringField;
    SelDtImprBaldonnee2: TStringField;
    SourceTypePara: TDataSource;
    Seltitre2: TADOQuery;
    Seltitre2Numero: TAutoIncField;
    Seltitre2Total: TFloatField;
    Seltitre2Intitule: TStringField;
    Lecriture: TADOQuery;
    Lecriturecode: TStringField;
    LecriturePeriode: TStringField;
    LecritureJour: TSmallintField;
    LecritureCodeJrnx: TStringField;
    LecritureDateFact: TDateField;
    LecritureNumFact: TStringField;
    LecritureTiers: TStringField;
    LecritureSigleTaxe: TStringField;
    LecritureNumCHQ: TStringField;
    LecritureDateEsc: TDateField;
    Lecriturejournal: TStringField;
    LecritureDebit: TStringField;
    LecritureNumero: TIntegerField;
    LecritureCompte: TStringField;
    LecritureLibelle: TStringField;
    LecritureContrepartie: TStringField;
    LecritureNbcontre: TSmallintField;
    LecritureQte: TFloatField;
    LecritureTypX: TWideStringField;
    SourcePlan: TADOQuery;
    SourcePlanNumCpt: TStringField;
    SourcePlanIntitule: TStringField;
    SourcePlanDetail: TSmallintField;
    SourcePlanClasse: TSmallintField;
    SourcePlanGClasse: TSmallintField;
    SourcePlanGGroupe: TIntegerField;
    SourcePlanOGroupe: TIntegerField;
    SourcePlanRS: TStringField;
    SourcePlanNom: TStringField;
    SourcePlanAdresse: TStringField;
    SourcePlanStatistique: TStringField;
    SourcePlanQuittance: TStringField;
    SourcePlanNIF: TStringField;
    SourcePlanDateQuit: TDateField;
    SourcePlanNatureProd: TStringField;
    SourcePlanCodeProd: TStringField;
    SourcePlanCodeDecl: TStringField;
    SourcePlanAbrev: TStringField;
    SourcePlanUniteProd: TStringField;
    SourcePlanTP: TStringField;
    SourcePlanDateTP: TDateField;
    SourcePlanExonere: TSmallintField;
    SelParametLogique: TSmallintField;
    SelJournalDeclarer: TSmallintField;
    SelArrete: TADOQuery;
    SelArretePeriode: TWideStringField;
    SelArreteJournaux: TWideStringField;
    SelArreteTransferer: TSmallintField;
    SelArreteDernierNum: TWideStringField;
    SelArreteArreter: TSmallintField;
    SelArreteDerNumCHQ: TIntegerField;
    QJournauxCode: TWideStringField;
    QJournauxIntitule: TWideStringField;
    QJournauxTyp: TSmallintField;
    QJournauxCompte: TWideStringField;
    DeclareExonere: TSmallintField;
    DeclarePeriode: TWideStringField;
    DeclareTyp: TSmallintField;
    DeclareNumero: TAutoIncField;
    DeclareCP: TWideStringField;
    DeclareNumFact: TWideStringField;
    DeclareNatureProd: TWideStringField;
    DeclareIntitule: TWideStringField;
    DeleteDec: TADOQuery;
    CompleterZero: TADOQuery;
    CompleterZeroCOMPTE: TStringField;
    CompleterZeroDEBIT1: TFloatField;
    ZeroSiVide: TADOQuery;
    ZeroSiVideDebutCpt: TStringField;
    DetTaxeImport: TBooleanField;
    DetTaxeStaist_Ou_Douane: TStringField;
    PropoRegltFact: TADOQuery;
    PropoRegltFactNumFact: TWideStringField;
    PropoRegltFactCompte: TWideStringField;
    PropoRegltFactDebit: TWideStringField;
    PropoRegltFactNumero: TIntegerField;
    ExistJournal: TADOQuery;
    DeclareDateEsc: TDateTimeField;
    DeclareLibelle: TWideStringField;
    DeclareObservatio: TWideStringField;
    DeclareFamilleProd: TWideStringField;
    DeclareStatistique1: TWideStringField;
    DeclareTP_1: TWideStringField;
    DeclareDateTP_1: TDateTimeField;
    DeclareQuittance_1: TWideStringField;
    DeclareDateQuit_1: TDateTimeField;
    DeclareCodeDecl: TWideStringField;
    DeclareUniteProd: TWideStringField;
    lstFrns: TADOTable;
    lstFrnsStat: TWideStringField;
    lstFrnsNIF: TWideStringField;
    lstFrnsRS: TWideStringField;
    lstFrnsAdresse: TWideStringField;
    lstFrnsTVA: TBCDField;
    lstFrnsIntitule: TWideStringField;
    lstFrnsCompte: TWideStringField;
    lstFrnsDebit: TWideStringField;
    lstClient: TADOTable;
    lstClientStat: TWideStringField;
    lstClientNIF: TWideStringField;
    lstClientRS: TWideStringField;
    lstClientAdresse: TWideStringField;
    lstClientTVA: TBCDField;
    lstClientIntitule: TWideStringField;
    lstClientCompte: TWideStringField;
    lstClientDebit: TWideStringField;
    QconsolidIntitule: TWideStringField;
    QconsolidCredit7: TCurrencyField;
    QconsolidDebit7: TCurrencyField;
    QconsolidStDebit7: TCurrencyField;
    QconsolidStCredit7: TCurrencyField;
    QTotConsilid_1: TADOQuery;
    QTotConsilid_1Compte: TWideStringField;
    QTotConsilid_1TotDebit: TBCDField;
    QTotConsilid_1TotCredit: TBCDField;
    SelGroupCpt: TADOQuery;
    SelGroupCptIntitGroup: TStringField;
    SelGroupeUnionCp: TIntegerField;
    SelGroupeRang: TWideStringField;
    SelGroupeDebutCpt: TWideStringField;
    SelGroupeUtilisation: TSmallintField;
    SelGroupeFinCompte: TWideStringField;
    SelGroupeActifProd: TSmallintField;
    SelGroupeAmDebut: TWideStringField;
    SelGroupeAmFin: TWideStringField;
    SelGroupeBrut: TFloatField;
    SelGroupeAmPro: TFloatField;
    SelGroupeNet: TFloatField;
    SelGroupeProDebut: TWideStringField;
    SelGroupeProFin: TWideStringField;
    SelGroupeSldInit: TFloatField;
    SelGroupeTypSomme: TSmallintField;
    SelGroupeTotal: TFloatField;
    SelGroupeIntitGroup: TWideStringField;
    SelGroupeLeDetail: TSmallintField;
    SelGroupeNumero: TAutoIncField;
    ReportCpt: TADOQuery;
    ReportCptRDebit: TFloatField;
    ReportCptRCredit: TFloatField;
    Q_Cloture: TADOQuery;
    DetTaxeTauxTVA: TFloatField;
    DetTaxeCodeAdm: TStringField;
    DetTaxeIntituleAdm: TStringField;
    Q_ParamTVA: TADOQuery;
    Q_ParamTVACody: TWideStringField;
    Q_ParamTVAValeur: TFloatField;
    Q_ParamTVASociete: TWideStringField;
    Et_NouveauTVA: TADOQuery;
    Et_NouveauTVACody: TWideStringField;
    Et_NouveauTVACodeDecl: TWideStringField;
    Et_NouveauTVAValeur: TFloatField;
    Et_NouveauTVASociete: TWideStringField;
    Et_NouveauTVARang: TIntegerField;
    Et_NouveauTVADescription: TWideStringField;
    Et_NouveauTVACodeAdm: TWideStringField;
    Q_ParamTVACodeDecl: TWideStringField;
    Q_ParamTVAMoisDe: TIntegerField;
    Q_ParamTVAMoisA: TIntegerField;
    RubriqueTVA: TADOQuery;
    RubriqueTVARubrique: TWideStringField;
    qParaDecl: TADOQuery;
    qParaDeclCompteDe: TWideStringField;
    qParaDeclCompteA: TWideStringField;
    qParaDecla: TStringField;
    qParaDeclParametre: TWideStringField;
    qParaDeclRubrique: TWideStringField;
    qListTiers: TADOQuery;
    DeclareTaux: TIntegerField;
    DetTaxeTaux: TIntegerField;
    RecaTaxeTaux: TIntegerField;
    DeclareFamilleProd2: TStringField;
    SelJournaltransferer: TStringField;
    Taxabletransferer: TStringField;
    Taxableizy: TStringField;
    SourcePlantotalisateur: TStringField;
    Ecritureizy: TStringField;
    RepQueryactifprod: TSmallintField;
    SelToPrint2izy: TStringField;
    SelDeclproduit: TWideStringField;
    Lecrituretransferer: TStringField;
    Lecritureizy: TStringField;
    Provisionizy: TStringField;
    NonLettreizy: TStringField;
    SuiviTierstransferer: TStringField;
    SuiviTiersizy: TStringField;
    QEltJrnizy: TStringField;
    EFdetail: TSmallintField;
    EFdetailt: TSmallintField;
    EFajouter: TSmallintField;
    SuiviLetizy: TStringField;
    SuiviLettransferer: TStringField;
    EltDansJrnxtransferer: TStringField;
    Amortiizy: TStringField;
    Bilanactifprod: TSmallintField;
    SelToPrinttransferer: TStringField;
    SelToPrintizy: TStringField;
    Qannexedetailt: TSmallintField;
    Qannexedetail: TSmallintField;
    Qannexeactifprod: TSmallintField;
    Qannexeajouter: TSmallintField;
    Qannexeannexe: TSmallintField;
    ParamEFaffichdet: TSmallintField;
    ParamEFdetailt: TSmallintField;
    ParamEFdetail: TSmallintField;
    ParamEFdetail_1: TSmallintField;
    ParamEFchiffres5: TSmallintField;
    ParamEFef: TSmallintField;
    ParamEFef_1: TSmallintField;
    ParamEFef_2: TSmallintField;
    ParamEFef_3: TSmallintField;
    ParamEFef_4: TSmallintField;
    ParamEFsaut: TSmallintField;
    ParamEFsaut_1: TSmallintField;
    ParamEFsaut_2: TSmallintField;
    ParamEFdecidergroupe: TSmallintField;
    ParamEFcompte: TWideStringField;
    Am_Provcompte: TWideStringField;
    SelConsolidcompte: TWideStringField;
    NumCHQ_Factjournal: TWideStringField;
    NumCHQ_Factnumfact: TWideStringField;
    SelGroupeajouter: TSmallintField;
    SelGroupechiffres5: TSmallintField;
    SelGroupeaffichdet: TSmallintField;
    SelGroupeef: TSmallintField;
    SelGroupezerosivide: TSmallintField;
    Qconsolidcompte: TWideStringField;
    RepQuery1actifprod: TSmallintField;
    SelEltJrn: TADOQuery;
    SelEltJrnDateFact: TDateField;
    SelEltJrnDtEsc: TDateField;
    SelEltJrnNumFact: TStringField;
    SelEltJrnJournal: TStringField;
    SelEltJrnLibelle: TStringField;
    SelEltJrnMDebit: TFloatField;
    SelEltJrnMCredit: TFloatField;
    SelEltJrnlettre: TStringField;
    SelEltJrnCompte: TStringField;
    SelEltJrnContrepartie: TStringField;
    SelEltJrnNbcontre: TSmallintField;
    SelEltJrnQte: TFloatField;
    SelEltJrnDebit: TStringField;
    SelEltJrnColis: TFloatField;
    SelEltJrnTypX: TStringField;
    SelEltJrnSigleTaxe: TStringField;
    SelEltJrnNumero: TIntegerField;
    SelEltJrnizy: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1DateField: TDateField;
    ADOQuery1StringField: TStringField;
    ADOQuery1StringField2: TStringField;
    ADOQuery1StringField3: TStringField;
    ADOQuery1FloatField: TFloatField;
    ADOQuery1FloatField2: TFloatField;
    ADOQuery1StringField4: TStringField;
    ADOQuery1StringField5: TStringField;
    ADOQuery1FloatField3: TFloatField;
    ADOQuery1StringField6: TStringField;
    ADOQuery1SmallintField: TSmallintField;
    ADOQuery1FloatField4: TFloatField;
    ADOQuery1StringField7: TStringField;
    ADOQuery1FloatField5: TFloatField;
    ADOQuery1StringField8: TStringField;
    ADOQuery1StringField9: TStringField;
    ADOQuery1IntegerField: TIntegerField;
    ADOQuery1StringField10: TStringField;
    Taxablemontant: TLargeintField;
    Ecrituremontant: TLargeintField;
    RechLetmontant: TLargeintField;
    SelToPrint2montant: TLargeintField;
    EFBrut_1montant: TLargeintField;
    PropoRegltFactmontant: TLargeintField;
    Auxiliairedebitprec: TLargeintField;
    Auxiliairecreditprec: TLargeintField;
    Auxiliairemvtdebit: TLargeintField;
    Auxiliairemvtcredit: TLargeintField;
    Auxiliairedebitnouv: TLargeintField;
    Auxiliairecreditnouv: TLargeintField;
    Lecrituremontant: TLargeintField;
    SelEltJrnmontant: TLargeintField;
    EFmontant: TLargeintField;
    Resumemontant: TLargeintField;
    EFProvmontant: TLargeintField;
    EFProvMDebit: TLargeintField;
    EFProvMCredit: TLargeintField;
    Provisionmontant: TLargeintField;
    ProvisionProCredit: TLargeintField;
    ProvisionProDebit: TLargeintField;
    EltLettreemontant: TLargeintField;
    NonLettremontant: TLargeintField;
    SuiviTiersmontant: TLargeintField;
    EFBrutmontant: TLargeintField;
    EFBrutMDebit: TLargeintField;
    EFBrutMCredit: TLargeintField;
    QEltJrnmontant: TLargeintField;
    SoldeCptemontant: TLargeintField;
    SuiviLetmontant: TLargeintField;
    BalConComontant: TLargeintField;
    Amortimontant: TLargeintField;
    AmortiAmDebit: TLargeintField;
    AmortiAmCredit: TLargeintField;
    SelToPrintmontant: TLargeintField;
    SelToPrintMDebit: TLargeintField;
    SelToPrintMCredit: TLargeintField;
    TVASurEcrmontant: TLargeintField;
    CalculEltmontant: TLargeintField;
    Balance2: TADOQuery;
    StringField1: TStringField;
    LargeintField1: TLargeintField;
    StringField2: TStringField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    Balancecompte: TWideStringField;
    Balanceprec_debit: TBCDField;
    Balanceprec_credit: TBCDField;
    Balancemvt_debit: TBCDField;
    Balancemvt_credit: TBCDField;
    Balancenouv_debit: TBCDField;
    Balancenouv_credit: TBCDField;
    procedure SelEltJrn1CalcFields(DataSet: TDataSet);
    procedure SelToPrint1CalcFields(DataSet: TDataSet);
    procedure SpecialCreate(Sender: TObject);
    procedure NumCompteCalcFields(DataSet: TDataSet);
    procedure SelParaDeclCalcFields(DataSet: TDataSet);
    procedure SourceTypeParaDataChange(Sender: TObject; Field: TField);
    procedure QconsolidCalcFields(DataSet: TDataSet);
    procedure ParamEFCalcFields(DataSet: TDataSet);
    procedure SelEltJrnCalcFields(DataSet: TDataSet);
    procedure SelToPrintCalcFields(DataSet: TDataSet);
    procedure AmortiCalcFields(DataSet: TDataSet);
    procedure ProvisionCalcFields(DataSet: TDataSet);
    procedure SelToPrint2CalcFields(DataSet: TDataSet);
    procedure DeclareCalcFields(DataSet: TDataSet);
    procedure DernierLettreCalcFields(DataSet: TDataSet);
    procedure EltLettreeCalcFields(DataSet: TDataSet);
    procedure EFBrutCalcFields(DataSet: TDataSet);
    procedure EFCalcFields(DataSet: TDataSet);
    procedure SelDeclCalcFields(DataSet: TDataSet);
    procedure DetTaxeCalcFields(DataSet: TDataSet);
    procedure SelCummulCalcFields(DataSet: TDataSet);
    procedure BalConCoCalcFields(DataSet: TDataSet);
    procedure ResumeCalcFields(DataSet: TDataSet);
    procedure RecaTaxeCalcFields(DataSet: TDataSet);
    procedure qParaDeclCalcFields(DataSet: TDataSet);
    procedure SelArreteAfterInsert(DataSet: TDataSet);
    procedure Balance2CalcFields(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    QConsolidEmpecheCalcul:boolean;
    MettreNumeroDouane:boolean;
    Incre:Longint;
    lettre:array[0..25] of string[1];
    stmois:array[1..12]of string[20];
    procedure ChangeChemin(ip,chemin:string);
    procedure ChangeChemin_1(const chemin:string);
    procedure OuvreSociete;
    procedure SoldeElt1(perde,pera,cptde,cpta:string;var debit,credit:real;avec:boolean);
    procedure SoldeInitial(periode,comptede,comptea:string;var debit,credit:real;AN:boolean);
    procedure SoldeInitialDate(dt:TDate;comptede,comptea:string;var debit,credit:real);
    procedure Soldefinal(comptede,comptea:string;var debit,credit:real);
    function  soldeCompte(compte:string):real;
    function  EquivIndex(lettree:string):longint;
    function  EquivLettre(Index:longint):string;
    procedure SelectParam(param,rubrique:string);
    function  DansParam(compte:string):boolean;
    procedure EnregistreInfoImpression(daty,agence,typa,donnee,donnee2:string);
    function  MisyJournalVe(Code:string):boolean;
    function  OpenQConsolidSup6:boolean;
    function  IsCloturee:boolean;
  end;

const
  JR_ACHAT=0;
  JR_VENTE=1;
  JR_TRESOR=2;
  JR_DIVERS=3;
  JR_ANOUVEAUX=4;
  JR_LOGICIEL=5;

var
  DASQL: TDASQL;

implementation

uses DaCommun, Daspecia, UConnect, TypeElmt, AnnexTVA;

{$R *.DFM}

procedure TDASQL.ChangeChemin(ip,chemin:string);
begin

  DaConnect.ChangeCheminConnection(DaConnect.C_Document,ip,chemin);

  Am_Prov.Close;               Am_Prov.Connection:=DaConnect.C_Document;
  Amorti.close;                Amorti.Connection:=DaConnect.C_Document;
  Auxiliaire.close;            Auxiliaire.Connection:=DaConnect.C_Document;

  Balance.close;               Balance.Connection:=DaConnect.C_Document;
  BalConCo.Close;              BalConCo.Connection:=DaConnect.C_Document;
  Bilan.close;                 Bilan.Connection:=DaConnect.C_Document;
  BilanAct_1.Close;            BilanAct_1.Connection:=DaConnect.C_Document;

  CalculElt.close;             CalculElt.Connection:=DaConnect.C_Document;

  Declare.close;               Declare.Connection:=DaConnect.C_Document;
  DernierLettre.close;         DernierLettre.Connection:=DaConnect.C_Document;
  DetTaxe.Close;               DetTaxe.Connection:=DaConnect.C_Document;
  DeleteDec.Close;             DeleteDec.Connection:=DaConnect.C_Document;
  DerJournal.close;            DerJournal.Connection:=DaConnect.C_Document;

  Ecriture.close;              Ecriture.Connection:=DaConnect.C_Document;
  EltDansJrnx.close;           EltDansJrnx.Connection:=DaConnect.C_Document;
  EltLettree.close;            EltLettree.Connection:=DaConnect.C_Document;
  EFBrut.close;                EFBrut.Connection:=DaConnect.C_Document;
  EFProv.close;                EFProv.Connection:=DaConnect.C_Document;
  EF.close;                    EF.Connection:=DaConnect.C_Document;
  ExistJournal.Close;          ExistJournal.Connection:=DaConnect.C_Document;

  lstFrns.Close;               lstFrns.Connection:=DaConnect.C_Document;
  lstClient.Close;             lstClient.Connection:=DaConnect.C_Document;

  NumFacture.close;            NumFacture.Connection:=DaConnect.C_Document;
  NumCheque.close;             NumCheque.Connection:=DaConnect.C_Document;
  NumCHQ_Fact.close;           NumCHQ_Fact.Connection:=DaConnect.C_Document;
  NonLettre.close;             NonLettre.Connection:=DaConnect.C_Document;
  NumDivers.close;             NumDivers.Connection:=DaConnect.C_Document;
  NumCompte.close;             NumCompte.Connection:=DaConnect.C_Document;

  Provision.close;             Provision.Connection:=DaConnect.C_Document;
  precu.close;                 precu.Connection:=DaConnect.C_Document;
  PropoRegltFact.Close;        PropoRegltFact.Connection:=DaConnect.C_Document;
  ParamEF.Close;               ParamEF.Connection:=DaConnect.C_Document;

  QCalculResultat.Close;       QCalculResultat.Connection:=DaConnect.C_Document;
  QEltJrn.Close;               QEltJrn.Connection:=DaConnect.C_Document;
  QConsolid.close;             QConsolid.Connection:=DaConnect.C_Document;
  QTotConsilid_1.Close;        QTotConsilid_1.Connection:=DaConnect.C_Document;
  Qannexe.Close;               Qannexe.Connection:=DaConnect.C_Document;

  RepQuery.close;              RepQuery.Connection:=DaConnect.C_Document;
  RepQuery1.close;             RepQuery1.Connection:=DaConnect.C_Document;
  RecaTaxe.Close;              RecaTaxe.Connection:=DaConnect.C_Document;
  R_EcriturePourLettrage.Close;R_EcriturePourLettrage.Connection:=DaConnect.C_Document;
  RechLet.close;               RechLet.Connection:=DaConnect.C_Document;
  Resume.Close;                Resume.Connection:=DaConnect.C_Document;

  SelEltJrn.close;             SelEltJrn.Connection:=DaConnect.C_Document;
  SelEltJrn2.close;            SelEltJrn2.Connection:=DaConnect.C_Document;
  SelJournal.close;            SelJournal.Connection:=DaConnect.C_Document;
  SelToPrint.close;            SelToPrint.Connection:=DaConnect.C_Document;
  SelToPrint2.close;           SelToPrint2.Connection:=DaConnect.C_Document;
  SelLettrage.close;           SelLettrage.Connection:=DaConnect.C_Document;
  SuiviTiers.close;            SuiviTiers.Connection:=DaConnect.C_Document;
  SuiviLet.close;              SuiviLet.Connection:=DaConnect.C_Document;
  Soldecpte.close;             soldecpte.Connection:=DaConnect.C_Document;
  SelDecl.Close;               SelDecl.Connection:=DaConnect.C_Document;
  SelCummul.Close;             SelCummul.Connection:=DaConnect.C_Document;
  SelNumCpt.close;             SelNumCpt.Connection:=DaConnect.C_Document;
  special.NumCp.close;         special.NumCp.Connection:=DaConnect.C_Document;
  special.TNumAdres.close;     special.TNumAdres.Connection:=DaConnect.C_Document;
  SelNumAdres.close;           SelNumAdres.Connection:=DaConnect.C_Document;
  SelNumDivers.close;          SelNumDivers.Connection:=DaConnect.C_Document;
  SelNumDivers2.close;         SelNumDivers2.Connection:=DaConnect.C_Document;
  SelNumDiverByStat.close;     SelNumDiverByStat.Connection:=DaConnect.C_Document;
  SelNumDiver3.close;          SelNumDiver3.Connection:=DaConnect.C_Document;
  SelNumDiver3.close;          SelNumDiver3.Connection:=DaConnect.C_Document;
  SelNumDiverDeA.close;        SelNumDiverDeA.Connection:=DaConnect.C_Document;
  SelArrete.Close;             SelArrete.Connection:=DaConnect.C_Document;
  //SelDtImprBal.Close;          SelDtImprBal.Connection:=DaConnect.C_Document;
  Q_Cloture.Close;             Q_Cloture.Connection:=DaConnect.C_Document;
  Taxable.close;               Taxable.Connection:=DaConnect.C_Document;
  TVASurEcr.close;             TVASurEcr.Connection:=DaConnect.C_Document;
  TiersSurEcr.close;           TiersSurEcr.Connection:=DaConnect.C_Document;
  qListTiers.close;            qListTiers.Connection:=DaConnect.C_Document;
end;

function TDaSQL.IsCloturee:boolean;
begin
  Q_Cloture.close;
  Q_Cloture.open;
  Result:=not Q_Cloture.Eof;
end;

function TDaSQL.OpenQConsolidSup6:boolean;
begin
  DASQL.Qconsolid.Close;
  DASQL.Qconsolidee.close;
  DASQL.Qconsolidee.Parameters[0].Value:=Commun.SocieteCode.Value;
  DASQL.Qconsolidee.Open;
  if Qconsolidee.RecordCount>6 then
  begin
    DASQL.QconsolidCredit7.FieldKind := fkData;
    DASQL.QconsolidDebit7.FieldKind  := fkData;
    result:=true;
  end
  else
  begin
    DASQL.QconsolidCredit7.FieldKind := fkCalculated;
    DASQL.QconsolidDebit7.FieldKind  := fkCalculated;
    result:=false;
  end;
  DASQL.Qconsolid.Open;
end;

function  TDASQL.MisyJournalVe(Code:string):boolean;
begin
  ExistJournal.Close;
  ExistJournal.Parameters[0].Value:=Code;
  ExistJournal.Open;
  Result:=(ExistJournal.RecordCount>0);
end;

procedure TDASQL.ChangeChemin_1(const chemin:string);
var ConnecStr:string;
begin
  ConnecStr:='Provider=MSDASQL.1;';
  ConnecStr:=ConnecStr+'Persist Security Info=False;';
  ConnecStr:=ConnecStr+'Data Source='+Chemin;
  DaConnect.C_Document_1.close;
  DaConnect.C_Document_1.connectionString:=ConnecStr;
  DaConnect.C_Document_1.Open;
end;

function TDASQL.soldeCompte(compte:string):real;
var mt:real;
begin
  soldecpte.close;
  soldecpte.parameters[0].Value:=compte;
  soldecpte.open;
  mt:=0;
  while not soldecpte.eof do
  begin
    if soldecptedebit.value='D' then mt:=mt+soldecpteMontant.value
    else mt:=mt-soldecpteMontant.value;
    soldecpte.next;
  end;
  result:=mt;
end;

procedure TDASQL.SelectParam(param,rubrique:string);
begin
  SelParaDecl.close;
  SelParaDecl.Parameters[0].value:=param;
  SelParaDecl.Parameters[1].value:=rubrique;
  SelParaDecl.Parameters[2].value:=rubrique+'Z';
  SelParaDecl.Open;
end;

procedure TDASQL.OuvreSociete;
begin
  {NumDiver.open;}
end;

procedure  TDASQL.SoldeInitial(periode,comptede,comptea:string;var debit,credit:real;AN:Boolean);
begin
  {((d.typ=4)or}
  CalculElt.close;
  CalculElt.SQL.Clear;
  CalculElt.SQL.Add('select * from NumCpt a,');
  CalculElt.SQL.Add(' Journal b,eltJrn c');
  {CalculElt.SQL.Add(' ''c:\CSC\Log\Exec\Compta\Data\Journaux'' d');}
  CalculElt.SQL.Add('where  (a.NumCpt>=:w)and(a.NumCpt<:x)');
  if AN then
    CalculElt.SQL.Add('and (b.periode<:y)')
  else
    CalculElt.SQL.Add('and ((b.periode<:y)or(b.CodeJrnx=''AN''))');
  CalculElt.SQL.Add('and (a.NumCpt=c.Compte)');
  CalculElt.SQL.Add('and (b.Code=c.Journal)');
  //CalculElt.SQL.Add('and (b.CodeJrnx<>''AN'')');
  {CalculElt.SQL.Add('and (d.Code=b.CodeJrnx)');}
  CalculElt.Parameters[0].Value:=comptede;
  CalculElt.Parameters[1].Value:=comptea+'ZZZZ';
  CalculElt.Parameters[2].Value:=periode;
  CalculElt.open;
  debit:=0;//ReportCptRDebit.Value;
  credit:=0;//ReportCptRCredit.Value;
  while not CalculElt.eof do
  begin
    if CalculEltDebit.Value='D' then debit:=debit+CalculEltMontant.Value
    else credit:=credit+CalculEltMontant.Value;
    CalculElt.next;
  end;
end;

function TDASQL.DansParam(compte:string):boolean;
var izy:boolean;
begin
  izy:=false;
  SelParaDecl.first;
  while not SelParaDecl.EOF do
  begin
    if (compte>=EnleveBlanc(SelParaDeclCompteDe.Value))and
       (compte<=EnleveBlanc(SelParaDeclCompteA.Value)+'Z') then
    begin
      izy:=true;
      break;
    end;
    SelParaDecl.Next;
  end;
  result:=izy;
end;

procedure  TDASQL.SoldeInitialDate(dt:TDate;comptede,comptea:string;var debit,credit:real);
begin
  ReportCpt.Close;
  ReportCpt.Parameters[0].Value:=comptede;
  ReportCpt.Parameters[1].Value:=comptea;
  ReportCpt.Open;
  CalculElt.close;
  CalculElt.SQL.Clear;
  CalculElt.SQL.Add('select * from NumCpt a,');
  CalculElt.SQL.Add(' Journal b,eltJrn c');
  CalculElt.SQL.Add('where  (a.NumCpt>=:w)and(a.NumCpt<:x)');
  CalculElt.SQL.Add('and (b.DateEsc<:y)');
  CalculElt.SQL.Add('and (a.NumCpt=c.Compte)');
  CalculElt.SQL.Add('and (b.Code=c.Journal)');
  CalculElt.SQL.Add('and (b.CodeJrnx<>''AN'')');
  CalculElt.Parameters[0].Value:=comptede;
  CalculElt.Parameters[1].Value:=comptea+'ZZZZ';
  CalculElt.Parameters[2].Value:=dt;
  CalculElt.open;
  debit:=ReportCptRDebit.Value;
  credit:=ReportCptRCredit.Value;
  while not CalculElt.eof do
  begin
    if CalculEltDebit.Value='D' then debit:=debit+CalculEltMontant.Value
    else credit:=credit+CalculEltMontant.Value;
    CalculElt.next;
  end;
end;

procedure  TDASQL.SoldeElt1(perde,pera,cptde,cpta:string;var debit,credit:real;avec:boolean);
begin
  CalculElt.close;
  CalculElt.SQL.Clear;
  CalculElt.SQL.Add('select * from ''NumCpt.db'' a,');
  CalculElt.SQL.Add(' Journal b,eltJrn c,');
  CalculElt.SQL.Add(' Journaux d');
  CalculElt.SQL.Add('where  (a.NumCpt>=:w) and (a.NumCpt<:x)');
  CalculElt.SQL.Add('and (b.periode>=:y) and (b.periode<=:z)');
  if not avec then CalculElt.SQL.Add('and (d.typ<4)');
  CalculElt.SQL.Add('and (a.NumCpt=c.Compte)');
  CalculElt.SQL.Add('and (b.Code=c.Journal)');
  CalculElt.SQL.Add('and (d.Code=b.CodeJrnx)');
  CalculElt.Parameters[0].Value:=cptde;
  CalculElt.Parameters[1].Value:=cpta+'ZZZZ';
  CalculElt.Parameters[2].Value:=perde;
  CalculElt.Parameters[3].Value:=pera;
  CalculElt.open;
  debit:=0;
  credit:=0;
  while not CalculElt.eof do
  begin
    if CalculEltDebit.Value='D' then debit:=debit+CalculEltMontant.Value
    else credit:=credit+CalculEltMontant.Value;
    CalculElt.next;
  end;

end;

function TDASQL.EquivIndex(lettree:string):longint;
var    mille,cent,dix,reste:longint;
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

function TDASQL.EquivLettre(Index:longint):string;
var    mille,cent,dix,reste:longint;
       millaine,centaine,disaine:longint;
begin
  mille:=Index div (26*26*26);
  millaine:=mille*(26*26*26);
  cent:=(Index-millaine)div (26*26);
  centaine:=cent* (26*26);
  dix:=(Index-millaine-centaine)div 26;
  disaine:=dix*26;
  reste:=index-millaine-centaine-disaine;
  result:=Special.lettre[mille]+Special.lettre[cent]+Special.lettre[dix]+Special.lettre[reste];
end;

procedure  TDASQL.Soldefinal(comptede,comptea:string;var debit,credit:real);
begin
  CalculElt.close;
  CalculElt.SQL.Clear;
  CalculElt.SQL.Add('select * from NumCpt a,');
  CalculElt.SQL.Add(' Journal b,eltJrn c');
  CalculElt.SQL.Add('where  (a.NumCpt>=:w)and(a.NumCpt<:x)');
  CalculElt.SQL.Add('and (a.NumCpt=c.Compte)');
  CalculElt.SQL.Add('and (b.Code=c.Journal)');
  CalculElt.SQL.Add('and (b.CodeJrnx=''CL'')');
  CalculElt.Parameters[0].Value:=comptede;
  CalculElt.Parameters[1].Value:=comptea+'ZZZZ';
  CalculElt.open;
  debit:=0;
  credit:=0;
  while not CalculElt.eof do
  begin
    if CalculEltDebit.Value='D' then debit:=debit+CalculEltMontant.Value
    else credit:=credit+CalculEltMontant.Value;
    CalculElt.next;
  end;
end;

procedure TDASQL.SelEltJrn1CalcFields(DataSet: TDataSet);
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

procedure TDASQL.SelToPrint1CalcFields(DataSet: TDataSet);
begin
  if SelToPrintdebit.Value='D' then
  begin
    SelToPrintMDebit.Value:=SelToPrintMontant.Value;
    SelToPrintMCredit.Value:=0;
  end
  else
  begin
    SelToPrintMCredit.Value:=SelToPrintMontant.Value;
    SelToPrintMDebit.Value:=0;
  end;
end;

procedure TDASQL.SpecialCreate(Sender: TObject);
begin
  QConsolidEmpecheCalcul:=false;
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
  MettreNumeroDouane:=false;
end;

procedure TDASQL.NumCompteCalcFields(DataSet: TDataSet);
var ll:smallint;
  i:integer;
begin
  ll:=length(NumCompteNumCpt.value);
  for i:=1 to ll do NumCompteNumero.value:= NumCompteNumero.value +'   ';
  NumCompteNumero.value:=NumCompteNumero.value+NumCompteNumCpt.value;
  {If NumCompteSolde.Value>0 then
  begin
    NumCompteMDebit.value:=NumCompteSolde.Value;
    NumCompteMCredit.value:=0;
  end
  else
  begin
    NumCompteMDebit.value:=0;
    NumCompteMCredit.value:=-NumCompteSolde.Value;
  end; }
end;

procedure TDASQL.SelParaDeclCalcFields(DataSet: TDataSet);
begin
  SelParaDeclA.Value:='à';
end;

procedure TDASQL.EnregistreInfoImpression(daty,agence,typa,donnee,donnee2:string);
begin
  SelDtImprBal.close;
  SelDtImprBal.parameters[0].value:=daty;
  SelDtImprBal.parameters[1].value:=agence;
  SelDtImprBal.parameters[2].value:=Typa;
  SelDtImprBal.parameters[3].value:=donnee;
  SelDtImprBal.parameters[4].value:=donnee2;
  SelDtImprBal.open;

  while not SelDtImprBal.eof do SelDtImprBal.delete;
  try
    SelDtImprBal.Insert;
    SelDtImprBalDaty.Value:=daty; {en lettre}
    SelDtImprBalAgence.Value:=agence;
    SelDtImprBalTypa.Value:=typa;
    SelDtImprBalDonnee.Value:=donnee;
    SelDtImprBalDonnee2.Value:=donnee2;
    SelDtImprBal.post;
  except
    On E:Exception do
      showMessage('Insertion tsy nety '+E.Message);
  end;
end;

procedure TDASQL.SourceTypeParaDataChange(Sender: TObject; Field: TField);
begin
  Seltitre2.close;
  Seltitre2.Parameters[0].Value:=Special.TypeParaNumero.Value;
  Seltitre2.open;
  SelSStitre2.close;
  SelSStitre2.Parameters[0].Value:=Special.TypeParaNumero.Value;
  SelSStitre2.open;
end;

procedure TDASQL.QconsolidCalcFields(DataSet: TDataSet);
var totDebit,TotCredit:real;
    auxi:string;
begin
  auxi:=EnleveBlancDroite(special.InAuxiliaire(QConsolidCompte.Value));
  if (length(auxi)>0) then
  begin
    while length(auxi)<8 do auxi:=auxi+'0';
      QConsolidCompte.Value:=auxi;
  end
  else
    QConsolidCompte.Value:=EnleveBlancDroite(QConsolidCompte.Value);
  if ('40'<=QConsolidCompte.Value)and(QConsolidCompte.Value<='41Z') then
    QConsolidCompte.Value:=Copy(QConsolidCompte.Value,1,4)+'0000';
  if ('467'<=QConsolidCompte.Value)and(QConsolidCompte.Value<='467Z') then
    QConsolidCompte.Value:=Copy(QConsolidCompte.Value,1,4)+'0000';

  if  (QConsolidCompte.Value>'51110') and (QConsolidCompte.Value<'51114Z') then
    QConsolidCompte.Value:='51110000';
  if  (QConsolidCompte.Value>'51120')and (QConsolidCompte.Value<'51124Z') then
    QConsolidCompte.Value:='51120000';
  if  (QConsolidCompte.Value>'51140')and (QConsolidCompte.Value<'51144Z') then
    QConsolidCompte.Value:='51140000';

  SelectParam('CONSOLID','NONCOMPENS');
  if not DansParam(Qconsolidcompte.Value)then
  begin
    //Societe 1
    if QconsolidDebit1.Value>QconsolidCredit1.Value  then
    begin
      QconsolidStDebit1.Value := QconsolidDebit1.Value  - QconsolidCredit1.Value ;
      QconsolidStCredit1.Value :=0;
    end
    else
    begin
      QconsolidStCredit1.Value :=QconsolidCredit1.Value  - QconsolidDebit1.Value ;
      QconsolidStDebit1.Value :=0;
    end;

    //Societe 2
    if QconsolidDebit2.Value>QconsolidCredit2.Value  then
    begin
      QconsolidStDebit2.Value := QconsolidDebit2.Value  - QconsolidCredit2.Value ;
      QconsolidStCredit2.Value :=0;
    end
    else
    begin
      QconsolidStCredit2.Value :=QconsolidCredit2.Value  - QconsolidDebit2.Value ;
      QconsolidStDebit2.Value :=0;
    end;

    //Societe 3
    if QconsolidDebit3.Value>QconsolidCredit3.Value  then
    begin
      QconsolidStDebit3.Value := QconsolidDebit3.Value  - QconsolidCredit3.Value ;
      QconsolidStCredit3.Value :=0;
    end
    else
    begin
      QconsolidStCredit3.Value :=QconsolidCredit3.Value  - QconsolidDebit3.Value ;
      QconsolidStDebit3.Value :=0;
    end;

    //Societe 4
    if QconsolidDebit4.Value>QconsolidCredit4.Value  then
    begin
      QconsolidStDebit4.Value := QconsolidDebit4.Value  - QconsolidCredit4.Value ;
      QconsolidStCredit4.Value :=0;
    end
    else
    begin
      QconsolidStCredit4.Value :=QconsolidCredit4.Value  - QconsolidDebit4.Value ;
      QconsolidStDebit4.Value :=0;
    end;

    //Societe 5
    if QconsolidDebit5.Value>QconsolidCredit5.Value  then
    begin
      QconsolidStDebit5.Value := QconsolidDebit5.Value  - QconsolidCredit5.Value ;
      QconsolidStCredit5.Value :=0;
    end
    else
    begin
      QconsolidStCredit5.Value :=QconsolidCredit5.Value  - QconsolidDebit5.Value ;
      QconsolidStDebit5.Value :=0;
    end;

    //Societe 6
    if QconsolidDebit6.Value>QconsolidCredit6.Value  then
    begin
      QconsolidStDebit6.Value := QconsolidDebit6.Value  - QconsolidCredit6.Value ;
      QconsolidStCredit6.Value :=0;
    end
    else
    begin
      QconsolidStCredit6.Value :=QconsolidCredit6.Value  - QconsolidDebit6.Value ;
      QconsolidStDebit6.Value :=0;
    end;
    //Societe 7
    if QconsolidDebit7.Value>QconsolidCredit7.Value  then
    begin
      QconsolidStDebit7.Value := QconsolidDebit7.Value  - QconsolidCredit7.Value ;
      QconsolidStCredit7.Value :=0;
    end
    else
    begin
      QconsolidStCredit7.Value :=QconsolidCredit7.Value  - QconsolidDebit7.Value ;
      QconsolidStDebit7.Value :=0;
    end;
  end
  else
  begin
    QconsolidStDebit1.Value:= QconsolidDebit1.Value;
    QconsolidStDebit2.Value:= QconsolidDebit2.Value;
    QconsolidStDebit3.Value:= QconsolidDebit3.Value;
    QconsolidStDebit4.Value:= QconsolidDebit4.Value;
    QconsolidStDebit5.Value:= QconsolidDebit5.Value;
    QconsolidStDebit6.Value:= QconsolidDebit6.Value;
    QconsolidStDebit7.Value:= QconsolidDebit7.Value;

    QconsolidStCredit1.Value:=QconsolidCredit1.Value;
    QconsolidStCredit2.Value:=QconsolidCredit2.Value;
    QconsolidStCredit3.Value:=QconsolidCredit3.Value;
    QconsolidStCredit4.Value:=QconsolidCredit4.Value;
    QconsolidStCredit5.Value:=QconsolidCredit5.Value;
    QconsolidStCredit6.Value:=QconsolidCredit6.Value;
    QconsolidStCredit7.Value:=QconsolidCredit7.Value;
  end;


  totdebit:=QconsolidStDebit1.Value +
            QconsolidStDebit2.Value +
            QconsolidStDebit3.Value +
            QconsolidStDebit4.Value +
            QconsolidStDebit5.Value +
            QconsolidStDebit6.Value +
            QconsolidStDebit7.Value  ;
  totCredit:=QconsolidStCredit1.Value +
             QconsolidStCredit2.Value +
             QconsolidStCredit3.Value +
             QconsolidStCredit4.Value +
             QconsolidStCredit5.Value +
             QconsolidStCredit6.Value +
             QconsolidStCredit7.Value ;

  {Si compensé alors solder le total }
  if not DansParam(Qconsolidcompte.Value)then
  begin
    if totdebit>totCredit then
    begin
      totdebit:= totdebit - totcredit;
      totcredit:=0;
    end
    else
    begin
      totcredit:=totcredit - totdebit;
      totDebit:=0;
    end;
  end;

  //Solder le total si dans compenser solde consolider

  SelectParam('CONSOLID','NC_COMSLDC');
  if DansParam(Qconsolidcompte.Value)then
  begin
    if totdebit>totCredit then
    begin
      totdebit:= totdebit - totcredit;
      totcredit:=0;
    end
    else
    begin
      totcredit:=totcredit - totdebit;
      totDebit:=0;
    end;
  end;

  {Affectation}
  Qconsolidtotdebit.Value:=totDebit;
  QconsolidtotCredit.Value:=totCredit;


  QconsolidStTotDeb.Value:= QconsolidTotDebit.Value;
  QconsolidStDebitPrec.Value:= QconsolidDebit_Prec.Value;


  QconsolidStTotCred.Value:=QconsolidTotCredit.Value;
  QconsolidStCreditPrec.Value:=QconsolidCredit_Prec.Value;

  SelectParam('CONSOLID','STRICT DEB');
  if DansParam(QConsolidCompte.Value) then
  begin
    QconsolidStDebit1.Value:= QconsolidDebit1.Value-QconsolidCredit1.Value;
    QconsolidStDebit2.Value:= QconsolidDebit2.Value-QconsolidCredit2.Value;
    QconsolidStDebit3.Value:= QconsolidDebit3.Value-QconsolidCredit3.Value;
    QconsolidStDebit4.Value:= QconsolidDebit4.Value-QconsolidCredit4.Value;
    QconsolidStDebit5.Value:= QconsolidDebit5.Value-QconsolidCredit5.Value;
    QconsolidStDebit6.Value:= QconsolidDebit6.Value-QconsolidCredit6.Value;
    QconsolidStDebit7.Value:= QconsolidDebit7.Value-QconsolidCredit7.Value;
    QconsolidStTotDeb.Value:= QconsolidTotDebit.Value-QconsolidTotCredit.Value;
    QconsolidStDebitPrec.Value:= QconsolidDebit_Prec.Value-QconsolidCredit_Prec.Value;
    QconsolidStCredit1.Value:=0;
    QconsolidStCredit2.Value:=0;
    QconsolidStCredit3.Value:=0;
    QconsolidStCredit4.Value:=0;
    QconsolidStCredit5.Value:=0;
    QconsolidStCredit6.Value:=0;
    QconsolidStCredit7.Value:=0;
    QconsolidStTotCred.Value:=0;
    QconsolidStCreditPrec.Value:=0;
  end;
  SelectParam('CONSOLID','STRICT CRE');
  if DansParam(QConsolidCompte.Value) then
  begin
    QconsolidStDebit1.Value:=0;
    QconsolidStDebit2.Value:=0;
    QconsolidStDebit3.Value:=0;
    QconsolidStDebit4.Value:=0;
    QconsolidStDebit5.Value:=0;
    QconsolidStDebit6.Value:=0;
    QconsolidStDebit7.Value:=0;
    QconsolidStTotDeb.Value:=0;
    QconsolidStDebitPrec.Value:=0;
    QconsolidStCredit1.Value:=QconsolidCredit1.Value - QconsolidDebit1.Value;
    QconsolidStCredit2.Value:=QconsolidCredit2.Value - QconsolidDebit2.Value;
    QconsolidStCredit3.Value:=QconsolidCredit3.Value - QconsolidDebit3.Value;
    QconsolidStCredit4.Value:=QconsolidCredit4.Value - QconsolidDebit4.Value;
    QconsolidStCredit5.Value:=QconsolidCredit5.Value - QconsolidDebit5.Value;
    QconsolidStCredit6.Value:=QconsolidCredit6.Value - QconsolidDebit6.Value;
    QconsolidStCredit7.Value:=QconsolidCredit7.Value - QconsolidDebit7.Value;
    QconsolidStTotCred.Value:=QconsolidTotCredit.Value - QconsolidTotDebit.Value;
    QconsolidStCreditPrec.Value:=QconsolidCredit_Prec.Value - QconsolidDebit_Prec.Value;
  end;

  SelectParam('CONSOLID','DEP SLD CO');
  if DansParam(QConsolidCompte.Value) then
  begin
    {Colonne 1}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit1.Value:= QconsolidDebit1.Value-QconsolidCredit1.Value;
        QconsolidStCredit1.Value:=0;
      end
      else
      begin
        QconsolidStDebit1.Value:=0;
        QconsolidStCredit1.Value:=QconsolidCredit1.Value - QconsolidDebit1.Value;
      end;
    {Colonne 2}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit2.Value:= QconsolidDebit2.Value-QconsolidCredit2.Value;
        QconsolidStCredit2.Value:=0;
      end
      else
      begin
        QconsolidStDebit2.Value:=0;
        QconsolidStCredit2.Value:=QconsolidCredit2.Value - QconsolidDebit2.Value;
      end;
    {Colonne 3}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit3.Value:= QconsolidDebit3.Value-QconsolidCredit3.Value;
        QconsolidStCredit3.Value:=0;
      end
      else
      begin
        QconsolidStDebit3.Value:=0;
        QconsolidStCredit3.Value:=QconsolidCredit3.Value - QconsolidDebit3.Value;
      end;
    {Colonne 4}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit4.Value:= QconsolidDebit4.Value-QconsolidCredit4.Value;
        QconsolidStCredit4.Value:=0;
      end
      else
      begin
        QconsolidStDebit4.Value:=0;
        QconsolidStCredit4.Value:=QconsolidCredit4.Value - QconsolidDebit4.Value;
      end;
    {Colonne 5}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit5.Value:= QconsolidDebit5.Value-QconsolidCredit5.Value;
        QconsolidStCredit5.Value:=0;
      end
      else
      begin
        QconsolidStDebit5.Value:=0;
        QconsolidStCredit5.Value:=QconsolidCredit5.Value - QconsolidDebit5.Value;
      end;
    {Colonne 6}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit6.Value:= QconsolidDebit6.Value-QconsolidCredit6.Value;
        QconsolidStCredit6.Value:=0;
      end
      else
      begin
        QconsolidStDebit6.Value:=0;
        QconsolidStCredit6.Value:=QconsolidCredit6.Value - QconsolidDebit6.Value;
      end;
    {Colonne 7}
      if (QconsolidTotDebit.Value - QconsolidTotCredit.Value)>0 then
      begin
        QconsolidStDebit7.Value:= QconsolidDebit7.Value-QconsolidCredit7.Value;
        QconsolidStCredit7.Value:=0;
      end
      else
      begin
        QconsolidStDebit7.Value:=0;
        QconsolidStCredit7.Value:=QconsolidCredit7.Value - QconsolidDebit7.Value;
      end;
  end;
end;

procedure TDASQL.ParamEFCalcFields(DataSet: TDataSet);
begin
  // Typa        : 0- Actif  , 1- Passif, 3-Charge, 4-Produit ;
  // Utilisation : 0- Normal , 1- Strtic Cred (Actif)Strtic Deb (Passif),
  //               2- Mvt deb, 3- Mvt cred
  if ParamEFUtilisation.Value<2 then
  begin
    if (ParamEFTypa.Value=0) or (ParamEFTypa.Value=2) then
    begin
      ParamEFMontant1.Value:= ParamEFDEBIT1.Value - ParamEFCREDIT1.Value;
      ParamEFMontant2.Value:= ParamEFDEBIT2.Value - ParamEFCREDIT2.Value;
      ParamEFMontant3.Value:= ParamEFDEBIT3.Value - ParamEFCREDIT3.Value;
      ParamEFMontant4.Value:= ParamEFDEBIT4.Value - ParamEFCREDIT4.Value;
      ParamEFMontant5.Value:= ParamEFDEBIT5.Value - ParamEFCREDIT5.Value;
      ParamEFMontant6.Value:= ParamEFDEBIT6.Value - ParamEFCREDIT6.Value;
      ParamEFMontant7.Value:= 0;//ParamEFDEBIT7.Value - ParamEFCREDIT7.Value;
    end
    else if (ParamEFTypa.Value=1) or (ParamEFTypa.Value=3) then
    begin
      ParamEFMontant1.Value:= ParamEFCREDIT1.Value - ParamEFDEBIT1.Value;
      ParamEFMontant2.Value:= ParamEFCREDIT2.Value - ParamEFDEBIT2.Value;
      ParamEFMontant3.Value:= ParamEFCREDIT3.Value - ParamEFDEBIT3.Value;
      ParamEFMontant4.Value:= ParamEFCREDIT4.Value - ParamEFDEBIT4.Value;
      ParamEFMontant5.Value:= ParamEFCREDIT5.Value - ParamEFDEBIT5.Value;
      ParamEFMontant6.Value:= ParamEFCREDIT6.Value - ParamEFDEBIT6.Value;
      ParamEFMontant7.Value:= 0;//ParamEFCREDIT7.Value - ParamEFDEBIT7.Value;
    end else
    begin
      ParamEFMontant1.Value:= ParamEFDEBIT1.Value - ParamEFCREDIT1.Value;
      ParamEFMontant2.Value:= ParamEFDEBIT2.Value - ParamEFCREDIT2.Value;
      ParamEFMontant3.Value:= ParamEFDEBIT3.Value - ParamEFCREDIT3.Value;
      ParamEFMontant4.Value:= ParamEFDEBIT4.Value - ParamEFCREDIT4.Value;
      ParamEFMontant5.Value:= ParamEFDEBIT5.Value - ParamEFCREDIT5.Value;
      ParamEFMontant6.Value:= ParamEFDEBIT6.Value - ParamEFCREDIT6.Value;
      ParamEFMontant7.Value:=0;//= ParamEFDEBIT7.Value - ParamEFCREDIT7.Value;
    end;
    ParamEFTotMontant.Value:= ParamEFMontant1.Value + ParamEFMontant2.Value+
                                   ParamEFMontant3.Value + ParamEFMontant4.Value+
                                   ParamEFMontant5.Value + ParamEFMontant6.Value+
                                   ParamEFMontant7.Value;
    if (ParamEFTotMontant.Value<0)and(ParamEFUtilisation.Value=0) then
    begin
      ParamEFMontant1.Value:= 0;
      ParamEFMontant2.Value:= 0;
      ParamEFMontant3.Value:= 0;
      ParamEFMontant4.Value:= 0;
      ParamEFMontant5.Value:= 0;
      ParamEFMontant6.Value:= 0;
      ParamEFMontant7.Value:= 0;
      ParamEFTotMontant.Value:=0;
    end;
  end
  else
  if ParamEFUtilisation.Value=2 then
  begin
    ParamEFMontant1.Value:= ParamEFDEBIT1.Value;
    ParamEFMontant2.Value:= ParamEFDEBIT2.Value;
    ParamEFMontant3.Value:= ParamEFDEBIT3.Value;
    ParamEFMontant4.Value:= ParamEFDEBIT4.Value;
    ParamEFMontant5.Value:= ParamEFDEBIT5.Value;
    ParamEFMontant6.Value:= ParamEFDEBIT6.Value;
    ParamEFMontant7.Value:= 0;//ParamEFDEBIT7.Value;
    ParamEFTotMontant.Value:=ParamEFMontant1.Value + ParamEFMontant2.Value+
                                   ParamEFMontant3.Value + ParamEFMontant4.Value+
                                   ParamEFMontant5.Value + ParamEFMontant6.Value+
                                   ParamEFMontant7.Value;
  end
  else
  if ParamEFUtilisation.Value=3 then
  begin
      ParamEFMontant1.Value := ParamEFCREDIT1.Value;
      ParamEFMontant2.Value := ParamEFCREDIT2.Value;
      ParamEFMontant3.Value := ParamEFCREDIT3.Value;
      ParamEFMontant4.Value := ParamEFCREDIT4.Value;
      ParamEFMontant5.Value := ParamEFCREDIT5.Value;
      ParamEFMontant6.Value := ParamEFCREDIT6.Value;
      ParamEFMontant7.Value := 0;//ParamEFCREDIT7.Value;
      ParamEFTotMontant.Value:=ParamEFMontant1.Value + ParamEFMontant2.Value+
                                   ParamEFMontant3.Value + ParamEFMontant4.Value+
                                   ParamEFMontant5.Value + ParamEFMontant6.Value+
                                   ParamEFMontant7.Value;
  end;
end;

procedure TDASQL.SelEltJrnCalcFields(DataSet: TDataSet);
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

procedure TDASQL.SelToPrintCalcFields(DataSet: TDataSet);
begin
  if SelToPrintdebit.Value='D' then
  begin
    SelToPrintMDebit.Value:=SelToPrintMontant.Value;
    SelToPrintMCredit.Value:=0;
  end
  else
  begin
    SelToPrintMCredit.Value:=SelToPrintMontant.Value;
    SelToPrintMDebit.Value:=0;
  end;
end;

procedure TDASQL.AmortiCalcFields(DataSet: TDataSet);
begin
  if AmortiDebit.value='D' then
  begin
   AmortiAmDebit.value:=AmortiMontant.value;
   AmortiAmCredit.value:=0;
  end
  else
  begin
   AmortiAmDebit.value:=0;
   AmortiAmCredit.value:=AmortiMontant.value;
  end;
end;

procedure TDASQL.ProvisionCalcFields(DataSet: TDataSet);
begin
  if ProvisionDebit.value='D' then
  begin
   ProvisionProDebit.value:=ProvisionMontant.value;
   ProvisionProCredit.value:=0;
  end
  else
  begin
   ProvisionProDebit.value:=0;
   ProvisionProCredit.value:=ProvisionMontant.value;
  end;
end;

procedure TDASQL.SelToPrint2CalcFields(DataSet: TDataSet);
begin
  if SelToPrint2debit.Value='D' then
  begin
    SelToPrint2MDebit.Value:=SelToPrint2Montant.Value;
    SelToPrint2MCredit.Value:=0;
  end
  else
  begin
    SelToPrint2MCredit.Value:=SelToPrint2Montant.Value;
    SelToPrint2MDebit.Value:=0;
  end;
  if SelToPrint2NbContre.Value>1 then
    SelToPrint2Contre.Value:='9999999999'
  else
    SelToPrint2Contre.Value:=SelToPrint2ContrePartie.Value;
  SelToPrint2Num.Value:=copy(SelToPrint2Journal.Value,5,4);
  if SelToPrint2Typ.Value=2 then
    SelToPrint2Libel2.Value:=SelToPrint2SigleTaxe.Value+' '+SelToPrint2Libelle.Value
  else
    SelToPrint2Libel2.Value:=SelToPrint2Libelle.Value+' '+FormatFloat('#',SelToPrint2Qte.value);
  if ((SelToPrint2Compte.Value>'4121')and(SelToPrint2Compte.Value<'4122'))
      or ((SelToPrint2Compte.Value>'4021')and(SelToPrint2Compte.Value<'4022'))then
     SelToPrint2Libel2.Value:= SelToPrint2Libelle.value+'EF AU '+SelToPrint2DateFact.AsString;
end;

procedure TDASQL.DeclareCalcFields(DataSet: TDataSet);
begin
  if DeclareDebit.value='D' then
  begin
    if DeclareCompte.value>='7' then
    begin
      DeclareSMontant.value:=-DeclareMontant.value;
      DeclareSQte.value:=-DeclareQte.value;
    end
    else
    begin
      DeclareSMontant.value:=DeclareMontant.value;
      DeclareSQte.value:=DeclareQte.value;
    end;
  end
  else
  begin
    if DeclareCompte.value>='7' then
    begin
      DeclareSMontant.value:=DeclareMontant.value;
      DeclareSQte.value:=DeclareQte.value;
    end
    else
    begin
      DeclareSMontant.value:=-DeclareMontant.value;
      DeclareSQte.value:=-DeclareQte.value;
    end;
  end;

  DeclareCpteStat.Value:=DeclareTiers.Value  + DeclareCompte.Value ;
  if (DeclareStatistique1.value>'0')and(DeclareStatistique1.value<>'ADM')then
     DeclareChoixStat.Value:=DeclareStatistique1.value
  else
     DeclareChoixStat.Value:=DeclareTiers.value;
  if DeclareQuittance_1.Value<='0' then
     DeclareDateQuittance.value:=''
  else
     DeclareDateQuittance.value:=FormatDateTime('dd/mm/yyyy',DeclareDateQuit_1.value);

  if DeclareTP_1.Value<='0' then
     DeclareDateTaxeProf.value:=''
  else
     DeclareDateTaxeProf.value:=FormatDateTime('dd/mm/yyyy',DeclareDateTP_1.value);

  if length(DeclareFamilleProd.Value) = 0 then
     DeclareFamilleProd2.Value:=DeclareTypX.Value
  else
     DeclareFamilleProd2.Value:=DeclareFamilleProd.Value;
  DeclareDateTaxeProf.value;
end;

procedure TDASQL.DernierLettreCalcFields(DataSet: TDataSet);
begin
  DernierLettreEqIndex.value:=EquivIndex(DernierLettreLettre.Value);
end;

procedure TDASQL.EltLettreeCalcFields(DataSet: TDataSet);
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
end;

procedure TDASQL.EFBrutCalcFields(DataSet: TDataSet);
begin
  if EFBrutDebit.Value='C' then
  begin
    EFBrutMDebit.Value:=EFBrutMontant.Value;
    EFBrutMCredit.Value:=0;
  end
  else
  begin
    EFBrutMDebit.Value:=0;
    EFBrutMCredit.Value:=EFBrutMontant.Value;
  end
end;

procedure TDASQL.EFCalcFields(DataSet: TDataSet);
begin
  if EFDebit.Value='D' then
  begin
    EFMDebit.Value :=EFMontant.Value;
    EFMCredit.Value:=0;
    EFSMontant.Value:=EFMontant.Value;
  end
  else
  begin
    EFMDebit.Value :=0;
    EFMCredit.Value:=EFMontant.Value;
    EFSMontant.Value:=-EFMontant.Value;
  end;
{  Commun.SelTitre.Close;
  Commun.SelTitre.ParamByName('a').AsInteger:=EFTypa.Value;
  Commun.Open;
  EFValExp.Value:=}
end;

procedure TDASQL.SelDeclCalcFields(DataSet: TDataSet);
begin
  if (SelDeclStat.value>'0')and(SelDeclStat.value<>'ADM')then
     SelDeclChoixStat1.Value:=SelDeclStat.value
  else
     SelDeclChoixStat1.Value:=SelDeclCompte.value;

  if SelDeclQuit.Value<='0' then
     SelDeclDateQuittance.value:=''
   else
     SelDeclDateQuittance.value:=DateTimeToStr(DeclareDateQuit.value);

  if SelDeclTP.Value<='0' then
     SelDeclDateTaxeProf.value:=''
   else
     SelDeclDateTaxeProf.value:=DateTimeToStr(DeclareDateQuit.value);

  if length(SelDeclPrestation.Value) = 0 then
     SelDeclPrestation1.Value:=SelDeclProduit.Value
  else
     SelDeclPrestation1.Value:=SelDeclPrestation.Value;
end;

procedure TDASQL.DetTaxeCalcFields(DataSet: TDataSet);
begin
  if DetTaxeDebit.value='D' then
  begin
    DetTaxeMDebit.value:=DetTaxeMontant.value;
    if DetTaxeCompte.value>='7' then
    begin
      DetTaxeSMontant.value:=-DetTaxeMontant.value;
      DetTaxeSQte.value:=-DetTaxeQte.value;
    end
    else
    begin
      DetTaxeSMontant.value:=DetTaxeMontant.value;
      DetTaxeSQte.value:=DetTaxeQte.value;
    end;
    DetTaxeMCredit.value:=0;
  end
  else
  begin
    DetTaxeMDebit.value:=0;
    if DetTaxeCompte.value>='7' then
    begin
      DetTaxeSMontant.value:=DetTaxeMontant.value;
      DetTaxeSQte.value:=DetTaxeQte.value;
    end
    else
    begin
      DetTaxeSMontant.value:=-DetTaxeMontant.value;
      DetTaxeSQte.value:=-DetTaxeQte.value;
    end;
    DetTaxeMCredit.value:=DetTaxeMontant.value;
  end;

  if length(DetTaxeTiers.Value)>7 then
    DetTaxeTiersOuContre.Value:=DetTaxeTiers.Value
  else
    DetTaxeTiersOuContre.Value:=DetTaxeContrePartie.Value;

  DetTaxeImport.Value :=false;
  if MettreNumeroDouane then
  begin
    SelectParam('TVA','Ligne51g');
    if DansParam(EnleveBlancDroite(DetTaxeCompte.Value)) then DetTaxeImport.Value :=true;
    SelectParam('TVA','Ligne52g');
    if DansParam(EnleveBlancDroite(DetTaxeCompte.Value)) then DetTaxeImport.Value :=true;
    SelectParam('TVA','Ligne53g');
    if DansParam(EnleveBlancDroite(DetTaxeCompte.Value)) then DetTaxeImport.Value :=true;
    if DetTaxeimport.Value then
    begin
      DetTaxeStatDouane.Value:=DetTaxeNumFact.Value;
    end
    else
    begin
      DetTaxeStatDouane.Value:=DetTaxeStatistique.Value;
    end;

   end;
end;

procedure TDASQL.SelCummulCalcFields(DataSet: TDataSet);
var intmois:word;
begin
  if SelCummulDebit.Value='D' then
  begin
    SelCummulMDebit.Value := SelCummulMontant.Value;
    SelCummulMCredit.Value:= 0;
  end
  else
  begin
    SelCummulMDebit.Value :=0;
    SelCummulMCredit.Value:=SelCummulMontant.Value;
  end;
  SelCummulIntitCpt.Value:=enleveblancdroite(SelCummulCompte.Value)+' : '+enleveblancdroite(SelCummulIntitule.Value);
  intmois:=strtoint(copy(SelCummulPeriode.Value,6,2));
  case intmois of
    1 :SelCummulMois.Value:='Jan '+copy(SelCummulPeriode.Value,1,4);
    2 :SelCummulMois.Value:='Fév '+copy(SelCummulPeriode.Value,1,4);
    3 :SelCummulMois.Value:='Mar '+copy(SelCummulPeriode.Value,1,4);
    4 :SelCummulMois.Value:='Avr '+copy(SelCummulPeriode.Value,1,4);
    5 :SelCummulMois.Value:='Mai '+copy(SelCummulPeriode.Value,1,4);
    6 :SelCummulMois.Value:='Jun '+copy(SelCummulPeriode.Value,1,4);
    7 :SelCummulMois.Value:='Jul '+copy(SelCummulPeriode.Value,1,4);
    8 :SelCummulMois.Value:='Aoû '+copy(SelCummulPeriode.Value,1,4);
    9 :SelCummulMois.Value:='Sep '+copy(SelCummulPeriode.Value,1,4);
    10:SelCummulMois.Value:='Oct '+copy(SelCummulPeriode.Value,1,4);
    11:SelCummulMois.Value:='Nov '+copy(SelCummulPeriode.Value,1,4);
    12:SelCummulMois.Value:='Déc '+copy(SelCummulPeriode.Value,1,4);
  end;
end;

procedure TDASQL.BalConCoCalcFields(DataSet: TDataSet);
var auxi:string;
begin
  auxi:=Special.InAuxiliaire(BalConCoCompte.Value);
  if (length(auxi)>0) then
  begin
    while length(auxi)<8 do auxi:=auxi+'0';
    BalConCoCompteG.Value:=auxi;
    SelNumCpt.close;
    SelNumCpt.parameters[0].Value:=auxi;
    SelNumCpt.open;
    BalConCoIntituleG.Value:=SelNumCptIntitule.Value;
  end
  else
  begin
    BalConCoCompteG.Value:=BalConCoCompte.Value;
    BalConCoIntituleG.Value:=BalConCoIntitule.Value;
  end;
  if ('40'<=BalConCoCompte.Value)and(BalConCoCompte.Value<='41Z') then
  begin
    BalConCoCompteG.Value:=Copy(BalConCoCompte.Value,1,4)+'0000';
    SelNumCpt.close;
    SelNumCpt.parameters[0].value:=BalConCoCompteG.Value;
    SelNumCpt.open;
    BalConCoIntituleG.Value:=SelNumCptIntitule.Value;
  end;
  if ('467'<=BalConCoCompte.Value)and(BalConCoCompte.Value<='467Z') then
  begin
    BalConCoCompteG.Value:=Copy(BalConCoCompte.Value,1,4)+'0000';
    SelNumCpt.close;
    SelNumCpt.parameters[0].value:=BalConCoCompteG.Value;
    SelNumCpt.open;
    BalConCoIntituleG.Value:=SelNumCptIntitule.Value;
  end;
end;

procedure TDASQL.ResumeCalcFields(DataSet: TDataSet);
var auxi:string;
begin
  auxi:=special.InAuxiliaire(ResumeCompte.Value);
  if (length(auxi)>0) then
  begin
    while length(auxi)<8 do auxi:=auxi+'0';
      ResumeCompteG.Value:=auxi;
  end
  else
    ResumeCompteG.Value:=ResumeCompte.Value;
  if ('40'<=ResumeCompte.Value)and(ResumeCompte.Value<='41Z') then
    ResumeCompteG.Value:=Copy(ResumeCompte.Value,1,4)+'0000';
  if ('467'<=ResumeCompte.Value)and(ResumeCompte.Value<='467Z') then
    ResumeCompteG.Value:=Copy(ResumeCompte.Value,1,4)+'0000';
end;

procedure TDASQL.RecaTaxeCalcFields(DataSet: TDataSet);
begin
  if RecaTaxeDebit.Value='D' then
    RecaTaxeSMontant.Value:=-RecaTaxeMontant.Value
  else
    RecaTaxeSMontant.Value:=RecaTaxeMontant.Value;
  RecaTaxeSMontant.Value:=RecaTaxeSMontant.Value;
  if RecaTaxeNonTaxable.Value then
  begin
    RecaTaxeMTaxable.Value:=0;
    RecaTaxeMTVA.Value:=0;
    RecaTaxeMNonTaxable.Value:=RecaTaxeSMontant.Value;
  end
  else
  begin
    RecaTaxeMTaxable.Value:=RecaTaxeSMontant.Value;
    RecaTaxeMTVA.Value:=RecaTaxeSMontant.Value*RecaTaxeTaux.Value/100;
    RecaTaxeMNonTaxable.Value:=0;
  end;
  if  RecaTaxeRubrique.Value='Ligne1ab' then
      RecaTaxeDescription.Value:='Opération à l''exportation';
  if  RecaTaxeRubrique.Value='Ligne2ab' then
      RecaTaxeDescription.Value:='Opération à locale';
  if  RecaTaxeRubrique.Value='Ligne3ab' then
      RecaTaxeDescription.Value:='Autres régularisations';
end;

procedure TDASQL.qParaDeclCalcFields(DataSet: TDataSet);
begin
  qParaDecla.Value:=' à '
end;

procedure TDASQL.SelArreteAfterInsert(DataSet: TDataSet);
begin
  SelArretePeriode.Value := SelArrete.Parameters[0].value;
  SelArreteJournaux.Value := SelArrete.Parameters[1].value;
end;

procedure TDASQL.Balance2CalcFields(DataSet: TDataSet);
var auxi:string;
begin
{  if BalanceDebit.Value='D' then
  begin
   BalanceBDebit.value:=BalanceMontant.value;
   BalanceBCredit.value:=0;
  end
  else
  begin
   BalanceBDebit.value:=0;
   BalanceBCredit.value:=BalanceMontant.value;
  end;
  auxi:=Special.InAuxiliaire(BalanceCompte.Value);
  if length(auxi)>0 then
  begin
    while length(auxi)<8 do auxi:=auxi+'0';
    BalanceNumGene.Value:=auxi;
    SelNumCpt.close;
    SelNumCpt.parameters[0].value:=auxi;
    SelNumCpt.open;
    BalanceIntitGene.Value:=SelNumCptIntitule.Value;
  end
  else
  begin
    BalanceNumGene.Value:=BalanceCompte.Value;
    BalanceIntitGene.Value:=BalanceIntitule.Value;
  end;}
end;

end.
