unit SaisiAvecCritere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  DB, ADODB, Mask, CheckLst, Tabs, UM_Recherche, UObjet;


type
  TFSaiAvecCritere = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBNavigator2: TDBNavigator;
    Panel3: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    DataSource1: TDataSource;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    PageControl3: TPageControl;
    Panel6: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel7: TPanel;
    Edit1: TEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    DataSource3: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton8: TSpeedButton;
    BitBtn8: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
    NoChange:boolean;
    NumChampDetail,ModeDetail:integer;
    ListeLabelMaitre:array[1..30] of TLabel;
    ListeEditMaitre:array[1..30] of TEdit;
    ListeCheckMaitre:array[1..30] of TCheckBox;
    ListeComboMaitre:array[1..30] of TComboBox;
    ListeLabelDetail:array[1..30] of TLabel;
    ListeEditDetail:array[1..30] of TEdit;
    ListeCheckDetail:array[1..30] of TCheckBox;
    ListeComboDetail:array[1..30] of TComboBox;
    ListeComboCritere:TListeCombo;
    ListeLabelCritere:TListeLabel;
    ListeSheetCritere:TArrayTabSheet;
    ListeCheckCritere:TArrayCheckListBox;
    procedure EffacerCritere(CL:TCheckListBox);
    procedure AfficherMaitre(Code:string);
    procedure Inserer;
  public
    { Public declarations }
    procedure Asehoy(Titre:string;Ajout:boolean;NdfMaitre,Code,ChpMaitre,NdfDetail,ChpDetail:string);
  end;

const modeAucun=0;
const modeAjout=1;
const modeModif=2;

var
  FSaiAvecCritere: TFSaiAvecCritere;
  TableMaitre:string;
  ChampDetail:string;

procedure AsehoySaisiAvecCritere(Titre:string;Ajout:Boolean;odbc,Chemin,NdfMaitre,Code,
                                  ChpMaitre,NdfDetail,ChpDetail:string;
                                  EntMaitre,EntDetail:TEntree);export;
procedure AsehoySaisiAvecCritere2(Titre:string;Ajout:Boolean;NdfMaitre,Code,
                                  ChpMaitre,NdfDetail,ChpDetail:string);
procedure OuvrirTable(NdfMaitr,NdfDet,ChpDetail:string);

implementation

uses ERecheche;


{$R *.dfm}

procedure AsehoySaisiAvecCritere(Titre:string;Ajout:Boolean;odbc,Chemin,NdfMaitre,Code,
                                   ChpMaitre,NdfDetail,ChpDetail:string;
                                   EntMaitre,EntDetail:TEntree);
begin
  EntreeMaitre1:=EntMaitre;
  Entree:=EntDetail;
  TableMaitre:=NdfMaitre;
  try
    CreerDObjet;
    CreerMoteurRecherche;
    DObjet.ChangeConnection(odbc,chemin);
    OuvrirTable(NdfMaitre,NdfDetail,ChpDetail);
    Application.CreateForm(TFSaiAvecCritere, FSaiAvecCritere);
    FSaiAvecCritere.Asehoy(Titre,Ajout,NdfMaitre,Code,ChpMaitre,NdfDetail,ChpDetail);
  finally
    FSaiAvecCritere.Free;
    VonoyMoteurRecherche;
    VonoyDObjet;
  end;
end;

procedure OuvrirTable(NdfMaitr,NdfDet,ChpDetail:string);
begin
  ChampDetail:=ChpDetail;
  DObjet.T_TableMaitre.close;
  DObjet.T_TableMaitre.TableName := NdfMaitr;
  DObjet.T_TableMaitre.Open;
  DObjet.T_TableDetail.close;
  DObjet.T_TableDetail.TableName := NdfDet;
  DObjet.T_TableDetail.Open;
end;

procedure AsehoySaisiAvecCritere2(Titre:string;Ajout:Boolean;NdfMaitre,Code,
                                  ChpMaitre,NdfDetail,ChpDetail:string);
begin
  TableMaitre:=NdfMaitre;
  try
    OuvrirTable(NdfMaitre,NdfDetail,ChpDetail);
    Application.CreateForm(TFSaiAvecCritere, FSaiAvecCritere);
    FSaiAvecCritere.Asehoy(Titre,Ajout,NdfMaitre,Code,ChpMaitre,NdfDetail,
                                     ChpDetail);
  finally
    FSaiAvecCritere.Free;
  end;
end;

procedure TFSaiAvecCritere.Asehoy(Titre:string;Ajout:boolean;NdfMaitre,Code,ChpMaitre,
                                       NdfDetail, ChpDetail:string);
var i:integer;
begin
  Caption:=Titre;
  ModeDetail:=ModeAucun;Label1.Caption :='Mode : Aucun';
  NoChange:=false;
  DObjet.CocherCritere.close;
  DObjet.CocherCritere.SQL.Clear ;
  DObjet.CocherCritere.SQL.Add('Select * from CritereTable x, Critere y');
  DObjet.CocherCritere.SQL.Add('where (x.N_Critere=y.Numero) and (y.Code_Type=:a)');
  if DObjet.T_TableMaitre.Fields[0].Datatype=ftInteger then
    DObjet.CocherCritere.SQL.Add('and(CleInteger=:b)')
  else
    DObjet.CocherCritere.SQL.Add('and(CleString=:b)');
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[0].Value :=TableMaitre;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=1;
  DObjet.Q_CritereTypeTable.Open;
  i:=1;
  while not DObjet.Q_CritereTypeTable.EOF do
  begin
    MoteurRecherche.AjoutListBox(DObjet.Q_CritereTypeTable.Fields[1].Value,ListeComboCritere[i],'Libelle');
    i:=i+1;
    DObjet.Q_CritereTypeTable.Next;
  end;
  DObjet.Q_TableMaitre.Close;
  DObjet.Q_TableMaitre.SQL.Clear;
  DObjet.Q_TableMaitre.SQL.Add('select * from '+NdfMaitre );
  DObjet.Q_TableMaitre.SQL.Add('where '+DObjet.T_TableMaitre.Fields[0].FieldName+'=:a');
  DObjet.Q_TableMaitre.Parameters[0].Value :=Code;

  DObjet.Q_TableDetail.Close;
  DObjet.Q_TableDetail.SQL.Clear;
  DObjet.Q_TableDetail.SQL.Add('select * from '+NdfDetail );
  DObjet.Q_TableDetail.SQL.Add('where '+ChpDetail+'=:a');
  DObjet.Q_TableDetail.Parameters[0].Value :=Code;

  DObjet.Q_TableMaitre.Open;

  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[0].Value :=TableMaitre;
  if not Ajout then
    Edit1.text:=DObjet.Q_TableMaitre.fields[0].AsString;

  ShowModal;
end;

procedure TFSaiAvecCritere.AfficherMaitre(Code:string);
var IsPrimaire:boolean;
    i:Integer;
begin
  IsPrimaire:=True;
  for i:=1 to  DObjet.Q_TableMaitre.fields.Count do
  begin
    if DObjet.Q_TableMaitre.fields[i-1].DataType <> ftBoolean then
    begin
      if EntreeMaitre1[i].Controle='Boite à Liste' then
        ListeComboMaitre[i].Text:=DObjet.Q_TableMaitre.fields[i-1].AsString
      else
        ListeeditMaitre[i].Text:=DObjet.Q_TableMaitre.fields[i-1].AsString;
    end
    else
      ListeCheckMaitre[i].Checked:=DObjet.Q_TableMaitre.fields[i-1].AsBoolean;
  end;
  //Nombre de combo
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=1;
  DObjet.Q_CritereTypeTable.Open;
  //Affichage combo
  if code>'' then
  begin
    i:=1;
    while not DObjet.Q_CritereTypeTable.EOF do
    begin
      MoteurRecherche.AfficherComboCritere(ListeComboCritere[i],DObjet.Q_CritereTypeTable.Fields[1].Value,
                DObjet.Q_Selection.Fields[0].AsString);
      i:=i+1;
      DObjet.Q_CritereTypeTable.Next;
    end;
  end
  else
  begin
    i:=1;
    DObjet.Q_CritereTypeTable.First;
    while not DObjet.Q_CritereTypeTable.EOF do
    begin
      ListeComboCritere[i].ItemIndex :=-1;
      i:=i+1;
      DObjet.Q_CritereTypeTable.Next;
    end;
  end;
  //Affichage checkListe
  //Nombre de combo
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=2;
  DObjet.Q_CritereTypeTable.Open;
  //Affichage combo
  i:=1;
  while not DObjet.Q_CritereTypeTable.EOF do
  begin
    MoteurRecherche.AfficherCheckCritere(ListeCheckCritere[i],DObjet.Q_CritereTypeTable.Fields[1].Value,
                DObjet.Q_Selection.Fields[0].AsString);
    i:=i+1;
    DObjet.Q_CritereTypeTable.Next;
  end;

end;


procedure TFSaiAvecCritere.EffacerCritere(CL:TCheckListBox);
var i:integer;
begin
  for i:=0 to CL.Count -1 do
    CL.Checked[i]:=false;
end;

procedure TFSaiAvecCritere.FormCreate(Sender: TObject);
var i,nbligne:integer;
  IsPrimaire:boolean;
begin
  //==========Controle Maitre=================
  IsPrimaire:=True;
  for i:=1 to  DObjet.T_TableMaitre.fields.Count do
  begin
      case DObjet.T_TableMaitre.fields[i-1].DataType of
        //ftAutoInc:;
        ftboolean:
        begin
          ListeCheckMaitre[i]:=TCheckBox.Create(self);
          ListeCheckMaitre[i].parent:=Panel5;//PageControl1.Pages[0];
          ListeCheckMaitre[i].left:=2+260*((i-1) div 8);
          ListeCheckMaitre[i].top:=10+25*((i-1) mod 8);
          ListeCheckMaitre[i].caption:=DObjet.T_TableMaitre.fields[i-1].FieldName;
        end;
        else
        begin
          ListeLabelMaitre[i]:=TLabel.Create(self);
          ListeLabelMaitre[i].parent:=Panel5;//PageControl1.Pages[0];
          ListeLabelMaitre[i].left:=240*((i-1) div 8);
          //ListeLabel[i].Alignment:=taRightJustify;
          ListeLabelMaitre[i].top:=10+25*((i-1) mod 8);
          ListeLabelMaitre[i].caption:=DObjet.Traduire(DObjet.T_TableMaitre.fields[i-1].FieldName);
          if (EntreeMaitre1[i].Controle='Boite à Liste') then
          begin
            ListeComboMaitre[i]:=TComboBox.Create(self);
            ListeComboMaitre[i].parent:=Panel5;//PageControl1.Pages[0];
            ListeComboMaitre[i].left:=70+250*((i-1) div 8);
            ListeComboMaitre[i].top:=10+25*((i-1) mod 8);
            ListeComboMaitre[i].width:=5*DObjet.T_TableMaitre.fields[i-1].DisplayWidth ;
            if ListeComboMaitre[i].width>200 then ListeComboMaitre[i].width:=200;
              //Moteur.ChargerCombo(EntreeMaitre1[i].ndf,EntreeMaitre1[i].ndc,ListeCombo[i]);
          end
          else
          begin
            ListeeditMaitre[i]:=TEdit.Create(self);
            ListeeditMaitre[i].parent:=Panel5;//PageControl1.Pages[0];
            ListeeditMaitre[i].left:=70+250*((i-1) div 8);
            ListeeditMaitre[i].top:=10+25*((i-1) mod 8);
            ListeeditMaitre[i].width:=5*DObjet.T_TableMaitre.fields[i-1].DisplayWidth ;
            if ListeeditMaitre[i].width>150 then ListeeditMaitre[i].width:=150;
            if IsPrimaire then
            begin
              ListeeditMaitre[i].Visible:=False;
              IsPrimaire:=False;
            end;
          end;
        end;
      end;
  end;
  //==========Controle Detail=================
  nbligne:=8;
  for i:=1 to  DObjet.T_TableDetail.fields.Count do
  begin
    //showMessage('champDetail='+champDetail+';FieldName='+DObjet.T_TableDetail.fields[i-1].FieldName);
    if DObjet.T_TableDetail.fields[i-1].FieldName = champDetail then
      NumChampDetail:=i;
    case DObjet.T_TableDetail.fields[i-1].DataType of
      ftAutoInc:;
      ftboolean:
        begin
          ListeCheckDetail[i]:=TCheckBox.Create(self);
          ListeCheckDetail[i].parent:=TabSheet3;//PageControl1.Pages[0];
          ListeCheckDetail[i].left:=2+200*((i-1) div nbligne);
          ListeCheckDetail[i].top:=25*((i-1) mod nbligne);
          ListeCheckDetail[i].caption:=DObjet.T_TableDetail.fields[i-1].FieldName;
        end;
      //autre que autoIncrement et boolean;
      else
      begin
        ListeLabelDetail[i]:=TLabel.Create(self);
        ListeLabelDetail[i].parent:=TabSheet3;//PageControl1.Pages[0];
        ListeLabelDetail[i].left:=200*((i-1) div nbligne);
        //ListeLabel[i].Alignment:=taRightJustify;
        ListeLabelDetail[i].top:=25*((i-1) mod nbligne);
        ListeLabelDetail[i].caption:=DObjet.Traduire(DObjet.T_TableDetail.fields[i-1].FieldName);
        if (Entree[i].Controle='Boite à Liste') then
        begin
          ListeComboDetail[i]:=TComboBox.Create(self);
          ListeComboDetail[i].parent:=TabSheet3;//PageControl1.Pages[0];
          ListeComboDetail[i].left:=100+200*((i-1) div nbligne);
          ListeComboDetail[i].top:=25*((i-1) mod nbligne);
          ListeComboDetail[i].width:=5*DObjet.T_TableDetail.fields[i-1].DisplayWidth ;
          if ListeComboDetail[i].width>200 then ListeComboDetail[i].width:=200;
          //Moteur.ChargerCombo(EntreeMaitre1[i].ndf,EntreeMaitre1[i].ndc,ListeCombo[i]);
        end
        else
        begin
          ListeeditDetail[i]:=TEdit.Create(self);
          ListeeditDetail[i].parent:=TabSheet3;//PageControl1.Pages[0];
          ListeeditDetail[i].left:=100+200*((i-1) div nbligne);
          ListeeditDetail[i].top:=25*((i-1) mod nbligne);
          ListeeditDetail[i].width:=5*DObjet.T_TableDetail.fields[i-1].DisplayWidth ;
          if ListeeditDetail[i].width>100 then ListeeditDetail[i].width:=100;
        end;
      end;
    end;
  end;

  //=======================Critere===============================
  // Créer les comboBox au nombre de critère à une valeur
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[0].Value :=TableMaitre;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=1;
  DObjet.Q_CritereTypeTable.Open;
  i:=1;
  while not DObjet.Q_CritereTypeTable.Eof do
  begin
    MoteurRecherche.CreerCombo(GroupBox3,DObjet.Q_CritereTypeTable.Fields[5].Value,
                      ListeLabelCritere[i],ListeComboCritere[i],i,6);
    i:=i+1;
    DObjet.Q_CritereTypeTable.Next;
  end;
  // Créer les comboBox au nombre de critère à plusieurs valeurs
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[0].Value :=TableMaitre;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=2;
  DObjet.Q_CritereTypeTable.Open;
  i:=1;
  while not DObjet.Q_CritereTypeTable.Eof do
  begin
    MoteurRecherche.CreerCheckList(DObjet.Q_CritereTypeTable.Fields[1].Value,
         PageControl3,ListesheetCritere[i],ListeCheckCritere[i]);
    i:=i+1;
    DObjet.Q_CritereTypeTable.Next;
  end;
  i:=1;
  DObjet.Q_CritereTypeTable.First;
  while not DObjet.Q_CritereTypeTable.EOF do
  begin
    MoteurRecherche.AjoutListBox2(DObjet.Q_CritereTypeTable.Fields[1].Value,ListeCheckCritere[i],'Libelle');
    i:=i+1;
    DObjet.Q_CritereTypeTable.Next;
  end;
end;

procedure TFSaiAvecCritere.BitBtn1Click(Sender: TObject);
begin
  Inserer;
  Close;
end;


procedure TFSaiAvecCritere.Inserer;
var i:integer;
begin
  //try
    DObjet.Q_TableMaitre.Edit;
    for i:=1 to  DObjet.Q_TableMaitre.fields.Count do
    begin
      case DObjet.Q_TableMaitre.fields[i-1].DataType of
        ftAutoInc:;
        ftBoolean:DObjet.Q_TableMaitre.fields[i-1].AsBoolean:=ListeCheckMaitre[i].Checked;
        else
        begin
          if EntreeMaitre1[i].Controle='Boite à Liste' then
            DObjet.Q_TableMaitre.fields[i-1].AsString:=ListeComboMaitre[i].Text
          else
            DObjet.Q_TableMaitre.fields[i-1].AsString:=ListeeditMaitre[i].Text;
        end
      end
    end;
    DObjet.Q_TableMaitre.fields[0].AsString:=Edit1.Text ;
    DObjet.Q_TableMaitre.Post;
    MoteurRecherche.EnregistrerCritreCombo(TableMaitre,DObjet.Q_TableMaitre.Fields[0].AsString,
                                         ListeLabelCritere,ListeComboCritere,
                                         ListeSheetCritere,ListeCheckCritere);

  {except
   // On EDataBaseError do
    begin
      ShowMessage('Vérifier la saisie ');
      exit;
    end;
  end;}
end;


procedure TFSaiAvecCritere.BitBtn2Click(Sender: TObject);
begin
  DObjet.Q_tableMaitre.cancel;
  Close;
end;

procedure TFSaiAvecCritere.DataSource2DataChange(Sender: TObject;
  Field: TField);
var i:integer;
begin
  if NoChange then exit;
  for i:=1 to  DObjet.Q_TableDetail.fields.Count do
  begin
    try
      if DObjet.Q_TableDetail.fields[i-1].DataType <> ftBoolean then
      begin
        if Entree[i].Controle='Boite à Liste' then
          ListeComboDetail[i].Text:=DObjet.Q_TableDetail.fields[i-1].AsString
        else
          ListeeditDetail[i].Text:=DObjet.Q_TableDetail.fields[i-1].AsString;
      end
      else
        ListeCheckMaitre[i].Checked:=DObjet.Q_TableDetail.fields[i-1].AsBoolean;
    except
    end;
  end;
end;

procedure TFSaiAvecCritere.BitBtn3Click(Sender: TObject);
var i:integer;
begin
  ModeDetail:=ModeAjout;Label1.Caption :='Mode : Ajout';
  PageControl2.ActivePage := TabSheet3;
  for i:=1 to  DObjet.Q_TableDetail.fields.Count do
  begin
    case DObjet.Q_TableDetail.fields[i-1].DataType of
      ftAutoInc:;
      ftBoolean:ListeCheckDetail[i].Checked:=false;
      else
      begin
        if Entree[i].Controle='Boite à Liste' then
          ListeComboDetail[i].ItemIndex:=-1
        else
          ListeeditDetail[i].Text:='';
      end
    end
  end;
  ListeEditDetail[NumChampDetail].Text :=Edit1.text;
end;

procedure TFSaiAvecCritere.BitBtn5Click(Sender: TObject);
begin
  ModeDetail:=ModeAjout;Label1.Caption :='Mode : Modification';
  PageControl2.ActivePage := TabSheet3;
end;

procedure TFSaiAvecCritere.BitBtn4Click(Sender: TObject);
begin
  DObjet.Q_TableDetail.Delete;
end;

procedure TFSaiAvecCritere.Edit1Change(Sender: TObject);
begin
  DObjet.Q_TableMaitre.Close;
  DObjet.Q_TableMaitre.Parameters[0].Value :=Edit1.text;
  DObjet.Q_TableMaitre.Open;
  if (not DObjet.Q_TableMaitre.Eof) or (Edit1.text='') then
     AfficherMaitre(Edit1.text);
  //showMessage('NumChampDetail='+IntToStr(NumChampDetail));
  ListeEditDetail[NumChampDetail].Text :=Edit1.text;
end;

procedure TFSaiAvecCritere.BitBtn6Click(Sender: TObject);
var i:integer;
begin
  NoChange:=True;
  Case ModeDetail of
    ModeAucun:begin   NoChange:=False; exit; end;
    ModeAjout:DObjet.Q_TableDetail.Insert;
    ModeModif:DObjet.Q_TableDetail.Edit;
  end;
  for i:=1 to  DObjet.Q_TableDetail.fields.Count do
  begin
      case DObjet.Q_TableDetail.fields[i-1].DataType of
        ftAutoInc:;
        ftBoolean:DObjet.Q_TableDetail.fields[i-1].AsBoolean:=ListeCheckDetail[i].Checked;
        else
        begin
          if Entree[i].Controle='Boite à Liste' then
            DObjet.Q_TableDetail.fields[i-1].AsString:=ListeComboDetail[i].Text
          else
            DObjet.Q_TableDetail.fields[i-1].AsString:=ListeeditDetail[i].Text;
        end
      end
  end;
  DObjet.Q_TableDetail.Post;
  ModeDetail:=ModeAucun; Label1.Caption :='Mode : Aucun';
  PageControl2.ActivePage := TabSheet1;
  NoChange:=false;
end;

procedure TFSaiAvecCritere.BitBtn7Click(Sender: TObject);
begin
  DObjet.Q_TableDetail.Cancel;
  PageControl2.ActivePage := TabSheet1;
  ModeDetail:=ModeAucun; Label1.Caption :='Mode : Aucun';
end;

procedure TFSaiAvecCritere.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  DObjet.Q_TableDetail.Close;
  DObjet.Q_TableDetail.Parameters[0].Value :=DObjet.Q_TableMaitre.fields[0].value;
  DObjet.Q_TableDetail.Open;
end;

procedure TFSaiAvecCritere.SpeedButton1Click(Sender: TObject);
begin
  ImprimerRecherche(NumChampDetail);
end;

procedure TFSaiAvecCritere.SpeedButton8Click(Sender: TObject);
begin
  if MessageDlg('Etes-vous sûre de supprimer l''enregistrement en cours?',
     mtConfirmation,[mbyes,mbNo],0)=mrYes then
  begin
    while not DObjet.Q_TableDetail.Eof do
      DObjet.Q_TableDetail.Delete;
    DObjet.Q_TableMaitre.Delete;
    close;
  end;
end;

procedure TFSaiAvecCritere.BitBtn8Click(Sender: TObject);
begin
  Inserer;
  Edit1.Text :='';
end;

end.
