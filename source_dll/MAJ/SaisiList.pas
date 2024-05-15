unit SaisiList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids, UObjet,SaisiDonnee2;

type
  TFSaisiList = class(TForm)
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
    nd:string;
  public
    { Déclarations publiques }
    Function Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,Affiche,
                    ndf_Detail,Chp_Detail1,Chp_Detail2:string;Ent:TEntree):integer;
  end;

var
  FSaisiList: TFSaisiList;

Function AsehoySaisiList(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Affiche,ndf_Detail,Chp_Detail1,Chp_Detail2:string;Ent:TEntree):integer;export;

implementation

uses  SaisiDonnee, ListDonnee, UMoteur, ListDonnee2,
  Mait2Det;

{$R *.DFM}

Function AsehoySaisiList(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Affiche,ndf_Detail,Chp_Detail1,Chp_Detail2:string;Ent:TEntree):integer;export;
begin
  try
    CreerDObjet;
    CreerMoteur;
    FSaisiList:=TFSaisiList.Create(Application);
    Result:=FSaisiList.Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,
                   chp_Maitre2,Affiche,ndf_Detail,Chp_Detail1,Chp_Detail2,Ent);
    if result=mrYes then beep;
  finally
    FMait2Det.Free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;

function TFSaisiList.Asehoy(odbc,Chemin,ndf_Maitre1,chp_Maitre1,ndf_Maitre2,chp_Maitre2,Affiche,
                    ndf_Detail,Chp_Detail1,Chp_Detail2:string;Ent:TEntree):integer;
var i:integer;
  first:boolean;
begin
  Moteur.IsList:=False;
  first:=True;
  Nd:=ndf_Maitre1;
  Entree:=Ent;
  DObjet.ChangeConnection(odbc,chemin);
  DObjet.QListDonnee.Close;
  DObjet.QListDonnee.SQL.Clear;
  DObjet.QListDonnee.SQL.Add('select * from '+ ndf_Maitre1+' ');

  DObjet.TListeDonnee.Close;
  DObjet.TListeDonnee.TableName:=ndf_Maitre1;
  DObjet.TListeDonnee.Open;
  for i:=0 to DObjet.TListeDonnee.Fields.Count-1 do
  begin
    if Entree[i+1].critere <>'' then
    begin
      if first then
      begin
        DObjet.QListDonnee.SQL.Add('where (' +DObjet.TListeDonnee.Fields[i].FieldName +
                                   Entree[i+1].critere + Entree[i+1].Valeur+')');
        first:=false;
      end
      else
        DObjet.QListDonnee.SQL.Add(' And (' +DObjet.TListeDonnee.Fields[i].FieldName +
                                   Entree[i+1].critere + Entree[i+1].Valeur+')');
    end;
  end;

  Moteur.InitSaisiList(odbc,chemin, ndf_Maitre1, chp_Maitre1,ndf_Maitre2, chp_Maitre2,Affiche,
                          Ndf_Detail,Chp_Detail1,Chp_Detail2);
  Result:=showmodal;
end;

procedure TFSaisiList.SpeedButton4Click(Sender: TObject);
begin
  SaisieDonnee2(0,DObjet.QListDonnee,Entree);
end;

procedure TFSaisiList.SpeedButton5Click(Sender: TObject);
begin
  SaisieDonnee2(1,DObjet.QListDonnee,Entree);
end;

procedure TFSaisiList.DBGrid3DblClick(Sender: TObject);
begin
  Moteur.InsererListe;
end;

procedure TFSaisiList.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //showmessage(inttostr(key));
  case key of
    107: //
  end;
end;

end.
