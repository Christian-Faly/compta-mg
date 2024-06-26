unit UCalendrier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, ActnList, Menus, OleCtrls, SHDocVw,
  StdCtrls, ExtCtrls, Buttons, jpeg, ADODB, DB, Grids, DBGrids, OleCtnrs,
  DBCtrls, Mask, qrextra, Grids_ts, TSGrid, osAdvDbGrid;

type
  TFArbre = class(TForm)
    StatusBar1: TStatusBar;
    NavigatorHotImages: TImageList;
    ActionList1: TActionList;
    BackAction: TAction;
    ForwardAction: TAction;
    StopAction: TAction;
    RefreshAction: TAction;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Timer1: TTimer;
    Panel7: TPanel;
    Label8: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    TreeView1: TTreeView;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Timer1Timer(Sender: TObject);
    procedure TreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView3Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView4Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView5Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView6Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView7Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView8Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView9Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView10Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView11Change(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid6CellClick(Column: TColumn);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
  private
    { Private declarations }
    nbEgale : string;
    Mode,temps:Integer;
    Annuler:Boolean;
    procedure Selection(Node: TTreeNode);
    procedure Asehoy;
    procedure CreerArbre;
    procedure CreerSampana(Pere:string;Profondeur:integer;
                     Noeud:TTReeNode);
    procedure SelArbre;
  public
    { Public declarations }
  end;

const
  MDonnee=1;
  MCarte=2;

var
  FArbre: TFArbre;
  Nd:string;
  IsNum,SeulPer:boolean;


procedure AsehoyArbre(Chemin,Ndf:string;isCodeNum,SeulPere:boolean);export;

implementation

uses  UDaArbre,  TypeElmt;

{$R *.dfm}

procedure AsehoyArbre(Chemin,Ndf:string;isCodeNum,SeulPere:boolean);
begin
  nd:=ndf;
  isNum:=isCodeNum;
  SeulPer:=SeulPere;
  try
    DaArbre:=TDaArbre.create(Application);
    DaArbre.ChangeConnection(chemin);
    FArbre:=TFArbre.Create(Application);
    FArbre.Asehoy;
  finally
    FArbre.Free;
    DaArbre.Free;
  end;
end;

procedure TFArbre.Asehoy;
begin
  ShowModal;
end;

procedure TFArbre.SelArbre;
begin
  DaArbre.qArbre.Close;
  DaArbre.qArbre.SQL.Clear;
  DaArbre.qArbre.SQL.Add('select * from '+nd);
  if not isNum then
    DaArbre.qArbre.SQL.Add('where (Pere=''0'')')
  else
    DaArbre.qArbre.SQL.Add('where (Pere=0)');
  DaArbre.qArbre.Open;
end;

procedure TFArbre.CreerArbre;
var nod:TTreeNode;
begin
  if seulPer then
  begin
    nod := TreeView1.Items.Add(nil, ' ');
    nod.StateIndex:=-1;
    nod.ImageIndex:=0;
    nod.SelectedIndex:=1;
    CreerSampana('0',0,nod);
  end
  else
  begin
    DaArbre.qArbre.Open;
    DaArbre.qArbre.First;
    TreeView1.Items.Clear;
    while not DaArbre.qArbre.Eof do
    begin
      nod := TreeView1.Items.Add(nil, DaArbre.qArbre.Fields[1].Value);
      nod.StateIndex:=DaArbre.qArbre.Fields[3].Value;
      nod.ImageIndex:=0;
      nod.SelectedIndex:=1;
      CreerSampana(DaArbre.qArbre.Fields[0].Value,1,nod);
      DaArbre.qArbre.Next;
    end;
  end;
end;

procedure TFArbre.CreerSampana(Pere:string;Profondeur:integer;
                     Noeud:TTReeNode);
var selSampana:TADOQuery;
  zanany:TTreeNode;
  Index,i:integer;
begin
  Index:=0;
  selSampana:=TADOQuery.Create(DaArbre);
  selSampana.Connection:=DaArbre.C_Arbre;
  selSampana.SQL.Add('select * from '+nd);
  selSampana.SQL.Add('where (Pere='''+Pere+''')');
  selSampana.SQL.Add('order by Numero');
  selSampana.Open;
  profondeur:=profondeur+1;
  while not selSampana.Eof do
  begin
    zanany:=TreeView1.Items.AddChild(Noeud,selSampana.Fields[1].Value);
    try
      Index:=selSampana.Fields[3].Value;
    except
      On EConvertError do
        Index:=-1;
    end;
    zanany.StateIndex:=Index;
    case profondeur of
      1:begin
          zanany.ImageIndex:=0;
          zanany.SelectedIndex:=1;
        end;
      2:begin
          zanany.ImageIndex:=2;
          zanany.SelectedIndex:=3;
        end;
       3:begin
          zanany.ImageIndex:=4;
          zanany.SelectedIndex:=5;
        end;
      4:begin
          zanany.ImageIndex:=6;
          zanany.SelectedIndex:=7;
        end;
    end;
    CreerSampana(selSampana.Fields[0].Value,profondeur,Zanany);
    selSampana.Next;
  end ;
  selSampana.Close;
  selSampana.Free;
end;

procedure TFArbre.TreeView1Change(Sender: TObject; Node: TTreeNode);
var niveau:integer;
begin
  Selection(Node);
  if Node.Parent=nil then Niveau:=0
  else if Node.Parent.Parent=nil then Niveau:=1
  else if Node.Parent.Parent.Parent=nil then Niveau:=2
  else if Node.Parent.Parent.Parent.Parent=nil then Niveau:=3
  else if Node.Parent.Parent.Parent.Parent.Parent=nil then Niveau:=4
  else if Node.Parent.Parent.Parent.Parent.Parent.Parent=nil then Niveau:=5
  else if Node.Parent.Parent.Parent.Parent.Parent.Parent.Parent=nil then Niveau:=6
  else if Node.Parent.Parent.Parent.Parent.Parent.Parent.Parent.Parent=nil then Niveau:=7
  else Niveau:=8;
  DaArbre.qNiveauArbre.Close;
  DaArbre.qNiveauArbre.Parameters[0].Value :=Niveau ;
  DaArbre.qNiveauArbre.Parameters[1].Value :=Niveau+1 ;
  DaArbre.qNiveauArbre.Open;
  DaArbre.qNiveauArbre.Last;
  GroupBox2.Caption := 'Saisie des '+DaArbre.qNiveauArbreDescription.Value+'s'+
                       ' '+Node.Text;
  DaArbre.qNiveauArbre.First;
  if DaArbre.qNiveauArbreDescription.Value>'0' then
    GroupBox2.Caption :=GroupBox2.Caption +' dans '+DaArbre.qNiveauArbreDescription.Value;
end;

procedure TFArbre.Selection(Node: TTreeNode);
begin
  StatusBar1.panels[2].Text:='Requ�te en cours: '+Node.Text;
  if Node.stateIndex=-1 then
    edit1.text:='0'
  else
  begin
    DaArbre.Q_Recherche.Close;
    DaArbre.Q_Recherche.Parameters[0].Value:=Node.stateIndex;
    DaArbre.Q_Recherche.Open;
    edit1.text:=DaArbre.Q_RechercheNumero.value;
  end;
  DaArbre.qMAJArbre.Close;
  DaArbre.qMAJArbre.Parameters[0].Value:=edit1.text;
  DaArbre.qMAJArbre.Open;

end;

procedure TFArbre.Timer1Timer(Sender: TObject);
begin
  temps:=Temps+1;
  if statusbar1.Panels[2].Text<> 'Non disponible' then
  begin
    nbEgale:=nbEgale+'=';
    if length(nbEgale)>10 then
      nbEgale:='=';
    StatusBar1.Panels[1].Text:=nbEgale+'>';
  end
  else
    StatusBar1.Panels[1].Text:='<!>';
  if annuler and (temps>=10)then Close;
end;

procedure TFArbre.TreeView2Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView3Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView4Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView5Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView6Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView7Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView8Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView9Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView10Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.TreeView11Change(Sender: TObject; Node: TTreeNode);
begin
  Selection(Node);
end;

procedure TFArbre.FormCreate(Sender: TObject);
begin
  if not seulPer then
    SelArbre;
  CreerArbre;
end;

procedure TFArbre.DBGrid6CellClick(Column: TColumn);
begin
  if Mode=MDonnee then
  begin
    DaArbre.Q_Recherche.Close;
    DaArbre.Q_Recherche.Parameters[0].Value:=Edit1.text;
    DaArbre.Q_Recherche.Open;
  end;
end;

procedure TFArbre.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  case Button of
    nbPost:
      begin
        DaArbre.qMAJArbrePere.Value:=Edit1.Text;
      end;
    nbInsert:;
  end;
end;

end.
