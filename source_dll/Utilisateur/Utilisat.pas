unit Utilisat;

interface

uses
  Windows, Messages,SysUtils,  Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, Grids, DBGrids, Buttons, DBTables, Mask,
  ExtCtrls,Dialogs;

type
  TFUtilisat = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBox1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    utilisat:string;
  public
    { Déclarations publiques }
    procedure Asehoy(mode:shortint;utilisateur:string);
 end;

var
  FUtilisat: TFUtilisat;


procedure AsehoyUtilisat(mode:shortint;utilisateur:string);export;

implementation

uses UObjet, UMAJ;


{$R *.DFM}


procedure AsehoyUtilisat(mode:shortint;utilisateur:string);
begin
  try
    FUtilisat:= TFUtilisat.Create(Application);
    FUtilisat.Asehoy(mode,utilisateur);
  finally
    FUtilisat.free;
  end;
end;

procedure TFUtilisat.Asehoy(mode:shortint;utilisateur:string);
begin
  utilisat:= utilisateur;
  DObjet.tFonction.open;
  DObjet.Utilisat.Open;
  case mode of
    0:DObjet.Utilisat.Insert;
    else
      DObjet.Utilisat.Edit;
  end;
  showmodal;
end;


procedure TFUtilisat.SpeedButton1Click(Sender: TObject);
begin
  DObjet.Utilisat.cancel;
  close;
end;

procedure TFUtilisat.SpeedButton2Click(Sender: TObject);
begin
  DObjet.Utilisat.Post;
  DObjet.MAJLog(Utilisat,'Gestion Utilisateur','Ajout',DObjet.UtilisatCode.Value);
  close;
end;

procedure TFUtilisat.DBLookupComboBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssCtrl in Shift then
  begin
    if AsehoyMAJ(DObjet.stFonction,'Liste Fonction',True,true,true)=mrOK then
    begin
      if (DObjet.Utilisat.State <>dsEdit)and(DObjet.Utilisat.State <>dsInsert) then
        DObjet.Utilisat.Edit;
      DObjet.UtilisatIdFonction.Value:=DObjet.tFonctionId.Value;
    end;
  end;
end;

end.
