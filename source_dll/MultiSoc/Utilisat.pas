unit Utilisat;

interface

uses
  Windows, Messages,SysUtils,  Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Buttons, DBTables, Mask,
  ExtCtrls;

type
  TFUtilisat = class(TForm)
    SourceUtilisateur: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    MemoNotes: TDBMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure SourceUtilisateurDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    NoChange:boolean;
    mody:shortint;
    procedure Raiso(ajout:boolean);
  public
    { Déclarations publiques }
    procedure Asehoy(mode:shortint);
 end;

var
  FUtilisat: TFUtilisat;

procedure AsehoyUtilisat(mode:shortint);export;
procedure CreerUtilisat;export;
procedure VonoyUtilisat;

implementation

uses UObjet;


{$R *.DFM}

procedure CreerUtilisat;
begin
  Application.CreateForm(TFUtilisat,FUtilisat);
end;

procedure VonoyUtilisat;
begin
  FUtilisat.free;
end;

procedure AsehoyUtilisat(mode:shortint);
begin
  try
    FUtilisat.Asehoy(mode);
  except
  end;
end;

procedure TFUtilisat.Asehoy(mode:shortint);
begin
  mody:=mode;
  NoChange:=false;
  DObjet.Utilisat.Open;
  SourceUtilisateur.DataSet:=DObjet.Utilisat;
  case mode of
  0:begin
      edit2.text:='';
      edit3.text:='';
      edit1.text:='';
    end;
  end;
  showmodal;
end;

procedure TFUtilisat.Raiso(ajout:boolean);
begin
  Nochange:=true;
  if ajout then DObjet.Utilisat.insert
  else DObjet.Utilisat.edit;
  try
    DObjet.Utilisatcode.Value:=edit1.text;
    DObjet.UtilisatNom.Value:=edit2.text;
    DObjet.UtilisatFonction.Value:=edit3.text;
    DObjet.Utilisat.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Cette code existe déjà','Erreur',mb_ok);
      DObjet.Utilisat.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFUtilisat.SourceUtilisateurDataChange(Sender: TObject;
  Field: TField);
begin
  if NoChange then exit;
  edit1.text:=DObjet.Utilisatcode.Value;
  edit2.text:=DObjet.UtilisatNom.Value;
  edit3.text:=DObjet.UtilisatFonction.Value;
end;

procedure TFUtilisat.SpeedButton9Click(Sender: TObject);
begin
  if DObjet.Utilisat.recordCount>0 then DObjet.Utilisat.delete;
end;

procedure TFUtilisat.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFUtilisat.SpeedButton2Click(Sender: TObject);
begin
  case mody of
  0:Raiso(true);
  1:Raiso(false);
  end;
  close;
end;



end.
