unit Importat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Buttons, Grids, DBGrids;

type
  TFImportat = class(TForm)
    Origine: TQuery;
    EltJrn: TTable;
    Journal: TTable;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OriginePlan: TTable;
    NumCpt: TTable;
    SelNumDiver: TQuery;
    SelNumDiverNumCpt: TStringField;
    SelNumDiverStatistique: TStringField;
    SelNumDiverQuittance: TStringField;
    SelNumDiverNIF: TStringField;
    SelNumDiverDateQuit: TDateField;
    SelNumDiverUniteProd: TStringField;
    SelNumDiverNatureProd: TStringField;
    SelNumDiverCodeProd: TStringField;
    SelNumDiverCodeDecl: TStringField;
    SelNumDiverAbrev: TStringField;
    SelNumAdres: TQuery;
    selOrigineDiver: TQuery;
    SelNumAdresNumCpt: TStringField;
    SelNumAdresRS: TStringField;
    SelNumAdresNom: TStringField;
    SelNumAdresAdresse: TStringField;
    SelNumAdresCP: TStringField;
    SelNumAdresPays: TStringField;
    SelNumAdresBP: TStringField;
    SelNumAdresTEL: TStringField;
    SelNumAdresFax: TStringField;
    SelNumAdresCptBQ: TStringField;
    SelNumAdresNII: TStringField;
    SelNumAdresDEVISE: TStringField;
    selOrigineDiverNSTAT: TFloatField;
    selOrigineDiverNIF: TFloatField;
    selOrigineDiverNOM: TStringField;
    selOrigineDiverADRESSSE: TStringField;
    NumAdres: TTable;
    NumDiver: TTable;
    NumCptNumCpt: TStringField;
    NumCptIntitule: TStringField;
    NumCptDetail: TSmallintField;
    NumCptClasse: TSmallintField;
    NumCptGClasse: TSmallintField;
    NumCptExonere: TBooleanField;
    NumCptTotalisateur: TBooleanField;
    NumCptIzy: TBooleanField;
    NumCptGGroupe: TIntegerField;
    NumCptOGroupe: TIntegerField;
    OrigineOPERATION: TStringField;
    OrigineCODE_J: TStringField;
    OrigineDATE: TDateField;
    OrigineLIBELLE: TStringField;
    OrigineCOMPTE: TStringField;
    OrigineCONTRE: TStringField;
    OrigineDEBIT: TFloatField;
    OrigineCREDIT: TFloatField;
    OriginePRODUIT: TStringField;
    OriginePRESTATION: TStringField;
    OrigineDECL: TStringField;
    OrigineSENS: TStringField;
    OriginePIECE: TStringField;
    OrigineLIGNE: TSmallintField;
    OrigineNUM_FAC: TStringField;
    EltJrnJournal: TStringField;
    EltJrnNumero: TAutoIncField;
    EltJrnDebit: TStringField;
    EltJrnCompte: TStringField;
    EltJrnMontant: TFloatField;
    EltJrnIzy: TBooleanField;
    EltJrnLibelle: TStringField;
    EltJrnContrepartie: TStringField;
    EltJrnNbcontre: TSmallintField;
    EltJrnQte: TFloatField;
    EltJrnDateFact: TDateField;
    EltJrnNumFact: TStringField;
    EltJrnColis: TFloatField;
    EltJrnTypX: TStringField;
    EltJrnSigleTaxe: TStringField;
    JournalCode: TStringField;
    JournalPeriode: TStringField;
    JournalJour: TSmallintField;
    JournalCodeJrnx: TStringField;
    JournalTransferer: TBooleanField;
    JournalTiers: TStringField;
    JournalDeclarer: TBooleanField;
    JournalNumCHQ: TStringField;
    JournalDateEsc: TDateField;
    JournalPoste: TStringField;
    JournalProduit: TStringField;
    OriginePlanCOMPTE: TStringField;
    OriginePlanINTITULE: TStringField;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FImportat: TFImportat;

implementation

uses DaCommun, Daspecia, informat, USQL, UPStocke;

{$R *.DFM}

procedure TFImportat.SpeedButton1Click(Sender: TObject);
var operattal,tiers:string;
  Year,Month,Day:word;
  i:integer;
begin
   EltJrn.Open;
   while not EltJrn.EOF do EltJrn.delete;
   Journal.Open;
   while not Journal.EOF do Journal.delete;
   Origine.open;
   operattal:='';
   tiers:='';

   PStockee.RIncreEltJrn.Open;
   PStockee.RIncreEltJrn.Requery;
   i:=0;
   while not Origine.EOF do
   begin
     EltJrn.insert;
     i:=i+1;
     EltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value+i;
     EltJrnJournal.value:=OrigineOPERATION.value;
     EltJrnCompte.value:=OrigineCOMPTE.value;
     if (copy(OrigineCOMPTE.value,1,2)='40')or
        (copy(OrigineCOMPTE.value,1,2)='41') then tiers:=OrigineCOMPTE.value;
     //if (copy(OrigineCOMPTE.value,1,3)='443') then misyTVA:=true;
     if OrigineDEBIT.value>0.1 then
     begin
       EltJrnDebit.value:='D';
       EltJrnMontant.value:=OrigineDEBIT.value;
     end
     else
     begin
       EltJrnDebit.value:='C';
       EltJrnMontant.value:= OrigineCREDIT.value;
     end;
     EltJrnIzy.value:=false;
     EltJrnLibelle.value:=OrigineLIBELLE.Value;
     EltJrnContrepartie.value:=OrigineCONTRE.Value;
     if OrigineCONTRE.Value='9999999999' then EltJrnNbcontre.value:=2
     else EltJrnNbcontre.value:=1;
     EltJrnNumFact.value:=OrigineNUM_FAC.Value;
     if OrigineProduit.Value<>'' then  EltJrnTypX.Value:= OrigineProduit.Value;
     if OriginePrestation.Value<>'' then  EltJrnTypX.Value:= OriginePrestation.Value;
     EltJrn.post;
     if operattal<> OrigineOPERATION.value then
     begin
       Journal.insert;
       JournalCode.Value:= OrigineOPERATION.value;
       JournalDateEsc.value:=OrigineDATE.Value;
       DecodeDate(OrigineDATE.Value,Year,Month,Day);
       JournalPeriode.Value:=inttostr(Year)+'/'+FormatFloat('00', Month);
       JournalJour.value:=Day;
       if OrigineCODE_J.Value='AD' then JournalCodeJrnx.value:='AC'
       else if OrigineCODE_J.Value='AC' then JournalCodeJrnx.value:='AP'
       else JournalCodeJrnx.value:=OrigineCODE_J.Value;
       JournalTransferer.value:=false;
       JournalTiers.value:=Tiers;
       operattal:=OrigineOPERATION.value;
       tiers:='';
     end;
     {Statistique, adresse et NIF}
   Origine.Next;
   end;
end;

procedure TFImportat.SpeedButton2Click(Sender: TObject);
var cls:shortint;
Cmpt:string;
begin
  OriginePlan.open;
  {Special.NumCpt.open; while not NumCpt.EOF do NumCpt.delete;
  NumDiver.open;while not NumDiver.EOF do NumDiver.delete;
  NumAdres.open; while not NumAdres.EOF do NumAdres.delete;}
  OriginePlan.first;
  Special.NumCp.OPen;
  while not OriginePlan.eof do
  begin
    if (copy(OriginePlanCompte.Value,1,2)='40')or
       (copy(OriginePlanCompte.Value,1,2)='41')or
       (copy(OriginePlanCompte.Value,1,3)='425')or
       (copy(OriginePlanCompte.Value,1,4)='4676')or
       (copy(OriginePlanCompte.Value,1,4)='4677')or
       (copy(OriginePlanCompte.Value,1,3)='461')then CMPT:=OriginePlanCompte.Value
    else  CMPT:=copy(OriginePlanCompte.Value,1,8);
    try
      Special.NumCp.Insert;
      Special.NumCpNumCpt.Value:=Cmpt;
      Special.NumCpIntitule.Value:=OriginePlanINTITULE.Value;
      Special.NumCpDetail.Value:=0;
      if length(OriginePlanCompte.Value)>1 then
        cls:=strtoint(copy(OriginePlanCompte.Value,1,2))
      else
        cls:=strtoint(OriginePlanCompte.Value);
      Special.NumCpClasse.Value:=cls;
      Special.NumCpGClasse.Value:=strtoint(copy(OriginePlanCompte.Value,1,1));
      Special.NumCpExonere.Value:=0;
      Special.NumCpTotalisateur.Value:='0';
      Special.NumCpIzy.Value:=0;
      Special.NumCp.post;
    except
       On EDataBaseError do Special.NumCp.cancel;
    end;
    OriginePlan.Next;
  end;
end;

procedure TFImportat.SpeedButton3Click(Sender: TObject);
var i,nbpoint,total:integer;
  stpoint:string;
begin
  DASQL.NumCHQ_Fact.Open;
  FInformat.Asehoy('Vérification en cours ',' PATIENTEZ.',1000000);
  total:=DASQL.NumCHQ_Fact.RecordCount;
  nbpoint:=0;
  DASQL.NumCHQ_Fact.First;
  while not DASQL.NumCHQ_Fact.EOF do
  begin
    nbpoint:=nbpoint+1;
    if nbpoint>10 then
    stpoint:='';
    for i:=1 to (nbpoint mod 10) do stpoint:=stpoint+'.';
    FInformat.caption:=inttostr(nbpoint)+'/'+inttostr(total)+stpoint;
    if DASQL.NumCHQ_FactTyp.Value<>2 then
    begin
      DASQL.NumCHQ_Fact.Next;
      Continue;
    end;
    if('5'<DASQL.NumCHQ_FactCompte.Value)and
      (DASQL.NumCHQ_FactCompte.Value<'52') then
    begin
      DASQL.NumCHQ_Fact.Edit;
      DASQL.NumCHQ_FactSigleTaxe.Value:=DASQL.NumCHQ_FactNumFact.Value;
      //DASQL.NumCHQ_FactNumFact.Value:=DASQL.NumCHQ_FactFacture.Value;
      DASQL.NumCHQ_Fact.Post;
    end
    else
    begin
      DASQL.NumCHQ_Fact.Edit;
      //if('52'<DASQL.NumCHQ_FactCompte.Value)and(DASQL.NumCHQ_FactCompte.Value<'53') then
        //DASQL.NumCHQ_FactNumFact.Value:=DASQL.NumCHQ_FactFacture.Value;
      DASQL.NumCHQ_FactSigleTaxe.Value:=DASQL.NumCHQ_FactCheque.Value;
      DASQL.NumCHQ_Fact.Post;
    end;
    DASQL.NumCHQ_Fact.Next;
  end;
end;

procedure TFImportat.SpeedButton4Click(Sender: TObject);
begin
  DASQL.NumCHQ_Fact.Open;
end;

procedure TFImportat.SpeedButton5Click(Sender: TObject);
begin
  Special.Journal.Open;
  Special.Journal.First;
  while not Special.Journal.EOF do
  begin
    Special.Journal.Edit;
    Special.JournalDateEsc.Value:=Special.JournalDateFact.Value;
    Special.Journal.Post;
    Special.Journal.Next;
  end;
end;

end.
