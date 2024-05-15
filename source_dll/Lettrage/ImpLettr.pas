unit ImpLettr;

interface

uses Windows,Dialogs;

Type

  TProposition= record
        Codebanque:string;
        NomBanque:string;
        NumCheque:string;
        NbTraite:integer;
        IntervEchea:string;
        Unitee:smallint;
        Daty:TDateTime;
        ligneParCmpte:boolean;
        MontantG:real;
  end;

  TLigne = record
      DateEsc:TDateTime;
      Libelle:string;
      Qte:real;
      Debit:string;
      Montant:real;
      NumFact:string;
      Compte:string;
    end;

  TLstLigne = array[1..20] of TLigne;

  TAsehoySaiPaiem    = procedure(etat,mode,pejy:shortint;Jx,Tie,perio,ip,Chem:string;cas:shortint);
  TChangeCheminTiers = procedure(ip, chemin:string);
  TAsehoyLettrage    = procedure(typ:shortint;avecforce:boolean;ip,chem,Tiers:string);
  TDataDeletrerElt   = procedure(numero:integer;ip, codesoc:string);
  TAsehoySelection   = function(cap,lab1,lab2,lab5,NumCptBQ,NumCptTiers,ip,CodeSoc:string;
                    intervalle,selec:boolean;glob:real;var LstLigne:TLstLigne;var Proposition:TProposition;
                    var nbEcriture:word):boolean;
var
  HTiers            : THandle;
  AsehoySaiPaiem    : TAsehoySaiPaiem;
  ChangeCheminTiers : TChangeCheminTiers;
  AsehoyLettrage    : TAsehoyLettrage;
  DataDeletrerElt   : TDataDeletrerElt;
  ForceeLettrage    : Boolean;
  AsehoySelection   : TAsehoySelection;
  Proposition       : TProposition;
  LstLigne          : TLstLigne;
  nbEcriture        : word;
  parten:string;

function ChargerLettre:boolean;

implementation

function ChargerLettre:boolean;
begin
  Result:=false;
  HTiers := LoadLibrary('PLettrag.dll');
  if HTiers = 0 then
  begin
    ShowMessage('Impossible de charger ''PLettrag.dll''');
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

  @DataDeletrerElt := GetProcAddress(HTiers, 'DataDeletrerElt');
  if @DataDeletrerElt = nil then
  begin
    ShowMessage('Impossible de trouver ''DataDeletrerElt''');
    exit;
  end;

  @AsehoySelection := GetProcAddress(HTiers, 'AsehoySelection');
  if @AsehoySelection = nil then
  begin
    ShowMessage('Impossible de trouver ''AsehoySelection''');
    exit;
  end;

  Result:=true;
end;

end.
