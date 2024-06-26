unit UM_Recherche;

interface

uses
  SysUtils, Classes, DB,ComCtrls, ADODB, StdCtrls,CheckLst,
  controls,ExtCtrls,UObjet;

type
  TMoteurRecherche = class(TDataModule)
    SSpecialitePartenariat: TDataSource;
    SQPartenariat: TDataSource;
    SInterlocuteur: TDataSource;
    SDiplomePartenariat: TDataSource;
    SMotscle: TDataSource;
    SDiplome: TDataSource;
    SActivite: TDataSource;
    SPartenariatActivite: TDataSource;
    SPrix: TDataSource;
    S_Achat: TDataSource;
    S_AchatDetail: TDataSource;
    SProjet: TDataSource;
    SQMission: TDataSource;
    SQTaches_Mission: TDataSource;
    SProduit: TDataSource;
    SCourrier: TDataSource;
    SFichieretDoc: TDataSource;
    SSexe: TDataSource;
    S_QPartenariat: TDataSource;
    procedure SQPartenariatDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    function  ExisteFivComm(Numero:integer):string;
  public
    { Public declarations }
    procedure AffichageLieu(code:integer;Query:TADOQuery;Box:TComboBox);
    procedure InitialisePage(Capt:string;PC:TPageControl;var Sheet:TTabSheet);
    procedure AjoutBox(Tab:TADOTable;box:TComboBox;Nom:string);
    procedure AjoutListBox(Code:String;box:TComboBox;Libellee:string);
    procedure AfficherBox(Box:TComboBox;Text:string);
    procedure AfficherComboCritere(Combo:TComboBox;Code_type:String;C_Partenariat:string);
    procedure AfficherCheckCritere(Check:TCheckListBox;Code_type:String;C_Partenariat:string);
    procedure AjoutListBox2(Code:String;box:TCheckListBox;Libellee:string);
    procedure EnregistrerCritreCombo(NomTable,Code:string;
                                     LL:TListeLabel;LC:TListeCombo;
                                     SC:TArrayTabSheet;CL:TArrayCheckListBox);
    procedure CreerCheckList(Capt:string;PC:TPageControl;
                   var Sheet:TTabSheet;var CL:TCheckListBox);
    procedure CreerCombo(wc:TWinControl;Capt:string;
                      var Lab:TLabel;var cb:TComboBox;indice,nbligne:integer);
  end;

var
  MoteurRecherche: TMoteurRecherche;


procedure CreerMoteurRecherche;
procedure VonoyMoteurRecherche;

implementation

uses Dialogs, Forms,
  URecherche, SaisiAvecCritere;

{$R *.dfm}

procedure CreerMoteurRecherche;
begin
  Application.CreateForm(TMoteurRecherche, MoteurRecherche);
end;

procedure VonoyMoteurRecherche;
begin
  MoteurRecherche.Free;
end;

procedure TMoteurRecherche.InitialisePage(Capt:string;PC:TPageControl;var Sheet:TTabSheet);
begin
  Sheet:=TTabSheet.Create(PC);
  Sheet.PageControl := PC;
  Sheet.Caption := Capt ;
end;

procedure TMoteurRecherche.CreerCombo(wc:TWinControl;Capt:string;

                      var Lab:TLabel;var cb:TComboBox;indice,nbligne:integer);
begin
  Lab:=TLabel.Create(self);
  Lab.parent:= wc;
  Lab.width:= 1000;
  Lab.left:=175*((indice-1) div nbligne)+nbligne;
  Lab.top:=20+50*((indice-1) mod nbligne)+nbligne;
  Lab.caption:=Capt;
  CB:=TComboBox.Create(self);
  CB.parent:= wc;
  CB.left:=175*((indice-1) div nbligne)+nbligne;
  CB.top:=20+50*((indice-1) mod nbligne)+25;
  CB.width:=150;
end;

procedure TMoteurRecherche.CreerCheckList(Capt:string;PC:TPageControl;
                   var Sheet:TTabSheet;var CL:TCheckListBox);
begin
  InitialisePage(Capt,PC,Sheet);
  CL:=TCheckListBox.Create(self);
  CL.parent:= Sheet;
  CL.left:=0;
  CL.top:=0;
  CL.align:=alClient;
end;

procedure TMoteurRecherche.EnregistrerCritreCombo(NomTable,Code:string;
                               LL:TListeLabel;LC:TListeCombo;
                               SC:TArrayTabSheet;CL:TArrayCheckListBox);
var i,index,k:integer;
begin
  //R�cup�rer Cl� de la table et type
  DObjet.Q_ListeTable.Close;
  DObjet.Q_ListeTable.Parameters[0].value:=NomTable;
  DObjet.Q_ListeTable.Open;
  if (DObjet.Q_ListeTable.Fields[2].Value<>'String')and
     (DObjet.Q_ListeTable.Fields[2].Value<>'Integer')then
  begin
    showMessage('Param�trez la Table '+Nomtable+' avant de l''utiliser ');
    exit;
  end;
  //showMessage('Table '+Nomtable+' '+DObjet.Q_ListeTable.Fields[2].Value );
  //Supprimer tous les crit�res
  DObjet.Q_CritereTable.close;
  DObjet.Q_CritereTable.SQL.Clear;
  DObjet.Q_CritereTable.SQL.Add('select * from CritereTable');
  DObjet.Q_CritereTable.SQL.Add('where (NomTable=:a)and');
  if upperCase(DObjet.Q_ListeTable.Fields[2].Value )='STRING' then
    DObjet.Q_CritereTable.SQL.Add('(CleString=:b)')
  else
    DObjet.Q_CritereTable.SQL.Add('(CleInteger=:b)');
  DObjet.Q_CritereTable.Parameters[0].Value :=NomTable;
  DObjet.Q_CritereTable.Parameters[1].Value :=Code;
  //for i:=0 to DObjet.Q_CritereTable.SQL.Count-1 do
    //showMessage(DObjet.Q_CritereTable.SQL[i]);
  DObjet.Q_Criteretable.Open;
  while not DObjet.Q_Criteretable.EOF do DObjet.Q_CritereTable.Delete;
  //showMessage('Suppression termin�e.' );
  // Determination nombre de crit�re � une seul valeur
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[0].Value :=NomTable;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=1;
  DObjet.Q_CritereTypeTable.Open;
  //showMessage('Nombre des combobox ='+IntToStr(DObjet.Q_CritereTypeTable.RecordCount));
  //for i:=0 to DObjet.Q_TypCritere.SQL.Count-1 do
    //showMessage('QType crit�re: '+ DObjet.Q_TypCritere.SQL[i]);
  // Enregistrement crit�re au nombre de combobox
  for i:=1 to DObjet.Q_CritereTypeTable.recordCount do
  begin
    index:=LC[i].ItemIndex;
    if index>=0 then
    begin
      DObjet.Q_TypCritere.Close;
      DObjet.Q_TypCritere.Parameters[0].Value:=LL[i].Caption;
      DObjet.Q_TypCritere.Parameters[1].Value:=LC[i].Items[Index];
      DObjet.Q_TypCritere.Open;
      //showMessage('1'+LL[i].Caption+'=>'+LC[i].Items[Index]+'=>'+IntTostr(DObjet.Q_TypCritere.Fields[2].Value));
      DObjet.Q_CritereTable.Insert;
      DObjet.Q_CritereTable.Fields[1].value:=DObjet.Q_TypCritere.Fields[2].Value;
      DObjet.Q_CritereTable.Fields[2].value:=NomTable;
      if upperCase(DObjet.Q_ListeTable.Fields[2].Value )='STRING' then
        DObjet.Q_CritereTable.Fields[3].Value :=Code
      else
        DObjet.Q_CritereTable.Fields[4].value:=strToInt(Code);
      //showMessage('2'+LL[i].Caption+'=>'+LC[i].Items[Index]+'=>'+IntTostr(DObjet.Q_TypCritere.Fields[2].Value));
      DObjet.Q_CritereTable.Post;
    end
  end;
  //showMessage('Enregistrement combobox termin�');
  // Determination nombre de crit�re � deux seul valeur
  DObjet.Q_CritereTypeTable.Close;
  DObjet.Q_CritereTypeTable.Parameters[0].Value :=NomTable;
  DObjet.Q_CritereTypeTable.Parameters[1].Value :=2;
  DObjet.Q_CritereTypeTable.Open;
  //showMessage('Nombre des Check liste ='+IntToStr(DObjet.Q_CritereTypeTable.RecordCount));
  // Enregistrement crit�re au nombre de check liste
  for i:=1 to DObjet.Q_CritereTypeTable.recordCount do
  begin
    //showMessage('CL:'+IntTostr(i));
    for k:=0 to CL[i].Count-1 do
    begin
      //showMessage('CL:'+IntTostr(i)+' Index:'+IntTostr(k));
      if CL[i].Checked[k] then
      begin
        DObjet.Q_TypCritere.Close;
        DObjet.Q_TypCritere.Parameters[0].Value:=SC[i].Caption;
        DObjet.Q_TypCritere.Parameters[1].Value:=CL[i].Items[k];
        DObjet.Q_TypCritere.Open;
        //showMessage(SC[i].Caption+'=>'+CL[i].Items[k]+'=>'+IntTostr(DObjet.Q_TypCritereNumero.Value));
        DObjet.Q_CritereTable.Insert;
        DObjet.Q_CritereTable.Fields[1].value:=DObjet.Q_TypCritere.Fields[2].Value;
        DObjet.Q_CritereTable.Fields[2].value:=NomTable;
        if upperCase(DObjet.Q_ListeTable.Fields[2].Value )='STRING' then
          DObjet.Q_CritereTable.Fields[3].Value :=Code
        else
          DObjet.Q_CritereTable.Fields[4].value:=strToInt(Code);
        DObjet.Q_CritereTable.Post;
      end;
    end;
  end;
  //showMessage('Enregistrement Check list termin�');
end;

procedure TMoteurRecherche.AjoutBox(Tab:TADOTable;box:TComboBox;Nom:string);
begin
  Tab.Open;
  box.Items.Clear;
  while not Tab.EOF do
  begin
    box.Items.Add(Tab.FieldByName(Nom).Value);
    Tab.Next;
  end;
end;

procedure TMoteurRecherche.AfficherBox(Box:TComboBox;Text:string);
var i:integer;
begin
  for i:=0 to Box.Items.Count do
  begin
    if Box.Items[i]=Text then break;
  end;
  Box.ItemIndex:=i;
end;

function  TMoteurRecherche.ExisteFivComm(Numero:integer):string;
begin
end;

procedure TMoteurRecherche.AjoutListBox(Code:String;box:TComboBox;Libellee:string);
begin
  DObjet.Q_Critere.Close;
  DObjet.Q_Critere.Parameters[0].Value := Code;
  DObjet.Q_Critere.Open;
  box.Items.Clear;
  while not DObjet.Q_Critere.EOF do
  begin
    box.Items.Add(DObjet.Q_Critere.FieldByName(Libellee).Value);
    DObjet.Q_Critere.Next;
  end;
end;

procedure TMoteurRecherche.AjoutListBox2(Code:String;box:TCheckListBox;Libellee:string);
begin
  DObjet.Q_Critere.Close;
  DObjet.Q_Critere.Parameters[0].Value := Code;
  DObjet.Q_Critere.Open;
  box.Items.Clear;
  while not DObjet.Q_Critere.EOF do
  begin
    box.Items.Add(DObjet.Q_Critere.FieldByName(Libellee).Value);
    DObjet.Q_Critere.Next;
  end;
end;

procedure TMoteurRecherche.AfficherComboCritere(combo:TComboBox;Code_type:String;C_Partenariat:string);
var i:integer;
begin
  DObjet.CocherCritere.close;
  DObjet.CocherCritere.Parameters[0].Value :=Code_Type;
  DObjet.CocherCritere.Parameters[1].Value :=C_Partenariat;
  DObjet.CocherCritere.Open;

  Combo.ItemIndex:=-1;
  if not DObjet.CocherCritere.EOF then
  begin
    for i:=0 to Combo.Items.Count -1 do
    begin
      if DObjet.CocherCritere.FieldByName('Libelle').Value=combo.Items[i] then
      begin
        Combo.ItemIndex:=i;
        break;
      end;
      DObjet.CocherCritere.Next;
    end;
  end;
end;


procedure TMoteurRecherche.AfficherCheckCritere(Check:TCheckListBox;Code_type:String;C_Partenariat:string);
var i:integer;
begin
  DObjet.CocherCritere.close;
  DObjet.CocherCritere.Parameters[0].Value :=Code_Type;
  DObjet.CocherCritere.Parameters[1].Value :=C_Partenariat;
  DObjet.CocherCritere.Open;
  {for i:=0 to DObjet.CocherCritere.SQL.Count  -1 do
  begin
    showMessage('SQL:'+DObjet.CocherCritere.SQL[i]);
  end;  }
  //showMessage('CodeType:'+Code_Type+' C_Partenariat:'+C_Partenariat+' Nb:'+IntToStr(DObjet.CocherCritere.RecordCount ));

  for i:=0 to Check.Items.Count -1 do Check.Checked[i]:=false;
  DObjet.CocherCritere.First;
  while not DObjet.CocherCritere.EOF do
  begin
    //showMessage(DObjet.CocherCritere.FieldByName('Libelle').Value);
    for i:=0 to Check.Items.Count -1 do
    begin
      if DObjet.CocherCritere.FieldByName('Libelle').Value=Check.Items[i] then
        Check.Checked[i]:=True;
    end;
    DObjet.CocherCritere.Next;
  end;
end;

procedure TMoteurRecherche.AffichageLieu(code:integer;Query:TADOQuery;Box:TComboBox);
var i:integer;
begin
  Query.close;
  Query.Parameters[0].Value:=code;
  Query.open;
  for i:=0 to Box.Items.Count-1 do
    if Query.FieldByName('Nom').value=Box.Items[i] then break;
  if i=Box.Items.Count then
    Box.ItemIndex :=-1
  else
    Box.ItemIndex :=i;
end;


procedure TMoteurRecherche.SQPartenariatDataChange(Sender: TObject; Field: TField);
//var i:integer;
begin
  {i:=1;
  DObjet.TTypeCritere.Open;
  DObjet.TTypeCritere.First;
  while not DObjet.TTypeCritere.EOF do
  begin
    AfficherCritere(FSaiAvecCritere.ListeCombo[i],DObjet.TTypeCritereCode.Value,
                  DObjet.Q_PartenariatCode.value);
    i:=i+1;
    DObjet.TTypeCritere.Next;
  end;}
end;

end.
