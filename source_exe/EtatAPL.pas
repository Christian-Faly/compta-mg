unit EtatAPL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, Db, DBTables, StdCtrls;

type
  TFEtatAPL = class(TForm)
    QuickRep2: TQuickRep;
    QRBand23: TQRBand;
    QRLabel67: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel170: TQRLabel;
    QRBand13: TQRBand;
    QRBand1: TQRBand;
    QRLabel202: TQRLabel;
    QRLabel203: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRShape21: TQRShape;
    QRLabel18: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRLabel19: TQRLabel;
    QRShape27: TQRShape;
    QRLabel20: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape60: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape61: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRShape15: TQRShape;
    QRShape154: TQRShape;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRLabel302: TQRLabel;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRLabel305: TQRLabel;
    QRLabel306: TQRLabel;
    QRLabel307: TQRLabel;
    QRLabel308: TQRLabel;
    QRLabel310: TQRLabel;
    QRLabel311: TQRLabel;
    QRLabel312: TQRLabel;
    QRLabel313: TQRLabel;
    QRLabel314: TQRLabel;
    QRLabel315: TQRLabel;
    QRLabel316: TQRLabel;
    QRLabel318: TQRLabel;
    QRLabel319: TQRLabel;
    QRLabel320: TQRLabel;
    QRLabel322: TQRLabel;
    QRLabel323: TQRLabel;
    QRLabel324: TQRLabel;
    QRLabel317: TQRLabel;
    QRLabel321: TQRLabel;
    QRShape301: TQRShape;
    QRShape308: TQRShape;
    QRShape309: TQRShape;
    QRShape310: TQRShape;
    QRShape311: TQRShape;
    QRShape312: TQRShape;
    QRShape313: TQRShape;
    QRShape314: TQRShape;
    QRShape315: TQRShape;
    QRShape316: TQRShape;
    QRShape317: TQRShape;
    QRShape318: TQRShape;
    QRShape319: TQRShape;
    QRShape320: TQRShape;
    QRShape321: TQRShape;
    QRShape322: TQRShape;
    QRShape323: TQRShape;
    QRShape324: TQRShape;
    QRShape302: TQRShape;
    QRShape303: TQRShape;
    QRShape304: TQRShape;
    QRShape305: TQRShape;
    QRShape306: TQRShape;
    QRShape307: TQRShape;
    QRLabel301: TQRLabel;
    QRLabel309: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRShape11: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand8: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRGroup6: TQRGroup;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRBand9: TQRBand;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape25: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape30: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape33: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape36: TQRShape;
    QRBand10: TQRBand;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel75: TQRLabel;
    QRShape42: TQRShape;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRShape43: TQRShape;
    QRBand11: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QuickRep5: TQuickRep;
    QRBand16: TQRBand;
    QRLabel210: TQRLabel;
    QRLabel212: TQRLabel;
    QRLabel213: TQRLabel;
    QRLabel217: TQRLabel;
    QRShape169: TQRShape;
    QRShape174: TQRShape;
    QRShape175: TQRShape;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRLabel294: TQRLabel;
    QRLabel296: TQRLabel;
    QRShape229: TQRShape;
    QRShape227: TQRShape;
    QRBand17: TQRBand;
    QRShape166: TQRShape;
    QRShape168: TQRShape;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape167: TQRShape;
    QRShape170: TQRShape;
    QRLabel206: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel207: TQRLabel;
    QRShape173: TQRShape;
    QRLabel214: TQRLabel;
    QRLabel215: TQRLabel;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel226: TQRLabel;
    QRShape59: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel293: TQRLabel;
    QRShape225: TQRShape;
    QRBand14: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr13: TQRExpr;
    QRDBText9: TQRDBText;
    QRExpr14: TQRExpr;
    QRGroup1: TQRGroup;
    QRGroup4: TQRGroup;
    QRLabel88: TQRLabel;
    QRGroup3: TQRGroup;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand7: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRBand15: TQRBand;
    QRShape131: TQRShape;
    QRGroup8: TQRGroup;
    QRGroup9: TQRGroup;
    QRLabel178: TQRLabel;
    QRShape132: TQRShape;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel184: TQRLabel;
    QRShape90: TQRShape;
    QRShape94: TQRShape;
    QRShape103: TQRShape;
    QRShape46: TQRShape;
    QRShape107: TQRShape;
    QRGroup10: TQRGroup;
    QRBand12: TQRBand;
    QRShape91: TQRShape;
    QRShape100: TQRShape;
    QRExpr19: TQRExpr;
    QRShape106: TQRShape;
    QRLabel80: TQRLabel;
    QRExpr18: TQRExpr;
    QRShape47: TQRShape;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText31: TQRDBText;
    QRShape48: TQRShape;
    QRExpr3: TQRExpr;
    QRBand18: TQRBand;
    QRLabel89: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel90: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel117: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel93: TQRLabel;
    QRShape49: TQRShape;
    QRLabel94: TQRLabel;
    QRShape50: TQRShape;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRBand19: TQRBand;
    QRExpr5: TQRExpr;
    QRShape63: TQRShape;
    QRLabel96: TQRLabel;
    QRExpr9: TQRExpr;
    QRShape64: TQRShape;
    QRDBText35: TQRDBText;
    QRLabel107: TQRLabel;
    QRLabel109: TQRLabel;
    QRBand20: TQRBand;
    QRExpr10: TQRExpr;
    QRShape67: TQRShape;
    QRLabel111: TQRLabel;
    QRExpr11: TQRExpr;
    QRShape68: TQRShape;
    QRBand22: TQRBand;
    QRLabel7: TQRLabel;
    QRShape70: TQRShape;
    QRGroup7: TQRGroup;
    QRShape71: TQRShape;
    QRBand5: TQRBand;
    QRShape180: TQRShape;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRLabel211: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel225: TQRLabel;
    QRShape228: TQRShape;
    QRLabel295: TQRLabel;
    QRLabel297: TQRLabel;
    QRShape230: TQRShape;
    QRShape69: TQRShape;
    QRLabel110: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRLabel128: TQRLabel;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape85: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRLabel131: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel116: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel130: TQRLabel;
    QRLabel129: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel194: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel204: TQRLabel;
    QRDBText47: TQRDBText;
    QRLabel264: TQRLabel;
    QRLabel265: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel266: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText36: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape34: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText40: TQRDBText;
    QRLabel58: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel59: TQRLabel;
    QRDBText42: TQRDBText;
    QRBand34: TQRBand;
    QRSysData12: TQRSysData;
    QRSysData13: TQRSysData;
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand23BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep5BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand16BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText24Print(sender: TObject; var Value: String);
    procedure QRLabel223Print(sender: TObject; var Value: String);
    procedure QRLabel225Print(sender: TObject; var Value: String);
    procedure QRLabel297Print(sender: TObject; var Value: String);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { D�clarations priv�es }
    sstaxe,pgtaxe:real;
    ssht,pght:real;
    taxe,ht,qte:real;
    QteIdentifie,QteNonIdentifie,
    Identifie,nonidentifie:real;
    TotQteIdentifie,TotQteNonIdentifie,
    TotIdentifie,TotNonIdentifie:real;
    num:integer;
    ETAT:string;
    typfour,hautligne:shortInt;
    codpost,periodeDe,periodeA,tiers:string;
    typa:shortint;
    detail,enregistrer,isViewSource, IsQte, AvecAN :boolean;
    ligne:array[1..25]of TQRShape;
    ligneLL:array[1..25]of TQRLabel;
    vide,tabila:string;
{    procedure AfficheSte1;
    procedure AfficheSte2;}
    procedure AligneAX;
    procedure RequetteDeclare(Fichier:boolean;Tabla:string);
  public
    { D�clarations publiques }
    procedure Imprimeo(tf:shortInt;cp,et,perDe,perA,tie,tabla:string;typ:shortint;det,AvecEnr,viewSource, EstceQte,InclureAN:boolean);

  end;

var
  FEtatAPL: TFEtatAPL;

implementation

uses Daspecia, DaCommun,  AnnexTVA, TypeElmt, USQL;

{$R *.DFM}

procedure TFEtatAPL.AligneAX;
var topl:integer;
 topll,i:integer;
begin
 ligne[1]:=QRShape301;   ligneLL[1]:=QRLabel301;
 ligne[2]:=QRShape302;   ligneLL[2]:=QRLabel302;
 ligne[3]:=QRShape303;   ligneLL[3]:=QRLabel303;
 ligne[4]:=QRShape304;   ligneLL[4]:=QRLabel304;
 ligne[5]:=QRShape305;   ligneLL[5]:=QRLabel305;
 ligne[6]:=QRShape306;   ligneLL[6]:=QRLabel306;
 ligne[7]:=QRShape307;   ligneLL[7]:=QRLabel307;
 ligne[8]:=QRShape308;   ligneLL[8]:=QRLabel308;
 ligne[9]:=QRShape309;   ligneLL[9]:=QRLabel309;
 ligne[10]:=QRShape310;  ligneLL[10]:=QRLabel310;
 ligne[11]:=QRShape311;  ligneLL[11]:=QRLabel311;
 ligne[12]:=QRShape312;  ligneLL[12]:=QRLabel312;
 ligne[13]:=QRShape313;  ligneLL[13]:=QRLabel313;
 ligne[14]:=QRShape314;  ligneLL[14]:=QRLabel314;
 ligne[15]:=QRShape315;  ligneLL[15]:=QRLabel315;
 ligne[16]:=QRShape316;  ligneLL[16]:=QRLabel316;
 ligne[17]:=QRShape317;  ligneLL[17]:=QRLabel317;
 ligne[18]:=QRShape318;  ligneLL[18]:=QRLabel318;
 ligne[19]:=QRShape319;  ligneLL[19]:=QRLabel319;
 ligne[20]:=QRShape320;  ligneLL[20]:=QRLabel320;
 ligne[21]:=QRShape321;  ligneLL[21]:=QRLabel321;
 ligne[22]:=QRShape322;  ligneLL[22]:=QRLabel322;
 ligne[23]:=QRShape323;  ligneLL[23]:=QRLabel323;
 ligne[24]:=QRShape324;  ligneLL[24]:=QRLabel324;
 topLL:=200;
 topl:=219;
 {topLL:=231;
 topl:=252;}
 for i:=1 to 24 do
 begin
   lignell[i].left:=70;
   lignell[i].top:=QRBand1.Height*(i-1)+topll;
   ligne[i].top:=QRBand1.Height*(i-1)+topl;
 end;
end;

procedure TFEtatAPL.Imprimeo(tf:shortInt;cp,et,perDe,perA,tie,tabla:string;typ:shortint;det,AvecEnr,viewSource, EstceQte,InclureAN:boolean);
begin
  AvecAN:=InclureAN;
  tabila:=tabla;
  IsQte:=EstceQte;
  Enregistrer:=AvecEnr;
  isViewSource:=viewSource;
  tiers:=tie;
  detail:=det;
  typfour:=tf;
  codpost:=cp;
  Etat:=et;
  periodeDe:=perDe;
  periodeA:=perA;
  typa:=typ;
  if not AvecEnr then
  begin
    case typa of
      0:QuickRep2.preview;
      1:QuickRep5.preview;
      4:QuickRep3.preview;
   end
  end
  else
  begin
   RequetteDeclare(True,tabila);
  end;
end;

procedure TFEtatAPL.RequetteDeclare(Fichier:boolean;Tabla:string);
begin
  DASQL.Declare.close;
  DASQL.Declare.SQL.clear;
  if fichier then
  begin
    DASQL.Declare.SQL.Add('delete from DecAchat');
    DASQL.Declare.ExecSQL;
    DASQL.Declare.SQL.clear;
    DASQL.Declare.SQL.Add('insert into DecAchat');
  end;
  if tabla>'0' then
    DASQL.Declare.SQL.Add('select * from '+tabla+' c')
  else
    DASQL.Declare.SQL.Add('select * from Declare c');
  DASQL.Declare.SQL.Add('where (c.periode>=:v)and (c.periode<=:w)');
  if not avecAN then
    DASQL.Declare.SQL.Add('and (c.typ<4)');
  if detail then
  begin
    QRGroup4.Height:=26;
    DASQL.Declare.SQL.Add('and (c.tiers=:t)');
  end;
  case typfour of
    0:{Tous};
    1:{Identifi�}
        DASQL.Declare.SQL.Add('and   (c.Statistique1>''0'')');
    2:{Non Identifi�}
        DASQL.Declare.SQL.Add('and   ((c.Statistique1<=''0'')or(c.Statistique1 is null))');
    3:{Identifi�}
        DASQL.Declare.SQL.Add('and   (c.CP='''+codPost+''')');
  end;
  DASQL.Declare.SQL.Add('and(c.Rubrique>='''+Etat+''')and(c.Rubrique<'''+Etat+'Z'')');
  DASQL.Declare.Parameters[0].Value:=PeriodeDe;
  DASQL.Declare.Parameters[1].Value:=PeriodeA;
  if detail then DASQL.Declare.Parameters[2].Value:=tiers;
  if fichier then
  begin
    DASQL.Declare.execSQL;
    showMessage('Copie fichier termin�e');
  end
  else
    DASQL.Declare.Open;
end;

procedure TFEtatAPL.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var val:string;
begin

  Val:=EnleveBlancDroite(Commun.SocieteStatis.Value);
  //Momba ny stat t@ d�cl taloha ireto
  {QRLabel198.Caption:= copy(val,length(val),1);
  QRLabel197.Caption:= copy(val,length(val)-1,1);
  QRLabel66.Caption := copy(val,length(val)-2,1);
  QRLabel65.Caption := copy(val,length(val)-3,1);
  QRLabel10.Caption := copy(val,length(val)-4,1);
  QRLabel9.Caption  := copy(val,length(val)-5,1);}

  if not isViewSource then QRLabel194.Caption :='';
  hautligne:=QRBand1.Height;
  AligneAX;
  if detail then QRBand13.Height:=QRBand1.Height
  else QRBand13.Height:=0;
  QRGroup3.Height:=0;
  QRGroup1.Height:=0;
  QRGroup4.Height:=0;
  num:=0;
  ht:=0;taxe:=0; Qte:=0;
  sstaxe:=0;
  pght:=0;
  pgtaxe:=0;
{  AfficheSte1;}
  Identifie:=0;NonIdentifie:=0;
  QteIdentifie:=0;QteNonIdentifie:=0;
  RequetteDeclare(False,tabila);
  DASQL.Declare.SQL.Add('order by c.Statistique1, c.tiers, c.CodeProd, c.numero');
  DASQL.Declare.Open;
end;

procedure TFEtatAPL.QRSysData2Print(sender: TObject; var Value: String);
var i:integer;
  st:string;
begin
  i:=strtoint(value);
  st:=FormatFloat('000',i);
  QRLabel201.Caption:=copy(st,3,1);
  QRLabel200.Caption:=copy(st,2,1);
  QRLabel199.Caption:=copy(st,1,1);
end;

procedure TFEtatAPL.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var tx:real;
begin
  if DASQL.DeclareDebit.Value='D' then
  begin
    qte:=qte+DASQL.DeclareQte.Value;
    ht:=ht+DASQL.DeclareMontant.Value
  end
  else
  begin
    ht:=ht-DASQL.DeclareMontant.Value;
    qte:=qte-DASQL.DeclareQte.Value;
  end;
  if  DASQL.DeclareExonere.Value=0 then
  begin
    if DASQL.DeclareDebit.Value='D' then
      tx:=ROUND((DASQL.DeclareMontant.Value/100)*DASQL.DeclareTaux.Value)
    else
      tx:=-ROUND((DASQL.DeclareMontant.Value/100)*DASQL.DeclareTaux.Value);
    taxe:=taxe+tx;
    pgtaxe:=pgtaxe+tx;
    ssht:=ssht+ht;
    sstaxe:=sstaxe+taxe;
  end;
end;

procedure TFEtatAPL.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRLabel264.Caption:=EnleveBlancDroite(DaSQL.DeclareNom.Value) + '  ' + EnleveBlancDroite(DaSQL.DeclareAdresse.Value);
  QRLabel264.Caption:=EnleveBlancDroite(DaSQL.DeclareNom.Value);
  QRLabel23.Caption:=EnleveBlancDroite(DaSQL.DeclareAdresse.Value);
  {if enregistrer then
  begin
    if ht<>0 then
    begin
      Special.EditDecl.Insert;
      Special.EditDeclNIF.Value:=DASQL.DeclareNIF_1.Value;
      Special.EditDeclStat.Value:=DASQL.DeclareChoixStat.Value;
      Special.EditDeclAdresse.Value:=DASQL.DeclareAdresse.Value;
      Special.EditDeclNom.Value:=DASQL.DeclareNom.Value;
      Special.EditDeclCompte.Value:=DASQL.DeclareTiers.Value;
      Special.EditDeclProduit.Value:=DASQL.DeclareCodeProd.Value;
      Special.EditDeclObservatio.Value:=DASQL.DeclareNumCHQ.Value;
      Special.EditDeclQte.Value:=qte;
      Special.EditDeclMontHT.Value:=ht;
      Special.EditDeclTaxe.Value:=taxe;
      Special.EditDecl.post;
    end;
  end;}
  if ht=0 then QRBand1.Height:=0
  else QRBand1.Height:=hautligne;
  num:=num+1;
  QRLabel203.Caption:=FormatFloat('#,##0',taxe);
  QRLabel202.Caption:=FormatFloat('#,##0',ht);
end;

procedure TFEtatAPL.QRBand23BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel171.Caption:=FormatFloat('#,##0',pght);
  QRLabel170.Caption:=FormatFloat('#,##0',pgtaxe);
  pght:=0;
  pgtaxe:=0;
end;

procedure TFEtatAPL.QuickRep5BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel196.Caption :='';
  QRGroup7.Height:=0;
  if detail then QRBand14.Height:=21
  else QRBand14.Height:=0;
  num:=0;
  ht:=0;taxe:=0;
  sstaxe:=0;
  QteIdentifie:=0;
  QteNonIdentifie:=0;
  Identifie:=0;NonIdentifie:=0;
  TotQteIdentifie:=0;
  TotQteNonIdentifie:=0;
  TotIdentifie:=0;TotNonIdentifie:=0;

  Commun.SelTaxe.close;
  Commun.SelTaxe.SQL.clear;
  Commun.SelTaxe.SQL.Add('select * from Taxe');
  Commun.SelTaxe.SQL.Add('where (sigle=:x)');
  RequetteDeclare(False,tabila);
  DASQL.Declare.SQL.Add('order by c.CodeDecl, c.numero');
  DASQL.Declare.Open;
  vide:='                                                                   ';
  vide:=vide+'                                                                   ';
  QRLabel127.caption:='';
  QRLabel128.caption:='';
  QRLabel129.caption:='';
  QRLabel130.caption:='';
  if IsQte then
  begin
    QRBand5.Height :=20;
    QRLabel127.caption:=vide;
    QRLabel129.caption:=vide;
    QRLabel130.caption:=vide;
  end
  else
  begin
    QRLabel7.Caption :=vide;
    QRLabel128.caption:=vide;
    QRBand22.Height :=0;
    QRBand17.Height :=0;
    QRGroup7.Height :=0;
//    QRBand14.Height :=0;
    QRBand16.Height :=0;
    QRBand5.Height :=543;
  end;
end;

procedure TFEtatAPL.QRBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  num:=num+1;
  if DASQL.DeclareStatistique1.Value>'0' then
  begin
    if DASQL.DeclareDebit.Value = 'D'  then
    begin
      Identifie:=Identifie+DASQL.DeclareMontant.Value;
      QteIdentifie:=QteIdentifie+ DASQL.DeclareQte.Value;
    end
    else
    begin
      Identifie:=Identifie - DASQL.DeclareMontant.Value;
      QteIdentifie:=QteIdentifie - DASQL.DeclareQte.Value;
    end;
  end
  else
  begin
    if DASQL.DeclareDebit.Value='D'  then
    begin
      NonIdentifie:=NonIdentifie+DASQL.DeclareMontant.Value;
      QteNonIdentifie:=QteNonIdentifie+ DASQL.DeclareQte.Value;
    end
    else
    begin
      NonIdentifie:=NonIdentifie-DASQL.DeclareMontant.Value;
      QteNonIdentifie:=QteNonIdentifie - DASQL.DeclareQte.Value;
    end
  end;
end;

procedure TFEtatAPL.QRBand16BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel210.Caption:=FormatFloat('#,##0',QteIdentifie);
  QRLabel217.Caption:=FormatFloat('#,##0',QteNonIdentifie);
  QRLabel212.Caption:=FormatFloat('#,##0',Identifie);
  QRLabel213.Caption:=FormatFloat('#,##0',NonIdentifie);
  QRLabel294.Caption:=FormatFloat('#,##0',QteIdentifie+QteNonIdentifie);
  QRLabel296.Caption:=FormatFloat('#,##0',Identifie+NonIdentifie);

  TotIdentifie:=TotIdentifie+Identifie;
  TotNonIdentifie:=TotNonIdentifie+NonIdentifie;
  TotQteIdentifie:=TotQteIdentifie+QteIdentifie;
  TotQteNonIdentifie:=TotQteNonIdentifie+QteNonIdentifie;
  Identifie:=0;NonIdentifie:=0;
  QteIdentifie:=0;QteNonIdentifie:=0;
end;

procedure TFEtatAPL.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var lettre:string;
begin
  QRLabel116.Caption :=copy(PeriodeDe,1,4);
  QRLabel222.Caption:=FormatFloat('#,##0',TotQteIdentifie);
  QRLabel223.Caption:=FormatFloat('#,##0',TotIdentifie);
  QRLabel224.Caption:=FormatFloat('#,##0',TotQteNonIdentifie);
  QRLabel225.Caption:=FormatFloat('#,##0',TotNonIdentifie);
  QRLabel295.Caption:=FormatFloat('#,##0',TotQteIdentifie+TotQteNonIdentifie);
  QRLabel297.Caption:=FormatFloat('#,##0',TotIdentifie+TotNonIdentifie);
  lettre:=TouteLettre(False,TotIdentifie);
  QRLabel131.caption:=lettre+ ' '+enleveblancDroite(Commun.SocieteMonnaie.Value);  // ' Ariary' no teo taloha
{  if enregistrer then
  begin
    QRLabel128.caption:='';
    QRLabel127.caption:=vide;
    QRLabel129.caption:=vide;
    QRLabel130.caption:=vide;
  end
  else
  begin
    QRLabel128.caption:=vide+vide;
    QRLabel127.caption:='';
    QRLabel129.caption:='';
    QRLabel130.caption:='';
  end;}
end;

procedure TFEtatAPL.QRExpr4Print(sender: TObject; var Value: String);
var val:double;
begin
  AvadihoReal(value,val);
  pgHT:=pgHT+val;
end;

procedure TFEtatAPL.QRExpr6Print(sender: TObject; var Value: String);
var val:double;
begin
  AvadihoReal(value,val);
  pgTaxe:=pgTaxe+val;
end;

procedure TFEtatAPL.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  num:=num+1;
  if (DASQL.SelDeclSTAT.Value>'0')and(length(DASQL.SelDeclSTAT.Value)<7) then
  begin
    Identifie:=Identifie+DASQL.SelDeclMontHT.Value;
    QteIdentifie:=QteIdentifie+ DASQL.SelDeclQte.Value;
  end
  else
  begin
    NonIdentifie:=NonIdentifie+DASQL.SelDeclMontHT.Value;
    QteNonIdentifie:=QteNonIdentifie+ DASQL.SelDeclQte.Value;
  end;
end;

procedure TFEtatAPL.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel204.Caption :='';
  QRGroup6.Height:=0;
  if detail then QRBand11.Height:=21
  else QRBand11.Height:=0;
  num:=0;
  ht:=0;taxe:=0;
  sstaxe:=0;
  QteIdentifie:=0;
  QteNonIdentifie:=0;
  Identifie:=0;NonIdentifie:=0;
  TotQteIdentifie:=0;
  TotQteNonIdentifie:=0;
  TotIdentifie:=0;TotNonIdentifie:=0;
  Identifie:=0;NonIdentifie:=0;
end;

procedure TFEtatAPL.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=FormatFloat('#,##0.####',QteIdentifie);
  QRLabel15.Caption:=FormatFloat('#,##0',Identifie);
  QRLabel17.Caption:=FormatFloat('#,##0.####',QteNonIdentifie);
  QRLabel16.Caption:=FormatFloat('#,##0',NonIdentifie);
  QRLabel21.Caption:=FormatFloat('#,##0.####',QteIdentifie+QteNonIdentifie);
  QRLabel25.Caption:=FormatFloat('#,##0.####',Identifie+NonIdentifie);

  TotIdentifie:=TotIdentifie+Identifie;
  TotNonIdentifie:=TotNonIdentifie+NonIdentifie;
  TotQteIdentifie:=TotQteIdentifie+QteIdentifie;
  TotQteNonIdentifie:=TotQteNonIdentifie+QteNonIdentifie;
  Identifie:=0;NonIdentifie:=0;
  QteIdentifie:=0;QteNonIdentifie:=0;

end;

procedure TFEtatAPL.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel45.Caption:=FormatFloat('#,##0.####',TotQteIdentifie);
  QRLabel46.Caption:=FormatFloat('#,##0',TotIdentifie);
  QRLabel72.Caption:=FormatFloat('#,##0.####',TotQteNonIdentifie);
  QRLabel75.Caption:=FormatFloat('#,##0',TotNonIdentifie);
  QRLabel76.Caption:=FormatFloat('#,##0.####',TotQteIdentifie+TotQteNonIdentifie);
  QRLabel77.Caption:=FormatFloat('#,##0',TotIdentifie+TotNonIdentifie);
end;

procedure TFEtatAPL.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel265.Caption :='';
  {Quikreport3}
  QRGroup8.Height:=0;
  RequetteDeclare(False,tabila);
  DASQL.Declare.SQL.Add('order by c.Statistique1, c.tiers, c.CodeProd, c.numero');
  //if not enregistrer then
     DASQL.Declare.Open;
  if DASQL.Declare.Eof then showMessage('vide');
  QRLabel84.Caption:=Copy(PeriodeDe,6,2)+'/'+Copy(PeriodeDe,1,4);
  QRLabel85.Caption:=Copy(PeriodeA,6,2)+'/'+Copy(PeriodeA,1,4);
end;

procedure TFEtatAPL.QRDBText24Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].value:=Value;
  DASQL.SelNumCpt.Open;
  QRLabel93.Caption:=DASQL.SelNumCptIntitule.Value;
end;


procedure TFEtatAPL.QRLabel223Print(sender: TObject; var Value: String);
begin
  QRLabel120.caption:=value;
end;

procedure TFEtatAPL.QRLabel225Print(sender: TObject; var Value: String);
begin
  QRLabel121.caption:=value;
end;

procedure TFEtatAPL.QRLabel297Print(sender: TObject; var Value: String);
begin
  QRLabel122.caption:=value;
end;

procedure TFEtatAPL.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  pght:=pght+ht;
  pgtaxe:=pgtaxe+taxe;
  ht:=0;
  qte:=0;
  taxe:=0;
end;

procedure TFEtatAPL.QRGroup9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabel266.Caption:=EnleveBlancDroite(DASQL.DeclareTiers.Value) +'-' +
                      EnleveBlancDroite(DASQL.DeclareNom.Value) + ' /\ ' +
//                      EnleveBlancDroite(DASQL.DeclareStatistique1.Value) + ' /\ ' +
//                      EnleveBlancDroite(DASQL.DeclareNIF_1.Value) + ' /\ ' +
                      EnleveBlancDroite(DASQL.DeclareAdresse.Value) ;
end;

end.
