unit Mait2Det;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids,UObjet;

type
  TFMait2Det = class(TForm)
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    SpeedButton5: TSpeedButton;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    Function Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,
                    Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                    EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;
  end;

var
  FMait2Det: TFMait2Det;

Function AsehoyMaitre2Detail(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                   EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;export;

implementation

uses  SaisiDonnee, ListDonnee, UMoteur, ListDonnee2, SaisiDonnee2,
  URecherche1;

{$R *.DFM}

Function AsehoyMaitre2Detail(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                   EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;export;
begin
  try
    CreerDObjet;
    CreerMoteur;
    FMait2Det:=TFMait2Det.Create(Application);
    Result:=FMait2Det.Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2,
                   EntMaitre1,EntMaitre2,EntDetail);
    if result=mrYes then beep;
  finally
    FMait2Det.Free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;

function TFMait2Det.Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,
                    Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                    EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;
begin
  Entree:=entDetail;
  EntreeMaitre1:=entMaitre1;
  EntreeMaitre2:=entMaitre2;
  Moteur.IsList:=False;
  Moteur.InitMaitre2Detail(odbc,chemin, ndf_Maitre1, chp_Maitre1,ndf_Maitre2, chp_Maitre2,
                          Chp_Detail1,Ndf_Detail,Chp_Detail2);
  Result:=showmodal;
end;

procedure TFMait2Det.SpeedButton4Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

procedure TFMait2Det.SpeedButton5Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.QListDonnee,Entree);
end;

procedure TFMait2Det.BitBtn2Click(Sender: TObject);
begin
  Moteur.choisir;
  Close;
end;

procedure TFMait2Det.SpeedButton1Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.Maitre2,EntreeMaitre2);
end;

procedure TFMait2Det.SpeedButton3Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.Maitre2,EntreeMaitre2);
end;

procedure TFMait2Det.SpeedButton7Click(Sender: TObject);
//var i:integer;
begin
  //for i:=1 to 2 do showMessage (EntreeMaitre1[i].ndf);
  SaisieDonnee2(0,DObjet.Maitre1,EntreeMaitre1);
end;

procedure TFMait2Det.SpeedButton9Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.Maitre1,EntreeMaitre1);
end;

procedure TFMait2Det.SpeedButton8Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer le '+DObjet.Maitre1.Fields[1].AsString,
                mtconfirmation,[mbYes,mbNo],0)=mrYes then
    DObjet.Maitre1.Delete;
end;

procedure TFMait2Det.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer le '+DObjet.Maitre2.Fields[1].AsString,
                mtconfirmation,[mbYes,mbNo],0)=mrYes then
    DObjet.Maitre2.Delete;
end;

procedure TFMait2Det.SpeedButton6Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer le '+DObjet.QListDonnee.Fields[1].AsString,
                mtconfirmation,[mbYes,mbNo],0)=mrYes then
    DObjet.QListDonnee.Delete;
end;

procedure TFMait2Det.SpeedButton10Click(Sender: TObject);
begin
  AsehoyRecherche1(DObjet.Maitre1,EntreeMaitre1,1);
end;

end.
