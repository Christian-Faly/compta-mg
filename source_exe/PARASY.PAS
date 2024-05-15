unit Parasy;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, Menus, Grids, DBGrids, Buttons, Db,
  DBTables, ComCtrls, StdCtrls, ADODB,StrUtils, jpeg;

type
  TForm40 = class(TForm)
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    UpDown1: TUpDown;
    GroupBox1: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label9: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    UpDown2: TUpDown;
    Label6: TLabel;
    OpenDialog1: TOpenDialog;
    BatchMove1: TBatchMove;
    Image10: TImage;
    GroupBox5: TGroupBox;
    SpeedButton11: TSpeedButton;
    Label7: TLabel;
    SpeedButton8: TSpeedButton;
    RadioGroup2: TRadioGroup;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit2: TEdit;
    Edit7: TEdit;
    Panel10: TPanel;
    Panel_5: TPanel;
    Panel_4: TPanel;
    Panel_2: TPanel;
    Panel_3: TPanel;
    Shape_1: TShape;
    Shape2: TShape;
    Shape_2: TShape;
    Shape4: TShape;
    Shape_3: TShape;
    Shape6: TShape;
    Shape_4: TShape;
    Shape8: TShape;
    Shape_5: TShape;
    Shape10: TShape;
    Label_1: TLabel;
    Panel_1: TPanel;
    Label_2: TLabel;
    Label_3: TLabel;
    Label_4: TLabel;
    Label_5: TLabel;
    Numero_1: TLabel;
    Numero_2: TLabel;
    Numero_3: TLabel;
    Numero_4: TLabel;
    Numero_5: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Panel_7: TPanel;
    Shape_7: TShape;
    Shape3: TShape;
    Label_7: TLabel;
    Numero_7: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Panel_6: TPanel;
    Shape_6: TShape;
    Shape7: TShape;
    Label_6: TLabel;
    Numero_6: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Panel_10: TPanel;
    Shape_10: TShape;
    Shape11: TShape;
    Label_10: TLabel;
    Numero_10: TLabel;
    Panel_9: TPanel;
    Shape_9: TShape;
    Shape13: TShape;
    Label_9: TLabel;
    Numero_9: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Panel_8: TPanel;
    Shape_8: TShape;
    Shape15: TShape;
    Label_8: TLabel;
    Numero_8: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label31: TLabel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel8: TPanel;
    Panel9: TPanel;
    DataSource6: TDataSource;
    DBGrid3: TDBGrid;
    Label10: TLabel;
    Label11: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel17: TPanel;
    Label36: TLabel;
    Image12: TImage;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel16: TPanel;
    Label35: TLabel;
    Image9: TImage;
    Panel15: TPanel;
    Label32: TLabel;
    Image3: TImage;
    Panel14: TPanel;
    Label13: TLabel;
    Image13: TImage;
    Panel13: TPanel;
    Label12: TLabel;
    Image2: TImage;
    Panel18: TPanel;
    Label40: TLabel;
    Image11: TImage;
    Panel_11: TPanel;
    Shape_11: TShape;
    Shape21: TShape;
    Label_11: TLabel;
    Numero_11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label39: TLabel;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    MainMenu1: TMainMenu;
    N26: TMenuItem;
    Rcuprer2: TMenuItem;
    CNaps1: TMenuItem;
    Quotidien1: TMenuItem;
    N27: TMenuItem;
    Saisiestandart1: TMenuItem;
    N6: TMenuItem;
    Priode1: TMenuItem;
    Ouverture2: TMenuItem;
    Ouverture1: TMenuItem;
    Arrterlapriode1: TMenuItem;
    N14: TMenuItem;
    Immobilisation1: TMenuItem;
    Abonnement1: TMenuItem;
    N25: TMenuItem;
    Lettrage1: TMenuItem;
    Recherche1: TMenuItem;
    Pridique1: TMenuItem;
    N28: TMenuItem;
    Aidesurlaclture1: TMenuItem;
    Clture1: TMenuItem;
    N30: TMenuItem;
    Reportnouveau1: TMenuItem;
    Donne1: TMenuItem;
    N19: TMenuItem;
    Journaux3: TMenuItem;
    ChoixJournal1: TMenuItem;
    N20: TMenuItem;
    Crationetmodification1: TMenuItem;
    N16: TMenuItem;
    Plancomptablegnrale1: TMenuItem;
    Consultation1: TMenuItem;
    N17: TMenuItem;
    PlanComptable1: TMenuItem;
    N18: TMenuItem;
    AjouterpartirdeN11: TMenuItem;
    Taxe1: TMenuItem;
    N22: TMenuItem;
    Guidedcriture1: TMenuItem;
    Guidedabonnement1: TMenuItem;
    Maintenance1: TMenuItem;
    ANPriodeavant1: TMenuItem;
    ChangementStructure1: TMenuItem;
    Journal3: TMenuItem;
    ElementJournal1: TMenuItem;
    VerifierTiers1: TMenuItem;
    Impressions1: TMenuItem;
    N21: TMenuItem;
    Journal2: TMenuItem;
    Nornal1: TMenuItem;
    Journal1: TMenuItem;
    SituationFournisseur1: TMenuItem;
    Parrapportaumodedepaiement1: TMenuItem;
    Parrapportaulettrage1: TMenuItem;
    Situationclient1: TMenuItem;
    Parrapportaumodedepaiement2: TMenuItem;
    Parlettrage1: TMenuItem;
    N10: TMenuItem;
    GrandLivre1: TMenuItem;
    N9: TMenuItem;
    Cumuldescomptes1: TMenuItem;
    N11: TMenuItem;
    Balance2: TMenuItem;
    Partielle1: TMenuItem;
    Gnrale1: TMenuItem;
    Directe1: TMenuItem;
    SaisieAnneprec1: TMenuItem;
    Balanceconsolide1: TMenuItem;
    Prparation1: TMenuItem;
    Gauche1: TMenuItem;
    Droite1: TMenuItem;
    N31: TMenuItem;
    Paramtrage1: TMenuItem;
    OPration1: TMenuItem;
    N7: TMenuItem;
    Balanceetcomptedersultat1: TMenuItem;
    Etats1: TMenuItem;
    N15: TMenuItem;
    Annexes2: TMenuItem;
    N13: TMenuItem;
    Bilanactif1: TMenuItem;
    N8: TMenuItem;
    Tierssurecriture1: TMenuItem;
    ParaLivraisonsoimme1: TMenuItem;
    N23: TMenuItem;
    Dclaration1: TMenuItem;
    ParamtrageTiers1: TMenuItem;
    N61: TMenuItem;
    Considrersaisie1: TMenuItem;
    N34: TMenuItem;
    Produitslocaux1: TMenuItem;
    CouvertureAchat1: TMenuItem;
    N35: TMenuItem;
    MarchandisevendueMadagascar1: TMenuItem;
    Couvertureventes1: TMenuItem;
    N36: TMenuItem;
    Prestationdeservice1: TMenuItem;
    N24: TMenuItem;
    BordereaudeversementTVA1: TMenuItem;
    CentralisateurTVA1: TMenuItem;
    MettreTVAsurlescritures1: TMenuItem;
    DEscriptiondesTVA1: TMenuItem;
    Versement1: TMenuItem;
    BordereaudeversementTST1: TMenuItem;
    N32: TMenuItem;
    rECUPERERSAISIE1: TMenuItem;
    N33: TMenuItem;
    Nouvelledclaration1: TMenuItem;
    BordereauderemboursementTVA1: TMenuItem;
    Livraisonsoimme1: TMenuItem;
    N1: TMenuItem;
    OuvrirEtats1: TMenuItem;
    Transfert1: TMenuItem;
    Transfertplancpt1: TMenuItem;
    Ecritureancien1: TMenuItem;
    Traduction1: TMenuItem;
    Renumeroterlespices1: TMenuItem;
    MetrreAdresseetDiverssurlescomptes1: TMenuItem;
    REnum1: TMenuItem;
    CacherMenu: TMenuItem;
    ModifComptable1: TMenuItem;
    Ajoutcriture1: TMenuItem;
    Modifcriture1: TMenuItem;
    Supprcriture1: TMenuItem;
    Vrification3: TMenuItem;
    N29: TMenuItem;
    Rsum2: TMenuItem;
    Rsumcriture1: TMenuItem;
    Pouretatsfinanciers1: TMenuItem;
    N4: TMenuItem;
    Rimputationcomptable1: TMenuItem;
    Passageenariary1: TMenuItem;
    raduireFmgAriary1: TMenuItem;
    raduireAriaryenFmg1: TMenuItem;
    VrificationDbitCrdit1: TMenuItem;
    N2: TMenuItem;
    Transfertpardiskette1: TMenuItem;
    SauvegardeCA1: TMenuItem;
    RestaurationAC1: TMenuItem;
    N3: TMenuItem;
    Vrification4: TMenuItem;
    Vrification2: TMenuItem;
    Normal1: TMenuItem;
    Rsum1: TMenuItem;
    Global1: TMenuItem;
    Vrification1: TMenuItem;
    Conformitcriture1: TMenuItem;
    TVASurEcriture1: TMenuItem;
    Vrifiercompte1: TMenuItem;
    Verifiercomptenomouvert1: TMenuItem;
    N12: TMenuItem;
    essai1: TMenuItem;
    MettreminusculeCompte1: TMenuItem;
    Consolid1: TMenuItem;
    N5: TMenuItem;
    Gestionnairedefichier1: TMenuItem;
    mAINTENANCE2: TMenuItem;
    rectif1: TMenuItem;
    cREERDIVERS1: TMenuItem;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CNaps1Click(Sender: TObject);
    procedure Dptdevaleurenattente1Click(Sender: TObject);
    procedure Guidedabonnement1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Arrterlapriode1Click(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure ANPriodeavant1Click(Sender: TObject);
    procedure Versement1Click(Sender: TObject);
    procedure Tierssurecriture1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Ouverture2Click(Sender: TObject);
    procedure Ouverture1Click(Sender: TObject);
    procedure Transfertplancpt1Click(Sender: TObject);
    procedure Ecritureancien1Click(Sender: TObject);
    procedure MetrreAdresseetDiverssurlescomptes1Click(Sender: TObject);
    procedure Traduction1Click(Sender: TObject);
    procedure Vrification1Click(Sender: TObject);
    procedure Taxe1Click(Sender: TObject);
    procedure SauvegardeCA1Click(Sender: TObject);
    procedure RestaurationAC1Click(Sender: TObject);
    procedure Journal3Click(Sender: TObject);
    procedure Immobilisation(Sender: TObject);
    procedure ParaLivraisonsoimme1Click(Sender: TObject);
    procedure Rimputationcomptable1Click(Sender: TObject);
    procedure REnum1Click(Sender: TObject);
    procedure Rsumcriture1Click(Sender: TObject);
    procedure Pouretatsfinanciers1Click(Sender: TObject);
    procedure Livraisonsoimme1Click(Sender: TObject);
    procedure Normal1Click(Sender: TObject);
    procedure Rsum1Click(Sender: TObject);
    procedure Conformitcriture1Click(Sender: TObject);
    procedure Global1Click(Sender: TObject);
    procedure Vrifiercompte1Click(Sender: TObject);
    procedure Clture1Click(Sender: TObject);
    procedure OPration1Click(Sender: TObject);
    procedure Paramtrage1Click(Sender: TObject);
    procedure VerifierTiers1Click(Sender: TObject);
    procedure MettreminusculeCompte1Click(Sender: TObject);
    procedure Consolid1Click(Sender: TObject);
    procedure OuvrirEtats1Click(Sender: TObject);
    procedure rectif1Click(Sender: TObject);
    procedure cREERDIVERS1Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label11Click(Sender: TObject);
    procedure raduireFmgAriary1Click(Sender: TObject);
    procedure raduireAriaryenFmg1Click(Sender: TObject);
    procedure VrificationDbitCrdit1Click(Sender: TObject);
    procedure BordereauderemboursementTVA1Click(Sender: TObject);
    procedure Aidesurlaclture1Click(Sender: TObject);
    procedure Prparation1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label_1Click(Sender: TObject);
    procedure Label_2Click(Sender: TObject);
    procedure Label_3Click(Sender: TObject);
    procedure Label_4Click(Sender: TObject);
    procedure Label_5Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure Label_6Click(Sender: TObject);
    procedure Label_7Click(Sender: TObject);
    procedure Label_8Click(Sender: TObject);
    procedure Label_9Click(Sender: TObject);
    procedure Label_10Click(Sender: TObject);
    procedure Label_1MouseEnter(Sender: TObject);
    procedure Label_2MouseEnter(Sender: TObject);
    procedure Label_3MouseEnter(Sender: TObject);
    procedure Label_4MouseEnter(Sender: TObject);
    procedure Label_5MouseEnter(Sender: TObject);
    procedure Label_6MouseEnter(Sender: TObject);
    procedure Label_7MouseEnter(Sender: TObject);
    procedure Label_8MouseEnter(Sender: TObject);
    procedure Label_9MouseEnter(Sender: TObject);
    procedure Label_10MouseEnter(Sender: TObject);
    procedure Label41Click(Sender: TObject);
    procedure Label41MouseEnter(Sender: TObject);
    procedure Label41MouseLeave(Sender: TObject);
    procedure Label60Click(Sender: TObject);
    procedure Shape_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_7ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Shape_8ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Shape_9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape_10MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label42MouseEnter(Sender: TObject);
    procedure Label42MouseLeave(Sender: TObject);
    procedure Label60MouseEnter(Sender: TObject);
    procedure Label61MouseEnter(Sender: TObject);
    procedure Label62MouseEnter(Sender: TObject);
    procedure Label63MouseEnter(Sender: TObject);
    procedure Label60MouseLeave(Sender: TObject);
    procedure Label61MouseLeave(Sender: TObject);
    procedure Label62MouseLeave(Sender: TObject);
    procedure Label63MouseLeave(Sender: TObject);
    procedure Label45MouseEnter(Sender: TObject);
    procedure Label46MouseEnter(Sender: TObject);
    procedure Label54MouseEnter(Sender: TObject);
    procedure Label55MouseEnter(Sender: TObject);
    procedure Label58MouseEnter(Sender: TObject);
    procedure Label59MouseEnter(Sender: TObject);
    procedure Label45MouseLeave(Sender: TObject);
    procedure Label46MouseLeave(Sender: TObject);
    procedure Label54MouseLeave(Sender: TObject);
    procedure Label55MouseLeave(Sender: TObject);
    procedure Label58MouseLeave(Sender: TObject);
    procedure Label59MouseLeave(Sender: TObject);
    procedure Label49MouseLeave(Sender: TObject);
    procedure Label50MouseLeave(Sender: TObject);
    procedure Label53MouseLeave(Sender: TObject);
    procedure Label49MouseEnter(Sender: TObject);
    procedure Label50MouseEnter(Sender: TObject);
    procedure Label53MouseEnter(Sender: TObject);
    procedure Label33MouseEnter(Sender: TObject);
    procedure Label34MouseEnter(Sender: TObject);
    procedure Label51MouseEnter(Sender: TObject);
    procedure Label52MouseEnter(Sender: TObject);
    procedure Label33MouseLeave(Sender: TObject);
    procedure Label34MouseLeave(Sender: TObject);
    procedure Label51MouseLeave(Sender: TObject);
    procedure Label52MouseLeave(Sender: TObject);
    procedure Label37MouseLeave(Sender: TObject);
    procedure Label37MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label38MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label37MouseEnter(Sender: TObject);
    procedure Label38MouseEnter(Sender: TObject);
    procedure Label38MouseLeave(Sender: TObject);
    procedure Label29MouseEnter(Sender: TObject);
    procedure Label30MouseEnter(Sender: TObject);
    procedure Label29MouseLeave(Sender: TObject);
    procedure Label30MouseLeave(Sender: TObject);
    procedure Label26MouseLeave(Sender: TObject);
    procedure Label25MouseLeave(Sender: TObject);
    procedure Label26MouseEnter(Sender: TObject);
    procedure Label25MouseEnter(Sender: TObject);
    procedure Label27MouseEnter(Sender: TObject);
    procedure Label28MouseEnter(Sender: TObject);
    procedure Label28MouseLeave(Sender: TObject);
    procedure Label27MouseLeave(Sender: TObject);
    procedure Label22MouseLeave(Sender: TObject);
    procedure Label23MouseLeave(Sender: TObject);
    procedure Label24MouseLeave(Sender: TObject);
    procedure Label22MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label23MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label24MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label22MouseEnter(Sender: TObject);
    procedure Label23MouseEnter(Sender: TObject);
    procedure Label24MouseEnter(Sender: TObject);
    procedure Label21MouseEnter(Sender: TObject);
    procedure Label20MouseEnter(Sender: TObject);
    procedure Label19MouseEnter(Sender: TObject);
    procedure Label19MouseLeave(Sender: TObject);
    procedure Label20MouseLeave(Sender: TObject);
    procedure Label21MouseLeave(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure Label37Click(Sender: TObject);
    procedure Label38Click(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure Label34Click(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Label50Click(Sender: TObject);
    procedure Label53Click(Sender: TObject);
    procedure Label45Click(Sender: TObject);
    procedure Label46Click(Sender: TObject);
    procedure Label54Click(Sender: TObject);
    procedure Label55Click(Sender: TObject);
    procedure Label58Click(Sender: TObject);
    procedure Label59Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Label42Click(Sender: TObject);
    procedure Label63Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Shape_7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label10Click(Sender: TObject);
    procedure Label10MouseEnter(Sender: TObject);
    procedure Label10MouseLeave(Sender: TObject);
    procedure Label11MouseEnter(Sender: TObject);
    procedure Label11MouseLeave(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image13MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image12MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label18Click(Sender: TObject);
    procedure Label18MouseEnter(Sender: TObject);
    procedure Label18MouseLeave(Sender: TObject);
    procedure Label16MouseEnter(Sender: TObject);
    procedure Label16MouseLeave(Sender: TObject);
    procedure Label_11Click(Sender: TObject);
    procedure Label_11MouseEnter(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { Private-déclarations }
    dx:integer;
    annulation:boolean;
    ShapeMenu: array[1..20] of TShape;
    LabelMenu: array[1..20] of TLabel;
    PanelMenu: array[1..20] of TPanel;
    NumeroMenu: array[1..20] of TLabel;
    nbMenu:integer;
    procedure AfficheDate(dt:TDateTime);
    procedure Cacher;
    procedure InitialiserMenu;
    procedure ClickMenu(numero:integer);
    procedure MouseEnter(numero:integer);
    procedure Utilisateur;
    procedure Societe;
    procedure ChargementBiblio;
    procedure ListerFichier;
    procedure SelectSociete(chemin:string);
    procedure MiseAJour_Report;
    procedure PanelMouseDown(Panel:TPanel);
    procedure PanelMouseUp(Panel:TPanel);
    procedure SaisieStandard;
  public
    { Public-déclarations }
    procedure Init;
    procedure GrillerSiModifSaisie(CodeSoc:string;Oui:boolean);
  end;

var Form40:TForm40;

implementation

uses journal, Journaux, Groupe,   Recuper, Balance, Guidabon, Daspecia,
   DaCommun, GranLivr, declare,  informat,
  Importat, tradu, Taxe,  Recup, Restorer, ImporIm,
  Console, ColCons, ImprCons,  BalAnn_1, SelPerio,
  EtaOutil, EtaAnnex, Couvert, EtaBilanActif, OuvEtat, EtaEFAut, EtaFinan,
  EditConsol, TypeElmt, ImpPlan, ImpLettr, ImporAna, USQL, UConnect,
  UPStocke, UMoteur, UConvertMonnaie, URembTVA, UAide, UTVADescrip,
  UdaConsolide, UParametr, UDaUtilisat, ImporDoc, ImpMAJ1, ImpUtilisat,
  CanevaDCOMM_U, Ecriture_U;

{$R *.DFM}

procedure TForm40.ChargementBiblio;
begin
  annulation:= False;
  ForceeLettrage:=false;
  if not ChargerSociete then close;
  if not ChargerPlan then  close;
  if not ChargerLettre then close;
  {if not ChargerImmo then close; A Corriger}
  if not ChargerAnal then  close;
  if not ChargerMAJ1 then close;

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
end;

procedure TForm40.Utilisateur;
var TabMenu:TTabMenu;
begin
  Commun.Tempon.open;
  Commun.Tempon.requery;
  util:='1';

  DaUtilisat.tTempon.open;
  DaUtilisat.tTempon.requery;
  util:=DaUtilisat.tTemponString1.Value;
  if util='' then
  begin
    showMessage('-'+DaUtilisat.tTemponString1.Value+'-');
    close;
  end;//close;

  Caption:='Compta - Utilisateur :'+util;
  ListerFichier;
  TabMenu[1]:=MainMenu1;
  TabMenu[2]:=Form40.MainMenu1;
  MiseAJourCommande(TabMenu,2,util,'Compta');
  //Quitter2.Enabled:=True;
end;

procedure TForm40.Societe;
var dt:TDate;
  taona,volana,andro:word;
  filtre:string;
begin
  Commun.Tempon.requery;
  chem:=Commun.TemponString2.Value;
  Commun.Societe.Open;

  PStockee.qGrillerDec.Close;
  PStockee.qGrillerDec.Parameters[0].Value:=Commun.SocieteCode.Value;
  PStockee.qGrillerDec.Open;

  if PStockee.qGrillerDec.Eof then
    Form40.GrillerSiModifSaisie(Commun.SocieteCode.Value,false)
  else
  begin
    Form40.Produitslocaux1.enabled:= (PStockee.qGrillerDecGriller.Value<>'0');
    Form40.MarchandisevendueMadagascar1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    Form40.Prestationdeservice1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    Form40.Nouvelledclaration1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    Form40.BordereauderemboursementTVA1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
  end;

  //if not EstCePeutEntrer(util,EnleverLettre(Ouvrir1.Caption,'&'),true) then
    //exit;
  dt:=Date;
  DecodeDate(dt,taona,volana,andro);
  if volana>6 then
    filtre:=FormatFloat('00',taona-2000)+FormatFloat('00',taona+1-2000)
  else
    filtre:=FormatFloat('00',taona-2000)+FormatFloat('00',taona-1-2000);
  AsehoySociete(1,'LstCmpta','Compta','',Filtre, True);
  Commun.Tempon.requery;
  if Commun.TemponString1.Value='' then  close;
  Commun.Societe.Requery;
  chem:=Commun.TemponString2.Value;
  if length(chem)>0 then
  begin
    Special.ChangeChemin(chem);
    DASQL.ChangeChemin(chem);
    PStockee.ChangeChemin(chem);
    SelectSociete(chem);
    DaConnect.ChangeCheminConnection(DaConnect.C_Document,Commun.SocieteChemin.Value);
    Panel1.Caption := Commun.SocieteRS.Value +' ( Exercice: 20'+copy(Commun.SocieteChemin.Value,5,2)+
                      ' - 20'+copy(Commun.SocieteChemin.Value,7,2)+' BDD: '+Commun.SocieteChemin.Value+' )';
    try
      DaConnect.ChangeCheminConnection(DaConnect.C_Document_1,Commun.SocieteCheminPrec.Value);
    except
       On EDataBaseError do
         showMessage('Verifiez le chemin vers le dossier précédent');
    end;
    //if not EstCePeutEntrer(Util,Commun.SocieteCode.Value,true) then exit;
    //Documents1.Visible:=false;
    //Paramtrage1.visible:=false;
    Form40.WindowState:=wsMaximized;
    Form40.Init;
    Caption:='Compta - Société:'+EnleveBlancDroite(Commun.SocieteCode.Value)+' '+
             enleveblancDroite(Commun.SocieteRS.Value)+'('+enleveblancDroite(Commun.SocieteMonnaie.Value)+')'+
             '  Utilisateur :'+enleveblancDroite(util);
    if Commun.SocieteSiege.Value<>0 then
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
    //CoolBar1.Visible := False;
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
  DBGrid3.Visible := not Special.NonBalance.Eof;
  DBGrid3.Align := alClient;
  if Commun.SocieteMonnaie.Value='Ariary' then
  begin
    //MiseAJour_Report;
  end;
end;

procedure TForm40.MiseAJour_Report;
begin
  //Test si AN01001 existe dans Journal
  PStockee.ZEstCeJournalReport.Open;
  PStockee.ZEstCeJournalReport.Requery;

  if PStockee.ZEstCeJournalReport.RecordCount =0 then
    PStockee.ZinsererJournal.ExecSQL;

  PStockee.ZSupprimerReport.ExecSQL;
  PStockee.ZInsererReport.ExecSQL;
end;

procedure TForm40.SelectSociete(chemin:string);
begin
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


procedure TForm40.ListerFichier;
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
  PStockee.supprimerTout('Sociéte','LstFichier');
  //Inserer('ACopier.mdb','\\Serveur\Data\Compta','Copie');
end;


procedure TForm40.Init;
var dt:TDateTime;
    txtsql:string;
begin
  dx:=5;
  PStockee.RSel1EltJrn.close;
  PStockee.RSel1EltJrn.sql.clear;
  txtsql:='select * from Sel1EltJrn where Journal=:a';
  PStockee.RSel1EltJrn.sql.Add(txtsql);
  dt:=now;
  AfficheDate(dt);
  Special.Journaux.open;
  Autoscroll:=false;
  if Commun.SocieteSiege.Value<>0 then
    Balanceconsolide1.Visible:=true
  else
    Balanceconsolide1.Visible:=false;
  Special.Guidabon.FieldByName('Periodede').DisplayLabel:='Période de..';
  Special.Guidabon.FieldByName('Periodea').DisplayLabel:='Période à..';
  Special.Guidabon.FieldByName('Jieme').DisplayLabel:='ième Jour';
  Special.Guidabon.FieldByName('Mieme').DisplayLabel:='ième Mois';
  Special.Guidabon.FieldByName('Frequence').DisplayLabel:='Fréquence';
end;

procedure TForm40.InitialiserMenu;
begin
  nbMenu:=11;
  ShapeMenu[1]:=Shape_1;
  ShapeMenu[2]:=Shape_2;
  ShapeMenu[3]:=Shape_3;
  ShapeMenu[4]:=Shape_4;
  ShapeMenu[5]:=Shape_5;
  ShapeMenu[6]:=Shape_6;
  ShapeMenu[7]:=Shape_7;
  ShapeMenu[8]:=Shape_8;
  ShapeMenu[9]:=Shape_9;
  ShapeMenu[10]:=Shape_10;
  ShapeMenu[11]:=Shape_11;

  LabelMenu[1]:= Label_1;
  LabelMenu[2]:= Label_2;
  LabelMenu[3]:= Label_3;
  LabelMenu[4]:= Label_4;
  LabelMenu[5]:= Label_5;
  LabelMenu[6]:= Label_6;
  LabelMenu[7]:= Label_7;
  LabelMenu[8]:= Label_8;
  LabelMenu[9]:= Label_9;
  LabelMenu[10]:= Label_10;
  LabelMenu[11]:= Label_11;

  PanelMenu[1]:= Panel_1;
  PanelMenu[2]:= Panel_2;
  PanelMenu[3]:= Panel_3;
  PanelMenu[4]:= Panel_4;
  PanelMenu[5]:= Panel_5;
  PanelMenu[6]:= Panel_6;
  PanelMenu[7]:= Panel_7;
  PanelMenu[8]:= Panel_8;
  PanelMenu[9]:= Panel_9;
  PanelMenu[10]:= Panel_10;
  PanelMenu[11]:= Panel_11;

  NumeroMenu[1]:= numero_1;
  NumeroMenu[2]:= numero_2;
  NumeroMenu[3]:= numero_3;
  NumeroMenu[4]:= numero_4;
  NumeroMenu[5]:= numero_5;
  NumeroMenu[6]:= numero_6;
  NumeroMenu[7]:= numero_7;
  NumeroMenu[8]:= numero_8;
  NumeroMenu[9]:= numero_9;
  NumeroMenu[10]:= numero_10;
  NumeroMenu[11]:= numero_11;
end;

procedure TForm40.ClickMenu(numero:integer);
var i:integer;
begin
  for i:=1 to numero-1 do
  begin
    PanelMenu[i].Align := alTop;
    PanelMenu[i].Height := 33
  end;
  PanelMenu[numero].Align := alClient;
  for i:= nbMenu downto numero+1  do
  begin
    PanelMenu[i].Align := alBottom;
    PanelMenu[i].Height := 33
  end;
end;

procedure TForm40.MouseEnter(numero:integer);
var i:integer;
begin
  for i:=1 to nbMenu do
  begin
    LabelMenu[i].Font.color := clWhite;
    ShapeMenu[i].Brush.Color := $0028D79A;
    NumeroMenu[i].Font.color := clBlack;
  end;

  LabelMenu[numero].Font.color := clRed;
  ShapeMenu[numero].Brush.Color := clYellow;
  NumeroMenu[numero].Font.color := clRed;

end;

procedure TForm40.AfficheDate(dt:TDateTime);
var  Year, Month, Day: Word;
begin
  DecodeDate(dt,Year,Month,Day);
  Edit4.text:=inttostr(Year);
  UpDown1.Position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  {Edit1.text:=inttostr(Year);
  ComboBox1.ItemIndex:=Month-1;}
end;


procedure TForm40.FormCreate(Sender: TObject);
begin
  //Image1.visible:=true;
  //Image1.Align:=AlClient;
end;

procedure TForm40.Cacher;
begin
  Panel4.Visible:=true;
  //Panel1.Visible:=true;
  //Image1.Visible:=false;
  DBGrid3.Visible:=false;
  DBGrid2.Visible:=false;
end;

procedure TForm40.CNaps1Click(Sender: TObject);
begin
  Form344.Asehoy;
end;

procedure TForm40.Dptdevaleurenattente1Click(Sender: TObject);
begin
  {FSaiPaiem.Asehoy(1);}
end;


procedure TForm40.Guidedabonnement1Click(Sender: TObject);
begin
  Panel4.Visible:=true;
  //Panel1.Visible:=true;
  //Image1.Visible:=false;
end;

procedure TForm40.FormShow(Sender: TObject);
begin
  ChargementBiblio;
  Utilisateur;
  Societe;
  //Image1.Visible:=true;
  //Panel4.visible:=false;
  //Panel1.visible:=false;
  Panel4.Align:=AlClient;
  InitialiserMenu;
end;

procedure TForm40.Arrterlapriode1Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Arrterlapriode1.Caption,'&'),true) then exit;}
  AsehoyEcriture(3)
end;

procedure TForm40.Edit16Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=0;
end;

procedure TForm40.Edit17Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=1;
end;

procedure TForm40.ANPriodeavant1Click(Sender: TObject);
var perioav:string;
    Year,month,day:word;
begin
  DASQL.SelJournal.close;
  DASQL.SelJournal.sql.clear;
  DASQL.SelJournal.sql.Add('select * from Journal  ');
  DASQL.SelJournal.sql.Add('where CodeJrnx=''AN''');
  DASQL.SelJournal.open;
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  if month=1 then
  begin
    Year:=Year-1;
    Month:=12;
  end
  else
    Month:=Month-1;
  perioav:=inttostr(Year)+'/'+FormatFloat('00',Month);
  While not DASQL.SelJournal.eof do
  begin
    DASQL.SelJournal.edit;
    DASQL.SelJournalPeriode.Value:=perioav;
    DASQL.SelJournal.post;
    DASQL.SelJournal.next;
  end;
end;

procedure TForm40.Versement1Click(Sender: TObject);
begin
  FDeclare.Asehoy(3);
end;

procedure TForm40.Tierssurecriture1Click(Sender: TObject);
var stPoint:string;
  i,nbpoint,total:integer;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  DASQL.SelJournal.close;
  DASQL.SelJournal.SQL.Clear;
  DASQL.SelJournal.SQL.Add('Select * from Journal');
  DASQL.SelJournal.SQL.Add('where code=:a');
  DASQL.Ecriture.Close;
  DASQL.Ecriture.SQL.clear;
  DASQL.Ecriture.sql.Add('select * from Journal x, EltJrn y');
  DASQL.Ecriture.SQL.Add('where   (x.Code=y.Journal)');
  DASQL.Ecriture.open;
  total:=DASQL.Ecriture.RecordCount;
  While not DASQL.Ecriture.EOF do
  begin
    FInformat.Show;
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;

    if (copy(DASQL.EcritureCompte.Value,1,3)='401')or
       (copy(DASQL.EcritureCompte.Value,1,3)='411') then
    begin
      DASQL.SelJournal.close;
      DASQL.SelJournal.Parameters[0].Value:=DASQL.EcritureCode.Value;
      DASQL.SelJournal.open;
      DASQL.SelJournal.edit;
      DASQL.SelJournalTiers.Value:=DASQL.EcritureCompte.Value;
      DASQL.SelJournal.post;
    end;
    DASQL.Ecriture.Next;
  end;
  FInformat.close;
end;

procedure TForm40.Edit2Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=2;
end;

procedure TForm40.RadioGroup2Click(Sender: TObject);
begin
  {TRY
    case RadioGroup2.ItemIndex of
    0:Edit16.SetFocus;
    1:Edit17.SetFocus;
    2:Edit2.SetFocus;
    end;
  EXCEPT
  end; }
end;

procedure TForm40.Ouverture2Click(Sender: TObject);
var hita:boolean;
begin
  Special.Arrete.OPEN;
  try
    Special.Arrete.insert;
    Special.ArretePeriode.Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
    Special.ArreteJournaux.Value:=EnleveBlanc(FEcriture.edit12.text);
    Special.ArreteArreter.Value:=0;
    Special.Arrete.Post;
  except
    On EDataBaseError do
    begin
      Special.Arrete.Cancel;
      Special.Arrete.first;
      hita:=false;
      while not Special.Arrete.eof do
      begin
        if (Special.ArretePeriode.Value=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1)) and
         (Special.ArreteJournaux.Value=edit12.text) then
        begin
          Special.Arrete.edit;
          Special.ArreteArreter.Value:=0;
          Special.Arrete.Post;
          hita:=true;
          break;
        end;
        Special.Arrete.Next;
      end;
      if not hita then Showmessage('Déjà ouvert');
    end;
  end;
end;

procedure TForm40.Ouverture1Click(Sender: TObject);
var hita:boolean;
begin
  Special.Arrete.OPEN;
  Special.Arrete.first;
  hita:=false;
  while not Special.Arrete.eof do
  begin
    if (Special.ArretePeriode.Value=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1)) and
    (Special.ArreteJournaux.Value=edit12.text) then
    begin
      Special.Arrete.insert;
      Special.ArreteArreter.Value:=0;
      Special.Arrete.Post;
      hita:=true;
      break;
    end;
    Special.Arrete.Next;
  end;
  if not hita then Showmessage('Cette période n''est jamais ouverte');
end;

procedure TForm40.Transfertplancpt1Click(Sender: TObject);
begin
  FImportat.ShowModal;
end;

procedure TForm40.Ecritureancien1Click(Sender: TObject);
var i:integer;
begin
  dASQL.lecriture.open;
  Special.element.open;while not special.element.EOF do special.element.delete;
  PStockee.RIncreEltJrn.Open;
  PStockee.RIncreEltJrn.Requery;
  i:=0;
  while not dASQL.lecriture.eof do
  begin
    special.element.insert;
     i:=i+1;
    special.elementNumero.value:=PStockee.RIncreEltJrnDernierNum.Value+i;
    special.elementJournal.value:=dASQL.lecriturejournal.value;
    special.elementDebit.value:= dASQL.lecritureDebit.value;
    special.elementCompte.value:=dASQL.lecritureCompte.value;
    special.elementMontant.value:=dASQL.lecritureMontant.value;
    special.elementIzy.value:= dASQL.lecritureIzy.value;
    special.elementLibelle.value:= dASQL.lecritureLibelle.value;
    special.elementContrepartie.value:=dASQL.lecritureContrepartie.value ;
    special.elementNbcontre.value:= dASQL.lecritureNbcontre.value;
    special.elementQte.value:= dASQL.lecritureQte.value;
    special.elementNumFact.value:=dASQL.lecritureNumFact.value;
    special.element.post;
    dASQL.lecriture.Next;
  end;
end;

procedure TForm40.MetrreAdresseetDiverssurlescomptes1Click(
  Sender: TObject);
var stPoint:string;
  i,nbpoint,total:integer;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  Special.NumCp.open;
  total:=Special.NumCp.RecordCount;
  while not Special.NumCp.eof do
  begin
    FInformat.Show;
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;

    DASQL.SelNumAdres.Close;
    DASQL.SelNumAdres.parameters[0].Value:=Special.NumCpNumCpt.Value;
    DASQL.SelNumAdres.open;
    if DASQL.SelNumAdres.EOF then
    begin
      try
        DASQL.SelNumAdres.insert;
        DASQL.SelNumAdresNumCpt.Value:=Special.NumCpNumCpt.Value;
        DASQL.SelNumAdresNom.Value:=Special.NumCpIntitule.Value;
        DASQL.SelNumAdres.post;
      except
        On EDataBaseError do;
      end;
    end;
    DASQL.SelNumDivers.Close;
    DASQL.SelNumDivers.parameters[0].Value:=Special.NumCpNumCpt.Value;
    DASQL.SelNumDivers.open;
    if DASQL.SelNumDivers.EOF then
    begin
      try
        DASQL.SelNumDivers.insert;
        DASQL.SelNumDiversNumCpt.Value:=Special.NumCpNumCpt.Value;
        DASQL.SelNumDivers.post;
      except
        On EDataBaseError do ;
      end;
    end;
    Special.NumCp.Next;
  end;
  FInformat.close;
end;

procedure TForm40.Traduction1Click(Sender: TObject);
begin
  FTraduction.showmodal;
end;

procedure TForm40.Vrification1Click(Sender: TObject);
var mr,i,nbpoint,total:integer;
  stpoint:string;
   k:string;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  Special.ToutEltJrn.open;
  total:=Special.ToutEltJrn.RecordCount;
  Special.ToutEltJrn.first;
  while not Special.ToutEltJrn.eof do
  begin
    {if (length(Special.ToutEltJrnCompte.value)=10) and
       (copy(Special.ToutEltJrnCompte.Value,1,2)<>'40')and
       (copy(Special.ToutEltJrnCompte.Value,1,2)<>'41')and
       (copy(Special.ToutEltJrnCompte.Value,1,3)<>'425')and
       (copy(Special.ToutEltJrnCompte.Value,1,4)<>'4676')and
       (copy(Special.ToutEltJrnCompte.Value,1,4)<>'4677')and
       (copy(Special.ToutEltJrnCompte.Value,1,3)<>'461')then
    begin
      Special.ToutEltJrn.edit;
      Special.ToutEltJrnCompte.value:=copy(Special.ToutEltJrnCompte.value,1,8);
      Special.ToutEltJrn.post;
    end;}
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.parameters[0].Value:=Special.ToutEltJrnCompte.value;
    DASQL.SelNumCpt.open;
    if (DASQL.SelNumCpt.eof)then
    begin
      {DASQL.SelEltJrn.close;
      DASQL.SelEltJrn.sql.clear;
      DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
      DASQL.SelEltJrn.parambyName('a').AsString:=DASQL.SelJournalCode.Value;
      DASQL.SelEltJrn.open;
      DASQL.SelEltJrn.first;
      while not DASQL.SelEltJrn.eof do
        try
          DASQL.SelEltJrn.delete;
        except
          On EDataBaseError do ;
        end;                   }
      mr:=MessageDlg('Le compte n°'+Special.ToutEltJrnCompte.value+
                   ' est utilisé dans'+ Special.ToutEltJrnJournal.value+' mais non créé. Voulez-vous le créer maintenant ? ',
                  mtconfirmation,[mbyes,MbNo,MbCancel],0);
     if mr=mryes then AsehoyLstCpt(Special.ToutEltJrnCompte.value,Commun.SocieteChemin.Value,true,true);
     if mr=mrCancel then break;
    end;
    Special.ToutEltJrn.next;
  end;
  FInformat.close;
end;

procedure TForm40.Taxe1Click(Sender: TObject);
var dev:string;
begin
  FLstTaxe.Asehoy(dev);
end;

procedure TForm40.SauvegardeCA1Click(Sender: TObject);
begin
  FSauvegarde.Asehoy(Commun.SocieteChemin.Value);
end;

procedure TForm40.RestaurationAC1Click(Sender: TObject);
begin
  FRestore.Asehoy(Commun.SocieteChemin.Value);
end;

procedure TForm40.Journal3Click(Sender: TObject);
begin
{  table1.Close;
  table1.DataBaseName:='c:\CSC\Log\Exec\Compta\Data';
  table1.TableName:='Journal';
  table1.open;
  while not table1.EOF do table1.delete;
  table2.Close;
  //table2.DataBaseName:=Special.Journal.DataBaseName;
  //table2.TableName:=Special.Journal.TableName;
  table2.open;

  BatchMove2.Source:=table2;
  BatchMove2.Destination:=table1;
  BatchMove2.Mode:=BatAppend;
  BatchMove2.Execute;

  BatchMove2.Source:=table1;
  BatchMove2.Destination:=table2;
  BatchMove2.Mode:=BatCopy;
  BatchMove2.Execute;

  table2.IndexDefs.clear;
  table1.IndexDefs.update;
  table2.IndexDefs.Assign(table1.IndexDefs);
  table2.createTable;
  batchmove2.mode:=batappend;
  batchmove2.execute;
}end;

procedure TForm40.Immobilisation(Sender: TObject);
begin
  AsehoyFicheImmo(Commun.SocieteChemin.Value);
end;

procedure TForm40.ParaLivraisonsoimme1Click(Sender: TObject);
begin
  FDeclare.Asehoy(4);
end;

procedure TForm40.Rimputationcomptable1Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Rimputationcomptable1.Caption,'&'),true) then exit;}
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(9);
  finally
    FEtatCourant.Free;
  end;

end;

procedure TForm40.REnum1Click(Sender: TObject);
var Num:Integer;
   Piece:string;
begin
  FInformat.Asehoy('Renumerotation des pièces ','PATIENTEZ....',1000);
  DASQL.SelJournal.close;
  DASQL.SelJournal.sql.clear;
  DASQL.SelJournal.sql.Add('select * from Journal  ');
  DASQL.SelJournal.sql.Add('where (CodeJrnx='''+edit12.text+''')');
  DASQL.SelJournal.sql.Add('and (periode=:a)');
  DASQL.SelJournal.close;
  DASQL.SelJournal.parameters[0].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
  DASQL.SelJournal.open;
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
  num:=684;
  ShowMessage(inttostr(DASQL.SelJournal.recordcount));
  if DASQL.SelJournal.recordcount=0 then exit;
  while not DASQL.SelJournal.EOF do
  begin
    FInformat.Asehoy(inttostr(num),'PATIENTEZ....',1000);
    Piece:=EDIT12.text +Copy(DASQL.SelJournalPeriode.Value,6,2)+
               FormatFloat('0000',Num);
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.parameters[0].Value:=DASQL.SelJournalCode.Value;
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
      DASQL.SelEltJrn.first;
      DASQL.SelEltJrn.edit;
      DASQL.SelEltJrnJournal.Value:=Piece;
      DASQL.SelEltJrn.post;
    end;
    DASQL.SelJournal.edit;
    DASQL.SelJournalCode.Value:=Piece;
    DASQL.SelJournal.post;
    Num:=Num+1;
    DASQL.SelJournal.requery;
    DASQL.SelJournal.First;
    if DASQL.SelJournalCode.Value>'CS120684' THEN BREAK;
  end;
  FInformat.close;
  PStockee.RSelJour.close;
  PStockee.RSelJour.open;
end;


procedure TForm40.Rsumcriture1Click(Sender: TObject);
var compte,periode,code:string;
  Debit,credit:real;
  Misy:boolean;
  i,nbpoint,total:integer;
  stpoint:string;
begin
  {--- Initialisation : suppression ---}
  Special.JrResum.Open;
  Special.JrResum.First;
  while not Special.JrResum.EOF do Special.JrResum.delete;
  Special.EltResum.Open;
  Special.EltResum.First;
  while not Special.EltResum.EOF do Special.EltResum.delete;
  {-----------Affichage---------------}
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);

  dASQL.Resume.Close;
  dASQL.Resume.SQL.Clear;
  dASQL.Resume.SQL.Add('select * from selJour');
  dASQL.Resume.SQL.Add('order by periode, compte');
  dASQL.Resume.Open;
  total:=dASQL.Resume.RecordCount;
  dASQL.Resume.first;
  periode:=dASQL.ResumePeriode.Value;
  Compte:=dASQL.ResumeCompteG.Value;
  Code:='OD'+copy(periode,6,2)+copy(Commun.SocieteCode.Value,1,4);
  Debit:=0;
  Credit:=0;
  misy:=false;
  //exit;
  while not dASQL.Resume.EOF do
  begin
    {----------Test erreur------------}
    if length(dASQL.ResumePeriode.Value)<>7 then showmessage(dASQL.ResumeJournal.Value);
    {-----------Affichage-------------}
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    {---------------------------------}

    if  dASQL.ResumeDebit.Value='D' then
      Debit:=Debit+dASQL.ResumeMontant.Value
    else
      Credit:=Credit+dASQL.ResumeMontant.Value;
    dASQL.Resume.Next;

    {--Test fin de grp ecriture----- si fin ecriture elt}

    if (Compte<>dASQL.ResumeCompteG.Value)or
        (periode<>dASQL.ResumePeriode.Value)or
         (dASQL.Resume.eof) then
    begin
      misy:=true;
      if Debit<>0 then
      begin
        special.EltResum.Insert;
        special.EltResumJournal.Value:=Code;
        special.EltResumCompte.Value:=Compte;
        special.EltResumDebit.Value:='D';
        special.EltResumMontant.Value:=round(Debit);
        special.EltResum.Post;
      end;
      if Credit<>0 then
      begin
        special.EltResum.Insert;
        special.EltResumJournal.Value:=Code;
        special.EltResumCompte.Value:=Compte;
        special.EltResumDebit.Value:='C';
        special.EltResumMontant.Value:=round(Credit);
        special.EltResum.Post;
      end;
      Debit:=0;
      Credit:=0;
      Compte:=dASQL.ResumeCompteG.Value;
    end;
    {--- si elt existe ecriture journal ---------------}
    if (periode<>dASQL.ResumePeriode.Value)or dASQL.Resume.EOF then
    begin
      if misy then
      begin
        try
          Special.JrResum.Insert;
          Special.JrResumCode.Value:=code;
          Special.JrResumCodeJrnx.Value:='OD';
          Special.JrResumPeriode.Value:=Periode;
          Special.JrResum.Post;
        except
          On EDataBaseError do
          begin
            ShowMessage('Deux fois:'+code+' '+Periode);
            Special.JrResum.Cancel;
          end;
        end;
      end;
      misy:=false;
      periode:=dASQL.ResumePeriode.Value;
      Code:='OD'+copy(periode,6,2)+copy(Commun.SocieteCode.Value,1,4);
    end;
  end;
  FInformat.Close;
end;

procedure TForm40.Pouretatsfinanciers1Click(Sender: TObject);
var compte,periode,code:string;
  Debit,credit:real;
  i,nbpoint,total:integer;
  stpoint:string;
begin
  Special.JrFinRe.Open;
  Special.JrFinRe.First;
  while not Special.JrFinRe.EOF do Special.JrFinRe.delete;
  Special.EltFinRe.Open;
  Special.EltFinRe.First;
  while not Special.EltFinRe.EOF do Special.EltFinRe.delete;

  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);

  dASQL.Resume.Close;
  dASQL.Resume.SQL.Clear;
  dASQL.Resume.SQL.Add('select * from SelJour ');
  dASQL.Resume.SQL.Add('order by compte');

  dASQL.Resume.Open;
  total:=dASQL.Resume.RecordCount;
  dASQL.Resume.first;

  periode:=dASQL.ResumePeriode.Value;
  Compte:=dASQL.ResumeCompte.Value;
  Code:='OD'+copy(periode,1,4)+copy(Commun.SocieteCode.Value,1,4);

  Special.JrFinRe.Insert;
  Special.JrFinReCode.Value:=code;
  Special.JrFinReCodeJrnx.Value:='OD'+copy(periode,3,2)+copy(Commun.SocieteCode.Value,1,4);
  Special.JrFinRePeriode.Value:=Periode;
  Special.JrFinRe.Post;

  Debit:=0;
  Credit:=0;
  while not dASQL.Resume.EOF do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;

    if  dASQL.ResumeDebit.Value='D' then
      Debit:=Debit+dASQL.ResumeMontant.Value
    else
      Credit:=Credit+dASQL.ResumeMontant.Value;

    dASQL.Resume.Next;

{    if dASQL.Resume.EOF then break;}

    if (Compte<>dASQL.ResumeCompte.Value)or dASQL.Resume.eof then
    begin
      if Debit<>0 then
      begin
        special.EltFinRe.Insert;
        special.EltFinReJournal.Value:=Code;
        special.EltFinReCompte.Value:=Compte;
        special.EltFinReDebit.Value:='D';
        special.EltFinReMontant.Value:=Debit;
        special.EltFinRe.Post;
      end;
      if Credit<>0 then
      begin
        special.EltFinRe.Insert;
        special.EltFinReJournal.Value:=Code;
        special.EltFinReCompte.Value:=Compte;
        special.EltFinReDebit.Value:='C';
        special.EltFinReMontant.Value:=Credit;
        special.EltFinRe.Post;
      end;
      Debit:=0;
      Credit:=0;
      Compte:=dASQL.ResumeCompte.Value;
    end;
  end;
  FInformat.Close;
end;

procedure TForm40.Livraisonsoimme1Click(Sender: TObject);
begin
  FDeclare.Asehoy(4);
end;

procedure TForm40.Normal1Click(Sender: TObject);
var mtdebit,mtcredit:real;
  i,nbpoint,total:integer;
  stpoint:string;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
  special.Journal.Open;
  total:=Special.Journal.RecordCount;
  special.Journal.first;
  while not special.Journal.eof do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    DASQL.SelEltJrn.Close;
    DASQL.SelEltJrn.parameters[0].Value:=special.JournalCode.Value;
    DASQL.SelEltJrn.open;
    mtdebit:=0;mtcredit:=0;
    while not DASQL.SelEltJrn.eof do
    begin
      if  DASQL.SelEltJrnDebit.Value='D' then
        mtdebit:=mtdebit+DASQL.SelEltJrnMontant.Value
      else
        mtcredit:=mtcredit+DASQL.SelEltJrnMontant.Value;
      DASQL.SelEltJrn.Next;
    end;
    if mtdebit<>mtcredit then showmessage('ecriture non soldé'+special.JournalCode.Value);
    special.Journal.next;
  end;
  FInformat.Close;
end;

procedure TForm40.Rsum1Click(Sender: TObject);
var mtdebit,mtcredit:real;
  i,nbpoint,total:integer;
  stpoint:string;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltResum where Journal=:a');
  special.JrResum.Open;
  total:=Special.JrResum.RecordCount;
  special.JrResum.first;
  while not special.JrResum.eof do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    DASQL.SelEltJrn.Close;
    DASQL.SelEltJrn.parameters[0].Value:=special.JrResumCode.Value;
    DASQL.SelEltJrn.open;
    mtdebit:=0;mtcredit:=0;
    while not DASQL.SelEltJrn.eof do
    begin
      if  DASQL.SelEltJrnDebit.Value='D' then
        mtdebit:=mtdebit+DASQL.SelEltJrnMontant.Value
      else
        mtcredit:=mtcredit+DASQL.SelEltJrnMontant.Value;
      DASQL.SelEltJrn.Next;
    end;
    if mtdebit<>mtcredit then showmessage('ecriture non soldé'+special.JrResumCode.Value);
    special.JrResum.next;
  end;
  FInformat.Close;
end;

procedure TForm40.Conformitcriture1Click(Sender: TObject);
var i,nbpoint,total:integer;
  stpoint:string;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  total:=Special.Journal.RecordCount;
  Special.Journal.Open;
  Special.Journal.First;
  while not Special.Journal.EOF do
  begin
    if length(Special.JournalPeriode.Value)<>7 then
      ShowMessage('Longeur période:'+dASQL.ResumeJournal.Value);
    if length(Special.JournalCodeJrnx.Value)=0 then
      ShowMessage('Vérifier l''existence du journal:'+
                 Special.JournalCodeJrnx.Value+' dans '+
                 Special.JournalCode.Value);
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    Special.Journal.Next;
  end;
end;

procedure TForm40.Global1Click(Sender: TObject);
var mtdebit,mtcredit:real;
  i,nbpoint,total:integer;
  stpoint:string;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltFinRe where Journal=:a');
  special.JrFinRe.Open;
  total:=Special.JrFinRe.RecordCount;
  special.JrFinRe.first;
  while not special.JrFinRe.eof do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    DASQL.SelEltJrn.Close;
    DASQL.SelEltJrn.parameters[0].Value:=special.JrFinReCode.Value;
    DASQL.SelEltJrn.open;
    mtdebit:=0;mtcredit:=0;
    while not DASQL.SelEltJrn.eof do
    begin
      if  DASQL.SelEltJrnDebit.Value='D' then
        mtdebit:=mtdebit+DASQL.SelEltJrnMontant.Value
      else
        mtcredit:=mtcredit+DASQL.SelEltJrnMontant.Value;
      DASQL.SelEltJrn.Next;
    end;
    if mtdebit<>mtcredit then showmessage('ecriture non soldé'+special.JrFinReCode.Value);
    special.JrFinRe.next;
  end;
  FInformat.Close;
end;

procedure TForm40.Vrifiercompte1Click(Sender: TObject);
var i,nbpoint,total:integer;
  stpoint:string;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);

  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltJrn');
  DASQL.SelEltJrn.open;
  total:=DASQL.SelEltJrn.RecordCount;
  while not DASQL.SelEltJrn.EOF do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;

    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=DASQL.SelEltJrnCompte.Value;
    DASQL.SelNumCpt.open;
    if DASQL.SelNumCpt.RecordCount=0 then
    begin
      try
        Special.NonOuver.Insert;
        special.NonOuverCompte.Value:=DASQL.SelEltJrnCompte.Value;
        special.NonOuver.post;
      except
        On EDataBaseError do
        begin
          special.NonOuver.Cancel;
        end;
      end;
    end;
    DASQL.SelEltJrn.Next;
  end;
end;

procedure TForm40.Clture1Click(Sender: TObject);
var total:real;
  Year,Month,Day:Word;
  i,mrConfirm,mrAide:integer;
begin
  mrConfirm:=MessageDlg('Une fois clôturé vous ne pouvez plus faire des modifications ou ajout d''écriture,'+
      'Voulez-vous vraiement clôturé ?',MtConfirmation,[mbYes,mbNo,mbAll],0);
  case mrConfirm of
    mrNo   : Exit;
    mrAll  :
      begin
        mrAide:=FAide.Asehoy('Clôture');
        case mrAide of
          mrOK   :Exit;
          mrRetry:;
        end;
      end;
    mrYes  :;
  end;

  // Test existance journaûx de clôture
  DASQL.QJournaux.Close;
  DASQL.QJournaux.Parameters[0].Value:='CL';
  DASQL.QJournaux.Open;
  if DASQL.QJournaux.RecordCount=0 then
  begin
    ShowMessage('Créer le journal clôture ''CL'' et le compte de clôture avant de poursuivre');
    exit;
  end;

  // Il faut paramétrer le compte de clôture avant de poursuivre
  if DASQL.QJournauxCompte.Value<'0' then
  begin
    ShowMessage('Créer le compte de clôture dans le journal avant de poursuivre');
    exit;
  end;

  // Lancer la balance générale avant de faire la clôture et editer si besoin
  if MessageDlg('La balance générale avant clôture est-elle déjà editée ?',
                  MtConfirmation,[mbYes,mbNo],0)=mrNo then exit;

  if MessageDlg('Etes-vous sûr de la date de fin d''exercice : '+
                  FormatDateTime('dd/mm/yyyy',Commun.SocieteExerFin.Value),
                  MtConfirmation,[mbYes,mbNo],0)=mrNo then exit;

    DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);

    // Prise en compte du fichier PrepCons qui est créé pendant le lancement du balance général
    special.TCloture.Close;
    special.TCloture.Connection:=DaConnect.C_Document;
    special.TCloture.TableName:='PrepCons';

    // Création de l'entête de l'écriture CL0001
    total:=0;
    try
      Special.Journal.Open;
      Special.Journal.Insert;
      Special.JournalCode.Value:='CL'+FormatFloat('00',Month)+'0001';
      Special.JournalCodeJrnx.Value:='CL';
      Special.JournalPeriode.Value:= inttostr(Year)+'/'+FormatFloat('00',Month);
      Special.JournalDateEsc.Value:= Commun.SocieteExerFin.Value;
      Special.JournalJour.Value:=1;
      Special.Journal.Post;
    except
      On EDataBaseError do
      begin
        Special.Journal.Cancel;
        ShowMessage('Clôture déjà lancée');
        exit;
      end;
    end;

    // Création de ligne de l'écriture CL0001 6 à 7 + 120100000
    Special.ToutEltJrn.Open;
    special.TCloture.open;
    special.TCloture.first;

    PStockee.RIncreEltJrn.Open;
    PStockee.RIncreEltJrn.Requery;
    i:=0;

    while not special.TCloture.EOF do
    begin
      if ((special.TClotureDEBIT.Value>0) or(special.TClotureCredit.Value>0))
         and (special.TClotureCOMPTE.Value>'6') then
      begin
        Special.ToutEltJrn.Insert;
        i:=i+1;
        Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value+i;
        Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0001';;
        Special.ToutEltJrnCompte.Value:=special.TClotureCOMPTE.Value;
        Special.ToutEltJrnLibelle.Value:='Clôture';
        Special.ToutEltJrnMontant.Value:=abs(special.TClotureCREDIT.Value - special.TClotureDEBIT.Value);
        if special.TClotureCREDIT.Value> special.TClotureDEBIT.Value then
          Special.ToutEltJrnDebit.Value:='D'
        else
          Special.ToutEltJrnDebit.Value:='C';
        Special.ToutEltJrn.Post;

        total:= total + special.TClotureCREDIT.Value-special.TClotureDEBIT.Value;
      end;
      special.TCloture.next;
    end;
    i:=i+1;

    Special.ToutEltJrn.Insert;
    Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value+i;
    Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0001';
    Special.ToutEltJrnCompte.Value:=DASQL.QJournauxCompte.Value;
    Special.ToutEltJrnLibelle.Value:='Clôture';
    Special.ToutEltJrnMontant.Value:=abs(Total);
    if Total> 0 then
      Special.ToutEltJrnDebit.Value:='C'
    else
      Special.ToutEltJrnDebit.Value:='D';
    Special.ToutEltJrn.Post;


    try
      Special.Journal.Open;
      Special.Journal.Insert;
      Special.JournalCode.Value:='CL'+FormatFloat('00',Month)+'0002';
      Special.JournalCodeJrnx.Value:='CL';
      Special.JournalPeriode.Value:= inttostr(Year)+'/'+FormatFloat('00',Month);
      Special.JournalDateEsc.Value:= Commun.SocieteExerFin.Value;
      Special.JournalJour.Value:=1;
      Special.Journal.Post;
    except
      On EDataBaseError do
      begin
        Special.Journal.Cancel;
        ShowMessage('Clôture déjà lancée');
        exit;
      end;
    end;

    PStockee.RIncreEltJrn.Open;
    PStockee.RIncreEltJrn.Requery;

    Special.ToutEltJrn.Insert;
    Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value +1;
    Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0002';
    Special.ToutEltJrnCompte.Value:=DASQL.QJournauxCompte.Value;
    Special.ToutEltJrnLibelle.Value:='Clôture';
    Special.ToutEltJrnMontant.Value:=abs(Total);
    if Total> 0 then
      Special.ToutEltJrnDebit.Value:='D'
    else
      Special.ToutEltJrnDebit.Value:='C';
    Special.ToutEltJrn.Post;

    Special.ToutEltJrn.Insert;
    Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value +2;
    Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0002';
    Special.ToutEltJrnCompte.Value:='12010000';
    Special.ToutEltJrnLibelle.Value:='Clôture';
    Special.ToutEltJrnMontant.Value:=abs(Total);
    if Total> 0 then
      Special.ToutEltJrnDebit.Value:='C'
    else
      Special.ToutEltJrnDebit.Value:='D';
    Special.ToutEltJrn.Post;

    ShowMessage('Clôture terminée');
end;


procedure TForm40.OPration1Click(Sender: TObject);
begin
  FSelPerio.Asehoy;
end;

procedure TForm40.Paramtrage1Click(Sender: TObject);
begin
  FDeclare.Asehoy(5);
end;

procedure TForm40.VerifierTiers1Click(Sender: TObject);
var stPoint,valeur:string;
  i,nbpoint,total:integer;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  Special.Journal.Open;
  total:=Special.Journal.RecordCount;
  Special.Journal.First;
  while not Special.Journal.EOF do
  begin
    FInformat.Show;
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    if length(Special.JournalTiers.Value)>0 then
    begin
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=Special.JournalTiers.Value  ;
      DASQL.SelNumCpt.Open;
      if DASQL.SelNumCpt.eof then
      begin
        valeur:=inputbox('Vérification','Le compte dans la zone tiers du '+Special.JournalCode.Value+
          ' n''existe pas ',Special.JournalTiers.Value);
        Special.Journal.Edit;
        Special.JournalTiers.Value:=valeur;
        Special.Journal.Post;
      end;
    end;
    Special.Journal.Next;
  end;
  FInformat.close;
end;

procedure TForm40.MettreminusculeCompte1Click(Sender: TObject);
var Cmpt_a,Cmpt_b:string;
begin
  DASQL.NumCompte.close;
  DASQL.NumCompte.SQL.Clear;
  DASQL.NumCompte.SQL.Add('select * from NumCpt');
  DASQL.NumCompte.SQL.Add('where (NumCpt>=:a)');
  DASQL.NumCompte.SQL.Add('and (NumCpt<=:b)');

  Cmpt_a := InputBox('Compta', 'Compte de :', '0');
  DASQL.NumCompte.Parameters[0].Value:=Cmpt_a;
  Cmpt_b := InputBox('Compta', 'Compte à :', 'Z');
  DASQL.NumCompte.Parameters[0].Value:=Cmpt_b+'Z';
  DASQL.NumCompte.Open;
  if MessageDlg('Voulez-vous continuer ou editer ?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
  begin
    FEditConsol.Asehoy(0);
    exit;
  end;
  DASQL.NumCompte.first;
  while not DASQL.NumCompte.EOF do
  begin
    DASQL.NumCompte.Edit;
    DASQL.NumCompteIntitule.Value:=Minuscule(DASQL.NumCompteIntitule.Value,True);
    DASQL.NumCompte.Post;
    DASQL.NumCompte.Next
  end ;
  ShowMessage('Opération terminé');
end;

procedure TForm40.Consolid1Click(Sender: TObject);
var Cmpt_a,Cmpt_b:string;
begin
  OpenDialog1.Filter:='Fichier DBase|*';
  OpenDialog1.InitialDir:=Commun.SocieteChemin.Value;
  OpenDialog1.FileName:='consolid';
  if not OpenDialog1.Execute then exit;

  DASQL.SelConsolid.Close;
  DASQL.SelConsolid.SQL.Clear;
  DASQL.SelConsolid.SQL.Add('Select * from ');
  DASQL.SelConsolid.SQL.Add(''''+OpenDialog1.FileName+''' ');
  DASQL.SelConsolid.SQL.Add('where (compte>=:a)');
  DASQL.SelConsolid.SQL.Add('and (compte<=:b)');
  DASQL.SelConsolid.Close;
  Cmpt_a := InputBox('Compta', 'Comppte de :', '0');
  DASQL.SelConsolid.Parameters[0].Value:=Cmpt_a;
  Cmpt_b := InputBox('Compta', 'Compte à :', 'Z');
  DASQL.SelConsolid.Parameters[0].Value:=Cmpt_b+'Z';
  DASQL.SelConsolid.Open;
  if MessageDlg('Voulez-vous continuer ou editer ?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
  begin
    FEditConsol.Asehoy(1);
    exit;
  end;
  DASQL.SelConsolid.first;
  while not DASQL.SelConsolid.EOF do
  begin
    DASQL.SelConsolid.Edit;
    DASQL.SelConsolidIntitule.Value:=Minuscule(DASQL.SelConsolidIntitule.Value,True);
    DASQL.SelConsolid.Post;
    DASQL.SelConsolid.Next
  end ;
  ShowMessage('Opération terminé');
end;

procedure TForm40.OuvrirEtats1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFOuvEtat, FOuvEtat);
    FOuvEtat.showModal;
  finally
    FOuvEtat.free;
  end;
end;

procedure TForm40.rectif1Click(Sender: TObject);
begin
  special.GroupCpt.Open;
  special.GroupCpt.First;
  while not special.GroupCpt.EOF do
  begin
    special.GroupCpt.edit;
    //special.GroupCptEF.Value:=special.GroupCptEFUnion.Value;
    special.GroupCpt.post;
    special.GroupCpt.Next;
  end;

end;

procedure TForm40.cREERDIVERS1Click(Sender: TObject);
begin
  Special.NumCp.Open;
  Special.NumCp.fIRST;
  special.TNumDiver.open;
  while not Special.NumCp.Eof do
  begin
    try
      special.TNumDiver.Insert;
      special.TNumDiverNumCpt.Value :=Special.NumCpNumCpt.Value ;
      special.TNumDiver.post;
    except
      On EdataBaseError do special.TNumDiver.Cancel;
    end;
    Special.NumCp.Next;
  end;

end;

procedure TForm40.Edit7Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=3;
end;

procedure TForm40.Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  {Image12.Visible := ((14<x)and(x<64))and((14<y)and(y<64));
  Image3.Visible  := ((x>14)and(x<64))and((95<y)and(y<145));
  Image9.Visible  := ((x>14)and(x<64))and((165<y)and(y<204));  }
end;

procedure TForm40.Label11Click(Sender: TObject);
begin
  FParametr.Asehoy;
end;

procedure TForm40.raduireFmgAriary1Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiment convertir en Ariary',mtConfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    PStockee.Convertion.SQL.Clear;
    PStockee.Convertion.SQL.Add('UPDATE EltJrn SET Montant = round(Montant/5)');
    PStockee.Convertion.ExecSQL;
  end;
  showMessage('Conversion en Ariary Terminé');
end;

procedure TForm40.raduireAriaryenFmg1Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiment convertir en Ariary',mtConfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    PStockee.Convertion.SQL.Clear;
    PStockee.Convertion.SQL.Add('UPDATE EltJrn SET Montant = Montant*5');
    PStockee.Convertion.ExecSQL;
  end;
  showMessage('Conversion en Fmg Terminé');
end;

procedure TForm40.VrificationDbitCrdit1Click(Sender: TObject);
begin
  FConvertMonnaie.QuickRep1.preview;
end;

procedure TForm40.BordereauderemboursementTVA1Click(Sender: TObject);
begin
  FRembTVA.Asehoy;
end;

procedure TForm40.Aidesurlaclture1Click(Sender: TObject);
begin
  FAide.Asehoy('Clôture');
end;

procedure TForm40.Prparation1Click(Sender: TObject);
begin
  DaConsolide.CreerBalanceConsolidee(Commun.SocieteCode.Value);
  DaConsolide.BalConsolide.Open;
end;

procedure TForm40.Timer1Timer(Sender: TObject);
begin
  PStockee.qGrillerDec.Close;
  PStockee.qGrillerDec.Parameters[0].Value:=Commun.SocieteCode.Value;
  PStockee.qGrillerDec.Open;
  if PStockee.qGrillerDec.Eof then
    GrillerSiModifSaisie(Commun.SocieteCode.Value,false)
  else
  begin
    Produitslocaux1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    MarchandisevendueMadagascar1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    Prestationdeservice1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    Nouvelledclaration1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
    BordereauderemboursementTVA1.enabled:=PStockee.qGrillerDecGriller.Value<>'0';
  end;
end;

procedure TForm40.Label_1Click(Sender: TObject);
begin
  ClickMenu(1);
end;

procedure TForm40.Label_2Click(Sender: TObject);
begin
  ClickMenu(2);
end;

procedure TForm40.Label_3Click(Sender: TObject);
begin
  ClickMenu(3);
end;

procedure TForm40.Label_4Click(Sender: TObject);
begin
  ClickMenu(4);

end;

procedure TForm40.Label_5Click(Sender: TObject);
begin
  ClickMenu(5);
end;

procedure TForm40.SaisieStandard;
begin
  Special.journaux.open;
  if Special.journaux.recordcount=0 then
  begin
    MessageDlg('Construire d''abord des journaux centralisateurs',mtConfirmation,[mbok],0);
    exit;
  end;

  PStockee.RLeDernier.Close;
  PStockee.RLeDernier.parameters[0].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
  PStockee.RLeDernier.parameters[1].Value:=edit12.text;
  PStockee.RLeDernier.Open;
  AsehoyEcriture(1);
end;

procedure TForm40.Label19Click(Sender: TObject);
begin
  ForceeLettrage:=false;
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Lettrage1.Caption,'&'),true) then exit;}
  AsehoyLettrage(0,false,Commun.SocieteCode.Value,'');
end;

procedure TForm40.Label21Click(Sender: TObject);
begin
  AsehoyEcriture(0);
end;

procedure TForm40.Label_6Click(Sender: TObject);
begin
  ClickMenu(6);

end;

procedure TForm40.Label_7Click(Sender: TObject);
begin
  ClickMenu(7);

end;

procedure TForm40.Label_8Click(Sender: TObject);
begin
  ClickMenu(8);

end;

procedure TForm40.Label_9Click(Sender: TObject);
begin
  ClickMenu(9);

end;

procedure TForm40.Label_10Click(Sender: TObject);
begin
  ClickMenu(10);
end;

procedure TForm40.Label_1MouseEnter(Sender: TObject);
begin
  MouseEnter(1);
end;

procedure TForm40.Label_2MouseEnter(Sender: TObject);
begin
  MouseEnter(2);
end;

procedure TForm40.Label_3MouseEnter(Sender: TObject);
begin
  MouseEnter(3);

end;

procedure TForm40.Label_4MouseEnter(Sender: TObject);
begin
  MouseEnter(4);

end;

procedure TForm40.Label_5MouseEnter(Sender: TObject);
begin
  MouseEnter(5);

end;

procedure TForm40.Label_6MouseEnter(Sender: TObject);
begin
  MouseEnter(6);

end;

procedure TForm40.Label_7MouseEnter(Sender: TObject);
begin
  MouseEnter(7);

end;

procedure TForm40.Label_8MouseEnter(Sender: TObject);
begin
  MouseEnter(8);

end;

procedure TForm40.Label_9MouseEnter(Sender: TObject);
begin
  MouseEnter(9);

end;

procedure TForm40.Label_10MouseEnter(Sender: TObject);
begin
  MouseEnter(10);

end;

procedure TForm40.Label41Click(Sender: TObject);
begin
    FDeclare.Asehoy(MODE_CENTRAL_tva);
end;

procedure TForm40.Label41MouseEnter(Sender: TObject);
begin
  Label41.Font.Color := clRed
end;

procedure TForm40.Label41MouseLeave(Sender: TObject);
begin
  Label41.Font.Color := clWhite

end;

procedure TForm40.Label60Click(Sender: TObject);
begin
  FTVADescript.showModal;
end;

procedure TForm40.Shape_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(1);
end;

procedure TForm40.Shape_2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(2);
end;

procedure TForm40.Shape_3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(3);
end;

procedure TForm40.Shape_4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(4);

end;

procedure TForm40.Shape_5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(5);

end;

procedure TForm40.Shape_6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(6);

end;

procedure TForm40.Shape_7ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  ClickMenu(7);

end;

procedure TForm40.Shape_8ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  ClickMenu(8);

end;

procedure TForm40.Shape_9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(9);

end;

procedure TForm40.Shape_10MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(10);
end;

procedure TForm40.Label42MouseEnter(Sender: TObject);
begin
  Label42.Font.Color := clRed

end;

procedure TForm40.Label42MouseLeave(Sender: TObject);
begin
  Label42.Font.Color := clWhite

end;

procedure TForm40.Label60MouseEnter(Sender: TObject);
begin
  Label60.Font.Color := clRed

end;

procedure TForm40.Label61MouseEnter(Sender: TObject);
begin
  Label61.Font.Color := clRed

end;

procedure TForm40.Label62MouseEnter(Sender: TObject);
begin
  Label62.Font.Color := clRed

end;

procedure TForm40.Label63MouseEnter(Sender: TObject);
begin
  Label62.Font.Color := clRed

end;

procedure TForm40.Label60MouseLeave(Sender: TObject);
begin
  Label60.Font.Color := clWhite

end;

procedure TForm40.Label61MouseLeave(Sender: TObject);
begin
  Label61.Font.Color := clWhite

end;

procedure TForm40.Label62MouseLeave(Sender: TObject);
begin
  Label62.Font.Color := clWhite

end;

procedure TForm40.Label63MouseLeave(Sender: TObject);
begin
  Label63.Font.Color := clWhite

end;

procedure TForm40.Label45MouseEnter(Sender: TObject);
begin
  Label45.Font.Color := clRed

end;

procedure TForm40.Label46MouseEnter(Sender: TObject);
begin
  Label46.Font.Color := clRed

end;

procedure TForm40.Label54MouseEnter(Sender: TObject);
begin
  Label54.Font.Color := clRed

end;

procedure TForm40.Label55MouseEnter(Sender: TObject);
begin
  Label55.Font.Color := clRed

end;

procedure TForm40.Label58MouseEnter(Sender: TObject);
begin
  Label58.Font.Color := clRed

end;

procedure TForm40.Label59MouseEnter(Sender: TObject);
begin
  Label59.Font.Color := clRed

end;

procedure TForm40.Label45MouseLeave(Sender: TObject);
begin
  Label45.Font.Color := clWhite

end;

procedure TForm40.Label46MouseLeave(Sender: TObject);
begin
  Label46.Font.Color := clWhite

end;

procedure TForm40.Label54MouseLeave(Sender: TObject);
begin
  Label54.Font.Color := clWhite

end;

procedure TForm40.Label55MouseLeave(Sender: TObject);
begin
  Label55.Font.Color := clWhite

end;

procedure TForm40.Label58MouseLeave(Sender: TObject);
begin
  Label58.Font.Color := clWhite

end;

procedure TForm40.Label59MouseLeave(Sender: TObject);
begin
  Label59.Font.Color := clWhite

end;

procedure TForm40.Label49MouseLeave(Sender: TObject);
begin
  Label49.Font.Color := clWhite

end;

procedure TForm40.Label50MouseLeave(Sender: TObject);
begin
  Label50.Font.Color := clWhite

end;

procedure TForm40.Label53MouseLeave(Sender: TObject);
begin
  Label53.Font.Color := clWhite

end;

procedure TForm40.Label49MouseEnter(Sender: TObject);
begin
  Label49.Font.Color := clRed

end;

procedure TForm40.Label50MouseEnter(Sender: TObject);
begin
  Label50.Font.Color := clRed

end;

procedure TForm40.Label53MouseEnter(Sender: TObject);
begin
  Label53.Font.Color := clRed

end;

procedure TForm40.Label33MouseEnter(Sender: TObject);
begin
  Label33.Font.Color := clRed

end;

procedure TForm40.Label34MouseEnter(Sender: TObject);
begin
  Label34.Font.Color := clRed

end;

procedure TForm40.Label51MouseEnter(Sender: TObject);
begin
  Label51.Font.Color := clRed

end;

procedure TForm40.Label52MouseEnter(Sender: TObject);
begin
  Label52.Font.Color := clRed

end;

procedure TForm40.Label33MouseLeave(Sender: TObject);
begin
  Label33.Font.Color := clWhite

end;

procedure TForm40.Label34MouseLeave(Sender: TObject);
begin
  Label34.Font.Color := clWhite

end;

procedure TForm40.Label51MouseLeave(Sender: TObject);
begin
  Label51.Font.Color := clWhite

end;

procedure TForm40.Label52MouseLeave(Sender: TObject);
begin
  Label52.Font.Color := clWhite

end;

procedure TForm40.Label37MouseLeave(Sender: TObject);
begin
  Label37.Font.Color := clWhite

end;

procedure TForm40.Label37MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label49.Font.Color := clWhite

end;

procedure TForm40.Label38MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label49.Font.Color := clWhite

end;

procedure TForm40.Label37MouseEnter(Sender: TObject);
begin
  Label37.Font.Color := clRed

end;

procedure TForm40.Label38MouseEnter(Sender: TObject);
begin
  Label38.Font.Color := clRed

end;

procedure TForm40.Label38MouseLeave(Sender: TObject);
begin
  Label38.Font.Color := clWhite

end;

procedure TForm40.Label29MouseEnter(Sender: TObject);
begin
  Label29.Font.Color := clRed

end;

procedure TForm40.Label30MouseEnter(Sender: TObject);
begin
  Label30.Font.Color := clRed

end;

procedure TForm40.Label29MouseLeave(Sender: TObject);
begin
  Label29.Font.Color := clWhite

end;

procedure TForm40.Label30MouseLeave(Sender: TObject);
begin
  Label30.Font.Color := clWhite

end;

procedure TForm40.Label26MouseLeave(Sender: TObject);
begin
  Label26.Font.Color := clWhite

end;

procedure TForm40.Label25MouseLeave(Sender: TObject);
begin
  Label25.Font.Color := clWhite

end;

procedure TForm40.Label26MouseEnter(Sender: TObject);
begin
  Label26.Font.Color := clRed

end;

procedure TForm40.Label25MouseEnter(Sender: TObject);
begin
  Label25.Font.Color := clRed

end;

procedure TForm40.Label27MouseEnter(Sender: TObject);
begin
  Label27.Font.Color := clRed

end;

procedure TForm40.Label28MouseEnter(Sender: TObject);
begin
  Label28.Font.Color := clRed

end;

procedure TForm40.Label28MouseLeave(Sender: TObject);
begin
  Label28.Font.Color := clWhite

end;

procedure TForm40.Label27MouseLeave(Sender: TObject);
begin
  Label27.Font.Color := clWhite

end;

procedure TForm40.Label22MouseLeave(Sender: TObject);
begin
  Label22.Font.Color := clWhite

end;

procedure TForm40.Label23MouseLeave(Sender: TObject);
begin
  Label23.Font.Color := clWhite

end;

procedure TForm40.Label24MouseLeave(Sender: TObject);
begin
  Label24.Font.Color := clWhite

end;

procedure TForm40.Label22MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label22.Font.Color := clWhite

end;

procedure TForm40.Label23MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label23.Font.Color := clWhite

end;

procedure TForm40.Label24MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label24.Font.Color := clWhite

end;

procedure TForm40.Label22MouseEnter(Sender: TObject);
begin
  Label22.Font.Color := clRed

end;

procedure TForm40.Label23MouseEnter(Sender: TObject);
begin
  Label23.Font.Color := clRed

end;

procedure TForm40.Label24MouseEnter(Sender: TObject);
begin
  Label24.Font.Color := clRed

end;

procedure TForm40.Label21MouseEnter(Sender: TObject);
begin
  Label21.Font.Color := clRed

end;

procedure TForm40.Label20MouseEnter(Sender: TObject);
begin
  Label20.Font.Color := clRed

end;

procedure TForm40.Label19MouseEnter(Sender: TObject);
begin
  Label19.Font.Color := clRed

end;

procedure TForm40.Label19MouseLeave(Sender: TObject);
begin
  Label19.Font.Color := clWhite

end;

procedure TForm40.Label20MouseLeave(Sender: TObject);
begin
  Label20.Font.Color := clWhite

end;

procedure TForm40.Label21MouseLeave(Sender: TObject);
begin
  Label21.Font.Color := clWhite

end;

procedure TForm40.Label22Click(Sender: TObject);
var k:string;
begin
  AsehoyLstCpt('10',Commun.SocieteChemin.Value,false,true);
  GrillerSiModifSaisie(Commun.SocieteChemin.Value,False);
end;

procedure TForm40.Label23Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then exit;
  DaConnect.ChangeCheminConnection(DaConnect.C_Temporaire,OpenDialog1.FileName);
  dASQL.SourcePlan.Close;
  dASQL.SourcePlan.Connection :=DaConnect.C_Temporaire ;
  dASQL.SourcePlan.Open;
  Special.NumCp.Open;
  special.TNumAdres.Open;
  special.TNumDiver.Open;
  dASQL.SourcePlan.Open;
  dASQL.SourcePlan.First;
  while not dASQL.SourcePlan.EOF do
  begin
    {showMessage(dASQL.SourcePlanNumCpt.Value+' '+dASQL.SourcePlanIntitule.Value);}
    try
      Special.NumCp.Insert;
      Special.NumCpNumCpt.Value:=dASQL.SourcePlanNumCpt.Value;
      Special.NumCpIntitule.Value:=dASQL.SourcePlanIntitule.Value;
      Special.NumCpDetail.Value:= dASQL.SourcePlanDetail.Value;
      Special.NumCpClasse.Value:= dASQL.SourcePlanClasse.Value;
      Special.NumCpGClasse.Value:= dASQL.SourcePlanClasse.Value;
      Special.NumCpExonere.Value:=dASQL.SourcePlanExonere.Value;
      Special.NumCpTotalisateur.Value:=dASQL.SourcePlanTotalisateur.Value;
      Special.NumCp.Post;
    except
      On EDataBaseError do
      begin
        Special.NumCp.Cancel;
      end;
    end;
    try
      special.TNumAdres.Insert;
      special.TNumAdresNumCpt.Value:=dASQL.SourcePlanNumCpt.Value;
      special.TNumAdresNom.Value:=dASQL.SourcePlanNom.Value;
      special.TNumAdresAdresse.Value:=dASQL.SourcePlanAdresse.Value;
      special.TNumAdres.Post;
    except
      On EDataBaseError do
      begin
        special.TNumAdres.Cancel;
      end;
    end;
    try
      special.TNumDiver.Insert;
      special.TNumDiverNumCpt.Value:=dASQL.SourcePlanNumCpt.Value;
      special.TNumDiverStatistique.Value:=dASQL.SourcePlanStatistique.Value;
      special.TNumDiverNIF.Value:=dASQL.SourcePlanNIF.Value;
      special.TNumDiverQuittance.Value:=dASQL.SourcePlanQuittance.Value;
      special.TNumDiverDateQuit.Value:=dASQL.SourcePlanDateQuit.Value;
      special.TNumDiverTP.Value:=dASQL.SourcePlantp.Value;
      special.TNumDiverdateTP.Value:=dASQL.SourcePlanDateTp.Value;
      special.TNumDiver.Post;
    except
      On EDataBaseError do
      begin
        special.TNumDiver.Cancel;
      end;
    end;
    dASQL.SourcePlan.Next;
  end;
end;

procedure TForm40.Label24Click(Sender: TObject);
begin
  dASQL.SourcePlan.Connection:=DaConnect.C_Document_1 ;
  Special.NumCp.Open;
  special.TNumAdres.Open;
  special.TNumDiver.Open;
  dASQL.SourcePlan.Open;
  dASQL.SourcePlan.First;
  while not dASQL.SourcePlan.EOF do
  begin
    {showMessage(dASQL.SourcePlanNumCpt.Value+' '+dASQL.SourcePlanIntitule.Value);}
    try
      Special.NumCp.Insert;
      Special.NumCpNumCpt.Value:=dASQL.SourcePlanNumCpt.Value;
      Special.NumCpIntitule.Value:=dASQL.SourcePlanIntitule.Value;
      Special.NumCpDetail.Value:= dASQL.SourcePlanDetail.Value;
      Special.NumCpClasse.Value:= dASQL.SourcePlanClasse.Value;
      Special.NumCpGClasse.Value:= dASQL.SourcePlanClasse.Value;
      Special.NumCpExonere.Value:=dASQL.SourcePlanExonere.Value;
      Special.NumCpTotalisateur.Value:=dASQL.SourcePlanTotalisateur.Value;
      Special.NumCp.Post;
    except
      On EDataBaseError do
      begin
        Special.NumCp.Cancel;
      end;
    end;
    try
      special.TNumAdres.Insert;
      special.TNumAdresNumCpt.Value:=dASQL.SourcePlanNumCpt.Value;
      special.TNumAdresNom.Value:=dASQL.SourcePlanNom.Value;
      special.TNumAdresAdresse.Value:=dASQL.SourcePlanAdresse.Value;
      special.TNumAdres.Post;
    except
      On EDataBaseError do
      begin
      end;
    end;
    try
      special.TNumDiver.Insert;
      special.TNumDiverNumCpt.Value:=dASQL.SourcePlanNumCpt.Value;
      special.TNumDiverStatistique.Value:=dASQL.SourcePlanStatistique.Value;
      special.TNumDiverNIF.Value:=dASQL.SourcePlanNIF.Value;
      special.TNumDiverQuittance.Value:=dASQL.SourcePlanQuittance.Value;
      special.TNumDiver.Post;
    except
      On EDataBaseError do
      begin
      end;
    end;
    dASQL.SourcePlan.Next;
  end;
end;

procedure TForm40.Label27Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Nornal1.Caption,'&'),true) then exit;}
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(5);
  finally
    FEtatCourant.Free;
  end;
end;

procedure TForm40.Label28Click(Sender: TObject);
begin
{  if not Commun.EstCePeutEntrer(util,EnleverLettre(Journal1.Caption,'&'),true) then exit;}
  FEcriture.PageControl2.ActivePage:=FEcriture.Ecriture;
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(4);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Label25Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Parrapportaumodedepaiement1.Caption,'&'),true) then exit;}
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(7);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Label26Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntre(util,EnleverLettre(Parrapportaulettrage1.Caption,'&'),true) then exit;}
  AsehoyLettrage(1,false,Commun.SocieteChemin.Value,'');
end;

procedure TForm40.Label30Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Parrapportaumodedepaiement2.Caption,'&'),true) then exit;}
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(8);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Label29Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Parlettrage1.Caption,'&'),true) then exit;}
  AsehoyLettrage(2,false,Commun.SocieteChemin.Value,'');
end;

procedure TForm40.Label37Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFGrandLivr, FGrandLivr);
    FGrandLivr.Asehoy;
  finally
    FGrandLivr.free;
  end;
end;

procedure TForm40.Label38Click(Sender: TObject);
begin
  {if not Commun.EstCePeutEntrer(util,EnleverLettre(Cumuldescomptes1.Caption,'&'),true) then exit;}
  FEcriture.PageControl2.ActivePage:=FEcriture.Ecriture;
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(6);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Label33Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(1);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Label34Click(Sender: TObject);
begin
{  if not Commun.EstCePeutEntrer(util,EnleverLettre(Gnrale1.Caption,'&'),true) then exit;}
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(0);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Label49Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFGroupe, FGroupe);
    FGroupe.Asehoy;
  finally
    FGroupe.free;
  end;
end;

procedure TForm40.Label50Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEtaAnnex, FEtaAnnex);
    FEtaAnnex.QuickRep3.Preview;
  finally
    FEtaAnnex.free;
  end;
end;

procedure TForm40.Label53Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFEtatFinan, FEtatFinan);
    FEtatFinan.Asehoy;
  finally
    FEtatFinan.free;
  end;
end;

procedure TForm40.Label45Click(Sender: TObject);
begin
  FDeclare.Asehoy(6);
end;

procedure TForm40.Label46Click(Sender: TObject);
begin
  FInformat.Asehoy('Opération en cours...','Patienter s.v.p',100);
  PStockee.creRembTVA2.SQL.Clear;
  PStockee.creRembTVA2.SQL.Add(' DELETE FROM ADeclare ');
  PStockee.creRembTVA2.ExecSQL;

  PStockee.creRembTVA2.SQL.Clear;
  PStockee.creRembTVA2.SQL.Add(' INSERT INTO ADeclare SELECT * FROM RDeclare ');
  PStockee.creRembTVA2.ExecSQL;

  GrillerSiModifSaisie(Commun.SocieteChemin.Value,True);
  FInformat.Close;
end;

procedure TForm40.Label54Click(Sender: TObject);
begin
  FDeclare.Asehoy(0);
end;

procedure TForm40.Label55Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFCouvert, FCouvert);
    FCouvert.QuickRep6.Preview;
  finally
    FCouvert.free;
  end;
end;

procedure TForm40.Label58Click(Sender: TObject);
begin
  FDeclare.Asehoy(1);
end;

procedure TForm40.Label59Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFCouvert, FCouvert);
    FCouvert.QuickRep1.Preview;
  finally
    FCouvert.free;
  end;
end;

procedure TForm40.Label31Click(Sender: TObject);
begin
  FDeclare.Asehoy(2);
end;

procedure TForm40.Label42Click(Sender: TObject);
var stPoint:string;
  i,nbpoint,total:integer;
begin
  nbpoint:=0;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  DASQL.SelJournal.close;
  DASQL.SelJournal.sql.clear;
  DASQL.SelJournal.sql.Add('select * from Journal  ');
  DASQL.SelJournal.sql.Add('where Code=:a');
  Special.ToutEltJrn.open;
  total:=Special.ToutEltJrn.RecordCount;
  Special.ToutEltJrn.first;
  while not Special.ToutEltJrn.EOF do
  begin
    FInformat.Show;
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;

    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
    DASQL.SelEltJrn.parameters[0].Value:=Special.ToutEltJrnJOurnal.Value;
    DASQL.SelEltJrn.open;

    if Special.ToutEltJrnCompte.Value<'6' then
    begin
      Special.ToutEltJrn.Next;
      Continue;
    end;
    Special.ToutEltJrn.Next;
    FInformat.close;
  end;
  {Tierssurecriture1Click(Sender);
  Special.Journal.open;
  Special.Journal.first;
  while not Special.Journal.EOF do
  begin
    Special.Journal.edit;
    if Special.JournalTiersSurEcr.Value<>'' then
       Special.JournalTiers.Value:= Special.JournalTiersSurEcr.Value;
     Special.Journal.Post;
    Special.Journal.Next;
  end;}
end;

procedure TForm40.Label63Click(Sender: TObject);
begin
  FInformat.Asehoy('Opération en cours...','Patienter s.v.p',100);
  PStockee.creRembTVA2.SQL.Clear;
  PStockee.creRembTVA2.SQL.Add(' DELETE FROM RembTVA2');
  PStockee.creRembTVA2.ExecSQL;

  PStockee.creRembTVA2.SQL.Clear;
  PStockee.creRembTVA2.SQL.Add('  INSERT INTO RembTVA2 SELECT * FROM TVA10_MTiers');
  PStockee.creRembTVA2.ExecSQL;
  GrillerSiModifSaisie(Commun.SocieteChemin.Value,True);
  FInformat.Close;
end;

procedure TForm40.GrillerSiModifSaisie(CodeSoc:string;Oui:boolean);
begin
  Produitslocaux1.enabled:=Oui;
  MarchandisevendueMadagascar1.enabled:=Oui;
  Prestationdeservice1.enabled:=Oui;
  Nouvelledclaration1.enabled:=Oui;
  BordereauderemboursementTVA1.enabled:=Oui;
  PStockee.qGrillerDec.Close;
  PStockee.qGrillerDec.Parameters[0].Value:=CodeSoc;
  PStockee.qGrillerDec.Open;
  PStockee.qGrillerDec.Edit;
  PStockee.qGrillerDecCodeSoc.Value:=CodeSoc;
  PStockee.qGrillerDecGriller.Value:='1' ;
  PStockee.qGrillerDec.Post;
end;


procedure TForm40.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00FFFF80;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);

end;

procedure TForm40.Shape_7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ClickMenu(7);

end;

procedure TForm40.Label10Click(Sender: TObject);
begin
  DBGrid3.Visible := not DBGrid3.Visible;
end;

procedure TForm40.Label10MouseEnter(Sender: TObject);
begin
  Label10.Font.Color := clRed
end;

procedure TForm40.Label10MouseLeave(Sender: TObject);
begin
  Label10.Font.Color := clWhite

end;

procedure TForm40.Label11MouseEnter(Sender: TObject);
begin
  Label11.Font.Color := clRed

end;

procedure TForm40.Label11MouseLeave(Sender: TObject);
begin
  Label11.Font.Color := clRed
end;

procedure TForm40.Panel11Click(Sender: TObject);
begin
  Panel11.Visible  := false;
  if Panel11.Caption = '<<' then
  begin
    Panel10.Visible := true;
    Panel11.Caption := '>>'
  end
  else
  begin
    Panel10.Visible := false;
    Panel11.Caption := '<<'
  end;
  Panel11.Visible  := true;
end;

procedure TForm40.PanelMouseDown(Panel:TPanel);
begin
  Panel.BevelInner := bvLowered;
  Panel.BevelOuter := bvLowered;
end;

procedure TForm40.PanelMouseUp(Panel:TPanel);
begin
  Panel.BevelInner := bvRaised;
  Panel.BevelOuter := bvRaised;
end;

procedure TForm40.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseDown(Panel13);
end;

procedure TForm40.Image2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseUP(Panel13);
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(5);
  finally
    FEtatCourant.Free;
  end;
end;

procedure TForm40.Image11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseDown(Panel18);

end;

procedure TForm40.Image11MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseUp(Panel18);
  SaisieStandard;
end;

procedure TForm40.Image13MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseUp(Panel14);
  FParametr.Asehoy; //FDeclare.Asehoy(3) <== TVA taloha io

end;

procedure TForm40.Image13MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseDown(Panel14);
end;

procedure TForm40.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseDown(Panel15);
end;

procedure TForm40.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseUp(Panel15);
  try
    Application.CreateForm(TFGrandLivr, FGrandLivr);
    FGrandLivr.Asehoy;
  finally
    FGrandLivr.free;
  end;
end;

procedure TForm40.Image9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseDown(Panel16);

end;

procedure TForm40.Image9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseUp(Panel16);
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(1);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Image12MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseUp(Panel17);
  try
    Application.CreateForm(TFEtatCourant, FEtatCourant);
    FEtatCourant.Asehoy(0);
  finally
    FEtatCourant.free;
  end;
end;

procedure TForm40.Image12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  PanelMouseDown(Panel17);
end;

procedure TForm40.Label18Click(Sender: TObject);
begin
  AsehoyCanevaDCOMM;
end;

procedure TForm40.Label18MouseEnter(Sender: TObject);
begin
  Label18.Font.Color := clRed
end;

procedure TForm40.Label18MouseLeave(Sender: TObject);
begin
  Label18.Font.Color := clWhite
end;

procedure TForm40.Label16MouseEnter(Sender: TObject);
begin
  Label16.Font.Color := clRed
end;

procedure TForm40.Label16MouseLeave(Sender: TObject);
begin
  Label16.Font.Color := clWhite
end;

procedure TForm40.Label_11Click(Sender: TObject);
begin
  ClickMenu(11);
end;

procedure TForm40.Label_11MouseEnter(Sender: TObject);
begin
  MouseEnter(11);
end;

procedure TForm40.Label1Click(Sender: TObject);
var Num:Integer;
   Piece:string;
   tapitra:boolean;
begin
  FInformat.Asehoy('Renumerotation des pièces ','PATIENTEZ....',1000);
  DASQL.SelJournal.close;
  DASQL.SelJournal.sql.clear;
  DASQL.SelJournal.sql.Add('select * from Journal  ');
  DASQL.SelJournal.sql.Add('where (CodeJrnx='''+edit12.text+''')');
  DASQL.SelJournal.sql.Add('and (periode=:a)');
  DASQL.SelJournal.close;
  DASQL.SelJournal.parameters[0].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
  DASQL.SelJournal.open;
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
  num:=212;
  ShowMessage(inttostr(DASQL.SelJournal.recordcount));
  if DASQL.SelJournal.recordcount=0 then exit;
  tapitra:=false;
  while not tapitra do
  begin
    FInformat.Asehoy(inttostr(num),'PATIENTEZ....',1000);
    Tapitra:=False;
    Piece:=EDIT12.text +Copy(DASQL.SelJournalPeriode.Value,6,2)+
               FormatFloat('0000',Num);
    DASQL.SelJournal.first;
    while (copy(DASQL.SelJournalcode.value,1,4)=copy(piece,1,4))do
    begin
      if DASQL.SelJournal.eof then
      begin
        tapitra:=true;
        break;
      end;
      DASQL.SelJournal.next;
    end;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.parameters[0].Value:=DASQL.SelJournalCode.Value;
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
      DASQL.SelEltJrn.first;
      DASQL.SelEltJrn.edit;
      DASQL.SelEltJrnJournal.Value:=Piece;
      DASQL.SelEltJrn.post;
    end;
    DASQL.SelJournal.edit;
    DASQL.SelJournalCode.Value:=Piece;
    DASQL.SelJournal.post;
    Num:=Num+1;
  end;
  FInformat.close;
  PStockee.RSelJour.close;
  PStockee.RSelJour.open;
end;

end.
