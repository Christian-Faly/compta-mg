unit Recup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, StdCtrls, Buttons, Grids, DBGrids;

type
  TFSauvegarde = class(TForm)
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Edit4: TEdit;
    Destination: TTable;
    BatchMove2: TBatchMove;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    OJournal: TQuery;
    OElement: TQuery;
    Label4: TLabel;
    Fermer: TBitBtn;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Plancpt: TQuery;
    NumAdres: TQuery;
    NumDiver: TQuery;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure Asehoy(chemin:string);
  end;

var
  FSauvegarde: TFSauvegarde;

implementation

uses DaCommun, Daspecia;

{$R *.DFM}

procedure TFSauvegarde.Asehoy(chemin:string);
begin
  ComboBox2.Clear;
  Special.Journaux.Open;
  Special.Journaux.first;
  while not Special.Journaux.EOF do
  begin
    ComboBox2.Items.Add(Special.JournauxCode.Value);
    Special.Journaux.Next;
  end;
  ComboBox1.ItemIndex:=0;
  Edit4.text:=Chemin;
  Edit2.text:='';
  ShowModal;
end;

procedure TFSauvegarde.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Ecriture:extraire '+ ComboBox2.Text+' '+ComboBox1.text+' ' + Edit2.text+' '+
     'êtes-vous sûre? Inserez votre disquette',MtConfirmation,[mbYes,mbNo],0)=mryes then
  begin
    {Entete écriture}
    OJournal.Close;
    OJournal.Params[0].AsString:=ComboBox2.text;
    OJournal.Params[1].AsString:=Edit2.text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1);
    OJournal.DataBaseName:=edit4.text;
    BatchMove2.Source:=OJournal;
    Destination.TableName:='Journal';
    BatchMove2.Destination:=Destination;
    BatchMove2.execute;
    {Ligne d'écriture}
    OElement.Close;
    OElement.Params[0].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1);
    OElement.Params[1].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1)+'Z';
    OElement.DataBaseName:=edit4.text;
    BatchMove2.Source:=OElement;
    Destination.TableName:='EltJrn';
    BatchMove2.Destination:=Destination;
    BatchMove2.execute;

    {Plan comptable}
    Plancpt.Close;
    Plancpt.Params[0].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1);
    Plancpt.Params[1].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1)+'Z';
    Plancpt.DataBaseName:=edit4.text;
    Plancpt.open;
    BatchMove2.Source:=Plancpt;
    Destination.TableName:='NumCpt';
    BatchMove2.Destination:=Destination;
    BatchMove2.execute;

    {INFORMATION DIVERS}
    Numdiver.Close;
    Numdiver.Params[0].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1);
    Numdiver.Params[1].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1)+'Z';
    Numdiver.DataBaseName:=edit4.text;
    Numdiver.open;
    BatchMove2.Source:=Numdiver;
    Destination.TableName:='Numdiver';
    BatchMove2.Destination:=Destination;
    BatchMove2.execute;

    {Adresse PCG}
    NumAdres.Close;
    NumAdres.Params[0].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1);
    NumAdres.Params[1].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1)+'Z';
    NumAdres.DataBaseName:=edit4.text;
    NumAdres.open;
    BatchMove2.Source:=NumAdres;
    Destination.TableName:='NumAdres';
    BatchMove2.Destination:=Destination;
    BatchMove2.execute;
  end;
  OJournal.open;
  OElement.Open;
  DataSource1.DataSet := OElement;
  Destination.Close;
  showMessage('Extraction terminée ');
end;

procedure TFSauvegarde.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiment vider le journal '+ComboBox2.text
             +' de la période '+ComboBox1.text+' '+Edit2.text
             +' du dossier '+edit4.text+' de cet ordinateur',mtconfirmation,[mbyes,mbNo],0)=mrYes then
  if MessageDlg('Etes vous sûre de vider le journal '+ComboBox2.text
             +' de la période '+ComboBox1.text+' '+Edit2.text
             +' du dossier '+edit4.text+' de cet ordinateur?????',mtconfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    {Selection et suppression journal}
    OJournal.Close;
    OJournal.Params[0].AsString:=ComboBox2.text;
    OJournal.Params[1].AsString:=Edit2.text+'/'+FormatFloat('00',ComboBox1.ItemIndex+1);
    OJournal.DataBaseName:=edit4.text;
    OJournal.open;
    while not OJournal.EOF do OJournal.delete;
    {Selection et suppression element}
    OElement.Close;
    OElement.Params[0].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1);
    OElement.Params[1].AsString:=ComboBox2.text+FormatFloat('00',ComboBox1.ItemIndex+1)+'Z';
    OElement.DataBaseName:=edit4.text;
    OElement.open;
    while not OElement.EOF do OElement.Delete;
  end;
end;


procedure TFSauvegarde.SpeedButton3Click(Sender: TObject);
begin
  if DataSource1.dataset=OElement then
    DataSource1.dataset:= OJournal
  else
    DataSource1.dataset:=OElement;
end;

end.
