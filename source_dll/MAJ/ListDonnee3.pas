unit ListDonnee3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids,SaisiDonnee3,UObjet;

type
  TFListDonnee3 = class(TForm)
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
  private
    { Déclarations privées }
    Nd:string;
  public
    { Déclarations publiques }
    Function Asehoy(odbc,Chemin,Ndf:string;Ent,pg:TEntree):integer;
  end;

var
  FListDonnee3: TFListDonnee3;

Function AsehoyListDonnee3(odbc,Chemin,Ndf:string;Ent,pg:TEntree):integer;export;

implementation

uses   UMoteur;

{$R *.DFM}

function AsehoyListDonnee3(odbc,Chemin,ndf:string;Ent,pg:TEntree):integer;
begin
  try
    CreerDObjet;
    CreerMoteur;
    FListDonnee3:=TFListDonnee3.Create(Application);
    Result:=FListDonnee3.Asehoy(odbc,Chemin,Ndf,Ent,pg);
    if result=mrYes then beep;
  finally
    FListDonnee3.Free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;

function TFListDonnee3.Asehoy(odbc,Chemin,Ndf:string;Ent,pg:TEntree):integer;
begin
  Moteur.IsList:=False;
  Nd:=Ndf;
  Entree:=Ent;
  Pejy:=Pg;
  DObjet.ChangeConnection(odbc,chemin);
  Moteur.InitListDonnee(Dobjet.QListDonnee,ndf,'','',0,Entree);
  Caption:='Fichier :'+ndf;
  Result:=showmodal;
end;

procedure TFListDonnee3.SpeedButton1Click(Sender: TObject);
begin
  AsehoySaisieDonnee3(0);
end;

procedure TFListDonnee3.SpeedButton5Click(Sender: TObject);
begin
  AsehoySaisieDonnee3(1);
end;

procedure TFListDonnee3.SpeedButton6Click(Sender: TObject);
begin
  if messagedlg('Voulez vous supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
    DObjet.QListDonnee.delete;
end;

procedure TFListDonnee3.BitBtn1Click(Sender: TObject);
begin
  Panel5.Visible:=not Panel5.Visible;

end;

procedure TFListDonnee3.BitBtn2Click(Sender: TObject);
begin
  Moteur.choisir;
  Close;
end;

procedure TFListDonnee3.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    107: AsehoySaisieDonnee3(0);
  end;
end;

end.
