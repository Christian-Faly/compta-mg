library Tiers;

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
