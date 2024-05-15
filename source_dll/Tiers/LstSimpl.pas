unit LstSimpl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Grids, DBGrids, Db, StdCtrls;

type
  TFLstSimpl = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Source: TDataSource;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    Label19: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    ndf2,chem2:string;
    Procedure Asehoy(ndf:string;choisir:boolean);
  end;

var
  FLstSimpl: TFLstSimpl;

procedure AsehoyLstSimplTie(ndf:string;choisir:boolean);export;

implementation

uses DaTiers, Saisimpl, PlafQte;


{$R *.DFM}

procedure AsehoyLstSimplTie(ndf:string;choisir:boolean);
begin
  try
    CreerDataTiers;
    FLstSimpl:=TFLstSimpl.Create(Application);
    FLstSimpl.Asehoy(ndf,choisir);
  finally
    FLstSimpl.free;
    VonoyDataTiers;
  end;
end;


procedure TFLstSimpl.Asehoy(ndf:string;choisir:boolean);
begin
  DataTiers.Tempon.open;
  DataTiers.Tempon.first;
  DataTiers.Tempon.edit;
  DataTiers.TemponString1.Value:='';
  DataTiers.TemponString2.Value:='';
  DataTiers.TemponString3.Value:='';
  DataTiers.Tempon.post;
  BitBtn2.Visible:=choisir;
  ndf2:=ndf;
  if UpperCase(ndf)=UpperCase('Fam_Cli.db')  then Caption:='Famille clients';
  if UpperCase(ndf)=UpperCase('Fam_Fou.db')  then Caption:='Famille fournisseurs';
  if UpperCase(ndf)=UpperCase('Statut.db')   then
  begin
    Caption:='Liste des statuts';
    DataTiers.Saisimp.DataBaseName:='c:\Ylaf\Data\Societe';
  end;
  if UpperCase(ndf)=UpperCase('Lieu.db')   then
  begin
    Caption:='Liste des Lieux';
    DataTiers.Saisimp.DataBaseName:='c:\Ylaf\Data\Societe';
  end;
  if (UpperCase(ndf)=UpperCase('Fam_Cli.db'))or
     (UpperCase(ndf)=UpperCase('Fam_Fou.db'))or
     (UpperCase(ndf)=UpperCase('Lieu.db'))or
     (UpperCase(ndf)=UpperCase('Statut.db'))then
  begin
    Source.DataSet:=DataTiers.Saisimp;
    DataTiers.Saisimp.TableName:=ndf;
    DataTiers.Saisimp.Close;
    DataTiers.Saisimp.Open;
  end;
  ShowModal;
end;

procedure TFLstSimpl.SpeedButton1Click(Sender: TObject);
begin
  if (UpperCase(ndf2)=UpperCase('Fam_Cli.db'))or
     (UpperCase(ndf2)=UpperCase('Fam_Fou.db'))or
     (UpperCase(ndf2)=UpperCase('Statut.db'))  then
  try
    Application.CreateForm(TFSaisimpl, FSaisimpl);
    FSaisimpl.Asehoy(True);
  finally
   FSaisimpl.Free;
  end;
end;

procedure TFLstSimpl.SpeedButton2Click(Sender: TObject);
begin
  if (UpperCase(ndf2)=UpperCase('Fam_Cli.db'))or
     (UpperCase(ndf2)=UpperCase('Fam_Fou.db'))or
     (UpperCase(ndf2)=UpperCase('Statut.db'))then
  try
    Application.CreateForm(TFSaisimpl, FSaisimpl);
    FSaisimpl.Asehoy(false);
  finally
   FSaisimpl.Free;
  end;

end;

procedure TFLstSimpl.SpeedButton3Click(Sender: TObject);
begin
  If messagedlg('Voulez vous supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
    DataTiers.Saisimp.Delete;
end;


procedure TFLstSimpl.BitBtn2Click(Sender: TObject);
begin
  DataTiers.Tempon.first;
  DataTiers.Tempon.edit;
  DataTiers.TemponString1.Value:=DataTiers.SaisimpCode.Value;
  DataTiers.TemponString2.Value:=DataTiers.SaisimpLibelle.Value;
  DataTiers.Tempon.post;
  Close;
end;


procedure TFLstSimpl.BitBtn1Click(Sender: TObject);
begin
  Panel5.Visible:=not Panel5.Visible;
end;

end.
