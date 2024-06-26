unit VenteMse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, ExtCtrls, StdCtrls, DB, ADODB;

type
  TFVenteMse = class(TForm)
    QuickRep1: TQuickRep;
    QRGroup8: TQRGroup;
    QRBand4: TQRBand;
    QRBand9: TQRBand;
    QRBand7: TQRBand;
    QRShape9: TQRShape;
    QRLabel21: TQRLabel;
    QRShape17: TQRShape;
    QRShape25: TQRShape;
    QRShape33: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape5: TQRShape;
    QRShape46: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape47: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape48: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRBand12: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel97: TQRLabel;
    QRShape122: TQRShape;
    QRShape22: TQRShape;
    QRShape1: TQRShape;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape320: TQRShape;
    QRShape319: TQRShape;
    QRShape317: TQRShape;
    QRShape316: TQRShape;
    QRShape315: TQRShape;
    QRShape324: TQRShape;
    QRShape311: TQRShape;
    QRShape314: TQRShape;
    QRShape321: TQRShape;
    QRShape310: TQRShape;
    QRShape309: TQRShape;
    QRShape308: TQRShape;
    QRShape307: TQRShape;
    QRShape306: TQRShape;
    QRShape305: TQRShape;
    QRLabel301: TQRLabel;
    QRLabel302: TQRLabel;
    QRShape14: TQRShape;
    QRShape301: TQRShape;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRLabel305: TQRLabel;
    QRLabel306: TQRLabel;
    QRLabel307: TQRLabel;
    QRLabel308: TQRLabel;
    QRLabel309: TQRLabel;
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
    QRShape302: TQRShape;
    QRShape303: TQRShape;
    QRShape312: TQRShape;
    QRShape313: TQRShape;
    QRShape318: TQRShape;
    QRShape304: TQRShape;
    QuickRep4: TQuickRep;
    QRExpr1: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape322: TQRShape;
    QRLabel317: TQRLabel;
    QRLabel321: TQRLabel;
    QRShape323: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape39: TQRShape;
    QRLabel180: TQRLabel;
    QRExpr10: TQRExpr;
    QRShape74: TQRShape;
    QuickRep5: TQuickRep;
    QRBand8: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRShape103: TQRShape;
    QRShape77: TQRShape;
    QRShape107: TQRShape;
    QRShape100: TQRShape;
    QRBand10: TQRBand;
    QRLabel186: TQRLabel;
    QRShape78: TQRShape;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRShape90: TQRShape;
    QRShape94: TQRShape;
    QRShape91: TQRShape;
    QRShape80: TQRShape;
    QRGroup2: TQRGroup;
    QRGroup9: TQRGroup;
    QRGroup10: TQRGroup;
    QRDBText24: TQRDBText;
    QRBand11: TQRBand;
    QRExpr19: TQRExpr;
    QRShape106: TQRShape;
    QRLabel195: TQRLabel;
    QRExpr18: TQRExpr;
    QRShape81: TQRShape;
    QRBand13: TQRBand;
    QRLabel196: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel197: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel184: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRShape79: TQRShape;
    QRShape82: TQRShape;
    QRLabel198: TQRLabel;
    QRDBText11: TQRDBText;
    QRBand14: TQRBand;
    QRExpr11: TQRExpr;
    QRShape83: TQRShape;
    QRLabel200: TQRLabel;
    QRExpr12: TQRExpr;
    QRShape84: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand15: TQRBand;
    Label2: TLabel;
    QRLabel175: TQRLabel;
    QRShape86: TQRShape;
    QRShape85: TQRShape;
    QRLabel145: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    ________: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel232: TQRLabel;
    QRBand16: TQRBand;
    QRExpr13: TQRExpr;
    QRShape118: TQRShape;
    QRLabel233: TQRLabel;
    QRExpr14: TQRExpr;
    QRShape119: TQRShape;
    QRLabel234: TQRLabel;
    QRExpr4: TQRExpr;
    ADOQuery1: TADOQuery;
    QRLabel236: TQRLabel;
    QRLabel238: TQRLabel;
    QRLabel240: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel199: TQRLabel;
    QRLabel241: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText5: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape4: TQRShape;
    QRShape73: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand34: TQRBand;
    QRSysData12: TQRSysData;
    QRSysData13: TQRSysData;
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep4BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
//    procedure QRDBText45Print(sender: TObject; var Value: String); //momba ny n� stat t@ liste clients
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr10Print(sender: TObject; var Value: String);
    procedure QRBand12AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep5BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel100Print(sender: TObject; var Value: String);
//    procedure QRDBText4Print(sender: TObject; var Value: String);  momba ny n�stat t@ r�cap d�cl
    procedure QRGroup9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { D�clarations priv�es }
    sstaxe,pgtaxe:real;
    ssht,pght:real;
    taxe,ht:double;
    num:integer;
    Identifie,nonidentifie:real;
    ETAT:string;
    detail,Enregistrer:boolean;
    typfour:shortInt;
    codpost,periodeDe,periodeA,tiers:string;
    ligne:array[1..25]of TQRShape;
    ligneLL:array[1..25]of TQRLabel;
{    procedure AfficheSte1;}
    IsViewSource,AvecAN:boolean;
    Ndf:string;
    procedure AligneAX;
    procedure RequetteDeclare(Ndf:string;fichier:boolean);
  public
    { D�clarations publiques }
    procedure Imprimeo(tf:shortInt;cp,et,perDe,perA,tie,Fichier:string;choix:shortint;det,avecEnr,ViewSource,inclureAN:boolean);
  end;

var
  FVenteMse: TFVenteMse;

implementation

uses DaCommun, Daspecia,  TypeElmt, USQL, UConnect;

{$R *.DFM}

procedure TFVenteMse.AligneAX;
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
 topLL:=199;
 topl:=218;
 for i:=1 to 24 do
 begin
   lignell[i].left:=70;
   lignell[i].top:=QRBand12.Height*(i-1)+topll;
   ligne[i].top:=QRBand12.Height*(i-1)+topl;
 end;
end;


procedure TFVenteMse.Imprimeo(tf:shortInt;cp,et,perDe,perA,tie,Fichier:string;choix:shortint;det,AvecEnr,ViewSource,inclureAN:boolean);
begin
  avecAN:=InclureAN;
  Ndf:=Fichier;
  IsViewSource:=ViewSource;
  enregistrer:=AvecEnr;
  detail:=det;
  typfour:=tf;
  codpost:=cp;
  Etat:=et;
  tiers:=tie;
  periodeDe:=perDe;
  periodeA:=perA;
  if not AvecEnr then
   case choix of
     0:QuickRep1.preview;
     1:QuickRep4.preview;
     4:QuickRep5.preview;
   end
 else
   RequetteDeclare('',True);
end;

procedure TFVenteMse.QRSysData1Print(sender: TObject; var Value: String);
var pg:integer;
    st:string;
begin
  pg:=strtoint(value);
  st:=FormatFloat('000',pg);
  QRLabel93.caption:=copy(st,3,1);
  QRLabel92.caption:=copy(st,2,1);
  QRLabel87.caption:=copy(st,1,1);;
end;

procedure TFVenteMse.RequetteDeclare(Ndf:string;fichier:boolean);
var Gros, Adm:String;
begin
  DASQL.Declare.close;
  DASQL.Declare.SQL.clear;
  if fichier then
  begin
    DASQL.Declare.SQL.Add('delete from DecVente');
    DASQL.Declare.ExecSQL;
    DASQL.Declare.SQL.clear;
    DASQL.Declare.SQL.Add('insert into DecVente');
  end;
  if ndf>='0' then
    DASQL.Declare.SQL.Add('select * from '+Ndf+' a')
  else
     DASQL.Declare.SQL.Add('select * from declare a');
  DASQL.Declare.SQL.Add('where (a.periode>=:v)and (a.periode<=:w)');
  if detail then DASQL.Declare.SQL.Add('and (a.Tiers=:t)');
  if not avecAN then
    DASQL.Declare.SQL.Add('and (a.typ<4)');
  Gros:='((a.Statistique1>''0'')and(a.Statistique1<''9Z''))';
  Adm:='(a.Statistique1=''ADM'')';
  case typfour of
    -1://Tous
       ;
        //      DASQL.Declare.SQL.Add('and((a.Tiers>=''4110'')and(a.Tiers<''4112Z''))');
    0://Tous
        DASQL.Declare.SQL.Add('and((a.Tiers>=''4110'')and(a.Tiers<''4112Z''))');
    1://Vente en gros ou demi gros
      begin
          DASQL.Declare.SQL.Add('and '+Gros);
          DASQL.Declare.SQL.Add('and((a.Tiers>=''4110'')and(a.Tiers<''4111Z''))');
      end;
    2://Vente � l'administration
      begin
        DASQL.Declare.SQL.Add('and '+Adm);
        DASQL.Declare.SQL.Add('and((a.Tiers>=''4110'')and(a.Tiers<''4111Z''))');
      end;
    3://Vente � l'exportation
        DASQL.Declare.SQL.Add('and(a.Tiers>=''4112'')and(a.Tiers<''4112Z'')');
    4://Vente AU PARTICULIERS
      begin
        DASQL.Declare.SQL.Add('and( ((not '+gros+')and (not '+Adm+'))or(a.Statistique1 is null))');
        DASQL.Declare.SQL.Add('and((a.Tiers>=''4110'')and(a.Tiers<''4111Z''))');
      end;
  end;
  DASQL.Declare.SQL.Add('and(a.Parametre>='''+Etat+''')and(a.Parametre<'''+Etat+'Z'')');

  DASQL.Declare.SQL.Add(' order by a.Statistique1, a.tiers, a.compte, a.Journal, a.numero');

  DASQL.Declare.Parameters[0].Value:=periodeDe;
  DASQL.Declare.Parameters[1].Value:=periodeA;
  if detail then DASQL.Declare.Parameters[2].Value:=tiers;
  if fichier then
  begin
    DASQL.Declare.execSQL;
    showMessage('Copie fichier termin�e');
  end
  else
    DASQL.Declare.Open;
end;


procedure TFVenteMse.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel236.Caption :='';
  AligneAX;
  QRGroup8.Height:=0;
  if detail then QRBand4.Height:=QRBand12.Height
  else QRBand4.Height:=0;
  num:=0;
  ht:=0;taxe:=0;
  pght:=0;
  sstaxe:=0;
  Identifie:=0;NonIdentifie:=0;
  RequetteDeclare(Ndf,False);
end;

procedure TFVenteMse.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var tx:real;
begin
  num:=num+1;
  if DASQL.DeclareDebit.Value='C' then
  begin
    ht:=ht+DASQL.DeclareMontant.Value;
  end
  else
  begin
    ht:=ht-DASQL.DeclareMontant.Value;
  end;
  tx:=0;
  if DASQL.DeclareExonere.Value=0 then
  begin
    if DASQL.DeclareDebit.Value='D' then
      tx:=ROUND((DASQL.DeclareMontant.Value/100)*DASQL.DeclareTaux.Value)
    else
      tx:=-ROUND((DASQL.DeclareMontant.Value/100)*DASQL.DeclareTaux.Value);
    taxe:=taxe-tx;
    ssht:=ssht+ht;
    sstaxe:=sstaxe+taxe;
  end;
  QRLabel9.Caption:=FormatFloat('#,##0',tx);
end;

procedure TFVenteMse.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel241.Caption:=EnleveBlancDroite(DaSQL.DeclareNom.Value) + '  ' + EnleveBlancDroite(DaSQL.DeclareAdresse.Value);//Nom et adr mitambatra
  QRLabel241.Caption:=EnleveBlancDroite(DaSQL.DeclareNom.Value);
  QRLabel23.Caption:=EnleveBlancDroite(DaSQL.DeclareAdresse.Value);
  QRLabel16.Caption:=FormatFloat('#,##0',taxe);
  QRLabel97.Caption:=FormatFloat('#,##0',ht);
end;

procedure TFVenteMse.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel99.Caption:=FormatFloat('#,##0',pght);
  QRLabel96.Caption:=FormatFloat('#,##0',pgtaxe);
  pgtaxe:=0;
  pght:=0;
end;

procedure TFVenteMse.QuickRep4BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var  HTVG,TxVG,HTVA,TxVA,HTVE,TxVE,HTVD,TxVD,HTAUTRE,TxAUTRE:double;
  gros,adm:boolean;
  androany:TDate;
  y,m,d:word;
    Annee,tiers,stat1:string;
begin
  if not isViewSource then QRLabel238.Caption :='';
  androany:=date;
  decodedate(androany,y,m,d);
  Annee:=InputBox('Information ,suppl�mentaire ', 'Ann�e de d�claration :', IntToStr(y));
  QRLabel31.Caption:=Annee;

  DASQL.Declare.close;
  DASQL.Declare.SQL.clear;
  if ndf>='0' then
    DASQL.Declare.SQL.Add('select * from '+Ndf+' a')
  else
    DASQL.Declare.SQL.Add('select * from Declare a');
  DASQL.Declare.SQL.Add('where (a.periode>=:v)and (a.periode<=:w)');
  if detail then DASQL.Declare.SQL.Add('and (a.Tiers=:t)');
  if not avecAN then
    DASQL.Declare.SQL.Add('and (a.typ<4)');
  DASQL.SelParaDecl.close;
  DASQL.SelParaDecl.Parameters[1].value:=Etat;
  DASQL.SelParaDecl.Parameters[2].value:=Etat+'Z';
  DASQL.SelParaDecl.Open;
  if not DASQL.SelParaDecl.EOF then
  begin
    DASQL.Declare.SQL.Add('  and(');
    while not DASQL.SelParaDecl.EOF do
    begin
      DASQL.Declare.SQL.Add('((a.Compte>='''+EnleveBlanc(DASQL.SelParaDeclCompteDe.Value)+''')'+
      'and(a.Compte<'''+EnleveBlanc(DASQL.SelParaDeclCompteA.Value)+'Z''))');
      DASQL.SelParaDecl.Next;
      if not DASQL.SelParaDecl.EOF then DASQL.Declare.SQL.Add(' or ');
    end;
    DASQL.Declare.SQL.Add(')');
  end
  else ShowMessage(' Remplir la condition  sur les compte');

  DASQL.Declare.SQL.Add(' order by Statistique1, tiers, compte, Journal, numero');
  DASQL.Declare.Parameters[0].Value:=periodeDe;
  DASQL.Declare.Parameters[1].Value:=periodeA;
  if detail then DASQL.Declare.Parameters[2].Value:=tiers;
  DASQL.Declare.Open;

  HTVG:=0;  TxVG:=0;
  HTVA:=0;  TxVA:=0;
  HTVE:=0;  TxVE:=0;
  HTVD:=0;  TxVD:=0;
  HTAUTRE:=0; TxAUTRE:=0;

  while not DASQL.Declare.EOF do
  begin
    stat1:= EnleveBlancDroite(DASQL.DeclareStatistique1.Value);
    Tiers:=  EnleveBlancDroite(DASQL.DeclareTiers.Value);

    Gros:=(stat1>'0')and(stat1<'9Z');
    Adm:=stat1='ADM';
    {Calcul Montant}
    if DASQL.DeclareDebit.Value='C' then ht:=DASQL.DeclareMontant.Value
    else ht:=-DASQL.DeclareMontant.Value;

    {Calcul de la taxe}
    taxe:=0;
    if  DASQL.DeclareExonere.Value=0 then
    begin
      if DASQL.DeclareDebit.Value='C' then
        taxe:=ROUND((DASQL.DeclareMontant.Value/100)*DASQL.DeclareTaux.Value)
      else
        taxe:=-ROUND((DASQL.DeclareMontant.Value/100)*DASQL.DeclareTaux.Value);
    end;

    if gros
        and(('4110'<=Tiers)and(Tiers<'4111Z')) then
    begin
      HTVG:=HTVG+ht;
      TxVG:=TxVG+taxe;
    end else
    if  adm and
        ((Tiers>='4110')and(Tiers<'4111Z')) then
    begin
      HTVA:=HTVA+ht;
      TxVA:=TxVA+taxe;
    end else
    if(Tiers>='4112')and(Tiers<'4112Z') then
    begin
      HTVE:=HTVE+ht;
      TxVE:=TxVE+taxe;
    end else
    if ((not gros) AND (not adm))
        and((Tiers>='4110')and(Tiers<'4111Z')) then
    begin
      HTVD:=HTVD+ht;
      TxVD:=TxVD+taxe;
    end else
    begin
      HTAUTRE:=HTAUTRE+ht;
      TxAUTRE:=TxAUTRE+taxe;
    end;
    DASQL.Declare.Next;
  end;
  QRLabel100.Caption:=FormatFloat('#,##0',HTVG)+'  ';
  QRLabel104.Caption:=FormatFloat('#,##0',TxVG)+'  ';
  QRLabel101.Caption:=FormatFloat('#,##0',HTVA)+'  ';
  QRLabel105.Caption:=FormatFloat('#,##0',TxVA)+'  ';
  QRLabel102.Caption:=FormatFloat('#,##0',HTVE)+'  ';
  QRLabel106.Caption:=FormatFloat('#,##0',TxVE)+'  ';
  QRLabel103.Caption:=FormatFloat('#,##0',HTVD)+'  ';
  QRLabel108.Caption:=FormatFloat('#,##0',TxVD)+'  ';

  QRLabel4.Caption:=FormatFloat('#,##0',HTVD+HTVG+HTVA+HTVE)+'  ';
  QRLabel5.Caption:=FormatFloat('#,##0',TxVD+TxVG+TxVA+TxVE)+'  ';


  QRLabel176.Caption:=FormatFloat('#,###',HTAUTRE)+'  ';
  QRLabel177.Caption:=FormatFloat('#,###',TxAUTRE)+'  ';
  if HTAUTRE+TxAUTRE=0 then
    QRLabel152.Caption :=''
  else
    QRLabel152.Caption :='Total erreur';
end;

{procedure TFVenteMse.QRDBText45Print(sender: TObject; var Value: String);
begin
  value:=EnleveBlancDroite(value);
  QRLabel19.Caption:=copy(value,length(value),1);
  QRLabel91.Caption:=copy(value,length(value)-1,1);
  QRLabel90.Caption:=copy(value,length(value)-2,1);
  QRLabel89.Caption:=copy(value,length(value)-3,1);
  QRLabel94.Caption:=copy(value,length(value)-4,1);
  QRLabel88.Caption:=copy(value,length(value)-5,1);
  QRLabel86.Caption:=copy(value,length(value)-6,1);
end;}

procedure TFVenteMse.QRExpr2Print(sender: TObject; var Value: String);
var val:double;
begin
  AvadihoReal(value,val);
  pgHT:=pgHT+val;
end;

procedure TFVenteMse.QRExpr3Print(sender: TObject; var Value: String);
var val:double;
begin
  AvadihoReal(value,val);
  pgTaxe:=pgTaxe+val;
end;

procedure TFVenteMse.QRExpr10Print(sender: TObject; var Value: String);
begin
  value:=FormatFloat('#,##0',pgTaxe);
  pgTaxe:=0;
end;

procedure TFVenteMse.QRBand12AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  pgtaxe:=pgtaxe+taxe;
  pght:=pght+ht;
  ht:=0;
  taxe:=0;
end;

procedure TFVenteMse.QuickRep5BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel240.Caption :='';
  QRGroup8.Height:=0;
  DASQL.Declare.close;
  RequetteDeclare(Ndf,false);
  QRLabel193.Caption:=Copy(PeriodeDe,6,2)+'/'+Copy(PeriodeDe,1,4);
  QRLabel194.Caption:=Copy(PeriodeA,6,2)+'/'+Copy(PeriodeA,1,4);
end;


procedure TFVenteMse.QRLabel100Print(sender: TObject; var Value: String);
var sommel,lettre:string;
    somme:double;
begin
  sommel:=enleveblanc(value);
  somme:=strtofloat(sommel);
  lettre:=TouteLettre(False,somme);
  QRLabel174.caption:=lettre+ ' '+enleveblancDroite(Commun.SocieteMonnaie.Value);    // ' Ariary' no teo taloha
end;

// Nisy ny n� stat t@ d�clarat� taloha
{procedure TFVenteMse.QRDBText4Print(sender: TObject; var Value: String);
begin
  Value:=EnleveBlancDroite(Value);
  QRLabel169.Caption:=copy(value,length(value),1);
  QRLabel158.Caption:=copy(value,length(value)-1,1);
  QRLabel157.Caption:=copy(value,length(value)-2,1);
  QRLabel170.Caption:=copy(value,length(value)-3,1);
  QRLabel156.Caption:=copy(value,length(value)-4,1);
  QRLabel155.Caption:=copy(value,length(value)-5,1);
end;}

procedure TFVenteMse.QRGroup9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabel199.Caption:=EnleveBlancDroite(DASQL.DeclareTiers.Value) +'-' +
                      EnleveBlancDroite(DASQL.DeclareNom.Value) + ' /\ ' +
//                      EnleveBlancDroite(DASQL.DeclareStatistique1.Value) + ' /\ ' +
//                      EnleveBlancDroite(DASQL.DeclareNIF_1.Value) + ' /\ ' +
                      EnleveBlancDroite(DASQL.DeclareAdresse.Value) ;

end;

end.
