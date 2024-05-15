{*********************************************}
{ TeeChart Delphi Component Library 3.0       }
{ Demo                                        }
{ Copyright (c) 1995-2001 by David Berneda    }
{ All rights reserved                         }
{*********************************************}
unit UAccees;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, TeEngine, Series, TeeProcs, Chart, StdCtrls,
  TeeFunci, DB, Buttons, DBCtrls, jpeg,IniFiles;

type
  TTeeMainForm = class(TForm)
    stUtilisateur: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Image4: TImage;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    essai:word;
    procedure Okay;
  public
    { Public declarations }
    procedure ShowForm(FormClass: TFormClass);
    function  Asehoy:integer;//(NomProjet:string)
  end;

var
  TeeMainForm: TTeeMainForm;

function AsehoyDroit:integer;export;  //(NomProjet:string)

implementation

{$R *.dfm}

Uses  ShellAPI, UObjet, TypeElmt;

function AsehoyDroit:integer;//(NomProjet:string):integer;
var res:integer;
begin
  res:=mrCancel;
  CreerDObjet;
  try
    TeeMainForm:=TTeeMainForm.Create(Application);
    res:=TeeMainForm.Asehoy;//(NomProjet);
  finally
    TeeMainForm.free;
    VonoyDObjet;
  end;
  result:=res;
end;

function TTeeMainForm.Asehoy:integer;//(NomProjet:string):integer;
var ini:TIniFile;
  Titre:string;
begin
  ini:=TIniFile.Create(extractFilePath(application.ExeName)+'exe.ini');
  Titre:=ini.ReadString('parameters','Titre','');
  ini.free;
  Label2.Caption := Titre;
  Label3.Caption := Titre;
  Image4.Picture.LoadFromFile(extractFilePath(application.ExeName)+'Image1.jpg');
  Edit2.Text :='';
  essai:=0;
  DObjet.Utilisat.Open;
  result:=ShowModal;
end;

procedure TTeeMainForm.ShowForm(FormClass: TFormClass);
begin
  With FormClass.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TTeeMainForm.Okay;
var EnCours:boolean;
begin
  EnCours:=true;
  if (DObjet.SelUtilisat.recordCount=0) then exit;
  DObjet.Tempon.open;
  DObjet.Tempon.Requery;
  DObjet.Tempon.first;
  DObjet.Tempon.edit;
  if edit2.text=EnleveBlancDroite(DObjet.SelUtilisatMdp.Value)then
  begin
    if DObjet.Tempon.FieldByName('String1').Value <>DObjet.SelUtilisatCode.Value then
      DObjet.Tempon.FieldByName('String1').Value:=DObjet.SelUtilisatCode.Value;
    if DObjet.Tempon.FieldByName('String2').Value <>Label4.caption then
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

procedure TTeeMainForm.DBLookupComboBox1Click(Sender: TObject);
begin
  DObjet.SelUtilisat.close;
  DObjet.SelUtilisat.parameters[0].Value:=DBLookupComboBox1.KeyValue;
  DObjet.SelUtilisat.open;
  if DObjet.SelUtilisat.EOF then Label4.caption:='Inconnu'
  else Label4.caption:=DObjet.SelUtilisatCode.Value;
end;

procedure TTeeMainForm.Image2Click(Sender: TObject);
begin
  Okay;
end;

procedure TTeeMainForm.Image3Click(Sender: TObject);
begin
  DObjet.Tempon.open;
  DObjet.Tempon.Requery;
  DObjet.Tempon.first;
  DObjet.Tempon.edit;
  DObjet.Tempon.FieldByName('String1').Value:='';
  DObjet.Tempon.post;
  modalResult:=mrCancel;
end;

procedure TTeeMainForm.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image2.Visible :=(302<x)and(x<406)and(347<y)and(y<383);
  Image3.Visible :=(515<x)and(x<622)and(383<y)and(y<451);
end;

procedure TTeeMainForm.BitBtn1Click(Sender: TObject);
begin
  Okay;
end;

end.
