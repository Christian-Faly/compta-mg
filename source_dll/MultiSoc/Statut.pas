unit STATUT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ShareMem,StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Buttons, Db, DBTables;

type
  TFStatut = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SourceStatut: TDataSource;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure SourceStatutDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Déclarations privées }
    NoChange:boolean;
    mody:shortint;
  public
    { Déclarations publiques }
    procedure Asehoy(mode:shortint);
    procedure Raiso(ajout:boolean);
    procedure Aficheo;
  end;

var
  FStatut: TFStatut;

procedure AsehoyStatut(mode:shortint);export;
procedure AmboaryStatut;
procedure VonoyStatut;

implementation

uses UObjet;


{$R *.DFM}

procedure VonoyStatut;
begin
  FStatut.free;
end;

procedure AmboaryStatut;
begin
  Application.CreateForm(TFStatut, FStatut);
end;

procedure AsehoyStatut(mode:shortint);
begin
  try
    FStatut.Asehoy(mode);
  except
  end;
end;

procedure TFStatut.Asehoy(mode:shortint);
begin
  mody:=mode;
  SourceStatut.DataSet:=DObjet.Statut;
  case mode of
  0:begin
      edit1.text:='';
      edit2.text:='';
    end;
  1:begin
    end;
  end;
  NoChange:=false;
  showmodal;
end;

procedure TFStatut.Raiso(ajout:boolean);
begin
  Nochange:=true;
  if ajout then DObjet.Statut.insert
  else DObjet.Statut.edit;
  try
    DObjet.Statutcode.Value:=edit1.text;
    DObjet.StatutLibelle.Value:=edit2.text;
    DObjet.Statut.post;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Cette code existe déjà','Erreur',mb_ok);
      DObjet.Statut.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure  TFStatut.Aficheo;
begin
  if NoChange then exit;
  edit1.text:=DObjet.Statutcode.Value;
  edit2.text:=DObjet.StatutLibelle.Value;
end;

procedure TFStatut.SourceStatutDataChange(Sender: TObject; Field: TField);
begin
  Aficheo;
end;


procedure TFStatut.SpeedButton3Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFStatut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceStatut.DataSet:=DObjet.Repos;
end;

procedure TFStatut.FormCreate(Sender: TObject);
begin
  NoChange:=true;
end;


procedure TFStatut.SpeedButton8Click(Sender: TObject);
begin
  case  mody of
    0:Raiso(true);
    1:Raiso(false);
  end;
  close;
end;

procedure TFStatut.SpeedButton5Click(Sender: TObject);
begin
  Close;
end;

end.
