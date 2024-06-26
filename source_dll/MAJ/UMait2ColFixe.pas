unit UMait2ColFixe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids,UObjet;

type
  TFMait2ColFixe = class(TForm)
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    BitBtn2: TBitBtn;
    StringGrid1: TStringGrid;
    SpeedButton10: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Déclarations privées }
    chem:string;
  public
    { Déclarations publiques }
    Function Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,
                    Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                    EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;
  end;

var
  FMait2ColFixe: TFMait2ColFixe;

Function AsehoyMaitre2Detail(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                   EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;export;

implementation

uses  SaisiDonnee, ListDonnee, UMoteur, ListDonnee2, SaisiDonnee2,
  URecherche1, Mait2Det;

{$R *.DFM}

Function AsehoyMaitre2Detail(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                   EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;export;
begin
  try
    CreerDObjet;
    CreerMoteur;
    FMait2ColFixe:=TFMait2ColFixe.Create(Application);
    Result:=FMait2ColFixe.Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Chp_Detail1,ndf_Detail,Chp_Detail2,
                   EntMaitre1,EntMaitre2,EntDetail);
    if result=mrYes then beep;
  finally
    FMait2ColFixe.Free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;

function TFMait2ColFixe.Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,
                    Chp_Detail1,ndf_Detail,Chp_Detail2:string;
                    EntMaitre1,EntMaitre2,EntDetail:TEntree):integer;
var i:integer;
begin
  Entree:=entDetail;
  EntreeMaitre1:=entMaitre1;
  EntreeMaitre2:=entMaitre2;
  Moteur.IsList:=False;
  Moteur.InitMaitre2Detail(odbc,chemin, ndf_Maitre1, chp_Maitre1,ndf_Maitre2, chp_Maitre2,
                          Chp_Detail1,Ndf_Detail,Chp_Detail2);
  i:=1;
  while not dObjet.Maitre1.Eof do
  begin
    StringGrid1.Cells[1,i]:=IntToStr(dObjet.Maitre1.Fields[1].Value);
    i:=i+1;
    while not dObjet.Maitre2.Eof do
    begin
      StringGrid1.Cells[0,i]:=IntToStr(dObjet.Maitre2.Fields[0].Value);
      StringGrid1.Cells[1,i]:=IntToStr(dObjet.Maitre2.Fields[1].Value);
      i:=i+1;
      dObjet.Maitre2.Next;
    end;
    dObjet.Maitre1.Next;
  end;
  Result:=showmodal;
end;

procedure TFMait2ColFixe.SpeedButton4Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

procedure TFMait2ColFixe.SpeedButton5Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.QListDonnee,Entree);
end;

procedure TFMait2ColFixe.BitBtn2Click(Sender: TObject);
begin
  Moteur.choisir;
  Close;
end;

procedure TFMait2ColFixe.SpeedButton6Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer le '+DObjet.QListDonnee.Fields[1].AsString,
                mtconfirmation,[mbYes,mbNo],0)=mrYes then
    DObjet.QListDonnee.Delete;
end;

procedure TFMait2ColFixe.SpeedButton10Click(Sender: TObject);
begin
  AsehoyRecherche1(DObjet.Maitre1,EntreeMaitre1,1);
end;

end.

