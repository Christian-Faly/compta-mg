unit Ecriture_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  ADODB;

type
  TFEcriture = class(TForm)
    Panel7: TPanel;
    PageControl2: TPageControl;
    Journaux: TTabSheet;
    Ecriture: TTabSheet;
    GAbonn: TTabSheet;
    Arrete: TTabSheet;
    GroupBox2: TGroupBox;
    SpeedButton7: TSpeedButton;
    Label1: TLabel;
    SpeedButton12: TSpeedButton;
    Edit12: TEdit;
    Edit13: TEdit;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    UpDown1: TUpDown;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    UpDown2: TUpDown;
    GroupBox1: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label9: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit6: TEdit;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox5: TGroupBox;
    SpeedButton11: TSpeedButton;
    Label7: TLabel;
    SpeedButton8: TSpeedButton;
    RadioGroup2: TRadioGroup;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit2: TEdit;
    Edit7: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    ADOQuery1: TADOQuery;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure PageControl2Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit16Change(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    ParPiece:boolean;
    procedure ChangePage;
    procedure Ouvrir(ActivePageIndex:integer);
    procedure Cacher;
    procedure SelectJournal;
    function VerifierPeriode:boolean;
    procedure EmpecheEtat(oui:boolean);
    procedure AfficheDate(dt:TDateTime);
    procedure Cloturer;
    //procedure GrillerSiModifSaisie(CodeSoc:string;Oui:boolean);
  public
    { Public declarations }
  end;

var
  FEcriture: TFEcriture;

procedure AsehoyEcriture(ActivePageIndex:integer);

implementation

uses USQL, Daspecia, UPStocke, DaCommun, Journaux_U, Journal, Guidabon,  TypeElmt,
  UMoteur, ImpPlan, UAide, UConnect;

{$R *.dfm}

procedure AsehoyEcriture(ActivePageIndex:integer);
begin
  if FEcriture = nil then
    FEcriture := TFEcriture.Create(Application)
  else
    FEcriture.WindowState := wsMaximized;
  FEcriture.Ouvrir(ActivePageIndex);
end;

procedure TFEcriture.Cacher;
begin
  //Panel1.Visible:=true;
  //Image1.Visible:=false;
  DBGrid3.Visible:=false;
  DBGrid2.Visible:=false;
end;

procedure TFEcriture.AfficheDate(dt:TDateTime);
var  Year, Month, Day: Word;
begin
  DecodeDate(dt,Year,Month,Day);
  Edit4.text:=inttostr(Year);
  UpDown1.Position:=Year;
  ComboBox2.ItemIndex:=Month-1;
  {Edit1.text:=inttostr(Year);
  ComboBox1.ItemIndex:=Month-1;}
end;

procedure TFEcriture.Ouvrir(ActivePageIndex:integer);
begin
  PageControl2.ActivePageIndex:= ActivePageIndex;
  PageControl2.visible:=false;
  Cacher;
  ChangePage;
end;

procedure TFEcriture.ChangePage;
begin
  GroupBox2.Visible:=false;
  DBGrid3.Visible:=false;
  DBGrid2.Visible:=false;
  GroupBox3.visible:=false;
  GroupBox1.visible:=false;
  Label5.visible:=false;
  Edit1.visible:=false;
  UpDown2.visible:=false;
  Label2.visible:=false;
  ComboBox1.visible:=false;
  if PageControl2.ActivePage=Ecriture then
  begin
    //Panel1.Caption:='Saisie des écritures';
    GroupBox2.Visible:=true;
    GroupBox3.visible:=true;
    //PStockee.RSelJour.open;
    DataSource1.DataSet:=PStockee.RSelJour;
  end;

  if PageControl2.ActivePage=Journaux then
  begin
    //Panel1.Caption:='Saisie des journaux centralisateurs';
    Special.Journaux.open;
    DataSource1.DataSet:=Special.Journaux;
  end;
  if PageControl2.ActivePage=GAbonn then
  begin
    //Panel1.Caption:='Saisie des guide d''abonnement';
    DataSource1.DataSet:=Special.Guidabon;
  end;
  if PageControl2.ActivePage=Arrete then
  begin
    //panel1.caption:='Arrêter une période sur un journaux';
    GroupBox3.visible:=true;
    GroupBox2.visible:=true;
    Special.Arrete.open;
    DataSource1.DataSet:=Special.Arrete;
  end;
end;

procedure TFEcriture.PageControl2Change(Sender: TObject);
begin
  ChangePage;
end;

procedure TFEcriture.SpeedButton5Click(Sender: TObject);
begin
  if length(Edit3.text)>0 then AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else AsehoyLstCpt('60',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  edit3.text:=Commun.TemponString1.Value;
end;

procedure TFEcriture.SpeedButton12Click(Sender: TObject);
begin
  Edit1.text:=edit4.text;
  ComboBox1.ItemIndex:=ComboBox2.ItemIndex;
  SelectJournal;
end;

function TFEcriture.VerifierPeriode:boolean;
var andro,volana,taona:word;
    stDeb,stFin,stPeriode:string;
begin
  DecodeDate(commun.SocieteExerDeb.Value,taona,volana,andro);
  stDeb:=IntTostr(taona)+FormatFloat('00',volana);
  DecodeDate(commun.SocieteExerFin.Value,taona,volana,andro);
  stFin:=IntTostr(taona)+FormatFloat('00',volana);
  stPeriode := EnleveBlanc(edit4.text)+FormatFloat('00',ComboBox2.ItemIndex+1);
  //showMessage(stdeb+'<='+stperiode+'<='+stfin);
  if (stdeb<=stperiode)and(stperiode<= stfin)then
    Result:=true
  else
    Result:=false;
end;

procedure TFEcriture.SelectJournal;
begin
  if not VerifierPeriode then
  begin
    showMessage('Période non valide');
    exit;
  end;
  PStockee.RSelJour.close;
  PStockee.RSelJour.SQL.Clear;
  PStockee.RSelJour.SQL.Add('select * from SelJour ');
  if Edit12.text<>'' then
  begin
    PStockee.RSelJour.SQL.Add('where(codejrnx=:x) ');
    PStockee.RSelJour.SQL.Add('and(periode>=:y)and(periode<=:z) ');
  end
  else
      PStockee.RSelJour.SQL.Add('where(periode>=:y)and(periode<=:z) ');
  PStockee.RSelJour.SQL.Add('order by Journal, Numero, Debit ');
  if Edit12.text<>'' then
    PStockee.RSelJour.parameters[0].Value:=EnleveBlanc(edit12.text);
  PStockee.RSelJour.parameters[1].Value:=edit1.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);
  PStockee.RSelJour.parameters[2].Value:=edit1.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);
  PStockee.RSelJour.open;

  DASQL.QJournaux.Close;
  DASQL.QJournaux.Parameters[0].Value:=Edit12.text;
  DASQL.QJournaux.Open;
end;

procedure TFEcriture.SpeedButton7Click(Sender: TObject);
begin
  AsehoyJournaux(1);
  edit12.text:=Special.JournauxCode.Value;
  edit13.text:=Special.JournauxIntitule.Value;
end;

procedure TFEcriture.SpeedButton9Click(Sender: TObject);
begin
  if length(Edit6.text)>0 then
    AsehoyLstCpt(Edit1.text,Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true)
  else
    AsehoyLstCpt('60',Special.param_serverip.Value,Commun.SocieteChemin.Value,false,true);
  Commun.Tempon.requery;
  edit6.text:=Commun.TemponString1.Value;
end;

procedure TFEcriture.EmpecheEtat(oui:boolean);
begin
end;

procedure TFEcriture.Cloturer;
var total:int64;
  Year,Month,Day:Word;
  i,mrConfirm,mrAide:integer;
begin
  mrConfirm:=MessageDlg('Une fois clôturé vous ne pouvez plus faire des modifications ou ajout d''écriture,'+
      'Voulez-vous vraiement clôturé ?',MtConfirmation,[mbYes,mbNo,mbAll],0);
  case mrConfirm of
    mrNo   : Exit;
    mrAll  :
      begin
        mrAide:=FAide.Asehoy('Clôture');
        case mrAide of
          mrOK   :Exit;
          mrRetry:;
        end;
      end;
    mrYes  :;
  end;

  // Test existance journaûx de clôture
  DASQL.QJournaux.Close;
  DASQL.QJournaux.Parameters[0].Value:='CL';
  DASQL.QJournaux.Open;
  if DASQL.QJournaux.RecordCount=0 then
  begin
    ShowMessage('Créer le journal clôture ''CL'' et le compte de clôture avant de poursuivre');
    exit;
  end;

  // Il faut paramétrer le compte de clôture avant de poursuivre
  if DASQL.QJournauxCompte.Value<'0' then
  begin
    ShowMessage('Créer le compte de clôture dans le journal avant de poursuivre');
    exit;
  end;

  // Lancer la balance générale avant de faire la clôture et editer si besoin
  if MessageDlg('La balance générale avant clôture est-elle déjà editée ?',
                  MtConfirmation,[mbYes,mbNo],0)=mrNo then exit;

  if MessageDlg('Etes-vous sûr de la date de fin d''exercice : '+
                  FormatDateTime('dd/mm/yyyy',Commun.SocieteExerFin.Value),
                  MtConfirmation,[mbYes,mbNo],0)=mrNo then exit;

    DecodeDate(Commun.SocieteExerFin.Value,Year,Month,Day);

    // Prise en compte du fichier PrepCons qui est créé pendant le lancement du balance général
    special.TCloture.Close;
    special.TCloture.Connection:=DaConnect.C_Document;
    special.TCloture.TableName:='PrepCons';

    // Création de l'entête de l'écriture CL0001
    total:=0;
    try
      Special.Journal.Open;
      Special.Journal.Insert;
      Special.JournalCode.Value:='CL'+FormatFloat('00',Month)+'0001';
      Special.JournalCodeJrnx.Value:='CL';
      Special.JournalPeriode.Value:= inttostr(Year)+'/'+FormatFloat('00',Month);
      Special.JournalDateEsc.Value:= Commun.SocieteExerFin.Value;
      Special.JournalJour.Value:=1;
      Special.Journal.Post;
    except
      On EDataBaseError do
      begin
        Special.Journal.Cancel;
        ShowMessage('Clôture déjà lancée');
        exit;
      end;
    end;

    // Création de ligne de l'écriture CL0001 6 à 7 + 120100000
    Special.ToutEltJrn.Open;
    special.TCloture.open;
    special.TCloture.first;

    PStockee.RIncreEltJrn.Open;
    PStockee.RIncreEltJrn.Requery;
    i:=0;

    while not special.TCloture.EOF do
    begin
      if ((special.TClotureDEBIT.Value>0) or(special.TClotureCredit.Value>0))
         and (special.TClotureCOMPTE.Value>'6') then
      begin
        Special.ToutEltJrn.Insert;
        i:=i+1;
        Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value+i;
        Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0001';;
        Special.ToutEltJrnCompte.Value:=special.TClotureCOMPTE.Value;
        Special.ToutEltJrnLibelle.Value:='Clôture';
        Special.ToutEltJrnMontant.Value:=abs(special.TClotureCREDIT.Value - special.TClotureDEBIT.Value);
        if special.TClotureCREDIT.Value> special.TClotureDEBIT.Value then
          Special.ToutEltJrnDebit.Value:='D'
        else
          Special.ToutEltJrnDebit.Value:='C';
        Special.ToutEltJrn.Post;
        total:= total + special.TClotureCREDIT.Value-special.TClotureDEBIT.Value;
      end;
      special.TCloture.next;
    end;
    i:=i+1;

    Special.ToutEltJrn.Insert;
    Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value+i;
    Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0001';
    Special.ToutEltJrnCompte.Value:=DASQL.QJournauxCompte.Value;
    Special.ToutEltJrnLibelle.Value:='Clôture';
    Special.ToutEltJrnMontant.Value:=abs(Total);
    if Total> 0 then
      Special.ToutEltJrnDebit.Value:='C'
    else
      Special.ToutEltJrnDebit.Value:='D';
    Special.ToutEltJrn.Post;


    try
      Special.Journal.Open;
      Special.Journal.Insert;
      Special.JournalCode.Value:='CL'+FormatFloat('00',Month)+'0002';
      Special.JournalCodeJrnx.Value:='CL';
      Special.JournalPeriode.Value:= inttostr(Year)+'/'+FormatFloat('00',Month);
      Special.JournalDateEsc.Value:= Commun.SocieteExerFin.Value;
      Special.JournalJour.Value:=1;
      Special.Journal.Post;
    except
      On EDataBaseError do
      begin
        Special.Journal.Cancel;
        ShowMessage('Clôture déjà lancée');
        exit;
      end;
    end;

    PStockee.RIncreEltJrn.Open;
    PStockee.RIncreEltJrn.Requery;

    Special.ToutEltJrn.Insert;
    Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value +1;
    Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0002';
    Special.ToutEltJrnCompte.Value:=DASQL.QJournauxCompte.Value;
    Special.ToutEltJrnLibelle.Value:='Clôture';
    Special.ToutEltJrnMontant.Value:=abs(Total);
    if Total> 0 then
      Special.ToutEltJrnDebit.Value:='D'
    else
      Special.ToutEltJrnDebit.Value:='C';
    Special.ToutEltJrn.Post;

    Special.ToutEltJrn.Insert;
    Special.ToutEltJrnNumero.Value:=PStockee.RIncreEltJrnDernierNum.Value +2;
    Special.ToutEltJrnJournal.Value:='CL'+FormatFloat('00',Month)+'0002';
    Special.ToutEltJrnCompte.Value:='12010000';
    Special.ToutEltJrnLibelle.Value:='Clôture';
    Special.ToutEltJrnMontant.Value:=abs(Total);
    if Total> 0 then
      Special.ToutEltJrnDebit.Value:='C'
    else
      Special.ToutEltJrnDebit.Value:='D';
    Special.ToutEltJrn.Post;

    ShowMessage('Clôture terminée');
end;


procedure TFEcriture.SpeedButton1Click(Sender: TObject);
var perdeb:string;
begin
  {if not VerifierPeriode then
  begin
    showMessage('Période non valide');
    exit;
  end;}
  perdeb:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
  // ============ Journaux ==================
  if PageControl2.ActivePage=Journaux then
  begin
    AsehoyJournaux(0);
    if length(Edit12.text)>0 then
      Special.JournauxCode.Value;
  end;

  // ============ Ecriture ==================
  if PageControl2.ActivePage= Ecriture then
  Begin
    EmpecheEtat(false);
    if length(Edit13.text)=0 then
    begin
      MessageDlg('Ce journal n''existe pas',mterror,[mbok],0);
      exit;
    end;
    {if not Commun.EstCePeutEntrer(util,EnleverLettre(Ajoutcriture1.Caption,'&'),true) then exit;}
    PStockee.RLeDernier.Close;
    PStockee.RLeDernier.parameters[0].Value:=enleveBlanc(edit12.text);
    PStockee.RLeDernier.parameters[1].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
    PStockee.RLeDernier.Open;
    {if PStockee.RLeDernier.EOF then
      ShowMessage('Tsisy '+
                  edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1)+
                  enleveBlanc(edit12.text)+'L')
    else
      ShowMessage(PStockee.RLeDernierFarany.Value );}
    DASQL.SelArrete.Close;
    DASQL.SelArrete.parameters[0].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
    DASQL.SelArrete.parameters[1].Value:=edit12.text;
    DASQL.SelArrete.Open;
    {if DASQL.SelArrete.recordcount=0 then
    begin
      MessageDlg('La période n''est pas encore ouverte',mterror,[mbok],0);
      exit;
    end
    else }
    begin
      if DASQL.SelArreteArreter.Value=1 then
        MessageDlg('Période déjà arrêtée',mtconfirmation,[mbok],0)
      else
      begin
        if not parpiece then
        begin
          parpiece:=true;
          PStockee.RSelJour.close;
          PStockee.RSelJour.SQL.Clear;
          PStockee.RSelJour.SQL.Add('select * from SelJour ');
          PStockee.RSelJour.SQL.Add('where(codejrnx=:x) ');
          PStockee.RSelJour.SQL.Add('and(periode>=:y)and(periode<=:z) ');
          PStockee.RSelJour.SQL.Add('order by Journal, Numero, Debit ');
          PStockee.RSelJour.parameters[0].Value:=edit12.text;
          PStockee.RSelJour.parameters[1].Value:=edit1.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);
          PStockee.RSelJour.parameters[2].Value:=edit1.text+'/'+formatfloat('00',ComboBox1.ItemIndex+1);
          PStockee.RSelJour.open;
        end;
        PStockee.RSelJour.last;
        DASQL.SelArrete.edit;
        DASQL.SelArreteDernierNum.Value:=PStockee.RSelJourJournal.value;
        DASQL.SelArrete.post;
        AsehoyJournal(0);
        //if FJournal.Asehoy(0)=mrOK then
          //GrillerSiModifSaisie(Commun.SocieteChemin.Value, False);
      end;
    end;
    PStockee.RSelJour.open;
    //showMessage('DtImprBal 0');
    Special.DtImprBal.Open;while not Special.DtImprBal.EOF do Special.DtImprBal.delete;
    //showMessage('DtImprBal 1');
  end;

  if PageControl2.ActivePage=GAbonn then
    FGuidAbon.Asehoy(0);
  if PageControl2.ActivePage=Arrete then
  begin
    try
      Special.Arrete.insert;
      Special.ArretePeriode.Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
      Special.ArreteJournaux.Value:=edit12.text;
      Special.ArreteArreter.Value:=0;
      Special.Arrete.Post;
    except
      On EDataBaseError do
      begin
        MessageDlg('Cette période existe déjà',mterror,[mbok],0);
        Special.Arrete.Cancel;
      end;
    end;
  end;
end;

procedure TFEcriture.SpeedButton10Click(Sender: TObject);
var bm:TBookMark;
begin
 if PageControl2.ActivePage=Journaux then
   AsehoyJournaux(1);
 if PageControl2.ActivePage=Ecriture then
 begin
    if not VerifierPeriode then
    begin
      showMessage('Période non valide');
      exit;
    end;
   {if not Commun.EstCePeutEntrer(util,EnleverLettre(Modifcriture1.Caption,'&'),true) then exit;}
   EmpecheEtat(true);
   bm:=PStockee.RSelJour.GetBookmark;
   edit17.text:=PStockee.RSelJourNumFact.Value;
   edit2.text:=PStockee.RSelJourCompte.Value;
   edit16.text:=COPY(PStockee.RSelJourJournal.Value,5,4);
   DASQL.SelJournal.close;
   DASQL.SelJournal.sql.clear;
   DASQL.SelJournal.sql.Add('select * from Journal  ');
   DASQL.SelJournal.sql.Add('where Code=:a');
   DASQL.SelJournal.parameters[0].value:=PStockee.RSelJourJournal.Value;
   DASQL.SelJournal.open;
   DASQL.SelEltJrn.close;
   DASQL.SelEltJrn.sql.clear;
   DASQL.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
   DASQL.SelEltJrn.parameters[0].Value:=DASQL.SelJournalCode.Value;
   DASQL.SelEltJrn.open;

   DASQL.SelArrete.Close;
   DASQL.SelArrete.parameters[0].Value:=edit4.text+'/'+formatfloat('00',ComboBox2.ItemIndex+1);
   DASQL.SelArrete.parameters[1].Value:=edit12.text;
   DASQL.SelArrete.Open;
   {if DASQL.SelArrete.recordcount=0 then
   begin
     MessageDlg('La période n''est pas encore ouverte',mterror,[mbok],0);
     exit;
   end
   else
   begin
     if DASQL.SelArreteArreter.Value=1 then
        MessageDlg('Période déjà arrêtée',mtconfirmation,[mbok],0)
     else
     begin}

        {if FJournal.Asehoy(1)=mrOK then
          GrillerSiModifSaisie(Commun.SocieteChemin.Value,False);}

     //end;
   //end;
   AsehoyJournal(1);
   PStockee.RSelJour.open;
   PStockee.RSelJour.GotoBookmark(bm);
   PStockee.RSelJour.FreeBookmark(bm);
   Special.DtImprBal.Open;while not Special.DtImprBal.EOF do Special.DtImprBal.delete;
 end;
 if PageControl2.ActivePage=Arrete then
 begin
   Special.Arrete.edit;
   Special.ArreteArreter.Value:=0;
   Special.Arrete.post;
 end;
 if PageControl2.ActivePage=GAbonn then FGuidAbon.Asehoy(1);
end;

procedure TFEcriture.SpeedButton2Click(Sender: TObject);
var mr:longint;
  //Bookmark: TBookmark;
begin
  if PageControl2.ActivePage=Arrete then
  begin
    if Special.Arrete.recordcount=0 then exit;
    mr:=MessageDlg('Voulez vous supprimer cette période ?'+
      'oui (pour supprimer) Non(Pour Arrêter)',
      mtconfirmation,[mbYes,mbNo,mbCancel],0);
    case mr of
      mryes:
        Special.Arrete.delete;
      mrNo:
        begin
          Special.Arrete.edit;
          Special.ArreteArreter.value:=1;
          Special.Arrete.cancel;
        end;
      mrCancel:exit;
    end;
  end;
  if MessageDlg('Voulez-vous vraiement supprimer',mtconfirmation,
       [mbYes,mbNo],0)=mrNo then exit;
  EmpecheEtat(false);
  if PageControl2.ActivePage=Journaux then
  begin
    Special.Journaux.delete;
    {GrillerSiModifSaisie(Commun.SocieteChemin.Value,False);}
  end;
  if PageControl2.ActivePage=Ecriture then
  begin
    {if not Commun.EstCePeutEntrer(util,EnleverLettre(Supprcriture1.Caption,'&'),true) then exit;}
    edit17.text:=PStockee.RSelJourNumFact.Value;
    edit2.text:=PStockee.RSelJourCompte.Value;
    edit16.text:=PStockee.RSelJourJournal.Value;
    DASQL.SelJournal.close;
    DASQL.SelJournal.sql.clear;
    DASQL.SelJournal.sql.Add('select * from Journal  ');
    DASQL.SelJournal.sql.Add('where Code='''+PStockee.RSelJourJournal.Value+'''');
    DASQL.SelJournal.open;

    if EnleveBlanc(Edit12.text)<>'XX' then
    begin
      try
        DASQL.SelJournal.edit;
        DASQL.SelJournalCodeJrnx.value:='XX';
        DASQL.SelJournal.post;
      except
        on EDataBaseError do;
      end;
    end
    else
    begin
      DASQL.SelEltJrn.close;
      DASQL.SelEltJrn.sql.clear;
      DASQL.SelEltJrn.sql.Add('select * from EltJrn ');
      DASQL.SelEltJrn.sql.Add('where Journal='''+PStockee.RSelJourJournal.Value+'''');
      DASQL.SelEltJrn.open;
      while not DASQL.SelEltJrn.EOF do
      begin
        if length(DASQL.SelEltJrnLettre.Value)>0 then
          PStockee.SupprimerLettre(DASQL.SelEltJrnLettre.Value);
        DASQL.SelEltJrn.Next;
      end;
      //Suppression lettrage
      Moteur.SuppEcriture(DASQL.SelJournalCode.Value);
      DASQL.SelJournal.Requery([eoAsyncFetch]);
    end;
    TRY
      PStockee.RSelJour.GetBookMark;
      //Bookmark := PStockee.RSelJour.GetBookmark; { alloue la mémoire et affecte une valeur }
      PStockee.RSelJour.close;
      PStockee.RSelJour.open;
      //PStockee.RSelJour.GotoBookmark(Bookmark);
      //PStockee.RSelJour.FreeBookmark(Bookmark); {restitue la mémoire allouée au signet }
    EXCEPT
      On EDataBaseError do;
    end;
   Special.DtImprBal.Open;while not Special.DtImprBal.EOF do Special.DtImprBal.delete;
  end;
  if PageControl2.ActivePage=GAbonn then
    Special.Guidabon.delete;
end;

procedure TFEcriture.SpeedButton8Click(Sender: TObject);
begin
  while not PStockee.RSelJour.eof do
  begin
    if MessageDlg(PStockee.RSelJourCompte.Value+' '+PStockee.RSelJourDebit.Value+':       '+
              FormatFloat('#,###',PStockee.RSelJourMDebit.Value)+
              FormatFloat('#,###',PStockee.RSelJourMCredit.Value)+'          Continuez?',
              mtConfirmation,[mbyes,mbno],0)=mrNo then break;
    PStockee.RSelJour.Next;
  end;

end;

procedure TFEcriture.SpeedButton11Click(Sender: TObject);
var farany:integer;
begin
  farany:=PStockee.RSelJour.SQL.Count-1;
  PStockee.RSelJour.Close;
  case RadioGroup2.ItemIndex of
    0:begin
        PStockee.RSelJour.SQL[farany]:='order by Journal, Numero, Debit ';
      end;
    1:begin
        PStockee.RSelJour.SQL[farany]:='order by NumFact,Journal, Numero, Debit ';
      end;
    2:begin
        PStockee.RSelJour.SQL[farany]:='order by compte,Debit ';
      end;
    3:begin
        PStockee.RSelJour.SQL[farany]:='order by DateEsc,Journal,Debit ';
      end;
  end;
  PStockee.RSelJour.Open;

  case RadioGroup2.ItemIndex of
    0:begin
        if EnleveBlanc(Edit16.Text)<>'' then
          PStockee.RSelJour.Locate('Journal',EnleveBlanc(Edit16.Text),[loCaseInsensitive	]);
        parpiece:=true;
      end;
    1:begin
        if EnleveBlanc(Edit17.Text)<>'' then
          PStockee.RSelJour.Locate('NumFact',EnleveBlanc(Edit17.Text),[loCaseInsensitive,loPartialKey	]);
      end;
    2:begin
        if EnleveBlanc(Edit2.Text)<>'' then
          PStockee.RSelJour.Locate('compte',EnleveBlanc(Edit2.Text),[loCaseInsensitive,loPartialKey]);
      end;
    3:begin
        if EnleveBlanc(Edit7.Text)<>'' then
          PStockee.RSelJour.Locate('DateEsc',EnleveBlanc(Edit7.Text),[loCaseInsensitive	]);
      end;
  end;
end;

procedure TFEcriture.Edit12Change(Sender: TObject);
begin
  SpeedButton4.Visible := (Edit12.Text = 'CL');
  if CheckBox1.Checked then
    SpeedButton12Click(Sender);
end;

procedure TFEcriture.Edit4Change(Sender: TObject);
begin
  if CheckBox1.Checked then
    SpeedButton12Click(Sender);
end;

procedure TFEcriture.ComboBox2Change(Sender: TObject);
begin
  if CheckBox1.Checked then
    SpeedButton12Click(Sender);
end;

procedure TFEcriture.FormCreate(Sender: TObject);
var dt:TDateTime;
begin
  parpiece:=true;
  Edit12.text:='';
  Edit16.text:='';
  Edit17.text:='';
  Edit2.text:='';
  Edit13.text:='';
  Edit7.text:='';
  dt:=now;
  AfficheDate(dt);
end;



procedure TFEcriture.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
          Dbgrid1.Canvas.Brush.Color:=$00FFFF80;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

procedure TFEcriture.Edit16Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=0;
end;

procedure TFEcriture.Edit17Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=1;
end;

procedure TFEcriture.Edit2Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=2;
end;

procedure TFEcriture.Edit7Change(Sender: TObject);
begin
  RadioGroup2.ItemIndex:=3;
end;

procedure TFEcriture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FEcriture:=Nil;
end;

procedure TFEcriture.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TFEcriture.SpeedButton4Click(Sender: TObject);
begin
  Cloturer;
  SpeedButton4.Visible := False;
end;

end.
