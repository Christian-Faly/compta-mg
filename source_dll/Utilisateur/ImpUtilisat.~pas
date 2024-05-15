
unit ImpUtilisat;

interface
uses Windows,Dialogs,menus;

Type

  {TypeElmnt}
  TTabMenu                    = array[1..10]of TMainMenu;
  TAsehoyMdp                  = procedure(util:string);
  TAsehoyLstUtil              = procedure(util,Logiciel:string);
  TAsehoyDroit                = function:integer;   //(NomProjet:string)
  TEstCePeutEntrer            = function (CodeUt,commande:string;msg:boolean):Integer; //0:non  autorisé; 1:Lecture seul; 2:contrôle total
  TMiseAJourCommande          = procedure(var TabMenu:TTabMenu;nb:integer;util,Logiciel:string);
  TAjouterEntrerCommande      = procedure(CodeUt,commande:string);
  TFaireMAJLog                = procedure(CodeUt,menu,commande,tache:string);//procedure(CodeUt,menu,commande,tache:string);

var
  HDocument                   : THandle;

  {Autre}
  AsehoyMdp                   : TAsehoyMdp;
  AsehoyLstUtil               : TAsehoyLstUtil;
  AsehoyDroit                 : TAsehoyDroit;
  util,menu_util,commande_util: string;
  EstCePeutEntrer             : TEstCePeutEntrer;
  MiseAJourCommande           : TMiseAJourCommande;
  AfakaPlan                   : boolean;
  AjouterEntrerCommande       : TAjouterEntrerCommande;
  FaireMAJLog                 : TFaireMAJLog;
  AsehoyLogUtil               : procedure;
  TabMenu                     : TTabMenu;

function ChargerUtilisat:boolean;

implementation


function ChargerUtilisat:boolean;
begin
  Result:=false;

  HDocument := LoadLibrary('PUtilisat.dll');
  if HDocument = 0 then
  begin
    ShowMessage('Impossible de charger PUtilisat.dll');
    exit;
  end;
  @AsehoyDroit := GetProcAddress(HDocument, 'AsehoyDroit');
  if @AsehoyDroit = nil then ShowMessage('Impossible de charger AsehoyDroit de PUtilisat.dll');

  @AsehoyMdp := GetProcAddress(HDocument, 'AsehoyMdp');
  if @AsehoyMdp = nil then ShowMessage('Impossible de charger AsehoyMdp de PUtilisat.dll');

  @AsehoyLstUtil := GetProcAddress(HDocument, 'AsehoyLstUtil');
  if @AsehoyLstUtil = nil then ShowMessage('Impossible de charger AsehoyLstUtil de PUtilisat.dll');

  @EstCePeutEntrer:= GetProcAddress(HDocument, 'EstCePeutEntrer');
  if @EstCePeutEntrer = nil then ShowMessage('Impossible de charger EstCePeutEntrer de PUtilisat.dll');

  @MiseAJourCommande:= GetProcAddress(HDocument, 'MiseAJourCommande');
  if @MiseAJourCommande = nil then ShowMessage('Impossible de charger MiseAJourCommande de PUtilisat.dll');

  @AjouterEntrerCommande:= GetProcAddress(HDocument, 'AjouterEntrerCommande');
  if @AjouterEntrerCommande = nil then ShowMessage('Impossible de charger AjouterEntrerCommande de PUtilisat.dll');

  @FaireMAJLog:= GetProcAddress(HDocument, 'FaireMAJLog');
  if @FaireMAJLog = nil then ShowMessage('Impossible de charger FaireMAJLog de PUtilisat.dll');

  @AsehoyLogUtil:= GetProcAddress(HDocument, 'AsehoyLogUtil');
  if @AsehoyLogUtil = nil then ShowMessage('Impossible de charger AsehoyLogUtil de PMAJ1.dll');

  Result:=true;
end;

begin
  afakaPlan:=true;

end.
