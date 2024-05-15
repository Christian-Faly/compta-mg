unit ListDonnee2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids,SaisiDonnee2,UObjet;

type
  TFListDonnee2 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel5: TPanel;
    Label19: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
    Nd:string;
  public
    { Déclarations publiques }
    Function Asehoy(odbc,Chemin,Ndf:string;Ent:TEntree):integer;
  end;

var
  FListDonnee2: TFListDonnee2;

Function AsehoyListDonnee2(odbc,Chemin,Ndf:string;Ent:TEntree):integer;export;

implementation

uses   UMoteur;

{$R *.DFM}

function AsehoyListDonnee2(odbc,Chemin,ndf:string;Ent:TEntree):integer;
begin
  try
    CreerDObjet;
    CreerMoteur;
    FListDonnee2:=TFListDonnee2.Create(Application);
    Result:=FListDonnee2.Asehoy(odbc,Chemin,Ndf,Ent);
   if result=mrYes then beep;
  finally
    FListDonnee2.Free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;


Function TFListDonnee2.Asehoy(odbc,Chemin,Ndf:string;Ent:TEntree):integer;
var i:integer;
  st:string;
begin
  Moteur.IsList:=False;
  Nd:=Ndf;
  Entree:=Ent;
  DObjet.ChangeConnection(odbc,chemin);
  Moteur.InitListDonnee(Dobjet.QListDonnee,ndf,'','',0,Entree);
  Moteur.OuvrirQuery(Dobjet.QListDonnee,Entree);
  Caption:='Fichier :'+ndf;
  Result:=showmodal;
end;

procedure TFListDonnee2.SpeedButton1Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

procedure TFListDonnee2.SpeedButton5Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.QListDonnee,Entree);
end;

procedure TFListDonnee2.SpeedButton6Click(Sender: TObject);
begin
  if messagedlg('Voulez vous supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
    DObjet.QListDonnee.delete;
end;

procedure TFListDonnee2.BitBtn1Click(Sender: TObject);
begin
  Panel5.Visible:=not Panel5.Visible;

end;

procedure TFListDonnee2.BitBtn2Click(Sender: TObject);
begin
  Moteur.choisir;
  Close;
end;

procedure TFListDonnee2.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    107: SaisieDonnee2(0,DObjet.QListDonnee,Entree);
  end;
end;

procedure TFListDonnee2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=107 then
    SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

end.
