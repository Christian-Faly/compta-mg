unit UPStocke;

interface

uses
  SysUtils, Classes, DB, ADODB,Dialogs;

type
  TPStockee = class(TDataModule)
    RSelJour: TADOQuery;
    RSelJourJournal: TWideStringField;
    RSelJourDateEsc: TDateTimeField;
    RSelJourCompte: TWideStringField;
    RSelJourNumFact: TWideStringField;
    RSelJourLibelle: TWideStringField;
    RSelJourTiers: TWideStringField;
    RSelJourDebit: TWideStringField;
    RSelJourCodeJrnx: TWideStringField;
    RSelJourPeriode: TWideStringField;
    RSelJourJour: TSmallintField;
    RSelJourNumero: TAutoIncField;
    RSelJourDateOpe: TDateTimeField;
    RCalculSolde: TADOQuery;
    RCalculSoldesolde: TBCDField;
    RSel1EltJrn: TADOQuery;
    RSel1EltJrnJournal: TStringField;
    RSel1EltJrnDebit: TStringField;
    RSel1EltJrnCompte: TStringField;
    RSel1EltJrnContrepartie: TStringField;
    RSel1EltJrnNbcontre: TSmallintField;
    RSel1EltJrnLContre: TStringField;
    RSel1EltJrnQte: TFloatField;
    RSel1EltJrnLibel2: TStringField;
    RSel1EltJrnNumCHQ: TStringField;
    RSel1EltJrnDateFact: TDateField;
    RSel1EltJrnNumFact: TStringField;
    RSel1EltJrnLibelle: TStringField;
    RSel1EltJrntyp: TSmallintField;
    RSel1EltJrnTypX: TStringField;
    RSel1EltJrnSigleTaxe: TStringField;
    RSel1EltJrnDateEsc: TDateField;
    RSel1EltJrnPeriode: TWideStringField;
    RSel1EltJrnJour: TSmallintField;
    RSel1EltJrnIntitule: TWideStringField;
    RSel1EltJrnCodeJrnx: TWideStringField;
    RLeDernier: TADOQuery;
    RLeDernierFarany: TWideStringField;
    RLeDernierPeriode: TWideStringField;
    RLeDernierCodeJrnx: TWideStringField;
    RTaxe: TADOQuery;
    RTaxeDebit: TStringField;
    RTaxecompte: TStringField;
    RTaxeJournal: TStringField;
    RTaxeExonere: TSmallintField;
    RTaxePeriode: TWideStringField;
    RTaxeExonere1: TSmallintField;
    SuppJournal: TADOQuery;
    SuppEltJrn: TADOQuery;
    RIncreEltJrn: TADOQuery;
    RIncreEltJrnDernierNum: TIntegerField;
    RSel1EltJrnNumero: TIntegerField;
    SuppLettrage: TADOQuery;
    RSelJourLettre: TWideStringField;
    MettrePS: TADOQuery;
    RDemandeTiers: TADOQuery;
    RParamRubrique: TADOQuery;
    RDemandeTiersCompteDe: TWideStringField;
    RDemandeTiersCompteA: TWideStringField;
    SuppTout: TADOQuery;
    Convertion: TADOQuery;
    RDiffDebitCredit: TADOQuery;
    RLettreNonValide: TADOTable;
    RLettreNonValideLettre: TWideStringField;
    RSelJourNPiece: TStringField;
    ExecuterReport: TADOQuery;
    SuppJournalReport: TADOQuery;
    InsertEltReport: TADOQuery;
    InsertJournalReport: TADOQuery;
    ZEstCeJournalReport: TADOTable;
    ZinsererJournal: TADOQuery;
    ZInsererReport: TADOQuery;
    ZSupprimerReport: TADOQuery;
    ReInputation: TADOQuery;
    NumeroterReport: TADOQuery;
    NumeroterReportNumero: TIntegerField;
    ADOTable1: TADOTable;
    RRembTVA: TADOQuery;
    RRembTVA_Facture: TADOQuery;
    RRembTVA_Rglt: TADOQuery;
    R_Centralisateur: TADOQuery;
    R_Centralisateurjournal: TWideStringField;
    CreTRembTVA: TADOQuery;
    CopieRembTVA: TADOQuery;
    CopieRembTVALigneTVA: TIntegerField;
    CopieRembTVADateFact: TDateTimeField;
    CopieRembTVANumFact: TWideStringField;
    CopieRembTVAFournisseur: TWideStringField;
    CopieRembTVAObjetFact: TWideStringField;
    CopieRembTVAMontantHT: TFloatField;
    CopieRembTVAMontantTVA: TFloatField;
    CopieRembTVADateRglt: TDateTimeField;
    CopieRembTVANIF: TWideStringField;
    CopieRembTVAStat: TWideStringField;
    CopieRembTVAPcsAchat: TWideStringField;
    OperationFichier: TADOQuery;
    CopieRembTVAPcsRglt: TWideStringField;
    Q_RembTVAByLigne: TADOQuery;
    Q_RembTVAByLigneObjetFact: TWideStringField;
    Q_RembTVAByLignecompteFnrs: TWideStringField;
    CopieRembTVACompteFnrs: TWideStringField;
    CopieRembTVATP: TWideStringField;
    CopieRembTVAQUIT: TWideStringField;
    CopieRembTVADateTP: TDateTimeField;
    CopieRembTVADateQuit: TDateTimeField;
    CopieRembTVAAdresse: TWideStringField;
    Q_NumCpt: TADOQuery;
    Q_NumCptIntitule: TWideStringField;
    q_RembTVA_Libelle: TADOQuery;
    q_RembTVA_LibelleObjetFact: TWideStringField;
    RRembTVARubrique: TWideStringField;
    RRembTVACompte: TWideStringField;
    RRembTVALibelTVA: TWideStringField;
    RRembTVAJrTVA: TWideStringField;
    RRembTVAPeriode: TWideStringField;
    RRembTVADescription: TWideStringField;
    RRembTVAMontantTVA: TBCDField;
    RRembTVATiers: TWideStringField;
    RRembTVADtPaie: TDateTimeField;
    RRembTVAJrRglt: TWideStringField;
    RRembTVAIntitule: TWideStringField;
    RRembTVANIF: TWideStringField;
    RRembTVAStatistique: TWideStringField;
    RRembTVADateEsc: TDateTimeField;
    RRembTVANumFact: TWideStringField;
    RRembTVAMtTiers: TBCDField;
    RRembTVAHTLigne: TBCDField;
    RRembTVAMTaux: TFloatField;
    RRembTVAMtHT: TFloatField;
    RRembTVAObjetFact: TWideStringField;
    Copier: TADOQuery;
    RRembTVA_FactureDebit: TWideStringField;
    RRembTVA_FactureCompte: TWideStringField;
    RRembTVA_FactureLibelle: TWideStringField;
    RRembTVA_FactureDateFact: TDateTimeField;
    RRembTVA_FactureNumFact: TWideStringField;
    RRembTVA_RgltJournal: TWideStringField;
    RRembTVA_RgltDebit: TWideStringField;
    RRembTVA_RgltCompte: TWideStringField;
    RRembTVA_RgltLibelle: TWideStringField;
    CopieRembTVADatePaie: TStringField;
    RRembTVA_FacturePeriode: TWideStringField;
    RRembTVA_FactureDateEsc: TDateTimeField;
    RRembTVA_FactureJournal: TWideStringField;
    RRembTVA_FactureMois: TStringField;
    RRembTVA_FactureAnnee: TStringField;
    RRembTVA_FactureTiers: TWideStringField;
    CopieRembTVAlettra: TWideStringField;
    RRembTVA_RgltDateEsc: TDateTimeField;
    RRembTVA_RgltNumFact: TWideStringField;
    CalcRubrique: TADOQuery;
    qOperationTVA: TADOQuery;
    creRembTVA2: TADOQuery;
    qOperationTVAMt: TBCDField;
    CopieRembTVAMtRetenu: TWideStringField;
    LstTiersRubrique: TADOQuery;
    qParametrTiers: TADOQuery;
    qParametrTiersNumero: TIntegerField;
    qParametrTiersLibelle: TWideStringField;
    qParametrTiersDescription: TWideStringField;
    qParametrTiersImpoCompte: TWideStringField;
    qParametrTiersImpoTiers: TWideStringField;
    qParametrTiersTiers: TWideStringField;
    qParametrTiersRubrique: TWideStringField;
    qParametrTiersSens: TWideStringField;
    ListeTiers: TADOQuery;
    qParametrTiersValeur: TFloatField;
    TOuvrir: TADOTable;
    ListeTiersNumero: TIntegerField;
    ListeTiersDescription: TWideStringField;
    ListeTiersTiers: TWideStringField;
    ListeTiersval: TFloatField;
    ListeTiersNIF: TWideStringField;
    ListeTiersstatistique: TWideStringField;
    ListeTiersDateEsc: TDateTimeField;
    ListeTiersNumFact: TWideStringField;
    ListeTiersRaison: TWideStringField;
    ListeTiersObjetFact: TWideStringField;
    ListeTiersAdr: TWideStringField;
    ListeTiersMontantHT: TBCDField;
    ListeTiersTVA: TBCDField;
    ListeTiersCompte: TWideStringField;
    ListeTiersJrTVA: TWideStringField;
    Q_NumDiver: TADOQuery;
    Q_NumDiverNIF: TWideStringField;
    Q_NumDiverStatistique: TWideStringField;
    qGrillerDec: TADOQuery;
    qGrillerDecCodeSoc: TWideStringField;
    ListeTiersAdr2: TStringField;
    qGrillerDecgriller: TStringField;
    Operation1: TADOQuery;
    Operation2: TADOQuery;
    RSelJourtransferer: TStringField;
    RSelJourizy: TStringField;
    RSel1EltJrnizy: TStringField;
    ADOTable2: TADOTable;
    RSelJourmontant: TLargeintField;
    RSel1EltJrnmontant: TLargeintField;
    RSel1EltJrnMDebit: TLargeintField;
    RSel1EltJrnMCredit: TLargeintField;
    RRembTVA_Rgltmontant: TLargeintField;
    RRembTVA_RgltMDebit: TLargeintField;
    RRembTVA_RgltMCredit: TLargeintField;
    RTaxemontant: TLargeintField;
    RRembTVA_Facturemontant: TLargeintField;
    RRembTVA_FactureMDebit: TLargeintField;
    RRembTVA_FactureMCredit: TLargeintField;
    Q_RembTVAByLignemontantttc: TLargeintField;
    RSelJourMDebit: TLargeintField;
    RSelJourMCredit: TLargeintField;
    procedure RSelJourCalcFields(DataSet: TDataSet);
    procedure RSel1EltJrnCalcFields(DataSet: TDataSet);
    procedure RRembTVACalcFields(DataSet: TDataSet);
    procedure CopieRembTVACalcFields(DataSet: TDataSet);
    procedure RRembTVA_FactureCalcFields(DataSet: TDataSet);
    procedure RRembTVA_RgltCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangeChemin(ip,chemin:string);
    function  IsDemandeTiers(NumCpt:string):boolean;
    function  IsCompteDeclare(Param,Rubrique,NumCpt:string):boolean;
    procedure SupprimerTout(connection,NomTable:string);
    procedure SupprimerLettre(Lettre:string);
    procedure SupprimerLettreNonValide;
    procedure ExecuterSQL(Typa:string);
    procedure CreerCopie(Orig,dest:String);
    procedure CreerFichier(Orig,dest:String);
    procedure InsererFichier(Orig,dest:String);
    procedure ViderFichier(Ndf:string);
    procedure CreerVueOperationTVA;
    procedure LienExercice_1(chem_prec:string; lines:TStrings);
  end;

var
  PStockee: TPStockee;

implementation

uses UConnect, DaCommun, Daspecia, USQL, TypeElmt;

{$R *.dfm}

procedure TPStockee.LienExercice_1(chem_prec:string; lines:TStrings);
begin
  Operation1.Close;
  Operation1.SQL.Clear;
  Operation1.SQL.Add('SELECT nom, sql_vue ');
  Operation1.SQL.Add('FROM table_vue');
  Operation1.SQL.Add('WHERE typa = ''externe''');
  Operation1.SQL.Add('AND bdd_ext = ''exercice-1''');
  lines.Text:=Operation1.SQL.Text;
  Operation1.Open;
  while not Operation1.Eof do
  begin
    Operation2.Close;
    Operation2.SQL.Clear;
    Operation2.SQL.Add('UPDATE table_vue');
    Operation2.SQL.Add('SET sql_vue = REPLACE(sql_vue, ''s2101920'','''+chem_prec+''')');
    Operation2.SQL.Add('WHERE nom='''+Operation1.FieldValues['nom']+'''');
    lines.Text:=Operation2.SQL.Text;
    Operation2.ExecSQL;
    //showMessage(Operation1.FieldValues['nom']);
    Operation1.Next;
  end;
  special.table_vue.close;
  special.table_vue.close;
  while not special.table_vue.Eof do
  begin
    if (special.table_vuetypa.Value='externe') then
    begin
    //try
      Operation2.Close;
      Operation2.SQL.Text := special.table_vuesql_vue.Value;
      Operation2.SQL.Insert(0, 'CREATE VIEW OR REPLACE '+special.table_vuenom.Value+' AS ');
      Lines := Operation2.SQL;
      Operation2.ExecSQL;
    //except
      //on E:Exception do
        //Lines.Add(daTransfertPG.t_table_vuenom.Value+':'+E.message)
    end;
    special.table_vue.Next;
  end;
  showMessage('Operation1 termin�e');
end;

procedure TPStockee.CreerVueOperationTVA;

begin
  PStockee.Operation1.Close;
  PStockee.Operation1.SQL.Clear;
  PStockee.Operation1.SQL.Add('DROP VIEW  IF EXISTS OperationTVA;');
  PStockee.Operation1.SQL.Add('CREATE VIEW OperationTVA AS ');
  PStockee.Operation1.SQL.Add('SELECT ''calcule'' AS calc');

  PStockee.Operation2.Close;
  PStockee.Operation2.SQL.Clear;
  PStockee.Operation2.SQL.Add('SELECT numero FROM parametr');
  PStockee.Operation2.Open;

  while not PStockee.Operation2.Eof do
  begin
    PStockee.Operation1.SQL.Add(',SUM(CASE WHEN numero='+Inttostr(PStockee.Operation2.FieldValues['numero'])+
                                    ' THEN valeur ELSE 0 END) AS V'+ IntToStr(PStockee.Operation2.FieldValues['numero']));
    PStockee.Operation2.Next;
  end;
  PStockee.Operation1.SQL.Add('FROM parametr');
end;

procedure TPStockee.SupprimerLettre(Lettre:string);
begin
  SuppLettrage.Close;
  SuppLettrage.Parameters[0].Value :=Lettre;
  SuppLettrage.ExecSQL;
end;

procedure TPStockee.SupprimerLettreNonValide;
begin
  RLettreNonValide.Open;
  RLettreNonValide.Requery;
  RLettreNonValide.First;
  while not RLettreNonValide.EOF do
  begin
    SupprimerLettre(RLettreNonValideLettre.Value);
    RLettreNonValide.Next;
  end;
end;

procedure TPStockee.ChangeChemin(ip,chemin:string);
begin
  DaConnect.ChangeCheminConnection(DaConnect.C_Document,ip,chemin);
  RSel1EltJrn.close;            RSel1EltJrn.Connection:=DaConnect.C_Document;
  RSelJour.close;               RSelJour.Connection:=DaConnect.C_Document;
  RLeDernier.Close;             RLeDernier.Connection:=DaConnect.C_Document;
  RCalculSolde.Close;           RCalculSolde.Connection:=DaConnect.C_Document;
  RTaxe.close;                  RTaxe.Connection:=DaConnect.C_Document;
  SuppJournal.close;            SuppJournal.Connection:=DaConnect.C_Document;
  SuppEltJrn.close;             SuppEltJrn.Connection:=DaConnect.C_Document;
  RIncreEltJrn.close;           RIncreEltJrn.Connection:=DaConnect.C_Document;
  SuppLettrage.close;           SuppLettrage.Connection:=DaConnect.C_Document;
  MettrePS.close;               MettrePS.Connection:=DaConnect.C_Document;
  RDemandeTiers.close;          RDemandeTiers.Connection:=DaConnect.C_Document;
  SuppTout.close;               SuppTout.Connection:=DaConnect.C_Document;
  Convertion.close;             Convertion.Connection:=DaConnect.C_Document;
  RDiffDebitCredit.close;       RDiffDebitCredit.Connection:=DaConnect.C_Document;
  ExecuterReport.close;         ExecuterReport.Connection:=DaConnect.C_Document;
  ZEstCeJournalReport.close;    ZEstCeJournalReport.Connection:=DaConnect.C_Document;
  ZinsererJournal.close;        ZinsererJournal.Connection:=DaConnect.C_Document;
  ZInsererReport.close;         ZInsererReport.Connection:=DaConnect.C_Document;
  ZSupprimerReport.close;       ZSupprimerReport.Connection:=DaConnect.C_Document;
  ReInputation.close;           ReInputation.Connection:=DaConnect.C_Document;
  NumeroterReport.close;        NumeroterReport.Connection:=DaConnect.C_Document;
  RRembTVA.close;               RRembTVA.Connection:=DaConnect.C_Document;
  Copier.close;                 Copier.Connection:=DaConnect.C_Document;
  RRembTVA_Facture.close;       RRembTVA_Facture.Connection:=DaConnect.C_Document;
  RRembTVA_Rglt.close;          RRembTVA_Rglt.Connection:=DaConnect.C_Document;
  R_Centralisateur.close;       R_Centralisateur.Connection:=DaConnect.C_Document;
  CreTRembTVA.close;            CreTRembTVA.Connection:=DaConnect.C_Document;
  CopieRembTVA.close;           CopieRembTVA.Connection:=DaConnect.C_Document;
  OperationFichier.Close;       OperationFichier.Connection:=DaConnect.C_Document;
  Q_RembTVAByLigne.Close;       Q_RembTVAByLigne.Connection:=DaConnect.C_Document;
  Q_NumCpt.Close;               Q_NumCpt.Connection:=DaConnect.C_Document;
  Q_NumDiver.Close;             Q_NumDiver.Connection:=DaConnect.C_Document;
  creRembTVA2.Close;            creRembTVA2.Connection:=DaConnect.C_Document;
  CalcRubrique.Close;           CalcRubrique.Connection:=DaConnect.C_Document;
  ListeTiers.Close;             ListeTiers.Connection:=DaConnect.C_Document;
  TOuvrir.Close;                TOuvrir.Connection:=DaConnect.C_Document;
  qOperationTVA.Close;          qOperationTVA.Connection:=DaConnect.C_Document;
end;

procedure TPStockee.ExecuterSQL(Typa:string);
begin
  ExecuterReport.close;
  ExecuterReport.SQL.Clear;
  if Typa='Supprimer Journal' then
  begin
    ExecuterReport.SQL.Add('DELETE Journal.Code');
    ExecuterReport.SQL.Add('FROM Journal');
    ExecuterReport.SQL.Add('WHERE (((Journal.Code)="AN010001"))');
  end;
  if Typa='Supprimer Element' then
  begin
    ExecuterReport.SQL.Add('INSERT INTO EltJrn ( Journal, Debit, Compte, Montant )');
    ExecuterReport.SQL.Add('SELECT ZEltReport.RJournal, ZEltReport.Debit, ZEltReport.Compte, ZEltReport.RMontant');
    ExecuterReport.SQL.Add('FROM ZEltReport');
  end;
  if Typa='Inserer Journal' then
  begin
    ExecuterReport.SQL.Add('INSERT INTO Journal ( Code, Periode, Jour, CodeJrnx, DateEsc, DateSaisie )');
    ExecuterReport.SQL.Add('SELECT ''AN010001'' AS Expr1, ''2005/01'' AS Expr2, 1 AS Expr3, ''AN'' AS Expr4, #1/1/2005# AS Expr5, #1/1/2005# AS Expr6');
  end;
  if Typa='Inserer Element' then
  begin
    ExecuterReport.SQL.Add('DELETE EltJrn.Journal');
    ExecuterReport.SQL.Add('FROM EltJrn');
    ExecuterReport.SQL.Add('WHERE (((EltJrn.Journal)="AN010001"))');
  end;
  ExecuterReport.ExecSQL;
end;

procedure TPStockee.ViderFichier(Ndf:String);
begin
  OperationFichier.SQL.Clear;
  OperationFichier.SQL.Add('DELETE FROM '+Ndf);
  OperationFichier.ExecSQL;
  ///PStockee.qCopieRembTVA.Requery;
end;

procedure TPStockee.CreerCopie(Orig,dest:String);
var existe:boolean;
begin
  try
    TOuvrir.Close;
    TOuvrir.TableName:=dest;
    TOuvrir.Open;
    existe:=true;
  except
    On EDataBaseError do existe:=false;
    else existe:=false;
  end;

  if existe then
  begin
    ViderFichier(Dest);
    InsererFichier(Orig,dest);
  end
  else
  begin
    CreerFichier(Orig,dest);
  end;
end;

procedure TPStockee.CreerFichier(Orig,dest:String);
begin
  OperationFichier.SQL.Clear;
  OperationFichier.SQL.Add('select * into '+Dest);
  OperationFichier.SQL.Add('from  '+Orig);
  OperationFichier.ExecSQL;
end;

procedure TPStockee.InsererFichier(Orig,dest:String);
begin
  OperationFichier.SQL.Clear;
  OperationFichier.SQL.Add('Insert into '+Dest);
  OperationFichier.SQL.Add('select *  from '+Orig);
  OperationFichier.ExecSQL;
end;


procedure TPStockee.supprimerTout(Connection,NomTable:string);
begin
  if Connection='Compta' then
  begin
    SuppTout.close;
    SuppTout.Connection:=DaConnect.C_Compta;
  end;
  if Connection='Document' then
  begin
    SuppTout.close;
    SuppTout.Connection:=DaConnect.C_Document;
  end;
  if Connection='Soci�te' then
  begin
    SuppTout.close;
    SuppTout.Connection:=DaConnect.C_Societe;
  end;

  SuppTout.SQL.Clear;
  SuppTout.SQL.Add('DELETE FROM '+NomTable);
  SuppTout.ExecSQL;
end;


function  TPStockee.IsDemandeTiers(NumCpt:string):boolean;
begin
  RDemandeTiers.close;
  RDemandeTiers.Parameters[0].Value:=NumCpt;
  RDemandeTiers.Parameters[1].Value:=NumCpt;
  RDemandeTiers.Open;
  if (RDemandeTiers.recordcount>0) Then
  begin
    while not  RDemandeTiers.Eof do
    begin
      RDemandeTiers.Next;
    end;
  end;
  Result:=(RDemandeTiers.recordcount>0);
end;

function  TPStockee.IsCompteDeclare(Param,Rubrique,NumCpt:string):boolean;
begin

  RParamRubrique.Close;
  RParamRubrique.Parameters[0].Value := Param;
  RParamRubrique.Parameters[1].Value := Rubrique;
  RParamRubrique.Parameters[2].Value := NumCpt;
  RParamRubrique.Parameters[3].Value := NumCpt;
  RParamRubrique.Open;
  Result:=(RParamRubrique.recordcount>0);
end;

procedure TPStockee.RSelJourCalcFields(DataSet: TDataSet);
begin
  if RSelJourDebit.value='D' then
  begin
   RSelJourMDebit.value:=RSelJourMontant.value;
   RSelJourMCredit.value:=0;
  end
  else
  begin
   RSelJourMDebit.value:=0;
   RSelJourMCredit.value:=RSelJourMontant.value;
  end;
  RSelJourDateOpe.value:=StrtoDateTime(FormatFloat('00',RSelJourJour.Value)+ '/'+
         copy(RSelJourPeriode.Value,6,2)+ '/'+
          copy(RSelJourPeriode.Value,3,2));
  RSelJourNPiece.value:=Copy(RSelJourJournal.Value,5,4);
end;

procedure TPStockee.RSel1EltJrnCalcFields(DataSet: TDataSet);
begin
  if RSel1EltJrnDebit.value='D' then
  begin
    RSel1EltJrnMDebit.value:=RSel1EltJrnMontant.value;
    RSel1EltJrnMCredit.value:=0;
  end
  else
  begin
    RSel1EltJrnMDebit.value:=0;
    RSel1EltJrnMCredit.value:=RSel1EltJrnMontant.value;
  end;

  if RSel1EltJrnNbContre.Value=1 then
    RSel1EltJrnLContre.Value:=RSel1EltJrnContrePartie.value
  else
    RSel1EltJrnLContre.Value:='99999999';
  { Calcule libell�}
  RSel1EltJrnLibel2.Value:= RSel1EltJrnLibelle.value;
  {Achat : Libell� + Qt�}
  if RSel1EltJrnTyp.Value=0 then
    RSel1EltJrnLibel2.Value:= RSel1EltJrnLibel2.value+' '+FormatFloat('#',RSel1EltJrnQte.value);
  {Vente : Libell� + Qt�}
  if RSel1EltJrnTyp.Value=1 then
    RSel1EltJrnLibel2.Value:= RSel1EltJrnLibel2.value+' '+FormatFloat('#',RSel1EltJrnQte.value);
  {Tresorerie : N�CHQ+ Libell�}
  if (RSel1EltJrnTyp.Value=2) and(RSel1EltJrnSigleTaxe.value>'0') then
      RSel1EltJrnLibel2.Value:= EnleveBlancDroite(RSel1EltJrnSigleTaxe.value)+' '+RSel1EltJrnLibel2.value;
  //RSel1EltJrnLibel2.Value:=EnleveBlancDroite(RSel1EltJrnLibel2.Value);
  {Si Effet : libell� + EF AU + Date d'�ch�ance}
  if ((RSel1EltJrnCompte.Value>'4121')and(RSel1EltJrnCompte.Value<'4122'))
    or ((RSel1EltJrnCompte.Value>'4021')and(RSel1EltJrnCompte.Value<'4022'))
    {or ((Sel1EltJrnContrepartie.Value>'4121')and(Sel1EltJrnContrepartie.Value<'4122'))
    or ((Sel1EltJrnContrepartie.Value>'4021')and(Sel1EltJrnContrepartie.Value<'4022'))}then
        RSel1EltJrnLibel2.Value:= RSel1EltJrnLibelle.value+' EF AU '+RSel1EltJrnDateFact.AsString;
end;

procedure TPStockee.RRembTVACalcFields(DataSet: TDataSet);
begin
  if RRembTVAHTLigne.Value<>0 then
    RRembTVAMtHT.Value :=RRembTVAHTLigne.Value
  else
    RRembTVAMtHT.Value :=RRembTVAMtaux.Value;
end;

procedure TPStockee.CopieRembTVACalcFields(DataSet: TDataSet);
begin
  if (CopieRembTVACompteFnrs.Value<'51Z')and(CopieRembTVACompteFnrs.Value>'51') then
    CopieRembTVADatePaie.Value:=FormatDateTime('dd/mm/yyyy',CopieRembTVADateFact.Value)
  else
  begin
    if CopieRembTVADateRglt.Value>StrToDate('01/01/1900') then
      CopieRembTVADatePaie.Value:=FormatDateTime('dd/mm/yyyy',CopieRembTVADateRglt.Value)
    else
      CopieRembTVADatePaie.Value:='';
    end;
end;

procedure TPStockee.RRembTVA_FactureCalcFields(DataSet: TDataSet);
begin
  case strtoint(copy(RRembTVA_FacturePeriode.Value,6,2)) of
    1 :RRembTVA_FactureMois.Value:='Janvier';
    2 :RRembTVA_FactureMois.Value:='F�vrier';
    3 :RRembTVA_FactureMois.Value:='Mars';
    4 :RRembTVA_FactureMois.Value:='Avril';
    5 :RRembTVA_FactureMois.Value:='Mai';
    6 :RRembTVA_FactureMois.Value:='Juin';
    7 :RRembTVA_FactureMois.Value:='Juillet';
    8 :RRembTVA_FactureMois.Value:='Ao�t';
    9 :RRembTVA_FactureMois.Value:='Septembre';
    10:RRembTVA_FactureMois.Value:='Octobre';
    11:RRembTVA_FactureMois.Value:='Novembre';
    12:RRembTVA_FactureMois.Value:='D�cembre';
  end;
  RRembTVA_FactureAnnee.Value:=copy(RRembTVA_FacturePeriode.Value,1,4);
  if RRembTVA_FactureDebit.Value='D' then
  begin
    RRembTVA_FactureMDebit.Value:=RRembTVA_FactureMontant.Value;
    RRembTVA_FactureMCredit.Value:=0;
  end
  else
  begin
    RRembTVA_FactureMDebit.Value:=0;
    RRembTVA_FactureMCredit.Value:=RRembTVA_FactureMontant.Value;
  end
end;

procedure TPStockee.RRembTVA_RgltCalcFields(DataSet: TDataSet);
begin
  if RRembTVA_RgltDebit.Value='D' then
  begin
    RRembTVA_RgltMDebit.Value:=RRembTVA_RgltMontant.Value;
    RRembTVA_RgltMCredit.Value:=0;
  end
  else
  begin
    RRembTVA_RgltMDebit.Value:=0;
    RRembTVA_RgltMCredit.Value:=RRembTVA_RgltMontant.Value;
  end
end;

end.
