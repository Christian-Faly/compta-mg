unit DObjet;

interface

uses
  ShareMem, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, menus, ADODB;

type
  TTabMenu = array[1..10]of TMainMenu;
  TDataCpte = class(TDataModule)
    NumCompte: TQuery;
    NumCompteNumero: TStringField;
    NumCompteNumCpt: TStringField;
    NumCompteIntitule: TStringField;
    NumCompteDetail: TSmallintField;
    NumCompteClasse: TSmallintField;
    Repos: TTable;
    NumFac: TQuery;
    NumFacNumCpt: TStringField;
    NumFacModeRegle: TStringField;
    NumFacAA: TStringField;
    NumFacJours: TStringField;
    NumFacLe: TDateField;
    NumFacEncoursMax: TFloatField;
    NumFacTauxRem: TFloatField;
    NumFacSeuilRelance: TFloatField;
    NumFacTauxEsc: TFloatField;
    NumFacRelanceFax: TBooleanField;
    SourceUtilisat: TDataSource;
    SelUtilisat: TQuery;
    SelUtilisatcode: TStringField;
    SelUtilisatNom: TStringField;
    SelUtilisatFonction: TStringField;
    SelUtilisatMdp: TStringField;
    SelUtilisatNotes: TMemoField;
    SelAcces: TQuery;
    SelAccescodeUt: TStringField;
    SelSociete1: TQuery;
    SelSociete1Code: TStringField;
    SelSociete1Chemin: TStringField;
    SelSociete1Activite: TStringField;
    SelSociete1CAP: TStringField;
    SelSociete1Statut: TStringField;
    SelSociete1Statis: TStringField;
    SelSociete1NIF: TStringField;
    SelSociete1Quit: TStringField;
    SelSociete1DtQuit: TDateField;
    SelSociete1Registre: TStringField;
    SelSociete1CompteBQ: TStringField;
    SelSociete2: TQuery;
    SelSociete2Code: TStringField;
    SelSociete2Chemin: TStringField;
    SelSociete2Activite: TStringField;
    SelSociete2CAP: TStringField;
    SelSociete2Statut: TStringField;
    SelSociete2Statis: TStringField;
    SelSociete2NIF: TStringField;
    SelSociete2Quit: TStringField;
    SelSociete2DtQuit: TDateField;
    SelSociete2Registre: TStringField;
    SelSociete2CompteBQ: TStringField;
    SelSociete2izy: TBooleanField;
    SelAdresse: TQuery;
    SelInterloc: TQuery;
    SelInterlocCodeSoc: TStringField;
    SelInterlocInterloc: TStringField;
    SelInterlocFonction: TStringField;
    SelInterlocTel: TStringField;
    SelInterlocFax: TStringField;
    SelInterlocInfo: TStringField;
    SelInterlocNumCpt: TStringField;
    SourceAcces: TDataSource;
    SourceSociete: TDataSource;
    SelSociete2siege: TBooleanField;
    SelSociete1siege: TBooleanField;
    SelSociete1RS: TStringField;
    SelSociete2RS: TStringField;
    NumCompteGClasse: TSmallintField;
    Societe: TQuery;
    SocieteCode: TStringField;
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
    SocieteRS: TStringField;
    Lieu: TQuery;
    LieuCode: TStringField;
    Statut: TQuery;
    StatutCode: TStringField;
    Utilisat: TQuery;
    UtilisatCode: TStringField;
    UtilisatNom: TStringField;
    UtilisatFonction: TStringField;
    UtilisatMdp: TStringField;
    UtilisatNotes: TMemoField;
    Acces: TQuery;
    AccesCodeUt: TStringField;
    Tempon: TQuery;
    TemponString1: TStringField;
    TemponString2: TStringField;
    TemponReal1: TFloatField;
    TemponReal2: TFloatField;
    TemponBoolean1: TBooleanField;
    TemponBoolean2: TBooleanField;
    SocieteExerDeb: TDateField;
    SocieteExerFin: TDateField;
    SelCompte: TQuery;
    SelCompteSIGLEBQ: TStringField;
    SelCompteCode: TStringField;
    SelCompteMONNAIE: TStringField;
    SelCompteNUMCPT: TStringField;
    SelCompteLIBELLE: TStringField;
    SelCompteCOAGENC: TStringField;
    SelCompteAGENCE: TStringField;
    SelCompteADRES: TStringField;
    SelCompteSurRayon: TBooleanField;
    SelCompteDomiciliation: TStringField;
    SelCompteGuiche: TStringField;
    SelCompteRib: TStringField;
    Table1: TTable;
    NumCompteExonere: TBooleanField;
    NumCompteTotalisateur: TBooleanField;
    SelNumAdres: TQuery;
    SelNumLoc: TQuery;
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
    SelNumAdresDEVISE: TStringField;
    SelNumLocNumCpt: TStringField;
    SelNumLocInterloc: TStringField;
    SelNumLocFonction: TStringField;
    SelNumLocTel: TStringField;
    SelNumLocFax: TStringField;
    SelNumLocInfo: TStringField;
    NumCp: TQuery;
    NumCpNumCpt: TStringField;
    NumCpGClasse: TSmallintField;
    NumCpIzy: TBooleanField;
    NumCpTotalisateur: TBooleanField;
    Paramet: TTable;
    ParametBalGGroupe: TSmallintField;
    ParametBalOGroupe: TSmallintField;
    ParametLanceeBal: TBooleanField;
    NumCpClasse: TSmallintField;
    NumCpGGroupe: TIntegerField;
    NumCpOGroupe: TIntegerField;
    Numadres: TTable;
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
    NumadresNom: TStringField;
    NumCompteNom: TStringField;
    NumDiver: TTable;
    NumDiverStatistique: TStringField;
    NumDiverNatureProd: TStringField;
    NumDiverNumCpt: TStringField;
    NumadresNumCpt: TStringField;
    NumCompteNature: TStringField;
    NumCompteStatistique: TStringField;
    SelTypProd: TQuery;
    SelTypProdMarque: TStringField;
    SelTypProdReference: TStringField;
    SelTypProdFamille: TStringField;
    SoldeCpte: TQuery;
    SoldeCpteDebit: TStringField;
    SoldeCpteMontant: TFloatField;
    SelTypProdUniteX: TStringField;
    SelTypProdUniteCol: TStringField;
    SelTypProdcode: TStringField;
    SelTypProdNature: TStringField;
    Adresse: TTable;
    printcpt: TQuery;
    printcptnumcpt: TStringField;
    printcptIntitule: TStringField;
    NumadresAdresse: TStringField;
    NumDiverNIF: TStringField;
    printcptAdresse: TStringField;
    printcptNIF: TStringField;
    printcptStatistique: TStringField;
    SelAccescommande: TStringField;
    AccesCommande: TStringField;
    TAXE: TTable;
    TAXESigle: TStringField;
    SelNumDiver: TQuery;
    SelNumDiverNumCpt: TStringField;
    SelNumDiverStatistique: TStringField;
    SelNumDiverQuittance: TStringField;
    SelNumDiverNIF: TStringField;
    SelNumDiverDateQuit: TDateField;
    SelNumDiverNatureProd: TStringField;
    SelNumDiverCodeProd: TStringField;
    SelNumDiverCodeDecl: TStringField;
    SelNumDiverAbrev: TStringField;
    SelNumDiverUniteProd: TStringField;
    SocieteEnCours: TBooleanField;
    SocieteActivite2: TStringField;
    SocieteExistance: TStringField;
    SelAdresseTel2: TStringField;
    SelAdresseTel3: TStringField;
    SelAdresseEmail: TStringField;
    SelAdresseSiteWeb: TStringField;
    SelAdresseBanque: TStringField;
    StatutLibelle: TStringField;
    QEncoursSociete: TQuery;
    QEncoursSocieteCode: TStringField;
    QEncoursSocieteencours: TBooleanField;
    QEncoursSocieteChemin: TStringField;
    QUtilCommandeAcces: TQuery;
    QUtilCommandeAccesCodeUt: TStringField;
    QUtilCommandeAccesCommande: TStringField;
    TemponSTRING3: TStringField;
    Evenement: TTable;
    Signes: TTable;
    SignesAffiche: TStringField;
    SignesSignification: TStringField;
    Visite: TTable;
    VisiteNumero: TAutoIncField;
    VisiteCodeVisite: TStringField;
    VisiteDenomination: TStringField;
    VisiteSignification: TStringField;
    Saisimp: TTable;
    LieuLieu: TStringField;
    PeutEntrer: TQuery;
    LstCom: TQuery;
    LstComCOMMANDE: TStringField;
    TemponDATE1: TDateField;
    TemponDATE2: TDateField;
    TemponSTRING4: TStringField;
    SelEvenmnt: TQuery;
    SelEvenmntNumero: TAutoIncField;
    SelEvenmntLogiciel: TStringField;
    SelEvenmntObjet: TStringField;
    SelEvenmntDaty: TDateTimeField;
    SelEvenmntRemarque: TStringField;
    SelEvenmntDescrip: TStringField;
    SelEvenmntAprev: TBooleanField;
    SelEvenmntIzy: TBooleanField;
    SelEvenmntNbprev: TSmallintField;
    SelEvenmntDateFin: TDateTimeField;
    SelEvenmntSigne: TStringField;
    EvenementNumero: TAutoIncField;
    EvenementLogiciel: TStringField;
    EvenementObj: TStringField;
    EvenementCodeObj: TStringField;
    EvenementDaty: TDateTimeField;
    EvenementRemarque: TStringField;
    EvenementDescrip: TStringField;
    EvenementAprev: TBooleanField;
    EvenementIzy: TBooleanField;
    EvenementNbprev: TSmallintField;
    EvenementDateFin: TDateTimeField;
    EvenementSigne: TStringField;
    SelEvenmntCodeObjet: TStringField;
    SelAdresseLotOuRue: TStringField;
    SelAdresseQuartier: TStringField;
    SelAdresseLieu: TStringField;
    NumDivers: TQuery;
    NumDiversNumCpt: TStringField;
    NumDiversStatistique: TStringField;
    NumDiversQuittance: TStringField;
    NumDiversNIF: TStringField;
    NumDiversDateQuit: TDateField;
    NumDiversNatureProd: TStringField;
    NumDiversCodeProd: TStringField;
    NumDiversCodeDecl: TStringField;
    NumDiversAbrev: TStringField;
    NumDiversUniteProd: TStringField;
    NumDiversTP: TStringField;
    NumDiversDateTP: TDateField;
    SourceMaitre: TDataSource;
    Maitre: TTable;
    SelDetail: TQuery;
    QListDonnee1: TQuery;
    CodeSte: TTable;
    CodeSteCode: TStringField;
    CodeSteNom: TStringField;
    QGrpSte: TQuery;
    QGrpSteNumero: TIntegerField;
    QGrpSteCodeSte: TStringField;
    QGrpSteCodeExer: TStringField;
    SocieteLogiciel: TStringField;
    AccesLogiciel: TStringField;
    QListDonnee: TADOQuery;
    C_ListeDonnee: TADOConnection;
    procedure NumCompteCalcFields(DataSet: TDataSet);
    procedure SourceAccesDataChange(Sender: TObject; Field: TField);
  private
    { Déclarations privées }
    procedure ChangeChemin(const chemin:string);
  public
    { Déclarations publiques }
    procedure PrepareBalance(nbGtot,nbOtot:shortint);
    function  SoldeCompte(compte:string):real;
    procedure ChangerDossierBase(base:string);
    function  PeutEntrerMenu(CodeUt,commande:string;msg:boolean):boolean;
    procedure AJourCommande(TabMenu:TTabMenu;nb:integer;util,Logiciel:string);
    function  ChangeConnection(const chemin:string):string;
    procedure AjouterEntrer(CodeUt,commande:string);
  end;

const MdpProg = 'Ma elle';
      UtiProg = 'Pgm_eur';
var
  DataCpte: TDataCpte;

procedure MiseAJourCommande(TabMenu:TTabMenu;nb:integer;util,Logiciel:string);export;
function  EstCePeutEntrer(CodeUt,commande:string;msg:boolean):boolean;export;
procedure ChangeChemin(const chemin:string);export;
procedure CreerDataCpte;export;
procedure VonoyDataCpte;export;
procedure AjouterEntrerCommande(CodeUt,commande:string);export;

implementation

uses TypeElmt;

{$R *.DFM}

procedure CreerDataCpte;
begin
  Application.CreateForm(TDataCpte, DataCpte);
end;

procedure VonoyDataCpte;
begin
  DataCpte.Free;
end;

function  EstCePeutEntrer(CodeUt,commande:string;msg:boolean):boolean;export;
begin
  try
    Application.CreateForm(TDataCpte, DataCpte);
    Result:=DataCpte.PeutEntrerMenu(CodeUt,commande,msg);
  finally
    DataCpte.free;
  end;
end;

procedure MiseAJourCommande(TabMenu:TTabMenu;nb:integer;util,Logiciel:string);export;
begin
  try
    Application.CreateForm(TDataCpte, DataCpte);
    DataCpte.AJourCommande(TabMenu,nb,util,Logiciel);
  finally
    DataCpte.free;
  end;
end;

procedure AjouterEntrerCommande(CodeUt,commande:string);
begin
  try
    Application.CreateForm(TDataCpte, DataCpte);
    DataCpte.AjouterEntrer(CodeUt,commande);
  finally
    DataCpte.free;
  end;
end;

procedure TDataCpte.AjouterEntrer(CodeUt,Commande:string);
begin
  Acces.open;
  try
    Acces.Insert;
    AccesCodeUt.Value:=CodeUt;
    AccesCommande.Value:=Commande;
    Acces.Post;
  except
    On EDataBaseError do Acces.Cancel;
  end;
end;

procedure TDataCpte.AJourCommande(TabMenu:TTabMenu;nb:integer;util,Logiciel:string);
  procedure EntrerUnMainMenu(MainMenu:TMainMenu);
  var i,j,k:integer;
  begin
    for i:=0 to MainMenu.Items.Count-1 do
    begin
      try
        LstCom.Insert;
        LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].caption,'&');
        if (PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].caption,'&'),false)
        or (Util=UtiProg))then
          MainMenu.Items[i].Enabled:=true
        else
          MainMenu.Items[i].Enabled:=false;
        LstCom.Post;
      except
        On EDataBaseError do LstCom.Cancel;
      end;

      for j:=0 to MainMenu.Items[i].count-1 do
      begin
        try
          LstCom.Insert;
          LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].Items[j].caption,'&');
          if (PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].Items[j].caption,'&'),false)
          or (Util=UtiProg)) then
            MainMenu.Items[i].Items[j].Enabled:=true
          else
            MainMenu.Items[i].Items[j].Enabled:=false;
          LstCom.Post;
        except
          On EDataBaseError do LstCom.Cancel;
          else;
        end;
        for k:=0 to MainMenu.Items[i].Items[j].count-1 do
        try
          LstCom.Insert;
          LstCom.FieldByName('Commande').AsString:=EnleverLettre(MainMenu.Items[i].Items[j].Items[k].caption,'&');
          if (PeutEntrerMenu(Util,EnleverLettre(MainMenu.Items[i].Items[j].Items[k].caption,'&'),false)
          or (Util=UtiProg))then
            MainMenu.Items[i].Items[j].Items[k].Enabled:=true
          else
            MainMenu.Items[i].Items[j].Items[k].Enabled:=false;
          LstCom.Post;
        except
          On EDataBaseError do LstCom.Cancel;
          else;
        end;
      end;
    end;
  end;
var l :integer;
 begin
  LstCom.OPEN;
  while not LstCom.EOF do LstCom.delete;
  for l:=1 to nb do EntrerUnMainMenu(TabMenu[l]);
  Societe.close;
  Societe.ParamByName('a').AsString:= Logiciel;
  societe.Open;
  societe.FIRST;
  while not societe.EOF do
  begin
    LstCom.Insert;
    LstCom.FieldByName('Commande').AsString:=SocieteCode.Value;
    LstCom.Post;
    societe.Next;
  end;
end;

procedure ChangeChemin(const chemin:string);
begin
  DataCpte.ChangeChemin(chemin);
end;

procedure TDataCpte.ChangeChemin(const chemin:string);
begin
  SelCompte.close;   SelCompte.DataBaseName:=chemin;
  printcpt.close;   printcpt.DataBaseName:=chemin;
end;

function TDataCpte.ChangeConnection(const chemin:string):string;
var ConnecStr:string;
begin
  ConnecStr:='Provider=MSDASQL.1;';
  ConnecStr:=ConnecStr+'Persist Security Info=False;';
  ConnecStr:=ConnecStr+'Data Source='+chemin;
end;

function  TDataCpte.soldeCompte(compte:string):real;
var mt:real;
begin
  soldecpte.close;
  soldecpte.params[0].AsString:=compte;
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

function TDataCpte.PeutEntrerMenu(CodeUt,commande:string;msg:boolean):boolean;
begin
  PeutEntrer.close;
  PeutEntrer.params[0].AsString:=CodeUt;
  PeutEntrer.params[1].AsString:=Commande;
  PeutEntrer.open;
  if PeutEntrer.recordCount>0 then result:=true
  else
  begin
    Result:=false;
    if msg then
      MessageDlg('La commande :'+commande+' n''est pas autorisée à l''utilisateur '+CodeUt,
    mtError,[mbok],0);
  end;
end;

procedure TDataCpte.PrepareBalance(nbGtot,nbOtot:shortint);
var cl,gcl,GGroupe,OGroupe:longint;
  kaonty:string;
begin
  kaonty:='0000';
  DataCpte.NumCp.close;
  DataCpte.NumCp.SQL.Clear;
  DataCpte.NumCp.SQL.Add('Select * from ''NumCpt.db''');
  NumCp.open;
  NumCp.first;
  while Not NumCp.eof do
  begin
    gcl:=strtoint(copy(NumCpNumCpt.Value,1,1));
    if length(NumCpNumCpt.Value)>1 then cl:=strtoint(copy(NumCpNumCpt.Value,1,2))
    else cl:=strtoint(NumCpNumCpt.Value)*10;
    GGroupe:=strtoint(copy(NumCpNumCpt.Value,1,nbGTot));
    OGroupe:=strtoint(copy(NumCpNumCpt.Value,1,nbOTot));
    NumCp.edit;
    NumCpGClasse.Value:=gcl;
    NumCpClasse.Value:=cl;
    NumCpGGroupe.Value:=GGroupe;
    NumCpOGroupe.Value:=OGroupe;
    NumCp.post;
    NumCp.next;
  end;
end;

procedure TDataCpte.NumCompteCalcFields(DataSet: TDataSet);
var ll:smallint;
  i:integer;
begin
  ll:=length(NumCompteNumCpt.value);
  for i:=1 to ll do NumCompteNumero.value:= NumCompteNumero.value +'   ';
  NumCompteNumero.value:=NumCompteNumero.value+NumCompteNumCpt.value;
end;

procedure TDataCpte.ChangerDossierBase(base:string);
begin
  SelAdresse.DatabaseName:=base+Copy(SelAdresse.DatabaseName,length(base),length(SelAdresse.DatabaseName));
  SelInterloc.DatabaseName:=base+Copy(SelInterloc.DatabaseName,length(base),length(SelInterloc.DatabaseName));
  NumDivers.DatabaseName:=base+Copy(NumDivers.DatabaseName,length(base),length(NumDivers.DatabaseName));
  Numadres.DatabaseName:=base+Copy(Numadres.DatabaseName,length(base),length(Numadres.DatabaseName));
  SelTypProd.DatabaseName:=base+Copy(SelTypProd.DatabaseName,length(base),length(SelTypProd.DatabaseName));
  Lieu.DatabaseName:=base+Copy(Lieu.DatabaseName,length(base),length(Lieu.DatabaseName));
  Statut.DatabaseName:=base+Copy(Statut.DatabaseName,length(base),length(Statut.DatabaseName));
  Utilisat.DatabaseName:=base+Copy(Utilisat.DatabaseName,length(base),length(Utilisat.DatabaseName));
  SelCompte.DatabaseName:=base+Copy(SelCompte.DatabaseName,length(base),length(SelCompte.DatabaseName));
  NumFac.DatabaseName:=base+Copy(NumFac.DatabaseName,length(base),length(NumFac.DatabaseName));
  SoldeCpte.DatabaseName:=base+Copy(SoldeCpte.DatabaseName,length(base),length(SoldeCpte.DatabaseName));
  SelUtilisat.DatabaseName:=base+Copy(SelUtilisat.DatabaseName,length(base),length(SelUtilisat.DatabaseName));
  NumCompte.DatabaseName:=base+Copy(NumCompte.DatabaseName,length(base),length(NumCompte.DatabaseName));
  Acces.DatabaseName:=base+Copy(Acces.DatabaseName,length(base),length(Acces.DatabaseName));
  Paramet.DatabaseName:=base+Copy(Paramet.DatabaseName,length(base),length(Paramet.DatabaseName));
  SelAcces.DatabaseName:=base+Copy(SelAcces.DatabaseName,length(base),length(SelAcces.DatabaseName));
  SoldeCpte.DatabaseName:=base+Copy(SoldeCpte.DatabaseName,length(base),length(SoldeCpte.DatabaseName));
  LstCom.DatabaseName:=base+Copy(LstCom.DatabaseName,length(base),length(LstCom.DatabaseName));
  NumCp.DatabaseName:=base+Copy(NumCp.DatabaseName,length(base),length(NumCp.DatabaseName));
  SelNumAdres.DatabaseName:=base+Copy(SelNumAdres.DatabaseName,length(base),length(SelNumAdres.DatabaseName));
  SelNumLoc.DatabaseName:=base+Copy(SelNumLoc.DatabaseName,length(base),length(SelNumLoc.DatabaseName));
  NumDiver.DatabaseName:=base+Copy(NumDiver.DatabaseName,length(base),length(NumDiver.DatabaseName));
  SelNumDiver.DatabaseName:=base+Copy(SelNumDiver.DatabaseName,length(base),length(SelNumDiver.DatabaseName));

end;

procedure TDataCpte.SourceAccesDataChange(Sender: TObject; Field: TField);
begin
  AccesCommande.DisplayLabel:='Liste des commandes accordées à '+UtilisatNom.Value;
end;


end.
