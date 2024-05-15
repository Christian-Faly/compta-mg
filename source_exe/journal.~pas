unit Journal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Grids, DBGrids, StdCtrls, Db, DBCtrls, DBTables,
  Qrctrls, quickrpt, ComCtrls, Mask, ImpLettr,Menus, ADODB,  Variants;

type
  TFJournal = class(TForm)
    Panel1: TPanel;
    SpeedButton17: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Timer1: TTimer;
    SpeedButton1: TSpeedButton;
    MainMenu1: TMainMenu;
    mmlm1: TMenuItem;
    DernierLibll1: TMenuItem;
    Listedestraiteschusnonencaisss1: TMenuItem;
    SpeedButton8: TSpeedButton;
    OpenDialog1: TOpenDialog;
    GroupBox4: TGroupBox;
    SpeedButton7: TSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    SpeedButton9: TSpeedButton;
    Masque1: TMenuItem;
    Compte1: TMenuItem;
    Daty1: TMenuItem;
    Ajouter1: TMenuItem;
    Outils1: TMenuItem;
    Rcuprersaisie1: TMenuItem;
    SpeedButton14: TSpeedButton;
    Paramettre1: TMenuItem;
    AnalytObligatoire1: TMenuItem;
    CheckBox4: TCheckBox;
    SpeedButton15: TSpeedButton;
    Panel4: TPanel;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    Edit12: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    CheckBox2: TCheckBox;
    Edit16: TEdit;
    CheckBox1: TCheckBox;
    MaskEdit1: TMaskEdit;
    CheckBox3: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    SpeedButton16: TSpeedButton;
    Edit3: TEdit;
    Edit11: TEdit;
    Edit10: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Edit5: TEdit;
    CheckBox5: TCheckBox;
    Label11: TLabel;
    Label18: TLabel;
    SpeedButton18: TSpeedButton;
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1Enter(Sender: TObject);
    procedure StringGrid1GetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Change(Sender: TObject);
    procedure GroupBox2Enter(Sender: TObject);
    procedure CheckBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DernierLibll1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Listedestraiteschusnonencaisss1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit13Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Compte1Click(Sender: TObject);
    procedure Daty1Click(Sender: TObject);
    procedure Ajouter1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure AnalytObligatoire1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
  private
    { Déclarations privées }
    RowSel,ColSel:integer;
    Col_Compte, Col_Intitule, Col_Libelle, Col_Quantite,
    Col_Debit, Col_Credit, Col_Ref_Lettre, Col_Date, Col_Colis,
    Col_Typ_X,Col_TVA,Col_Echeance, mody: shortint;
    nbsec:integer;
    DerNumCHQ:longint;
    avant:boolean;
    kedown,perioav,taxee:string;
    clas6d,clas60d,clas40c,clas40d,clas6c,clas6071d,clas4011c,
    clas41d,clas7c,clas4111d,clas7071c,clas7011c,clas7d,clas41c,
    clas5c,clas5d,clas608d,clas61d,clas62d,clas6083d,clas6132d,
    clas4121d,
    clas511d,clas4121c,clas4131d,clas5191c,clas5191d,clas4131c,
    clas4011d,clas4021c,clas4021d,clas511c,clas627d:boolean;
    dernierlib:string;
    NoChange,correction,resinserer:boolean;
    dtoperat:TDateTime;
    lancercloture:boolean;
    procedure TotalDC;
    procedure InitAnalyse;
    function  ValeurAnalyse(stcompte,stdebit,stcredit:string):boolean;
    function  ResultAnalyse:integer;
    function  AnalyseSituation(LaSituation:integer;but:shortint):boolean;
    procedure EnteteColone(Jx:Shortint);
    function  ValideSaisie(var nbcredit,nbdebit:shortint;var audebit,aucredit:string;ajout:boolean):shortint;
    procedure AfficherTiers(Row:integer);
    {function  SaisieElt:boolean;}
    function  Inserer(var nbcredit,nbdebit:shortint;var audebit,aucredit:string):boolean;
    function  Modifier(var nbcredit,nbdebit:shortint;var audebit,aucredit:string):boolean;
    procedure DeterminerLaValeur;
    procedure Aficheo1;
    procedure Aficheo2;
    procedure fafao;
    procedure AssistantMontantGlobale;
    procedure AssistantAchat;
    procedure AssistantAcceptationEffet(ARecevoir:boolean;var Key: Word);
    procedure AssistantEscompteEffet;
    procedure AssistantReglementEffet;
    procedure AssistantEchEffetEsc;
    procedure AssistantAvisEffetEsc;
    procedure AssistantReglt(Sender: TObject;etat:string);
    procedure AssistantVente;
    procedure ListeAvance(etat:string);
    function  AligneDroite(chiffre:string):string;
    procedure GroupeAnalVisible(Hita:Boolean);
    procedure RechercheEcriture(Lettree:boolean;Cmpte:String);
    procedure ProposerEcriture(Etat,Compte,S_TVA,Intut:String;
              Dat:TDateTime;Detail:boolean;nb:word);
    procedure PropoReglementFacture(N_Facture,Tiers:string;Montant:double);
    procedure RecupTemp;
  public
    { Déclarations publiques }
    function Asehoy(mode:shortint):integer;
    function  InsisterMontant(prompt:string;var mt:int64):boolean;
    function  InsisterDate(prompt:string;var dt:TDateTime):boolean;
  end;

var
  FJournal: TFJournal;

function AsehoyJournal(mode:shortint):integer;

implementation

uses Daspecia, Journaux,  DaCommun, informat, ImporAna, TypeElmt, ImpPlan,
     Saisitxt, AnnexTVA, USQL, UPStocke, UConnect;

{$R *.DFM}

function AsehoyJournal(mode:shortint):integer;
begin
  try
    FJournal:= TFJournal.Create(Application);
    FJournal.Asehoy(mode);
  finally
    FJournal.Free;
  end;
end;

function TFJournal.Asehoy(mode:shortint):integer;
var numb:integer;
    dt:TDateTime;
    y,m,d,month,year,day:word;
    st:string;
begin
  AutoScroll:=false;
  panel4.Align:=AlClient;
  SpeedButton13.Enabled:=false;
  lancercloture:=false;
  MaskEdit1.Text:=FormatDateTime('dd/mm/yyyy',date);
  correction:=false;
  avant:=true;
  dernierlib:='';
  Commun.Taxe.open;
  nbsec:=10;
  if mode<2 then
  begin
    st:=copy(DASQL.SelArretePeriode.Value,6,2);
    numb:=strtoint(st);
  end
  else numb:=0;

  case numb of
    0 :st:='';
    1 :st:='Janvier';
    2 :st:='Février';
    3 :st:='Mars';
    4 :st:='Avril';
    5 :st:='Mai';
    6 :st:='Juin';
    7 :st:='Juillet';
    8 :st:='Août';
    9 :st:='Septembre';
    10:st:='Octobre';
    11:st:='Novembre';
    12:st:='Décembre';
  end;
  DecodeDate(Commun.SocieteExerDeb.Value,Year,Month,Day);
  if month=1 then
  begin
    Year:=Year-1;
    Month:=12;
  end
  else
    Month:=Month-1;
  perioav:=inttostr(Year)+'/'+FormatFloat('00',Month);
  Caption:= 'Journal '+DASQL.SelArreteJournaux.Value;
  Label12.caption:=st+' '+copy(DASQL.SelArretePeriode.Value,1,4);
  ComboBox1.Items.clear;
  Commun.taxe.open;
  Commun.taxe.first;
  ComboBox1.Items.Add('AUCUN');
  while not Commun.taxe.eof do
  begin
    ComboBox1.Items.Add(Commun.taxeSigle.Value);
    Commun.taxe.next;
  end;
  ComboBox1.ItemIndex:=0;
  Commun.SelTaxe.close;
  Commun.SelTaxe.SQL.clear;
  Commun.SelTaxe.SQL.Add('select * from Taxe');
  Commun.SelTaxe.SQL.Add('where (collecte=:x) or (deductible=:x)');
  Timer1.enabled:=false;
  mody:=mode;
  dt:=date;
  DecodeDate(dt,y,m,d);
  edit1.text:='1';
  if PStockee.RLeDernier.Eof then
  begin
    //showMessage(DASQL.SelArretePeriode.Value);
    edit2.text:=EnleveBlanc(DASQL.SelArreteJournaux.Value)+
                copy(DASQL.SelArretePeriode.Value,6,2)+'0000'
  end
  else
    Edit2.text:=EnleveBlanc(PStockee.RLeDernierCodeJrnx.Value)+
                copy(PStockee.RLeDernierPeriode.Value,6,2)+PStockee.RLeDernierFarany.Value;
  edit4.text:=copy(edit2.text,1,4)+formatFloat('0000',strtoint(copy(edit2.text,length(edit2.text)-3,4))+1);

  edit11.text:='';
  edit10.text:='';
  Panel4.Align:=AlClient;
  Autoscroll:=false;
  {edit7.text:=FormatDateTime('hh:nn:ss AM/PM',time);}
  Edit6.text:='';
  Edit8.text:='';
  Edit9.text:='';
  SpeedButton8.Visible:=false;
  EnteteColone(mode);
  StringGrid1.RowCount:=100;
  case Special.JournauxTyp.Value of
    JR_ACHAT:
      begin {Achat}
        Label8.Visible:=true;
        ComboBox1.Visible:=true;
        Label4.Visible:=false;
        Edit6.Visible:=false;
        SpeedButton10.visible:=true;
        SpeedButton10.caption:='Achats PL';
        SpeedButton3.Visible:=true;
        Label10.Caption:='Observation';
        edit12.visible:=false;
      end;
    JR_VENTE:
      begin
        Label8.Visible:=true;
        ComboBox1.Visible:=true;
        Label4.Visible:=false;
        Edit6.Visible:=false;
        SpeedButton10.visible:=true;
        SpeedButton10.caption:='Ventes M/ses';
        ComboBox1.Visible:=true;
        Label8.Visible:=true;
        SpeedButton3.Visible:=true;
        Label10.Caption:='Observation';
        edit12.visible:=false;
      end;
    JR_TRESOR:
      begin
        Label8.Visible:=false;
        ComboBox1.Visible:=false;
        SpeedButton11.visible:=false;
        Label4.Visible:=true;
        Edit6.Visible:=true;
        SpeedButton10.Visible:=false;
        Label10.caption:='N° CHQ';
        ComboBox1.Visible:=false;
        Label8.Visible:=false;
        SpeedButton3.Visible:=True;
        edit12.visible:=true;
        DerNumCHQ:=DASQL.SelArreteDerNumCHQ.Value;
        edit12.text:=inttostr(DASQL.SelArreteDerNumCHQ.Value);
      end;
    JR_DIVERS:
      begin
        Label8.Visible:=true;
        Label8.Visible:=false;
        ComboBox1.Visible:=false;
        SpeedButton11.visible:=true;
        Label4.Visible:=true;
        Edit6.Visible:=true;
        ComboBox1.Visible:=false;
        SpeedButton10.caption:='Prestations';
        ComboBox1.Visible:=true;
        Label8.Visible:=true;
        SpeedButton3.Visible:=true;
        edit12.visible:=false;
      end;
    JR_ANOUVEAUX:
      begin
        SpeedButton8.Visible:=true;
        StringGrid1.RowCount:=10000;
        Label8.Visible:=true;
        Label8.Visible:=false;
        ComboBox1.Visible:=false;
        SpeedButton11.Visible:=false;
        Label4.Visible:=true;
        Edit6.Visible:=true;
        SpeedButton10.visible:=false;
        Label8.Visible:=true;
        SpeedButton3.Visible:=true;
        edit12.visible:=false;
      end;
    JR_LOGICIEL:
      begin
        StringGrid1.RowCount:=10000;
        Label8.Visible:=false;
        ComboBox1.Visible:=false;
        SpeedButton11.visible:=true;
        Label4.Visible:=false;
        Edit6.Visible:=false;
        SpeedButton10.visible:=false;
        Label8.Visible:=false;
        SpeedButton3.Visible:=false;
        edit12.visible:=false;
      end;
  end;
  case mode of
    0:begin
        SpeedButton6.visible:=true;
        Special.ToutEltJrn.open;
        Special.Journal.open;
        fafao;
        Edit8.visible:=false;
        Edit9.visible:=false;
        Label5.visible:=false;
        Label7.visible:=false;
      end;
    else
      begin
        SpeedButton6.visible:=false;
        Aficheo1;
        Aficheo2;
        SpeedButton4.visible:=true;
        Edit8.visible:=true;
        Edit9.visible:=true;
        Label5.visible:=true;
        Label7.visible:=true;
        {ComboBox1.visible:=false;}
      end;
  end;
  try
    MaskEdit1.SetFocus;
  except
  end;
  avant:=false;
  NoChange:=true;
  DASQL.SelParamet.Close;
  DASQL.SelParamet.Parameters[0].Value:=1;
  DASQL.SelParamet.Open;
  Special.lettrage.Open;
  if not DASQL.SelParamet.EOF then
    AnalytObligatoire1.Checked:=(DASQL.SelParametLOgique.Value=1)
  else
    AnalytObligatoire1.Checked:=False;
  Result:=ShowModal;
end;

function TFJournal.AligneDroite(chiffre:string):string;
begin
  while length(chiffre)<13 do Chiffre:=' '+chiffre;
  result:=chiffre;
end;

procedure TFJournal.fafao;
var i,j:integer;
begin
  edit5.text:='';
  edit3.text:='';
  edit6.text:='';
  edit16.text:='------';
  ComboBox1.text:='';
  for i:=0 to StringGrid1.ColCount-1 do
    for j:=1 to  StringGrid1.RowCount-1 do StringGrid1.cells[i,j]:='';
end;

procedure TFJournal.RecupTemp;
begin
  sleep(500);
  Commun.Tempon.Close;
  Commun.Tempon.Open;
end;

procedure TFJournal.EnteteColone(Jx:Shortint);
begin
  StringGrid1.ColCount:=12;
  Col_Compte:=0;Col_Intitule:=1;Col_Libelle:=2;
  Col_Quantite:=3;Col_Debit:=4;Col_Credit:=5;
  Col_Ref_Lettre:=6; Col_Date:=7; Col_Colis:=8;
  Col_Typ_X:=9;Col_TVA:=10;Col_Echeance:=11;

  StringGrid1.cells[Col_Compte,0]:='Compte';
  StringGrid1.ColWidths[Col_Compte]:=100;

  StringGrid1.cells[Col_Intitule,0]:='Intitulé';
  StringGrid1.ColWidths[Col_Intitule]:=160;

  StringGrid1.cells[Col_Libelle,0]:='Libellé';
  StringGrid1.ColWidths[Col_Libelle]:=10;
  StringGrid1.ColWidths[Col_Libelle]:=250;

  if Special.JournauxTyp.Value in [JR_ACHAT,JR_VENTE] then
  begin
    StringGrid1.cells[Col_Quantite,0]:='Quantité';
    StringGrid1.ColWidths[Col_Quantite]:=65;
  end
  else
    StringGrid1.ColWidths[Col_Quantite]:=1;

  StringGrid1.cells[Col_Debit,0]:='Débit';
  StringGrid1.ColWidths[Col_Debit]:=100;

  StringGrid1.cells[Col_Credit,0]:='Crédit';
  StringGrid1.ColWidths[Col_Credit]:=100;

  StringGrid1.cells[Col_Ref_Lettre,0]:='Num Fact';
  StringGrid1.ColWidths[Col_Ref_Lettre]:=100;

  StringGrid1.cells[Col_Date,0]:='Date';
  StringGrid1.ColWidths[Col_Date]:=1;
  if Special.JournauxCode.Value='ER' then
  begin
    StringGrid1.cells[Col_Ref_Lettre,0]:='NumTraite';
    StringGrid1.cells[Col_Date,0]:='Dt Echéance';
    Label10.Caption:='BQ Domicil. ou Esc.';
  end
  else
  begin
    StringGrid1.cells[Col_Ref_Lettre,0]:='Num Fact';
    StringGrid1.cells[Col_Date,0]:='Date';
    Label10.Caption:='Observation';
  end;

  StringGrid1.cells[Col_Colis,0]:='Colis';
  if Special.JournauxTyp.Value in [JR_TRESOR,JR_DIVERS,JR_ANOUVEAUX] then
    StringGrid1.ColWidths[Col_Colis]:=1
  else StringGrid1.ColWidths[Col_Colis]:=50;

  StringGrid1.cells[Col_Typ_X,0]:='Typ. X';

  StringGrid1.ColWidths[Col_Typ_X]:=50;

  if Special.JournauxTyp.Value in [JR_TRESOR] then
  begin
    StringGrid1.cells[Col_TVA,0]:='NUMCHQ';
    StringGrid1.ColWidths[Col_TVA]:=50;
  end
  else
  if (Special.JournauxTyp.Value in [JR_ACHAT,JR_VENTE])and (CheckBox1.checked) then
  begin
    StringGrid1.cells[Col_TVA,0]:='Sigle TVA';
    StringGrid1.ColWidths[Col_TVA]:=50;
  end
  else
    StringGrid1.ColWidths[Col_TVA]:=1;

  StringGrid1.cells[Col_Echeance,0]:='Echéance';
  if Special.JournauxTyp.Value in [JR_DIVERS] then
    StringGrid1.ColWidths[Col_Echeance]:=100
  else StringGrid1.ColWidths[Col_Echeance]:=1;
end;

function TFJournal.ValideSaisie(var nbcredit,nbdebit:shortint;var audebit,aucredit:string;ajout:boolean):shortint;
var n:word;
  mtdebit,mtcredit,mt:double;
  izy,misy:boolean;
  cl,i,l:shortint;
  Situation:shortint;
  Declr:string;
  debittal,credittal:string;
  DemandeTiers,IsTiersValide:Boolean;
  CompteDemande:string;

begin
  Result:=0;
  {if (Edit4.text>'AN') and (Edit4.text<'ANZ')then
  begin
    if edit13.text=edit14.Text then
      Result:=100
    else
    begin
      Result:=0;
      ShowMessage('Non soldé');
    end;
    exit;
  end;
  }
  if MODY<2 then
  try
    strtoint(edit1.text);
    strtodatetime('01'+'/'+copy(DASQL.SelArretePeriode.Value,6,2)+'/'+
                                     copy(DASQL.SelArretePeriode.Value,1,4));
  except
    On EConvertError do
    begin
      MessageDlg('Jour de pièce incorrect',mtError, [mbOK],0);
      result:=1;
      exit;
    end;
  end;

  InitAnalyse;
  mtdebit:=0;
  mtcredit:=0;
  nbdebit:=0;
  nbcredit:=0;
  n:=1;
  audebit:='';
  aucredit:='';
  if length(EnleveBlanc(Edit3.Text))>0 then
  begin
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=Edit3.Text ;
    DASQL.SelNumCpt.Open;
    if DASQL.SelNumCpt.eof or ((length(EnleveBlanc(Edit3.Text))<>10)and (length(EnleveBlanc(Edit3.Text))<>8))then
    begin
      MessageDlg('le compte dans la zone tiers n''existe pas dans le plan comptable ou non valide',mtError,[mbOk],0);
      Result:=100;
      exit;
    end;
  end;

  DemandeTiers:=False;
  while EnleveBlanc(StringGrid1.cells[Col_Compte,n])>'0' do
  begin
    //showMessage(StringGrid1.cells[Col_Compte,n]+'-'+EnleveBlanc(StringGrid1.cells[Col_Typ_X,l]));
    //eto
    if PStockee.IsDemandeTiers(EnleveBlanc(StringGrid1.cells[Col_Compte,n]))
       and(EnleveBlanc(StringGrid1.cells[Col_Typ_X,n])<>'00')then
    begin
      CompteDemande:=enleveBlanc(StringGrid1.cells[Col_Compte,n]);
      DemandeTiers:=True;
    end;

    debittal:=audebit;
    credittal:=aucredit;

    if not ValeurAnalyse(EnleveBlanc(StringGrid1.cells[Col_Compte,n]),
                StringGrid1.cells[Col_Debit,n],StringGrid1.cells[Col_Credit,n]) then
    begin
      MessageDlg('Vérifiez écriture',mtError,[mbOk],0);
      Result:=2;
      exit;
    end;

    if length(EnleveBlanc(StringGrid1.cells[Col_Compte,n]))<8 then {Vérification des numéros de comptes}
    begin
      MessageDlg('Vous devez utiliser des comptes de longueur 8',mtError,[mbOk],0);
      Result:=3;
      exit;
    end;

    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
    DASQL.SelNumCpt.Open;
    if DASQL.SelNumCpt.eof then
    begin
      MessageDlg('le compte ligne n°'+inttostr(n)+' n''existe pas.',mtError,[mbOk],0);
      Result:=4;
      exit;
    end;

    try
      {1er cas debit>0}
      if length(StringGrid1.cells[Col_Debit,n])>0 then
      begin
        if not AvadihoReal(StringGrid1.cells[Col_Debit,n],mt)then mt:=0;
        mtdebit:=mtdebit+mt;
        if (mt>0) then
        begin
          if EnleveBlanc(StringGrid1.cells[Col_Compte,n])<>DebitTal then nbdebit:=nbdebit+1
        end
        else
        begin
          if EnleveBlanc(StringGrid1.cells[Col_Compte,n])<>CreditTal then nbcredit:=nbcredit+1;
        end;
        if (aucredit='') and (mt<0) then
           aucredit:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
        if audebit='' then
        begin
         if mt>0 then audebit:=EnleveBlanc(StringGrid1.cells[Col_Compte,n])
        end
        else
        begin
          if (StringGrid1.cells[Col_Compte,n]>='40')and(StringGrid1.cells[Col_Compte,n]<'42')then
            audebit:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
        end;
        //showmessage(StringGrid1.cells[Col_Compte,n]+': d:'+audebit+'; c:'+aucredit);
      end
      {1er cas credit>0}
      else if length(StringGrid1.cells[Col_Credit,n])>0 then
      begin
        if not AvadihoReal(StringGrid1.cells[Col_Credit,n],mt)then
          mt:=0;
        mtcredit:=mtcredit+mt;
        if mt>0 then
        begin
          if EnleveBlanc(StringGrid1.cells[Col_Compte,n])<>creditTal then nbcredit:=nbcredit+1
        end
        else
        begin
          if EnleveBlanc(StringGrid1.cells[Col_Compte,n])<>DebitTal then nbdebit:=nbdebit+1;
        end;
        if (audebit='') and (mt<0) then audebit:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
        if (aucredit='') then
        begin
          if mt>0 then aucredit:=EnleveBlanc(StringGrid1.cells[Col_Compte,n])
        end
        else
        begin
          if (StringGrid1.cells[Col_Compte,n]>='40')and(StringGrid1.cells[Col_Compte,n]<'42')then
            aucredit:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
        end;
        //showmessage(StringGrid1.cells[Col_Compte,n]+': d:'+audebit+'; c:'+aucredit);
      end
      {3è cas le tout vide}
      else
      begin
        MessageDlg('Remplir le montant sur la ligne n°'+inttostr(n),mtError,[mbOk],0);
        Result:=5;
        exit;
      end;
      Declr:=Special.DansDeclare(EnleveBlanc(StringGrid1.cells[Col_Compte,n]));
      if CheckBox1.checked then
      begin
        if (length(StringGrid1.cells[Col_Typ_X,n])<2)and (length(declr)>0) then
        begin
          MessageDlg('Remplir le sigle Taxe sur la ligne n°'+inttostr(n)+
                     ' pour la déclaration '+declr,mtError,[mbOk],0);
          Result:=6;
          exit;
        end;
      end;

      if length(EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,n]))>12 then
      begin
        showMessage('Erreur: N° de Facture >12 caractères');
        Result:=6;
        exit;
      end;

      if (StringGrid1.cells[Col_TVA,0]='NUMCHQ')and(length(EnleveBlanc(StringGrid1.cells[Col_TVA,n]))>8) then
      begin
        showMessage('Erreur: N° de Chèque >8 caractères ');
        Result:=7;
        exit;
      end;

      if (declr='PRESTATION')then
      begin
        DASQL.Sel2TypProd.close;
        DASQL.Sel2TypProd.parameters[0].Value:=StringGrid1.cells[Col_Typ_X,n];
        DASQL.Sel2TypProd.open;
        if (DASQL.Sel2TypProd.EOF)or (StringGrid1.cells[Col_Typ_X,n]<'0') then
        begin
          MessageDlg('Code prestation non trouvé sur la ligne n°'+inttostr(n)+
                     ' pour la déclaration',mtError,[mbOk],0);
          Result:=7;
          exit;
        end
        else
          ;//showMessage(DASQL.Sel2TypProdcode.Value +'-'+DASQL.Sel2TypProdnature.value+'-' );
      end;

      if (length(StringGrid1.cells[Col_Typ_X,n])<2)and (declr='PRESTATION')
         and(Special.JournauxCode.Value<>'CL')
         and(Special.JournauxCode.Value<>'AN')then
      begin
        MessageDlg('Remplir le code prestation sur la ligne n°'+inttostr(n)+
                     ' pour la déclaration',mtError,[mbOk],0);
        Result:=7;
        exit;
      end;
    except
      On EConvertError do
      begin
        MessageDlg('Erreur saisie date sur la ligne n°'+inttostr(n),mtError,[mbOk],0);
        Result:=10;
      end;
    end;
    n:=n+1;
  end;

  IsTiersValide:=PStockee.IsCompteDeclare('TIERS_DEC','TIERS_DEC',Edit3.Text);
  if (DemandeTiers and (not IsTiersValide)) then
  begin
    if MessageDlg('Le compte '+CompteDemande+' est à déclarer, Vous devez saisir convenablement le compte tiers dans la zone correspondante. Etes-vous sur de ce compte?',
      mtConfirmation,[mbYes,mbNo],0)<> mrYes then
    begin
      Result:=30;
      exit;             //eto
    end;
  end;

  if nbdebit>1 then audebit:=aucredit+'X';
  if nbcredit>1 then aucredit:=aucredit+'X';
  if mtdebit<>mtcredit then
  begin
    MessageDlg(' Le compte n''est pas soldé:'+
               ' Montant au débit='+formatfloat('#,##0',mtdebit)+
               ' Montant au crédit=' +formatfloat('#,##0',mtcredit)+
               ' Nombre de ligne='+inttostr(n),mtError,[mbOk],0);
    Result:=11;
  end;

  izy:=false;
  for i:=1 to (n-1) do
  begin
    try
      cl:=strtoint(copy(StringGrid1.cells[Col_Compte,i],1,1));
      if (cl=6)or(cl=7) then izy:=true;
    except
    end;
  end;
  if (mtdebit<>mtcredit) and izy then
  begin
    if mtdebit<mtcredit then
    begin
      if izy then StringGrid1.cells[Col_Compte,n]:='443';
      StringGrid1.cells[Col_Debit,n]:=formatfloat('#,##0',mtcredit-mtdebit);
      StringGrid1.cells[Col_Debit,n]:=AligneDroite(StringGrid1.cells[Col_Debit,n]);
    end
    else
    begin
      if izy then StringGrid1.cells[Col_Compte,n]:='443';
      StringGrid1.cells[Col_Credit,n]:=formatfloat('#,##0',mtdebit-mtcredit);
      StringGrid1.cells[Col_Credit,n]:=AligneDroite(StringGrid1.cells[Col_Credit,n]);
    end;
  end;
  if n=1 then
  begin
    {MessageDlg('0 ligne',mtError,[mbOk],0);}
    Result:=12;
    exit;
  end;
  situation:=ResultAnalyse;
  if not AnalyseSituation(situation,0) then
  begin
    Result:=13;
    exit;
  end;
  if ajout then
  begin
    if DASQL.MisyJournalVe(edit4.text) then
    begin
      ShowMessage('Ce numero existe déjà');
      Result:=14;
    end;
  end;
end;

procedure TFJournal.DeterminerLaValeur;
var  Situation:shortint;
  n:integer;
begin
  n:=1;
  InitAnalyse;
  while StringGrid1.cells[Col_Compte,n]>'0' do
  begin
    ValeurAnalyse(EnleveBlanc(StringGrid1.cells[Col_Compte,n]),StringGrid1.cells[Col_Debit,n],StringGrid1.cells[Col_Credit,n]);
    n:=n+1;
  end;
  situation:=ResultAnalyse;
  AnalyseSituation(situation,1);
end;

function TFJournal.AnalyseSituation(LaSituation:integer;but:shortint):boolean;
var i:integer;
  totalreglee,totalfacture,Reste:real;
begin
  Result:=true;
{  try
    strtodatetime(MaskEdit2.text);
 except
    On EConvertError do ;
  end;}
  Case LaSituation of
    1:{Achat à crédit}
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Situation trouvé:Achat à crédit',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Informations supplémentaires:Achat à crédit';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible:=false;Label10.Visible:=false;
        end;
      end;
    end;
    2:
    begin
      case but of
        0:
        begin
            FInformat.Asehoy('Analyse de la situation','Annulation Achat à crédit',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Annulation Achat à crédit';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible:=false;Label10.Visible:=false;
        end;
      end;
    end;
    3:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Achat produit locaux',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Achat produit locaux';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible:=false;Label10.Visible:=false;
        end;
      end;
    end;
    4:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Vente à crédit',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Vente à crédit';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible:=false;Label10.Visible:=false;
        end;
      end;
    end;
    5:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Vente Marchandise',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Vente Marchandise';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible:=false;Label10.Visible:=false;
        end;
      end;
    end;
    6:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Vente Marchandise',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Vente Marchandise';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible:=false;Label10.Visible:=false;
        end;
      end;
    end;
    7:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Annulation vente',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Annulation vente';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    8:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Paiement client',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Paiement client';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
        2:
        begin
          DASQL.Ecriture.Close;
          DASQL.Ecriture.SQL.clear;
          DASQL.Ecriture.sql.Add('select * from Journal x, EltJrn y');
          DASQL.Ecriture.SQL.Add('where (x.NumFact=:a)');
          DASQL.Ecriture.SQL.Add('and   (y.Compte=:c)');
          DASQL.Ecriture.SQL.Add('and   (x.Code=y.Journal)');
          DASQL.Ecriture.Parameters[1].Value:=EnleveBlanc(Edit3.Text);
          DASQL.Ecriture.Open;
          totalreglee:=0;
          totalfacture:=0;
          while not DASQL.Ecriture.eof do
          begin
            if DASQL.EcritureDebit.Value='C' then
               totalreglee:=totalreglee+DASQL.EcritureMontant.Value
            else
               totalfacture:=totalfacture+DASQL.EcritureMontant.Value;
            DASQL.Ecriture.next;
          end;
          Reste:=totalfacture-totalreglee;
          if Reste<=100 then
          begin
            MessageDlg('déjà réglé',mtError,[mbok],0);
            Result:=false;
          end;
        end
      end;
    end;
    9:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Vente direct ?',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Vente direct ';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    10:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Paiement fournisseur',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Paiement fournisseur';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
        2:
        begin
          DASQL.Ecriture.Close;
          DASQL.Ecriture.SQL.clear;
          DASQL.Ecriture.sql.Add('select * from Journal x, EltJrn y');
          DASQL.Ecriture.SQL.Add('where (x.NumFact=:a)');
          DASQL.Ecriture.SQL.Add('and   (x.DateEsc=:b)');
          DASQL.Ecriture.SQL.Add('and   (x.Tiers=:c)');
          DASQL.Ecriture.SQL.Add('and   (x.Code=y.Journal)');
          i:=1;
          while length(StringGrid1.cells[Col_Compte,i])>0 do
          begin
            if copy(StringGrid1.cells[Col_Compte,i],1,2)='40' then
            begin
              DASQL.Ecriture.SQL.Add('and (y.compte='''+StringGrid1.cells[Col_Compte,i]+''')');
              break;
            end;
            i:=i+1;
          end;
          DASQL.Ecriture.Parameters[1].Value:=EnleveBlanc(Edit3.Text);
          DASQL.Ecriture.Open;
          totalreglee:=0;
          totalfacture:=0;
          while not DASQL.Ecriture.eof do
          begin
            if DASQL.EcritureDebit.Value='D' then
              totalreglee:=totalreglee+DASQL.EcritureMontant.Value
            else
              totalfacture:=totalfacture+DASQL.EcritureMontant.Value;
            DASQL.Ecriture.next;
          end;
          Reste:=totalfacture-totalreglee;
          if Reste<100 then
          begin
            MessageDlg('déjà réglé',mtError,[mbok],0);
            Result:=false;
          end;
        end;
      end;
    end;
    11:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Achat direct',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Achat direct';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    12:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Prestation de service',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Prestation de service';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    13:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Transport',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Transport';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=true;Label10.Visible:=true;
        end;
      end;
    end;
    14:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Location immeuble',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information suplémentaires:Location immeuble';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    15:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Encaissement à l''échéance',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Information supplémentaire:Encaissement à l''échéance';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=true;Label11.visible:=true; }
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    16:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Remise d''effet à l''escompte',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Remise d''effet à l''escompte';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=true;Label11.visible:=true;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    17:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Effet escompté non encaissé',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Effet escompté non encaissé';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=true;Label11.visible:=true;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    18:
    begin
      case but of
        0:
          FInformat.Asehoy('Analyse de la situation','Reception avis de crédit:effet encaissé',nbsec);
        1:
        begin
          GroupBox2.caption:='Reception avis de crédit:effet encaissé';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    19:
    begin
      case but of
        0:FInformat.Asehoy('Analyse de la situation','Règlement :effet',nbsec);
        1:
        begin
          GroupBox2.caption:='Règlement :effet';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    20:
    begin
      case but of
        0:FInformat.Asehoy('Analyse de la situation','Constatation:effet',nbsec);
        1:
        begin
          GroupBox2.caption:='Constatation:effet';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    21:
    begin
      case but of
        0:FInformat.Asehoy('Analyse de la situation','Règlement échéance:effet',nbsec);
        1:
        begin
          GroupBox2.caption:='Règlement échéance:effet';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=false;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    22:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Acception Effet',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='Acception Effet';
          edit3.visible:=false;Label1.visible:=false;
          {MaskEdit2.Visible:=true;Label11.visible:=true;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    23:
    begin
      case but of
        0:
        begin
          FInformat.Asehoy('Analyse de la situation','Prestation bancaire',nbsec);
        end;
        1:
        begin
          GroupBox2.caption:='prestation bancaire';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=true;Label11.visible:=false;}
          Edit5.Visible :=false;Label10.Visible:=false;
        end;
      end;
    end;
    else
    begin
      case but of
        0:FInformat.Asehoy('Analyse de la situation','Type écriture non connu',nbsec);
        1:
        begin
          GroupBox2.caption:='Type écriture non connu';
          edit3.visible:=true;Label1.visible:=true;
          {MaskEdit2.Visible:=true;Label11.visible:=true;}
          Edit5.Visible :=true;Label10.Visible:=true;
        end;
      end;
    end;
  end;
end;

procedure TFJournal.InitAnalyse;
begin
  taxee:='Néant';
  clas6d:=false;clas60d:=false;clas40c:=false;clas40d:=false;clas6c:=false;
  clas6071d:=false;clas4011d:=false;clas4011c:=false;
  clas41d:=false;clas7c:=false;clas4111d:=false;clas7071c:=false;
  clas7011c:=false;clas7d:=false;clas41c:=false;clas5d:=false;
  clas41c:=false;clas5c:=false;clas608d:=false;clas61d:=false;
  clas62d:=false;clas6083d:=false;clas6132d:=false;clas4121d:=false;
  clas511d:=false;clas4121c:=false;clas4131d:=false;clas5191c:=false;
  clas4021c:=false;clas4021d:=false;clas511c:=false;clas627d:=false;
end;

function TFJournal.ValeurAnalyse(stcompte,stdebit,stcredit:string):boolean;
var clasy1,clasy2,clasy3,clasy4:integer;
  deb,cred:boolean;
begin
  Commun.Taxe.first;
  while not Commun.Taxe.EOF do
  begin
    if Commun.TaxeDeductible.Value=copy(stcompte,1,length(Commun.TaxeDeductible.Value)) then
    begin
      taxee:=Commun.TaxeSigle.Value;
      break;
    end;
    Commun.Taxe.Next;
  end;
  if length(stdebit)>0 then deb:=true
  else deb:=false;
  if length(stcredit)>0 then cred:=true
  else cred:=false;
  Result:=true;
  try
    clasy1:=strtoint(copy(stcompte,1,1));
    clasy2:=strtoint(copy(stcompte,1,2));
    clasy3:=strtoint(copy(stcompte,1,3));
    clasy4:=strtoint(copy(stcompte,1,4));
    {SHOWMESSAGE(inttostr(clasy4));}
  except
    On EConvertError do
    begin
      result:=false;
      exit;
    end;
  end;
  if (clasy2=60) and deb then
    clas60d:=true;
  if (clasy2=40)and cred  then
    clas40c:=true;
  if (clasy2=40) and  deb then
    clas40d:=true;
  if (clasy1=6) and cred then
    clas6c:=true;
  if (clasy4=6071) and deb then
    clas6071d:=true;
  if (clasy4=4011) and cred then
    clas4011c:=true;
  if (clasy2=40) and deb then
    clas40d:=true;
  if (clasy2=41) and deb then
    clas41d:=true;
  if (clasy2=70) and cred then
    clas7c:=true;
  if (clasy4=4111) and deb then
    clas4111d:=true;
  if (clasy4=7071) and cred then
    clas7071c:=true;
  if (clasy4=7011) and cred then
    clas7011c:=true;
  if (clasy2=7) and deb then
    clas7d:=true;
  if (clasy2=41) and cred then
    clas41c:=true;
  if (clasy1=5) and cred then
    clas5c:=true;
  if (clasy1=5) and deb then
    clas5d:=true;
  if (clasy3=608) and deb then
    clas608d:=true;
  if (clasy2=61) and deb then
    clas61d:=true;
  if (clasy1=61) and deb then
    clas6d:=true;
  if (clasy2=62) and deb then
    clas62d:=true;
  if (clasy4=6083) and deb then
    clas6083d:=true;
  if (clasy4=6132) and deb then
    clas6132d:=true;
  if (clasy3=511) and deb then
    clas511d:=true;
  if (clasy4=4121) and cred then
    clas4121c:=true;
  if (clasy4=4131) and deb then
     clas4131d:=true;
  if (clasy4=4121) and deb then
    clas4121d:=true;
  if (clasy4=5191) and cred then
    clas5191c:=true;
  if (clasy4=5191) and deb then
    clas5191d:=true;
  if (clasy4=4131) and cred then
    clas4131c:=true;
  if (clasy4=4021) and cred then
    clas4021c:=true;
  if (clasy4=4021) and deb then
    clas4021d:=true;
  if (clasy3=511) and cred then
    clas511c:=true;
  if (clasy3=627) and deb then
    clas627d:=true;
end;

function TFJournal.ResultAnalyse:integer;
begin
  Result:=-1;
  {if clas60d and clas40c then Result:=1;}
  if clas40d   and clas6c then Result:=2;
  if clas6071d and clas4011c then Result:=3;
  if clas41d  and clas7c then Result:=4;
  if clas4111d and clas7071c then Result:=5;
  if clas4111d and clas7011c then Result:=6;
  if clas7d    and clas41c then Result:=7;
  if clas41c   and clas5d then Result:=8;
  if clas7c    and clas5d then Result:=9;
  if clas5c    and clas40d then Result:=10;
  if clas5c    and clas6d then Result:=11;
  if (clas608d or  clas61d or clas62d)  and clas40c then Result:=12;
  if clas6083d and clas40c then Result:=13;
  if clas6132d and clas40c then Result:=14;
  if clas511d  and clas4121c then Result:=15;
  if clas4131d and clas4121c then
    Result:=16;
  if clas4131d and clas5191c then Result:=17;
  if clas5191d and clas4131c then Result:=18;
  if clas511d  and clas5191c then Result:=19;
  if clas4011d and clas4021c then Result:=20;
  if clas4021d and clas511c then Result:=21;
  if clas511d  and clas4121c then Result:=22;
  if clas511c  and clas627d then Result:=23;
end;

function TFJournal.Inserer(var nbcredit,nbdebit:shortint;var audebit,aucredit:string):boolean;
var n,i:integer;
  Dern:longint;
  mt:int64;
  faute:boolean;
begin
  Edit3.text:=enleveBlanc(Edit3.text);
  resinserer:=false;
  result:=true;
  if ((not Edit16.Visible) or (length(edit16.text)<6))and AnalytObligatoire1.Checked then
  begin
    MessageDlg('Le code analytique est obligatoire',mtConfirmation,[mbOk],0);
    result:=false;
    exit;
  end;
  if (length(edit16.text)<6)and Edit16.Visible then
  begin
    MessageDlg('Compléter le code analytique à 6 chiffre 0:Avant ; -:Après',mtConfirmation,[mbOk],0);
    result:=false;
    exit;
  end;
  if lengTh(edit4.text)=0 then
  begin
    MessageDlg('Le numéro de pièce est obligatoire',mtError, [mbOK],0);
    result:=false;
    exit;
  end;
  {Journal}
  Special.Journal.Insert;
  Special.JournalCode.Value :=Edit4.Text;
  Special.JournalJour.Value:=1;
{  if Edit16.Visible then
  begin
    Special.JournalA1.Value:=Copy(Edit16.text,1,1);
    Special.JournalA2.Value:=Copy(Edit16.text,2,1);
    Special.JournalA3.Value:=Copy(Edit16.text,3,1);
    Special.JournalA4.Value:=Copy(Edit16.text,4,1);
    Special.JournalA5.Value:=Copy(Edit16.text,5,1);
    Special.JournalA6.Value:=Copy(Edit16.text,6,1);
  end
  else
  begin
    Special.JournalA1.Value:='-';
    Special.JournalA2.Value:='-';
    Special.JournalA3.Value:='-';
    Special.JournalA4.Value:='-';
    Special.JournalA5.Value:='-';
    Special.JournalA6.Value:='-';
  end; }

  Special.JournalCodeJrnx.Value:=DASQL.SelArreteJournaux.Value;
  if MaskEdit1.Visible then
    Special.JournalDateEsc.Value:=StrToDate(MaskEdit1.Text)
  else
    Special.JournalDateEsc.Value:=StrToDate(StringGrid1.cells[Col_Date,1]);
  {if Special.JournauxTyp.Value=JR_ANOUVEAU then
    Special.JournalPeriode.Value:=PerioAv
  else}
    Special.JournalPeriode.Value:=DASQL.SelArretePeriode.Value;
  Special.JournalTiers.Value:=EnleveBlanc(Edit3.Text);
  {try
    Special.JournalDateEsc.Value:=StrToDateTime(MaskEdit2.text);
  except
    On EConvertError do;
  end;}
  Special.JournalTransferer.Value:='0';
  if Edit5.visible then Special.JournalNumCHQ.Value:=edit5.text;
  Special.Journal.post;
  {élément}
  n:=1;
  StringGrid1.cells[Col_Compte,n]:=enleveblanc(StringGrid1.cells[Col_Compte,n]);
  PStockee.RIncreEltJrn.Open;
  PStockee.RIncreEltJrn.Requery;
  Dern:=PStockee.RIncreEltJrnDernierNum.Value;
  i:=0;
  while length(EnleveBlanc(StringGrid1.cells[Col_Compte,n]))>0 do
  begin
    Special.ToutEltJrn.insert;
    i:=i+1;
    Special.ToutEltJrnNumero.Value:=Dern+i;
    Special.ToutEltJrnSigleTaxe.Value:=taxee;
    Special.ToutEltJrnJournal.Value:=Special.JournalCode.Value;
    Special.ToutEltJrnCompte.Value:=EnleveBlanc(EnleveBlanc(StringGrid1.cells[Col_Compte,n]));
    Special.ToutEltJrnLibelle.Value:=StringGrid1.cells[Col_Libelle,n];
    dernierLib:=StringGrid1.cells[Col_Libelle,n];
    if length(StringGrid1.cells[Col_Debit,n])>0 then
    begin
      AvadihoInt64(StringGrid1.cells[Col_Debit,n],mt);
      Special.ToutEltJrnMontant.Value := mt;
      Special.ToutEltJrnDebit.Value:='D';
      if mt>0 then Special.ToutEltJrnContrepartie.Value:=aucredit
      else Special.ToutEltJrnContrepartie.Value:=audebit;
      Special.ToutEltJrnNbContre.Value:=nbcredit;
    end
    else
    begin
      AvadihoInt64(StringGrid1.cells[Col_Credit,n],mt);
      Special.ToutEltJrnMontant.Value:=mt;
      Special.ToutEltJrnDebit.Value:='C';
      if mt>0 then Special.ToutEltJrnContrepartie.Value:=audebit
      else Special.ToutEltJrnContrepartie.Value:=aucredit;
      Special.ToutEltJrnNbContre.Value:=nbdebit;
      faute:=false;
      try
        strtoint(StringGrid1.cells[Col_Ref_Lettre,n]);
      except
        On EConvertError do faute:=true;
      end;
      if (not faute)and(copy(StringGrid1.cells[Col_Compte,n],1,3)='511')and
         (Special.JournauxTyp.Value=JR_TRESOR)and(DerNumCHQ=(DerNumCHQ+1))then
      begin
        DerNumCHQ:=DerNumCHQ+1;
        edit12.text:=inttostr(DerNumCHQ);
      end;
    end;

    Special.ToutEltJrnNumFact.Value:=EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,n]);
    try
      Special.ToutEltJrnDateFact.Value:=StrToDateTime(StringGrid1.cells[Col_Echeance,n]);
    except
      On EConvertError do ;
    end;
    try
      if length(StringGrid1.cells[Col_Quantite,n])>0 then
        Special.ToutEltJrnQte.Value:=StrtoFloat(StringGrid1.cells[Col_Quantite,n]);
    except
      On EConvertError do Special.ToutEltJrnQte.Value:=0;
    end;
    try
      if length(StringGrid1.cells[Col_Colis,n])>0 then
        Special.ToutEltJrnColis.Value:=StrtoFloat(StringGrid1.cells[Col_Colis,n]);
    except
      On EConvertError do Special.ToutEltJrnColis.Value:=0;
    end;
    Special.ToutEltJrnTypX.Value:=StringGrid1.cells[Col_Typ_X,n];
    Special.ToutEltJrnSigleTaxe.Value:=StringGrid1.cells[Col_TVA,n];
    Special.ToutEltJrn.post;
    //Special.ToutEltJrn.refresh;
    n:=n+1;
    StringGrid1.cells[Col_Compte,n]:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
  end;
  NoChange:=true;
  Result:=true;
end;

function TFJournal.Modifier(var nbcredit,nbdebit:shortint;var audebit,aucredit:string):boolean;
var n,i:integer;
  mt:int64;
  Dern:longint;
begin
  Edit3.text:=enleveBlanc(Edit3.text);
  result:=true;
  if ((not Edit16.Visible) or (length(edit16.text)<6))and AnalytObligatoire1.Checked then
  begin
    MessageDlg('Le code analytique est obligatoire',mtConfirmation,[mbOk],0);
    Result:=false;
    exit;
  end;
  if (length(edit16.text)<6)and Edit16.Visible then
  begin
    MessageDlg('Compléter le code analytique à 6 chiffre 0:Avant ; -:Après',mtConfirmation,[mbOk],0);
    Result:=false;
    exit;
  end;
  try
    DASQL.SelJournal.edit;
    DASQL.SelJournalJour.Value:=1;
    DASQL.SelJournalCode.Value:=edit4.text;
    if MaskEdit1.Visible then
      DASQL.SelJournalDateEsc.Value:=StrToDate(MaskEdit1.Text)
    else
      DASQL.SelJournalDateEsc.Value:=StrToDate(StringGrid1.cells[Col_Date,1]);
{    if Edit16.Visible then
    begin
      DASQL.SelJournalA1.Value:=Copy(Edit16.text,1,1);
      DASQL.SelJournalA2.Value:=Copy(Edit16.text,2,1);
      DASQL.SelJournalA3.Value:=Copy(Edit16.text,3,1);
      DASQL.SelJournalA4.Value:=Copy(Edit16.text,4,1);
      DASQL.SelJournalA5.Value:=Copy(Edit16.text,5,1);
      DASQL.SelJournalA6.Value:=Copy(Edit16.text,6,1);
    end
    else
    begin
      DASQL.SelJournalA1.Value:='-';
      DASQL.SelJournalA2.Value:='-';
      DASQL.SelJournalA3.Value:='-';
      DASQL.SelJournalA4.Value:='-';
      DASQL.SelJournalA5.Value:='-';
      DASQL.SelJournalA6.Value:='-';
    end;
    {DASQL.SelJournalDateEsc.Value:=strtodatetime(edit7.text);}
    DASQL.SelJournalTiers.Value:=EnleveBlanc(Edit3.Text);
    if Edit5.visible then DASQL.SelJournalNumCHQ.Value:=edit5.text;
    DASQL.SelJournal.post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Ce numéro existe déjà',mtError, [mbOK],0);
      DASQL.SelJournal.cancel;
      result:=false;
      exit;
    end;
  end;
  DASQL.SelEltJrn.FIRST;
  while not DASQL.SelEltJrn.eof do DASQL.SelEltJrn.delete;
  n:=1;
  PStockee.RIncreEltJrn.OPen;
  PStockee.RIncreEltJrn.Requery;
  Dern:=PStockee.RIncreEltJrnDernierNum.Value;
  i:=0;
  while length(EnleveBlanc(StringGrid1.cells[Col_Compte,n]))>0 do
  begin
    DASQL.SelEltJrn.insert;
    i:=i+1;
    DASQL.SelEltJrnNumero.Value:=Dern+i;
    DASQL.SelEltJrnSigleTaxe.Value:=taxee;
    DASQL.SelEltJrnJournal.Value:=edit4.Text;
    DASQL.SelEltJrnCompte.Value:=EnleveBlanc(StringGrid1.cells[Col_Compte,n]);
    DASQL.SelEltJrnLibelle.Value:=StringGrid1.cells[Col_Libelle,n];
    if length(StringGrid1.cells[Col_Debit,n])>0 then
    begin
      AvadihoInt64(StringGrid1.cells[Col_Debit,n],mt);
      if mt=0 then break;
      DASQL.SelEltJrnMontant.Value:=mt;
      DASQL.SelEltJrnDebit.Value:='D';
      if mt>0 then DASQL.SelEltJrnContrepartie.Value:=aucredit
      else DASQL.SelEltJrnContrepartie.Value:=audebit;
      DASQL.SelEltJrnNbContre.Value:=nbcredit;
    end
    else
    begin
      AvadihoInt64(StringGrid1.cells[Col_Credit,n],mt);
      if mt=0 then break;
      DASQL.SelEltJrnMontant.Value:=mt;
      DASQL.SelEltJrnDebit.Value:='C';
      if mt>0 then DASQL.SelEltJrnContrepartie.Value:=audebit
      else DASQL.SelEltJrnContrepartie.Value:=aucredit;
      DASQL.SelEltJrnNbContre.Value:=nbdebit;
    end;
    DASQL.SelEltJrnNumFact.Value:=EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,n]);
    try
      DASQL.SelEltJrnDateFact.Value:=StrToDateTime(StringGrid1.cells[Col_Echeance,n]);
    except
      On EConvertError do ;
    end;
    if length(StringGrid1.cells[Col_Quantite,n])>0 then
      DASQL.SelEltJrnQte.Value:=Strtofloat(StringGrid1.cells[Col_Quantite,n]);
    if (length(StringGrid1.cells[Col_Colis,n])>0) then
      DASQL.SelEltJrnColis.Value:=Strtofloat(StringGrid1.cells[Col_Colis,n]);
    DASQL.SelEltJrnTypX.Value:=StringGrid1.cells[Col_Typ_X,n];
    DASQL.SelEltJrnSigleTaxe.Value:=StringGrid1.cells[Col_TVA,n];
    DASQL.SelEltJrn.post;
    //DASQL.SelEltJrn.Refresh;
    n:=n+1;
  end;
  result:=true;
  NoChange:=true;
end;


procedure  TFJournal.Aficheo1;
begin
  {edit1.text:=FormatFloat('#',DASQL.SelJournalJour.Value);}
  edit3.text:=DASQL.SelJournalTiers.Value;
  edit5.text:=DASQL.SelJournalNumCHQ.Value;
  edit4.text:=DASQL.SelJournalCode.Value;
  //showMessage(DateTimetoStr(DASQL.SelJournalDateEsc.Value));
  MaskEdit1.text:=FormatDateTime('dd/mm/yyyy',DASQL.SelJournalDateEsc.Value);
{  Edit16.text:=DASQL.SelJournalA1.Value +
               DASQL.SelJournalA2.Value +
               DASQL.SelJournalA3.Value +
               DASQL.SelJournalA4.Value +
               DASQL.SelJournalA5.Value +
               DASQL.SelJournalA6.Value;}
end;

procedure TFJournal.Aficheo2;
var n:word;
  tot1,tot2:real;
  i,j:integer;
begin
  for i:=0 to StringGrid1.ColCount-1 do
    for j:=1 to StringGrid1.RowCount-1 do StringGrid1.cells[i,j]:='';
  tot1:=0;
  tot2:=0;
  n:=1;
  DASQL.SelEltJrn.cancel;
  DASQL.SelEltJrn.first;
  while not DASQL.SelEltJrn.eof do
  begin
    StringGrid1.cells[Col_Compte,n]:=DASQL.SelEltJrnCompte.Value;
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=DASQL.SelEltJrnCompte.Value;;
    DASQL.SelNumCpt.Open;
    StringGrid1.cells[Col_Intitule,n]:=DASQL.SelNumCptIntitule.Value;
    StringGrid1.cells[Col_Libelle,n]:=DASQL.SelEltJrnLibelle.Value;
    if DASQL.SelEltJrnDebit.Value='D' then
    begin
      StringGrid1.cells[Col_Debit,n]:=FormatFloat('#,##0',DASQL.SelEltJrnMontant.Value);
      StringGrid1.cells[Col_Debit,n]:=AligneDroite(StringGrid1.cells[Col_Debit,n]);
      StringGrid1.cells[Col_Credit,n]:='';
      tot1:=tot1+DASQL.SelEltJrnMontant.Value;
    end
    else
    begin
      StringGrid1.cells[Col_Credit,n]:=FormatFloat('#,##0',DASQL.SelEltJrnMontant.Value);
      StringGrid1.cells[Col_Credit,n]:=AligneDroite(StringGrid1.cells[Col_Credit,n]);
      StringGrid1.cells[Col_Debit,n]:='';
      tot2:=tot2+DASQL.SelEltJrnMontant.Value;
    end;
    StringGrid1.cells[Col_Ref_Lettre,n]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,n]:=FormatDateTime('dd/mm/yyyy',DASQL.SelJournalDateEsc.Value);
    StringGrid1.cells[Col_Quantite,n]:=FormatFloat('#.#####',DASQL.SelEltJrnQte.Value);
    StringGrid1.cells[Col_Colis,n]:=FormatFloat('#.#####',DASQL.SelEltJrnColis.Value);
    StringGrid1.cells[Col_Typ_X,n]:=DASQL.SelEltJrnTypX.Value;
    StringGrid1.cells[Col_TVA,n]:=DASQL.SelEltJrnSigleTaxe.Value;
    if DateTimeToStr(DASQL.SelEltJrnDateFact.Value)='' then  {Date d'échéance}
      StringGrid1.cells[Col_Echeance,n]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDateFact.Value)
    else
      StringGrid1.cells[Col_Echeance,n]:='';
    n:=n+1;
    DASQL.SelEltJrn.next;
  end;
  edit10.text:=FormatFloat('#,##0',tot1);
  edit11.text:=FormatFloat('#,##0',tot2);
end;



procedure TFJournal.SpeedButton22Click(Sender: TObject);
begin
  if DASQL.SelEltJrn.RecordCount>0 then
  begin
    MessageDlg('Impossible de supprimer un ensemble non vide',mtError, [mbOK],0);
    exit;
  end;
  if Application.MessageBox('Voulez-vous vraiement le supprimmer',
         'Confirmation', mb_YesNo)=IDYES then
  try
    DASQL.SelJournal.delete;
  except
    on EDataBaseError do
  end;
end;

procedure TFJournal.SpeedButton17Click(Sender: TObject);
begin
{if not NoChange then
    if MessageDlg('une modification a été apportée, Voulez-vous toujours quitter ?',
                mtConfirmation, [mbYes,mbNo],0)=mryes then close
  else}
  modalResult:=mrCancel;
end;

procedure TFJournal.StringGrid1SelectCell(Sender: TObject; Col, Row: Integer;
  var CanSelect: Boolean);
var st,declr,N_Facture,Tiers: string;
  ll,i:integer;
  cl:shortint;
  ttd,ttc,ttg,Montant:double;
  k:string;
begin
  RowSel:=Row;
  ColSel:=Col;
  Label15.Caption:='Ligne n°'+inttostr(Row);
  Label16.Caption:='Colonne n°'+inttostr(Col);
  if (col=Col_TVA) and (Special.DansDeclare(StringGrid1.cells[Col_Compte,Row])<>'')and CheckBox1.checked then
  begin
    AsehoySaisiTxt(StringGrid1.cells[Col_Compte,Row]+':Compte utilisé dans les déclarations','Cette est-elle taxable ?','',false,false,true);
    RecupTemp;
    if Commun.TemponBoolean1.Value <>0 then
      StringGrid1.cells[StringGrid1.Col,StringGrid1.Row]:=Commun.TemponString2.Value;
  end;
  declr:= Special.DansDeclare(StringGrid1.cells[Col_Compte,Row]);
  //showmessage(StringGrid1.cells[Col_Compte,Row]+' ==> '+declr+'/L');
  if (col=Col_Typ_X) and (declr='PRESTATION')and
     (length(StringGrid1.cells[Col_Typ_X,Row])=0)then
  begin
    //showmessage(copy(StringGrid1.cells[Col_compte,1],5,5));
//    if copy(StringGrid1.cells[Col_compte,1],5,1)='8' then
//    begin
      //StringGrid1.cells[Col_Typ_X,Row]:='00';
      //showmessage('mandalo');
//    end
//    else
    begin
      DASQL.SelNumDivers.close;
      DASQL.SelNumDivers.parameters[0].Value:=StringGrid1.cells[Col_Compte,Row];
      DASQL.SelNumDivers.open;
      AsehoyTypProd(DASQL.SelNumDiversCodeProd.Value, false);
      RecupTemp;
      StringGrid1.cells[Col_Typ_X,Row]:=EnleveBlancDroite(Commun.TemponString1.Value);
    end;
  end;
 {pour validation}
  ll:=length(StringGrid1.cells[StringGrid1.Col,StringGrid1.Row]);
  st:=StringGrid1.cells[StringGrid1.Col,StringGrid1.Row];
  if StringGrid1.Col=Col_Compte then {colonne=0}
  begin
    if Compte1.Checked then
    begin
      if (st<='0000000000') then
      begin
        GroupBox2.Visible:=true;
        exit;
      end;
      if (ll>0) and (st[1]>'0') then
        for i:=1 to ll do  if st[i]=' ' then st[i]:='0';
      if (ll=0) or (StringGrid1.cells[Col_Compte,StringGrid1.Row]='0000000000') then exit;
    end;
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=St;
    DASQL.SelNumCpt.Open;
    if not DASQL.SelNumCpt.eof then
    begin
      StringGrid1.cells[Col_Compte,StringGrid1.Row]:=st;
      if (length(StringGrid1.cells[Col_Libelle,StringGrid1.Row])=0)and(StringGrid1.Row=1) then
        StringGrid1.cells[Col_Libelle,StringGrid1.Row]:=EnleveBlancDroite(DASQL.SelNumCptIntitule.Value);
    end
    else
    begin
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=copy(St,1,8);
      DASQL.SelNumCpt.Open;
      if not DASQL.SelNumCpt.eof then
        StringGrid1.cells[Col_Compte,StringGrid1.Row]:=copy(St,1,8)
      else
      begin
        //ShowMessage('Le compte '+st+' n''existe pas ');
        AsehoyLstCpt(st,Special.param_serverip.Value,Commun.SocieteChemin.Value,true,true);
        AfficherTiers(RowSel);
        RecupTemp;
        if length(Commun.TemponString1.Value)>0 then
        begin
         { edit13.text:=Commun.TemponString1.Value;} {gaga}
          StringGrid1.cells[Col_Compte,StringGrid1.Row]:=EnleveBlancDroite(Commun.TemponString1.Value);
          StringGrid1.cells[Col_Intitule,StringGrid1.Row]:=EnleveBlancDroite(Commun.TemponString2.Value);
          //ShowMessage('Le compte '+st+' n''existe pas ');

        end;
      end;
    end;
    if Compte1.Checked then
      for i:=1 to ll do  if st[i]=' ' then st[i]:='0';
  end;

  if StringGrid1.Col=Col_Ref_Lettre then {colonne=NUMERO DE FACTURE}
  begin
    N_Facture:=StringGrid1.cells[StringGrid1.Col,StringGrid1.Row];
    if Edit6.Visible and (Special.JournauxTyp.Value=JR_TRESOR)and
       (length(EnleveBlancDroite(N_Facture))>0) then
    begin
      AvadihoReal(Edit6.text,Montant);
      Tiers:=StringGrid1.cells[0,StringGrid1.Row];
      DASQL.R_EcriturePourLettrage.Close;
      DASQL.R_EcriturePourLettrage.Parameters[1].Value:=N_Facture;
      DASQL.R_EcriturePourLettrage.Parameters[0].Value:=Montant;
      DASQL.R_EcriturePourLettrage.Parameters[2].Value:=Tiers;
      DASQL.R_EcriturePourLettrage.Open;
      if (DASQL.R_EcriturePourLettrage.RecordCount=1)and
         (MessageDlg('Une écriture trouvée. Voulez vous effectuer une letrage automatique ?',
         MtConfirmation,[mbYes,mbNo],0)=mrYes) then
      try
        Special.lettrage.Open;
        Special.lettrage.insert;
        Special.lettrageNumElt.Value:=DASQL.R_EcriturePourLettrageNumero.Value;
        Special.lettrageLettre.Value:='X';
        Special.lettrage.post;
        SpeedButton13.Enabled:=True;
      except
        On EDataBaseError do
        begin
          Special.lettrage.cancel;
        end;
      end
    end;
  end;
  {(Col, Row)=vaovao}
  if (ColSel=0)and(RowSel=2)and(length(StringGrid1.cells[Col,Row])=0)then
  begin
    try
      cl:=strtoint(copy(StringGrid1.cells[Col_Compte,1],1,2));
      if cl=60 then StringGrid1.cells[Col,Row]:='4011';
      if cl=70 then StringGrid1.cells[Col,Row]:='70';
    except
    end;
  end;
  if  compte1.Checked then
    StringGrid1.cells[Col_Compte,Row]:=enleveblanc(StringGrid1.cells[Col_Compte,Row]);
  TotalDC;
  if (colSel=Col_Compte)and (rowSel>1)and (edit10.text=edit11.text)and
     (length(StringGrid1.cells[Col_Compte,RowSel])=0) then
  {propose le bilan d'ouvrture pour les A_Nouveaux}
  if (Special.journauxtyp.value=JR_ANOUVEAUX)then
  begin
    if avadihoreal(edit11.text,ttd)then ttd:=0;
    if avadihoreal(edit10.text,ttc)then ttc:=0;
    if avadihoreal(edit6.text,ttg)then ttg:=0;
  end;
  if (colSel=Col_Libelle)and(RowSel=1)and(Special.journauxtyp.value=JR_ANOUVEAUX)then
        StringGrid1.cells[Col_Libelle,1]:='Report à nouveau';
  if (colSel=JR_ANOUVEAUX)and(RowSel=1)and(Special.journauxtyp.value=JR_ANOUVEAUX)and
     (length(StringGrid1.cells[Col_Debit,1])>0) then
        StringGrid1.cells[Col_Debit,1]:=edit6.text;
  if (colSel=Col_Compte)and(RowSel=2)and(Special.journauxtyp.value=JR_ANOUVEAUX)and
      (length(StringGrid1.cells[Col_Compte,2])=0) then
  begin
    if ttc=ttg then
    begin
      StringGrid1.cells[Col_Compte,2]:='12920000';
      StringGrid1.cells[Col_Intitule,2]:='Bilan d''ouverture';
    end
    else
    begin
      StringGrid1.cells[Col_Compte,2]:=StringGrid1.cells[Col_Compte,1];
      StringGrid1.cells[Col_Intitule,2]:=StringGrid1.cells[Col_Intitule,1];
      StringGrid1.cells[Col_Libelle,2]:=StringGrid1.cells[Col_Libelle,1];
    end;
  end;
  {Libellé pour ANouveau}
  if (colSel=Col_Libelle)and(RowSel=2)and(Special.journauxtyp.value=JR_ANOUVEAUX)and
     (length(StringGrid1.cells[Col_Libelle,2])=0)then
        StringGrid1.cells[Col_Libelle,2]:=StringGrid1.cells[Col_Intitule,1];
  {repète libellé en haut}
  if (colSel=Col_Libelle)and(RowSel>1)and(length(StringGrid1.cells[Col_Libelle,Row])=0)and
     (length(StringGrid1.cells[Col_Libelle,Row-1])>0)and(length(StringGrid1.cells[Col_Compte,Row])>0) then
        StringGrid1.cells[Col_Libelle,Row]:=StringGrid1.cells[Col_Libelle,Row-1];
  {repète la quantité en haut}
  if (colSel=Col_Quantite)and(RowSel>1)and(length(StringGrid1.cells[Col_Quantite,Row])=0)and
     (length(StringGrid1.cells[Col_Quantite,Row-1])>0)and(length(StringGrid1.cells[Col_Compte,Row])>0) then
        StringGrid1.cells[Col_Quantite,Row]:=StringGrid1.cells[Col_Quantite,Row-1];
  {repète le Numéro en haut}
  if (colSel=Col_Ref_Lettre)and(RowSel>1)and (length(EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,Row]))=0)and
     (length(EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,Row-1]))>0)and(length(StringGrid1.cells[Col_Compte,Row])>0) then
        StringGrid1.cells[Col_Ref_Lettre,Row]:=EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,Row-1]);
  {propose le dernier Numéro de chèque}
  if (colSel=Col_Ref_Lettre)and (length(StringGrid1.cells[Col_Credit,Row])>0)and
     (copy(StringGrid1.cells[Col_Compte,Row],1,3)='511')and(Special.JournauxTyp.Value=JR_TRESOR)then
        StringGrid1.cells[Col_Ref_Lettre,Row]:=IntToStr(DerNumCHQ);
  {repète la date en haut}
  if (colSel=Col_Date)and(RowSel=1)and(length(StringGrid1.cells[Col_Date,Row])=0)and
     (length(StringGrid1.cells[Col_Compte,Row])>0) then
  StringGrid1.cells[Col_Date,Row]:=DateTimetoStr(dtoperat);
  if (colSel=Col_Date)and(RowSel>1)and(length(StringGrid1.cells[Col_Date,Row])=0)and
     (length(StringGrid1.cells[Col_Date,Row-1])>0)and(length(StringGrid1.cells[Col_Compte,Row])>0) then
        StringGrid1.cells[Col_Date,Row]:=StringGrid1.cells[Col_Date,Row-1];
  {repète le COLIS}
  if (colSel=Col_Colis)and(RowSel>1)and(length(StringGrid1.cells[Col_Colis,Row])=0)and
     (length(StringGrid1.cells[Col_Colis,Row-1])>0)and(length(StringGrid1.cells[Col_Compte,Row])>0) then
        StringGrid1.cells[Col_Colis,Row]:=StringGrid1.cells[Col_Colis,Row-1];
  {repète le type de produit }
  if (colSel=Col_Typ_X)and(RowSel>1)and(length(StringGrid1.cells[Col_Typ_X,Row])=0)and
     (length(StringGrid1.cells[Col_Typ_X,Row-1])>0)and(length(StringGrid1.cells[Col_Compte,Row])>0)  then
        StringGrid1.cells[Col_Typ_X,Row]:=StringGrid1.cells[Col_Typ_X,Row-1];
  {Pour Vente, Achat Mettre code TVA
  if (length(StringGrid1.cells[Col_TVA,Row])=0)and
     (length(StringGrid1.cells[Col_TVA,Row-1])>0)and(length(StringGrid1.cells[Col_Compte,Row])>0)and
     and (mody=0) then
        StringGrid1.cells[Col_TVA,Row]:=ComboBox1.text;
  {Pour Vente, Achat assistant}
  if edit6.visible then
    AssistantMontantGlobale;
  if Special.journauxtyp.value=JR_ACHAT then  AssistantAchat;
  if Special.journauxtyp.value=JR_VENTE then  AssistantVente;
  correction:=false;
end;

procedure TFJournal.AssistantMontantGlobale;
var  tot,mt,mg,totc:double;
  i:integer;
begin
    if NOT avadihoreal(Edit6.text,mg)then mg:=0;
    if mg=0 then exit;
    if (colSel=Col_Debit) then
    begin
      if(RowSel=1) and(length(StringGrid1.cells[Col_Debit,1])=0)and(length(StringGrid1.cells[Col_Credit,1])=0)then
      begin
        StringGrid1.cells[Col_Debit,1]:= FormatFloat('#,###',mg);
        StringGrid1.cells[Col_Debit,1]:=AligneDroite(StringGrid1.cells[Col_Debit,1]);
      end
      else if (length(StringGrid1.cells[Col_Debit,RowSel])=0)and(length(StringGrid1.cells[Col_Credit,RowSel])=0) then
      begin
        tot:=0;
        totc:=0;
        for i:=1 to RowSel-1 do
        begin
           if not avadihoreal(StringGrid1.cells[Col_Debit,i],mt)then mt:=0;
           tot:=tot+mt;
           if not avadihoreal(StringGrid1.cells[Col_Credit,i],mt)then mt:=0;
           totc:=totc+mt;
        end;
        if not avadihoreal(edit6.text,mt)then mt:=0;
        if (tot<mt)and(length(StringGrid1.cells[Col_Debit,RowSel])=0)and (totc=mt) then
        begin
          StringGrid1.cells[Col_Debit,RowSel]:=FormatFloat('#,##0',mt-tot);{niova}
          StringGrid1.cells[Col_Debit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Debit,RowSel]);
        end
        {else StringGrid1.col:=StringGrid1.col+1;}
      end;
    end;
    if (colSel=Col_Credit) then
    begin
      if(RowSel=1) and(length(StringGrid1.cells[Col_Debit,1])=0)and(length(StringGrid1.cells[Col_Credit,1])=0)then
      begin
        StringGrid1.cells[Col_Credit,1]:= FormatFloat('#,###',mg);
        StringGrid1.cells[Col_Credit,1]:=AligneDroite(StringGrid1.cells[Col_Credit,1]);
      end
      else if (length(StringGrid1.cells[Col_Debit,RowSel])=0)and(length(StringGrid1.cells[Col_Credit,RowSel])=0) then
      begin
        tot:=0;
        for i:=1 to RowSel-1 do
        begin
           if not avadihoreal(StringGrid1.cells[Col_Credit,i],mt)then mt:=0;
           tot:=tot+mt;
        end;
        if not avadihoreal(edit6.text,mt)then mt:=0;
        if (tot<mt)and(length(StringGrid1.cells[Col_Credit,RowSel])=0) then
        begin
          StringGrid1.cells[Col_Credit,RowSel]:=FormatFloat('#,##0',mt-tot);{niova}
          StringGrid1.cells[Col_Credit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Credit,RowSel]);
        end;
        {else StringGrid1.col:=StringGrid1.col+1;}
      end;
    end;
    if (colSel=Col_Credit)and (length(StringGrid1.cells[Col_Debit,RowSel])=0) then
    begin
      if(RowSel=1) and(length(StringGrid1.cells[Col_Credit,1])=0) then StringGrid1.cells[Col_Credit,1]:=Edit6.text
      else
      begin
        tot:=0;
        for i:=1 to RowSel-1 do
        begin
           if not avadihoreal(StringGrid1.cells[Col_Credit,i],mt)then mt:=0;
           tot:=tot+mt;
        end;
        if   avadihoreal(edit6.text,mt)then mt:=0;
        if (tot<mt)and(length(StringGrid1.cells[Col_Credit,RowSel])=0) then
        begin
          StringGrid1.cells[Col_Credit,RowSel]:=FormatFloat('#,##0',mt-tot);{niova}
          StringGrid1.cells[Col_Credit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Credit,RowSel]);
        end;
      end;
    end;
    TotalDC;
end;

procedure TFJournal.AssistantAchat;
var totc,totd,sansTva,tva,mt:double;
  ll,i:integer;
begin
  sansTva:=0;
  totc:=0;
  totd:=0;
  Tva:=0;
  if RowSel>1 then
  begin
    totc:=0;
    totd:=0;
    for i:=1 to RowSel-1 do
    begin
      if not avadihoreal(StringGrid1.cells[Col_Credit,i],mt)then mt:=0;totc:=totc+mt;
      if not avadihoreal(StringGrid1.cells[Col_Debit,i],mt)then mt:=0;totd:=totd+mt;
    end;
    if ComboBox1.ItemIndex=0 then {sans TVA}
    begin
      sanstva:=totC;
      tva:=0;
    end
    else
    begin
      sanstva:=totc/(Commun.TaxeTaux.Value+100);
      sanstva:=sanstva*100;
      tva:=sanstva*Commun.TaxeTaux.Value/100;
    end;
  end;
  StringGrid1.cells[Col_Compte,1]:=enleveblanc(StringGrid1.cells[Col_Compte,1]);
  StringGrid1.cells[Col_Compte,RowSel]:=enleveblanc(StringGrid1.cells[Col_Compte,RowSel]);
  if (colsel=Col_Compte)and (rowsel=1) then
    if length(StringGrid1.cells[Col_Compte,1])=0 then StringGrid1.cells[Col_Compte,1]:='4011'; {Montant au crédit}
  if (colsel=Col_Compte)and (rowsel>1)and(length(StringGrid1.cells[Col_Compte,RowSel])=0) then
  begin
    {ShowMessage('Totc:'+formatfloat('#,##0',Totc)+' sanstva:'+formatfloat('#,##0',sanstva)+
                ' totd:'+formatfloat('#,##0',totd)+' tva:'+formatfloat('#,##0',tva));}
    if (sanstva=Totd) then { TVA}
    begin
      if tva>0 then
        StringGrid1.cells[Col_Compte,RowSel]:=Commun.TaxeDeductible.Value;
    end
    else
      if Totd<>totc then StringGrid1.cells[Col_Compte,rowsel]:='60';
  end;
  if (colsel=Col_Debit)and (rowsel>1)and (length(StringGrid1.cells[Col_Debit,RowSel])=0) then
  begin
    if(copy(StringGrid1.cells[Col_Compte,rowsel],1,1)='6')and((sanstva-totd)>0) then
    begin
      StringGrid1.cells[Col_Debit,RowSel]:=FormatFloat('#,###',sanstva-totd);
      StringGrid1.cells[Col_Debit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Debit,RowSel]);
    end;
    ll:=length(Commun.TaxeDeductible.Value);
    if (copy(StringGrid1.cells[Col_Compte,RowSel],1,ll)=Commun.TaxeDeductible.Value)and(tva>0) then
    begin
      StringGrid1.cells[Col_Debit,RowSel]:=FormatFloat('#,###',tva);
      StringGrid1.cells[Col_Debit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Debit,RowSel]);
    end;
  end;
  TotalDC;
end;

procedure TFJournal.AssistantVente;
var totc,totd,sansTva,tva,mt:double;
  ll,i:integer;
begin
  totc:=0;
  totd:=0;
  sansTva:=0;
  Tva:=0;
  if RowSel>1 then
  begin
    totc:=0; {Montant 70 montant sans tva}
    totd:=0; {Montant 411 montant avec TVA}
    for i:=1 to RowSel-1 do
    begin
      if not avadihoreal(StringGrid1.cells[Col_Credit,i],mt)then mt:=0;totc:=totc+mt;
      if not avadihoreal(StringGrid1.cells[Col_Debit,i],mt)then mt:=0;totd:=totd+mt;
    end;
    if ComboBox1.ItemIndex=0 then {sans TVA}
    begin
      sanstva:=totD;
      tva:=0;
    end
    else
    begin
      sanstva:=totd/(Commun.TaxeTaux.Value+100);{calcul à partir de globale}
      sanstva:=sanstva*100;
      tva:=sanstva*Commun.TaxeTaux.Value/100;
    end;
  end;
  StringGrid1.cells[Col_Compte,1]:=enleveblanc(StringGrid1.cells[Col_Compte,1]);
  StringGrid1.cells[Col_Compte,RowSel]:=enleveblanc(StringGrid1.cells[Col_Compte,RowSel]);
  if (colsel=Col_Compte)and (rowsel=1) then
    if length(StringGrid1.cells[Col_Compte,1])=0 then StringGrid1.cells[Col_Compte,1]:='4111'; {Montant au crédit}
  if (colsel=Col_Compte)and (rowsel>1)and(length(StringGrid1.cells[Col_Compte,RowSel])=0) then
  begin
    if (sanstva=Totc) then { TVA}
    begin
      if tva>0 then
        StringGrid1.cells[Col_Compte,RowSel]:=Commun.TaxeDeductible.Value;
    end
    else
      if Totd<>totc then StringGrid1.cells[Col_Compte,rowsel]:='70';
  end;
  if (colsel=Col_Credit)and (rowsel>1)and (length(StringGrid1.cells[Col_Credit,RowSel])=0) then
  begin
    if(copy(StringGrid1.cells[Col_Compte,rowsel],1,1)='7') and((sanstva-totc)>0)then
    begin
      StringGrid1.cells[Col_Credit,RowSel]:=FormatFloat('#,###',sanstva-totc);
      StringGrid1.cells[Col_Credit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Credit,RowSel]);
    end;
    ll:=length(Commun.TaxeDeductible.Value);
    if (copy(StringGrid1.cells[Col_Compte,RowSel],1,ll)=Commun.TaxeDeductible.Value)and(tva>0) then
    begin
      StringGrid1.cells[Col_Credit,RowSel]:=FormatFloat('#,###',tva);
      StringGrid1.cells[Col_Credit,RowSel]:=AligneDroite(StringGrid1.cells[Col_Credit,RowSel]);
    end;
  end;
  TotalDC;
end;

procedure TFJournal.RechercheEcriture(Lettree:boolean;Cmpte:String);
var oui:boolean;
begin
  if Lettree then
  begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;                                  {}
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (NumFact=:a) ');
    DASQL.SelEltJrn.parameters[0].Value:=Cmpte;
    DASQL.SelEltJrn.open;
  end
  else
  begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;                                  {}
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a) ');
    DASQL.SelEltJrn.parameters[0].Value:=Cmpte;
    DASQL.SelEltJrn.open;
  end;
  while not DASQL.SelEltJrn.eof do
  begin
    DASQL.SelEltJrn.edit;
    if length(DASQL.SelEltJrnLettre.Value)>0 then
      DASQL.SelEltJrnIzy.value:='-1'
    else
      DASQL.SelEltJrnIzy.value:='0';
    DASQL.SelEltJrn.post;
    DASQL.SelEltJrn.next;
  end;
  //DASQL.SelEltJrn.Refresh;
  oui:=true;
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.add('and (izy=:b)');{lettré }
  DASQL.SelEltJrn.parameters[0].Value:=Cmpte;
  if Lettree then
    DASQL.SelEltJrn.parameters[1].Value:= oui
  else
    DASQL.SelEltJrn.parameters[1].Value:= not oui;
  DASQL.SelEltJrn.open;
end;

procedure TFJournal.ProposerEcriture(Etat,Compte,S_TVA,Intut:String;Dat:TDateTime;Detail:boolean;nb:word);
var  i:integer;
  mt,Qte:real;
  NumFact:string;
  //DateEsc:tdatetime;
  nonetat,tiers,libelle:string;
begin
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
  DASQL.SelNumCpt.Open;

  Tiers:=DASQL.SelNumCptIntitule.Value;
  if etat='D' then
    NonEtat:='C'
  else
    NonEtat:='D';
  mt:=0;
  NumFact:='';
  //DateEsc:=strtodate('01/01/2000');
  //showMessage('Nb de ligne:'+inttostr(nb));
  for i:=1 to nb do
  begin
    //DateEsc:=LstLigne[i].DateEsc;
    Libelle:=LstLigne[i].Libelle;
    Qte:=LstLigne[i].Qte;
    if LstLigne[i].Debit='D' then
      mt:=mt+LstLigne[i].Montant
    else
      mt:=mt-LstLigne[i].Montant;
    if not detail then
    begin
      if i>1 then
        NumFact:='X'
      else
        NumFact:=LstLigne[i].NumFact;
    end
    else
    begin
      StringGrid1.cells[Col_Compte,1+i]:=LstLigne[i].Compte;
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=LstLigne[i].Compte;
      DASQL.SelNumCpt.Open;
      StringGrid1.cells[Col_Intitule,1+i]:=DASQL.SelNumCptIntitule.Value;
      StringGrid1.cells[Col_Libelle,1+i]:='REGL FA '+ Tiers;{DASQL.SelEltJrnLibelle.Value;}
      StringGrid1.cells[Col_Quantite,1+i]:=FormatFloat('#,###',LstLigne[i].Qte);
      if etat='D' then
      begin
        StringGrid1.cells[Col_Debit,1+i]:='';
        StringGrid1.cells[Col_Credit,1+i]:=FormatFloat('#,###',LstLigne[i].Montant);
        StringGrid1.cells[Col_Credit,1+i]:=AligneDroite(StringGrid1.cells[Col_Credit,1+i]);
      end
    else
    begin
      StringGrid1.cells[Col_Credit,1+i]:='';
      StringGrid1.cells[Col_Debit,1+i]:=FormatFloat('#,###',LstLigne[i].Montant);
      StringGrid1.cells[Col_Debit,1+i]:=AligneDroite(StringGrid1.cells[Col_Debit,1+i]);
    end;
        StringGrid1.cells[Col_Ref_Lettre,1+i]:=LstLigne[i].NumFact;
        StringGrid1.cells[Col_Date,1+i]:=FormatDateTime('dd/mm/yyyy',dat);
        StringGrid1.cells[Col_TVA,1+i]:=S_TVA;
      end;
  end;


  if i>0 then
  begin
    StringGrid1.cells[Col_Compte,1]:=Compte;
    StringGrid1.cells[Col_Intitule,1]:=Intut;
    StringGrid1.cells[Col_Libelle,1]:='REGLT FA '+ Tiers;
    StringGrid1.cells[Col_Quantite,1]:='';
    if etat='D' then
    begin
      StringGrid1.cells[Col_Debit,1]:=FormatFloat('#,###',abs(mt));
      StringGrid1.cells[Col_Debit,1]:=AligneDroite(StringGrid1.cells[Col_Debit,1]);
      StringGrid1.cells[Col_Credit,1]:='';
    end
    else
    begin
      StringGrid1.cells[Col_Credit,1]:=FormatFloat('#,###',abs(mt));
      StringGrid1.cells[Col_Credit,1]:=AligneDroite(StringGrid1.cells[Col_Credit,1]);
      StringGrid1.cells[Col_Debit,1]:='';
    end;
    StringGrid1.cells[Col_Ref_Lettre,1]:=NumFact;
    StringGrid1.cells[Col_Date,1]:=FormatDateTime('dd/mm/yyyy',dat);
    StringGrid1.cells[Col_TVA,1]:=S_TVA;

    if not Detail then
    begin
      StringGrid1.cells[Col_Compte,2]:=DASQL.SelEltJrnCompte.Value;
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=DASQL.SelEltJrnCompte.Value;;
      DASQL.SelNumCpt.Open;
      StringGrid1.cells[Col_Intitule,2]:=DASQL.SelNumCptIntitule.Value;
      StringGrid1.cells[Col_Libelle,2]:='REGLT FA '+ Tiers {Libelle};
      StringGrid1.cells[Col_Quantite,2]:=FormatFloat('#,###',Qte);
      if etat='D' then
      begin
        StringGrid1.cells[Col_Debit,2]:='';
        StringGrid1.cells[Col_Credit,2]:=FormatFloat('#,###',abs(mt));
        StringGrid1.cells[Col_Credit,2]:=AligneDroite(StringGrid1.cells[Col_Credit,2]);
      end
      else
      begin
        StringGrid1.cells[Col_Credit,2]:='';
        StringGrid1.cells[Col_Debit,2]:=FormatFloat('#,###',abs(mt));
        StringGrid1.cells[Col_Debit,2]:=AligneDroite(StringGrid1.cells[Col_Debit,2]);
      end;
      StringGrid1.cells[Col_Ref_Lettre,2]:=NumFact;
      StringGrid1.cells[Col_Date,2]:=FormatDateTime('dd/mm/yyyy',dat);
      StringGrid1.cells[Col_TVA,2]:=S_TVA;
    end;
    StringGrid1.col:=Col_Debit;StringGrid1.Row:=2;
  end
  else
    MessageDlg('Aucune écriture à générer',mtError,[mbok],0);
end;

procedure TFJournal.AssistantReglt(Sender: TObject;etat:string);
var
  i:integer;
  globale:double;
  st,tiers:string;
begin
  st:=StringGrid1.cells[Col_Compte,1];
  for i:=1 to length(st) do if St[i]=' ' then St[i]:='0';
  StringGrid1.cells[Col_Compte,1]:=st;

  RechercheEcriture(False,StringGrid1.cells[Col_Compte,1]);

  DASQL.SelNumCpt.close;
  DASQL.SelNumCpt.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
  DASQL.SelNumCpt.open;
  Tiers:=DASQL.SelNumCptIntitule.Value;
  if not AvadihoReal(Edit6.text,Globale) then Globale:=0;
//AsehoySelection(cap,lab1,lab2,lab5,compte,:string;intervalle,selec:boolean;glob:real);
  if AsehoySelection('Paiement '+Tiers+'('+StringGrid1.cells[Col_Compte,1]+')',
                  'Num CHQ','Date CHQ','Banque',
                    Special.JournauxCompte.Value,StringGrid1.cells[Col_Compte,1],Special.param_serverip.Value,
                    Commun.SocieteCode.Value,FALSE,true,Globale,LstLigne,proposition,nbEcriture) then
  begin
    ProposerEcriture(etat,proposition.Codebanque,proposition.NumCheque,
                   proposition.NomBanque , proposition.Daty ,
                   proposition.ligneParCmpte,nbEcriture);
    TotalDC;
  end;
end;

procedure TFJournal.ListeAvance(etat:string);
var  oui:boolean;
  i:integer;
  nonetat,st,cptavance,Tiers:string;
begin
  st:=StringGrid1.cells[Col_Compte,1];
  for i:=1 to length(st) do if St[i]=' ' then St[i]:='0';
  StringGrid1.cells[Col_Compte,1]:=st;
  if etat='D' then nonetat:='C'
  else nonetat:='D';
  cptavance:=st;
  cptavance[3]:='9';
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;                                  {}
  DASQL.SelEltJrn.sql.add('select * from eltjrn');
  DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit='''+etat+''')');
  DASQL.SelEltJrn.parameters[0].Value:=cptavance;
  DASQL.SelEltJrn.open;
  while not DASQL.SelEltJrn.eof do
  begin
    DASQL.SelEltJrn.edit;
    if length(DASQL.SelEltJrnLettre.Value)>0 then
      DASQL.SelEltJrnIzy.value:='-1'
    else
      DASQL.SelEltJrnIzy.value:='0';
    DASQL.SelEltJrn.post;
    DASQL.SelEltJrn.next;
  end;
  oui:=true;
  DASQL.SelEltJrn.close;
  DASQL.SelEltJrn.sql.clear;
  DASQL.SelEltJrn.sql.add('select * from eltjrn');
  DASQL.SelEltJrn.sql.add('where(compte=:a)');   {and(debit='''+NonEtat+''')}
  DASQL.SelEltJrn.sql.add('and (izy=:b)');{Lettré and(debit='''+Etat+''')}
  DASQL.SelEltJrn.parameters[0].Value:=cptavance;
  DASQL.SelEltJrn.parameters[1].Value:=not oui;
  DASQL.SelEltJrn.open;
  if etat='D' then Tiers:='Clients'
  else Tiers:='Fournisseurs';
  AsehoySelection('Avance '+Tiers,'','','','','',Special.param_serverip.Value,Commun.SocieteCode.Value ,false,true,0,LstLigne,proposition,nbEcriture);
end;


procedure TFJournal.AssistantAcceptationEffet(ARecevoir:boolean;var key:word);
var  oui:boolean;
  nb,inter,ll,num:integer;
  mt:double;
  dt,dt1:tdatetime;
  i,y,m,d:word;
  y1,m1,d1:word;
begin
    key:=0;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    if ARecevoir then
      DASQL.SelEltJrn.sql.add('where (compte=:a)')
    else
      DASQL.SelEltJrn.sql.add('where (compte=:a)');
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
       DASQL.SelEltJrn.edit;
       if length(DASQL.SelEltJrnLettre.Value)>0 then
         DASQL.SelEltJrnIzy.value:='-1'
       else
         DASQL.SelEltJrnIzy.value:='0';
       DASQL.SelEltJrn.post;
       DASQL.SelEltJrn.next;
    end;
    //DASQL.SelEltJrn.Refresh;
    {non lettré}
    oui:=true;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    if Arecevoir then
      DASQL.SelEltJrn.sql.add('where (compte=:a)')
    else
      DASQL.SelEltJrn.sql.add('where (compte=:a)');
    DASQL.SelEltJrn.sql.add('and (izy=:b)');
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.parameters[1].Value:=not oui;
    DASQL.SelEltJrn.open;
  AsehoySelection('Acception effet','N° Traite','Date Echéance','BQ. Dom.','',StringGrid1.cells[Col_Compte,1],Special.param_serverip.Value,Commun.SocieteCode.Value ,FALSE,true,0,LstLigne,proposition,nbEcriture);
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
  DASQL.SelNumCpt.Open;
  {  if FSelection.ShowModal=mrOK then
  begin}
    nb:=Proposition.NbTraite;
    StringGrid1.cells[Col_Compte,nb+1]:=StringGrid1.cells[Col_Compte,1];
    StringGrid1.cells[Col_Intitule,nb+1]:=DASQL.SelNumCptIntitule.Value;
    StringGrid1.cells[Col_Libelle,nb+1]:='REG FA '+Copy(DASQL.SelNumCptIntitule.Value,1,17)+
                                     ' PAR TRAITE';
    StringGrid1.cells[Col_Quantite,nb+1]:=FormatFloat('#,###',DASQL.SelEltJrnQte.Value);
    StringGrid1.cells[Col_Quantite,nb+1]:=AligneDroite(StringGrid1.cells[Col_Quantite,nb+1]);
    if ARecevoir then
      StringGrid1.cells[Col_Credit,nb+1]:=FormatFloat('0',Proposition.MontantG)
    else
      StringGrid1.cells[Col_Debit,nb+1]:=FormatFloat('0',Proposition.MontantG);
    StringGrid1.cells[Col_Ref_Lettre,nb+1]:=DASQL.SelEltJrnNumFact.Value;
{    StringGrid1.cells[Col_Date,nb+1]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);}
    mt:=Proposition.MontantG;
    mt:=mt/nb;

    DecodeDate(proposition.Daty,y,m,d);
    ll:=length(proposition.NumCheque);
    num:=strtoint(copy(proposition.NumCheque,ll-2,3));
    for i:=0 to nb-1 do
    begin
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,nb+1];
      DASQL.SelNumCpt.Open;
      StringGrid1.cells[Col_Libelle,1+i]:='FA '+DASQL.SelEltJrnNumFact.Value+
        ' '+Copy(DASQL.SelNumCptIntitule.Value,1,17);
      StringGrid1.cells[Col_Quantite,1+i]:=FormatFloat('#,###',DASQL.SelEltJrnQte.Value);
      if ARecevoir then
      begin
        StringGrid1.cells[Col_Compte,1+i]:='412'+copy(StringGrid1.cells[Col_Compte,1],4,7);
        DASQL.SelNumCpt.Close;
        DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,1+i];
        DASQL.SelNumCpt.Open;
        if DASQL.SelNumCpt.EOF then showMessage('Compte '+
                                     StringGrid1.cells[Col_Compte,1+i]+' n''existe pas')
        else
          StringGrid1.cells[Col_Intitule,1+i]:=DASQL.SelNumCptIntitule.Value;
        StringGrid1.cells[Col_Debit,1+i]:= FormatFloat('#,###',mt);
        StringGrid1.cells[Col_Debit,1+i]:=AligneDroite(StringGrid1.cells[Col_Debit,1+i]);
      end
      else
      begin
        StringGrid1.cells[Col_Compte,1+i]:='402'+copy(StringGrid1.cells[Col_Compte,1],4,7);
        DASQL.SelNumCpt.Close;
        DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,1+i];
        DASQL.SelNumCpt.Open;
        if DASQL.SelNumCpt.EOF then showMessage('Compte '+
                                     StringGrid1.cells[Col_Compte,1+i]+' n''existe pas')
        else
            StringGrid1.cells[Col_Intitule,1+i]:=DASQL.SelNumCptIntitule.Value;
        StringGrid1.cells[Col_Credit,1+i]:= FormatFloat('#,###',mt);
        StringGrid1.cells[Col_Credit,1+i]:=AligneDroite(StringGrid1.cells[Col_Credit,1+i]);
      end;
      StringGrid1.cells[Col_Ref_Lettre,1+i]:=copy(proposition.NumCheque,1,ll-3)+FormatFloat('000',(num+i));
      StringGrid1.cells[Col_Date,1+i]:=FormatDateTime('dd/mm/yyyy',date);
      StringGrid1.cells[Col_Echeance,1+i]:=DateTimeToStr(dt);
      if proposition.Unitee=0 THEn
      begin
        d:=d+inter;
        dt1:=MetterFinMois(y,m);
        DecodeDate(dt1,y1,m1,d1);
        if d>d1 then
        begin
          m:=m+1;
          d:=d-d1;
        end;
      end
      else m:=m+inter;
      if m>12 then
      begin
        m:=m-12;
        y:=y+1;
      end;
      try
        dt:=EncodeDate(Y,M,D);
      except
        On EConvertError do dt:=MetterFinMois(y,m);
      end;
    end;
    GroupBox2.visible:=true;
    StringGrid1.col:=Col_Debit;StringGrid1.Row:=2;
    TotalDC;
end;

procedure TFJournal.AssistantReglementEffet;
var  oui:boolean;
begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit=''D'')');
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
       DASQL.SelEltJrn.edit;
       if length(DASQL.SelEltJrnLettre.Value)>0 then
         DASQL.SelEltJrnIzy.value:='-1'
       else
         DASQL.SelEltJrnIzy.value:='0';
       DASQL.SelEltJrn.post;
       DASQL.SelEltJrn.next;
    end;
    //DASQL.SelEltJrn.refresh;
    oui:=true;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit=''D'')');
    DASQL.SelEltJrn.sql.add('and (izy=:b)');{lettré}
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.parameters[1].Value:=not oui;
    DASQL.SelEltJrn.open;//Proposition:=
    AsehoySelection('Paiement effet','N° Compte Banque dom','','','','',Special.param_serverip.Value,Commun.SocieteCode.Value ,false,true,0,LstLigne,proposition,nbEcriture);
    StringGrid1.cells[Col_Libelle,1]:=DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Quantite,1]:=FormatFloat('#,###',DASQL.SelEltJrnQte.Value);
    StringGrid1.cells[Col_Credit,1]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Credit,1]:=AligneDroite(StringGrid1.cells[Col_Credit,1]);
    StringGrid1.cells[Col_Ref_Lettre,1]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,1]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    StringGrid1.cells[Col_Compte,2]:=proposition.NumCheque ;
    StringGrid1.cells[Col_Libelle,2]:='Effet '+DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Debit,2]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Debit,2]:=AligneDroite(StringGrid1.cells[Col_Debit,2]);
    StringGrid1.cells[Col_Ref_Lettre,1]:=DASQL.SelEltJrnNumFact.Value;;
    StringGrid1.cells[Col_Date,1]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    TotalDC;
end;

procedure TFJournal.AssistantEscompteEffet;
var  oui:boolean;
begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit=''D'')');
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
       DASQL.SelEltJrn.edit;
       if length(DASQL.SelEltJrnLettre.Value)>0 then
         DASQL.SelEltJrnIzy.value:='-1'
       else
         DASQL.SelEltJrnIzy.value:='0';
       DASQL.SelEltJrn.post;
       DASQL.SelEltJrn.next;
    end;
    //DASQL.SelEltJrn.refresh;
    oui:=true;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit=''D'')');
    DASQL.SelEltJrn.sql.add('and (izy=:b)');{lettré}
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.parameters[1].Value:=not oui;
    DASQL.SelEltJrn.open;
    //Proposition:=
    AsehoySelection('Remise d''effet à l''escompte','','Date d''escompte','BQ Esc','','',Special.param_serverip.Value,Commun.SocieteCode.Value ,false,true,0,LstLigne,proposition,nbEcriture);
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelNumCpt.Open;
    StringGrid1.cells[Col_Compte,1]:='4131'+copy(StringGrid1.cells[Col_Compte,1],5,6);
    StringGrid1.cells[Col_Libelle,1]:='ESC. TRAITE '+DASQL.SelNumCptIntitule.Value;
    StringGrid1.cells[Col_Debit,1]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Debit,1]:=AligneDroite(StringGrid1.cells[Col_Debit,1]);
    StringGrid1.cells[Col_Ref_Lettre,1]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,1]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    {MaskEdit2.text:=FSelection.MaskEdit1.text;}
    StringGrid1.cells[Col_Libelle,2]:=DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Quantite,2]:=FormatFloat('#,###',DASQL.SelEltJrnQte.Value);
    StringGrid1.cells[Col_Credit,2]:=FormatFloat('#,###',proposition.MontantG);
    StringGrid1.cells[Col_Credit,2]:=AligneDroite(StringGrid1.cells[Col_Credit,2]);
    StringGrid1.cells[Col_Ref_Lettre,2]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,2]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    GroupBox2.visible:=true;
    StringGrid1.col:=Col_Debit;StringGrid1.Row:=2;
    TotalDC;
end;

procedure TFJournal.AssistantEchEffetEsc;
var  oui:boolean;
begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit=''D'')');
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
       DASQL.SelEltJrn.edit;
       if length(DASQL.SelEltJrnLettre.Value)>0 then
         DASQL.SelEltJrnIzy.value:='-1'
       else
         DASQL.SelEltJrnIzy.value:='0';
       DASQL.SelEltJrn.post;
       DASQL.SelEltJrn.next;
    end;
    //DASQL.SelEltJrn.refresh;
    oui:=true;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte=:a)and(debit=''D'')');
    DASQL.SelEltJrn.sql.add('and (izy=:b)');{lettré}
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,1];
    DASQL.SelEltJrn.parameters[1].Value:=not oui;
    DASQL.SelEltJrn.open;

    AsehoySelection('Echéance effet escompté','','','BQ Esc','','',Special.param_serverip.Value,Commun.SocieteCode.Value ,false,true,0,LstLigne,proposition,nbEcriture);

    StringGrid1.cells[Col_Libelle,1]:=DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Quantite,1]:=FormatFloat('#,###',DASQL.SelEltJrnQte.Value);
    StringGrid1.cells[Col_Credit,1]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Credit,1]:=AligneDroite(StringGrid1.cells[Col_Credit,1]);
    StringGrid1.cells[Col_Ref_Lettre,1]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,1]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    StringGrid1.cells[Col_Compte,2]:='4191'+copy(StringGrid1.cells[Col_Compte,1],5,6);
    StringGrid1.cells[Col_Libelle,2]:=DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Debit,2]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Debit,2]:=AligneDroite(StringGrid1.cells[Col_Debit,2]);
    StringGrid1.cells[Col_Ref_Lettre,2]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,2]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    StringGrid1.col:=Col_Debit;StringGrid1.Row:=2;
    TotalDC;
end;

procedure TFJournal.AssistantAvisEffetEsc;
begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from Journal x,eltjrn y');
    DASQL.SelEltJrn.sql.add('where (x.code=y.journal)');
    DASQL.SelEltJrn.sql.add('and(y.compte=:a)and(debit=''D'')');
    {DASQL.SelEltJrn.sql.add('and(x.Observation=:b)');}
    DASQL.SelEltJrn.parameters[0].Value:='4131'+copy(StringGrid1.cells[Col_Compte,1],5,6);
    {DASQL.SelEltJrn.parambyname('b').AsString:=StringGrid1.cells[Col_Compte,1];}
    DASQL.SelEltJrn.open;

    AsehoySelection('Avis effet escompté '+StringGrid1.cells[Col_Compte,2],'','','Esc.','','',Special.param_serverip.Value,Commun.SocieteCode.Value ,false,true,0,LstLigne,proposition,nbEcriture);

    StringGrid1.cells[Col_Libelle,1]:=DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Quantite,1]:=FormatFloat('#,###',DASQL.SelEltJrnQte.Value);
    StringGrid1.cells[Col_Credit,1]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Credit,1]:=AligneDroite(StringGrid1.cells[Col_Credit,1]);
    StringGrid1.cells[Col_Ref_Lettre,1]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,1]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    StringGrid1.cells[Col_Compte,2]:='5111'+copy(StringGrid1.cells[Col_Compte,1],5,6);
    StringGrid1.cells[Col_Libelle,2]:=DASQL.SelEltJrnLibelle.Value;
    StringGrid1.cells[Col_Debit,2]:=FormatFloat('#,###',DASQL.SelEltJrnMontant.Value);
    StringGrid1.cells[Col_Debit,2]:=AligneDroite(StringGrid1.cells[Col_Debit,2]);
    StringGrid1.cells[Col_Ref_Lettre,2]:=DASQL.SelEltJrnNumFact.Value;
    StringGrid1.cells[Col_Date,2]:=FormatDateTime('dd/mm/yyyy',DASQL.SelEltJrnDtEsc.Value);
    StringGrid1.col:=Col_Debit;StringGrid1.Row:=2;
    TotalDC;
end;

procedure TFJournal.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var jour:integer;
begin
  try
    jour:=strtoint(edit1.text);
    if Button=btNext then jour:=jour+1;
    if (Button=btPrev) and (jour>1) then jour:=jour-1;
    edit1.text:=inttostr(jour);
  except
    edit1.text:='1';
  end;
end;

procedure TFJournal.StringGrid1SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var mont:double;
     i,le:integer;
     N_Facture,st:string;
begin
  if (ACol=Col_Quantite ) then
  begin
    if length(StringGrid1.cells[Col_Quantite,ARow])>40 then
    begin
      MessageDlg('Libellé hors norme',mtError,[mbok],0);
      StringGrid1.cells[Col_Quantite,ARow]:=copy(StringGrid1.cells[Col_Quantite,ARow],1,40);
    end;
  end;
  if (ACol=Col_Debit ) or (ACol=Col_Credit) then  totalDC;
  if (ACol=Col_Compte )then
  begin
    st:=StringGrid1.cells[Col_Compte,ARow];
    if Compte1.Checked then
       for i:=1 to 10 do  if st[i]=' ' then st[i]:='0';
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=st;
    DASQL.SelNumCpt.Open;
    if DASQL.SelNumCpt.recordcount>0 then
    begin
      StringGrid1.cells[Col_Intitule,ARow]:=DASQL.SelNumCptIntitule.Value;
    end
    else
    begin
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=copy(st,1,8);
      DASQL.SelNumCpt.Open;
      StringGrid1.cells[Col_Intitule,ARow]:=DASQL.SelNumCptIntitule.Value;
{      if (length(StringGrid1.cells[Col_Libelle,ARow])<1)and(ARow=1) then
        StringGrid1.cells[Col_Libelle,ARow]:=DASQL.SelNumCptIntitule.Value;}
    end;
    Commun.SelTaxe.close;
    Commun.SelTaxe.parameters[0].Value:=copy(st,1,3);
    Commun.SelTaxe.parameters[1].Value:=copy(st,1,3);
    Commun.SelTaxe.open;
    if Commun.SelTaxe.recordcount>0 then
    begin
      if ComboBox1.Visible then ComboBox1.text:=Commun.SelTaxeSigle.Value;
      le:=length(Commun.SelTaxeDeductible.Value);
      if (copy(St,1,le)=Commun.SelTaxeDeductible.Value)then
      begin
         StringGrid1.cells[Col_Ref_Lettre,0]:='Num Fact';
         StringGrid1.cells[Col_Date,0]:='Date';
      end
    end;
    StringGrid1.cells[Col_Ref_Lettre,0]:='';
    StringGrid1.cells[Col_Date,0]:='';
    if (copy(St,1,2)='40')or(copy(St,1,2)='41')or(copy(St,1,2)='60') or
       (copy(St,1,2)='61')or (copy(St,1,2)='62')or (copy(St,1,1)='7')or
       (copy(St,1,4)='6481') then
    begin
       StringGrid1.cells[Col_Ref_Lettre,0]:='Num Fact';
       StringGrid1.cells[Col_Date,0]:='Date';
    end;
    if (copy(St,1,4)='4021')or(copy(St,1,4)='4121')or
       (copy(St,1,4)='4131')then
    begin
       StringGrid1.cells[Col_Ref_Lettre,0]:='Num Traite';
       StringGrid1.cells[Col_Date,0]:='Date';
    end;
    if (copy(St,1,1)='5')then
    begin
       StringGrid1.cells[Col_Ref_Lettre,0]:='Num Fact';
       StringGrid1.cells[Col_Date,0]:='Date';
    end;
  end;
  if (ACol=Col_Compte) then
    AfficherTiers(ARow);

  if (ACol=Col_Typ_X )then
  begin
    if StringGrid1.cells[Col_Typ_X,ARow]='00' then
    begin
      //edit3.text:='';
    end;
  end;

  if (ACol=Col_Ref_Lettre )then
  begin

    if length(EnleveBlancDroite(StringGrid1.cells[Col_Ref_Lettre,ARow]))>12 then
      ShowMessage('Erreur:Longeur numéro de facture >12');
    N_Facture:=EnleveBlanc(StringGrid1.cells[Col_Ref_Lettre,ARow]);

    if length(N_Facture)= 0 then exit;

    if (DASQL.QJournauxTyp.Value = 2)and(length(StringGrid1.cells[Col_Compte,2])=0)  then
    begin
      if length(StringGrid1.cells[Col_Debit,1])>0 then
        AvadihoReal(StringGrid1.cells[Col_Debit,1],Mont)
      else
        AvadihoReal(StringGrid1.cells[Col_Credit,1],Mont);
      PropoReglementFacture(N_Facture,StringGrid1.cells[Col_Compte,1],Mont);
    end;
  end;
end;

procedure TFJournal.PropoReglementFacture(N_Facture,Tiers:string;Montant:Double);
begin
  if length(EnleveBlancDroite(N_Facture))>0 then exit;
  DASQL.PropoRegltFact.Close;
  DASQL.PropoRegltFact.Parameters[0].Value:=N_Facture;
  DASQL.PropoRegltFact.Parameters[1].Value:=Tiers;
  DASQL.PropoRegltFact.Parameters[2].Value:=Montant;
  DASQL.PropoRegltFact.Open;
  if DASQL.PropoRegltFact.EOF then exit;
//  try
    Special.lettrage.insert;
    Special.lettrageNumElt.Value:=DASQL.PropoRegltFactNumero.Value;
    Special.lettrageLettre.Value:='X';
    Special.lettrage.post;
{  except
    On EDataBaseError do
  end;}
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=DASQL.QJournauxCompte.Value;
  DASQL.SelNumCpt.Open;

  StringGrid1.cells[Col_Compte,1]:=DASQL.QJournauxCompte.Value;
  StringGrid1.cells[Col_Intitule,1]:=DASQL.SelNumCptIntitule.Value;
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Tiers;
  DASQL.SelNumCpt.Open;
  StringGrid1.cells[Col_Libelle,1]:='REGL FA '+ N_Facture+' '+DASQL.SelNumCptIntitule.Value;{DASQL.SelEltJrnLibelle.Value;}
  //StringGrid1.cells[Col_Quantite,1+i]:=;
  if DASQL.PropoRegltFactDebit.Value='D' then
  begin
    StringGrid1.cells[Col_Debit,1]:=FormatFloat('#,###',DASQL.PropoRegltFactMontant.Value);
    StringGrid1.cells[Col_Credit,1]:='';
  end
  else
  begin
    StringGrid1.cells[Col_Debit,1]:='';
    StringGrid1.cells[Col_Credit,1]:=FormatFloat('#,###',DASQL.PropoRegltFactMontant.Value);
  end;
  StringGrid1.cells[Col_Ref_Lettre,1]:=N_Facture;
  //
  StringGrid1.cells[Col_Compte,2]:=Tiers;
  DASQL.SelNumCpt.Close;
  DASQL.SelNumCpt.Parameters[0].Value:=Tiers;
  DASQL.SelNumCpt.Open;

  StringGrid1.cells[Col_Intitule,2]:=DASQL.SelNumCptIntitule.Value;
  StringGrid1.cells[Col_Libelle,2]:='REGL FA '+ N_Facture+' '+DASQL.SelNumCptIntitule.Value;{DASQL.SelEltJrnLibelle.Value;}
  //StringGrid1.cells[Col_Quantite,1+i]:=;
  if DASQL.PropoRegltFactDebit.Value='D' then
  begin
    StringGrid1.cells[Col_Debit,2]:='';
    StringGrid1.cells[Col_Credit,2]:=FormatFloat('#,###',DASQL.PropoRegltFactMontant.Value);
  end
  else
  begin
    StringGrid1.cells[Col_Debit,2]:=FormatFloat('#,###',DASQL.PropoRegltFactMontant.Value);
    StringGrid1.cells[Col_Credit,2]:='';
  end;
  StringGrid1.cells[Col_Ref_Lettre,2]:=N_Facture;

end;

procedure TFJournal.AfficherTiers(Row:integer);
var ss:string;
  i:integer;
begin
  DASQL.SelectParam('TIERS_DEC','TIERS_DEC');
  if DASQL.DansParam(StringGrid1.cells[Col_Compte,Row])then {eto}
  begin
    ss:=StringGrid1.cells[Col_Compte,Row];
    for i:=1 to length(ss) do if ss[i]=' ' then ss[i]:='0';
    edit3.text:=EnleveBlanc(StringGrid1.cells[Col_Compte,Row]);
  end;
end;

procedure TFJournal.TotalDC;
var mt,debit,credit:double;
  i:integer;
begin
  debit:=0;
  credit:=0;
  i:=1;
  while length(StringGrid1.cells[Col_Compte,i])>0  do
  begin
    if not AvadihoReal(StringGrid1.cells[Col_Debit,i],mt) then mt:=0;
    debit:=debit+mt;
    if not AvadihoReal(StringGrid1.cells[Col_Credit,i],mt) then mt:=0;
    credit:=credit+mt;
    i:=i+1;
  end;
  edit10.text:=FormatFloat('#,##0',debit);
  edit11.text:=FormatFloat('#,##0',credit);
end;


procedure TFJournal.Timer1Timer(Sender: TObject);
begin
{  edit7.text:=FormatDateTime('dd/mm/yyyy ',date)+FormatDateTime('hh:nn:ss AM/PM',time);}
end;

procedure TFJournal.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TFJournal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.enabled:=false;
  PStockee.RSelJour.close;
  SpeedButton13Click(Sender);
end;

procedure TFJournal.SpeedButton2Click(Sender: TObject);
var nbdeb,nbcred,erreur:shortint;
     adeb,acred:string;
     res:boolean;
begin
  res:=false;
  case mody of
    0:begin
        erreur:=ValideSaisie(nbdeb,nbcred,adeb,acred,true);
        if erreur=12 then
        begin
          modalResult:=mrOK;
          exit;
        end
        else if erreur>0 then
          exit;
        SpeedButton6Click(Sender);
        res:=resinserer;
      end;
    else
      begin
        if ValideSaisie(nbdeb,nbcred,adeb,acred,false)>0 then  exit;
        res:=modifier(nbdeb,nbcred,adeb,acred);
      end;
    {else res:=false;}
  end;
  if res then
      modalResult:=mrOK;
end;

procedure TFJournal.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var  c,r:longint;
   code,compte:string;
   solde,debit,credit:double;
   kaonty, kao:string;
begin
  Compte:=StringGrid1.cells[Col_Compte,1];
  c:=StringGrid1.Col;
  r:=StringGrid1.Row;
  CASE KEY OF
  8:;
  9:  {Touche de tablulation}
     begin
       if (StringGrid1.Col=Col_Debit)and (length(StringGrid1.cells[c,r])>0) then
          StringGrid1.Col:=StringGrid1.Col+1;
       if (StringGrid1.Col=Col_Compte) then StringGrid1.Col:=StringGrid1.Col+1;
       if (StringGrid1.Col=Col_Libelle)and (StringGrid1.ColWidths[Col_Quantite]<2) then
          StringGrid1.Col:=StringGrid1.Col+1;
       if (StringGrid1.Col=Col_Credit)and
          (copy(StringGrid1.cells[Col_Compte,r],1,3)<>'401')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'4021')and
          (copy(StringGrid1.cells[Col_Compte,r],1,3)<>'411')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'4121')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'4131')and
          (copy(StringGrid1.cells[Col_Compte,r],1,2)<>'60')and
          (copy(StringGrid1.cells[Col_Compte,r],1,2)<>'61')and
          (copy(StringGrid1.cells[Col_Compte,r],1,2)<>'62')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'6481')and
          (copy(StringGrid1.cells[Col_Compte,r],1,1)<>'7')and
          (copy(StringGrid1.cells[Col_Compte,r],1,1)<>'5')then
          StringGrid1.Col:=StringGrid1.Col+2;
     end;
  13:  {Touche de validation}
     begin
         if (StringGrid1.Col=Col_Debit)and (length(StringGrid1.cells[c,r])>0) then
           StringGrid1.Col:=StringGrid1.Col+1;
         if (StringGrid1.Col=Col_Compte) then StringGrid1.Col:=StringGrid1.Col+1;
         {if (StringGrid1.Col=Col_Libelle)and (StringGrid1.ColWidths[Col_Quantite]<2) then
          StringGrid1.Col:=StringGrid1.Col+1;}
         if (StringGrid1.ColWidths[StringGrid1.Col+1]<2) then
          StringGrid1.Col:=StringGrid1.Col+1;
         {if (StringGrid1.Col=Col_Credit)and
          (copy(StringGrid1.cells[Col_Compte,r],1,3)<>'401')and
          (copy(StringGrid1.cells[Col_Compte,r],1,3)<>'443')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'4021')and
          (copy(StringGrid1.cells[Col_Compte,r],1,3)<>'411')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'4121')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'4131')and
          (copy(StringGrid1.cells[Col_Compte,r],1,2)<>'60')and
          (copy(StringGrid1.cells[Col_Compte,r],1,2)<>'61')and
          (copy(StringGrid1.cells[Col_Compte,r],1,2)<>'62')and
          (copy(StringGrid1.cells[Col_Compte,r],1,4)<>'6481')and
          (copy(StringGrid1.cells[Col_Compte,r],1,1)<>'7')and
          (copy(StringGrid1.cells[Col_Compte,r],1,1)<>'5')then
            StringGrid1.Col:=StringGrid1.Col+2;}
         if (StringGrid1.Col<StringGrid1.ColCount-1)then
           StringGrid1.Col:=StringGrid1.Col+1
         else
         begin
           StringGrid1.Col:=Col_Compte;
           StringGrid1.Row:=StringGrid1.Row+1;
         end;
     end;
  27:SpeedButton17Click(Sender);
  113:{F2:edit}
    begin
      correction:=not correction;
    end;
  114:{F3:solder}
    begin
      if (RowSel>0)and(ColSel>1) then
      begin
        if not AvadihoReal(Edit10.text,debit) then  debit:=0;
        if not AvadihoReal(Edit11.text,credit) then credit:=0;
        solde:=abs(debit-credit);
        StringGrid1.cells[ColSel,RowSel]:=FormatFloat('#,##0',solde);
        StringGrid1.cells[ColSel,RowSel]:=AligneDroite(StringGrid1.cells[ColSel,RowSel]);
        if debit>credit then
        begin
          edit10.text:=FormatFloat('#,##0',debit);
          edit11.text:=FormatFloat('#,##0',debit);
        end
        else
        begin
          edit10.text:=FormatFloat('#,##0',credit);
          edit11.text:=FormatFloat('#,##0',credit);
        end;
      end;
{      GroupBox2.Visible:=true;
      try
        CheckBox1.SetFocus;
      except
      end;
      DeterminerLaValeur;}
    end;
  115:{F4:plan comptable}
    begin
      if length(StringGrid1.cells[Col_Compte,RowSel])>0 then
        AsehoyLstCpt(StringGrid1.cells[Col_Compte,RowSel],Special.param_serverip.Value,Commun.SocieteChemin.Value,true,true)
      else
        AsehoyLstCpt('60',Special.param_serverip.Value,Commun.SocieteChemin.Value,true,true);
      RecupTemp;
      if length(Commun.TemponString1.Value)>0 then
      begin
        code:=Commun.TemponString1.Value;
        if RowSel>0 then StringGrid1.cells[Col_Compte,RowSel]:=code
        else StringGrid1.cells[Col_Compte,1]:=code;
      end;
      AfficherTiers(RowSel);
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=StringGrid1.cells[Col_Compte,RowSel];
      DASQL.SelNumCpt.Open;
      StringGrid1.cells[Col_Intitule,RowSel]:=DASQL.SelNumCptIntitule.Value;
    end;
  116:if length(Special.JournauxCompte.Value)>0  then
    begin
      DASQL.SelNumCpt.Close;
      DASQL.SelNumCpt.Parameters[0].Value:=Special.JournauxCompte.Value;
      DASQL.SelNumCpt.Open;
      if RowSel>0 then
      begin
        StringGrid1.cells[Col_Compte,RowSel]:=Special.JournauxCompte.Value;
        StringGrid1.cells[Col_Intitule,RowSel]:=DASQL.SelNumCptIntitule.Value;
      end
      else
      begin
        StringGrid1.cells[Col_Compte,1]:=Special.JournauxCompte.Value ;
        StringGrid1.cells[Col_Intitule,1]:=DASQL.SelNumCptIntitule.Value;
      end;
    end;
  123:{F12:boite de dialogue assistant}
    begin
      if (Special.journauxtyp.value=JR_DIVERS)and
         (StringGrid1.col=Col_Compte)and(StringGrid1.row=1)AND
         ((Special.journauxCode.value='ER')or(Special.journauxCode.value='EP'))then
      begin
        if copy(Compte,1,4)='4111' then
          AssistantAcceptationEffet(True,Key);
        if copy(Compte,1,4)='4011' then
          AssistantAcceptationEffet(false,Key);
        if copy(Compte,1,4)='4121' THEN AssistantEscompteEffet;
        if copy(Compte,1,4)='4131' THEN AssistantEchEffetEsc;
      end;
      if (Special.journauxtyp.value=JR_TRESOR)and
         (StringGrid1.col=Col_Compte)and(StringGrid1.row=1)then
      begin
        if copy(Compte,1,3)='401'  THEN AssistantReglt(Sender,'C');
        if copy(Compte,1,3)='411'  THEN AssistantReglt(Sender,'D');
      end;
    end;
  122:{F11:double emploi:assistant}
    begin
      if(Special.journauxtyp.value=JR_ACHAT)and(copy(Compte,1,3)='401')then
         ListeAvance('C');
      if(Special.journauxtyp.value=1)and(copy(Compte,1,3)='411')then
         ListeAvance('D');
      if (Special.journauxtyp.value=JR_DIVERS)and
         (Special.journauxCode.value='ER')then
      begin
        if copy(Compte,1,4)='4121' THEN AssistantReglementEffet;
        if copy(Compte,1,4)='4131' THEN  AssistantAvisEffetEsc;
      end;
    end;
  120:{F9:double emploi:assistant}
    begin
      DASQL.SelNumDivers.close;
      DASQL.SelNumDivers.parameters[0].Value:=StringGrid1.cells[Col_Compte,StringGrid1.Row];
      DASQL.SelNumDivers.open;
      AsehoyTypProd(DASQL.SelNumDiversCodeProd.Value, false);
      RecupTemp;
      StringGrid1.cells[Col_Typ_X,StringGrid1.Row]:=Commun.TemponString1.Value;
    end;
    else if not avant then NoChange:=False;
  end;
  if ((c=Col_Debit)or(c=Col_Credit))then kedown:=StringGrid1.cells[c,r];
end;

procedure TFJournal.SpeedButton6Click(Sender: TObject);
var i,j:integer;
    nbcredit,nbdebit:shortint;
    audebit,aucredit:string;
    misy:boolean;
begin
  if mody<>0 then exit;
  misy:=false;
  if ValideSaisie(nbcredit,nbdebit,audebit,aucredit,true)>0 then  exit;
  GroupBox2.Visible:=true;
  resinserer:=Inserer(nbcredit,nbdebit,audebit,aucredit);
  if not resinserer then exit;
  DASQL.SelArrete.edit;
  DASQL.SelArreteDernierNum.value:=Special.JournalCode.Value;
  if Special.JournauxTyp.Value=JR_TRESOR then
    DASQL.SelArreteDerNumCHQ.value:=DerNumCHQ;
  DASQL.SelArrete.post;
  edit2.text:=Special.JournalCode.Value;
  Edit3.text:='';
  Edit5.text:='';
  for i:=0 to StringGrid1.ColCount-1 do
    for j:=1 to StringGrid1.RowCount-1 do StringGrid1.cells[i,j]:='';
  try
    if Edit6.visible then Edit6.setfocus;
    if ComboBox1.visible then ComboBox1.setfocus;
  except
  end;
  try
    MaskEdit1.SetFocus;
  except
  end;

  DASQL.DernierLettre.Open;
  DASQL.DernierLettre.Requery;
  DASQL.DernierLettre.Last;
  i:=Special.EquivIndex(DASQL.DernierLettreLettre.Value);
  if i<0 then i:=0 else i:=i+1;
  {Lettrage}
  DASQL.SelLettrage.close;
  DASQL.SelLettrage.parameters[0].Value:='X';
  DASQL.SelLettrage.open;

  while not DASQL.SelLettrage.eof do
  begin
    misy:=true;
    DASQL.SelLettrage.edit;
    DASQL.SelLettrageLettre.Value:=Special.EquivLettre(i);
    DASQL.SelLettragePeriodeLet.Value:=DASQL.SelArretePeriode.Value;
    DASQL.SelLettrageTypeLet.Value:='Saisie';
    DASQL.SelLettrage.post;
    DASQL.SelLettrage.Next;
  end;
  if misy then
  begin
    DASQL.SelLettrage.Insert;
    DASQL.SelLettrageLettre.Value:=Special.EquivLettre(i);
    DASQL.SelLettrageNumElt.Value:=Special.ToutEltJrnNumero.Value;
    DASQL.SelLettragePeriodeLet.Value:=DASQL.SelArretePeriode.Value;
    DASQL.SelLettrageTypeLet.Value:='Saisie';
    DASQL.SelLettrage.post;
    FInformat.Asehoy('Message ','Ecriture générée avec lettrage manuel',100);
  end;
  NoChange:=true;
end;

procedure TFJournal.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton17Click(Sender);
    13:begin
         if Edit6.Visible then Edit6.SetFocus
         else StringGrid1.setfocus;
       end;
    114:
    begin
      GroupBox2.Visible:=true;
    end;
  end;
end;

procedure TFJournal.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:StringGrid1.setfocus
  end;
end;

procedure TFJournal.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:
    begin
         try
           if edit6.visible then edit6.setfocus
           else StringGrid1.setfocus;
         except
         end;
    end;
  114:
    begin
      GroupBox2.Visible:=true;
    end;
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton17Click(Sender);
    13:begin
           if GroupBox2.Visible then
           begin
             {try
               if (MaskEdit2.Visible) then MaskEdit2.setfocus
               else if Edit5.visible then Edit5.setfocus;
             except
             end;}
           end
       end;
    else if not avant then NoChange:=False;
  end;
end;

function TFJournal.InsisterDate(Prompt:string;var dt:TDateTime):boolean;
var dst:string;
  err:boolean;
begin
  dt:=date;
  dst:=DateTimeToStr(dt);
  err:=true;
  while err do
  begin
    err:=false;
    AsehoySaisiTxt('Assistant Achat à crédit',prompt,dst,false,true,false);
    RecupTemp;
    if not Commun.TemponBoolean1.Value<>0 then
    begin
      err:=true;
      dt:=date;
      break;
    end;
    dst:=Commun.TemponString2.Value;
    try dt:=StrToDateTime(dst);
    except
      on EConvertError do
      begin
        ShowMessage('Erreur de saisie montant');
        err:=true;
      end;
    end;
  end;
  Result:=not err;
end;

function TFJournal.InsisterMontant(prompt:string;var mt:Int64):boolean;
var mst:string;
  err:boolean;
begin
  mst:=FormatFloat('#',mt);
  err:=true;
  while err do
  begin
    err:=false;
    AsehoySaisiTxt('Assistant Achat à crédit',prompt,mst,false,true,false);
    RecupTemp;
    if not Commun.TemponBoolean1.Value<>0 then
    begin
      mt:=0;
      err:=true;
      break;
    end;
    mst:=Commun.TemponString2.Value;
    try mt:=StrToInt(mst);
    except
      on EConvertError do
      begin
        ShowMessage('Erreur de saisie montant');
        err:=true;
      end;
    end;
  end;
  result:=not err;
end;

procedure TFJournal.StringGrid1Enter(Sender: TObject);
begin
  StringGrid1.row:=1;
  StringGrid1.col:=0;
  {GroupBox2.Visible:=false;}
{  case Special.JournauxTyp.Value of
    0:begin
        if (StringGrid1.Cells[Col_Compte,1]<'1')or(StringGrid1.Cells[Col_Compte,1]>'7') then StringGrid1.Cells[Col_Compte,1]:='6071000000';
      end;
    JR_VENTE:begin
        if (StringGrid1.Cells[Col_Compte,1]<'1')or(StringGrid1.Cells[Col_Compte,1]>'7') then StringGrid1.Cells[Col_Compte,1]:='7071000000';
      end;
  end;}
end;

procedure TFJournal.StringGrid1GetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
  if ACol=Col_Compte then
      if compte1.Checked then Value:='0000000000;1;O' else Value:='';
  if ACol=Col_Date then
      if daty1.Checked then Value:='!99/99/0000;1;_'  else Value:='';
  if ACol=Col_Echeance then
     Value:='!99/99/0000;1;_';
end;

procedure TFJournal.SpeedButton3Click(Sender: TObject);
var k:string;
begin
  AsehoyLstCpt(EnleveBlanc(Edit3.Text),Special.param_serverip.Value,Commun.SocieteChemin.Value ,true,true);
  RecupTemp;
  if length(Commun.TemponString1.Value)>0 then
    edit3.text:=Commun.TemponString1.Value;
end;

procedure TFJournal.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var mety:boolean;
begin
  mety:=false;
  case key of
  27:SpeedButton17Click(Sender);
  13:
  begin
    try
       Edit6.setfocus;
       mety:=true;
    except
    end;
    if not mety then
    try
       ComboBox1.setfocus;
       mety:=true;
    except
    end;
    if not mety then
    try
       StringGrid1.setfocus;
    except
    end;
  end;
  end;
end;

procedure TFJournal.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton17Click(Sender);
    13:;
    114:
      begin
        GroupBox2.Visible:=true;
      end;
  end;
end;

procedure TFJournal.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:StringGrid1.setfocus
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.ComboBox1Change(Sender: TObject);
begin
  Commun.taxe.First;
  while not Commun.taxe.eof do
  begin
    if Commun.taxeSigle.value=ComboBox1.text then
      break;
    Commun.taxe.next;
  end;
end;

procedure TFJournal.SpeedButton5Click(Sender: TObject);
begin
  AsehoySaiPaiem(0,0,1,DASQL.SelArreteJournaux.Value,EnleveBlanc(Edit3.Text),
                 DASQL.SelArretePeriode.Value,Special.param_serverip.Value,Commun.SocieteCode.Value,0);
end;

procedure TFJournal.SpeedButton10Click(Sender: TObject);
begin
  if SpeedButton10.Caption='Achats PL' then
    AsehoySaiPaiem(0,0,2,DASQL.SelArreteJournaux.Value,EnleveBlanc(Edit3.Text),
                 DASQL.SelArretePeriode.Value,Special.param_serverip.Value,Commun.SocieteCode.Value,0);
  if SpeedButton10.Caption='Ventes M/ses' then
    AsehoySaiPaiem(0,0,3,DASQL.SelArreteJournaux.Value,EnleveBlanc(Edit3.Text),
                 DASQL.SelArretePeriode.Value,Special.param_serverip.Value,Commun.SocieteCode.Value,0);
  if SpeedButton10.Caption='Prestations' then
    AsehoySaiPaiem(0,0,4,DASQL.SelArreteJournaux.Value,EnleveBlanc(Edit3.Text),
                 DASQL.SelArretePeriode.Value,Special.param_serverip.Value,Commun.SocieteCode.Value,0);
end;

procedure TFJournal.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var val:real;
   c,r:longint;
   ensemble:set of 0..255;
begin
  ensemble:=[48..57]+[96..105,109];
  c:=StringGrid1.Col;
  r:=StringGrid1.Row;
  if ((c=Col_Debit)or(c=Col_Credit)) and (not correction) then
  begin
    if (key in ensemble) then
    begin
      kedown:=kedown+StringGrid1.cells[c,r];
      kedown:=enleveblanc(kedown);
      try
        val:=strtofloat(kedown);
        StringGrid1.cells[c,r]:=FormatFloat('#,##0',val);
        StringGrid1.cells[c,r]:=AligneDroite(StringGrid1.cells[c,r]);
      except
        On EConvertError do;
      end;
    end
    else
    case key of
      46:;
      8 :begin
           kedown:=copy(kedown,1,length(kedown)-1);
           if copy(kedown,length(kedown)-1,length(kedown))=' ' then kedown:=copy(kedown,1,length(kedown)-1);
              StringGrid1.cells[c,r]:=kedown;
         end;
      9 :;
      13:;
      37:;
      38:;
      39:;
      40:;
      else
      begin
        stringGrid1.cells[c,r]:=kedown;
      end;
    end;
  end;
end;


procedure TFJournal.Edit2Change(Sender: TObject);
begin
  try
    Edit2.Text:=EnleveBlancDroite(Edit2.text);
    edit4.text:=copy(edit2.text,1,4)+formatFloat('0000',strtoint(copy(edit2.text,length(edit2.text)-3,4))+1);
  except
  end;
end;


procedure TFJournal.GroupBox2Enter(Sender: TObject);
begin
  {DeterminerLaValeur;}
end;


procedure TFJournal.CheckBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27: SpeedButton17Click(Sender);
    13:
      begin
          {try
            if MaskEdit2.Visible then
              MaskEdit2.SetFocus
            else if Edit5.visible then Edit5.setfocus;
          except
          end;}
      end;
  end;
end;

procedure TFJournal.CheckBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:;
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then SpeedButton17Click(Sender);
  if key=13 then SpeedButton6Click(Sender);
end;

procedure TFJournal.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then SpeedButton17Click(Sender);
  if key=13 then SpeedButton6Click(Sender);
end;

procedure TFJournal.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:StringGrid1.setfocus;
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.DernierLibll1Click(Sender: TObject);
begin
  if StringGrid1.cells[Col_Compte,StringGrid1.Row]>'0' then;
    StringGrid1.cells[Col_Libelle,StringGrid1.Row]:=DernierLib;
end;

procedure TFJournal.SpeedButton1Click(Sender: TObject);
begin
  fafao;
end;

procedure TFJournal.Listedestraiteschusnonencaisss1Click(Sender: TObject);
var oui:boolean;
begin
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte>=:a)and(compte<:b)and(debit=''D'')''');
    DASQL.SelEltJrn.parameters[0].Value:='4121';
    DASQL.SelEltJrn.parameters[1].Value:='4121Z';
    DASQL.SelEltJrn.open;
    while not DASQL.SelEltJrn.eof do
    begin
       DASQL.SelEltJrn.edit;
       if length(DASQL.SelEltJrnLettre.Value)>0 then
         DASQL.SelEltJrnIzy.value:='-1'
       else
         DASQL.SelEltJrnIzy.value:='0';
       DASQL.SelEltJrn.post;
       DASQL.SelEltJrn.next;
    end;
    //DASQL.SelEltJrn.refresh;
    oui:=true;
    DASQL.SelEltJrn.close;
    DASQL.SelEltJrn.sql.clear;
    DASQL.SelEltJrn.sql.add('select * from eltjrn');
    DASQL.SelEltJrn.sql.add('where (compte>=:a)and(compte<:b)and(debit=''D'')''');
    DASQL.SelEltJrn.parameters[0].Value:='4121';
    DASQL.SelEltJrn.parameters[1].Value:='4121Z';
    DASQL.SelEltJrn.sql.add('and (izy=:b)');{lettré}
    DASQL.SelEltJrn.parameters[0].Value:=StringGrid1.cells[Col_Compte,rowsel];
    DASQL.SelEltJrn.parameters[1].Value:=not oui;
    DASQL.SelEltJrn.open;

  AsehoySelection('Liste des effets échus non encaissé','','','BQ Dom.','','',Special.param_serverip.Value,Commun.SocieteCode.Value,false,true,0,LstLigne,proposition,nbEcriture);

end;

procedure TFJournal.SpeedButton4Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement transférer ?',mtconfirmation,[mbyes,mbNo],0)=mryes then
  try
    DASQL.SelJournal.edit;
    DASQL.SelJournalCodeJrnx.Value:=edit8.text;
    DASQL.SelJournalPeriode.Value:=edit9.text;
    DASQL.SelJournal.post;
  except
    on EDataBaseError do DASQL.SelJournal.cancel;
  end;
end;

procedure TFJournal.SpeedButton7Click(Sender: TObject);
var st:string;
  lg,i,j:integer;
begin
  st:=InputBox('entrez le numéro de ligne','','');
  try
    lg:=strtoint(st);
    for i:=lg+1 to StringGrid1.RowCount-1 do
      for j:=0 to StringGrid1.ColCount-1 do
        stringGrid1.cells[j,i-1]:=stringGrid1.cells[j,i];
  except
    On EConvertError do  MessageDlg('Entrez un nombre',mtError,[mbok],0);
  end;
end;

procedure TFJournal.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton17Click(Sender);
    13:StringGrid1.setfocus;
    114:
    begin
      GroupBox2.Visible:=true;
    end;
  end;
end;

procedure TFJournal.Edit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:StringGrid1.setfocus;
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:StringGrid1.setfocus;
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.CheckBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
  27:SpeedButton17Click(Sender);
  13:StringGrid1.setfocus;
  else if not avant then NoChange:=False;
  end;
end;

procedure TFJournal.Edit13Change(Sender: TObject);
var mt:real;
begin
  mt:=DASQL.SoldeCompte(edit13.text);
  if mt>0 then Label14.caption:='débiteur'
  else Label14.caption:='créditeur';
  mt:=abs(mt);
  if length(edit13.text)>7 then edit14.text:=formatfloat('#,##0',mt);
end;

procedure TFJournal.Edit1Change(Sender: TObject);
begin
  try
    dtoperat:=StrToDateTime('1'+'/'+
                   copy(DASQL.SelArretePeriode.Value,Col_Ref_Lettre,2)+'/'+
                   copy(DASQL.SelArretePeriode.Value,1,4));
  except
    On EConvertError do
  end;
end;

procedure TFJournal.SpeedButton8Click(Sender: TObject);
var lg:word;
  total:real;
begin
    //Special.ADOQuery1.open;
    if CheckBox5.checked then
    begin
      if OpenDialog1.execute then
      begin
        Special.ChangeCheminAutreSte(OpenDialog1.FileName);
        Special.ANouveau.Connection:= Special.C_AutreSte
      end
      else
        exit;
    end;

    Special.ANouveau.Open;
    if not CheckBox5.Checked then
      Special.ANouveau.Requery;
    lg:=1;
    total:=0;

    while not Special.ANouveau.EOF do
    begin
      StringGrid1.Cells[Col_Compte,lg]:=Special.ANouveaucompte.Value;
      StringGrid1.Cells[Col_Intitule,lg]:=Special.ANouveauintitule.Value;
      StringGrid1.Cells[Col_Libelle,lg]:=Special.ANouveauLibel.Value;
      StringGrid1.Cells[ Col_Ref_Lettre,lg]:=Special.ANouveauFacture.Value;
      if Special.ANouveauSolde.Value>0 then
        StringGrid1.Cells[Col_Debit,lg]:= FormatFloat('#,###',Abs(Special.ANouveauSolde.Value))
      else
        StringGrid1.Cells[Col_Credit,lg]:= FormatFloat('#,###',Abs(Special.ANouveauSolde.Value));
      total:=total + round(Special.ANouveauSolde.Value);
      lg:=lg+1;
      Special.ANouveau.next;
    end;

    StringGrid1.Cells[Col_Compte,lg]  := Special.JournauxCompte.Value;
    DASQL.SelNumCpt.Close;
    DASQL.SelNumCpt.Parameters[0].Value:=Special.JournauxCompte.Value;
    DASQL.SelNumCpt.Open;
    StringGrid1.Cells[Col_Intitule,lg]:= DASQL.SelNumCptIntitule.Value;
    StringGrid1.Cells[Col_Libelle,lg] :='A-Nouveau';

    if total>0 then
    begin
      StringGrid1.Cells[Col_Debit,lg]:='';
      StringGrid1.Cells[Col_Credit,lg]:=FormatFloat('#,###',Total);
    end
    else
    begin
      StringGrid1.Cells[Col_Debit,lg]:=FormatFloat('#,###',Abs(Total));
      StringGrid1.Cells[Col_Credit,lg]:='';
    end;
end;

procedure TFJournal.SpeedButton9Click(Sender: TObject);
var st:string;
  lg,i,j,nblg:integer;
begin
  st:=InputBox('entrez le numéro de ligne','','');
  {Determination nombre de ligne}
  i:=1;
  while (length(StringGrid1.Cells[Col_Compte,i])>0) do i:=i+1;
  nblg:=i-1;
  try
    lg:=strtoint(st);
    if nblg<lg then
    begin
      MessageDlg(' Ligne '+st+' supérieur au nombre de ligne total:'+IntToStr(i-1),mtError,[mbok],0);
      exit;
    end;
    for i:=nblg+1 downto lg+1 do
      for j:=0 to StringGrid1.ColCount-1 do
        stringGrid1.cells[j,i]:=stringGrid1.cells[j,i-1];
  except
    On EConvertError do  MessageDlg('Entrez un nombre',mtError,[mbok],0);
  end;
  for j:=0 to StringGrid1.ColCount-1 do stringGrid1.cells[j,i]:='';
end;

procedure TFJournal.Compte1Click(Sender: TObject);
begin
  Compte1.Checked:=not Compte1.Checked;
end;

procedure TFJournal.Daty1Click(Sender: TObject);
begin
  Daty1.Checked:=not Daty1.Checked;
end;

procedure TFJournal.Ajouter1Click(Sender: TObject);
begin
  SpeedButton6Click(Sender);
end;

procedure TFJournal.SpeedButton12Click(Sender: TObject);
begin
  AsehoyPoste;
  RecupTemp;
  if length(Commun.TemponString1.Value)>0 then
  begin
    Edit16.Text:=Commun.TemponString1.Value;
  end;
end;

procedure TFJournal.CheckBox2Click(Sender: TObject);
begin
  GroupeAnalVisible(CheckBox2.Checked)
end;

procedure TFJournal.GroupeAnalVisible(Hita:Boolean);
begin
  SpeedButton12.Visible:=Hita;
  Edit16.Visible:=Hita;
end;

procedure TFJournal.AnalytObligatoire1Click(Sender: TObject);
begin
  DASQL.SelParamet.Close;
  DASQL.SelParamet.Parameters[0].Value:=1;
  DASQL.SelParamet.Open;
  DASQL.SelParamet.Edit;
  DASQL.SelParametNumero.Value:=1;
  if AnalytObligatoire1.Checked then
    DASQL.SelParametLogique.Value:=1
  else
     DASQL.SelParametLogique.Value:=0;
  DASQL.SelParamet.Post;
end;

procedure TFJournal.Edit3Change(Sender: TObject);
begin
  DASQL.SelNumAdres.Close;
  DASQL.SelNumAdres.Parameters[0].Value:=EnleveBlanc(Edit3.Text);
  DASQL.SelNumAdres.open;
  if DASQL.SelNumAdres.EOF then Label17.Caption:=''{ ShowMessage('Le compte n''existe pas ou' +
                    'l''information n''est pas complète dans le plan')}
  else Label17.Caption:=DASQL.SelNumAdresNom.Value;
end;

procedure TFJournal.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then
  begin
    MaskEdit1.Visible:=true;
    StringGrid1.ColWidths[Col_Date]:=1;
  end
  else
  begin
    MaskEdit1.Visible:=false;
    StringGrid1.ColWidths[Col_Date]:=100;
  end
end;

procedure TFJournal.MaskEdit1Change(Sender: TObject);
begin
  StringGrid1.cells[Col_Date,1]:=MaskEdit1.text;
end;

procedure TFJournal.SpeedButton13Click(Sender: TObject);
begin
  //PStockee.SupprimerLettreNonValide;
end;

procedure TFJournal.SpeedButton16Click(Sender: TObject);
var nbcredit,nbdebit:shortint;
     audebit,aucredit:string;
begin
  if ValideSaisie(nbcredit,nbdebit,audebit,aucredit,true)=0 then
    showMessage('Valide')
end;

procedure TFJournal.SpeedButton18Click(Sender: TObject);
begin
  if Edit4.text > '' then
  begin
    if MessageDlg('Voulez-vous vraiement supprimer '+':'+Edit4.text + ' dans la base '+PStockee.Operation1.Connection.DefaultDatabase,
       mtConfirmation,[mbYes, mbNo],0)= mrYes then
    begin
      PStockee.Operation1.close;
      PStockee.Operation1.SQL.Clear;
      PStockee.Operation1.SQL.Add('DELETE FROM eltjrn WHERE journal like ''%'+Edit4.text+'%'';' );
      PStockee.Operation1.SQL.Add('DELETE FROM journal WHERE code like ''%'+Edit4.text+'%'';' );
      PStockee.Operation1.ExecSQL;
    end;
  end
  else
    showMessage('Completez la pièce')
end;

end.

