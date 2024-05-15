library PLettrag;

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
  UDaLettr in 'UDaLettr.pas' {DataTiers: TDataModule},
  LETTRAGE in 'LETTRAGE.PAS' {FLettrage},
  EtatLettre in 'EtatLettre.pas' {FEtatLettre},
  TypeElmt in '..\..\Commun\Source\TypeElmt.pas',
  informat in '..\..\Commun\Source\INFORMAT.PAS' {FInformat},
  SaiPaiem in 'SaiPaiem.pas' {FSaiPaiem},
  ImpPlan in '..\..\PlanCpta\ADO\ImpPlan.pas',
  PropoEcr in 'PropoEcr.pas' {FSelection};

exports
  AsehoySaiPaiem, ChangeCheminTiers, AsehoyLettrage, AsehoySelection,
  DataDeletrerElt;

var SaveExit:Pointer;

procedure LibExit;
begin
  ExitProc:=SaveExit;
end;

begin
  SaveExit:=ExitProc;
  ExitProc:=@LibExit;
end.
