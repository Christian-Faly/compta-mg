unit MaitrDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids, SaisiDonnee2,UObjet;

type
  TFMaitrDet = class(TForm)
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel5: TPanel;
    Label19: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    SpeedButton5: TSpeedButton;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label4: TLabel;
    sMaitre2: TDataSource;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    Procedure Asehoy(odbc,chemin,ndf_Maitre,chp_Maitre,ndf_Detail,Chp_Detail:string;
                     EntMaitre,EntDetail:TEntree);
  end;

var
  FMaitrDet: TFMaitrDet;

procedure AsehoyMaitreDetail(odbc,chemin,ndf_Maitre,chp_Maitre,ndf_Detail,Chp_Detail:string;
                             EntMaitre,EntDetail:TEntree);export;

implementation

uses  ListDonnee, UMoteur;

{$R *.DFM}

procedure AsehoyMaitreDetail(odbc,chemin,ndf_Maitre,chp_Maitre,ndf_Detail,Chp_Detail:string;
                             EntMaitre,EntDetail:TEntree);
begin
  try
    CreerDObjet;
    CreerMoteur;
    FMaitrDet:=TFMaitrDet.Create(Application);
    FMaitrDet.Asehoy(odbc,chemin,ndf_Maitre,chp_Maitre,ndf_Detail,Chp_Detail,
                     EntMaitre,EntDetail);
  finally
    FMaitrDet.Free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;

procedure TFMaitrDet.Asehoy(odbc,chemin,ndf_Maitre,chp_Maitre,ndf_Detail,Chp_Detail:string;
                            EntMaitre,EntDetail:TEntree);
begin
  Entree:=entDetail;
  EntreeMaitre2:=entMaitre;
  Moteur.IsList:=False;
  Moteur.InitMaitreDetail(odbc,chemin, ndf_Maitre, chp_Maitre,Ndf_Detail,Chp_Detail);
  Showmodal;
end;

procedure TFMaitrDet.SpeedButton1Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.Maitre2,EntreeMaitre2);
end;

procedure TFMaitrDet.SpeedButton6Click(Sender: TObject);
begin
  if messagedlg('Voulez vous supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
    DObjet.QListDonnee.delete;
end;

procedure TFMaitrDet.BitBtn1Click(Sender: TObject);
begin
  Panel5.Visible:=not Panel5.Visible;
end;

procedure TFMaitrDet.BitBtn2Click(Sender: TObject);
begin
  Moteur.choisir;
  Close;
end;

procedure TFMaitrDet.BitBtn3Click(Sender: TObject);
begin
  Moteur.choisir;
  close;
end;

procedure TFMaitrDet.SpeedButton5Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.QListDonnee,Entree);
end;

procedure TFMaitrDet.SpeedButton4Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

procedure TFMaitrDet.SpeedButton3Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.Maitre2,EntreeMaitre2);
end;

procedure TFMaitrDet.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=107 then
    SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

procedure TFMaitrDet.SpeedButton2Click(Sender: TObject);
begin
  DObjet.Maitre2.Delete;
end;

procedure TFMaitrDet.DBGrid2CellClick(Column: TColumn);
begin
  Label4.Caption :=Column.FieldName;
  //Edit1.Text:=DObjet.Maitre2.FieldValues[Column.FieldName];
end;

procedure TFMaitrDet.SpeedButton7Click(Sender: TObject);
begin
  DObjet.Maitre2.Locate(Label4.Caption,Edit1.Text,[loPartialKey]);
end;

end.
