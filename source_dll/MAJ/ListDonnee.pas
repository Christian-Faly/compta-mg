unit ListDonnee;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, ExtCtrls, Grids, DBGrids;

type
  TFListDonnee = class(TForm)
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
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    Function Asehoy(odbc,chemin,ndf:string):integer;
  end;

var
  FListDonnee: TFListDonnee;

Function AsehoyListDonnee(odbc,chemin,ndf:string;var retourner:string):integer;export;
procedure AsehoySaisieDonnee(odbc,chemin,ndf:string);export;

implementation

uses UObjet, SaisiDonnee, UMoteur;

{$R *.DFM}

Function AsehoyListDonnee(odbc,chemin,ndf:string;var retourner:string):integer;
begin
  try
    CreerDObjet;
    CreerMoteur;
    FListDonnee:=TFListDonnee.Create(Application);
    Result:=FListDonnee.Asehoy(odbc,chemin,ndf);
    if result=mrYes then beep;
  finally
    FListDonnee.Free;
    VonoyMoteur;
    VonoyDObjet;
  end;
end;

procedure AsehoySaisieDonnee(odbc,chemin,ndf:string);
begin
    CreerDObjet;
    CreerMoteur;
  try
    DObjet.ChangeConnection(odbc,chemin);
    DObjet.QListDonnee.Close;
    DObjet.QListDonnee.SQL.Clear;
    DObjet.QListDonnee.SQL.Add('select * from '+ ndf+'');
    DObjet.QListDonnee.open;
  except
    On EDataBaseError do;
  end;
  try
    FSaisieDonnee:=TFSaisieDonnee.create(Application);
    FSaisieDonnee.asehoy(0,false);
    //DObjet.QListDonnee.refresh;
  finally
    FSaisieDonnee.free;
    VonoyMoteur;
    VonoyDObjet;
  end;
end;

Function TFListDonnee.Asehoy(odbc,chemin,ndf:string):integer;
begin
  Moteur.IsList:=False;
  try
    DObjet.ChangeConnection(odbc,chemin);
    DObjet.QListDonnee.Close;
    DObjet.QListDonnee.SQL.Clear;
    DObjet.QListDonnee.SQL.Add('select * from '+ ndf+'');
    DObjet.QListDonnee.open;
  except
    On EDataBaseError do;
  end;
  Caption:='Fichier :'+chemin+'\'+ndf;
  Result:=showmodal;
end;

procedure TFListDonnee.SpeedButton1Click(Sender: TObject);
begin
  try
    FSaisieDonnee:=TFSaisieDonnee.create(Application);
    FSaisieDonnee.asehoy(0,false);
  finally
    FSaisieDonnee.free;
  end;
  //DObjet.QListDonnee.refresh;
end;

procedure TFListDonnee.SpeedButton5Click(Sender: TObject);
begin
try
    FSaisieDonnee:=TFSaisieDonnee.create(Application);
    FSaisieDonnee.asehoy(1,false);
  finally
    FSaisieDonnee.free;
  end;
end;

procedure TFListDonnee.SpeedButton6Click(Sender: TObject);
begin
  if messagedlg('Voulez vous supprimer?',mtconfirmation,[mbyes,mbno],0)=mryes then
    DObjet.QListDonnee.delete;
end;

procedure TFListDonnee.BitBtn1Click(Sender: TObject);
begin
  Panel5.Visible:=not Panel5.Visible;

end;

procedure TFListDonnee.BitBtn2Click(Sender: TObject);
begin
  Moteur.choisir;
  Close;
end;

procedure TFListDonnee.BitBtn3Click(Sender: TObject);
begin
  DObjet.TTempon.open;
  DObjet.TTempon.first;
  DObjet.TTempon.edit;
  DObjet.TTemponString1.Value:='';
  DObjet.TTemponString2.Value:='';
  if DObjet.QListDonnee.fields.Count >2 then
    DObjet.TTemponString3.Value:='';
  if DObjet.QListDonnee.fields.Count >3 then
    DObjet.TTemponString4.Value:='';
  DObjet.TTempon.post;
  //DObjet.TTempon.refresh;
  close;
end;

end.
