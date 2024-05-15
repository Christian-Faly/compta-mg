program PCompta;

uses
  Forms,
  Dialogs,
  VenteMse in 'VenteMse.pas' {FVenteMse},
  AnnexTVA in 'AnnexTVA.pas' {FAnnexTVA},
  EtatCourant_U in 'EtatCourant_U.pas' {FEtatCourant},
  BalAnn_1 in 'BalAnn_1.pas' {FBalAnn_1},
  BalConsolidee_U in 'BalConsolidee_U.pas' {FBalConsolidee},
  Console in 'Console.pas' {FConsolidation},
  Couvert in 'Couvert.pas' {FCouvert},
  DaCommun in 'DaCommun.pas' {Commun: TDataModule},
  USQL in 'USQL.pas' {DASQL: TDataModule},
  devise_U in 'devise_U.PAS' {FDevise},
  EditConsol in 'EditConsol.pas' {FEditConsol},
  EtaAnnex in 'EtaAnnex.pas' {FEtaAnnex},
  EtaBilanActif in 'EtaBilanActif.pas' {FEtaBilanActif},
  EtaEFAut in 'EtaEFAut.pas' {FEtaEFAut},
  EtaFinan in 'EtaFinan.pas' {FEtatFinan},
  EtaOutil in 'EtaOutil.pas' {FEtaOutil},
  EtaPerst in 'EtaPerst.pas' {FEtatPrest},
  EtatAPL in 'EtatAPL.pas' {FEtatAPL},
  EtatConsole in 'EtatConsole.pas' {FEtatConsole},
  Gestdev in 'GESTDEV.PAS' {FGestDevise},
  GranLivr in 'GranLivr.pas' {FGrandLivr},
  Groupe in 'Groupe.pas' {FGroupe},
  Guidabon in 'Guidabon.pas' {FGuidAbon},
  Importat in 'Importat.pas' {FImportat},
  ImprCons6 in 'ImprCons6.pas' {FImprCons6},
  InitCharge in 'InitCharge.pas' {FInitCha},
  Journal in 'journal.pas' {FJournal},
  Journaux_U in 'Journaux_U.pas' {FJournaux},
  LstAuxi in 'LstAuxi.pas' {FLstAuxi},
  LstTitre in 'LstTitre.pas' {FLstTitre},
  MateTier in 'MateTier.pas' {Form2},
  Operatio in 'OPERATIO.PAS' {Form18},
  OuvEtat in 'OuvEtat.pas' {FOuvEtat},
  Principale_U in 'Principale_U.pas' {FPrincipale},
  Recup in 'Recup.pas' {FSauvegarde},
  RepoDecl in 'RepoDecl.pas' {FRepoDecl},
  Restorer in 'Restorer.pas' {FRestore},
  Saisitxt in 'Saisitxt.pas' {FSaisieTxt},
  SelPerio in 'SelPerio.pas' {FSelPerio},
  Taxe in 'Taxe.pas' {FLstTaxe},
  tradu in 'TRADU.PAS' {FTraduction},
  Daspecia in 'Daspecia.pas' {Special: TDataModule},
  UConnect in 'UConnect.pas' {DaConnect: TDataModule},
  UMoteur in 'UMoteur.pas' {Moteur: TDataModule},
  UPStocke in 'UPStocke.pas' {PStockee: TDataModule},
  UConvertMonnaie in 'UConvertMonnaie.pas' {FConvertMonnaie},
  URembTVA in 'URembTVA.pas' {FRembTVA},
  UEtaRembTVA in 'UEtaRembTVA.pas' {FEtaRemTVA},
  UAide in 'UAide.pas' {FAide},
  UEtSaisie in 'UEtSaisie.pas' {FEtSaisie},
  UTVADescrip in 'UTVADescrip.pas' {FTVADescript},
  ColCons in 'ColCons.pas' {FBalCoP1},
  ImprCons in 'ImprCons.pas' {FBalCoP2},
  UdaConsolide in 'UdaConsolide.pas' {DaConsolide: TDataModule},
  declare in 'DECLARE.PAS' {FDeclare},
  UParametr in 'UParametr.pas' {FParametr},
  UEtNvTVA in 'UEtNvTVA.pas' {FEtNvTVA},
  EtaTaxe in 'EtaTaxe.pas' {FEtatTaxe},
  CanevaDCOMM_U in 'CanevaDCOMM_U.pas' {FCanevaDCOMM},
  Ecriture_U in 'Ecriture_U.pas' {FEcriture},
  Impot_Synth_U in 'Impot_Synth_U.pas' {FImpotSynth},
  AnneeDeclare_U in 'AnneeDeclare_U.pas' {FAnneeDeclare},
  CodeAnalytique_U in 'CodeAnalytique_U.pas' {FCodeAnalytique},
  EtatDeclare_U in 'EtatDeclare_U.pas' {FEtatDeclare},
  TVAExcel_U in 'TVAExcel_U.pas' {FTVAExcel},
  DaDeclVao_U in 'DaDeclVao_U.pas' {DaDeclVao: TDataModule},
  VueConsolide_U in 'VueConsolide_U.pas' {FVueConsolide},
  EtatBalance_U in 'EtatBalance_U.pas' {FEtatBalance},
  UDaUtilisat in '..\source_dll\Utilisateur\UDaUtilisat.pas' {DaUtilisat: TDataModule},
  ImpUtilisat in '..\source_dll\Utilisateur\ImpUtilisat.pas',
  ImporDoc in '..\source_dll\MultiSoc\ImporDoc.pas',
  informat in '..\source_dll\Commun\INFORMAT.PAS' {FInformat},
  TypeElmt in '..\source_dll\Commun\TypeElmt.pas',
  ImpPlan in '..\source_dll\PlanCpta\ImpPlan.pas',
  ImpLettr in '..\source_dll\Lettrage\ImpLettr.pas',
  ImporAna in '..\source_dll\Analyt\ImporAna.pas',
  ImporIm in '..\source_dll\Immo\ImporIm.pas',
  ImpMAJ1 in '..\source_dll\MAJ\ImpMAJ1.pas';

{$R *.res}

begin
  //SplashForm := TSplashForm.Create(Application);
  //SplashForm.Asehoy('Chargement de compta ....','Compta-Gé','GasySoftWare','SCIM','c:\CSC\Log\Image\rirebmp.bmp','');
  //SplashForm.Update;
  Application.Initialize;
  showMessage('1');
  Application.CreateForm(TDaConnect, DaConnect);
  showMessage('2');
  Application.CreateForm(TCommun, Commun);
  showMessage('3');
  Application.CreateForm(TSpecial, Special);
  showMessage('4');
  Application.CreateForm(TDASQL, DASQL);
  showMessage('5');
  Application.CreateForm(TPStockee, PStockee);
  showMessage('6');
  Application.CreateForm(TMoteur, Moteur);
  showMessage('7');
  Application.CreateForm(TDaDeclVao, DaDeclVao);
  showMessage('8');
  Application.CreateForm(TDaConsolide, DaConsolide);
  showMessage('9');
  Application.CreateForm(TFPrincipale, FPrincipale);
  showMessage('10');
  Application.CreateForm(TDaUtilisat, DaUtilisat);
  showMessage('11');
  Application.CreateForm(TFInformat, FInformat);
  FCanevaDCOMM := nil;
  FEcriture := nil;
  Application.Run;
end.
