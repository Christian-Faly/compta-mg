unit ImporIm;

interface

uses Windows,Dialogs;

Type
  TAsehoyEmploi      = procedure(chem,code:string;cas:integer);
  TAsehoyVehicule    = procedure (chem:string);
  TAsehoyMateriel    = procedure(chem:string);

var
  HImmo            : THandle;
  AsehoyEmploi     : TAsehoyEmploi;
  AsehoyVehicule,
  AsehoyFicheImmo  : TAsehoyVehicule;
  AsehoyMateriel     : TAsehoyMateriel;

function ChargerImmo:boolean;

implementation

function ChargerImmo:boolean;
begin
  Result:=false;
  HImmo := LoadLibrary('Immo3.dll');
  if HImmo = 0 then
  begin
    MessageDlg('Impossible de charger ''Immo.dll''',
        mtError,[mbok],0);
    exit;
  end;

{  @AsehoyFicheImmo := GetProcAddress(HImmo, 'AsehoyFicheImmo');
  if @AsehoyFicheImmo = nil then
  begin
    MessageDlg('Impossible de trouver ''AsehoyFicheImmo''',
        mtError,[mbok],0);
    exit;
  end;

  @AsehoyVehicule := GetProcAddress(HImmo, 'AsehoyVehicule');
  if @AsehoyVehicule = nil then
  begin
    MessageDlg('Impossible de trouver ''AsehoyVehicule''',
        mtError,[mbok],0);
    exit;
  end;

  @AsehoyEmploi := GetProcAddress(HImmo, 'AsehoyEmploi');
  if @AsehoyEmploi = nil then
  begin
    MessageDlg('Impossible de trouver ''AsehoyEmploi''',
        mtError,[mbok],0);
    exit;
  end;

  @AsehoyMateriel := GetProcAddress(HImmo, 'AsehoyMateriel');
  if @AsehoyMateriel = nil then
  begin
    MessageDlg('Impossible de trouver ''AsehoyMateriel''',
        mtError,[mbok],0);
    exit;
  end;  }

  Result:=true;
end;

end.
