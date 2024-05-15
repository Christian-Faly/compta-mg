unit ImporAna;

interface

uses Windows,Dialogs;

Type
  TAsehoyPoste       = procedure;
  TAsehoyProduit     = procedure;

var
  HAnalytique       : THandle;
  AsehoyPoste       : TAsehoyPoste;
  AsehoyProduit     : TAsehoyProduit;

function ChargerAnal:boolean;

implementation

function ChargerAnal:boolean;
begin
  Result:=false;
  HAnalytique := LoadLibrary('Analyt.dll');
  if HAnalytique = 0 then
  begin
    MessageDlg('Impossible de charger ''Analyt.dll''',
        mtError,[mbok],0);
    exit;
  end;
  Result:=true;
  @AsehoyPoste := GetProcAddress(HAnalytique, 'AsehoyPoste');
  if @AsehoyPoste = nil then MessageDlg('Impossible de trouver ''AsehoyPoste''',
        mtError,[mbok],0);
  @AsehoyProduit := GetProcAddress(HAnalytique, 'AsehoyProduit');
  if @AsehoyProduit = nil then MessageDlg('Impossible de trouver ''AsehoyProduit''',
        mtError,[mbok],0);
end;

end.
