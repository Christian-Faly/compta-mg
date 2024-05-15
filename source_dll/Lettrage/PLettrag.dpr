library PLettrag;

{ Remarque importante � propos de la gestion m�moire des DLL : ShareMem doit
  �tre la premi�re unit� dans la clause USES de votre biblioth�que,
  ET dans la clause USES de votre projet (s�lectionnez Voir-Source du projet)
  si vos DLLs exportent des proc�dures ou des fonctions passant en param�tre
  des cha�nes ou des r�sultats de fonction.
  Ceci s'applique � toutes les cha�nes pass�es par ou � vos DLLs - m�mes celles
  qui sont imbriqu�es dans des enregistrements ou des classes. ShareMem est
  l'unit� d'interface au gestionnaire de m�moire partag�e DELPHIMM.DLL, qui
  doit �tre d�ploy� avec vos propres DLLs. Pour �viter l'emploi de DELPHIMM.DLL,
  passez vos cha�nes en utilisant des param�tres PChar ou ShortString. }

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
