unit ImporDoc;

interface
uses Windows,Dialogs,menus;

Type

  {TypeElmnt}
  TTabMenu            = array[1..10]of TMainMenu;
  TAsehoySociete      = function(nouveau:ShortInt;transf,logiciel,origine,Filtre:string;Commerciale:boolean):integer;
  TAsehoyMdp          = procedure(util:string);
  TAsehoyLstUtil      = procedure(util,Logiciel:string);
  TAsehoyDroit        = function:integer;

  TAsehoyLieu         = procedure(mode:shortint);
  TEstCePeutEntrer       = function (CodeUt,commande:string;msg:boolean):boolean;
  TMiseAJourCommande     = procedure(var TabMenu:TTabMenu;nb:integer;util,Logiciel:string);
  TAjouterEntrerCommande = procedure(CodeUt,commande:string);


var
  HDocument           : THandle;
  chem                : string;

  {Autre}
  AsehoySociete            : TAsehoySociete;
  AsehoyMaintenance        : TAsehoyDroit;
  AsehoyLieu               : TAsehoyLieu;
  odbcMultisoc,chemMultiSoc: string;

function ChargerSociete:boolean;

implementation

function ChargerSociete:boolean;
begin
  Result:=false;

  HDocument := LoadLibrary('PMultiSo.dll');
  if HDocument = 0 then
  begin
    ShowMessage('Impossible de charger PMultiSo.dll');
    exit;
  end;

  @AsehoySociete := GetProcAddress(HDocument, 'AsehoySociete');
  if @AsehoySociete = nil then ShowMessage('Impossible de charger AsehoySociete de Document.dll');

  @AsehoyMaintenance:= GetProcAddress(HDocument, 'AsehoyMaintenance');
  if @AsehoyMaintenance = nil then ShowMessage('Impossible de charger AsehoyMaintenance de Document.dll');

  @AsehoyLieu:= GetProcAddress(HDocument, 'AsehoyLieu');
  if @AsehoyLieu = nil then ShowMessage('Impossible de charger AsehoyLieu de Document.dll');

  Result:=true;
end;

begin

end.
