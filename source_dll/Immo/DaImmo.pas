unit DaImmo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDataImmo = class(TDataModule)
    FichImmo: TTable;
    FichImmoCode: TStringField;
    FichImmoDescription: TStringField;
    FichImmoNumFact: TStringField;
    FichImmoValeur: TFloatField;
    FichImmoTVA: TFloatField;
    FichImmoFournisseur: TStringField;
    FichImmoCptImmo: TStringField;
    FichImmoCptAmort: TStringField;
    FichImmoCptDotat: TStringField;
    FichImmoDtAcquisit: TDateField;
    FichImmoMethFisc: TStringField;
    FichImmoNbAnneeAmort: TSmallintField;
    FichImmoNbMoisAmort: TSmallintField;
    FichImmoCoeffDegress: TFloatField;
    FichImmoOrigine: TStringField;
    SelAffectat: TQuery;
    SelAffectatCodeImmo: TStringField;
    SelAffectatDaty: TDateField;
    SelAffectatCodeAnal: TStringField;
    SelAffectatPourc: TFloatField;
    SelEmplace: TQuery;
    SelEmplaceCodeImmo: TStringField;
    SelEmplaceDaty: TDateField;
    SelEmplaceEmplacement: TStringField;
    SelSortImmo: TQuery;
    SelSortImmoCodeImmo: TStringField;
    SelSortImmoDestination: TStringField;
    SelSortImmoDaty: TDateField;
    SelSortImmoAcquereur: TStringField;
    SelSortImmoPrixTTC: TFloatField;
    SelSortImmoTVARecup: TFloatField;
    SelSortImmoTVARevers: TFloatField;
    FichImmoCession: TBooleanField;
    SelPlanAmmo: TQuery;
    SelPlanAmmoCodeImmo: TStringField;
    SelPlanAmmoDebutExer: TDateField;
    SelPlanAmmoAmortissement: TFloatField;
    SelPlanAmmoValeurNet: TFloatField;
    SelPlanAmmoCumul: TFloatField;
    Vehicule: TTable;
    VehiculeImmatre: TStringField;
    VehiculeTyp: TSmallintField;
    VehiculeMarque: TStringField;
    VehiculeGenre: TStringField;
    VehiculeChauffeur: TIntegerField;
    VehiculePuissance: TStringField;
    VehiculeCarburant: TStringField;
    VehiculeCategorie: TStringField;
    VehiculeCarbPlein: TFloatField;
    VehiculePoidvide: TFloatField;
    VehiculePoidmax: TFloatField;
    VehiculeVolMax: TFloatField;
    VehiculeSurfMax: TFloatField;
    VehiculeVitMoy: TFloatField;
    VehiculeConsommation: TFloatField;
    VehiculeTypeRep: TStringField;
    VehiculeIdType: TStringField;
    Repos: TTable;
    Evenement: TTable;
    TypeRep: TTable;
    TypeRepCode: TStringField;
    TypeRepKilometre: TIntegerField;
    TypeRepDescription: TStringField;
    Materls: TTable;
    MaterlsNumero: TAutoIncField;
    MaterlsIdentification: TStringField;
    MaterlsUnite: TStringField;
    SelEvenmnt: TQuery;
    VoyVehicule: TQuery;
    VoyVehiculenumero: TIntegerField;
    VoyVehiculeTete: TStringField;
    VoyVehiculeQueue: TStringField;
    VoyVehiculeAide: TIntegerField;
    VoyVehiculeChauffeur: TIntegerField;
    VoyVehiculeParcours: TIntegerField;
    VoyVehiculeCarbConsom: TFloatField;
    VoyVehiculeCarbStock: TFloatField;
    VoyVehiculeCarbEspece: TFloatField;
    VoyVehiculePrixCarb: TFloatField;
    VoyVehiculeNumEvnt: TIntegerField;
    VoyVehiculeIdChauffeur: TStringField;
    VoyVehiculeDistance: TFloatField;
    VoyVehiculeDestination: TStringField;
    VoyVehiculeOrigine: TStringField;
    VoyVehiculeDaty: TDateTimeField;
    VoyVehiculeDateFin: TDateTimeField;
    VoyVehiculeDuree: TDateTimeField;
    VoyVehiculeSigne: TStringField;
    VoyEquipage: TQuery;
    SelEquipage: TQuery;
    SelEquipageNumero: TAutoIncField;
    SelEquipageNom: TStringField;
    SelEquipagePrenom: TStringField;
    SelEquipageAdresse: TStringField;
    SelEquipageCp: TStringField;
    SelEquipageDateNaiss: TDateField;
    SelEquipageFonction: TSmallintField;
    SelEquipageQualification: TStringField;
    SelEquipageSurNom: TStringField;
    SelEquipageIsEquipage: TBooleanField;
    SelEquipageIdCategorie: TStringField;
    SelEquipageIdFonction: TStringField;
    SelEquipageVille: TStringField;
    lstMatls: TTable;
    lstMatlsNumMat: TIntegerField;
    lstMatlsCode: TStringField;
    lstMatlsEtat: TStringField;
    lstMatlsOrigine: TStringField;
    lstMatlsEmplace: TStringField;
    lstMatlsRemarque: TStringField;
    lstMatlsNumCode: TStringField;
    PtMateriel: TQuery;
    PtMaterielNumero: TIntegerField;
    PtMaterielIdentification: TStringField;
    PtMaterielUnite: TStringField;
    PtMaterielPU: TFloatField;
    PtMaterielNumMat: TIntegerField;
    PtMaterielCode: TStringField;
    PtMaterielEtat: TStringField;
    PtMaterielOrigine: TStringField;
    PtMaterielEmplace: TStringField;
    PtMaterielRemarque: TStringField;
    PtMaterielNumCode: TStringField;
    PtMaterielNumero_1: TIntegerField;
    PtMaterielTypRes: TStringField;
    PtMaterielCodeRes: TStringField;
    PtMaterielDaty: TDateTimeField;
    PtMaterielRemarque_1: TStringField;
    PtMaterielDescrip: TStringField;
    PtMaterielAprev: TBooleanField;
    PtMaterielIzy: TBooleanField;
    PtMaterielNbprev: TSmallintField;
    PtMaterielDateFin: TDateTimeField;
    PtMaterielSigne: TStringField;
    PtMaterielVoyage: TIntegerField;
    PtMaterielAnniversaire: TSmallintField;
    Tempon: TTable;
    TemponSTRING1: TStringField;
    TemponSTRING2: TStringField;
    TemponSTRING3: TStringField;
    TemponREAL1: TFloatField;
    TemponREAL2: TFloatField;
    TemponBOOLEAN1: TBooleanField;
    TemponBOOLEAN2: TBooleanField;
    TemponDATE1: TDateField;
    TemponDATE2: TDateField;
    Equipage: TTable;
    EquipageNumero: TAutoIncField;
    EquipageNom: TStringField;
    EquipagePrenom: TStringField;
    EquipageAdresse: TStringField;
    EquipageCp: TStringField;
    EquipageDateNaiss: TDateField;
    EquipageFonction: TSmallintField;
    EquipageQualification: TStringField;
    EquipageSurNom: TStringField;
    EquipageIsEquipage: TBooleanField;
    VehiculeIdEquipage: TStringField;
    CategVeh: TTable;
    CategVehCategVeh: TStringField;
    CategVehDesignation: TStringField;
    VehiculeIdCategorie: TStringField;
    SourceMateriel: TDataSource;
    SelEvenmntNumero: TAutoIncField;
    SelEvenmntLogiciel: TStringField;
    SelEvenmntObjet: TStringField;
    SelEvenmntCodeObjet: TStringField;
    SelEvenmntDaty: TDateTimeField;
    SelEvenmntRemarque: TStringField;
    SelEvenmntDescrip: TStringField;
    SelEvenmntAprev: TBooleanField;
    SelEvenmntIzy: TBooleanField;
    SelEvenmntNbprev: TSmallintField;
    SelEvenmntDateFin: TDateTimeField;
    SelEvenmntSigne: TStringField;
    Parcours: TTable;
    ParcoursParcour: TAutoIncField;
    ParcoursOrigine: TStringField;
    ParcoursDestination: TStringField;
    ParcoursDistance: TFloatField;
    ParcoursEtatRoute: TStringField;
    Lieu: TTable;
    LieuCode: TStringField;
    LieuLieu: TStringField;
    ParcoursDestVille: TStringField;
    ParcoursOrigVille: TStringField;
    EvenementNumero: TAutoIncField;
    EvenementLogiciel: TStringField;
    EvenementObjet: TStringField;
    EvenementCodeObjet: TStringField;
    EvenementDaty: TDateTimeField;
    EvenementRemarque: TStringField;
    EvenementDescrip: TStringField;
    EvenementAprev: TBooleanField;
    EvenementIzy: TBooleanField;
    EvenementNbprev: TSmallintField;
    EvenementDateFin: TDateTimeField;
    EvenementSigne: TStringField;
    VoyEquipageNumero: TIntegerField;
    VoyEquipageTete: TStringField;
    VoyEquipageQueue: TStringField;
    VoyEquipageAide: TIntegerField;
    VoyEquipageChauffeur: TIntegerField;
    VoyEquipageParcours: TIntegerField;
    VoyEquipageCarbConsom: TFloatField;
    VoyEquipageCarbStock: TFloatField;
    VoyEquipageCarbEspece: TFloatField;
    VoyEquipagePrixCarb: TFloatField;
    VoyEquipageNumEvnt: TIntegerField;
    VoyEquipageNumero_1: TIntegerField;
    VoyEquipageLogiciel: TStringField;
    VoyEquipageObjet: TStringField;
    VoyEquipageCodeObjet: TStringField;
    VoyEquipageDaty: TDateTimeField;
    VoyEquipageRemarque: TStringField;
    VoyEquipageDescrip: TStringField;
    VoyEquipageAprev: TBooleanField;
    VoyEquipageIzy: TBooleanField;
    VoyEquipageNbprev: TSmallintField;
    VoyEquipageDateFin: TDateTimeField;
    VoyEquipageSigne: TStringField;
    CatePers: TTable;
    CatePersCategPers: TStringField;
    CatePersDesignation: TStringField;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure ChangeChemin(Chemin:string);
  end;
var
  DataImmo: TDataImmo;

procedure CreerDataImmo;
procedure VonoyDataImmo;

implementation

{$R *.DFM}

procedure CreerDataImmo;
begin
  DataImmo:=TDataImmo.Create(Application);
end;

procedure VonoyDataImmo;
begin
  DataImmo.Free;
end;

procedure TDataImmo.ChangeChemin(Chemin:string);
begin
  FichImmo.Close;     FichImmo.DatabaseName:=Chemin;
  SelAffectat.Close;  SelAffectat.DatabaseName:=Chemin;
  SelEmplace.Close;   SelEmplace.DatabaseName:=Chemin;
  SelSortImmo.Close;  SelSortImmo.DatabaseName:=Chemin;
  SelPlanAmmo.Close;  SelPlanAmmo.DatabaseName:=Chemin;
  Vehicule.Close;     Vehicule.DatabaseName:=Chemin;
  Equipage.Close;     Equipage.DatabaseName:=Chemin;
  SelEquipage.Close;  SelEquipage.DatabaseName:=Chemin;
end;


end.
