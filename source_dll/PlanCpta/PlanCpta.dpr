library PlanCpta;

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
  LstCpt in 'LstCpt.pas' {Form45},
  NumCompt in 'NumCompt.pas' {Form44},
  DaPlanCp in 'DaPlanCp.pas' {DataCpte: TDataModule},
  Lieu in 'Lieu.pas' {FLieu},
  Typprod in 'Typprod.pas' {Form144},
  EtatPlan in 'EtatPlan.pas' {FEtatPlan},
  TypeElmt in '..\..\Commun\Source\TypeElmt.pas';

exports
  {Autres avec boite de dialogue}
  AsehoyCpt, AsehoyLstCpt,ChangeChemin,CreerDataCpte, AsehoyLieu,
  AsehoyTypProd;

var SaveExit:Pointer;

procedure LibExit;
begin
  ExitProc := SaveExit;
end;

begin
  SaveExit:=ExitProc;
  ExitProc:=@LibExit;
end.

