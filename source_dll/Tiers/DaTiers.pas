unit DaTiers;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDataTiers = class(TDataModule)
    SuiviTiers: TQuery;
    SuiviTiersNumero: TIntegerField;
    SuiviTiersPeriode: TStringField;
    SuiviTiersJour: TSmallintField;
    SuiviTiersCodeJrnx: TStringField;
    SuiviTiersPiece: TStringField;
    SuiviTiersLibelle: TStringField;
    SuiviTiersTiers: TStringField;
    SuiviTiersJournal: TIntegerField;
    SuiviTiersDebit: TStringField;
    SuiviTiersNumero_1: TIntegerField;
    SuiviTiersCompte: TStringField;
    SuiviTiersMontant: TFloatField;
    SuiviTiersIzy: TBooleanField;
    SuiviTiersNumSource: TIntegerField;
    SuiviTiersNumDest: TIntegerField;
    SuiviTiersReference: TStringField;
    SuiviTiersRang: TSmallintField;
    SuiviTiersSur: TSmallintField;
    SuiviTiersPourc: TFloatField;
    SuiviTiersEcheance: TDateField;
    SuiviTiersMontant_1: TFloatField;
    EltSuivi: TTable;
    EltSuiviJournal: TIntegerField;
    EltSuiviDebit: TStringField;
    EltSuiviNumero: TAutoIncField;
    EltSuiviCompte: TStringField;
    EltSuiviMontant: TFloatField;
    EltSuiviIzy: TBooleanField;
    Repos: TTable;
    SelFacture: TQuery;
    SelFactureNumero: TIntegerField;
    SelFactureClient: TStringField;
    SelFactureTranche: TSmallintField;
    SelFactureMontant: TFloatField;
    SelFactureCommentaire: TStringField;
    SelFactureEtat: TSmallintField;
    SelFactureTraite: TFloatField;
    SelFactureSur: TSmallintField;
    NumCpt: TTable;
    lettrage: TTable;
    lettrageNumElt: TIntegerField;
    lettrageLettre: TStringField;
    SourceRegle: TDataSource;
    SourceEcriture: TDataSource;
    SourceRJournal: TDataSource;
    Fournis: TTable;
    FournisCode: TStringField;
    FournisSigle: TStringField;
    FournisNom: TStringField;
    FournisRue: TStringField;
    FournisCP: TStringField;
    FournisVille: TStringField;
    FournisPays: TStringField;
    FournisTel: TStringField;
    FournisFax: TStringField;
    Lieu: TTable;
    SelTypProd: TQuery;
    SelTypProdMarque: TStringField;
    SelTypProdReference: TStringField;
    SelTypProdFamille: TStringField;
    SelTypProdUniteX: TStringField;
    SelTypProdUniteCol: TStringField;
    SelTypProdcode: TStringField;
    SelTypProdNature: TStringField;
    Tempon: TTable;
    TemponString1: TStringField;
    TemponString2: TStringField;
    TemponReal1: TFloatField;
    TemponReal2: TFloatField;
    TemponBoolean1: TBooleanField;
    TemponBoolean2: TBooleanField;
    Taxe: TTable;
    TaxeSigle: TStringField;
    TaxeDenomination: TStringField;
    TaxeCollecte: TStringField;
    TaxeDeductible: TStringField;
    TaxeTaux: TFloatField;
    SelTaxe: TQuery;
    SelTaxeSigle: TStringField;
    SelTaxeDenomination: TStringField;
    SelTaxecollecte: TStringField;
    SelTaxedeductible: TStringField;
    SelTaxeTaux: TFloatField;
    SelJournal: TQuery;
    SelJournalCode: TStringField;
    SelJournalPeriode: TStringField;
    SelJournalJour: TSmallintField;
    SelJournalCodeJrnx: TStringField;
    SelJournalTransferer: TBooleanField;
    SelJournalTiers: TStringField;
    SelJournalNumCHQ: TStringField;
    SelJournalDateEsc: TDateField;
    SelJournalDateSaisie: TDateTimeField;
    SelNumDivers: TQuery;
    SelNumDiversNumCpt: TStringField;
    SelNumDiversStatistique: TStringField;
    SelNumDiversQuittance: TStringField;
    SelNumDiversNIF: TStringField;
    SelNumDiversDateQuit: TDateField;
    SelNumDiversNatureProd: TStringField;
    SelNumDiversCodeProd: TStringField;
    SelNumDiversCodeDecl: TStringField;
    SelNumDiversAbrev: TStringField;
    SelNumAdres: TQuery;
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
    SelNumCpt: TQuery;
    SelNumCptNumCpt: TStringField;
    SelNumCptIntitule: TStringField;
    Element: TQuery;
    ElementJournal: TStringField;
    ElementDebit: TStringField;
    ElementNumero: TIntegerField;
    ElementCompte: TStringField;
    ElementMontant: TFloatField;
    ElementIzy: TBooleanField;
    ElementLibelle: TStringField;
    ElementContrepartie: TStringField;
    ElementNbcontre: TSmallintField;
    ElementQte: TFloatField;
    ElementDateFact: TDateField;
    ElementNumFact: TStringField;
    ElementColis: TFloatField;
    ElementTypX: TStringField;
    ElementSigleTaxe: TStringField;
    RJournal: TQuery;
    RJournalCode: TStringField;
    RJournalPeriode: TStringField;
    RJournalJour: TSmallintField;
    RJournalCodeJrnx: TStringField;
    RJournalTransferer: TBooleanField;
    RJournalTiers: TStringField;
    RJournalNumCHQ: TStringField;
    RJournalDateEsc: TDateField;
    RJournalDateSaisie: TDateTimeField;
    RJournalDeclarer: TBooleanField;
    CliByNom: TTable;
    CliByNomNumero: TStringField;
    Journal: TQuery;
    JournalCode: TStringField;
    JournalPeriode: TStringField;
    JournalJour: TSmallintField;
    JournalCodeJrnx: TStringField;
    JournalTransferer: TBooleanField;
    JournalTiers: TStringField;
    JournalDeclarer: TBooleanField;
    JournalNumCHQ: TStringField;
    JournalDateEsc: TDateField;
    JournalDateSaisie: TDateTimeField;
    ToutEltJrn: TQuery;
    ToutEltJrnJournal: TStringField;
    ToutEltJrnNumero: TIntegerField;
    ToutEltJrnDebit: TStringField;
    ToutEltJrnCompte: TStringField;
    ToutEltJrnMontant: TFloatField;
    ToutEltJrnIzy: TBooleanField;
    ToutEltJrnLibelle: TStringField;
    ToutEltJrnContrepartie: TStringField;
    ToutEltJrnNbcontre: TSmallintField;
    ToutEltJrnQte: TFloatField;
    ToutEltJrnDateFact: TDateField;
    ToutEltJrnNumFact: TStringField;
    ToutEltJrnColis: TFloatField;
    ToutEltJrnTypX: TStringField;
    ToutEltJrnSigleTaxe: TStringField;
    RechLet: TQuery;
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
    RechLetMontant: TFloatField;
    RechLetIzy: TBooleanField;
    RechLetNbcontre: TSmallintField;
    RechLetContrepartie: TStringField;
    RechLetLContre: TStringField;
    RechLetIntitule: TStringField;
    RechLetPeriode: TStringField;
    RechLetCodeJrnx: TStringField;
    RechLetJour: TSmallintField;
    EltLettree: TQuery;
    EltLettreePeriode: TStringField;
    EltLettreeMontant: TFloatField;
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
    NonLettre: TQuery;
    NonLettreJournal: TStringField;
    NonLettreNumFact: TStringField;
    NonLettreDateFact: TDateField;
    NonLettreLettre: TStringField;
    NonLettreMontant: TFloatField;
    NonLettreLibelle: TStringField;
    NonLettreDebit: TStringField;
    NonLettreCompte: TStringField;
    NonLettreContrepartie: TStringField;
    NonLettreNbcontre: TSmallintField;
    NonLettreIzy: TBooleanField;
    NonLettreQte: TFloatField;
    NonLettreNumero: TIntegerField;
    SelLettrage: TQuery;
    SelLettrageNumElt: TIntegerField;
    SelLettrageLettre: TStringField;
    SuiviLet: TQuery;
    SuiviLetJournal: TStringField;
    SuiviLetNumFact: TStringField;
    SuiviLetDateFact: TDateField;
    SuiviLetMontant: TFloatField;
    SuiviLetlettre: TStringField;
    SuiviLetLibelle: TStringField;
    SuiviLetCompte: TStringField;
    SuiviLetdebit: TStringField;
    SuiviLetNumElt: TIntegerField;
    SuiviLetNumero: TIntegerField;
    SuiviLetIzy: TBooleanField;
    SuiviLetCode: TStringField;
    SuiviLetPeriode: TStringField;
    SuiviLetJour: TSmallintField;
    SuiviLetCodeJrnx: TStringField;
    SuiviLetTransferer: TBooleanField;
    SuiviLetSigleTaxe: TStringField;
    Ecriture: TQuery;
    EcritureCode: TStringField;
    EcriturePeriode: TStringField;
    EcritureJour: TSmallintField;
    EcritureCodeJrnx: TStringField;
    EcritureTransferer: TBooleanField;
    EcritureDateFact: TDateField;
    EcritureNumFact: TStringField;
    EcritureJournal: TStringField;
    EcritureDebit: TStringField;
    EcritureNumero: TIntegerField;
    EcritureCompte: TStringField;
    EcritureMontant: TFloatField;
    EcritureIzy: TBooleanField;
    EcritureLettre: TStringField;
    EcritureIntitule: TStringField;
    EcritureTiers: TStringField;
    EcritureLibelle: TStringField;
    SelEltJrn: TQuery;
    SelEltJrnDateFact: TDateField;
    SelEltJrnNumFact: TStringField;
    SelEltJrnJournal: TStringField;
    SelEltJrnLibelle: TStringField;
    SelEltJrnMDebit: TFloatField;
    SelEltJrnMCredit: TFloatField;
    SelEltJrnlettre: TStringField;
    SelEltJrnCompte: TStringField;
    SelEltJrnIzy: TBooleanField;
    SelEltJrnMontant: TFloatField;
    SelEltJrnNumero: TAutoIncField;
    SelEltJrnContrepartie: TStringField;
    SelEltJrnNbcontre: TSmallintField;
    SelEltJrnQte: TFloatField;
    SelEltJrnDebit: TStringField;
    SelEltJrnIntitule: TStringField;
    SelEltJrnColis: TFloatField;
    SelEltJrnTypX: TStringField;
    SelEltJrnSigleTaxe: TStringField;
    DernierLettre: TQuery;
    DernierLettreNumElt: TIntegerField;
    DernierLettreLettre: TStringField;
    NumCptNumCpt: TStringField;
    NumCptIntitule: TStringField;
    NumCptDetail: TSmallintField;
    NumCptClasse: TSmallintField;
    NumCptGClasse: TSmallintField;
    NumCptExonere: TBooleanField;
    NumCptTotalisateur: TBooleanField;
    NumCptIzy: TBooleanField;
    NumCptGGroupe: TIntegerField;
    NumCptOGroupe: TIntegerField;
    EltLettreeQte: TFloatField;
    EltLettreeColis: TFloatField;
    LieuCode: TStringField;
    SelLieu: TQuery;
    SelLieucode: TStringField;
    CliByNomNom: TStringField;
    EltLettreePU: TFloatField;
    Societe1: TTable;
    Societe1Code: TStringField;
    Societe1Chemin: TStringField;
    Societe1NIF: TStringField;
    Societe1ATP: TStringField;
    Societe1DtATP: TDateField;
    Societe1Quit: TStringField;
    Societe1DtQuit: TDateField;
    Societe1Registre: TStringField;
    Societe1CompteBQ: TStringField;
    SelAdresse: TQuery;
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
    RechLetLibel2: TStringField;
    Journaux: TTable;
    JournauxCode: TStringField;
    JournauxIntitule: TStringField;
    JournauxTyp: TSmallintField;
    JournauxCompte: TStringField;
    RechLetTypJx: TSmallintField;
    RechLetSigleTaxe: TStringField;
    SelLettrageDebit: TStringField;
    SelLettrageMontant: TFloatField;
    EltLettreeDateEsc: TDateField;
    RechLetDateEsc: TDateField;
    RechLetTyp: TSmallintField;
    RechLetQte: TFloatField;
    EltLettreeLibel2: TStringField;
    EltLettreeTyp: TSmallintField;
    EltLettreeSigleTaxe: TStringField;
    DernierLettreDebit: TStringField;
    DernierLettreMontant: TCurrencyField;
    Regleme: TTable;
    ReglemeNumSource: TIntegerField;
    ReglemeNumDest: TStringField;
    ReglemeReference: TStringField;
    ReglemeRang: TSmallintField;
    ReglemeSur: TSmallintField;
    ReglemeEcheance: TDateField;
    ReglemeMontant: TFloatField;
    ReglemePourc: TFloatField;
    DataSource1: TDataSource;
    TFournis: TTable;
    SourceQTiers: TDataSource;
    QDivers1: TQuery;
    QDivers1code: TStringField;
    QDivers1Statis: TStringField;
    QDivers1NIF: TStringField;
    QDivers1ATP: TStringField;
    QDivers1DtATP: TDateField;
    QDivers1Quit: TStringField;
    QDivers1DtQuit: TDateField;
    QDivers1Registre: TStringField;
    SourceQDivers1: TDataSource;
    QAdresse1: TQuery;
    SourceQAdresse1: TDataSource;
    SourceQInterlo1: TDataSource;
    QInterlo1: TQuery;
    Societe: TQuery;
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
    SocieteSiege: TBooleanField;
    SocieteTransferer: TBooleanField;
    SocieteCheminPrec: TStringField;
    SocieteExerDeb: TDateField;
    SocieteExerFin: TDateField;
    Saisimp: TTable;
    SaisimpCode: TStringField;
    SaisimpLibelle: TStringField;
    QInterlo1Code: TStringField;
    QInterlo1Nom: TStringField;
    QInterlo1Prenom: TStringField;
    QInterlo1Fonction: TStringField;
    QAdresse1code: TStringField;
    QAdresse1Adresse: TStringField;
    QAdresse1CP: TStringField;
    QAdresse1Tel: TStringField;
    QAdresse1FAX: TStringField;
    QAdresse1CptBanq: TStringField;
    QCompoCli: TQuery;
    SourceCompoCli: TDataSource;
    QCompoClicode: TStringField;
    QCompoCliNombre: TSmallintField;
    QCompoCliPlafMont: TFloatField;
    QCompoCliCodeZone: TStringField;
    SourcePlafQte: TDataSource;
    PlafQte: TTable;
    PlafQteCodeArt: TStringField;
    PlafQteQuantite: TFloatField;
    QCompoCliPeriode: TStringField;
    statut: TTable;
    QTiers: TQuery;
    QTiersCode: TStringField;
    QTiersRS: TStringField;
    QTiersActivite: TStringField;
    QTiersCodeFam: TStringField;
    QTiersLibStatut: TStringField;
    SelTiers: TQuery;
    SelTierscode: TStringField;
    SelTiersStatut: TStringField;
    SelTiersRS: TStringField;
    SelTiersActivite: TStringField;
    SelTiersCodeFam: TStringField;
    SelTierscode_1: TStringField;
    SelTiersAdresse: TStringField;
    SelTiersCP: TStringField;
    SelTiersTel: TStringField;
    SelTiersFAX: TStringField;
    SelTiersCptBanq: TStringField;
    SourceSelTiers: TDataSource;
    TFam_Cli: TTable;
    TFam_CliCode: TStringField;
    TFam_CliLibelle: TStringField;
    QTiersLibFamille: TStringField;
    TemponDATE1: TDateField;
    TemponDATE2: TDateField;
    TemponSTRING3: TStringField;
    QTiersRemarque: TStringField;
    IncreAuto: TQuery;
    IncreAutoCode: TStringField;
    SourceTFam_cli: TDataSource;
    SelTiersRemarque: TStringField;
    SourceStatut: TDataSource;
    SelClientByNom: TQuery;
    SelClientByNomNom: TStringField;
    QteInven: TTable;
    QteInvenCodeCli: TStringField;
    QteInvenCodeArt: TStringField;
    QteInvenQuantite: TFloatField;
    QteInvenDaty: TDateField;
    SourceQteInven: TDataSource;
    TArticle: TTable;
    TArticleCode: TStringField;
    QteInvenArticle: TStringField;
    PlafQteArticle: TStringField;
    QTiersFam: TQuery;
    QTiersFamCode: TStringField;
    QTiersFamStatut: TStringField;
    QTiersFamRS: TStringField;
    QTiersFamActivite: TStringField;
    QTiersFamRemarque: TStringField;
    QTiersFamcodeFam: TStringField;
    QteInvenByCli: TTable;
    QteInvenByCliCodeArt: TStringField;
    QteInvenByCliQuantite: TFloatField;
    QteInvenByCliDaty: TDateField;
    SourceQTiersFam: TDataSource;
    PlafQteByCli: TTable;
    PlafQteByCliCodeArt: TStringField;
    PlafQteByCliQuantite: TFloatField;
    PlafQteByCliCodeCli: TStringField;
    PlafQteCodeCli: TStringField;
    QteInvenByCliCodeCli: TStringField;
    TReglemen: TTable;
    TReglemenCode: TStringField;
    TReglemenLibelle: TStringField;
    SourceTReglemen: TDataSource;
    QAdresse1SiteWeb: TStringField;
    QAdresse1EMail: TStringField;
    QAdresse1Ville: TStringField;
    QAdresse1Pays: TStringField;
    QContaCli: TQuery;
    QContaClicode: TStringField;
    QContaCliStatut: TStringField;
    QContaCliRS: TStringField;
    QContaCliActivite: TStringField;
    QContaCliRemarque: TStringField;
    QContaCliCodeRep: TStringField;
    QContaCliDaty: TDateField;
    QContaCliCodeFam: TStringField;
    QAdrConta: TQuery;
    QAdrContacode: TStringField;
    QAdrContaAdresse: TStringField;
    QAdrContaCP: TStringField;
    QAdrContaTel: TStringField;
    QAdrContaFAX: TStringField;
    QAdrContaCptBanq: TStringField;
    QAdrContaSiteWeb: TStringField;
    QAdrContaEMail: TStringField;
    QAdrContaVille: TStringField;
    QAdrContaPays: TStringField;
    QDivConta: TQuery;
    QDivContacode: TStringField;
    QDivContaStatis: TStringField;
    QDivContaNIF: TStringField;
    QDivContaATP: TStringField;
    QDivContaDtATP: TDateField;
    QDivContaQuit: TStringField;
    QDivContaDtQuit: TDateField;
    QDivContaRegistre: TStringField;
    QIntConta: TQuery;
    QIntContacode: TStringField;
    QIntContaNom: TStringField;
    QIntContaPrenom: TStringField;
    QIntContaFonction: TStringField;
    Societe1RS: TStringField;
    SocieteRS: TStringField;
    QCompoCliCodeRegl: TStringField;
    TArticleArticle: TStringField;
    TFournisCode: TStringField;
    TFournisRS: TStringField;
    TFournisRenumeroter: TStringField;
    TFournisStatut: TStringField;
    TFournisActivite: TStringField;
    TFournisRemarque: TStringField;
    TFournisCodeFam: TStringField;
    QTiersAuCompteDe: TStringField;
    statutCode: TStringField;
    statutLIbelle: TStringField;
    SelAdresseTel2: TStringField;
    SelAdresseTel3: TStringField;
    SelAdresseEmail: TStringField;
    SelAdresseSiteWeb: TStringField;
    SelAdresseBanque: TStringField;
    SelLieuLieu: TStringField;
    LieuLieu: TStringField;
    TemponSTRING4: TStringField;
    SelAdresseLotOuRue: TStringField;
    SelAdresseQuartier: TStringField;
    QLettrage: TQuery;
    Query1: TQuery;
    QLettrageNumElt: TIntegerField;
    QLettrageLettre: TStringField;
    QTiersStatut: TStringField;
    QNumClient: TQuery;
    QNumClientNumCpt: TStringField;
    QNumClientIntitule: TStringField;
    QNumClientStatistique: TStringField;
    QNumClientNIF: TStringField;
    QNumClientQuittance: TStringField;
    QNumClientDateQuit: TDateField;
    QNumClientRS: TStringField;
    QNumClientNom: TStringField;
    QNumClientAdresse: TStringField;
    QNumClientCP: TStringField;
    QNumClientPays: TStringField;
    QNumClientBP: TStringField;
    QNumClientTEL: TStringField;
    QNumClientFax: TStringField;
    QNumAdres: TQuery;
    QNumAdresNumCpt: TStringField;
    QNumAdresRS: TStringField;
    QNumAdresNom: TStringField;
    QNumAdresAdresse: TStringField;
    QNumAdresCP: TStringField;
    QNumAdresPays: TStringField;
    QNumAdresBP: TStringField;
    QNumAdresTEL: TStringField;
    QNumAdresFax: TStringField;
    QNumAdresCptBQ: TStringField;
    QNumAdresNII: TStringField;
    QNumAdresDEVISE: TStringField;
    QNumDiver: TQuery;
    QNumLoc: TQuery;
    QNumLocNumCpt: TStringField;
    QNumLocInterloc: TStringField;
    QNumLocFonction: TStringField;
    QNumLocTel: TStringField;
    QNumLocFax: TStringField;
    QNumLocInfo: TStringField;
    QNumDiverNumCpt: TStringField;
    QNumDiverStatistique: TStringField;
    QNumDiverNIF: TStringField;
    QNumDiverQuittance: TStringField;
    QNumDiverDateQuit: TDateField;
    QNumDiverTP: TStringField;
    QNumDiverDateTP: TDateField;
    QNumDiverNatureProd: TStringField;
    QNumDiverCodeProd: TStringField;
    QNumDiverCodeDecl: TStringField;
    QNumDiverAbrev: TStringField;
    QNumDiverUniteProd: TStringField;
    TAdresse1: TTable;
    TAdresse1Code: TStringField;
    TAdresse1Adresse: TStringField;
    TAdresse1CP: TStringField;
    TAdresse1Tel: TStringField;
    TAdresse1FAX: TStringField;
    TAdresse1CptBanq: TStringField;
    TAdresse1SiteWeb: TStringField;
    TAdresse1EMail: TStringField;
    TAdresse1Ville: TStringField;
    TAdresse1Pays: TStringField;
    TDivers1: TTable;
    TDivers1Code: TStringField;
    TDivers1Statis: TStringField;
    TDivers1NIF: TStringField;
    TDivers1ATP: TStringField;
    TDivers1DtATP: TDateField;
    TDivers1Quit: TStringField;
    TDivers1DtQuit: TDateField;
    TDivers1Registre: TStringField;
    TInterloc1: TTable;
    TInterloc1Code: TStringField;
    TInterloc1Nom: TStringField;
    TInterloc1Prenom: TStringField;
    TInterloc1Fonction: TStringField;
    TNumCmpt: TQuery;
    TNumCmptNumCpt: TStringField;
    TNumCmptIntitule: TStringField;
    TNumCmptDetail: TSmallintField;
    TNumCmptClasse: TSmallintField;
    TNumCmptGClasse: TSmallintField;
    TNumCmptExonere: TBooleanField;
    TNumCmptTotalisateur: TBooleanField;
    TNumCmptIzy: TBooleanField;
    TNumCmptGGroupe: TIntegerField;
    TNumCmptOGroupe: TIntegerField;
    DernierNum: TQuery;
    DernierNumcode: TStringField;
    procedure DataTiersCreate(Sender: TObject);
    procedure SelEltJrnCalcFields(DataSet: TDataSet);
    procedure RechLetCalcFields(DataSet: TDataSet);
    procedure EltLettreeCalcFields(DataSet: TDataSet);
    procedure DernierLettreCalcFields(DataSet: TDataSet);
    procedure QDivers1DtATPChange(Sender: TField);
    procedure LieuCalcFields(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    lettre:array[0..25] of string[1];
    stmois:array[1..12]of string[20];
    procedure ChangeChemin(codesoc:string);
    procedure Numeroter;
    function  EquivIndex(lettree:string):longint;
    function  EquivLettre(Index:longint):string;
    procedure DeletrerLettre(lettre:string);
    function  DeletrerElt(Numero:LongInt):boolean;
  end;

var
  DataTiers: TDataTiers;
  IsFourni,IsCollect,IsClient,IsCompoCli,IsCompoFou,IsContact:Boolean;

procedure ChangeCheminTiers( codesoc:string);export;
procedure CreerDataTiers;
procedure VonoyDataTiers;
procedure DataDeletrerElt(numero:integer;codesoc:string);export;

implementation

uses lettrage, ImporDoc;


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

procedure ChangeCheminTiers(codesoc:string);
begin
  DataTiers.ChangeChemin(codesoc);
end;

procedure DataDeletrerElt(numero:integer;codesoc:string);
begin
  try
    CreerDataTiers;
    ChangeCheminTiers(codesoc);
    DataTiers.DeletrerElt(numero);
  finally
    VonoyDataTiers;
  end;
end;

procedure TDataTiers.DeletrerLettre(lettre:string);
begin
  SelLettrage.close;
  SelLettrage.params[0].AsString:=lettre;
  SelLettrage.open;
  while not SelLettrage.eof do SelLettrage.delete;
end;

function TDataTiers.DeletrerElt(Numero:LongInt): boolean;
begin
  QLettrage.close;
  QLettrage.sql.clear;
  QLettrage.sql.Add('select * from ''Lettrage.db'' where NumElt=:a');
  QLettrage.parambyName('a').AsInteger:=Numero;
  QLettrage.open;
  if QLettrage.EOF then
  begin
    Result := false;//élement non letrré
    exit;
  end;
  DeletrerLettre(QLettrageLettre.Value);
  Result:=true;
end;

procedure TDataTiers.ChangeChemin(codesoc:string);
var hita:boolean;
begin
  //showmessage(codesoc);
  if length(codesoc)=0 then exit;
  Societe.Close;
  Societe.Params[0].AsString:=CodeSoc;
  Societe.Open;

  SelAdresse.Close;
  SelAdresse.Params[0].AsString:=SocieteCode.Value;
  SelAdresse.Open;
  Element.close;        Element.DataBaseName:=SocieteChemin.Value;
  DernierNum.close;     DernierNum.DataBaseName:=SocieteChemin.Value;
  Journal.close;        Journal.DataBaseName:=SocieteChemin.Value;
  RJournal.close;       RJournal.DataBaseName:=SocieteChemin.Value;
  SuiviTiers.close;     SuiviTiers.DataBaseName:=SocieteChemin.Value;
  EltSuivi.close;       EltSuivi.DataBaseName:=SocieteChemin.Value;
  RJournal.close;       RJournal.DataBaseName:=SocieteChemin.Value;
  Element.close;        Element.DataBaseName:=SocieteChemin.Value;
  NumCpt.close;         NumCpt.DataBaseName:=SocieteChemin.Value;
  Journal.close;        Journal.DataBaseName:=SocieteChemin.Value;
  SuiviTiers.close;     SuiviTiers.DataBaseName:=SocieteChemin.Value;
  lettrage.close;       lettrage.DataBaseName:=SocieteChemin.Value;
  SelTaxe.close;        SelTaxe.DataBaseName:=SocieteChemin.Value;
  SelFacture.close;     SelFacture.DataBaseName:=SocieteChemin.Value;
  SelEltJrn.close;      SelEltJrn.DataBaseName:=SocieteChemin.Value;
  SelNumCpt.close;      SelNumCpt.DataBaseName:=SocieteChemin.Value;
  ToutEltJrn.close;     ToutEltJrn.DataBaseName:=SocieteChemin.Value;
  SelNumDivers.close;   SelNumDivers.DataBaseName:=SocieteChemin.Value;
  EltSuivi.close;       EltSuivi.DataBaseName:=SocieteChemin.Value;
  SelJournal.close;     SelJournal.DataBaseName:=SocieteChemin.Value;
  SelNumAdres.close;    SelNumAdres.DataBaseName:=SocieteChemin.Value;
  RechLet.close;        RechLet.DataBaseName:=SocieteChemin.Value;
  //EltLettree.close;     EltLettree.DataBaseName:=SocieteChemin.Value;
  //NonLettre.close;      NonLettre.DataBaseName:=SocieteChemin.Value;
  //SelLettrage.close;    SelLettrage.DataBaseName:=SocieteChemin.Value;
  //SuiviLet.close;       SuiviLet.DataBaseName:=SocieteChemin.Value;
  //DernierLettre.close;  DernierLettre.DataBaseName:=SocieteChemin.Value;
  SelClientByNom.close; SelClientByNom.DataBaseName:=SocieteChemin.Value;
  QInterlo1.close;      QInterlo1.DataBaseName:=SocieteChemin.Value;
  QAdresse1.close;      QAdresse1.DataBaseName:=SocieteChemin.Value;
  QDivers1.close;       QDivers1.DataBaseName:=SocieteChemin.Value;
  QTiers.close;         QTiers.DataBaseName:=SocieteChemin.Value;
  SelTiers.close;       SelTiers.DataBaseName:=SocieteChemin.Value;
  QCompoCli.close;      QCompoCli.DataBaseName:=SocieteChemin.Value;
  IncreAuto.close;      IncreAuto.DataBaseName:=SocieteChemin.Value;
  TArticle.close;       TArticle.DataBaseName:=SocieteChemin.Value;
  QTiersFam.close;      QTiersFam.DataBaseName:=SocieteChemin.Value;
  QteInven.Close;       QteInven.DataBaseName:=SocieteChemin.Value;
  PlafQte.Close;        PlafQte.DataBaseName:=SocieteChemin.Value;
  PlafQteByCli.Close;   PlafQteByCli.DataBaseName:=SocieteChemin.Value;
  QTiersFam.Close;      QTiersFam.DataBaseName:=SocieteChemin.Value;
  QteInvenByCli.Close;  QteInvenByCli.DataBaseName:=SocieteChemin.Value;
  QContaCli.Close;      QContaCli.DataBaseName:=SocieteChemin.Value;
  QAdrConta.Close;      QAdrConta.DataBaseName:=SocieteChemin.Value;
  QDivConta.Close;      QDivConta.DataBaseName:=SocieteChemin.Value;
  QIntConta.Close;      QIntConta.DataBaseName:=SocieteChemin.Value;
  TFournis.Close;       TFournis.DataBaseName:=SocieteChemin.Value;
  QLettrage.Close;      QLettrage.DataBaseName:=SocieteChemin.Value;
  QNumClient.Close;     QNumClient.DataBaseName:=SocieteChemin.Value;

  QNumAdres.Close;      QNumAdres.DataBaseName:=SocieteChemin.Value;
  QNumDiver.Close;      QNumDiver.DataBaseName:=SocieteChemin.Value;
  QNumLoc.Close;        QNumLoc.DataBaseName:=SocieteChemin.Value;

  TAdresse1.Close;      TAdresse1.DataBaseName:=SocieteChemin.Value;
  TDivers1.Close;       TDivers1.DataBaseName:=SocieteChemin.Value;
  TInterloc1.Close;     TInterloc1.DataBaseName:=SocieteChemin.Value;
  TNumCmpt.Close;       TNumCmpt.DataBaseName:=SocieteChemin.Value;

  Hita:=false;
end;

procedure TDataTiers.Numeroter;
var rang,i,rglettre:integer;
    let:string;
begin
  rang:=1;
  CliByNom.Open;
  CliByNom.First;
  for i:=0 to 25 do
    if copy(CliByNomNom.Value,1,1)=lettre[i] then break;
  rglettre:=i;
  let:=copy(CliByNomNom.Value,1,1);
  while not CliByNom.EOF do
  begin
    if copy(CliByNomNom.Value,1,1)<>let then
    begin
      for i:=0 to 25 do
      if copy(CliByNomNom.Value,1,1)=lettre[i] then break;
      rglettre:=i;
      let:=copy(CliByNomNom.Value,1,1);
      rang:=1;
    end;
    CliByNom.edit;
    CliByNomNumero.Value:=FormatFloat('00',rglettre+1)+FormatFloat('000',rang);
    CliByNom.POST;
    rang:=rang+1;
    CliByNom.Next;
  end;
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

function TDataTiers.EquivLettre(Index:longint):string;
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
  result:=DataTiers.lettre[mille]+DataTiers.lettre[cent]+DataTiers.lettre[dix]+DataTiers.lettre[reste];
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

procedure TDataTiers.RechLetCalcFields(DataSet: TDataSet);
begin
  if RechLetNbContre.Value=1 then
    RechLetLContre.Value:=RechLetContrePartie.value
  else
    RechLetLContre.Value:='999999';
  if RechLetDebit.value='D' then
  begin
    RechLetMDebit.value:=RechLetMontant.value;
    RechLetMCredit.value:=0;
  end
  else
  begin
    RechLetMDebit.value:=0;
    RechLetMCredit.value:=RechLetMontant.value;
  end;
  { Calcule libellé}
  RechLetLibel2.Value:= RechLetLibelle.value;
  {Achat : Libellé + Qté}
  if RechLetTyp.Value=0 then
    RechLetLibel2.Value:= RechLetLibel2.value+' '+FormatFloat('#',RechLetQte.value);
  {Vente : Libellé + Qté}
  if RechLetTyp.Value=1 then
    RechLetLibel2.Value:= RechLetLibel2.value+' '+FormatFloat('#',RechLetQte.value);
  {Tresorerie : N°CHQ+ Libellé}
  if RechLetTyp.Value=2 then
      RechLetLibel2.Value:= RechLetSigleTaxe.value+' '+RechLetLibel2.value;
  {Si Effet : libellé + EF AU + Date d'échéance}
  if ((RechLetCompte.Value>'4121')and(RechLetCompte.Value<'4122'))
    or ((RechLetCompte.Value>'4021')and(RechLetCompte.Value<'4022'))
    {or ((RechLetContrepartie.Value>'4121')and(RechLetContrepartie.Value<'4122'))
    or ((RechLetContrepartie.Value>'4021')and(RechLetContrepartie.Value<'4022'))}then
        RechLetLibel2.Value:= RechLetLibelle.value+' EF AU '+RechLetDateFact.AsString;
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

procedure TDataTiers.DernierLettreCalcFields(DataSet: TDataSet);
begin
{  DernierLettreEqIndex.value:=EquivIndex(DernierLettreLettre.Value);}
end;

















procedure TDataTiers.QDivers1DtATPChange(Sender: TField);
begin
  QDivers1DtQuit.Value:= QDivers1DtATP.Value;
end;

procedure TDataTiers.LieuCalcFields(DataSet: TDataSet);
begin
  //LieuLieu.Value:=LieuLibelle.Value;
end;

end.
