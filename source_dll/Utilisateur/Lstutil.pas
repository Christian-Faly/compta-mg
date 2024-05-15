unit Lstutil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, ComCtrls;

type
  TFLstUtil = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton7: TSpeedButton;
    SourceUtilisat: TDataSource;
    TreeView1: TTreeView;
    Label2: TLabel;
    Label3: TLabel;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SourceUtilisatDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées }
    utilisat:string;
    Logi:string;
    sibling: TTreeNode;
    procedure Raiso(msg:boolean);
  public
    { Déclarations publiques }
    procedure Asehoy(Util,Logiciel:string);
  end;

var
  FLstUtil: TFLstUtil;

procedure AsehoyLstUtil(util,Logiciel:string);export;

implementation

uses Utilisat, UObjet,  Droit, EtComman;

{$R *.DFM}


procedure AsehoyLstUtil(util,Logiciel:string);
begin
  try
    DObjet:= TDObjet.Create(Application);
    FLstUtil:=TFLstUtil.Create(Application);
    FLstUtil.Asehoy(util,Logiciel);
  finally
    FLstUtil.free;
    DObjet.free;
  end;
end;

procedure TFLstUtil.Asehoy(util,Logiciel:string);
begin
  utilisat:=util;
  Logi:=Logiciel;
  try
    DObjet.SelUtilisat.close;
    DObjet.SelUtilisat.parameters[0].value:='0';//util;
    DObjet.SelUtilisat.open;
    DObjet.Utilisat.open;
    DObjet.SelAcces.close;
    DObjet.SelAcces.parameters[0].value:=util;
    DObjet.SelAcces.parameters[1].value:=Logiciel;
    DObjet.SelAcces.Open;
  except
    On E:Exception do
      showMessage(E.Message)
  end;
  Label3.Caption :='';
  ShowModal;
end;

procedure TFLstUtil.Raiso(msg:boolean);
begin
  if Label3.Caption>'' then
  begin
    try
      DObjet.Acces.insert;
      DObjet.AccescodeUt.Value:=DObjet.UtilisatCode.Value;
      DObjet.AccesIdFonction.Value:=DObjet.UtilisatIdFonction.Value;
      DObjet.AccesCommande.Value:=Label3.Caption;
      DObjet.AccesLogiciel.Value:=Logi;
      if CheckBox1.checked then
        DObjet.AccesLectureSeul.Value:= -1
      else
        DObjet.AccesLectureSeul.Value:= 0;
      DObjet.Acces.post;
    except
      on E:Exception do
        //showMessage(E.Message);
    end;
    if sibling.Parent<>nil then
    begin
      try
        DObjet.Acces.insert;
        DObjet.AccescodeUt.Value:=DObjet.UtilisatCode.Value;
        DObjet.AccesCommande.Value:=sibling.Parent.Text ;
        DObjet.AccesLogiciel.Value:=Logi;
        DObjet.Acces.post;
      except
        on EDataBaseError do
          DObjet.Acces.cancel;
      end;
      if sibling.Parent.Parent<>nil then
      begin
        try
          DObjet.Acces.insert;
          DObjet.AccescodeUt.Value:=DObjet.UtilisatCode.Value;
          DObjet.AccesCommande.Value:=sibling.Parent.Parent.Text;
          DObjet.AccesLogiciel.Value:=Logi;
          DObjet.Acces.post;
        except
          on EDataBaseError do
            DObjet.Acces.cancel;
        end;
        if sibling.Parent.Parent.Parent<>nil then
        begin
          try
            DObjet.Acces.insert;
            DObjet.AccescodeUt.Value:=DObjet.UtilisatCode.Value;
            DObjet.AccesCommande.Value:=sibling.Parent.Parent.Parent.Text;
            DObjet.AccesLogiciel.Value:=Logi;
            DObjet.Acces.post;
          except
            on EDataBaseError do
              DObjet.Acces.cancel;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFLstUtil.SpeedButton3Click(Sender: TObject);
begin
  DObjet.Acces.delete;
end;

procedure TFLstUtil.SpeedButton1Click(Sender: TObject);
begin
  FUtilisat.Asehoy(0,utilisat);
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
  AsehoyUtilisat(1,utilisat);
end;

procedure TFLstUtil.SpeedButton4Click(Sender: TObject);
var i:integer;
begin
  for i:=0 to TreeView1.Items.Count - 1 do
  try
    DObjet.Acces.insert;
    DObjet.AccescodeUt.Value:=DObjet.UtilisatCode.Value;
    DObjet.AccesIdFonction.Value:=DObjet.UtilisatIdFonction.Value;
    DObjet.AccesCommande.Value:=TreeView1.Items.Item[i].Text ;
    DObjet.AccesLogiciel.Value:=Logi;
    if CheckBox1.checked then
      DObjet.AccesLectureSeul.Value:= -1
    else
      DObjet.AccesLectureSeul.Value:= 0;
    DObjet.Acces.post;
  except
    on E:EDataBaseError do
    begin
      //showMessage(E.Message);
      DObjet.Acces.cancel;
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

procedure TFLstUtil.FormCreate(Sender: TObject);
begin
  dObjet.CreerArbre(TreeView1,'LstCom');
  TreeView1.FullExpand;
end;

procedure TFLstUtil.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  sibling:=node;
  Label3.Caption:=node.text;
end;

procedure TFLstUtil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //DObjet.del_CommandeNonUtilisateur.ExecSQL;
end;

end.
