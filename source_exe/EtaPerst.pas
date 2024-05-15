unit EtaPerst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls;

type
  TFEtatPrest = class(TForm)
    QuickRep3: TQuickRep;
    QRBand10: TQRBand;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel120: TQRLabel;
    QRBand11: TQRBand;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape77: TQRShape;
    QRExpr3: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRExpr6: TQRExpr;
    QRLabel298: TQRLabel;
    QRLabel299: TQRLabel;
    QRBand18: TQRBand;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRBand3: TQRBand;
    QRShape179: TQRShape;
    QRShape231: TQRShape;
    QRShape233: TQRShape;
    QRShape234: TQRShape;
    QRShape235: TQRShape;
    QRShape236: TQRShape;
    QRShape239: TQRShape;
    QRExpr21: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr22: TQRExpr;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QuickRep7: TQuickRep;
    QRBand24: TQRBand;
    QRShape254: TQRShape;
    QRShape255: TQRShape;
    QRShape256: TQRShape;
    QRLabel325: TQRLabel;
    QRLabel326: TQRLabel;
    QRLabel300: TQRLabel;
    QRBand26: TQRBand;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRGroup5: TQRGroup;
    QRGroup4: TQRGroup;
    QRGroup3: TQRGroup;
    QRShape247: TQRShape;
    QRLabel320: TQRLabel;
    QRLabel321: TQRLabel;
    QRShape248: TQRShape;
    QRShape249: TQRShape;
    QRLabel322: TQRLabel;
    QRShape250: TQRShape;
    QRLabel323: TQRLabel;
    QRLabel363: TQRLabel;
    QRLabel364: TQRLabel;
    QRLabel365: TQRLabel;
    QRLabel366: TQRLabel;
    QRLabel367: TQRLabel;
    QRLabel368: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText23: TQRDBText;
    QRShape243: TQRShape;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel302: TQRLabel;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRLabel305: TQRLabel;
    QRLabel301: TQRLabel;
    QRLabel306: TQRLabel;
    QRGroup6: TQRGroup;
    QRBand27: TQRBand;
    QRShape286: TQRShape;
    QRShape287: TQRShape;
    QRShape288: TQRShape;
    QRLabel361: TQRLabel;
    QRLabel362: TQRLabel;
    QRDBText20: TQRDBText;
    QRBand9: TQRBand;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRBand8: TQRBand;
    QRShape85: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape103: TQRShape;
    QRShape105: TQRShape;
    QRLabel76: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    Exercice: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape83: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel80: TQRLabel;
    QRShape84: TQRShape;
    QRLabel81: TQRLabel;
    QRShape89: TQRShape;
    QRLabel292: TQRLabel;
    QRShape24: TQRShape;
    QRLabel33: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRSysData2: TQRSysData;
    QRDBText58: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel82: TQRLabel;
    QRDBText40: TQRDBText;
    QRShape23: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel86: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QuickRep5: TQuickRep;
    QRBand15: TQRBand;
    QRDBText49: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRBand16: TQRBand;
    QRLabel186: TQRLabel;
    QRShape65: TQRShape;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel190: TQRLabel;
    QRShape90: TQRShape;
    QRShape94: TQRShape;
    QRShape80: TQRShape;
    QRGroup9: TQRGroup;
    QRGroup10: TQRGroup;
    QRGroup11: TQRGroup;
    QRDBText65: TQRDBText;
    QRBand17: TQRBand;
    QRExpr2: TQRExpr;
    QRShape66: TQRShape;
    QRLabel195: TQRLabel;
    QRGroup12: TQRGroup;
    QRDBText66: TQRDBText;
    QRLabel91: TQRLabel;
    QRDBText67: TQRDBText;
    QRBand19: TQRBand;
    QRExpr7: TQRExpr;
    QRShape67: TQRShape;
    QRLabel92: TQRLabel;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRLabel189: TQRLabel;
    QRBand20: TQRBand;
    QRLabel184: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel202: TQRLabel;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRLabel93: TQRLabel;
    QRDBText72: TQRDBText;
    QRBand21: TQRBand;
    QRExpr5: TQRExpr;
    QRLabel94: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRShape22: TQRShape;
    QRShape68: TQRShape;
    QRShape72: TQRShape;
    QRLabel88: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRSysData5: TQRSysData;
    QRShape79: TQRShape;
    QRShape81: TQRShape;
    QRLabel103: TQRLabel;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRLabel105: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText77: TQRDBText;
    QRLabel115: TQRLabel;
    QRDBText78: TQRDBText;
    QRLabel116: TQRLabel;
    QRDBText79: TQRDBText;
    QRLabel119: TQRLabel;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel124: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel132: TQRLabel;
    QRDBText86: TQRDBText;
    QRShape76: TQRShape;
    QRLabel133: TQRLabel;
    QRShape64: TQRShape;
    QRLabel134: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr9: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText14: TQRDBText;
    QRBand1: TQRBand;
    QRExpr13: TQRExpr;
    QRShape118: TQRShape;
    QRLabel233: TQRLabel;
    QRBand34: TQRBand;
    QRSysData12: TQRSysData;
    QRSysData13: TQRSysData;
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand18BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand26BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep7BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData3Print(sender: TObject; var Value: String);
    procedure QuickRep5BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText66Print(sender: TObject; var Value: String);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData2Print(sender: TObject; var Value: String);
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRSysData5Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRGroup10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Déclarations privées }
    pg:integer;
    ht,pgHT,totHT:real;
    totfourn,totgene,totgene2:real;
    NbEntete,NbLigne:integer;
    ETAT:string;
    report:double;
    typfour,typa:shortInt;
    codpost,periodeDe,periodeA,tiers,ObservTal,Observ2Tal,tabila:string;
    detail,detailCpt,enregistrer:boolean;
    isViewSource,AvecAN:boolean;
    procedure RequetteDeclare(Fichier:boolean;tabla:string);
  public
    { Déclarations publiques }
    procedure Imprimeo(tf:shortInt;cp,et,perDe,perA,tie,annee,tabla:string;typ:shortint;det,detcpt,AvecEnr,viewSource,InclureAN:boolean);
  end;

var
  FEtatPrest: TFEtatPrest;

implementation

uses Daspecia, DaCommun,  TypeElmt, USQL;

{$R *.DFM}

procedure TFEtatPrest.Imprimeo(tf:shortInt;cp,et,perDe,perA,tie,annee,tabla:string;typ:shortint;det,detcpt,avecEnr,viewSource,InclureAN:boolean);
begin
  tabila:=tabla;
  AvecAN:=InclureAN;
  IsViewSource:=viewSource;
  Enregistrer:=AvecEnr;
  periodeDe:=perDe;
  periodeA:=perA;
  typfour:=tf;
  codpost:=cp;
  Etat:=et;
  tiers:=tie;
  detail:=det;
  if det then detailCpt:=detCpt;
  typa:=typ;
  if not AvecEnr then
  case typa of
    0:begin
        QRLabel118.Caption:='VERSEES AU COURS DE L''ANNEE '+annee;
        QuickRep3.preview;
      end;
    1:begin
        QRLabel35.Caption:='relatif à l''année '+annee;
        QuickRep7.Preview;
      end;
    2:begin
      end;
    3:begin
      end;
    4:begin
        QRLabel118.Caption:='VERSEES AU COURS DE L''ANNEE '+annee;
        QuickRep3.preview;
      end;
    5:begin
        QuickRep5.preview;
      end;
  end
 else
   RequetteDeclare(True,tabila);
end;



procedure TFEtatPrest.RequetteDeclare(Fichier:boolean;Tabla:string);
begin
  DASQL.Declare.close;
  DASQL.Declare.SQL.clear;
  if fichier then
  begin
    DASQL.Declare.SQL.Add('delete from DecPrest');
    DASQL.Declare.ExecSQL;
    DASQL.Declare.SQL.clear;
    DASQL.Declare.SQL.Add('insert into DecPrest');
  end;
  if tabla>'0' then
    DASQL.Declare.SQL.Add('select * from '+tabla+' c')
  else
    DASQL.Declare.SQL.Add('select * from Declare c');
  DASQL.Declare.SQL.Add('where (c.periode>=:v)and (c.periode<=:w)');
  if detail and detailcpt then
  begin
    DASQL.Declare.SQL.Add('and (c.Tiers>='''+tiers+''')') ;
    DASQL.Declare.SQL.Add('and (c.Tiers<='''+tiers+'+Z'')') ;
  end;
  if detail and not detailcpt then
  begin
    DASQL.Declare.SQL.Add('and (c.statistique1>='''+tiers+''')') ;
    DASQL.Declare.SQL.Add('and (c.statistique1>='''+tiers+'Z'')') ;
  end;
  if not avecAN then
    DASQL.Declare.SQL.Add('and (c.typ<4)');
  DASQL.Declare.SQL.Add('and (c.typX<>''00'')');
  DASQL.Declare.SQL.Add('and (c.typX>=:z)');
  DASQL.Declare.SQL.Add('and(c.Parametre>='''+Etat+''')and(c.Parametre<'''+Etat+'Z'')');
  DASQL.Declare.Parameters[0].Value:=periodeDe;
  DASQL.Declare.Parameters[1].Value:=periodeA;
  DASQL.Declare.Parameters[2].Value:='0';
  if fichier then
  begin
    DASQL.Declare.execSQL;
    showMessage('Copie fichier terminée');
  end
  else
    DASQL.Declare.Open;
end;


procedure TFEtatPrest.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel128.Caption:='';
  QRGroup4.Height:=0;
  if typa<>4 then
  begin
    if detail then QRBand18.Height:=25
    else QRBand18.Height:=0;
  end
  else
    QRBand18.Height:=25;
  QRBand11.Height:=0;
  QRGroup3.Height:=0;
  QRBand9.Height:=27;
  ObservTal:='';
  Observ2Tal:='';
  HT:=0;
  pgHT:=0;
  totHT:=0;
  TotFourn:=0;
  TotGene:=0;
  TotGene2:=0;
  Report:=0;

  RequetteDeclare(False,tabila);
  DASQL.Declare.SQL.Add('order by  c.Statistique1, c.TypX, c.tiers,  c.numero');
  DASQL.Declare.Open;
  Commun.QAdresse.Close;
  Commun.QAdresse.Parameters[0].value:=Commun.SocieteCode.Value;
  Commun.QAdresse.Open;
end;

procedure TFEtatPrest.QRBand18BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DASQL.DeclareDebit.Value='D' then
    ht:=ht+DASQL.DeclareMontant.Value
  else
    ht:=ht-DASQL.DeclareMontant.Value;
  if length(DASQL.DeclareNumCHQ.Value)>0 then
  begin
    Observ2Tal:=ObservTal;
    ObservTal:=DASQL.DeclareNumCHQ.Value;
  end;
end;

procedure TFEtatPrest.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel298.Caption:=FormatFloat('#,##0',totfourn);
  QRLabel299.Caption:=FormatFloat('#,##0',totfourn);
  totgene:=totgene+totfourn;
  totfourn:=0;
end;

procedure TFEtatPrest.QRBand26BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DASQL.DeclareDebit.Value='D' then
    ht:=ht+DASQL.DeclareMontant.Value
  else
    ht:=ht-DASQL.DeclareMontant.Value;
  if length(DASQL.DeclareNumCHQ.Value)>0 then
  begin
    Observ2Tal:=ObservTal;
    ObservTal:=DASQL.DeclareNumCHQ.Value;
  end;
end;

procedure TFEtatPrest.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  ShowMessage(DASQL.DeclareTypX.Value);}
  QRLabel72.Caption:=FormatFloat('#,##0',ht);
  QRLabel73.Caption:=FormatFloat('#,##0',ht);
  if UpperCase(EnleveBlanc(Observ2Tal))<>UpperCase(EnleveBlanc(ObservTal)) then
   QRLabel103.Caption:=EnleveBlancDroite(Observ2Tal)+' - '+EnleveBlancDroite(ObservTal)
  else
   QRLabel103.Caption:=EnleveBlancDroite(Observ2Tal);
  Observ2Tal:='';
  ObservTal:='';
end;

procedure TFEtatPrest.QuickRep7BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel129.Caption:='';
  NbLigne:=0;
  NbEntete:=0;
  QRBand26.Height:=0;
  QRGroup6.Height:=0;
  HT:=0;
  TotFourn:=0;
  TotGene:=0;
  RequetteDeclare(False,tabila);
  DASQL.Declare.SQL.Add('order by Statistique1,  TypX, Tiers, Numero');
  DASQL.Declare.Open;
  Commun.QAdresse.Close;
  Commun.QAdresse.Parameters[0].value:=Commun.SocieteCode.Value;
  Commun.QAdresse.Open;
  ObservTal:='';
  Observ2Tal:='';
end;


procedure TFEtatPrest.QRBand27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand24.Height :=QRBand24.Height -QRBand27.Height ;
  QRLabel361.Caption:=FormatFloat('#,##0',ht);
  QRLabel362.Caption:=FormatFloat('#,##0',ht);
  TotFourn:=TotFourn+ht;
  ht:=0;
  if UpperCase(EnleveBlanc(Observ2Tal))<>UpperCase(EnleveBlanc(ObservTal)) then
   QRLabel134.Caption:=Observ2Tal+' - '+ObservTal
  else
   QRLabel134.Caption:=Observ2Tal;
  ObservTal:='';
  Observ2Tal:='';
end;

procedure TFEtatPrest.QRBand24BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel325.Caption:=FormatFloat('#,##0',totFourn);
  QRLabel326.Caption:=FormatFloat('#,##0',totFourn);
  totfourn:=0;
end;

procedure TFEtatPrest.QRBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if pght=0 then
  begin
    QRLabel30.caption:='Total général ...........................................'
    +'.................................................................';
    QRLabel28.Caption:=FormatFloat('#,##0',totgene2);
    QRLabel29.Caption:=FormatFloat('#,##0',totgene2);
  end
  else
  begin
    QRLabel30.caption:='Total page  ...........................................'
    +'.................................................................';
    QRLabel28.Caption:=FormatFloat('#,##0',pght);
    QRLabel29.Caption:=FormatFloat('#,##0',pght);
    totgene2:=totgene2+pght;
    pght:=0;
  end;
end;


procedure TFEtatPrest.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if report>0 then
  begin
    QRLabel85.Caption:='Report cumulé .........................................'
    +'......................';
    QRLabel83.Caption:=FormatFloat('#,##0',report);
    QRLabel84.Caption:=FormatFloat('#,##0',report);
  end
  else
  begin
    QRLabel85.Caption:='';
    QRLabel83.Caption:='';
    QRLabel84.Caption:='';
  end;
  pght:=0;
end;

procedure TFEtatPrest.QRSysData3Print(sender: TObject; var Value: String);
begin
  pg:=strtoint(value);
end;



procedure TFEtatPrest.QuickRep5BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if not isViewSource then QRLabel132.Caption:='';
  RequetteDeclare(False,tabila);
  DASQL.Declare.SQL.Add('order by  c.Statistique1, c.tiers, c.TypX, c.numero');
  DASQL.Declare.Open;
  QRLabel193.Caption:=Copy(PeriodeDe,6,2)+'/'+Copy(PeriodeDe,1,4);
  QRLabel194.Caption:=Copy(PeriodeA,6,2)+'/'+Copy(PeriodeA,1,4);
end;


procedure TFEtatPrest.QRDBText66Print(sender: TObject; var Value: String);
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Value;
  DASQL.SelNumCpt.Open;
  QRLabel91.Caption:=DASQL.SelNumCptIntitule.Value;
end;

procedure TFEtatPrest.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  TotGene2:=TotGene2+pght;
  if QuickRep3.PageNumber=1 then
  begin
    QRLabel99.Caption :='Total général ........................................'+
    '..........................................................................';
    QRLabel105.Caption := '                                                     '
    +'                                                                          '
    +'                                                                          '
    +'                                                                          ';
  end;
  QRLabel88.Caption:=FormatFloat('#,##0',pght);
  QRLabel98.Caption:=FormatFloat('#,##0',pght);
  pght:=0;
end;

procedure TFEtatPrest.QRGroup5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Nbentete:=NbEntete+1;
  if (Nbentete mod 2) =1 then
    QRBand24.Height := 217
  else
    QRBand24.Height := 180;
end;

procedure TFEtatPrest.QRSysData2Print(sender: TObject; var Value: String);
begin
  if pght=0 then value:='';
end;

//QRSysData1 tsy hitako tao anaty FEtatPrest instony
procedure TFEtatPrest.QRSysData1Print(sender: TObject; var Value: String);
begin
  if pght=0 then value:='';
end;

procedure TFEtatPrest.QRSysData5Print(sender: TObject; var Value: String);
begin
  if QuickRep3.PageNumber =1 then value:='';{ pg:=2;}
end;

procedure TFEtatPrest.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  pgHT:=pgHT+HT;
  totHT:=totHT+HT;
  HT:=0;
end;

procedure TFEtatPrest.QRLabel28Print(sender: TObject; var Value: String);
var valeur:double;
begin
  Avadihoreal(Value,valeur);
  report:=report+Valeur;
end;

procedure TFEtatPrest.QRLabel26Print(sender: TObject; var Value: String);
var val:double;
begin
  avadihoreal(value,val);
  report:=report+val;
end;

procedure TFEtatPrest.QRGroup10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabel133.Caption:=EnleveBlancDroite(DASQL.DeclareTiers.Value) +'  ' +
                      EnleveBlancDroite(DASQL.DeclareNom.Value) + '  ' +
                      EnleveBlancDroite(DASQL.DeclareAdresse.Value) ;
end;

end.
