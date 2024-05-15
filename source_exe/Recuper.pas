unit Recuper;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, Buttons, ExtCtrls, StdCtrls;

type
  TForm344 = class(TForm)
    Panel1: TPanel;
    SourceSelOrigine: TDataSource;
    OpenDialog1: TOpenDialog;
    SelOrigine: TQuery;
    SelOrigineCPTG: TStringField;
    SelOrigineCPTT: TStringField;
    SelOrigineLIBEL: TStringField;
    SelOrigineDEBIT: TFloatField;
    SelOrigineCREDIT: TFloatField;
    SelOrigineORDRE: TFloatField;
    SelOrigineDATE: TDateField;
    SelOrigineCDJ: TStringField;
    Entete: TTable;
    EnteteORDRE: TFloatField;
    EnteteCDJ: TStringField;
    EnteteDATE: TDateField;
    EnteteTYPE: TStringField;
    EnteteREF: TStringField;
    SelOrigineReference: TStringField;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox2: TGroupBox;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SourceDestination: TDataSource;
    GroupBox3: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SelOrigineBanque: TStringField;
    Table1: TTable;
    Table1DATY: TStringField;
    Table1REF: TStringField;
    Table1MONTANT: TFloatField;
    Table3: TTable;
    Table3DETAILS: TFloatField;
    Table3TRANSACTIO: TFloatField;
    Table3DATY: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure ChercherRef(LIBEL:string;var Nature,NumCHQ:string;rec:boolean);
    function  RaisoJournal(codeJ,Reference:string;dt:TDateTime):string;
    function  RaisoElement(Journal:string;Libelle,CPTG,CPTT:string;
                          DEBIT,CREDIT:Int64):longint;
    function RaisoJournaux(codeJ:string):boolean;
  public
    { Déclarations publiques }
    procedure Asehoy;
  end;

var
  Form344: TForm344;


implementation

uses Daspecia, UPStocke;

{$R *.DFM}

procedure TForm344.Asehoy;
begin
  Special.Journal.open;
  Special.ToutEltJrn.open;
  ShowModal;
end;

procedure TForm344.SpeedButton1Click(Sender: TObject);
var chemin,ndf:string;
    textsql:string;
begin
  with OpenDialog1 do
  begin
    if execute then
    begin;
      SelOrigine.close;
      chemin:=ExtractFilePath(FileName);
      Ndf:=ExtractFileName(FileName);
      SelOrigine.DataBaseName:=chemin;
      SelOrigine.close;
      SelOrigine.sql.clear;
      textsql:='Select ECR1_2."CPTG",ECR1_2."CPTT", ECR1_2."LIBEL",'+
             'ECR1_2."DEBIT",ECR1_2."CREDIT",ECR1_2."ORDRE",'+
             'ECR1_2."DATE",ECR1_2."CDJ"  ';
      SelOrigine.sql.Add(textsql);
      textsql:='From "'+Ndf+'"  As ECR1_2  '+
             'order by ECR1_2."CDJ", ECR1_2."ORDRE",ECR1_2."DATE"  ';
      SelOrigine.sql.Add(textsql);
      SourceSelOrigine.DataSet:=SelOrigine;
    end;
  end
end;

function TForm344.RaisoJournaux(codeJ:string):boolean;
begin
  try
    Special.Journaux.insert;
    Special.JournauxCode.Value:=codeJ;
    Special.JournauxIntitule.Value:='';
    Special.JournauxTyp.Value:=2;
    Special.Journaux.post;
    result:=true;
  except
    result:=false;
    Special.Journaux.cancel;
  end;
end;

function TForm344.RaisoJournal(codeJ,Reference:string;dt:TDateTime):string;
var Year, Month, Day: Word;
begin
  Special.Journal.insert;
  DecodeDate(dt,Year, Month, Day);
  Special.JournalJour.Value:=Day;
  Special.JournalCodeJrnx.Value:=SelOrigineCDJ.Value;
  Special.JournalPeriode.Value:=inttostr(Year)+'/'+FormatFloat('00',Month);
  Special.JournalCode.Value:=Reference;
  Special.Journal.post;
  Result:=Special.JournalCode.Value;
end;

function TForm344.RaisoElement(Journal:string;Libelle,CPTG,CPTT:string;
                          DEBIT,CREDIT:Int64):longint;
begin
  PStockee.RIncreEltJrn.Open;
  PStockee.RIncreEltJrn.Requery;

  Special.ToutEltJrn.insert;
  Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value +1;
  Special.ToutEltJrnJournal.Value:=Journal;
  Special.ToutEltJrnLibelle.Value:=Libelle;
  Special.ToutEltJrnCompte.Value:=CPTG;
  if SelOrigineDEBIT.Value>0 then
  begin
    Special.ToutEltJrnMontant.Value:=DEBIT;
    Special.ToutEltJrnDebit.Value:='D';
  end
  else
  begin
    Special.ToutEltJrnMontant.Value:=CREDIT;
    Special.ToutEltJrnDebit.Value:='C';
  end;
  Special.ToutEltJrn.post;
  Result:=Special.ToutEltJrnNumero.Value;
end;


procedure TForm344.ChercherRef(LIBEL:string;var Nature,NumCHQ:string;rec:boolean);
var st:string;
   i:integer;
   num:real;
   hita:boolean;
begin
  hita:=false;
  st:='';
  for i:=1 to length(LIBEL) do
  begin
    if (copy(LIBEL,i,1)=' ')or
       (copy(LIBEL,i,1)='-')or
       (copy(LIBEL,i,1)='.') then
    begin
      if (uppercase(st)='CHQ')     or
         (uppercase(st)='OV')      or
         (uppercase(st)='OD')      or
         (uppercase(st)='INTERET') or
         (uppercase(st)='DAT')     or
         (uppercase(st)='AC')      or
         (uppercase(st)='AD')      or
         (uppercase(st)='CCP')     then
      begin
        hita:=true;
        break;
      end;
      st:='';
    end
    else st:=st+copy(LIBEL,i,1);
  end;
  if hita then
  begin
    Nature:=st;
    while ((copy(LIBEL,i,1)=' ')or
       (copy(LIBEL,i,1)='-')or
       (copy(LIBEL,i,1)='.'))and(i<length(LIBEL)) do i:=i+1;
    st:='';
    while (copy(LIBEL,i,1)<>' ')and
       (copy(LIBEL,i,1)<>'-')and
       (copy(LIBEL,i,1)<>'.')and(i<=length(LIBEL)) do
    begin
      st:=st+copy(LIBEL,i,1);
      i:=i+1;
    end;
    try
      num:=strtoint(st);
      st:=formatfloat('00000000',num);
    except
    end;
    if rec then NumCHQ:=Nature+'-'+uppercase(st)+'-'+'R'
    else NumCHQ:=Nature+'-'+uppercase(st)+'-'+'D';
  end
  else
  begin
    Nature:='';
    NumCHQ:=libel;
  end;
end;

procedure TForm344.SpeedButton2Click(Sender: TObject);
var dt:TDateTime;
    ordretal:longint;
    Journal,CodeJTal:String;
    Nature,NumCHQ:string;
begin
  Special.Journaux.open;
  Special.Journal.open;
  SelOrigine.first;
  CodeJTal:=SelOrigineCDJ.Value;
  dt:=SelOrigineDate.Value;
  ordretal:=round(SelOrigineOrdre.Value);
  RaisoJournaux(CodeJTal);
  Journal:=RaisoJournal(CodeJTal,SelOrigineCPTT.Value,dt);
  while not SelOrigine.eof do
  begin
    RaisoElement(Journal,SelOrigineLIBEL.Value,SelOrigineCPTG.Value,
           SelOrigineReference.Value,
           SelOrigineDEBIT.Value,SelOrigineCREDIT.Value);
    if ('51'<=SelOrigineCPTG.Value)and(SelOrigineCPTG.Value<'52') then
    begin
      if SelOrigineDEBIT.Value>0 then
        ChercherRef(SelOrigineLIBEL.Value,Nature,NumCHQ,true)
      else
        ChercherRef(SelOrigineLIBEL.Value,Nature,NumCHQ,false);
   end;
    SelOrigine.next;
    if CodeJTal<>SelOrigineCDJ.Value then
    begin
      CodeJTal:=SelOrigineCDJ.Value;
      RaisoJournaux(CodeJTal);
    end;
    dt:=SelOrigineDate.Value;
    if ordretal<>round(SelOrigineOrdre.Value) then
    begin
      ordretal:=round(SelOrigineOrdre.Value);
      Journal:=RaisoJournal(CodeJTal,SelOrigineCPTT.Value,dt);
    end;
  end;
end;

procedure TForm344.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer ?',
                 mtConfirmation,mbYesNoCancel,0)=mryes then
  begin
    Special.Journaux.open;
    Special.Journaux.first;
    while not Special.Journaux.eof do Special.Journaux.delete;
    Special.Journal.open;
    Special.Journal.first;
    while not Special.Journal.eof do Special.Journal.delete;
    Special.ToutEltJrn.open;
    Special.ToutEltJrn.first;
    while not Special.ToutEltJrn.eof do Special.ToutEltJrn.delete;
  end;
end;

procedure TForm344.SpeedButton4Click(Sender: TObject);
var chemin,ndf:string;
begin
  with OpenDialog1 do
  begin
    if execute then
    begin;
      Entete.close;
      chemin:=ExtractFilePath(FileName);
      Ndf:=ExtractFileName(FileName);
      Entete.DataBaseName:=chemin;
      Entete.TableName:=Ndf;
      Entete.open;
      SourceSelOrigine.DataSet:=Entete;
    End;
  end;
end;


procedure TForm344.SpeedButton5Click(Sender: TObject);
begin
  Special.Journaux.open;
  SourceDestination.dataset:=Special.Journaux;
end;

procedure TForm344.SpeedButton6Click(Sender: TObject);
begin
  SourceDestination.dataset:=Special.Journal;
end;

procedure TForm344.SpeedButton7Click(Sender: TObject);
begin
  SourceDestination.dataset:=Special.ToutEltJrn;
end;

end.
