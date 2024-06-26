unit Restorer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Buttons, ExtCtrls, Grids, DBGrids;

type
  TFRestore = class(TForm)
    SpeedButton1: TSpeedButton;
    BatchMove1: TBatchMove;
    SJournal: TTable;
    SElement: TTable;
    DJournal: TTable;
    Edit1: TEdit;
    Label1: TLabel;
    DElement: TTable;
    Label2: TLabel;
    Fermer: TBitBtn;
    OpenDialog1: TOpenDialog;
    DJournalCode: TStringField;
    DJournalPeriode: TStringField;
    DJournalJour: TSmallintField;
    DJournalCodeJrnx: TStringField;
    DJournalTransferer: TBooleanField;
    DJournalTiers: TStringField;
    DJournalDeclarer: TBooleanField;
    DJournalNumCHQ: TStringField;
    DJournalDateEsc: TDateField;
    DJournalDateSaisie: TDateTimeField;
    DJournalA1: TStringField;
    DJournalA2: TStringField;
    DJournalA3: TStringField;
    DJournalA4: TStringField;
    DJournalA5: TStringField;
    DJournalA6: TStringField;
    DElementJournal: TStringField;
    DElementNumero: TAutoIncField;
    DElementDebit: TStringField;
    DElementCompte: TStringField;
    DElementMontant: TCurrencyField;
    DElementIzy: TBooleanField;
    DElementLibelle: TStringField;
    DElementContrepartie: TStringField;
    DElementNbcontre: TSmallintField;
    DElementQte: TFloatField;
    DElementDateFact: TDateField;
    DElementNumFact: TStringField;
    DElementColis: TFloatField;
    DElementTypX: TStringField;
    DElementSigleTaxe: TStringField;
    SElementJournal: TStringField;
    SElementNumero: TAutoIncField;
    SElementDebit: TStringField;
    SElementCompte: TStringField;
    SElementMontant: TCurrencyField;
    SElementIzy: TBooleanField;
    SElementLibelle: TStringField;
    SElementContrepartie: TStringField;
    SElementNbcontre: TSmallintField;
    SElementQte: TFloatField;
    SElementDateFact: TDateField;
    SElementNumFact: TStringField;
    SElementColis: TFloatField;
    SElementTypX: TStringField;
    SElementSigleTaxe: TStringField;
    SJournalCode: TStringField;
    SJournalPeriode: TStringField;
    SJournalJour: TSmallintField;
    SJournalCodeJrnx: TStringField;
    SJournalTransferer: TBooleanField;
    SJournalTiers: TStringField;
    SJournalDeclarer: TBooleanField;
    SJournalNumCHQ: TStringField;
    SJournalDateEsc: TDateField;
    SJournalDateSaisie: TDateTimeField;
    SJournalA1: TStringField;
    SJournalA2: TStringField;
    SJournalA3: TStringField;
    SJournalA4: TStringField;
    SJournalA5: TStringField;
    SJournalA6: TStringField;
    OJournal: TQuery;
    OElement: TQuery;
    SourcePlan: TQuery;
    SourcePlanNumCpt: TStringField;
    SourcePlanIntitule: TStringField;
    SourcePlanDetail: TSmallintField;
    SourcePlanClasse: TSmallintField;
    SourcePlanGClasse: TSmallintField;
    SourcePlanExonere: TBooleanField;
    SourcePlanTotalisateur: TBooleanField;
    SourcePlanIzy: TBooleanField;
    SourcePlanGGroupe: TIntegerField;
    SourcePlanOGroupe: TIntegerField;
    SourcePlanNumCpt_1: TStringField;
    SourcePlanRS: TStringField;
    SourcePlanNom: TStringField;
    SourcePlanCP: TStringField;
    SourcePlanPays: TStringField;
    SourcePlanBP: TStringField;
    SourcePlanTel: TStringField;
    SourcePlanFax: TStringField;
    SourcePlanCptBq: TStringField;
    SourcePlanNII: TStringField;
    SourcePlanDevise: TStringField;
    SourcePlanNumCpt_2: TStringField;
    SourcePlanStatistique: TStringField;
    SourcePlanQuittance: TStringField;
    SourcePlanNIF: TStringField;
    SourcePlanDateQuit: TDateField;
    SourcePlanNatureProd: TStringField;
    SourcePlanCodeProd: TStringField;
    SourcePlanCodeDecl: TStringField;
    SourcePlanAbrev: TStringField;
    SourcePlanUniteProd: TStringField;
    SourcePlanAdresse: TStringField;
    DataSource1: TDataSource;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
    procedure Asehoy(chemin:string);
  end;

var
  FRestore: TFRestore;

implementation

uses DaCommun, Daspecia;

{$R *.DFM}

procedure TFRestore.Asehoy(chemin:string);
begin
  Edit1.text:=Chemin;
  ShowModal;
end;

procedure TFRestore.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
  // Transfert des �critures comptables
  SJournal.Open;
  if SJournal.EOF then
  begin
    showmessage('Donn�es vide');
    exit;
  end;
  SJournal.First;
  i:=strtoint(copy(SJournalPeriode.Value,6,2));
  if MessageDlg('Voulez-vous vraiment vider le journal '+SJournalCodeJrnx.Value
             +' de la p�riode '+special.StMois[i]+' '+copy(SJournalPeriode.Value,1,4)
             +' du dossier '+edit1.text,mtconfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    OJournal.Close;
    OJournal.DataBaseName:=edit1.text;
    OJournal.Params[0].AsString:=SJournalCodeJrnx.Value;
    OJournal.Params[1].AsString:=SJournalPeriode.Value;
    OJournal.open;
    while not OJournal.EOF do OJournal.delete;
    OElement.Close;
    OElement.DataBaseName:=edit1.text;
    OElement.Params[0].AsString:=SJournalCodeJrnx.Value+copy(SJournalPeriode.Value,6,2);
    OElement.Params[1].AsString:=SJournalCodeJrnx.Value+copy(SJournalPeriode.Value,6,2)+'Z';
    OElement.Open;
    while not OElement.EOF do OElement.Delete;
  end;
  DJournal.DataBaseName:=edit1.text;
  DElement.DataBaseName:=edit1.text;
  BatchMove1.Source:=Sjournal;
  BatchMove1.Destination:=DJournal;
  BatchMove1.execute;
  BatchMove1.Source:=SElement;
  BatchMove1.Destination:=DElement;
  BatchMove1.execute;

  SJournal.Close;
  OElement.close;
  showMessage('Restauration termin�e ');
end;



end.
