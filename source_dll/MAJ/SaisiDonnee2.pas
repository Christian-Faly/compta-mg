unit SaisiDonnee2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons,db, Grids, DBGrids, ADODB, Menus,UObjet;

type
  TFSaisieDonnee2 = class(TForm)
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
    DBGrid2: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable1HeureOuvert: TDateTimeField;
    DataSource3: TDataSource;
    MainMenu1: TMainMenu;
    Suivant1: TMenuItem;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Edit33Click(Sender: TObject);
    procedure Edit34Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { D�clarations priv�es }
    foc:integer;
    mody:integer;
    procedure Enregistrer;
    procedure Effacer(ReInsertion:boolean);
  public
    ListeLabel:array[1..30] of TLabel;
    ListeEdit:array[1..30] of TEdit;
    ListeCheck:array[1..30] of TCheckBox;
    ListeCombo:array[1..30] of TComboBox;
    { D�clarations publiques }
    function Asehoy(mode:integer):integer;
  end;

var
  FSaisieDonnee2: TFSaisieDonnee2;

procedure AsehoySaisieDonnee2(odbc,Chemin,ndf:string;Entr:TEntree;Mode:integer);export;
procedure SaisieDonnee2(mode:integer;AQ:TADOQuery;E:TEntree);

implementation

uses UMoteur;

var QList:TADOQuery;
    Ent:TEntree;


{$R *.DFM}

procedure AsehoySaisieDonnee2(odbc,Chemin,ndf:string;Entr:TEntree;Mode:integer);
begin
  try
    CreerDObjet;
    CreerMoteur;
    Moteur.IsList:=False;
    Entree:=Entr;
    DObjet.ChangeConnection(odbc,chemin);
    Moteur.InitListDonnee(Dobjet.QListDonnee,ndf,'','',0,Entree);
    Moteur.OuvrirQuery(Dobjet.QListDonnee,Entree);
    QList:=Dobjet.QListDonnee;
    DObjet.TListeDonnee.Close;
    DObjet.TListeDonnee.TableName := ndf;
    Ent:=Entree;
    FSaisieDonnee2:=TFSaisieDonnee2.Create(Application);
    //FSaisieDonnee2.nf := ndf;
    FSaisieDonnee2.Asehoy(Mode);
  finally
    FSaisieDonnee2.free;
    VonoyDObjet;
    VonoyMoteur;
  end;
end;


procedure SaisieDonnee2(Mode:integer;AQ:TADOQuery;E:TEntree);
begin
  QList:=AQ;
  Ent:=E;
  try
    FSaisieDonnee2:=TFSaisieDonnee2.Create(Application);
    FSaisieDonnee2.Asehoy(Mode);
  finally
    FSaisieDonnee2.free;
  end;
end;


function TFSaisieDonnee2.Asehoy(Mode:integer):integer;
var i,c_Entree:integer;
begin
  mody:=mode;
  foc:=1;
  c_Entree:=0;
  case mode of
    0:
      begin
        effacer(false);
      end;
    1:begin
        BitBtn4.Visible :=false;
        for i:=1 to  QList.fields.Count do
        begin
          if (Ent[i].Ndf ='') or (Ent[i].Controle='Boite � Liste') then
          begin
            if QList.fields[i-1].DataType <> ftBoolean then
            begin
              if Ent[i].Controle='Boite � Liste' then
                ListeCombo[i].Text:=QList.fields[i-1].AsString
              else
              begin
                Listeedit[i].Text:=QList.fields[i-1].AsString;
                Listeedit[i].Enabled:= Ent[i].Visible;
              end;
            end
            else
              ListeCheck[i].Checked:=QList.fields[i-1].AsBoolean;
          end
          else
          begin
            C_Entree:=C_entree+1;
            if C_Entree=1 then edit31.Text :=QList.fields[i-1].AsString;
            if C_Entree=2 then edit32.Text :=QList.fields[i-1].AsString;
          end;
        end;
        QList.edit;
      end;
  end;
  Result:=ShowModal;
end;

procedure TFSaisieDonnee2.FormCreate(Sender: TObject);
var  i,lef,topy,pasvert,pashori,inithori,initvert,nb_Entree: Integer;
begin
  nb_Entree:=0;
  inithori:=100;
  initvert:=50;
  lef:=inithori;
  topy:=initvert;
  pasvert:=25;     // TField
  pashori:=275;
  for i:=1 to  QList.fields.Count do
  begin
    if (Ent[i].Ndf ='') or (Ent[i].Controle='Boite � Liste') then
    begin
      case QList.fields[i-1].DataType of
        ftAutoInc:;
        ftboolean:
        begin
          ListeCheck[i]:=TCheckBox.Create(self);
          ListeCheck[i].parent:=Panel1;//PageControl1.Pages[0];
          ListeCheck[i].left:=lef-60;
          ListeCheck[i].top:=topy;
          ListeCheck[i].caption:=QList.fields[i-1].FieldName;
        end;
        else
        begin
          ListeLabel[i]:=TLabel.Create(self);
          ListeLabel[i].parent:=Panel1;//PageControl1.Pages[0];
          ListeLabel[i].left:=lef-75;
          ListeLabel[i].Alignment:=taRightJustify;
          ListeLabel[i].top:=topy;
          ListeLabel[i].caption:=QList.fields[i-1].FieldName;

          if (Ent[i].Controle='Boite � Liste') then
          begin
            ListeCombo[i]:=TComboBox.Create(self);
            ListeCombo[i].parent:=Panel1;//PageControl1.Pages[0];
            ListeCombo[i].left:=lef;
            ListeCombo[i].top:=topy;
            ListeCombo[i].width:=5*QList.fields[i-1].DisplayWidth ;
            if ListeCombo[i].width>200 then ListeCombo[i].width:=200;
            Moteur.ChargerCombo(Ent[i].ndf,Ent[i].ndc,ListeCombo[i]);
          end
          else
          begin
            Listeedit[i]:=TEdit.Create(self);
            Listeedit[i].parent:=Panel1;//PageControl1.Pages[0];
            Listeedit[i].left:=lef;
            Listeedit[i].top:=topy;
            Listeedit[i].width:=5*QList.fields[i-1].DisplayWidth ;
            if Listeedit[i].width>200 then
              Listeedit[i].width:=200;
            if QList.fields[i-1].DataType=ftMemo then
              Listeedit[i].width:=200;
         end;
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
        label1.Caption:=QList.fields[i-1].FieldName;
        label3.Caption:=Ent[i].Ndf ;
      end;
      if nb_Entree=2 then
      begin
        label2.Caption:=QList.fields[i-1].FieldName;
        label4.Caption:=Ent[i].Ndf ;
      end;
    end;
  end;
  {Taille de la boite de dialogue}
  width:=lef+200;   //200
  if width<564 then Width:=564;
  if QList.fields.Count<10 then
    height:=topy+100
  else
    height:=pasvert*11+200;
  if nb_Entree=0 then Panel3.Height := 0;
  if nb_Entree=1 then Panel3.Height := 33;
  if nb_Entree>1 then Panel3.Height := 33+(nb_Entree-1)*30;
  Height:=Height+Panel3.Height;
end;


procedure TFSaisieDonnee2.BitBtn1Click(Sender: TObject);
begin
  Enregistrer;
  ModalResult:=mrOK;
end;

procedure TFSaisieDonnee2.Enregistrer;
VAR i,C_Entree:integer;
begin
  C_Entree:=0;
  for i:=1 to  QList.fields.Count do
  begin
    if (Ent[i].Ndf ='')or (Ent[i].Controle='Boite � Liste') then
    begin
      case QList.fields[i-1].DataType of
        ftAutoInc:;
        ftBoolean:QList.fields[i-1].AsBoolean:=ListeCheck[i].Checked;
        else
        begin
          if Ent[i].Controle='Boite � Liste' then
            QList.fields[i-1].AsString:=ListeCombo[i].Text
          else
          begin
            if (mody<>1)or(i<>1) then
              QList.fields[i-1].AsString:=Listeedit[i].Text;
          end;
        end
      end
    end
    else
    begin
      C_Entree:=C_Entree+1;
      if C_Entree=1 then QList.fields[i-1].AsString:=Edit31.Text;
      if C_Entree=2 then QList.fields[i-1].AsString:=Edit32.Text;
    end;
  end;
  //showMessage('eto1');
  QList.Post;
  //QList.Requery;
  for i:=1 to  QList.fields.Count do
   if Ent[i].egale>0 then
   begin
     //DObjet.TListeDonnee.Open;
     //showMessage(QList.Fields[Ent[i].egale-1].Value);
     QList.Edit;
     QList.Fields[i-1].Value :=  QList.Fields[Ent[i].egale-1].Value ;
     QList.Post;
  end;
  //showMessage('eto2');
  //QList.Refresh;
end;

procedure TFSaisieDonnee2.Effacer(ReInsertion:boolean);
VAR i,C_Entree:integer;
begin
  C_Entree:=0;
  QList.insert;
  for i:=1 to  QList.fields.Count do
  begin
    if Ent[i].Ndf ='' then
    begin
      if QList.fields[i-1].DataType <> ftBoolean then
      begin
        if Ent[i].Critere = '=' then
        begin
          if QList.fields[i-1].DataType= ftInteger then
            Listeedit[i].text:= Ent[i].Valeur
          else
            Listeedit[i].text:= copy(Ent[i].Valeur,2,length(Ent[i].Valeur)-2);
          Listeedit[i].ReadOnly:=True;
        end
        else
        begin
          //Listeedit[i].Enabled:=true;
          Listeedit[i].text:='';
        end;
      end
      else
        ListeCheck[i].Checked:=false;
    end
    else
    begin
      C_Entree:=C_entree+1;
      if C_Entree=1 then edit31.Text :=Ent[i].valeur;
      if C_Entree=2 then edit32.Text :=Ent[i].valeur;
    end;
  end;
end;

procedure TFSaisieDonnee2.BitBtn2Click(Sender: TObject);
begin
  QList.CANCEL;
  modalresult:=mrcancel;
end;

procedure TFSaisieDonnee2.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit31.text:=DObjet.T_Entree1.fields[0].AsString;
  Edit33.text:=DObjet.T_Entree1.fields[1].AsString;
  DBGrid1.Visible:=false;
  Edit31.SetFocus;
end;

procedure TFSaisieDonnee2.DBGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit32.text:=DObjet.T_Entree2.fields[0].AsString;
  Edit34.text:=DObjet.T_Entree2.fields[1].AsString;
  DBGrid2.Visible:=false;
  Edit32.SetFocus;
end;

procedure TFSaisieDonnee2.FormShow(Sender: TObject);
begin
{if FSaisie.edit1.Text=inttostr(1) then
      begin
       FSaisieDonnee.label2.visible:=false;
       FSaisieDonnee.edit32.visible:=false;
       FSaisieDonnee.edit34.visible:=false;
      end
    else
    begin
      FSaisieDonnee.label1.visible:=false;
      FSaisieDonnee.edit31.visible:=false;
      FSaisieDonnee.edit33.visible:=false;
    end;}
end;

procedure TFSaisieDonnee2.Edit33Click(Sender: TObject);
begin
  DObjet.T_Entree1.Close;
  DObjet.T_Entree1.TableName:=Label3.Caption;
  DObjet.T_Entree1.Open;
  DBGrid1.Visible:=true;
  DBGrid1.SetFocus;
end;

procedure TFSaisieDonnee2.Edit34Click(Sender: TObject);
begin
  DObjet.T_Entree2.Close;
  DObjet.T_Entree2.TableName:=Label4.Caption;
  DObjet.T_Entree2.Open;
  DBGrid2.visible:=true;
  DBGrid2.SetFocus;
end;

procedure TFSaisieDonnee2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i:integer;
begin
  if key=13 then
  begin
    for i:=1 to QList.fields.Count-1  do
      if ListeEdit[i].focused then ListeEdit[i+1].setfocus;
  end;
end;

procedure TFSaisieDonnee2.BitBtn4Click(Sender: TObject);
var i:integer;
begin
  Enregistrer;
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
  QList.insert;
end;

procedure TFSaisieDonnee2.BitBtn3Click(Sender: TObject);
var i,c_Entree:integer;
begin
  Enregistrer;
  QList.Next;
  if QList.EOF then QList.First;
  for i:=1 to  QList.fields.Count do
  begin
    if Ent[i].Ndf ='' then
    begin
      if QList.fields[i-1].DataType <> ftBoolean then
        Listeedit[i].Text:=QList.fields[i-1].AsString
      else
        ListeCheck[i].Checked:=QList.fields[i-1].AsBoolean;
    end
    else
    begin
      C_Entree:=C_entree+1;
      if C_Entree=1 then edit31.Text :=QList.fields[i-1].AsString;
      if C_Entree=2 then edit32.Text :=QList.fields[i-1].AsString;
    end;
  end;
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
  QList.edit;
end;

end.
