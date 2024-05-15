unit ImporDoc;

interface
uses Windows,Dialogs,menus;

Type

  {TypeElmnt}
  TAvadihoReal         = function (valStr:string;var valeur:double):boolean;
  TAvadihoPourc        = function (valeur:double;var valStr:string):boolean;
  TEnleveBlanc         = function (orig:string):string;
  TIntDate             = function (dt:TDateTime):real;
  TDiff                = function (dt1,dt2:TDateTime;var dff:integer):boolean;
  TDureeMinute         = function (dt1,dt2:TDateTime;var nbjour:integer;var dt:TDateTime):boolean;
  TIsFinDuMois         = function (dt:TDateTime):boolean;
  TMetterFinMois       = function (y,m:word):TDateTime;
  TAligneDroite        = function (chiffre:string):string;
  TTouteLettre         = procedure(arrete:boolean;chiffre:real;var lettre:string);
  TLettreC             = procedure(chiffre:real;var lettre:string);
  TEnleverLettre       = function (st:string;lettre:string):string;
  TParenthese          = function (txt:string;siNegatif:boolean):string;
  TMinuscule           = function (txt:string;PremierMaj:boolean):string;
  TIncrementeAuto      = function (Numero:string;pos1,long:smallint):string;

  {Autre procedure et fonction avec boite de dialogue}

  TTabMenu            = array[1..10]of TMainMenu;
  TAsehoySociete      = procedure(nouveau:ShortInt;transf,logiciel:string);
  TAsehoyMdp          = procedure(util:string);
  TAsehoyLstUtil      = procedure(util,Logiciel:string);
  TAsehoyCpt          = procedure(clss1,clss2,mode:shortint;initial,chemin:string);
  TSaisiTxt           = procedure(Titre,prompt,init:string;veriplan,texte,radio:boolean);
  TAsehoyDroit        = function:integer;
  TAsehoyEvenmnt      = procedure(Logiciel,Objet, CodeObjet:string);
  TAsehoyEvenmnt4     = procedure(Logigiel,Objet,CodeObjet,Description:string;
                        Date_De,Date_A:TDateTime;prevenir:boolean;nbjour:integer);

  TAsehoyLstCpt       = procedure(Compte,chemin:string;dix,afakamanova:boolean);
  TAsehoyTypProd      = procedure(codeProd:string);
  TAsehoyLieu         = procedure(mode:shortint);
  TAsehoyListDonnee   = function (chemin,ndf:string):integer;
  TAsehoyMaitreDetail = function (chemin1,ndf1,ChampsMaitre,chemin2,ndf2,Champsdetail:string):integer;
  TAsehoyMaitre2Detail = function (chemin1,ndef1,ChampM1,chemin2,ndef2,ChampDet1,ChampDet2,
                                   chemin3,ndef3,ChampMaitre2:string):integer;
  TAsehoySplash       = procedure(charge,titre,progr,utilisat:string);
  TEstCePeutEntrer    = function (CodeUt,commande:string;msg:boolean):boolean;
  TMiseAJourCommande  = procedure(TabMenu:TTabMenu;nb:integer;util,Logiciel:string);



var
  HDocument           : THandle;
  {TypeElmnt}
  AvadihoReal         : TAvadihoReal;
  AvadihoPourc        : TAvadihoPourc;
  EnleveBlanc         : TEnleveBlanc;
  IntDate             : TIntDate;
  Diff                : TDiff;
  DureeMinute         : TDureeMinute;
  IsFinDuMois         : TIsFinDuMois;
  MetterFinMois       : TMetterFinMois;
  AligneDroite        : TAligneDroite;
  TouteLettre         : TTouteLettre;
  LettreC             : TLettreC;
  EnleverLettre       : TEnleverLettre;
  Parenthese          : TParenthese;
  Minuscule           : TMinuscule;
  IncrementeAuto      : TIncrementeAuto;

  {Autre}
  AsehoySociete       : TAsehoySociete;
  AsehoyMdp           : TAsehoyMdp;
  AsehoyLstUtil       : TAsehoyLstUtil;
  AsehoyDroit,
  AsehoyEvenmnt2,
  AsehoyEvenmnt3,
  AsehoyMaintenance,
  AsehoyEvntCouran    : TAsehoyDroit;
  AsehoyEvenmnt       : TAsehoyEvenmnt;
  AsehoyEvenmnt4      : TAsehoyEvenmnt4;
  AsehoyLstCpt        : TAsehoyLstCpt;
  AsehoyCpt           : TAsehoyCpt;
  SaisiTxt            : TSaisiTxt;
  AsehoyTypProd       : TAsehoyTypProd;
  AsehoyLieu          : TAsehoyLieu;
  chem                : string;
  util                : string;
  AsehoySplash        : TAsehoySplash;
  EstCePeutEntrer     : TEstCePeutEntrer;
  MiseAJourCommande   :TMiseAJourCommande;
  ForceeLettrage,
  AfakaPlan           : boolean;
  AsehoyListDonnee    :TAsehoyListDonnee;
  AsehoyMaitreDetail  :TAsehoyMaitreDetail;
  AsehoyMaitre2Detail  :TAsehoyMaitre2Detail;

function ChargerSociete:boolean;

implementation

function ChargerSociete:boolean;
begin
  Result:=false;

  HDocument := LoadLibrary('Document.dll');
  if HDocument = 0 then
  begin
    ShowMessage('Impossible de charger Document.dll');
    exit;
  end;

  @AsehoySociete := GetProcAddress(HDocument, 'AsehoySociete');
  if @AsehoySociete = nil then ShowMessage('Impossible de charger AsehoySociete de Document.dll');

  @AsehoyDroit := GetProcAddress(HDocument, 'AsehoyDroit');
  if @AsehoyDroit = nil then ShowMessage('Impossible de charger AsehoyDroit de Document.dll');

  @AsehoyMdp := GetProcAddress(HDocument, 'AsehoyMdp');
  if @AsehoyMdp = nil then ShowMessage('Impossible de charger AsehoyMdp de Document.dll');

  @AsehoyLstUtil := GetProcAddress(HDocument, 'AsehoyLstUtil');
  if @AsehoyLstUtil = nil then ShowMessage('Impossible de charger AsehoyLstUtil de Document.dll');

  @AsehoyMaintenance:= GetProcAddress(HDocument, 'AsehoyMaintenance');
  if @AsehoyMaintenance = nil then ShowMessage('Impossible de charger AsehoyMaintenance de Document.dll');

  @AsehoyLstCpt:= GetProcAddress(HDocument, 'AsehoyLstCpt');
  if @AsehoyLstCpt = nil then ShowMessage('Impossible de charger AsehoyLstCpt de Document.dll');

  @SaisiTxt:= GetProcAddress(HDocument, 'AsehoySaisiTxt');
  if @SaisiTxt = nil then ShowMessage('Impossible de charger AsehoySaisiTxt de Document.dll');

  @AsehoyCpt:= GetProcAddress(HDocument, 'AsehoyCpt');
  if @AsehoyCpt = nil then ShowMessage('Impossible de charger AsehoyCpt de Document.dll');

  @AsehoyTypProd:= GetProcAddress(HDocument, 'AsehoyTypProd');
  if @AsehoyTypProd = nil then ShowMessage('Impossible de charger AsehoyTypProd de Document.dll');

  @AsehoyLieu:= GetProcAddress(HDocument, 'AsehoyLieu');
  if @AsehoyLieu = nil then ShowMessage('Impossible de charger AsehoyLieu de Document.dll');

  @AsehoyEvenmnt:= GetProcAddress(HDocument, 'AsehoyEvenmnt');
  if @AsehoyEvenmnt = nil then  ShowMessage('Impossible de charger AsehoyEvenmnt de Document.dll');

  @AsehoyEvenmnt2:= GetProcAddress(HDocument, 'AsehoyEvenmnt2');
  if @AsehoyEvenmnt2 = nil then ShowMessage('Impossible de charger AsehoyEvenmnt2 de Document.dll');

  @AsehoyEvenmnt3:= GetProcAddress(HDocument, 'AsehoyEvenmnt3');
  if @AsehoyEvenmnt3 = nil then ShowMessage('Impossible de charger AsehoyEvenmnt3 de Document.dll');

  @AsehoyEvenmnt4:= GetProcAddress(HDocument, 'AsehoyEvenmnt4');
  if @AsehoyEvenmnt4 = nil then ShowMessage('Impossible de charger AsehoyEvenmnt4 de Document.dll');

  @AsehoyEvntCouran:= GetProcAddress(HDocument, 'AsehoyEvntCouran');
  if @AsehoyEvntCouran = nil then ShowMessage('Impossible de charger AsehoyEvntCouran de Document.dll');

  @AsehoyListDonnee:= GetProcAddress(HDocument, 'AsehoyListDonnee');
  if @AsehoyListDonnee = nil then ShowMessage('Impossible de charger AsehoyListDonnee de Document.dll');

  @AsehoyMaitreDetail:= GetProcAddress(HDocument, 'AsehoyMaitreDetail');
  if @AsehoyMaitreDetail = nil then ShowMessage('Impossible de charger AsehoyMaitreDetail de Document.dll');

  @AsehoyMaitre2Detail:= GetProcAddress(HDocument, 'AsehoyMaitre2Detail');
  if @AsehoyMaitre2Detail = nil then ShowMessage('Impossible de charger AsehoyMaitre2Detail de Document.dll');

  @AsehoySplash:= GetProcAddress(HDocument, 'AsehoySplash');
  if @AsehoySplash = nil then ShowMessage('Impossible de charger AsehoySplash de Document.dll');

  @EstCePeutEntrer:= GetProcAddress(HDocument, 'EstCePeutEntrer');
  if @EstCePeutEntrer = nil then ShowMessage('Impossible de charger EstCePeutEntrer de Document.dll');

  @MiseAJourCommande:= GetProcAddress(HDocument, 'MiseAJourCommande');
  if @MiseAJourCommande = nil then ShowMessage('Impossible de charger MiseAJourCommande de Document.dll');

  @TouteLettre:= GetProcAddress(HDocument, 'TouteLettre');
  if @TouteLettre = nil then ShowMessage('Impossible de charger TouteLettre de Document.dll');

  @IncrementeAuto:= GetProcAddress(HDocument, 'IncrementeAuto');
  if @IncrementeAuto = nil then ShowMessage('Impossible de charger IncrementeAuto de Document.dll');

  @Minuscule:= GetProcAddress(HDocument, 'Minuscule');
  if @Minuscule = nil then ShowMessage('Impossible de charger Minuscule de Document.dll');

  @Parenthese:= GetProcAddress(HDocument, 'Parenthese');
  if @Parenthese = nil then ShowMessage('Impossible de charger Parenthese de Document.dll');

  @AligneDroite:= GetProcAddress(HDocument, 'AligneDroite');
  if @AligneDroite = nil then ShowMessage('Impossible de charger AligneDroite de Document.dll');

  @MetterFinMois:= GetProcAddress(HDocument, 'MetterFinMois');
  if @MetterFinMois = nil then ShowMessage('Impossible de charger MetterFinMois de Document.dll');

  @LettreC:= GetProcAddress(HDocument, 'LettreC');
  if @LettreC = nil then ShowMessage('Impossible de charger LettreC de Document.dll');

  @IsFinDuMois:= GetProcAddress(HDocument, 'IsFinDuMois');
  if @IsFinDuMois = nil then  ShowMessage('Impossible de charger IsFinDuMois de Document.dll');

  @IntDate:= GetProcAddress(HDocument, 'IntDate');
  if @IntDate = nil then   ShowMessage('Impossible de charger IntDate de Document.dll');

  @EnleverLettre:= GetProcAddress(HDocument, 'EnleverLettre');
  if @EnleverLettre = nil then ShowMessage('Impossible de charger EnleverLettre de Document.dll');

  @DureeMinute:= GetProcAddress(HDocument, 'DureeMinute');
  if @DureeMinute = nil then ShowMessage('Impossible de charger DureeMinute de Document.dll');

  @EnleveBlanc:= GetProcAddress(HDocument, 'EnleveBlanc');
  if @EnleveBlanc = nil then ShowMessage('Impossible de charger EnleveBlanc de Document.dll');

  @Diff:= GetProcAddress(HDocument, 'Diff');
  if @Diff = nil then ShowMessage('Impossible de charger Diff de Document.dll');

  @AvadihoPourc:= GetProcAddress(HDocument, 'AvadihoPourc');
  if @AvadihoPourc = nil then ShowMessage('Impossible de charger AvadihoPourc de Document.dll');

  @AvadihoReal:= GetProcAddress(HDocument, 'AvadihoReal');
  if @AvadihoReal = nil then ShowMessage('Impossible de charger AvadihoReal de Document.dll');

  Result:=true;
end;

begin
  afakaPlan:=true;

end.
