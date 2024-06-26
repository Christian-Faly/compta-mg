unit Mdpasse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFMdp = class(TForm)
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Edit4: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure Asehoy(util:string);
  end;

var
  FMdp: TFMdp;

procedure AsehoyMdp(util:string);export;
procedure AmboaryMdP;
procedure VonoyMdP;

implementation

uses UObjet, TypeElmt;


{$R *.DFM}

procedure AmboaryMdP;
begin
  Application.CreateForm(TFMdp,FMdp);
end;

procedure VonoyMdP;
begin
  FMdp.free;
end;

procedure AsehoyMdP(util:string);
begin
  CreerDObjet;
  FMdp:=TFMdp.Create(Application);
  try
    FMdp.Asehoy(Util);
  finally
    FMdp.free;
    VonoyDObjet;
  end;
end;

procedure TFMdp.Asehoy(util:string);
begin
  edit2.text:='';
  edit3.text:='';
  edit4.text:=util;
  caption:='Changement de mot de passe';
  showmodal;
end;

procedure TFMdp.SpeedButton1Click(Sender: TObject);
begin
  DObjet.Utilisat.open;
  DObjet.Utilisat.first;
  while not DObjet.Utilisat.eof do
  begin
    if EnleveBlancDroite(edit4.text)=EnleveBlancDroite(DObjet.UtilisatCode.Value) then break;
    DObjet.Utilisat.next;
  end;
  if DObjet.Utilisat.Eof then
  begin
    MessageDlg('Aucun utilisateur sélectionné',mterror,[mbok],0);
    exit;
  end;
  {if EnleveBlancDroite(DObjet.UtilisatMdp.Value)<>EnleveBlancDroite(edit1.text) then
  begin
    MessageDlg('Mot de passe invalide',mterror,[mbok],0);
    exit;
  end;}
  if EnleveBlancDroite(edit2.text)<>EnleveBlancDroite(edit3.text) then
  begin
    MessageDlg('Confirmation échouée',mterror,[mbok],0);
    exit;
  end;
  DObjet.Utilisat.edit;
  DObjet.UtilisatMdp.Value:=edit2.text;
  DObjet.Utilisat.post;
  close;
end;

procedure TFMdp.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

end.

