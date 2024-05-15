unit ImpMAJ1;

interface

uses Windows,Dialogs,menus;

Type
  TUnEntree=record
    Ndf:string[20];
    Critere:string[20];
    Ndc:string[20];
    Valeur:string[50];
    Controle:string[20];
    Visible:Boolean;
    Recherche:Boolean;
    Egale:Integer;
  end;
  TEntree=array[0..30] of TUnEntree;

  TUneListe=record
    Ndf_Orig:string[20];
    Cle_Orig:string[20];
    lib_Orig:string[20];
    Ndf_Lien:string[20];
    Lien_Maitre:string[20];
    Lien_Table:string[20];
  end;
  TListe=array[0..30] of TUneListe;


  TAsehoyListDonnee      = function(odbc,chemin,ndf:string):integer;
  TAsehoyListDonnee2     = function(odbc,Chemin,Ndf:string;Ent:TEntree):integer;
  TAsehoyListDonnee3     = function(odbc,Chemin,Ndf:string;Ent,Pg:TEntree):integer;
  TAsehoyMaitreDetail    = procedure (odbc,chemin,ndf_Maitre,chp_Maitre,ndf_Detail,Chp_Detail:string;
                             EntMaitre,EntDetail:TEntree);
  TAsehoyMaitre2Detail   = function(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                             chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                             EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;
  TAsehoySaisiList       = function(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                             chp_Maitre2,Affiche,ndf_Detail,Chp_Detail1,Chp_Detail2:string;Entree:TEntree):integer;
  TAsehoyEtape           = procedure(odbc,Chemin:string;Maitre:TUnEntree; Fic:TEntree);
  TAsehoySaisieDonnee    = procedure(odbc,chemin,ndf:string);
  TAsehoySaisieDonnee2   = procedure(odbc,Chemin,ndf:string;Entr:TEntree;Mode:integer);

  TAsehoyRecherche       = procedure(odbc,Chemin,SelectTable,TableMaitre,ChpMaitre,TableDetail,ChpDetail:string;EntMaitre,EntDetail:TEntree);
  TCreerListeTable       = procedure (odbc,chemin:string);
  TAsehoySaisiAvecCritere= procedure (Titre:string;Ajout:Boolean;Chemin,NdfMaitre,Code,
                                  ChpMaitre,NdfDetail,ChpDetail:string;
                                  EntMaitre,EntDetail:TEntree);
  TAsehoyArbre            = procedure (odbc,Chemin,Ndf:string;isCodeNum,SeulPere:boolean);
  TAsehoySaisieMultiple   = procedure (odbc,Chemin,ndf,chp_Maitre,ndf_Detail1,chp_Detail1,ndf_Detail2,Chp_Detail2:string;
                                       Entree,EntreeDetail1,EntreeDetail2:TEntree;
                                       Mode,NbEntete:integer);
var
  Entree,
  Entree1,
  Entree2,
  entreeMaitre1,
  entreeMaitre2,
  Pejy                 : TEntree ;
  HPMAJ1               : THandle;
  {Autre}
  AsehoyListDonnee      : TAsehoyListDonnee;
  AsehoyListDonnee2     : TAsehoyListDonnee2;
  AsehoyListDonnee3     : TAsehoyListDonnee3;
  AsehoyMaitreDetail    : TAsehoyMaitreDetail;
  AsehoySaisiList       : TAsehoySaisiList;
  AsehoyMaitre2Detail   : TAsehoyMaitre2Detail;
  AsehoyEtape           : TAsehoyEtape;
  AsehoySaisieDonnee    : TAsehoySaisieDonnee;
  AsehoySaisieDonnee2   : TAsehoySaisieDonnee2;
  CreerListeTable       : TCreerListeTable;
  AsehoySaisiAvecCritere: TAsehoySaisiAvecCritere;
  AsehoyArbre           : TAsehoyArbre;
  AsehoySaisieMultiple  : TAsehoySaisieMultiple;

function ChargerMAJ1   : boolean;

implementation

function ChargerMAJ1:boolean;
begin
  Result:=false;

  HPMAJ1 := LoadLibrary('PMAJ1.dll');
  if HPMAJ1 = 0 then
  begin
    ShowMessage('Impossible de charger PMAJ1.dll');
    exit;
  end;

  @AsehoyListDonnee:= GetProcAddress(HPMAJ1, 'AsehoyListDonnee');
  if @AsehoyListDonnee = nil then ShowMessage('Impossible de charger AsehoyListDonnee de PMAJ1.dll');

  @AsehoyListDonnee2:= GetProcAddress(HPMAJ1, 'AsehoyListDonnee2');
  if @AsehoyListDonnee2 = nil then ShowMessage('Impossible de charger AsehoyListDonnee2 de PMAJ1.dll');

  @AsehoyListDonnee3:= GetProcAddress(HPMAJ1, 'AsehoyListDonnee3');
  if @AsehoyListDonnee3 = nil then ShowMessage('Impossible de charger AsehoyListDonnee3 de PMAJ1.dll');

  @AsehoyMaitreDetail:= GetProcAddress(HPMAJ1, 'AsehoyMaitreDetail');
  if @AsehoyMaitreDetail = nil then ShowMessage('Impossible de charger AsehoyMaitreDetail de PMAJ1.dll');

  @AsehoyMaitre2Detail:= GetProcAddress(HPMAJ1, 'AsehoyMaitre2Detail');
  if @AsehoyMaitre2Detail = nil then ShowMessage('Impossible de charger AsehoyMaitre2Detail de PMAJ1.dll');

  @AsehoySaisiList:= GetProcAddress(HPMAJ1, 'AsehoySaisiList');
  if @AsehoySaisiList = nil then ShowMessage('Impossible de charger AsehoySaisiList de PMAJ1.dll');

  @AsehoyEtape:= GetProcAddress(HPMAJ1, 'AsehoyEtape');
  if @AsehoyEtape = nil then ShowMessage('Impossible de charger AsehoyEtape de PMAJ1.dll');

  @AsehoySaisieDonnee:= GetProcAddress(HPMAJ1, 'AsehoySaisieDonnee');
  if @AsehoySaisieDonnee = nil then ShowMessage('Impossible de charger AsehoySaisieDonnee de PMAJ1.dll');

  @AsehoySaisieDonnee2:= GetProcAddress(HPMAJ1, 'AsehoySaisieDonnee2');
  if @AsehoySaisieDonnee2 = nil then ShowMessage('Impossible de charger AsehoySaisieDonnee2 de PMAJ1.dll');


  @CreerListeTable:= GetProcAddress(HPMAJ1, 'CreerListeTable');
  if @CreerListeTable = nil then ShowMessage('Impossible de charger CreerListeTable de PMAJ1.dll');

  @AsehoySaisiAvecCritere:= GetProcAddress(HPMAJ1, 'AsehoySaisiAvecCritere');
  if @AsehoySaisiAvecCritere = nil then ShowMessage('Impossible de charger AsehoySaisiAvecCritere de PMAJ1.dll');

  @AsehoyArbre:= GetProcAddress(HPMAJ1, 'AsehoyArbre');
  if @AsehoyArbre = nil then ShowMessage('Impossible de charger AsehoyArbre de PMAJ1.dll');

  @AsehoySaisieMultiple:= GetProcAddress(HPMAJ1, 'AsehoySaisieMultiple');
  if @AsehoySaisieMultiple = nil then ShowMessage('Impossible de charger AsehoySaisieMultiple de PMAJ1.dll');

  Result:=true;
end;


end.



