unit URecherche;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, CheckLst, Buttons, ComCtrls,
  DB,UM_Recherche, Mask;

type
  TFRecherche = class(TForm)
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    ListBox1: TListBox;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    Panel1: TPanel;
    PageControl3: TPageControl;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    Label5: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    BitBtn2: TBitBtn;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    IsCU:boolean;
    procedure LancerRecherche;
  public
    { Public declarations }
    sheetCritere,SheetParten:TArrayTabSheet;
    CheckCritere:TArrayCheckListBox;
    procedure Asehoy(Choisir,Critere:boolean);
  end;

var
  FRecherche: TFRecherche;

procedure AsehoyRecherche(Chemin,Nom_Table:string;Choisir,Critere:Boolean);export;

implementation

uses  UObjet;

{$R *.dfm}

procedure AsehoyRecherche(Chemin,Nom_Table:string;Choisir,Critere:Boolean);
begin
  try
    DObjet.Q_RechercheTable.close;
    DObjet.Q_RechercheTable.SQL.Clear;
    DObjet.Q_RechercheTable.SQL.Add('select * from '+Nom_Table);

    DObjet.TTypeCritere.Close;
    DObjet.TTypeCritere.SQL.Clear;
    DObjet.TTypeCritere.SQL.Add('Select CritereType.* FROM CritereType');
    DObjet.TTypeCritere.SQL.Add('INNER JOIN CritereTypeTable');
    DObjet.TTypeCritere.SQL.Add('ON CritereType.Numero = CritereTypeTable.N_Type');

    Application.CreateForm(TFRecherche, FRecherche);
    FRecherche.Asehoy(Choisir,Critere);
  finally
    FRecherche.Free;
  end;
end;

procedure TFRecherche.Asehoy(Choisir,Critere:boolean);
var i:integer;
begin
  if Critere then
  begin
    SpeedButton2.Caption:='Assayer critère';
    SpeedButton6.Visible :=False;
    SpeedButton7.Visible :=False;
    SpeedButton8.Visible :=False;
    BitBtn2.Visible :=False;
  end
  else
  begin
    SpeedButton2.Caption:='Lancer critère';
    SpeedButton6.Visible :=True;
    SpeedButton7.Visible :=True;
    SpeedButton8.Visible :=True;
    BitBtn2.Visible :=True;
  end;
  SpeedButton5.visible:=Critere ;
  BitBtn2.visible:=Choisir;
  MaskEdit1.Text:=FormatDateTime('dd/mm/yyyy',date);
  MaskEdit2.Text:=FormatDateTime('dd/mm/yyyy',date);
  i:=1;

  DObjet.TTypeCritere.Open;
  DObjet.TTypeCritere.First;
  while not DObjet.TTypeCritere.EOF do
  begin
    Moteur.AjoutListBox2(DObjet.TTypeCritereNumero.Value,CheckCritere[i],'Libelle');
    i:=i+1;
    DObjet.TTypeCritere.Next;
  end;
  LancerRecherche;
  showModal;
end;

procedure TFRecherche.SpeedButton2Click(Sender: TObject);
begin
  LancerRecherche;
end;

procedure TFRecherche.LancerRecherche;
var i,j:integer;
  first_i,nisy:boolean;
begin
  ListBox1.Items.Clear;
  if IsCU then
  begin
    ListBox1.Items.Add('select * from SelectCV ');
    ListBox1.Items.Add('where (NomType=''CV'')')
    end
  else
  begin
    ListBox1.Items.Add('select * from SelectClient ');
    ListBox1.Items.Add('where (NomType<>''CV'')');
  end;
  for i:=1 to PageControl3.pageCount do
  begin
    first_i:=true;
    nisy:=false;
    for j:=0 to CheckCritere[i].Count -1 do
    begin
      if CheckCritere[i].Checked[j] then
      begin
        nisy:=true;
        if first_i then
        begin
            ListBox1.Items.Add('and((['+sheetCritere[i].Caption+']='''+
                             CheckCritere[i].Items[j]+''')');
            first_i:=false;
        end
        else
            ListBox1.Items.Add('or(['+sheetCritere[i].Caption+']='''+
                             CheckCritere[i].Items[j]+''')');
      end;
    end;
    if nisy then
        ListBox1.Items.Add(')');
  end;
  if length(Edit1.text)>0 then
    ListBox1.Items.Add('and(Code='''+Edit1.Text+''')');
  if length(Edit2.text)>0 then
    ListBox1.Items.Add('and(Nom='''+Edit2.Text+''')');
  if Panel3.Visible then
  begin
    if Label2.Caption ='Enregistrement' then
    begin
      ListBox1.Items.Add('and(DatyDepot>=#'+MaskEdit1.Text+'#)');
      ListBox1.Items.Add('and(DatyDepot<=#'+MaskEdit2.Text+'#)');
    end
    else
    begin
      ListBox1.Items.Add('and(DatyModif>=#'+MaskEdit1.Text+'#)');
      ListBox1.Items.Add('and(DatyModif<=#'+MaskEdit2.Text+'#)');
    end
  end;
  case RadioGroup1.ItemIndex of
    0:;
    1:ListBox1.Items.Add('order by nom');
    2:ListBox1.Items.Add('order by code');
    3:ListBox1.Items.Add('order by DatyDepot');
    4:ListBox1.Items.Add('order by DatyModif');
  end;

  DObjet.Q_Selection.Close;
  DObjet.Q_Selection.SQL:=ListBox1.Items;
  DObjet.Q_Selection.Open;

  if IsCU then
  begin
    DObjet.Q_SelectionCode.DisplayLabel :='Référence';
    DObjet.Q_SelectionDatyDepot.DisplayLabel:='Date dépôt CV';
    DObjet.Q_SelectionDatyModif.DisplayLabel:='Date dern. Modif';
    DObjet.Q_SelectionNom.DisplayLabel:='Nom';
    DObjet.Q_SelectionPrenom.DisplayLabel:='Date de naissance';
    DObjet.Q_SelectionTelMobile.DisplayLabel :='Tél.Mobile';
    DObjet.Q_SelectionTel1_Domicile.DisplayLabel :='Tél.Dom';
    DObjet.Q_SelectionMasculin.visible :=True;
  end
  else
  begin
    DObjet.Q_SelectionCode.DisplayLabel:='Référence';
    DObjet.Q_SelectionNom.DisplayLabel:='Nom';
    DObjet.Q_SelectionPrenom.DisplayLabel:='Nom du gérant';
    DObjet.Q_SelectionDatyDepot.DisplayLabel:='Début partenariat';
    DObjet.Q_SelectionDatyModif.DisplayLabel:='Date dern. Modif';
    DObjet.Q_SelectionTel1_Domicile.DisplayLabel :='Tél1';
    DObjet.Q_SelectionTelMobile.DisplayLabel :='Tél.Directe';
    DObjet.Q_SelectionMasculin.visible :=False;
  end;
end;



procedure TFRecherche.FormCreate(Sender: TObject);
var i:integer;
begin
  i:=1;
  DObjet.SelectSociete.Open;
  while not DObjet.SelectSociete.Eof do
  begin
    Moteur.InitialisePage(DObjet.SelectSociete.Fields[1].Value,PageControl1,SheetParten[i]);
    i:=i+1;
    DObjet.SelectSociete.Next;
  end;
  i:=1;
  DObjet.TTypeCritere.Open;
  DObjet.TTypeCritere.First;
  while not DObjet.TTypeCritere.Eof do
  begin
    Moteur.CreerCheckList(DObjet.TTypeCritere.Fields[1].Value,PageControl3,
                   sheetCritere[i],CheckCritere[i]);
    i:=i+1;
    DObjet.TTypeCritere.Next;
  end;
end;

procedure TFRecherche.PageControl1Change(Sender: TObject);
begin
  Moteur.ChangePage;
  Moteur.AfficherTypesociete;
end;

procedure TFRecherche.Label2Click(Sender: TObject);
begin
  if Label2.Caption = 'Enregistrement' then
    Label2.Caption := 'Modification'
  else
    Label2.Caption := 'Enregistrement';
end;

procedure TFRecherche.CheckBox1Click(Sender: TObject);
begin
  Panel3.Visible :=CheckBox1.Checked
end;

procedure TFRecherche.SpeedButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TFRecherche.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFRecherche.SpeedButton6Click(Sender: TObject);
begin
  DObjet.Q_TypeSociete.Close;
  DObjet.Q_TypeSociete.parameters[0].Value:=FRecherche.PageControl1.ActivePage.Caption;
  DObjet.Q_TypeSociete.Open;
  //AsehoyPartenariat(IsCU,True,DObjet.Q_SelectionCode.Value,DObjet.Q_TypeSocieteCode.Value);
  DObjet.Q_Selection.Requery;
end;

procedure TFRecherche.SpeedButton7Click(Sender: TObject);
begin
  //AsehoyPartenariat(IsCU,False,DObjet.Q_SelectionCode.Value,DObjet.Q_TypeSocieteCode.Value);
  DObjet.Q_Selection.Requery;
end;

end.
