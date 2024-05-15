unit MoteurRecherche;

interface

uses
  SysUtils, Classes, DB,ComCtrls, ADODB, StdCtrls,CheckLst,
  controls,ExtCtrls;

type
  TArrayTabSheet=array[1..20]of TTabSheet;
  TArrayCheckListBox=array[1..20]of TCheckListBox;
  TListeCombo=array[1..20]of TComboBox;
  TListeLabel=array[1..20]of TLabel;
  TMoteur = class(TDataModule)
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
    procedure DBEdit1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure SQPartenariatDataChange(Sender: TObject; Field: TField);
    procedure SProduitDataChange(Sender: TObject; Field: TField);
    procedure SPrixDataChange(Sender: TObject; Field: TField);
    procedure S_AchatDataChange(Sender: TObject; Field: TField);
    procedure SProjetDataChange(Sender: TObject; Field: TField);
    procedure SQMissionDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    function ExisteFivComm(Numero:integer):string;
  public
    { Public declarations }
    procedure AffichageLieu(code:integer;Query:TADOQuery;Box:TComboBox);
    procedure ChangePage;
    procedure AfficherTypesociete;
    procedure InitialisePage(Capt:string;PC:TPageControl;var Sheet:TTabSheet);
    procedure AjoutBox(Tab:TADOTable;box:TComboBox;Nom:string);
    procedure AjoutListBox(Numero:integer;box:TComboBox;Libellee:string);
    procedure ListeCommune_Fiv;
    procedure AfficherBox(Box:TComboBox;Text:string);
    procedure AfficherCritere(Combo:TComboBox;N_type:integer;C_Partenariat:string);
    procedure AfficherSocieteCommercial(N_Produit:integer);
    procedure AfficherAchat_SocieteCommercial(C_Partenariat:String);
    procedure AfficherAchatDetait(N_Achat:integer);
    procedure ListeMission_Projet(N_Projet:integer);
    procedure ListeTache_Mission(N_Mission:integer);
    procedure AjoutListBox2(Numero:integer;box:TCheckListBox;Libellee:string);
    procedure EnregistrerCritre(C_partenariat:string);
    procedure CreerCheckList(Capt:string;PC:TPageControl;
                   var Sheet:TTabSheet;var CL:TCheckListBox);
    procedure CreerCombo(wc:TWinControl;Capt:string;
                      var Lab:TLabel;var cb:TComboBox;indice:integer);
  end;

var
  Moteur: TMoteur;

implementation

uses UObjet,ImpMAJ1,UPrincip1,Dialogs, UAchat,
  UBailleurdefonds, URecherche, UPartenariat;

{$R *.dfm}


procedure TMoteur.AfficherTypesociete;
begin
  DObjet.Q_TypeSociete.Close;
  DObjet.Q_TypeSociete.parameters[0].Value:=FRecherche.PageControl1.ActivePage.Caption;
  DObjet.Q_TypeSociete.Open;
end;

procedure TMoteur.ChangePage;
begin
  DObjet.Q_TypeSociete.Close;
  DObjet.Q_TypeSociete.Parameters[0].Value :=FRecherche.PageControl1.ActivePage.Caption;
  DObjet.Q_TypeSociete.Open;
  DObjet.Q_Partenariat.Close;
  DObjet.Q_Partenariat.Parameters[0].Value :=DObjet.Q_TypeSocieteCode.Value;
  DObjet.Q_Partenariat.Open;
end;

procedure TMoteur.InitialisePage(Capt:string;PC:TPageControl;var Sheet:TTabSheet);
var i:integer;

begin
  Sheet:=TTabSheet.Create(PC);
  Sheet.PageControl := PC;
  Sheet.Caption := Capt ;
end;

procedure TMoteur.CreerCombo(wc:TWinControl;Capt:string;
                      var Lab:TLabel;var cb:TComboBox;indice:integer);
begin
  Lab:=TLabel.Create(self);
  Lab.parent:= wc;
  Lab.left:=200*((indice-1) div 10)+10;
  Lab.top:=20+50*((indice-1) mod 10)+10;
  Lab.caption:=Capt +' :';
  CB:=TComboBox.Create(self);
  CB.parent:= wc;
  CB.left:=200*((indice-1) div 10)+10;
  CB.top:=20+50*((indice-1) mod 10)+25;
  CB.width:=180;
end;

procedure TMoteur.CreerCheckList(Capt:string;PC:TPageControl;
                   var Sheet:TTabSheet;var CL:TCheckListBox);
begin
  InitialisePage(Capt,PC,Sheet);
  CL:=TCheckListBox.Create(self);
  CL.parent:= Sheet;
  CL.left:=0;
  CL.top:=0;
  CL.align:=alClient;
end;

procedure TMoteur.EnregistrerCritre(C_partenariat:string);
var i,j,index:integer;
begin
  DObjet.Q_CriterePartenariat.close;
  DObjet.Q_CriterePartenariat.Parameters[0].Value:=C_partenariat;
  DObjet.Q_CriterePartenariat.open;
  while not DObjet.Q_CriterePartenariat.EOF do DObjet.Q_CriterePartenariat.Delete;
  for i:=1 to FRecherche.PageControl3.pageCount do
  begin
    index:=FPartenariat.ListeCombo[i].ItemIndex;
    if index>=0 then
    begin
      DObjet.Q_TypCritere.Close;
      DObjet.Q_TypCritere.Parameters[0].Value:=FPartenariat.ListeCombo[i].Items[Index];
      DObjet.Q_TypCritere.Parameters[1].Value:=FPartenariat.ListeLabel[i].Caption;
      DObjet.Q_TypCritere.Open;
      DObjet.Q_CriterePartenariat.Insert;
      DObjet.Q_CriterePartenariatN_Critere.value:=DObjet.Q_TypCritereNumero.Value;
      DObjet.Q_CriterePartenariatC_Partenariat.value:=C_Partenariat;
      DObjet.Q_CriterePartenariat.Post;
    end
  end;
end;

procedure TMoteur.AjoutBox(Tab:TADOTable;box:TComboBox;Nom:string);
begin
  Tab.Open;
  box.Items.Clear;
  while not Tab.EOF do
  begin
    box.Items.Add(Tab.FieldByName(Nom).Value);
    Tab.Next;
  end;
end;

procedure TMoteur.AfficherBox(Box:TComboBox;Text:string);
var i:integer;
begin
  for i:=0 to Box.Items.Count do
  begin
    if Box.Items[i]=Text then break;
  end;
  Box.ItemIndex:=i;
end;

function  TMoteur.ExisteFivComm(Numero:integer):string;
begin
  DObjet.QFivComm_NumCom.Close;
  DObjet.QFivComm_NumCom.parameters[0].value:=Numero;
  DObjet.QFivComm_NumCom.open;
  Result:=DObjet.QFivComm_NumComCom.Value;
end;

procedure TMoteur.AjoutListBox(Numero:integer;box:TComboBox;Libellee:string);
begin
  DObjet.Q_Critere.Close;
  DObjet.Q_Critere.Parameters[0].Value := Numero;
  DObjet.Q_Critere.Open;
  box.Items.Clear;
  while not DObjet.Q_Critere.EOF do
  begin
    box.Items.Add(DObjet.Q_Critere.FieldByName(Libellee).Value);
    DObjet.Q_Critere.Next;
  end;
end;

procedure TMoteur.AjoutListBox2(Numero:integer;box:TCheckListBox;Libellee:string);
begin
  DObjet.Q_Critere.Close;
  DObjet.Q_Critere.Parameters[0].Value := Numero;
  DObjet.Q_Critere.Open;
  box.Items.Clear;
  while not DObjet.Q_Critere.EOF do
  begin
    box.Items.Add(DObjet.Q_Critere.FieldByName(Libellee).Value);
    DObjet.Q_Critere.Next;
  end;
end;

procedure TMoteur.AfficherCritere(combo:TComboBox;N_type:integer;C_Partenariat:string);
var i:integer;
begin
  DObjet.CocherCritere.close;
  DObjet.CocherCritere.Parameters[0].Value :=N_Type;
  DObjet.CocherCritere.Parameters[1].Value :=C_Partenariat;
  DObjet.CocherCritere.Open;
  combo.ItemIndex:=-1;
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

procedure TMoteur.AffichageLieu(code:integer;Query:TADOQuery;Box:TComboBox);
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

procedure TMoteur.DBEdit1Change(Sender: TObject);
begin
  AfficherTypesociete;
end;

procedure TMoteur.ComboBox2Change(Sender: TObject);
begin
  DObjet.Q_RCommune.Close;
  DObjet.Q_RCommune.Parameters[0].Value:=FPartenariat.ComboBox2.text;
  DObjet.Q_RCommune.Open;
  FPartenariat.ComboBox1.Items.Clear;
  while not DObjet.Q_RCommune.EOF do
  begin
    FPartenariat.ComboBox1.Items.Add(DObjet.Q_RCommune.FieldByName('Com').Value);
    DObjet.Q_RCommune.Next;
  end;
end;

procedure TMoteur.ListeCommune_Fiv;
begin
  DObjet.Q_RCommune.Close;
  DObjet.Q_RCommune.Parameters[0].Value:=FPartenariat.ComboBox2.text;
  DObjet.Q_RCommune.Open;
  FPartenariat.ComboBox1.Items.Clear;
  while not DObjet.Q_RCommune.EOF do
  begin
    FPartenariat.ComboBox1.Items.Add(DObjet.Q_RCommune.FieldByName('Com').Value);
    DObjet.Q_RCommune.Next;
  end;
end;

procedure TMoteur.SQPartenariatDataChange(Sender: TObject; Field: TField);
var i:integer;
begin
  ExisteFivComm(DObjet.Q_PartenariatCodeCom.Value);
  AfficherBox(FPartenariat.ComboBox2,DObjet.QFivComm_NumComFiv.Value);
  AfficherBox(FPartenariat.ComboBox1,DObjet.QFivComm_NumComCom.Value);
  i:=1;
  DObjet.TTypeCritere.Open;
  DObjet.TTypeCritere.First;
  while not DObjet.TTypeCritere.EOF do
  begin
    AfficherCritere(FPartenariat.ListeCombo[i],DObjet.TTypeCritereNumero.Value,
                  DObjet.Q_PartenariatCode.value);
    i:=i+1;
    DObjet.TTypeCritere.Next;
  end;
end;

procedure TMoteur.AfficherSocieteCommercial(N_Produit:integer);
begin
  DObjet.QPrix_Societe.Close;
  DObjet.QPrix_Societe.Parameters[0].Value:=N_Produit;
  DObjet.QPrix_Societe.Open;
end;

procedure TMoteur.SProduitDataChange(Sender: TObject; Field: TField);
begin
 AfficherSocietecommercial(DObjet.TProduitN_Produit.Value);
  try
    //FAchat.Label7.caption:= 'Liste des prix '+DObjet.TProduitLibelle.Value;
  except
  end;
end;

procedure TMoteur.AfficherAchat_SocieteCommercial(C_Partenariat:String);
begin
  DObjet.QAChat_Societe.Close;
  DObjet.QAChat_Societe.Parameters[0].Value:=C_Partenariat;
  DObjet.QAChat_Societe.Open;
end;

procedure TMoteur.SPrixDataChange(Sender: TObject; Field: TField);
begin
  try
  //  FAchat.Label19.caption:='Liste des achats déjà effectué chez : '+ DObjet.QPrix_SocieteCPartenariat.Value;
  except
  end;
  AfficherAchat_SocieteCommercial(DObjet.QPrix_SocieteCPartenariat.Value);
end;

procedure TMoteur.AfficherAchatDetait(N_Achat:integer);
begin
  DObjet.Q_AchatDetail.Close;
  DObjet.Q_AchatDetail.Parameters[0].Value:=N_Achat;
  DObjet.Q_AchatDetail.Open;
end;

procedure TMoteur.S_AchatDataChange(Sender: TObject; Field: TField);
begin
  AfficherAchatDetait(DObjet.QAChat_SocieteN_.Value);
end;

procedure TMoteur.ListeMission_Projet(N_Projet:integer);
begin
  DObjet.QMission.Close;
  DObjet.QMission.Parameters[0].Value:=N_Projet;
  DObjet.QMission.Open;
end;

procedure TMoteur.SProjetDataChange(Sender: TObject; Field: TField);
begin
  ListeMission_Projet(DObjet.TProjetN_.Value);
end;

procedure TMoteur.ListeTache_Mission(N_Mission:integer);
begin
  DObjet.QTaches_Mission.Close;
  DObjet.QTaches_Mission.Parameters[0].Value:=N_Mission;
  DObjet.QTaches_Mission.Open;
end;

procedure TMoteur.SQMissionDataChange(Sender: TObject; Field: TField);
begin
  ListeTache_Mission(DObjet.QMissionNumero.Value);
end;

end.
