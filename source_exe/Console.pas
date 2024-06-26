unit Console;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Grids, DBGrids, ExtCtrls, Db, StdCtrls, DBCtrls, DBTables,
  quickrpt, Qrctrls, ComCtrls;

type
  TFConsolidation = class(TForm)
    SourceSociete1: TDataSource;
    SourceSociete2: TDataSource;
    SourceConsolide: TDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SourceSociete1DataChange(Sender: TObject; Field: TField);
  private
    { D�clarations priv�es }
    Nochange:boolean;
  public
    { D�clarations publiques }
    procedure Asehoy;
  end;

var
  FConsolidation: TFConsolidation;

implementation

uses DaCommun, Daspecia, EtatConsole, informat, UPStocke, TypeElmt;

{$R *.DFM}

procedure TFConsolidation.Asehoy;
begin
  Nochange:=false;
  Autoscroll:=false;
  Commun.SelSociete1.sql.clear;
  Commun.SelSociete1.sql.Add('select * from societe');
  Commun.SelSociete1.sql.Add('where siege=:a');
  Commun.SelSociete1.close;
  Commun.SelSociete1.parameters[0].value:=true;
  Commun.SelSociete1.open;
  Commun.SelSociete2.open;
  Commun.SelSociete2.Requery;
  Commun.Consolide.Open;
  SourceConsolide.DataSet:= Commun.Consolide;
  SourceSociete1.DataSet := Commun.SelSociete1;
  SourceSociete2.DataSet := Commun.SelSociete2;
  ShowModal;
end;

procedure TFConsolidation.SpeedButton1Click(Sender: TObject);
begin
  Nochange:=true;
  try
    Commun.Consolide.insert;
    Commun.ConsolideSiege.Value:=Commun.SelSociete1Code.Value;
    Commun.ConsolideAgence.Value:=Commun.SelSociete2Code.Value;
    Commun.Consolide.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Ce code existe d�j�','Erreur',mb_ok);
      Commun.Consolide.Cancel;
    end;
  end;
  Nochange:=false;
  Commun.Consolide.requery;
  Commun.SelSociete2.requery;
end;

procedure TFConsolidation.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement enlever',mtconfirmation,
       [mbYes,mbNo],0)=mrNo then exit;
  Commun.societe.open;
  Commun.societe.first;
  Commun.societe.Locate('Code',EnleveBlancDroite(Commun.ConsolideAgence.Value),[loCaseInsensitive,loPartialKey]);
  if EnleveBlancDroite(Commun.ConsolideAgence.Value)=EnleveBlancDroite(Commun.societeCode.Value) then
  begin
    Commun.SuppConsolide.Parameters[0].Value:=Commun.SocieteCode.Value;
    Commun.SuppConsolide.ExecSQL;
    Commun.Consolide.requery;
    Commun.SelSociete2.requery;
  end
  else
    showMessage('Soci�t� '+Commun.ConsolideAgence.Value+' non trouv�e');
end;

procedure TFConsolidation.SourceSociete1DataChange(Sender: TObject;
  Field: TField);
var Year,Month,Day:word;
begin
  if NoChange then exit;
  edit1.text:=Commun.SelSociete1Code.Value;
  DecodeDate(Commun.SelSociete1ExerDeb.Value,Year,Month,Day);
  DecodeDate(Commun.SelSociete1ExerFin.Value,Year,Month,Day);
end;

end.
