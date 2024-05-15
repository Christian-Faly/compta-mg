library Tiers;

{ Remarque importante à propos de la gestion mémoire des DLL : ShareMem doit
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
  SaiPaiem in '..\..\..\..\..\Ylaf\Source\Tiers\SaiPaiem.pas' {FSaiPaiem},
  DaTiers in 'DaTiers.pas' {DataTiers: TDataModule},
  SQCLIENT in 'SQCLIENT.PAS' {FSQClient},
  ImporDoc in '..\..\..\..\..\Ylaf\Bin\ImporDoc.pas',
  lettrage in '..\..\..\..\..\Ylaf\Source\Tiers\lettrage.pas' {FLettrage},
  SaiClient in 'SaiClient.pas' {FSaiClient},
  LstTier1 in 'LstTier1.pas' {FLstTier1},
  LstSimpl in 'LstSimpl.pas' {FLst},
  Saisimpl in 'Saisimpl.pas' {FSaisimpl},
  EtatLettre in '..\..\..\..\..\Ylaf\source\Tiers\EtatLettre.pas' {FEtatLettre},
  ImporSto in '..\..\..\..\..\Ylaf\Bin\ImporSto.pas',
  QteInven in 'QteInven.pas' {FQteInven},
  PlafQte in 'PlafQte.pas' {FPlafQte},
  LstQtInv in 'LstQtInv.pas' {FLstQtInv},
  SaiCompo in 'SaiCompo.pas' {FSaiCompo},
  TypeElmt in '..\..\Commun\Source\TypeElmt.pas',
  informat in '..\..\Commun\Source\INFORMAT.PAS' {FInformat};

exports
  AsehoySaiPaiem, ChangeCheminTiers,AsehoyLettrage,AsehoyLstTier1,AsehoyLstSimplTie,
  AsehoyLstQteTie, DataDeletrerElt;

var SaveExit:Pointer;

procedure LibExit;
begin
  ExitProc:=SaveExit;
end;

begin
  SaveExit:=ExitProc;
  ExitProc:=@LibExit;
end.
