library PMultiSo;

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
  UObjet in 'UObjet.pas' {DObjet: TDataModule},
  Societe in 'Societe.pas' {FSociete},
  Maintena in 'Maintena.pas' {FMaintenance},
  Statut in 'Statut.pas' {FStatut},
  Lieu in 'Lieu.pas' {FLieu},
  EtComman in 'EtComman.pas' {FEtCommand},
  TypeElmt in '..\Commun\TypeElmt.pas',
  informat in '..\Commun\INFORMAT.PAS' {FInformat},
  ImpMAJ1 in '..\MAJ\Source\ImpMAJ1.pas';

exports
   AsehoyLieu, AsehoyMaintenance,
  AsehoySociete, AsehoySociete,
  EnleveExtension, AsehoyInformat;

var SaveExit:Pointer;

procedure LibExit;
begin
  ExitProc := SaveExit;
end;

begin
  SaveExit:=ExitProc;
  ExitProc:=@LibExit;
end.

