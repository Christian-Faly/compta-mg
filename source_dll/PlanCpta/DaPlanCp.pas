unit DaPlanCp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, menus, ADODB;

type
  TTabMenu = array[1..10]of TMainMenu;
  TDataCpte = class(TDataModule)
    SourceUtilisat: TDataSource;
    SourceAcces: TDataSource;
    SourceSociete: TDataSource;
    SourceMaitre: TDataSource;
    C_Exercice: TADOConnection;
    NumDivers: TADOQuery;
    NumDiversNumCpt: TStringField;
    NumDiversStatistique: TStringField;
    NumDiversQuittance: TStringField;
    NumDiversNIF: TStringField;
    NumDiversDateQuit: TDateField;
    NumDiversNatureProd: TStringField;
    NumDiversCodeProd: TStringField;
    NumDiversCodeDecl: TStringField;
    NumDiversAbrev: TStringField;
    NumDiversUniteProd: TStringField;
    NumDiversTP: TStringField;
    NumDiversDateTP: TDateField;
    SelTypProd: TADOQuery;
    SoldeCpte: TADOQuery;
    SoldeCpteDebit: TStringField;
    SoldeCpteMontant: TFloatField;
    NumCompte: TADOQuery;
    NumCompteNumero: TStringField;
    SelNumLoc: TADOQuery;
    SelNumLocNumCpt: TStringField;
    SelNumLocInterloc: TStringField;
    SelNumLocFonction: TStringField;
    SelNumLocTel: TStringField;
    SelNumLocFax: TStringField;
    SelNumLocInfo: TStringField;
    SelNumDiver: TADOQuery;
    SelNumDiverNumCpt: TStringField;
    SelNumDiverStatistique: TStringField;
    SelNumDiverQuittance: TStringField;
    SelNumDiverNIF: TStringField;
    SelNumDiverDateQuit: TDateField;
    SelNumDiverNatureProd: TStringField;
    SelNumDiverCodeProd: TStringField;
    SelNumDiverCodeDecl: TStringField;
    SelNumDiverAbrev: TStringField;
    SelNumDiverUniteProd: TStringField;
    SelNumDiverTP: TStringField;
    SelNumDiverDateTP: TDateField;
    NumFac: TADOQuery;
    NumFacNumCpt: TStringField;
    NumFacModeRegle: TStringField;
    NumFacAA: TStringField;
    NumFacJours: TStringField;
    NumFacLe: TDateField;
    NumFacEncoursMax: TFloatField;
    NumFacTauxRem: TFloatField;
    NumFacSeuilRelance: TFloatField;
    NumFacTauxEsc: TFloatField;
    NumFacRelanceFax: TSmallintField;
    NumCp: TADOQuery;
    NumCpNumCpt: TStringField;
    NumCpGClasse: TSmallintField;
    NumCpClasse: TSmallintField;
    NumCpGGroupe: TIntegerField;
    NumCpOGroupe: TIntegerField;
    printcpt: TADOQuery;
    printcptnumcpt: TStringField;
    printcptIntitule: TStringField;
    printcptAdresse: TStringField;
    printcptNIF: TStringField;
    printcptStatistique: TStringField;
    SelNumAdres: TADOQuery;
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
    Numadres: TADOTable;
    NumadresNom: TStringField;
    NumadresNumCpt: TStringField;
    NumadresAdresse: TStringField;
    NumDiver: TADOTable;
    NumDiverStatistique: TStringField;
    NumDiverNatureProd: TStringField;
    NumDiverNumCpt: TStringField;
    NumDiverNIF: TStringField;
    C_Societe: TADOConnection;
    Lieu: TADOQuery;
    LieuCode: TStringField;
    LieuLieu: TStringField;
    Tempon: TADOQuery;
    TemponString1: TStringField;
    TemponString2: TStringField;
    TemponReal1: TFloatField;
    TemponReal2: TFloatField;
    TemponSTRING3: TStringField;
    TemponDATE1: TDateField;
    TemponDATE2: TDateField;
    TemponSTRING4: TStringField;
    Repos: TADOTable;
    TAXE: TADOTable;
    Table1: TADOTable;
    Paramet: TADOTable;
    ParametBalGGroupe: TSmallintField;
    ParametBalOGroupe: TSmallintField;
    ParametLanceeBal: TSmallintField;
    SelCompte: TADOQuery;
    NumCompteNumCpt: TWideStringField;
    NumCompteIntitule: TWideStringField;
    NumCompteDetail: TSmallintField;
    NumCompteClasse: TSmallintField;
    NumCompteGClasse: TSmallintField;
    NumCompteNom: TWideStringField;
    NumCompteNature: TWideStringField;
    NumCompteExonere: TSmallintField;
    NumCompteStatistique: TWideStringField;
    SelNumCpt: TADOQuery;
    qAuxiNonUtil: TADOQuery;
    qAuxiNonUtilIntitule: TWideStringField;
    qAuxiNonUtilAuxiIntit: TWideStringField;
    qAuxiNonUtilNumCp: TWideStringField;
    delCompte: TADOQuery;
    NumCptotalisateur: TStringField;
    NumCpizy: TSmallintField;
    Temponboolean1: TSmallintField;
    Temponboolean2: TSmallintField;
    NumComptetotalisateur: TStringField;
    NumCompteizy: TSmallintField;
    C_Compta: TADOConnection;
    TAXEsigle: TWideStringField;
    devise: TADOTable;
    statut: TADOTable;
    SelNumCptnumcpt: TWideStringField;
    SelNumCptintitule: TWideStringField;
    SelNumCptdetail: TSmallintField;
    SelNumCptclasse: TSmallintField;
    SelNumCptgclasse: TSmallintField;
    SelNumCptexonere: TSmallintField;
    SelNumCpttotalisateur: TStringField;
    SelNumCptizy: TSmallintField;
    SelNumCptggroupe: TIntegerField;
    SelNumCptogroupe: TIntegerField;
    SelNumAdresstatut: TWideStringField;
    SelNumCpttype_taxe: TWideStringField;
    SelNumCptpos_analyt: TSmallintField;
    SelNumCptlen_analyt: TSmallintField;
    NumComptepos_analyt: TSmallintField;
    NumComptelen_analyt: TSmallintField;
    procedure NumCompteCalcFields(DataSet: TDataSet);
    procedure C_ExerciceExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure C_SocieteExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure SelNumLocAfterInsert(DataSet: TDataSet);
    procedure SelNumDiverAfterInsert(DataSet: TDataSet);
    procedure SelNumAdresAfterInsert(DataSet: TDataSet);
    procedure SelNumCptBeforePost(DataSet: TDataSet);
  private
    { Déclarations privées }
    procedure ChangeChemin(const chemin:string);
  public
    { Déclarations publiques }
    procedure PrepareBalance(nbGtot,nbOtot:shortint);
    function  soldeCompte(compte:string):real;
    procedure ChangerDossierBase(ip,base:string);
  end;

const MdpProg = 'Ma elle';
      UtiProg = 'Pgm_eur';
var
  DataCpte: TDataCpte;

procedure ChangeChemin(const chemin:string);export;
procedure CreerDataCpte;export;
procedure VonoyDataCpte;export;

implementation

uses TypeElmt;

{$R *.DFM}

procedure CreerDataCpte;
begin
  Application.CreateForm(TDataCpte, DataCpte);
end;

procedure VonoyDataCpte;
begin
  DataCpte.Free;
end;

procedure ChangeChemin(const chemin:string);
begin
  DataCpte.ChangeChemin(chemin);
end;

procedure TDataCpte.ChangeChemin(const chemin:string);
begin
  //printcpt.close;   printcpt.DataBaseName:=chemin;
end;

function  TDataCpte.soldeCompte(compte:string):real;
var mt:real;
begin
  soldecpte.close;
  soldecpte.parameters[0].Value:=compte;
  soldecpte.open;
  mt:=0;
  while not soldecpte.eof do
  begin
    if soldecptedebit.value='D' then mt:=mt+soldecpteMontant.value
    else mt:=mt-soldecpteMontant.value;
    soldecpte.next;
  end;
  result:=mt;
end;

procedure TDataCpte.PrepareBalance(nbGtot,nbOtot:shortint);
var cl,gcl,GGroupe,OGroupe:longint;
  kaonty:string;
begin
  kaonty:='0000';
  NumCp.close;
  NumCp.SQL.Clear;
  NumCp.SQL.Add('Select * from NumCpt');
  NumCp.open;
  NumCp.first;
  while Not NumCp.eof do
  begin
    gcl:=strtoint(copy(NumCpNumCpt.Value,1,1));
    if length(NumCpNumCpt.Value)>1
      then cl:=strtoint(copy(NumCpNumCpt.Value,1,2))
    else
      cl:=strtoint(NumCpNumCpt.Value)*10;
    GGroupe:=strtoint(copy(NumCpNumCpt.Value,1,nbGTot));
    OGroupe:=strtoint(copy(NumCpNumCpt.Value,1,nbOTot));
    NumCp.edit;
    NumCpGClasse.Value:=gcl;
    NumCpClasse.Value:=cl;
    NumCpGGroupe.Value:=GGroupe;
    NumCpOGroupe.Value:=OGroupe;
    NumCp.post;
    NumCp.next;
  end;
end;

procedure TDataCpte.ChangerDossierBase(ip,base:string);
var ConnectionString:string;
begin
  ConnectionString   := 'Provider=MSDASQL.1;Persist Security Info=False;'+
                                    'Extended Properties="DRIVER={PostgreSQL Unicode};'+
                                    'DATABASE='+base+';'+
                                    'PASSWORD=vony;'+
                                    'SERVER='+ip+';PORT=5432;UID=postgres;SSLmode=disable;'+
                                    'ReadOnly=0;Protocol=7.4;FakeOidIndex=0;ShowOidColumn=0;'+
                                    'RowVersioning=0;ShowSystemTables=0;ConnSettings=;Fetch=100;'+
                                    'UnknownSizes=0;MaxVarcharSize=255;MaxLongVarcharSize=8190;'+
                                    'Debug=0;CommLog=0;UseDeclareFetch=0;TextAsLongVarchar=1;'+
                                    'UnknownsAsLongVarchar=0;BoolsAsChar=1;Parse=0;ExtraSysTablePrefixes=;'+
                                    'LFConversion=1;UpdatableCursors=1;TrueIsMinus1=0;BI=0;ByteaAsLongVarBinary=1;'+
                                    'UseServerSidePrepare=1;LowerCaseIdentifier=0;GssAuthUseGSS=0;XaOpt=1"';
  C_Exercice.Close;
  C_Exercice.ConnectionString :=  ConnectionString;
  C_Exercice.Open;
  //C_Exercice.BeginTrans;
end;

procedure TDataCpte.NumCompteCalcFields(DataSet: TDataSet);
var ll:smallint;
  i:integer;
begin
  ll:=length(EnleveBlanc(NumCompteNumCpt.value));
  for i:=1 to ll do
    NumCompteNumero.value:= NumCompteNumero.value +'   ';
  NumCompteNumero.value:=NumCompteNumero.value+NumCompteNumCpt.value;
end;

procedure TDataCpte.C_ExerciceExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  C_Exercice.CommitTrans;
end;

procedure TDataCpte.C_SocieteExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  C_Societe.CommitTrans;
end;

procedure TDataCpte.SelNumLocAfterInsert(DataSet: TDataSet);
begin
  SelNumLocNumCpt.Value := SelNumLoc.Parameters[0].Value;
end;

procedure TDataCpte.SelNumDiverAfterInsert(DataSet: TDataSet);
begin
  SelNumDiverNumCpt.Value := SelNumDiver.Parameters[0].Value
end;

procedure TDataCpte.SelNumAdresAfterInsert(DataSet: TDataSet);
begin
  SelNumAdresNumCpt.Value := SelNumAdres.Parameters[0].Value;
end;

procedure TDataCpte.SelNumCptBeforePost(DataSet: TDataSet);
begin
  SelNumCptclasse.Value :=  strToInt(copy(SelNumCptnumcpt.value,1,2));
  SelNumCptGClasse.Value :=  strToInt(copy(SelNumCptnumcpt.value,1,1));
end;

end.

