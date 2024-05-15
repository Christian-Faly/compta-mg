Unit Daspecia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB;

type
  TSpecial = class(TDataModule)
    BatchMove1: TBatchMove;
    SourceJournal: TDataSource;
    SourceARegler: TDataSource;
    SourceEcriture: TDataSource;
    SourceRegle: TDataSource;
    SourceRElement: TDataSource;
    SourceSuivi: TDataSource;
    SourceSelEltJrn: TDataSource;
    SourceSelJournal: TDataSource;
    Journal: TADOTable;
    ToutEltJrn: TADOTable;
    EltJrn: TADOTable;
    PrepCons: TADOTable;
    PrepConsCOMPTE: TStringField;
    PrepConsIntitule: TStringField;
    PrepConsINTITUL: TStringField;
    Regleme: TADOTable;
    ReglemeNumSource: TIntegerField;
    ReglemeNumDest: TStringField;
    ReglemeReference: TStringField;
    ReglemeRang: TSmallintField;
    ReglemeSur: TSmallintField;
    ReglemeEcheance: TDateField;
    ReglemeMontant: TFloatField;
    ReglemePourc: TFloatField;
    Balancec: TADOTable;
    BalancecNumCpt: TStringField;
    BalancecSld1: TFloatField;
    BalancecSld2: TFloatField;
    BalancecSld3: TFloatField;
    BalancecSld4: TFloatField;
    BalancecSld5: TFloatField;
    BalancecSld6: TFloatField;
    BalancecSld7: TFloatField;
    BalancecSld8: TFloatField;
    BalancecSld9: TFloatField;
    BalancecSld10: TFloatField;
    EltBySel: TADOTable;
    EltBySelCompte: TStringField;
    EltBySelJournal: TStringField;
    Element: TADOTable;
    ElementJournal: TStringField;
    ElementDebit: TStringField;
    ElementCompte: TStringField;
    ElementLibelle: TStringField;
    RJournal: TADOTable;
    RJournalPeriode: TStringField;
    RJournalJour: TSmallintField;
    RJournalCodeJrnx: TStringField;
    RJournalCode: TStringField;
    Guidabon: TADOTable;
    GuidabonNumero: TAutoIncField;
    GuidabonDescription: TStringField;
    GuidabonPeriodede: TStringField;
    GuidabonPeriodea: TStringField;
    GuidabonCodeJrnx: TStringField;
    GuidabonJieme: TSmallintField;
    GuidabonMieme: TSmallintField;
    GuidabonFrequenc_: TStringField;
    GuidabonFrequence: TStringField;
    EltSuivi: TADOTable;
    EltSuiviJournal: TStringField;
    EltSuiviDebit: TStringField;
    EltSuiviNumero: TAutoIncField;
    EltSuiviCompte: TStringField;
    EltSuiviLibelle: TStringField;
    lettrage: TADOTable;
    lettrageNumElt: TIntegerField;
    lettrageLettre: TStringField;
    Arrete: TADOTable;
    ArretePeriode: TStringField;
    ArreteJournaux: TStringField;
    ArreteDernierNum: TStringField;
    GranLivr: TADOTable;
    GranLivrCOMPTE: TStringField;
    GranLivrPERIODE: TStringField;
    GranLivrDATY: TStringField;
    GranLivrJX: TStringField;
    GranLivrPIECE: TStringField;
    GranLivrCONTREPAR: TStringField;
    GranLivrLIBELLE: TStringField;
    GranLivrN_FAC: TStringField;
    Decl: TADOTable;
    DeclStatistique: TStringField;
    DeclAdresse: TStringField;
    DeclNature: TStringField;
    DeclNom: TStringField;
    DeclCOMPTE: TStringField;
    DeclMONTHT: TFloatField;
    DeclTAXE: TFloatField;
    DeclQTE: TFloatField;
    DeclOBSERVATIO: TStringField;
    EditDecl: TADOTable;
    EditDeclCOMPTE: TStringField;
    EditDeclPRODUIT: TStringField;
    EditDeclMONTHT: TFloatField;
    EditDeclTAXE: TFloatField;
    EditDeclQTE: TFloatField;
    EditDeclOBSERVATIO: TStringField;
    EditDeclNIF: TStringField;
    EditDeclSTAT: TStringField;
    EditDeclADRESSE: TStringField;
    EditDeclNOM: TStringField;
    Reglement: TADOTable;
    DecAchat: TADOTable;
    DecAchatCompte: TStringField;
    DecAchatMontHT: TFloatField;
    DecAchatTaxe: TFloatField;
    DecAchatProduit: TStringField;
    BalAnn_1: TADOTable;
    BalAnn_1COMPTE: TStringField;
    BalAnn_1INTITULE: TStringField;
    BalAnn_1DEBIT_1: TFloatField;
    BalAnn_1CREDIT_1: TFloatField;
    BalAnn_1DEBIT1: TFloatField;
    BalAnn_1CREDIT1: TFloatField;
    BalAnn_1DEBIT2: TFloatField;
    BalAnn_1CREDIT2: TFloatField;
    BalAnn_1DEBIT3: TFloatField;
    BalAnn_1CREDIT3: TFloatField;
    BalAnn_1DEBIT4: TFloatField;
    BalAnn_1CREDIT4: TFloatField;
    BalAnn_1DEBIT5: TFloatField;
    BalAnn_1CREDIT5: TFloatField;
    BalAnn_1DEBIT6: TFloatField;
    BalAnn_1CREDIT6: TFloatField;
    BalAnn_1DEBIT7: TFloatField;
    BalAnn_1CREDIT7: TFloatField;
    BalAnn_1DEBIT8: TFloatField;
    BalAnn_1CREDIT8: TFloatField;
    BalAnn_1CREDIT9: TFloatField;
    BalAnn_1DEBIT10: TFloatField;
    BalAnn_1CREDIT10: TFloatField;
    BalAnn_1AUTRE: TStringField;
    BalAnn_1DEBIT9: TFloatField;
    JrResum: TADOTable;
    JrResumCode: TStringField;
    JrResumPeriode: TStringField;
    JrResumCodeJrnx: TStringField;
    EltResum: TADOTable;
    EltResumDebit: TStringField;
    EltResumCompte: TStringField;
    EltResumJournal: TStringField;
    JrFinRe: TADOTable;
    JrFinReCodeJrnx: TStringField;
    JrFinReCode: TStringField;
    JrFinRePeriode: TStringField;
    EltFinRe: TADOTable;
    EltFinReDebit: TStringField;
    EltFinReCompte: TStringField;
    EltFinReMontant: TCurrencyField;
    EltFinReJournal: TStringField;
    TInitCha: TADOTable;
    TInitChaNUMERO: TFloatField;
    TInitChaNUMERO_1: TFloatField;
    TInitChaNUMERO_2: TFloatField;
    TInitChaNUMERO_3: TFloatField;
    TInitChaLIBELLE: TStringField;
    TInitChaBRUT: TFloatField;
    TInitChaAMPRO: TFloatField;
    ANNEXES: TADOTable;
    ANNEXESTYPA: TSmallintField;
    ANNEXESTITRE: TFloatField;
    ANNEXESSSTITRE: TFloatField;
    ANNEXESGROUPE: TFloatField;
    ANNEXESCOMPTE: TStringField;
    ANNEXESMONTANT: TFloatField;
    TANNEXTVA: TADOTable;
    TANNEXTVANOM: TStringField;
    TANNEXTVAADRESSE: TStringField;
    TANNEXTVANIF: TStringField;
    TANNEXTVASTAT: TStringField;
    TANNEXTVAMONTHT: TFloatField;
    TANNEXTVATVA: TFloatField;
    TANNEXTVATTC: TFloatField;
    Repos: TADOTable;
    SourceTitre: TDataSource;
    SourceUnion: TDataSource;
    SourceConsole: TDataSource;
    SourceSSTitre: TDataSource;
    SourceSouSouTi: TDataSource;
    PlanGene: TADOTable;
    PlanGeneNumCpt: TWideStringField;
    PlanGeneIntitule: TWideStringField;
    TNumDiver: TADOTable;
    TNumDiverNumCpt: TStringField;
    TNumDiverStatistique: TStringField;
    TNumDiverQuittance: TStringField;
    TNumDiverNIF: TStringField;
    TNumDiverDateQuit: TDateField;
    TNumDiverUniteProd: TStringField;
    TNumDiverNatureProd: TStringField;
    TNumDiverCodeProd: TStringField;
    TNumDiverCodeDecl: TStringField;
    TNumDiverAbrev: TStringField;
    TNumDiverTP: TStringField;
    TNumDiverDateTP: TDateField;
    NumCp: TADOTable;
    NumCpNumCpt: TStringField;
    NumCpIntitule: TStringField;
    NumCpDetail: TSmallintField;
    NumCpClasse: TSmallintField;
    NumCpGClasse: TSmallintField;
    NumCpOGroupe: TIntegerField;
    TypProd: TADOTable;
    TypProdCode: TStringField;
    TypProdNature: TStringField;
    TypProdFamille: TStringField;
    Titre2: TADOTable;
    BilanAct: TADOTable;
    BilanActNUMERO_2: TFloatField;
    BilanActBRUT: TFloatField;
    BilanActAMPRO: TFloatField;
    BilanActNET_N_1: TFloatField;
    BilanActNUMERO: TFloatField;
    BilanActNUMERO_1: TFloatField;
    BilanActNUMERO_3: TFloatField;
    BilanActLIBELLE: TStringField;
    NumFac: TADOQuery;
    NumFacNumCpt: TStringField;
    NumFacModeRegle: TStringField;
    NumFacAA: TStringField;
    NumFacJours: TStringField;
    NumFacLe: TDateField;
    NumFacEncoursMax: TFloatField;
    NumFacTauxRem: TFloatField;
    NumFacSeuilRelance: TFloatField;
    NumFacTauxEsc: TFloatField;
    TNumAdres: TADOTable;
    TNumAdresNumCpt: TStringField;
    TNumAdresNom: TStringField;
    TNumAdresAdresse: TStringField;
    TNumAdresCP: TStringField;
    TNumAdresLieu: TStringField;
    TNumAdresRS: TStringField;
    TNumAdresPays: TStringField;
    TNumAdresBP: TStringField;
    TNumAdresTEL: TStringField;
    TNumAdresFax: TStringField;
    TNumAdresCptBQ: TStringField;
    TNumAdresNII: TStringField;
    TNumAdresDEVISE: TStringField;
    Console0: TADOTable;
    Console0DebitSte1: TFloatField;
    Console0CreditSte1: TFloatField;
    Console0DebitSte2: TFloatField;
    Console0CreditSte2: TFloatField;
    Console0DebitSte3: TFloatField;
    Console0CreditSte3: TFloatField;
    Console0COMPTE: TStringField;
    Console0DEBIT: TFloatField;
    Console0CREDIT: TFloatField;
    Console0AUTRE: TStringField;
    Console0DebitSte4: TFloatField;
    Console0CreditSte4: TFloatField;
    Console0DebitSte5: TFloatField;
    Console0CreditSte5: TFloatField;
    Console0DebitSte6: TFloatField;
    Console0CreditSte6: TFloatField;
    Console0DebitSte7: TFloatField;
    Console0CreditSte7: TFloatField;
    Console0DebitSte8: TFloatField;
    Console0CreditSte8: TFloatField;
    Console0DebitSte10: TFloatField;
    Console0CreditSte10: TFloatField;
    Console0TotDebit: TFloatField;
    Console0TotCredit: TFloatField;
    Console0DebitSte9: TFloatField;
    Console0CreditSte9: TFloatField;
    Console0INTITUL: TStringField;
    Intitule: TADOTable;
    IntituleNumCpt: TStringField;
    IntituleIntitule: TStringField;
    Console1: TADOTable;
    Console1COMPTE: TStringField;
    Console1AUTRE: TStringField;
    Console2: TADOTable;
    Console2COMPTE: TStringField;
    Console2AUTRE: TStringField;
    Console3: TADOTable;
    Console3COMPTE: TStringField;
    Console3AUTRE: TStringField;
    Console4: TADOTable;
    Console4COMPTE: TStringField;
    Console4AUTRE: TStringField;
    Console5: TADOTable;
    Console5COMPTE: TStringField;
    Console5AUTRE: TStringField;
    Console6: TADOTable;
    Console6COMPTE: TStringField;
    Console6DEBIT: TFloatField;
    Console6CREDIT: TFloatField;
    Console6AUTRE: TStringField;
    Console7: TADOTable;
    Console7COMPTE: TStringField;
    Console7AUTRE: TStringField;
    Console8: TADOTable;
    Console8COMPTE: TStringField;
    Console8AUTRE: TStringField;
    Console9: TADOTable;
    Console9COMPTE: TStringField;
    Console9DEBIT: TFloatField;
    Console9CREDIT: TFloatField;
    Console9AUTRE: TStringField;
    Console10: TADOTable;
    Console10COMPTE: TStringField;
    Console10DEBIT: TFloatField;
    Console10CREDIT: TFloatField;
    Console10AUTRE: TStringField;
    DtImprBal: TADOTable;
    DtImprBalDATY: TStringField;
    DtImprBalAGENCE: TStringField;
    DtImprBalTYPA: TStringField;
    DtImprBalDONNEE: TStringField;
    DtImprBalDONNEE2: TStringField;
    Consolid: TADOTable;
    ConsolidCOMPTE: TStringField;
    ConsolidDEBIT1: TFloatField;
    ConsolidCREDIT1: TFloatField;
    ConsolidDEBIT2: TFloatField;
    ConsolidCREDIT2: TFloatField;
    ConsolidDEBIT3: TFloatField;
    ConsolidCREDIT3: TFloatField;
    ConsolidDEBIT4: TFloatField;
    ConsolidCREDIT4: TFloatField;
    ConsolidDEBIT5: TFloatField;
    ConsolidCREDIT5: TFloatField;
    ConsolidDEBIT6: TFloatField;
    ConsolidCREDIT6: TFloatField;
    ConsolidDEBIT7: TFloatField;
    ConsolidCREDIT7: TFloatField;
    ConsolidDEBIT8: TFloatField;
    ConsolidCREDIT8: TFloatField;
    ConsolidCREDIT9: TFloatField;
    ConsolidDEBIT10: TFloatField;
    ConsolidCREDIT10: TFloatField;
    ConsolidAUTRE: TStringField;
    ConsolidDEBIT9: TFloatField;
    ConsolidINTITULE: TStringField;
    DansAuxi: TADOTable;
    DansAuxiCompte: TStringField;
    DansAuxiIntitule: TStringField;
    CodeDecl: TADOTable;
    CodeDeclCODE: TStringField;
    CodeDeclLibelle: TStringField;
    Titre: TADOTable;
    TypePara: TADOTable;
    TypeParaNumero: TSmallintField;
    TypeParaDescription: TStringField;
    TypeParaUtilisation: TStringField;
    Consolid_prec: TADOTable;
    Consolid_precCOMPTE: TStringField;
    Consolid_precDEBIT1: TFloatField;
    Consolid_precCREDIT1: TFloatField;
    Consolid_precDEBIT2: TFloatField;
    Consolid_precCREDIT2: TFloatField;
    Consolid_precDEBIT3: TFloatField;
    Consolid_precCREDIT3: TFloatField;
    Consolid_precDEBIT4: TFloatField;
    Consolid_precCREDIT4: TFloatField;
    Consolid_precDEBIT5: TFloatField;
    Consolid_precCREDIT5: TFloatField;
    Consolid_precDEBIT6: TFloatField;
    Consolid_precCREDIT6: TFloatField;
    Consolid_precDEBIT7: TFloatField;
    Consolid_precCREDIT7: TFloatField;
    Consolid_precDEBIT8: TFloatField;
    Consolid_precCREDIT8: TFloatField;
    Consolid_precCREDIT9: TFloatField;
    Consolid_precDEBIT10: TFloatField;
    Consolid_precCREDIT10: TFloatField;
    Consolid_precDEBIT9: TFloatField;
    Consolid_precDEBIT_1: TFloatField;
    Consolid_precCREDIT_1: TFloatField;
    Consolid_precDebit: TFloatField;
    Consolid_precCredit: TFloatField;
    SouSouTi: TADOTable;
    UnionCp: TADOTable;
    SSTitre: TADOTable;
    ParaDecl: TADOTable;
    ParaDeclParametre: TStringField;
    ParaDeclRubrique: TStringField;
    ParaDeclCompteDe: TStringField;
    ParaDeclCompteA: TStringField;
    NonOuver: TADOTable;
    NonOuverCompte: TStringField;
    GroupCpt: TADOTable;
    TCloture: TADOTable;
    TClotureCOMPTE: TStringField;
    TClotureINTITUL: TStringField;
    ElementContrepartie: TWideStringField;
    ElementNbcontre: TSmallintField;
    ElementQte: TFloatField;
    ElementNumFact: TWideStringField;
    NumCpExonere: TSmallintField;
    NumCpIzy: TSmallintField;
    ArreteTransferer: TSmallintField;
    ArreteArreter: TSmallintField;
    ArreteDerNumCHQ: TIntegerField;
    NumFacRelanceFax: TSmallintField;
    ElementNumero: TIntegerField;
    NumCpts: TADOTable;
    NumCptd: TADOTable;
    JrFinRes: TADOTable;
    CJrFinRes: TADOTable;
    CEltFinRe: TADOTable;
    Table2: TADOTable;
    Table1: TADOTable;
    Verification: TADOTable;
    VerificationCOMPTE: TWideStringField;
    STypePara: TDataSource;
    TotConsolid: TADOTable;
    TotConsolidCompte: TWideStringField;
    TotConsolidTotDebit: TBCDField;
    TotConsolidTotCredit: TBCDField;
    TitreTypa: TSmallintField;
    TitreRang: TWideStringField;
    TitreNumero: TIntegerField;
    TitreIntitule: TWideStringField;
    TitreTotal: TFloatField;
    SSTitreTitre: TIntegerField;
    SSTitreRang: TWideStringField;
    SSTitreNumero: TIntegerField;
    SSTitreIntitule: TWideStringField;
    SSTitreTotal: TFloatField;
    SSTitreRubrique: TIntegerField;
    SSTitreExpr: TWideStringField;
    SouSouTiSouTitre: TIntegerField;
    SouSouTiRang: TWideStringField;
    SouSouTiNumero: TIntegerField;
    SouSouTiIntitule: TWideStringField;
    UnionCpSSTitre: TIntegerField;
    UnionCpRang: TWideStringField;
    UnionCpNumero: TIntegerField;
    UnionCpIntitule: TWideStringField;
    UnionCpTotal: TFloatField;
    GroupCptUnionCp: TIntegerField;
    GroupCptRang: TWideStringField;
    GroupCptDebutCpt: TWideStringField;
    GroupCptUtilisation: TSmallintField;
    GroupCptFinCompte: TWideStringField;
    GroupCptActifProd: TSmallintField;
    GroupCptAmDebut: TWideStringField;
    GroupCptAmFin: TWideStringField;
    GroupCptBrut: TFloatField;
    GroupCptAmPro: TFloatField;
    GroupCptNet: TFloatField;
    GroupCptProDebut: TWideStringField;
    GroupCptProFin: TWideStringField;
    GroupCptSldInit: TFloatField;
    GroupCptTypSomme: TSmallintField;
    GroupCptTotal: TFloatField;
    GroupCptIntitGroup: TWideStringField;
    GroupCptLeDetail: TSmallintField;
    GroupCptNumero: TAutoIncField;
    Journaux: TADOQuery;
    JournauxCode: TWideStringField;
    JournauxIntitule: TWideStringField;
    JournauxTyp: TSmallintField;
    JournauxCompte: TWideStringField;
    T_TypeJrnx: TADOTable;
    JournauxTypJrnx: TStringField;
    NonBalance: TADOTable;
    NonBalanceJournal: TWideStringField;
    NonBalanceDifference: TBCDField;
    T_EquivPCG: TADOTable;
    TVADescription: TADOTable;
    TVADescriptionRang: TIntegerField;
    TVADescriptionDescription: TWideStringField;
    CodyTVA: TADOTable;
    C_AutreSte: TADOConnection;
    ANouveau: TADOQuery;
    ANouveauCompte: TWideStringField;
    ANouveauSolde: TBCDField;
    ANouveauFacture: TWideStringField;
    ANouveauLibel: TWideStringField;
    ANouveauIntitule: TWideStringField;
    ANouveauEquiv2005: TStringField;
    ANouveauNCpt2005: TStringField;
    ANouveauIntut2005: TStringField;
    BalConsolide: TADOTable;
    RecupBalSte: TADOQuery;
    TParametr: TADOQuery;
    TParametrNumero: TIntegerField;
    TParametrLibelle: TWideStringField;
    TParametrDescription: TWideStringField;
    TParametrTypCalcul: TWideStringField;
    TParametrRubrique: TWideStringField;
    TParametrCompteA: TWideStringField;
    TParametrCompteDe: TWideStringField;
    TParametrOperation: TWideStringField;
    TParametrImpoCompte: TWideStringField;
    TParametrImpoTiers: TWideStringField;
    TParametrValeur: TBCDField;
    TParametrTiers: TWideStringField;
    TParametrSens: TWideStringField;
    TParametrStValeur: TStringField;
    TParametrConstante: TBCDField;
    OperationTVA: TADOTable;
    Elementizy: TStringField;
    EltSuiviizy: TStringField;
    NumCptotalisateur: TStringField;
    RJournaltransferer: TStringField;
    ANNEXESunion_: TFloatField;
    EltResummontant: TIntegerField;
    GroupCptajouter: TSmallintField;
    GroupCptaffichdet: TSmallintField;
    GroupCptef: TSmallintField;
    GroupCptchiffres5: TSmallintField;
    GroupCptzerosivide: TSmallintField;
    TVADescriptioncodeadm: TIntegerField;
    Journalcode: TWideStringField;
    Journalperiode: TWideStringField;
    Journaljour: TSmallintField;
    Journalcodejrnx: TWideStringField;
    Journaltransferer: TStringField;
    Journaltiers: TWideStringField;
    Journaldeclarer: TIntegerField;
    Journalnumchq: TWideStringField;
    Journaldateesc: TDateField;
    Journaldatesaisie: TDateField;
    Journala1: TWideStringField;
    Journala2: TWideStringField;
    Journala3: TWideStringField;
    Journala4: TWideStringField;
    Journala5: TWideStringField;
    Journala6: TWideStringField;
    ToutEltJrnnumero: TIntegerField;
    ToutEltJrnjournal: TWideStringField;
    ToutEltJrndebit: TWideStringField;
    ToutEltJrncompte: TWideStringField;
    ToutEltJrnizy: TStringField;
    ToutEltJrnlibelle: TWideStringField;
    ToutEltJrncontrepartie: TWideStringField;
    ToutEltJrnnbcontre: TSmallintField;
    ToutEltJrnqte: TFloatField;
    ToutEltJrndatefact: TDateField;
    ToutEltJrnnumfact: TWideStringField;
    ToutEltJrncolis: TFloatField;
    ToutEltJrntypx: TWideStringField;
    ToutEltJrnsigletaxe: TWideStringField;
    JournalDateFact: TDateField;
    numadres: TADOTable;
    Titredetailt: TSmallintField;
    Titreannexe: TSmallintField;
    Titreef: TSmallintField;
    Titresaut: TSmallintField;
    Declproduit: TWideStringField;
    SSTitredetail: TSmallintField;
    SSTitreannexe: TSmallintField;
    SSTitreef: TSmallintField;
    SSTitresaut: TSmallintField;
    SouSouTief: TSmallintField;
    SouSouTisaut: TSmallintField;
    SouSouTidetail: TSmallintField;
    SouSouTiannexe: TSmallintField;
    UnionCpef: TSmallintField;
    UnionCpannexe: TSmallintField;
    UnionCpdecidergroupe: TSmallintField;
    TParametrnotperiode: TStringField;
    TParametrenpourc: TStringField;
    TParametrpositifseul: TStringField;
    TParametrnegatifseul: TStringField;
    TParametrnonafficher: TStringField;
    TParametrdesactiver: TStringField;
    JournauxIntituleCpt: TWideStringField;
    code_analytique: TADOTable;
    s_code_analytique: TDataSource;
    param_server: TADOTable;
    s_param_server: TDataSource;
    param_serverip: TWideStringField;
    param_serverport: TWideStringField;
    param_servermdp: TWideStringField;
    table_vue: TADOTable;
    table_vuenom: TWideStringField;
    table_vuetypa: TWideStringField;
    table_vuesql_vue: TWideStringField;
    table_vuetable_ext: TWideStringField;
    table_vuebdd_ext: TWideStringField;
    table_vuenom_pg: TWideStringField;
    etat_jrn: TADOTable;
    etat_jrnjrnx: TWideStringField;
    etat_jrnnumero: TWideStringField;
    etat_jrndaty: TDateField;
    etat_jrncompte: TWideStringField;
    etat_jrncontre: TWideStringField;
    etat_jrnlibellle: TWideStringField;
    etat_jrnfacture: TWideStringField;
    etat_jrndebit: TLargeintField;
    etat_jrncredit: TLargeintField;
    ANouveau2: TADOQuery;
    ANouveau2compte: TWideStringField;
    ANouveau2detail: TWideStringField;
    ANouveau2solde: TFloatField;
    ANouveau2facture: TWideStringField;
    ANouveau2libel: TWideStringField;
    ANouveau2intitule: TWideStringField;
    ToutEltJrnmontant: TLargeintField;
    TCloturedebit: TLargeintField;
    TCloturecredit: TLargeintField;
    Elementmontant: TLargeintField;
    EltSuivimontant: TLargeintField;
    PrepConsdebit: TLargeintField;
    PrepConscredit: TLargeintField;
    PrepConsdebitav: TLargeintField;
    PrepConscreditav: TLargeintField;
    PrepConsdebitper: TLargeintField;
    PrepConscreditper: TLargeintField;
    PrepConsautre: TWideStringField;
    GranLivrdebit: TLargeintField;
    GranLivrcredit: TLargeintField;
    Console1debit: TLargeintField;
    Console1credit: TLargeintField;
    Console2debit: TLargeintField;
    Console2credit: TLargeintField;
    Console3debit: TFloatField;
    Console3credit: TFloatField;
    Console4debit: TFloatField;
    Console4credit: TFloatField;
    Console5debit: TFloatField;
    Console5credit: TFloatField;
    Console7debit: TFloatField;
    Console7credit: TFloatField;
    Console8debit: TFloatField;
    Console8credit: TFloatField;
    procedure Journaux1CalcFields(DataSet: TDataSet);
    procedure SpecialCreate(Sender: TObject);
    procedure Console0CalcFields(DataSet: TDataSet);
    procedure Consolid_precCalcFields(DataSet: TDataSet);
    procedure JournauxCalcFields(DataSet: TDataSet);
    procedure ANouveauCalcFields(DataSet: TDataSet);
    procedure TParametrCalcFields(DataSet: TDataSet);
    procedure TParametrAfterPost(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    MettreNumeroDouane:boolean;
    Incre:Longint;
    lettre:array[0..25] of string[1];
    stmois:array[1..12]of string[20];
    procedure ChangeChemin(ip,chemin:string);
    procedure ChangeChemin_1(const chemin:string);
    procedure ChangeCheminAutreSte(const chemin:string);
    procedure OuvreSociete;
    function  EquivIndex(lettree:string):longint;
    function  EquivLettre(Index:longint):string;
    function  InAuxiliaire(compte:string):string;
    function  OuvreInfoImpression(daty,agence,typa,donnee,donnee2:string):boolean;
    function  DansDeclare(compte:string):string;
    function  IsAuxiliaire(sscompte:string;tout:boolean;var auxi:string):boolean;
  end;

const
  JR_ACHAT=0;
  JR_VENTE=1;
  JR_TRESOR=2;
  JR_DIVERS=3;
  JR_ANOUVEAUX=4;
  JR_LOGICIEL=5;

var
  Special: TSpecial;

implementation

uses DaCommun, USQL, UConnect, TypeElmt;

{$R *.DFM}

procedure TSpecial.ChangeCheminAutreSte(const chemin:string);
begin
  C_AutreSte.close;
  C_AutreSte.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;Data Source=O_AutreSte;Extended Properties="DSN=O_AutreSte;DBQ='+
                               chemin+
                               ';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;"';
  C_AutreSte.open;

end;


procedure TSpecial.ChangeChemin(ip,chemin:string);
begin
  DaConnect.ChangeCheminConnection(DaConnect.C_Document,ip,chemin);
  ToutEltJrn.close;             ToutEltJrn.Connection:=DaConnect.C_Document;
  Journal.close;                Journal.Connection:=DaConnect.C_Document;
  EltJrn.close;                 EltJrn.Connection:=DaConnect.C_Document;
  RJournal.close;               RJournal.Connection:=DaConnect.C_Document;
  Element.close;                Element.Connection:=DaConnect.C_Document;
  Regleme.close;                Regleme.Connection:=DaConnect.C_Document;
  Guidabon.close;               Guidabon.Connection:=DaConnect.C_Document;
  Lettrage.close;               Lettrage.Connection:=DaConnect.C_Document;
  EltSuivi.close;               EltSuivi.Connection:=DaConnect.C_Document;
  Arrete.close;                 Arrete.Connection:=DaConnect.C_Document;
  PrepCons.close;               PrepCons.Connection:=DaConnect.C_Document;
  DecAchat.close;               DecAchat.Connection:=DaConnect.C_Document;
  Decl.close;                   Decl.Connection:=DaConnect.C_Document;
  ANNEXES.Close;                ANNEXES.Connection:=DaConnect.C_Document;
  EditDecl.Close;               EditDecl.Connection:=DaConnect.C_Document;
  EltBySel.Close;               EltBySel.Connection:=DaConnect.C_Document;
  GranLivr.Close;               GranLivr.Connection:=DaConnect.C_Document;
  JrResum.Close;                JrResum.Connection:=DaConnect.C_Document;
  EltResum.Close;               EltResum.Connection:=DaConnect.C_Document;
  JrFinRe.Close;                JrFinRe.Connection:=DaConnect.C_Document;
  EltFinRe.Close;               EltFinRe.Connection:=DaConnect.C_Document;
  BalAnn_1.Close;               BalAnn_1.Connection:=DaConnect.C_Document;
  TANNEXTVA.Close;              TANNEXTVA.Connection:=DaConnect.C_Document;
  TInitCha.Close;               TInitCha.Connection:=DaConnect.C_Document;

  NumCp.close;                  NumCp.Connection:=DaConnect.C_Document;
  TNumDiver.close;              TNumDiver.Connection:=DaConnect.C_Document;
  TNumAdres.close;              TNumAdres.Connection:=DaConnect.C_Document;
  Consolid.close;               Consolid.Connection:=DaConnect.C_Document;
  BilanAct.Close;               BilanAct.Connection:=DaConnect.C_Document;
  //DtImprBal.Close;              DtImprBal.Connection:=DaConnect.C_Document;
  TotConsolid.Close;            TotConsolid.Connection:=DaConnect.C_Document;
  ANouveau.Close;               ANouveau.Connection:=DaConnect.C_Document;
  //TParametr.Close;              TParametr.Connection:=DaConnect.C_Document;
  NonBalance.Close;             NonBalance.Connection:=DaConnect.C_Document;
end;

function TSpecial.InAuxiliaire(compte:string):string;
var hita:boolean;
 DA:string;
begin
  hita:=false;
  DansAuxi.Open;
  DansAuxi.FIRST;
  while not DansAuxi.EOF do
  begin
    DA:=EnleveBlancDroite(DansAuxiCompte.Value);
    if (copy(Compte,1,length(DA))=DA)then
    begin
      hita:=true;
      break;
    end;
    DansAuxi.Next;
  end;
  if hita then
    Result:=DansAuxiCompte.Value
  else Result:='';
end;

function TSpecial.OuvreInfoImpression(daty,agence,typa,donnee,donnee2:string):boolean;
var hita,IsDaty,IsAgence,IsTypa,IsDonnee,IsDonnee2:boolean;
begin
  hita:=false;
  DtImprBal.open;
  DtImprBal.first;
  while not DtImprBal.EOF do
  begin
    IsDaty   := (((EnleveBlancDroite(DtImprBalDaty.Value)=EnleveBlancDroite(daty))and(daty<>''))or (daty=''));
    IsAgence := (((EnleveBlancDroite(DtImprBalAgence.Value)=EnleveBlancDroite(agence))and(agence<>''))or (agence=''));
    IsTypa   := (((EnleveBlancDroite(DtImprBalTypa.Value)=EnleveBlancDroite(typa))and(typa<>''))or (typa=''));
    IsDonnee := (((EnleveBlancDroite(DtImprBalDonnee.Value)=EnleveBlancDroite(donnee))and(donnee<>''))or (donnee=''));
    IsDonnee2:= (((EnleveBlancDroite(DtImprBalDonnee2.Value)=EnleveBlancDroite(donnee2)+'Z')and(donnee2<>''))or (donnee2=''));

    if IsDaty and IsAgence and IsTypa and IsDonnee and IsDonnee2 then
    begin
      hita:=true;
      break;
    end;
    DtImprBal.Next;
  end;
  Result:=hita;
end;


function TSpecial.DansDeclare(compte:string):string;
var declar:string;
begin
  Result:='';
  ParaDecl.Open;
  ParaDecl.FIRST;
  while not ParaDecl.EOF do
  begin
    if (EnleveBlancDroite(ParaDeclCompteDe.Value)<=Compte)and
       (Compte<=EnleveBlancDroite(ParaDeclCompteA.Value)+'Z')then
    begin
      declar:=ParaDeclParametre.Value;
      if (declar='PRESTATION')or(declar='VENTE')or(declar='ACHAT')or(declar='TVA') then
      begin
        Result:=declar;
        break;
      end;
    end;
    ParaDecl.Next;
  end;
end;

function TSpecial.IsAuxiliaire(sscompte:string;tout:boolean;var auxi:string):boolean;
var hita:boolean;
 DA:string;
begin
  auxi:='';
  hita:=false;
  DansAuxi.Open;
  DansAuxi.first;
  while not DansAuxi.EOF do
  begin
    DA:= EnleveBlancDroite(DansAuxiCompte.Value);
    if ((DA=sscompte) and tout)or
      (((DA=copy(sscompte,1,length(DA))) and(not tout)))then
    begin
      Auxi:=DA;
      hita:=true;
      break;
    end;
    DansAuxi.Next;
  end;
  Result:=hita;
end;

procedure TSpecial.JournauxCalcFields(DataSet: TDataSet);
begin
  case  JournauxTyp.Value of
    0:JournauxTypJrnx.Value:='Achat';
    1:JournauxTypJrnx.Value:='Vente';
    2:JournauxTypJrnx.Value:='Trésorerie';
    3:JournauxTypJrnx.Value:='Divers';
    4:JournauxTypJrnx.Value:='A-Nouveau';
    5:JournauxTypJrnx.Value:='LOGICIEL';
  end;
end;

procedure TSpecial.ChangeChemin_1(const chemin:string);
var ConnecStr:string;
begin
  ConnecStr:='Provider=MSDASQL.1;';
  ConnecStr:=ConnecStr+'Persist Security Info=False;';
  ConnecStr:=ConnecStr+'Data Source='+Chemin;
  DaConnect.C_Document_1.close;
  DaConnect.C_Document_1.connectionString:=ConnecStr;
  DaConnect.C_Document_1.Open;
end;

procedure TSpecial.OuvreSociete;
begin
  {NumDiver.open;}
end;


function TSpecial.EquivIndex(lettree:string):longint;
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

function TSpecial.EquivLettre(Index:longint):string;
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


procedure TSpecial.Journaux1CalcFields(DataSet: TDataSet);
begin
  case  JournauxTyp.Value of
    0:JournauxTypJrnx.Value:='Achat';
    1:JournauxTypJrnx.Value:='Vente';
    2:JournauxTypJrnx.Value:='Trésorerie';
    3:JournauxTypJrnx.Value:='Divers';
    4:JournauxTypJrnx.Value:='A-Nouveau';
    5:JournauxTypJrnx.Value:='LOGICIEL';
  end;
end;

procedure TSpecial.SpecialCreate(Sender: TObject);
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
  MettreNumeroDouane:=false;
end;

procedure TSpecial.Console0CalcFields(DataSet: TDataSet);
begin
  Console0TotDebit.Value:=Console0DebitSte1.Value+
                          Console0DebitSte2.Value+
                          Console0DebitSte3.Value+
                          Console0DebitSte4.Value+
                          Console0DebitSte5.Value+
                          Console0DebitSte6.Value+
                          Console0DebitSte7.Value+
                          Console0DebitSte8.Value+
                          Console0DebitSte9.Value+
                          Console0DebitSte10.Value;
  Console0TotCredit.Value:=Console0CreditSte1.Value+
                           Console0CreditSte2.Value+
                           Console0CreditSte3.Value+
                           Console0CreditSte4.Value+
                           Console0CreditSte5.Value+
                           Console0CreditSte6.Value+
                           Console0CreditSte7.Value+
                           Console0CreditSte8.Value+
                           Console0CreditSte9.Value+
                           Console0CreditSte10.Value;
end;

procedure TSpecial.Consolid_precCalcFields(DataSet: TDataSet);
var totdeb,totcred:real;
begin
  DASQL.SelectParam('CONSOLID','NONCOMPENS');
  totdeb :=Consolid_precDebit1.Value +
              Consolid_precDebit2.Value +
              Consolid_precDebit3.Value +
              Consolid_precDebit4.Value +
              Consolid_precDebit5.Value +
              Consolid_precDebit6.Value +
              Consolid_precDebit7.Value ;
  totCred:=Consolid_precCredit1.Value +
              Consolid_precCredit2.Value +
              Consolid_precCredit3.Value +
              Consolid_precCredit4.Value +
              Consolid_precCredit5.Value +
              Consolid_precCredit6.Value +
              Consolid_precCredit7.Value ;

  if not DASQL.DansParam(Consolid_preccompte.Value)then
  begin
    if totdeb>totCred then
    begin
      totdeb:= totdeb - totcred;
      totcred:=0;
    end
    else
    begin
      totcred:=totcred - totdeb;
      totDeb:=0;
    end;
  end;
  Consolid_precDebit.value:=totdeb;
  Consolid_precCredit.value:=totcred;

end;

procedure TSpecial.ANouveauCalcFields(DataSet: TDataSet);
begin
//  if ANouveauEquiv2005.Value>'0' then
//    ANouveauNCpt2005.Value :=ANouveauEquiv2005.Value
//  else
//    ANouveauNCpt2005.Value :=ANouveauCompte.Value;
end;

procedure TSpecial.TParametrCalcFields(DataSet: TDataSet);
begin
  if TParametrEnPourc.Value<>'0' then
    TParametrStValeur.Value:=FormatFloat('0.00',TParametrValeur.Value*100)+'%'
  else
    TParametrStValeur.Value:=FormatFloat('#,##0',TParametrValeur.Value);
end;

procedure TSpecial.TParametrAfterPost(DataSet: TDataSet);
begin
  //TParametr.Requery;
end;

end.
