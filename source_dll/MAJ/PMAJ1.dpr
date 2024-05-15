library PMAJ1;

  {Remarque importante à propos de la gestion mémoire des DLL : ShareMem doit
  être la première unité dans la clause USES de votre bibliothèque,
  ET dans la clause USES de votre projet (sélectionnez Voir-Source du projet)
  si vos DLLs exportent des procédures ou des fonctions passant en paramètre
  des chaînes ou des résultats de fonction.
  Ceci s'applique à toutes les chaînes passées par ou à vos DLLs - mêmes celles
  qui sont imbriquées dans des enregistrements ou des classes. ShareMem est
  l'unité d'interface au gestionnaire de mémoire partagée DELPHIMM.DLL, qui
  doit être déployé avec vos propres DLLs. Pour éviter l'emploi de DELPHIMM.DLL,
  passez vos chaînes en utilisant des paramètres PChar ou ShortString. }

uses
  ShareMem,
  SysUtils,
  Classes,
  UObjet in 'UObjet.pas' {DObjet: TDataModule},
  SaisiList in 'SaisiList.pas' {FSaisiList},
  MaitrDet in 'MaitrDet.pas' {FMaitrDet},
  ListDonnee3 in 'ListDonnee3.pas' {FListDonnee3},
  SaisiDonnee3 in 'SaisiDonnee3.pas' {FSaisieDonnee3},
  ListDonnee in 'ListDonnee.pas' {FListDonnee},
  SaisiDonnee in 'SaisiDonnee.pas' {FSaisieDonnee},
  MAJDonnee in 'MAJDonnee.pas' {FMAJDonnee},
  UEtape in 'UEtape.pas' {FEtape},
  UMait2ColFixe in 'UMait2ColFixe.pas' {FMait2ColFixe},
  ListDonnee2 in 'ListDonnee2.pas' {FListDonnee2},
  SaisiDonnee2 in 'SaisiDonnee2.pas' {FSaisieDonnee2},
  URecherche in 'temp\pppp\URecherche.pas' {FRecherche},
  SaisiAvecCritere in 'SaisiAvecCritere.pas' {FSaiAvecCritere},
  URecherche1 in 'URecherche1.pas' {FRecherche1},
  UMoteur in 'UMoteur.pas' {Moteur: TDataModule},
  UM_Recherche in 'UM_Recherche.pas' {MoteurRecherche: TDataModule},
  UControl in 'UControl.pas' {FControl},
  ERecheche in 'ERecheche.pas' {FERecherche},
  TypeElmt in '..\..\Commun\TypeElmt.pas',
  USaisieFixe in 'USaisieFixe.pas' {FSaisieFixe},
  Mait2Det in 'Mait2Det.pas' {FMait2Det},
  UDaArbre in 'UDaArbre.pas' {DaArbre: TDataModule},
  UArbre in 'UArbre.pas' {FArbre},
  USaisiMultiple in 'USaisiMultiple.pas' {FSaisiePrestation};

exports
  AsehoySaisieDonnee, AsehoySaisieDonnee2, AsehoyListDonnee, AsehoyListDonnee2,
  AsehoyListDonnee3, AsehoyMaitre2Detail, AsehoyMaitreDetail,AsehoySaisiList,
  AsehoyEtape, AsehoyRecherche,CreerListeTable,AsehoySaisiAvecCritere,AsehoyArbre,
  AsehoySaisieMultiple;

var SaveExit:Pointer;

procedure LibExit;
begin
  ExitProc := SaveExit;
end;

begin
  SaveExit:=ExitProc;
  ExitProc:=@LibExit;
end.

