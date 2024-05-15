unit Lstutil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db;

type
  TFLstUtil = class(TForm)
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    SpeedButton4: TSpeedButton;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    ListBox1: TListBox;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SourceUtilisat: TDataSource;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SourceUtilisatDataChange(Sender: TObject; Field: TField);
  private
    { Déclarations privées }
    Logi:string;
    procedure Raiso(msg:boolean);
  public
    { Déclarations publiques }
    procedure Asehoy(Util,Logiciel:string);
  end;

var
  FLstUtil: TFLstUtil;

procedure VonoyLstUtil;
procedure AsehoyLstUtil(util,Logiciel:string);export;
procedure CreerLstUtil;export;

implementation

uses Utilisat, UObjet,  Droit, EtComman;

{$R *.DFM}

procedure CreerLstUtil;
begin
  Application.CreateForm(TFLstUtil,FLstUtil);
end;

procedure VonoyLstUtil;
begin
  FLstUtil.free;
end;

procedure AsehoyLstUtil(util,Logiciel:string);
begin
  CreerDObjet;
  CreerUtilisat;
  FLstUtil:=TFLstUtil.Create(Application);
  try
    FLstUtil.Asehoy(util,Logiciel);
  finally
    FLstUtil.free;
    VonoyUtilisat;
    VonoyDObjet;
  end;
end;

procedure TFLstUtil.Asehoy(util,Logiciel:string);
begin
  Logi:=Logiciel;
  DObjet.SelUtilisat.close;
  DObjet.SelUtilisat.parameters[0].value:='0';//util;
  DObjet.SelUtilisat.open;
  DObjet.Utilisat.open;
  DObjet.SelAcces.close;
  DObjet.SelAcces.parameters[0].value:=util;
  DObjet.SelAcces.parameters[1].value:=Logiciel;
  DObjet.SelAcces.Open;
  ShowModal;
end;

procedure TFLstUtil.Raiso(msg:boolean);
var i:integer;
begin
  try
    DObjet.Acces.insert;
    DObjet.AccescodeUt.Value:=DObjet.UtilisatCode.Value;
    i:=ListBox1.ItemIndex;
    DObjet.AccesCommande.Value:=ListBox1.Items[i];
    DObjet.AccesLogiciel.Value:=Logi;
    DObjet.Acces.post;
  except
    on EDataBaseError do
    begin
      if msg then
        Application.MessageBox('Cette commande est déjà enregistrée','Erreur',mb_ok);
      DObjet.Acces.cancel;
    end;
  end;
end;

procedure TFLstUtil.SpeedButton3Click(Sender: TObject);
begin
  DObjet.Acces.delete;
end;

procedure TFLstUtil.SpeedButton1Click(Sender: TObject);
begin
  FUtilisat.Asehoy(0);
end;

procedure TFLstUtil.SpeedButton2Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFLstUtil.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFLstUtil.SpeedButton9Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraimement supprimer ?',mtConfirmation,
    [mbYes,mbNo],0)=mryes then
  begin
    SpeedButton5Click(Sender);
    DObjet.Utilisat.delete;
  end;
end;

procedure TFLstUtil.SpeedButton8Click(Sender: TObject);
begin
  FUtilisat.Asehoy(1);
end;

procedure TFLstUtil.FormShow(Sender: TObject);
begin
  ListBox1.Items.Clear;
  DObjet.LstCom.OPEN;
  DObjet.LstCom.first;
  while not DObjet.LstCom.eof do
  begin
    //showMessage(DObjet.LstComCommande.Value);
    ListBox1.Items.Add(DObjet.LstComCommande.Value);
    DObjet.LstCom.Next;
  end;
end;

procedure TFLstUtil.SpeedButton4Click(Sender: TObject);
var index:integer;
begin
  for index:=0 to ListBox1.Items.Count-1 do
  begin
    ListBox1.ItemIndex:=index;
    try
      Raiso(false);
    except
    end;
  end;
end;

procedure TFLstUtil.SpeedButton5Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer toutes les commandes ?',
      mtConfirmation,[mbYes,mbNo],0)=mryes then
    while not DObjet.Acces.EOF do DObjet.Acces.delete;
end;

procedure TFLstUtil.SpeedButton7Click(Sender: TObject);
begin
  AsehoyEtCommande;
end;

procedure TFLstUtil.SourceUtilisatDataChange(Sender: TObject;
  Field: TField);
begin
  DObjet.Acces.close;
  DObjet.Acces.parameters[0].Value:=DObjet.UtilisatCode.Value;
  DObjet.Acces.parameters[1].Value:=Logi;
  DObjet.Acces.open;
end;

end.
