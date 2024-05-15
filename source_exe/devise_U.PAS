unit devise_U;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Buttons, Grids, DBGrids, DBTables, ExtCtrls;

type
  TFDevise = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator: TDBNavigator;
    SourceDevise: TDataSource;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SourceDeviseDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
    ps:^string;
    nochange:boolean;
    procedure Fafao;
    procedure Raiso(ajout:boolean);
  public
    { Déclarations publiques }
    procedure Asehoy(var dev:string);
  end;

var
  FDevise: TFDevise;

procedure AsehoyDevise(var dev:string);

implementation

uses DaCommun, Daspecia;

{$R *.DFM}


procedure AsehoyDevise(var dev:string);
begin
  try
    FDevise:= TFDevise.Create(Application);
    FDevise.Asehoy(dev);
  finally
    FDevise.Free;
  end;
end;


procedure TFDevise.Asehoy(var dev:string);
begin
  Nochange:=false;
  ps:=@dev;
  SourceDevise.dataSet:= Commun.devise;
  Commun.devise.open;
  ShowModal;
end;


procedure  TFDevise.Fafao;
begin
  edit2.text:='';
  edit3.text:='';
  edit4.text:='';
  edit1.text:='';
end;

procedure TFDevise.Raiso(ajout:boolean);
begin
  NoChange:=true;
  if ajout then Commun.devise.insert else Commun.devise.Edit;
  try
    Commun.deviseSigle.Value:=edit1.text;
    Commun.deviseDenomination.Value:=edit2.text;
    Commun.devisePays.Value:=edit3.text;
    Commun.deviseContinent.Value:=edit4.text;
    Commun.devise.post;
    Commun.devise.requery;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Cette code existe déjà','Erreur de saisie',mb_ok);
      Commun.devise.cancel;
    end
  end;
  NoChange:=False;
end;

procedure TFDevise.SpeedButton1Click(Sender: TObject);
begin
  Fafao;
end;

procedure TFDevise.SourceDeviseDataChange(Sender: TObject; Field: TField);
begin
  if nochange then exit;
  edit2.text:=Commun.deviseDenomination.Value;
  edit3.text:=Commun.devisePays.Value;
  edit4.text:=Commun.deviseContinent.Value;
  edit1.text:=Commun.deviseSigle.Value;
end;

procedure TFDevise.SpeedButton2Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFDevise.SpeedButton3Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFDevise.SpeedButton4Click(Sender: TObject);
begin
  if Application.MessageBox('Voulez-vous vraiement le supprimmer',
         'Confirmation', mb_YesNo)=IDYES then
    try
      Commun.devise.delete;
      Commun.devise.post;
      Commun.devise.requery;
    except
      on EDataBaseError do
    end;
end;

procedure TFDevise.SpeedButton5Click(Sender: TObject);
begin
  edit1.text:=Commun.deviseSigle.Value;
  edit2.text:=Commun.deviseDenomination.Value;
  edit3.text:=Commun.devisePays.Value;
  edit4.text:=Commun.deviseContinent.Value;
end;

procedure TFDevise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceDevise.dataSet:=Special.Repos;
end;



procedure TFDevise.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
