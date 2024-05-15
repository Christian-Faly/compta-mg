unit DaCommun;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB;

type
  TCommun = class(TDataModule)
    SourceDevise: TDataSource;
    SourceTaxe: TDataSource;
    SourceSelSociete: TDataSource;
    Societe: TADOTable;
    LstCom: TADOTable;
    SocieteCode: TWideStringField;
    SocieteRS: TWideStringField;
    SocieteChemin: TWideStringField;
    SocieteActivite: TWideStringField;
    SocieteCAP: TWideStringField;
    SocieteStatut: TWideStringField;
    SocieteStatis: TWideStringField;
    SocieteNIF: TWideStringField;
    SocieteATP: TWideStringField;
    SocieteDtATP: TDateTimeField;
    SocieteQuit: TWideStringField;
    SocieteDtQuit: TDateTimeField;
    SocieteRegistre: TWideStringField;
    SocieteCompteBQ: TWideStringField;
    SocieteCheminPrec: TWideStringField;
    SocieteExerDeb: TDateTimeField;
    SocieteExerFin: TDateTimeField;
    SocieteActivite2: TWideStringField;
    SocieteExistance: TWideStringField;
    SocieteLogiciel: TWideStringField;
    SocieteDateQuit: TStringField;
    LstComCOMMANDE: TWideStringField;
    Tempon: TADOTable;
    TemponSTRING1: TWideStringField;
    TemponSTRING2: TWideStringField;
    TemponSTRING3: TWideStringField;
    TemponREAL1: TFloatField;
    TemponREAL2: TFloatField;
    TemponDATE1: TDateTimeField;
    TemponDATE2: TDateTimeField;
    TemponSTRING4: TWideStringField;
    SelSociete1: TADOQuery;
    SelSociete1Code: TWideStringField;
    SelSociete1RS: TWideStringField;
    SelSociete1Chemin: TWideStringField;
    SelSociete1Activite: TWideStringField;
    SelSociete1CAP: TWideStringField;
    SelSociete1Statut: TWideStringField;
    SelSociete1Statis: TWideStringField;
    SelSociete1NIF: TWideStringField;
    SelSociete1ATP: TWideStringField;
    SelSociete1DtATP: TDateTimeField;
    SelSociete1Quit: TWideStringField;
    SelSociete1DtQuit: TDateTimeField;
    SelSociete1Registre: TWideStringField;
    SelSociete1CompteBQ: TWideStringField;
    SelSociete1CheminPrec: TWideStringField;
    SelSociete1ExerDeb: TDateTimeField;
    SelSociete1ExerFin: TDateTimeField;
    SelSociete1Activite2: TWideStringField;
    SelSociete1Existance: TWideStringField;
    SelSociete1Logiciel: TWideStringField;
    SelSociete2: TADOQuery;
    SelSociete2Code: TWideStringField;
    SelSociete2RS: TWideStringField;
    SelSociete2Chemin: TWideStringField;
    SelSociete2Activite: TWideStringField;
    SelSociete2CAP: TWideStringField;
    SelSociete2Statut: TWideStringField;
    SelSociete2Statis: TWideStringField;
    SelSociete2NIF: TWideStringField;
    SelSociete2ATP: TWideStringField;
    SelSociete2DtATP: TDateTimeField;
    SelSociete2Quit: TWideStringField;
    SelSociete2DtQuit: TDateTimeField;
    SelSociete2Registre: TWideStringField;
    SelSociete2CompteBQ: TWideStringField;
    SelSociete2CheminPrec: TWideStringField;
    SelSociete2ExerDeb: TDateTimeField;
    SelSociete2ExerFin: TDateTimeField;
    SelSociete2Activite2: TWideStringField;
    SelSociete2Existance: TWideStringField;
    SelSociete2Logiciel: TWideStringField;
    SelTaxe: TADOQuery;
    SelTaxeSigle: TWideStringField;
    SelTaxeDenomination: TWideStringField;
    SelTaxeCollecte: TWideStringField;
    SelTaxeDeductible: TWideStringField;
    SelTaxeTaux: TFloatField;
    Lieu: TADOTable;
    LieuCode: TWideStringField;
    LieuLieu: TWideStringField;
    Taxe: TADOTable;
    TaxeSigle: TWideStringField;
    TaxeDenomination: TWideStringField;
    TaxeCollecte: TWideStringField;
    TaxeDeductible: TWideStringField;
    TauxTVA: TADOTable;
    TauxTVASigle: TWideStringField;
    TauxTVAIntdate: TFloatField;
    TauxTVADateMod: TDateTimeField;
    TauxTVATaux: TFloatField;
    Devise: TADOTable;
    DeviseSigle: TWideStringField;
    DeviseDenomination: TWideStringField;
    DevisePays: TWideStringField;
    DeviseContinent: TWideStringField;
    Courss: TADOTable;
    CourssDEVISE: TWideStringField;
    CourssINTDATE: TFloatField;
    CourssDTMOD: TDateTimeField;
    CourssACHAT: TFloatField;
    CourssVENTE: TFloatField;
    QAdresse: TADOQuery;
    QAdresseCP: TWideStringField;
    QAdresseLotOuRue: TWideStringField;
    QAdresseQuartier: TWideStringField;
    Acces: TADOTable;
    AccesCodeUt: TWideStringField;
    AccesCommande: TWideStringField;
    AccesLogiciel: TWideStringField;
    QAdresseLieu: TStringField;
    QSociete: TADOQuery;
    QSocieteExerDeb: TDateTimeField;
    QSocieteExerFin: TDateTimeField;
    SelUtilisat: TADOQuery;
    SelUtilisatCode: TWideStringField;
    SelUtilisatNom: TWideStringField;
    SelUtilisatFonction: TWideStringField;
    SelUtilisatMdp: TWideStringField;
    SelUtilisatNotes: TMemoField;
    InfoSiege: TADOQuery;
    Adresse: TADOQuery;
    InfoSiegeSiege: TStringField;
    InfoSiegeAgence: TStringField;
    InfoSiegeAdresSiege: TStringField;
    InfoSiegeCP: TStringField;
    InfoSiegeLotOuRue: TStringField;
    T_Adresse: TADOTable;
    Interloc: TADOQuery;
    InterlocCodeSoc: TStringField;
    InterlocInterloc: TStringField;
    InterlocFonction: TStringField;
    InterlocTel: TStringField;
    InterlocFax: TStringField;
    InterlocInfo: TStringField;
    InterlocNumCpt: TStringField;
    Repos: TADOTable;
    SelDevise: TADOQuery;
    SelDevisedevise: TStringField;
    SelDeviseINTDATE: TFloatField;
    SelDeviseDTMOD: TDateField;
    SelDeviseACHAT: TFloatField;
    SelDeviseVENTE: TFloatField;
    SelPostAnal: TADOQuery;
    SelPostAnalIntitule: TStringField;
    LstFichier: TADOTable;
    LstFichierNdf: TWideStringField;
    LstFichierOrigine: TWideStringField;
    LstFichierDescriptio: TWideStringField;
    Consolide1: TADOTable;
    Consolide1Siege: TStringField;
    Consolide1Agence: TStringField;
    Consolide1Activite: TStringField;
    Consolide1Nom: TStringField;
    Consolide1Chemin: TStringField;
    QSocieteConsolidee: TADOQuery;
    QSocieteConsolideeSiege: TStringField;
    QSocieteConsolideeAgence: TStringField;
    SelSociete: TADOQuery;
    SelSocieteCode: TWideStringField;
    SelSocieteRS: TWideStringField;
    SelSocieteChemin: TWideStringField;
    SocieteMonnaie: TWideStringField;
    QAdresseTotal: TStringField;
    QAdresseBP: TWideStringField;
    SourceSociete1: TDataSource;
    Consolide: TADOQuery;
    ConsolideSiege: TWideStringField;
    ConsolideAgence: TWideStringField;
    ConsolideRS: TWideStringField;
    ConsolideChemin: TWideStringField;
    ConsolideCheminPrec: TWideStringField;
    QSocieteConsolideeCP: TWideStringField;
    QSocieteConsolideeLotOuRue: TWideStringField;
    QSocieteConsolideeQuartier: TWideStringField;
    QSocieteConsolideeLieu: TWideStringField;
    QSocieteConsolideeBP: TWideStringField;
    SocieteDateATP: TStringField;
    SocieteDateTP: TStringField;
    QSocieteConsolideeTotal: TStringField;
    SuppConsolide: TADOQuery;
    QLieu: TADOQuery;
    QLieuCode: TWideStringField;
    QLieuLieu: TWideStringField;
    TLieu: TADOTable;
    AdresseLieu: TWideStringField;
    AdresseCodeSoc: TWideStringField;
    AdresseCP: TWideStringField;
    AdressePays: TWideStringField;
    AdresseBP: TWideStringField;
    AdresseTEL: TWideStringField;
    AdresseFax: TWideStringField;
    AdresseCptBQ: TWideStringField;
    AdresseNumCpt: TWideStringField;
    AdresseNII: TWideStringField;
    AdresseDEVISE: TWideStringField;
    AdresseTel2: TWideStringField;
    AdresseTel3: TWideStringField;
    AdresseEmail: TWideStringField;
    AdresseSiteWeb: TWideStringField;
    AdresseBanque: TWideStringField;
    AdresseLotOuRue: TWideStringField;
    AdresseQuartier: TWideStringField;
    AdresseTotal: TStringField;
    Q_Aide: TADOQuery;
    TVAGenerale: TADOQuery;
    TVAGeneraleSigle: TWideStringField;
    TVAGeneraleDenomination: TWideStringField;
    TVAGeneraleCollecte: TWideStringField;
    TVAGeneraleDeductible: TWideStringField;
    TVAGeneraleTaux: TFloatField;
    TaxeCodeAdm: TWideStringField;
    Temponboolean1: TSmallintField;
    Temponboolean2: TSmallintField;
    Societesiege: TSmallintField;
    Societetransferer: TSmallintField;
    Societeencours: TSmallintField;
    SelSociete1siege: TSmallintField;
    SelSociete1transferer: TSmallintField;
    SelSociete1encours: TSmallintField;
    Taxetaux: TFloatField;
    SelSociete2siege: TSmallintField;
    SelSociete2transferer: TSmallintField;
    SelSociete2encours: TSmallintField;
    SelPostAnalnumero: TWideStringField;
    SelPostAnalcodelieu: TWideStringField;
    SelPostAnalnivanal: TWideStringField;
    SelPostAnalplananal: TWideStringField;
    SelPostAnaltyp: TWideStringField;
    SelPostAnaldirection: TWideStringField;
    q_dernier_siege: TADOQuery;
    q_exercice_declare: TADOQuery;
    sq_exercice_declare: TDataSource;
    q_exercice_declareexercice: TWideStringField;
    q_exercice_declarecode: TWideStringField;
    q_exercice_declarers: TWideStringField;
    q_exercice_declarechemin: TWideStringField;
    q_exercice_conso: TADOQuery;
    sq_xercice_conso: TDataSource;
    q_exercice_consocode: TWideStringField;
    q_exercice_consors: TWideStringField;
    q_exercice_consochemin: TWideStringField;
    procedure QAdresseCalcFields(DataSet: TDataSet);
    procedure AdresseCalcFields(DataSet: TDataSet);
    procedure SourceSociete1DataChange(Sender: TObject; Field: TField);
    procedure SocieteCalcFields(DataSet: TDataSet);
    procedure QSocieteConsolideeCalcFields(DataSet: TDataSet);
       {Pas de filtre vide}
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure OuvrirData;
{    function  EstCePeutEntrer(CodeUt,commande:string;msg:boolean):boolean;}
    procedure AjouterEntrer(CodeUt,commande:string);
    procedure CodeExercice(Code:string;var stExerN,stExerN_1:string);
  end;

var
  Commun: TCommun;

implementation

uses UConnect, TypeElmt;



{$R *.DFM}

procedure TCommun.OuvrirData;
begin
  Societe.open;
  Devise.open;
  Taxe.open;
  TauxTVA.open;
  Courss.open;
  Societe.open;
  Devise.open;
  Taxe.open;
  Courss.open;
end;


{function TCommun.EstCePeutEntrer(CodeUt,commande:string;msg:boolean):boolean;
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
}
procedure TCommun.AjouterEntrer(CodeUt,commande:string);
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

procedure TCommun.CodeExercice(Code:string;var stExerN,stExerN_1:string);
var  YearDeb,YearFin, Month, Day: Word;
begin
  Commun.QSociete.close;
  Commun.QSociete.Parameters[0].value:=Code;
  Commun.QSociete.Open;
  DecodeDate(QSocieteExerFin.Value,YearDeb, Month, Day);
  DecodeDate(QSocieteExerDeb.Value,Yearfin, Month, Day);
  if YearDeb<>YearFin then
  begin
    stExerN:=inttostr(YearFin)+'-'+inttostr(YearDeb);
    stExerN_1:=inttostr(YearFin-1)+'-'+inttostr(YearDeb-1);
  end
  else
  begin
    stExerN:=inttostr(YearDeb);
    stExerN_1:=inttostr(YearDeb-1);
  end;
end;

procedure TCommun.QAdresseCalcFields(DataSet: TDataSet);
begin
  QLieu.Close;
  if QAdresseCP.Value>'' then
    QLieu.Parameters[0].Value:=QAdresseCP.Value
  else
    QLieu.Parameters[0].Value:='0';
  QLieu.Open;
  QAdresseTotal.Value:=EnleveBlancDroite(QAdresseLotOuRue.Value)+' '+
                       EnleveBlancDroite(QAdresseQuartier.Value) +' '+
                       ' BP '+EnleveBlancDroite(QAdresseBP.Value) +' '+
                       EnleveBlancDroite(QLieuLieu.Value) +' ('+
                       EnleveBlancDroite(QAdresseCP.Value)+')';
end;

procedure TCommun.AdresseCalcFields(DataSet: TDataSet);
begin
{  QLieu.Close;
  if QAdresseCP.Value>'' then
    QLieu.Parameters[0].Value:=QAdresseCP.Value
  else
    QLieu.Parameters[0].Value:='0';
  QLieu.Open;
}  AdresseTotal.Value:=EnleveBlancDroite(AdresseLotOuRue.Value)+' '+
                      EnleveBlancDroite(AdresseQuartier.Value) +' '+
                      ' BP '+EnleveBlancDroite(AdresseBP.Value) +' '+
                      EnleveBlancDroite(AdresseLieu.Value) +' ('+
                      EnleveBlancDroite(AdresseCP.Value)+')';
end;

procedure TCommun.SourceSociete1DataChange(Sender: TObject; Field: TField);
begin
  Consolide.Close;
  Consolide.Parameters[0].value:=SelSociete1Code.Value;
  Consolide.Open;
end;

procedure TCommun.SocieteCalcFields(DataSet: TDataSet);
begin
  if SocieteATP.Value<>'' then
    SocieteDateTP.Value:=FormatDateTime('dd/mm/yyyy',SocieteDtATP.value)
   else
    SocieteDateTP.Value:='';
  if SocieteQuit.Value<>'' then
    SocieteDateQuit.Value:=FormatDateTime('dd/mm/yyyy',SocieteDtQuit.Value)
  else
    SocieteDateQuit.Value:='';
end;

procedure TCommun.QSocieteConsolideeCalcFields(DataSet: TDataSet);
begin
  Commun.QSocieteConsolideeTotal.value:=EnleveBlancDroite(Commun.QSocieteConsolideeLotOuRue.Value) +' '+
                    EnleveBlancDroite(Commun.QSocieteConsolideeQuartier.Value)+' '+
                    ' BP '+EnleveBlancDroite(Commun.QSocieteConsolideeBP.Value)+ ' '+
                    EnleveBlancDroite(Commun.QSocieteConsolideeLieu.Value)+' '+EnleveBlancDroite(Commun.QSocieteConsolideeCP.Value);
end;

end.
