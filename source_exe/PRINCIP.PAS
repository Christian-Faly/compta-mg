unit Princip;

interface

uses   SysUtils, ADODB, DBTables, Dialogs, DB, Menus, Classes, Controls,
   ExtCtrls, forms, StdCtrls, ComCtrls, ToolWin, Buttons, Grids, DBGrids;

type
  TFPrincip = class(TForm)
    MainMenu1 : TMainMenu;
    Fentre1 : TMenuItem;
    Fermer1 : TMenuItem;
    Quitter2 : TMenuItem;
    Aproposde1 : TMenuItem;
    Fenetre1 : TMenuItem;
    Fermer2 : TMenuItem;
    Documents1 : TMenuItem;
    Nouveau1 : TMenuItem;
    Ouvrir1 : TMenuItem;
    N1: TMenuItem;
    Utilisateur1: TMenuItem;
    Configurationdelipression1: TMenuItem;
    Maintenance1: TMenuItem;
    N7: TMenuItem;
    FermerSocit1: TMenuItem;
    N5: TMenuItem;
    Paramtrage1: TMenuItem;
    Devise1: TMenuItem;
    N10: TMenuItem;
    Taxe1: TMenuItem;
    Taxe2: TMenuItem;
    TauxTaxe1: TMenuItem;
    Devise2: TMenuItem;
    Cours1: TMenuItem;
    Listedesutilisateurs1: TMenuItem;
    Changerdelutilisateur1: TMenuItem;
    Changerdemotpasse1: TMenuItem;
    Consolidation1: TMenuItem;
    N6: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Consolidation2: TMenuItem;
    Plan1: TMenuItem;
    Insereravec1: TMenuItem;
    Consultation1: TMenuItem;
    OpenDialog1: TOpenDialog;
    PlanSte: TTable;
    PlanSteNumCpt: TStringField;
    PlanSteIntitule: TStringField;
    Auxiliaire1: TMenuItem;
    BilanRsultat1: TMenuItem;
    Query1: TQuery;
    Ville1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    ADOQuery1: TADOQuery;
    CoolBar1: TCoolBar;
    ToolBar2: TToolBar;
    TBNouveau: TToolButton;
    TBLsteDoc: TToolButton;
    TBConsolidation: TToolButton;
    TBUtilisateur: TToolButton;
    ComboOuvrir: TComboBox;
    sqdqsdqsdqs1: TMenuItem;
    test1: TMenuItem;
    procedure Quitter1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Imprimer1Click(Sender: TObject);
    procedure Quitter2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Nouveau1Click(Sender: TObject);
    procedure Ouvrir1Click(Sender: TObject);
    procedure Devise2Click(Sender: TObject);
    procedure Cours1Click(Sender: TObject);
    procedure ConditionBancaire1Click(Sender: TObject);
    procedure FermerSocit1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Maintenance1Click(Sender: TObject);
    procedure Changerdelutilisateur1Click(Sender: TObject);
    procedure Changerdemotpasse1Click(Sender: TObject);
    procedure Listedesutilisateurs1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Consolidation1Click(Sender: TObject);
    procedure Configurationdelipression1Click(Sender: TObject);
    procedure Consultation1Click(Sender: TObject);
    procedure Insereravec1Click(Sender: TObject);
    procedure Auxiliaire1Click(Sender: TObject);
    procedure BilanRsultat1Click(Sender: TObject);
    procedure Taxe2Click(Sender: TObject);
    procedure Ville1Click(Sender: TObject);
    procedure ComboOuvrirChange(Sender: TObject);
    procedure sqdqsdqsdqs1Click(Sender: TObject);
    procedure test1Click(Sender: TObject);
  private
    { Private-déclarations }
    annulation:boolean;
    procedure SelectSociete(chemin:string);
    procedure ListerFichier;
    procedure MiseAJour_Report;
    procedure OuvrirExercice;
  public
    { Public-déclarations }

  end;

var FPrincip: TFPrincip;

implementation

uses DaCommun, Daspecia, PARASY, DEVISE, OPERATIO,  Console, LstAuxi,
  Groupe, Taxe, ImpLettr, ImporDoc, TypeElmt, ImpPlan, ImporAna, ImpMAJ1,
  USQL, UPStocke, UConnect, ImpUtilisat, UDaUtilisat;

{$R *.DFM}

procedure TFPrincip.SelectSociete(chemin:string);
begin
  //showMessage('4:'+chemin);
  Commun.Societe.Open;
  Commun.Societe.Requery;
  Commun.Societe.first;
  while not commun.Societe.eof do
  begin
    //showMessage('Comparer=>'+EnleveBlancdROITE(commun.SocieteChemin.Value)+'='+chemin);
    if EnleveBlancDroite(commun.SocieteChemin.Value)=EnleveBlancDroite(chemin) then
    begin
      //showMessage('hita=>'+EnleveBlancDroite(commun.SocieteChemin.Value)+'='+chemin+'==>Oui');
      break;
    end;
    Commun.Societe.Next;
  end;
  Commun.Adresse.close;
  Commun.Adresse.parameters[0].Value:=commun.SocieteCode.Value;
  Commun.Adresse.open;
  Commun.Interloc.close;
  Commun.Interloc.parameters[0].Value:=commun.SocieteCode.Value;
  Commun.Interloc.open;
end;

procedure TFPrincip.ListerFichier;
  procedure Inserer(ndf,chemin,desc:string);
  begin
    commun.LstFichier.Insert;
    commun.LstFichierNdf.Value:=ndf;
    commun.LstFichierOrigine.Value:=chemin;
    commun.LstFichierDescriptio.Value:=desc;
    commun.LstFichier.Post;
  end;
begin
  //if not J then close;
  commun.LstFichier.Open;
  //showMessage('eto');
  PStockee.supprimerTout('Sociéte','LstFichier');
  //Inserer('ACopier.mdb','\\Serveur\Data\Compta','Copie');
end;

procedure TFPrincip.Quitter1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincip.Fermer1Click(Sender: TObject);
begin
  if ActiveMDIChild <> nil then ActiveMDIChild.Close;
end;

procedure TFPrincip.Imprimer1Click(Sender: TObject);
begin
  if ActiveMDIChild <> nil then ActiveMDIChild.Print;
end;

procedure TFPrincip.Quitter2Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous  vraiement quitter le logiciel Compta',
     mtConfirmation,[mbYes, mbNo],0)=mrYes then  Close;
end;

procedure TFPrincip.FormCreate(Sender: TObject);
begin
  Documents1.Visible:=true;
end;

procedure TFPrincip.Nouveau1Click(Sender: TObject);
begin
  AsehoySociete(0,'LstCmpta','Compta','','');
  Commun.Tempon.requery;
  chem:=Commun.TemponString2.Value;
  //showMessage('3:'+Chem);
  if length(chem)>0 then
  begin
    Documents1.Visible:=false;
    Paramtrage1.visible:=false;
    DASQL.ChangeChemin(chem);
    Special.ChangeChemin(chem);
    PStockee.ChangeChemin(chem);
    Form40.WindowState:=wsMaximized;
    ListerFichier;
    SelectSociete(chem);
    Form40.Init;
    Caption:='Compta - Société:'+Commun.SocieteCode.Value+' '+Commun.SocieteRS.Value+
             '  Utilisateur :'+util;
    CoolBar1.Visible := False;
  end;
  Commun.AjouterEntrer(util,Commun.SocieteCode.Value);
end;

procedure TFPrincip.Ouvrir1Click(Sender: TObject);
begin
  OuvrirExercice
end;

procedure TFPrincip.OuvrirExercice;
var dt:TDate;
  taona,volana,andro:word;
  filtre:string;
begin
  PStockee.qGrillerDec.Close;
  PStockee.qGrillerDec.Parameters[0].Value:=Commun.SocieteCode.Value;
  PStockee.qGrillerDec.Open;
  if PStockee.qGrillerDec.Eof then
    Form40.GrillerSiModifSaisie(Commun.SocieteCode.Value,false)
  else
  begin
    Form40.Produitslocaux1.enabled:=PStockee.qGrillerDecGriller.Value;
    Form40.MarchandisevendueMadagascar1.enabled:=PStockee.qGrillerDecGriller.Value;
    Form40.Prestationdeservice1.enabled:=PStockee.qGrillerDecGriller.Value;
    Form40.Nouvelledclaration1.enabled:=PStockee.qGrillerDecGriller.Value;
    Form40.BordereauderemboursementTVA1.enabled:=PStockee.qGrillerDecGriller.Value;
  end;
  //if not EstCePeutEntrer(util,EnleverLettre(Ouvrir1.Caption,'&'),true) then
    //exit;
  dt:=Date;
  DecodeDate(dt,taona,volana,andro);
  if volana>6 then
    filtre:=FormatFloat('00',taona-2000)+FormatFloat('00',taona+1-2000)
  else
    filtre:=FormatFloat('00',taona-2000)+FormatFloat('00',taona-1-2000);
  AsehoySociete(1,'LstCmpta','Compta','',Filtre);
  Commun.Societe.Requery;
  Commun.Tempon.requery;
  chem:=Commun.TemponString2.Value;
  if length(chem)>0 then
  begin
    Special.ChangeChemin(chem);
    DASQL.ChangeChemin(chem);
    PStockee.ChangeChemin(chem);
    SelectSociete(chem);
    try
      DaConnect.ChangeCheminConnection(DaConnect.C_Document_1,Commun.SocieteCheminPrec.Value);
    except
       On EDataBaseError do
         showMessage('Verifiez le chemin vers le dossier précédent');
    end;
    //if not EstCePeutEntrer(Util,Commun.SocieteCode.Value,true) then exit;
    Documents1.Visible:=false;
    Paramtrage1.visible:=false;
    Form40.WindowState:=wsMaximized;
    Form40.Init;
    Caption:='Compta - Société:'+EnleveBlancDroite(Commun.SocieteCode.Value)+' '+
             enleveblancDroite(Commun.SocieteRS.Value)+'('+enleveblancDroite(Commun.SocieteMonnaie.Value)+')'+
             '  Utilisateur :'+enleveblancDroite(util);
    if Commun.SocieteSiege.Value then
    begin
      Commun.Consolide.open;
      Commun.SelSociete1.Close;
      Commun.SelSociete1.sql.clear;
      Commun.SelSociete1.parameters.Clear;
      Commun.SelSociete1.sql.Add('select * from societe b');
      Commun.SelSociete1.sql.Add('where b.code=:a');
      Commun.SelSociete1.Parameters[0].Value:=Commun.SocieteCode.Value;
      Commun.SelSociete1.open;
    end;
    CoolBar1.Visible := False;
  end;
  if DaSQL.IsCloturee then
  begin
     showmessage('Exercice Cloturée');
     //Form40.Image12.visible:=False;
     //Form40.Image3.visible:=False;
     //Form40.Image9.visible:=False;
     Form40.Saisiestandart1.visible:=False;
     Form40.Lettrage1.visible:=False;
     Form40.Clture1.visible:=False;
  end
  else
  begin
     //Form40.Image12.visible:=True;
     //Form40.Image3.visible:=True;
     //Form40.Image9.visible:=True;
     Form40.Saisiestandart1.visible:=True;
     Form40.Lettrage1.visible:=True;
     Form40.Clture1.visible:=True;
  end;

  Special.NonBalance.Open;
  Special.NonBalance.Requery;
  Special.NonBalance.First;
  while not Special.NonBalance.Eof do
  begin
    showMessage('Vérifier l''écriture '+Special.NonBalanceJournal.Value);
    Special.NonBalance.Next;
  end;
  if Commun.SocieteMonnaie.Value='Ariary' then
    MiseAJour_Report;
end;

procedure TFPrincip.MiseAJour_Report;
begin
  //Test si AN01001 existe dans Journal
  PStockee.ZEstCeJournalReport.Open;
  PStockee.ZEstCeJournalReport.Requery;
  if PStockee.ZEstCeJournalReport.RecordCount =0 then
    PStockee.ZinsererJournal.ExecSQL;
  PStockee.ZSupprimerReport.ExecSQL;
  PStockee.ZInsererReport.ExecSQL;
end;

procedure TFPrincip.Devise2Click(Sender: TObject);
var dev:string;
begin
  form21.Asehoy(dev);
end;

procedure TFPrincip.Cours1Click(Sender: TObject);
begin
  //AsehoyGestDev;
end;

procedure TFPrincip.ConditionBancaire1Click(Sender: TObject);
begin
  Form40.WindowState:=wsMaximized
end;

procedure TFPrincip.FermerSocit1Click(Sender: TObject);
begin
  Documents1.Visible:=true;
  Paramtrage1.visible:=true;
  Form18.WindowState:=wsMaximized;
  Form18.caption:='-';
  CoolBar1.Visible := True;
end;

procedure TFPrincip.FormShow(Sender: TObject);
var TabMenu:TTabMenu;
begin
  ForceeLettrage:=false;
  if not ChargerSociete then close;
  if not ChargerPlan then  close;
  if not ChargerLettre then close;
  {if not ChargerImmo then close; A Corriger}
  if not ChargerAnal then  close;
  if not ChargerMAJ1 then close;
  //if AsehoyDroit=mrCancel then Close;
  Commun.Tempon.open;
  Commun.Tempon.requery;
  util:='1';//Commun.TemponString1.Value;

  // ================ utilisateur ====================
  if not ChargerUtilisat then close;
  try
    if AsehoyDroit() = mrCancel then
    begin
      annulation:= True;
      Close;
    end;
  except
    On E:exception do
    begin
      showMessage(E.Message);
    end;
  end;
  DaUtilisat.tTempon.open;
  DaUtilisat.tTempon.requery;
  util:=DaUtilisat.tTemponString1.Value;
  //showMessage(util);
  if util='' then close;

  Caption:='Compta - Utilisateur :'+util;
  ListerFichier;
  TabMenu[1]:=MainMenu1;
  TabMenu[2]:=Form40.MainMenu1;
  MiseAJourCommande(TabMenu,2,util,'Compta');
  //Quitter2.Enabled:=True;
  //showMessage(Util);
  //SplashForm.Timer1.Enabled:=false ;
  Commun.Societe.Open;
  ComboOuvrir.Items.Clear;
  while not Commun.Societe.Eof do
  begin
    ComboOuvrir.Items.Add(Commun.SocieteCode.Value+' : '+
                   Commun.SocieteRS.Value);
    Commun.Societe.Next;
  end;
  OuvrirExercice;
end;

procedure TFPrincip.Maintenance1Click(Sender: TObject);
begin
  AsehoyMaintenance;
end;

procedure TFPrincip.Changerdelutilisateur1Click(Sender: TObject);
begin
  AsehoyDroit;
  Commun.Tempon.open;
  Commun.Tempon.requery;
  util:=Commun.TemponString1.Value;
  if util='' then close;
  Caption:='Compta - Utilisateur :'+util;
end;

procedure TFPrincip.Changerdemotpasse1Click(Sender: TObject);
begin
  AsehoyMdp(util);
end;

procedure TFPrincip.Listedesutilisateurs1Click(Sender: TObject);
begin
  AsehoyLstUtil(util,'Compta');
end;

procedure TFPrincip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFPrincip.Consolidation1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFConsolidation, FConsolidation);
    FConsolidation.Asehoy;
  finally
    FConsolidation.free;
  end;
end;

procedure TFPrincip.Configurationdelipression1Click(Sender: TObject);
begin
  PrinterSetupDialog1.execute;
end;

procedure TFPrincip.Consultation1Click(Sender: TObject);
begin
  AsehoyLieu(0);
end;

procedure TFPrincip.Insereravec1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    PlanSte.Close;
    PlanSte.DatabaseName:=extractFiledir(OpenDialog1.FileName);
    PlanSte.TableName:=extractFileName(OpenDialog1.FileName);
    PlanSte.open;
    Special.PlanGene.Open;
    while not PlanSte.EOF do
    begin
      if length(PlanSteNumCpt.Value)<9 then
      try
        special.PlanGene.Insert;
        special.PlanGeneNumCpt.Value:=PlanSteNumCpt.Value;
        special.PlanGeneIntitule.Value:=PlanSteIntitule.Value;
      except
        On EDataBaseError do special.PlanGene.Cancel;
      end;
      PlanSte.Next;
    end;
  end;
end;

procedure TFPrincip.Auxiliaire1Click(Sender: TObject);
var auxi:string;
begin
  FLstAuxi.Asehoy(auxi);
end;

procedure TFPrincip.BilanRsultat1Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(BilanRsultat1.Caption,'&'),true) then exit;}
  FGroupe.Asehoy;
end;

procedure TFPrincip.Taxe2Click(Sender: TObject);
var dev:string;
begin
  try
    Application.CreateForm(TFLstTaxe, FLstTaxe);
    FLstTaxe.Asehoy(dev);
  except
    FLstTaxe.free;
  end;
end;

procedure TFPrincip.Ville1Click(Sender: TObject);
begin
  AsehoyListDonnee('c:\Ylaf\Data\Societe' ,'Lieu');
end;

procedure TFPrincip.ComboOuvrirChange(Sender: TObject);
begin
  Commun.SelSociete.close;
  Commun.SelSociete.Parameters[0].Value := ExtraireCode(ComboOuvrir.Items[ComboOuvrir.ItemIndex]);
  Commun.SelSociete.Open;
  chem:=Commun.SelSocieteChemin.Value ;
  if length(chem)>0 then
  begin
    Special.ChangeChemin(chem);
    DASQL.ChangeChemin(chem);
    PStockee.ChangeChemin(chem);
    SelectSociete(chem);
    //if not EstCePeutEntrer(Util,Commun.SocieteCode.Value,true) then exit;
    Documents1.Visible:=false;
    Paramtrage1.visible:=false;
    Form40.WindowState:=wsMaximized;
    Form40.Init;
    Caption:='Compta - Société:'+Commun.SocieteCode.Value+' '+Commun.SocieteRS.Value+
             '  Utilisateur :'+util;
    if Commun.SocieteSiege.Value then
    begin
      Commun.Consolide.open;
      Commun.SelSociete1.Close;
      Commun.SelSociete1.sql.clear;
      Commun.SelSociete1.parameters.Clear;
      Commun.SelSociete1.sql.Add('select * from ''societe.db'' b');
      Commun.SelSociete1.sql.Add('where b.code=:a');
      Commun.SelSociete1.Parameters[0].value:=Commun.SocieteCode.Value;
      Commun.SelSociete1.open;
    end;
    CoolBar1.Visible:=false;
  end;
end;

procedure TFPrincip.sqdqsdqsdqs1Click(Sender: TObject);
begin
  //showMessage(Special.InAuxiliaire('4111080000     ')+'L');
end;

procedure TFPrincip.test1Click(Sender: TObject);
begin
  DaSQL.SelectParam('CONSOLID','NONCOMPENS');
  if not DaSQL.DansParam('60300000')then
    showMessage('Compensé')
  else
    showMessage('Non Compensé');
end;

end.
