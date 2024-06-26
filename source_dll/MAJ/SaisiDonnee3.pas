unit SaisiDonnee3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons,db, Grids, DBGrids, ADODB, Menus,UObjet;

type
  TFSaisieDonnee3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Edit31: TEdit;
    Edit34: TEdit;
    Edit33: TEdit;
    Edit32: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    STEntree1: TDataSource;
    DBGrid1: TDBGrid;
    STEntree2: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1HeureOuvert: TDateTimeField;
    DataSource3: TDataSource;
    MainMenu1: TMainMenu;
    Suivant1: TMenuItem;
    BitBtn4: TBitBtn;
    PageControl1: TPageControl;
    ADOTable2: TADOTable;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit33Click(Sender: TObject);
    procedure Edit34Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Déclarations privées }
    TabAQ:array[1..10]of TADOQuery;
    foc:integer;
    
    procedure Effacer(ReInsertion:boolean);
    function  MettreControle(sur:TWinControl;Q:TADOQuery;debut:integer):integer;
    function  Afficher(Q:TADOQuery;Debut,k:integer):integer;
    function  Enregistrer(Q:TADOQuery;Debut,k:integer):integer;
  public
    ListeLabel : array[1..100] of TLabel;
    ListeEdit  : array[1..100] of TEdit;
    ListeCheck : array[1..100] of TCheckBox;
    TabSheet   : array[1..30] of TTabSheet;
    { Déclarations publiques }
    function Asehoy(mode:integer):integer;
  end;

var
  FSaisieDonnee3: TFSaisieDonnee3;
  Pejy:TEntree;

procedure AsehoySaisieDonnee3(mode:integer);

implementation

{$R *.DFM}

procedure AsehoySaisieDonnee3(Mode:integer);
begin
  try
    FSaisieDonnee3:=TFSaisieDonnee3.Create(Application);
    FSaisieDonnee3.Asehoy(Mode);
  finally
    FSaisieDonnee3.free;
  end;
end;

function TFSaisieDonnee3.Asehoy(Mode:integer):integer;
var i,deb:integer;
begin
  deb:=0;
  case mode of
    0:
      begin
        effacer(false);
      end;
    1:begin
        BitBtn4.Visible :=false;
        deb:=Afficher(DObjet.QListDonnee,0,0);
        for i:=1 to 10 do
          if Pejy[i].Ndf>'' then
          begin
            deb:=Afficher(TabAQ[i],deb,i);
          end;
      end;
  end;
  Result:=ShowModal;
end;

function TFSaisieDonnee3.Afficher(Q:TADOQuery;Debut,k:integer):integer;
var i,c_Entree:integer;
begin
  foc:=1;
  c_Entree:=0;
  for i:=1 to  Q.fields.Count do
  begin
    if entree[i].Ndf ='' then
    begin
      if Q.fields[i-1].DataType <> ftBoolean then
      begin
        Listeedit[Debut+i].Text:=Q.fields[i-1].AsString;
      end
      else
        ListeCheck[Debut+i].Checked:=Q.fields[i-1].AsBoolean;
    end
    else
    begin
      C_Entree:=C_entree+1;
      if C_Entree=1 then edit31.Text :=Q.fields[i-1].AsString;
      if C_Entree=2 then edit32.Text :=Q.fields[i-1].AsString;
      end;
  end;
  Q.edit;
  Result:=Debut+i;
end;

function TFSaisieDonnee3.MettreControle(sur:TWinControl;Q:TADOQuery;Debut:integer):integer;
var  i,lef,topy,pasvert,pashori,inithori,initvert,nb_Entree: Integer;
begin
  nb_Entree:=0;
  inithori:=100;
  initvert:=50;
  lef:=inithori;
  topy:=initvert;
  pasvert:=25;     // TField
  pashori:=275;
  for i:=1 to  Q.fields.Count do
  begin
    if entree[i].Ndf ='' then
    begin
      case Q.fields[i-1].DataType of
        ftAutoInc:;
        ftboolean:
        begin
          ListeCheck[debut+i]:=TCheckBox.Create(self);
          ListeCheck[debut+i].parent:=sur;//PageControl1.Pages[0];
          ListeCheck[debut+i].left:=lef-60;
          ListeCheck[debut+i].top:=topy;
          ListeCheck[debut+i].caption:=Q.fields[i-1].FieldName;
        end;
        else
        begin
          ListeLabel[debut+i]:=TLabel.Create(self);
          ListeLabel[debut+i].parent:=sur;//PageControl1.Pages[0];
          ListeLabel[debut+i].left:=lef-60;
          ListeLabel[debut+i].top:=topy;
          ListeLabel[debut+i].caption:=Q.fields[i-1].FieldName;

          Listeedit[debut+i]:=TEdit.Create(self);
          Listeedit[debut+i].parent:=sur;//PageControl1.Pages[0];
          Listeedit[debut+i].left:=lef;
          Listeedit[debut+i].top:=topy;
          Listeedit[debut+i].width:=14*Q.fields[i-1].DisplayWidth ;
        end;
      end;

      topy:=topy+pasvert;
      if i=10 then
      begin
        lef:=lef+pasHori;
        topy:=initvert;
      end;
      if i=20 then
      begin
        lef:=lef+pasHori;
        topy:=initvert;
      end;
    end
    else
    begin
      nb_Entree:=nb_Entree+1;
      if nb_Entree=1 then
      begin
        label1.Caption:=Q.fields[i-1].FieldName;
        label3.Caption:=Entree[i].Ndf ;
      end;
      if nb_Entree=2 then
      begin
        label2.Caption:=Q.fields[i-1].FieldName;
        label4.Caption:=Entree[i].Ndf ;
      end;
    end;
  end;
  {Taille de la boite de dialogue}
  width:=lef+200;   //200
  if width<564 then Width:=564;
  if Q.fields.Count<10 then
    height:=topy+100
  else
    height:=pasvert*11+200;
  if nb_Entree=0 then Panel3.Height := 0;
  if nb_Entree=1 then Panel3.Height := 33;
  if nb_Entree>1 then Panel3.Height := 33+(nb_Entree-1)*30;
  Result:=debut+i;
end;

procedure TFSaisieDonnee3.FormCreate(Sender: TObject);
var i,deb:integer;
begin
  deb:=MettreControle(Panel1,DObjet.QListDonnee,0);
  for i:=1 to 10 do
  begin
    if Pejy[i].Ndf>'' then
    begin
      TabSheet[i]:=TTabSheet.create(PageControl1);
      TabSheet[i].PageControl:=PageControl1;
      TabSheet[i].name:='Ts'+inttostr(i);
      TabAQ[i]:=TADOQuery.create(self);
      TabAQ[i].Close;
      TabAQ[i].Connection:=DObjet.C_ListeDonnee;
      TabAQ[i].SQL.Clear;
      TabAQ[i].SQL.Add('Select * from '+Pejy[i].Ndf );
      TabAQ[i].SQL.Add(' where '+Pejy[i].Ndc+'='+DObjet.QListDonnee.fields[StrToInt(Pejy[i].Critere)-1].AsString);
      TabAQ[i].Open;
      deb:=MettreControle(TabSheet[i],TabAQ[i],deb);
    end;
  end;
  Height:=500;// Height+Panel3.Height+PageControl1.Height ;
end;

procedure TFSaisieDonnee3.BitBtn1Click(Sender: TObject);
var i,deb:integer;
begin
  deb:=Enregistrer(DObjet.QListDonnee,0,0);
  for i:=1 to 10 do
    if Pejy[i].Ndf>'' then
    begin
      deb:=Enregistrer(TabAQ[i],deb,i);
    end;
  ModalResult:=mrOK;
end;

function TFSaisieDonnee3.Enregistrer(Q:TADOQuery;Debut,k:integer):integer;
var i,C_Entree:integer;
begin
  C_Entree:=0;
  for i:=1 to  Q.fields.Count do
  begin
    if entree[i].Ndf ='' then
    begin
      case Q.fields[i-1].DataType of
        ftAutoInc:;
        ftBoolean:Q.fields[i-1].AsBoolean:=ListeCheck[Debut+i].Checked;
        else
        begin
          Q.fields[i-1].AsString:=Listeedit[Debut+i].Text;
          if (debut>0)and(Pejy[k].Ndc=ListeLabel[Debut+i].Caption) then
            Q.fields[i-1].AsString:=DObjet.QListDonnee.fields[StrToInt(Pejy[k].Critere)-1].AsString
        end
      end
    end
    else
    begin
      C_Entree:=C_Entree+1;
      if C_Entree=1 then Q.fields[i-1].AsString:=Edit31.Text;
      if C_Entree=2 then Q.fields[i-1].AsString:=Edit32.Text;
    end;
  end;
  Q.Post;
  Result:=Debut+i;
end;

procedure TFSaisieDonnee3.Effacer(ReInsertion:boolean);
var i,C_Entree:integer;
  focus:boolean;
begin
  C_Entree:=0;
  focus:=false;
  DObjet.QListDonnee.insert;
  for i:=1 to  DObjet.QListDonnee.fields.Count do
  begin
    if entree[i].Ndf ='' then
    begin
      if DObjet.QListDonnee.fields[i-1].DataType <> ftBoolean then
      begin
        if entree[i].Critere = '=' then
          Listeedit[i].text:= entree[i].Valeur
        else
        begin
          Listeedit[i].text:='';
        end;
      end
      else
        ListeCheck[i].Checked:=false;
    end
    else
    begin
      C_Entree:=C_entree+1;
      if C_Entree=1 then edit31.Text :=entree[i].valeur;
      if C_Entree=2 then edit32.Text :=entree[i].valeur;
    end;
  end;
end;

procedure TFSaisieDonnee3.BitBtn2Click(Sender: TObject);
begin
  DObjet.QListDonnee.CANCEL;
  modalresult:=mrcancel;
end;

procedure TFSaisieDonnee3.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit31.text:=DObjet.T_Entree1.fields[0].AsString;
  Edit33.text:=DObjet.T_Entree1.fields[1].AsString;
  DBGrid1.Visible:=false;
  Edit31.SetFocus;
end;

procedure TFSaisieDonnee3.DBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit32.text:=DObjet.T_Entree2.fields[0].AsString;
  Edit34.text:=DObjet.T_Entree2.fields[1].AsString;
  DBGrid2.Visible:=false;
  Edit32.SetFocus;
end;

procedure TFSaisieDonnee3.Edit33Click(Sender: TObject);
begin
  DObjet.T_Entree1.Close;
  DObjet.T_Entree1.TableName:=Label3.Caption;
  DObjet.T_Entree1.Open;
  DBGrid1.Visible:=true;
  DBGrid1.SetFocus;
end;

procedure TFSaisieDonnee3.Edit34Click(Sender: TObject);
begin
  DObjet.T_Entree2.Close;
  DObjet.T_Entree2.TableName:=Label4.Caption;
  DObjet.T_Entree2.Open;
  DBGrid2.visible:=true;
  DBGrid2.SetFocus;
end;

procedure TFSaisieDonnee3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i:integer;
begin
  if key=13 then
  begin
    for i:=1 to DObjet.QListDonnee.fields.Count-1  do
      if ListeEdit[i].focused then ListeEdit[i+1].setfocus;
  end;
end;

procedure TFSaisieDonnee3.BitBtn4Click(Sender: TObject);
var i:integer;
begin
  Enregistrer(DObjet.QListDonnee,0,0);
  Effacer(True);
  Panel1.SetFocus;
  for i:=1 to 30 do
  begin
    if length(ListeEdit[i].text)=0 then
    try
      ListeEdit[i].SetFocus;
      break;
    except
    end;
  end;
  DObjet.QListDonnee.insert;
end;

end.

