unit Droit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, QuickRpt;

type
  TFDroit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
    essai:word;
    procedure chercher;
  public
    { Déclarations publiques }
    function Asehoy:integer;
  end;

var
  FDroit: TFDroit;


implementation

uses UObjet, TypeElmt;

{$R *.DFM}

function TFDroit.Asehoy:integer;
begin
  Edit1.text:='';
  Edit2.text:='';
  edit3.Visible:=false;
  Label5.Visible:=false;
  Edit3.text:='';
  essai:=0;
  result:=ShowModal;
end;

procedure TFDroit.Chercher;
begin
  if Edit2.text=MdpProg then
    Label4.Caption := '--- Programmeur ---'
  else
  begin
    DObjet.SelUtilisat.close;
    DObjet.SelUtilisat.parameters[0].Value:=edit1.text;
    DObjet.SelUtilisat.open;
    if DObjet.SelUtilisat.EOF then Label4.caption:='Inconnu'
    else Label4.caption:=DObjet.SelUtilisatCode.Value;
  end;
end;

procedure TFDroit.SpeedButton1Click(Sender: TObject);
var EnCours:boolean;
begin
  EnCours:=true;
  if (DObjet.SelUtilisat.recordCount=0)and (edit2.text<>MdpProg) then exit;
  DObjet.Tempon.open;
  DObjet.Tempon.Requery;
  DObjet.Tempon.first;
  DObjet.Tempon.edit;
  if (edit2.text=EnleveBlancDroite(DObjet.SelUtilisatMdp.Value))or (edit2.text=MdpProg)then
  begin
    DObjet.Tempon.FieldByName('String1').Value:=edit1.text;
    DObjet.Tempon.FieldByName('String2').Value:=Label4.caption;
    DObjet.QUtilCommandeAcces.Close;
    DObjet.QUtilCommandeAcces.parameters[0].Value:=DObjet.SelUtilisatCode.Value;
    DObjet.QUtilCommandeAcces.parameters[1].Value:='Liste des utilisateurs';
    DObjet.QUtilCommandeAcces.Open;
    DObjet.Tempon.post;
    ModalResult := mrOK;
  end
  else
  begin
    DObjet.Tempon.FieldByName('String1').Value:='';
    DObjet.Tempon.post;
    essai:=essai+1;
    MessageDlg('Mot de passe invalide, reste essai='+inttostr(3-essai),mterror,[mbok],0);
    if essai=3 then close;
  end;
end;

procedure TFDroit.SpeedButton2Click(Sender: TObject);
begin
  DObjet.Tempon.open;
  DObjet.Tempon.Requery;
  DObjet.Tempon.first;
  DObjet.Tempon.edit;
  DObjet.Tempon.FieldByName('String1').Value:='';
  DObjet.Tempon.post;
  modalResult:=mrCancel;
end;

procedure TFDroit.Edit1Change(Sender: TObject);
begin
  Chercher;
end;

procedure TFDroit.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=13 then  SpeedButton1Click(Sender);
 if Key=27 then  SpeedButton2Click(Sender);
end;

procedure TFDroit.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=13 then  SpeedButton1Click(Sender);
 if Key=27 then  SpeedButton2Click(Sender);
end;

procedure TFDroit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=13 then  SpeedButton1Click(Sender);
 if Key=27 then  SpeedButton2Click(Sender);
end;

end.
