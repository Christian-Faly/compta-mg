unit ImporTie;

interface

uses Windows,Dialogs;

Type
  TAsehoySaiPaiem    = procedure(etat,mode,pejy:shortint;Jx,Tie,perio,Chem:string;cas:shortint);
  TChangeCheminTiers = procedure(const chemin:string);
  TAsehoyLettrage    = procedure(typ:shortint;avecforce:boolean;chem:string);
  TAsehoyLstQteTie   = procedure(ndf,CodeSoc:string);
  TAsehoyLstTier1    = procedure(ndf,codesoc:string;choisir:boolean);
  TAsehoyLstSimplTie = procedure(ndf:string;choisir:boolean);
  TDataDeletrerElt   = procedure(numero:integer;codesoc:string);


var
  HTiers            : THandle;
  AsehoySaiPaiem    : TAsehoySaiPaiem;
  ChangeCheminTiers : TChangeCheminTiers;
  AsehoyLettrage    : TAsehoyLettrage;
  AsehoyLstQteTie   : TAsehoyLstQteTie;
  AsehoyLstTier1    : TAsehoyLstTier1;
  AsehoyLstSimplTie : TAsehoyLstSimplTie;
  DataDeletrerElt   : TDataDeletrerElt;



  parten:string;

function ChargerTiers:boolean;

implementation

function ChargerTiers:boolean;
begin
  Result:=false;
  HTiers := LoadLibrary('Tiers.dll');
  if HTiers = 0 then
  begin
    ShowMessage('Impossible de charger ''Tiers.dll''');
    exit;
  end;
  @AsehoySaiPaiem := GetProcAddress(HTiers, 'AsehoySaiPaiem');
  if @AsehoySaiPaiem = nil then
  begin
    ShowMessage('Impossible de trouver ''AsehoySaiPaiem''');
    exit;
  end;
  @ChangeCheminTiers := GetProcAddress(HTiers, 'ChangeCheminTiers');
  if @ChangeCheminTiers = nil then
  begin
    ShowMessage('Impossible de trouver ''ChangeCheminTiers''');
    exit;
  end;
  @AsehoyLettrage := GetProcAddress(HTiers, 'AsehoyLettrage');
  if @AsehoyLettrage = nil then
  begin
    ShowMessage('Impossible de trouver ''AsehoyLettrage''');
    exit;
  end;
  @AsehoyLstQteTie := GetProcAddress(HTiers, 'AsehoyLstQteTie');
  if @AsehoyLstQteTie = nil then
  begin
    ShowMessage('Impossible de trouver ''AsehoyLstQteTie''');
    exit;
  end;
  @AsehoyLstTier1 := GetProcAddress(HTiers, 'AsehoyLstTier1');
  if @AsehoyLstTier1 = nil then
  begin
    ShowMessage('Impossible de trouver ''AsehoyLstTier1''');
    exit;
  end;
  @AsehoyLstSimplTie := GetProcAddress(HTiers, 'AsehoyLstSimplTie');
  if @AsehoyLstSimplTie = nil then
  begin
    ShowMessage('Impossible de trouver ''AsehoyLstSimplTie''');
    exit;
  end;
  @DataDeletrerElt := GetProcAddress(HTiers, 'DataDeletrerElt');
  if @DataDeletrerElt = nil then
  begin
    ShowMessage('Impossible de trouver ''DataDeletrerElt''');
    exit;
  end;
  Result:=true;
end;


end.
