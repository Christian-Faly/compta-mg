unit SaiPaiem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ComCtrls, StdCtrls, Grids, DBGrids, Db, ExtCtrls, DBCtrls,
  Qrctrls, quickrpt, Mask, Menus;

type
  TFSaiPaiem = class(TForm)
    SourceClient: TDataSource;
    SourceRegleme: TDataSource;
    SourcePaie: TDataSource;
    Timer1: TTimer;
    SourceJournal: TDataSource;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GroupBox2: TGroupBox;
    CheckBox2: TCheckBox;
    Edit18: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    ComboBox2: TComboBox;
    Label23: TLabel;
    Edit19: TEdit;
    Edit20: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Edit21: TEdit;
    Label26: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    MaskEdit1: TMaskEdit;
    Edit27: TEdit;
    Label33: TLabel;
    UpDown1: TUpDown;
    Label34: TLabel;
    Label35: TLabel;
    Numero: TLabel;
    Edit28: TEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Edit44: TEdit;
    Label56: TLabel;
    Label20: TLabel;
    Label57: TLabel;
    SpeedButton12: TSpeedButton;
    StringGrid2: TStringGrid;
    Edit116: TEdit;
    Label58: TLabel;
    Label59: TLabel;
    RadioGroup5: TRadioGroup;
    ComboBox5: TComboBox;
    Label60: TLabel;
    Label61: TLabel;
    Edition: TMainMenu;
    Edition1: TMenuItem;
    Ajouter1: TMenuItem;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    SpeedButton15: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Label62: TLabel;
    Edit45: TEdit;
    Label63: TLabel;
    Edit46: TEdit;
    GroupBox5: TGroupBox;
    Ancien: TLabel;
    Label27: TLabel;
    Edit48: TEdit;
    Edit3: TEdit;
    Edit14: TEdit;
    Edit2: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    DataSource1: TDataSource;
    SpeedButton13: TSpeedButton;
    Label64: TLabel;
    Edit47: TEdit;
    procedure Edit13Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit21Change(Sender: TObject);
    procedure Edit22Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit23Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit25Change(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Label34Click(Sender: TObject);
    procedure Edit13Enter(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Edit27Change(Sender: TObject);
    procedure Ajouter1Click(Sender: TObject);
    procedure Edit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit24KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit26KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit44KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit22KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit3Change(Sender: TObject);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit4Change(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Label35Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Edit20Change(Sender: TObject);
    procedure Edit48Change(Sender: TObject);
    procedure Edit23KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox2Click(Sender: TObject);
    procedure Edit23Click(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure ComboBox5Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
    NoChange:boolean;
    et,mody,pg,casy:shortint;
    Jrnx,Tiers:string;
    tottva:double;
    cpttva:string;
    periode,CodeSoc:string;
    procedure Ouverture;
    procedure Initialisation;
    procedure Fafao;
    procedure DebNumCpt(produit,tiers:string);
    function  SelectDivers(NumDivers:string):boolean;
    function  Afficheo:boolean;
    procedure SelectTaxe;
  public
    { Déclarations publiques }
    ip2:string;
    procedure Asehoy(etat,mode,pejy:shortint;Jx,Tie,perio,ip,chem:string;cas:shortint);
  end;

var
  FSaiPaiem: TFSaiPaiem;

procedure AsehoySaiPaiem(etat,mode,pejy:shortint;Jx,Tie,perio,ip,Chem:string;cas:shortint);export;

implementation


{$R *.DFM}

uses   UDaLettr, TypeElmt, ImpPlan;

procedure AsehoySaiPaiem(etat,mode,pejy:shortint;Jx,Tie,perio,ip,Chem:string;cas:shortint);
begin
  try
    DataTiers:=TDataTiers.Create(Application);
    FSaiPaiem:=TFSaiPaiem.Create(Application);
    FSaiPaiem.Asehoy(etat,mode,pejy,Jx,Tie,perio,ip,chem,cas);
  finally
    FSaiPaiem.free;
    VonoyDataTiers;
  end;
end;

procedure TFSaiPaiem.Asehoy(etat,mode,pejy:shortint;Jx,Tie,perio,ip,chem:string;cas:shortint);
var mt,sstot:double;
okay:boolean;
begin
  ip2:=ip;
  ChangeCheminTiers(ip,chem);
  DataTiers.RIncreEltJrn.open;
  codeSoc:=chem;
  periode:=perio;
  //showmessage(DataTiers.DernierNum.DatabaseName+' - '+  Jx+' '+perio);
  DataTiers.DernierNum.close;
  DataTiers.DernierNum.parameters[0].Value:=Jx;
  DataTiers.DernierNum.parameters[1].Value:=perio;
  DataTiers.DernierNum.open;
  if DataTiers.DernierNum.EOF then
    Edit25.text:=EnleveBlancDroite(Jx)+copy(perio,6,2)+'0000'
  else
  begin
    DataTiers.DernierNum.last;
    Edit25.text:=DataTiers.DernierNumCode.Value;
  end;
  SpeedButton8.caption:='Ajouter';
  WindowState:=WsMaximized;
  DataTiers.ToutEltJrn.open;
  casy:=cas;
  pg:=pejy;
  ComboBox2.text:='';
  tottva:=0;
  case pejy of
    2:begin
        WindowState:=wsNormal;
        Fafao;
        Label19.Caption:='Fournisseurs';
        Label2.Caption:='Compte M/se';
        DebNumCpt('6071','4011');
        PageControl1.ActivePage:=TabSheet2;
        TabSheet2.Caption:='Achat Produits locaux';
        Label26.Visible:=true;
        Edit21.Visible:=true;
        Edit22.Visible:=true;
        Label28.Visible:=true;
      end;
    3:begin
        WindowState:=wsNormal;
        DebNumCpt('70','4111');
        Label19.Caption:='Clients';
        Label2.Caption:='Compte M/se';
        PageControl1.ActivePage:=TabSheet2;
        TabSheet2.Caption:='Ventes Marchandises';
        Label26.Visible:=true;
        Edit21.Visible:=true;
        Edit22.Visible:=true;
        Label28.Visible:=true;
      end;
    4:begin
        WindowState:=wsNormal;
        PageControl1.ActivePage:=TabSheet2;
        DebNumCpt('','');
        TabSheet2.Caption:='Prestation de service';
        Label2.caption:='compte à créditer';
        Label19.caption:='compte à débiter';
        Label26.Visible:=false;
        Edit21.Visible:=false;
        Edit22.Visible:=false;
        Label28.Visible:=false;
      end;
    5:begin
        WindowState:=wsNormal;
        Numero.caption:='N° Nav. / Véh.';
        Label2.caption:='compte à créditer';
        Label19.caption:='compte à debiter';
        Edit28.visible:=true;
        Numero.visible:=true;
        PageControl1.ActivePage:=TabSheet2;
        DebNumCpt('','');
        TabSheet2.Caption:='Transport';
        Label26.Visible:=false;
        Edit21.Visible:=false;
        Edit22.Visible:=false;
        Label28.Visible:=false;
      end;
  end;
  et:=etat;
  Jrnx:=Jx;
  mody:=mode;
  Tiers:=Tie;
  Initialisation;
  Timer1.enabled:=false;
  Ouverture;
  case mode of
  0:Fafao;
  1:begin
    end;
  end;
  DataTiers.Tempon.open;
  ComboBox2.Items.clear;
  DataTiers.taxe.open;
  DataTiers.taxe.first;
  ComboBox2.Items.Add('Néant');
  while not DataTiers.taxe.eof do
  begin
    ComboBox2.Items.Add(DataTiers.taxeSigle.Value);
    DataTiers.taxe.next;
  end;
  ComboBox2.ItemIndex:=1;
  DataTiers.SelTaxe.close;
  DataTiers.SelTaxe.SQL.clear;
  DataTiers.SelTaxe.SQL.Add('select * from Taxe');
  DataTiers.SelTaxe.SQL.Add('where (collecte=:x) or (deductible=:x)');
  okay:=true;
  if casy=1 then
  begin
    Label34.caption:='70';
    if not afficheo then okay:=false;
    SpeedButton8.Caption:='Modifier';
  end;
  MaskEdit1.text:=FormatDateTime('dd/mm/yyyy',date);
  if not avadihoreal(edit20.text,mt) then mt:=0;
  if not avadihoreal(edit3.text,sstot) then sstot:=0;
  Edit14.text:=FormatFloat('#,###',mt+sstot);
  if okay then ShowModal;
end;

function TFSaiPaiem.Afficheo:boolean;
var zero,compte1,compte2:string;
  i,nbMse,nbelt,nbtaxe:integer;
  hita:boolean;
  mttva,mt,xx:double;
  totgrille:double;
begin
    DataTiers.SelJournal.close;
    DataTiers.SelJournal.sql.clear;
    DataTiers.SelJournal.sql.Add('select * from Journal  ');
    DataTiers.SelJournal.sql.Add('where Code=:a');
    DataTiers.SelJournal.parameters[0].Value:=Tiers;
    DataTiers.SelJournal.open;
    DataTiers.SelEltJrn.close;
    DataTiers.SelEltJrn.sql.clear;
    DataTiers.SelEltJrn.sql.Add('select * from EltJrn where Journal=:a');
    DataTiers.SelEltJrn.parameters[0].Value:=DataTiers.SelJournalCode.Value;
    DataTiers.SelEltJrn.open;
  zero:='';
  for i:=1 to (10-length(Label35.caption)) do zero:=zero+'0';
  MaskEdit3.editMask:=zero+';1;O';
  zero:='';
  for i:=1 to (8-length(Label34.caption)) do zero:=zero+'0';
  MaskEdit4.editMask:=zero+';1;O';
  totgrille:=0;
  edit24.text:=DataTiers.SelJournalCode.Value;
  MaskEdit1.text:=FormatDateTime('dd/mm/yyyy',DataTiers.SelJournalDateEsc.Value);
  edit27.text:=Inttostr(DataTiers.SelJournalJour.Value);
  compte2:=DataTiers.SelJournalTiers.Value;
  if Label35.visible then
  begin
    Label35.caption:=copy(compte2,1,length(Label35.caption));
    MaskEdit3.text:=copy(compte2,length(Label35.caption)+1,10);
    zero:='';
  end
  else
    MaskEdit3.text:=compte2;
  //edit116.text:=DateTimeToStr(DataTiers.SelJournalDateSaisie.Value);
  GroupBox2.visible:=false;
  CheckBox2.checked:=false;
  Edit28.text:=DataTiers.SelJournalNumCHQ.Value;
  nbMse:=0;
  nbelt:=0;
  nbtaxe:=0;
  DataTiers.SelEltJrn.first;
  while not DataTiers.SelEltJrn.eof do
  begin
    nbelt:=nbelt+1;
    compte1:=DataTiers.SelEltJrnCompte.Value;
    if (copy(compte1,1,1)='6')or(copy(compte1,1,1)='7')and (nbMse=0) then
    begin
      if Label34.visible then
      begin
        Label34.caption:=copy(compte1,1,length(Label34.caption));
        MaskEdit4.text:=copy(compte1,length(Label34.caption)+1,10);
      end
      else
        MaskEdit4.text:=compte2;
      hita:=false;
      for i:=0 to ComboBox5.Items.count-1 do
      begin
        if DataTiers.selEltJrnTypX.Value=ComboBox5.Items[i] then
        begin
          hita:=true;
          break;
        end;
      end;
      if hita then  ComboBox5.ItemIndex:=i
      else ComboBox5.ItemIndex:=-1;
      Edit26.text:=DataTiers.SelEltJrnNumFact.Value;
      Edit21.text:=FormatFloat('#,##0.####',DataTiers.SelEltJrnQte.Value);
      Edit44.text:=FormatFloat('#,##0.####',DataTiers.SelEltJrnColis.Value);
      edit13.text:=DataTiers.SelEltJrnLibelle.Value;
      ComboBox2.text:=DataTiers.SelEltJrnSigleTaxe.Value;
      {TRY
        if DataTiers.SelEltJrnQte.Value>0 then
          Edit22.text:=FormatFloat('#,##0.####',DataTiers.SelEltJrnMontant.Value/DataTiers.SelEltJrnQte.Value)
        else
          if DataTiers.SelEltJrnColis.Value>0 then
            Edit22.text:=FormatFloat('#,##0.####',DataTiers.SelEltJrnMontant.Value/DataTiers.SelEltJrnColis.Value)
      EXCEPT
        Edit22.text:='0';
      END;}
      Edit22.text:='';
      Edit23.text:=FormatFloat('#,##0.####',DataTiers.SelEltJrnMontant.Value);;
      nbMse:=nbMse+1;
    end
    else
    {Grille}
    if (copy(compte1,1,1)='6')or(copy(compte1,1,1)='7')and (nbMse>0) then
    begin
      StringGrid2.cells[0,nbMse]:=DataTiers.SelEltJrnCompte.Value;
      StringGrid2.cells[1,nbMse]:=DataTiers.SelEltJrnLibelle.Value;
      StringGrid2.cells[2,nbMse]:=FormatFloat('#,##0.####',DataTiers.SelEltJrnQte.Value);
      StringGrid2.cells[3,nbMse]:=FormatFloat('#,##0.####',DataTiers.SelEltJrnColis.Value);
      StringGrid2.cells[4,nbMse]:=DataTiers.SelEltJrnTypX.Value;
      StringGrid2.cells[5,nbMse]:=FormatFloat('#,##0',DataTiers.SelEltJrnMontant.Value);
      StringGrid2.cells[6,nbMse]:=DataTiers.SelEltJrnNumFact.Value;
      StringGrid2.cells[7,nbMse]:=DateTimeToStr(DataTiers.SelEltJrnDateFact.Value);
      StringGrid2.cells[8,nbMse]:=DataTiers.SelEltJrnSigleTaxe.Value;
      totgrille:=totgrille+DataTiers.SelEltJrnMontant.Value;
      nbMse:=nbMse+1;
    end
    else
    {TVA}
    if  copy(DataTiers.SelEltJrnCompte.Value,1,2)='44' then
    begin
      CPTTVA:=DataTiers.SelEltJrnCompte.Value;
      CheckBox2.Checked:=true;
      GroupBox2.visible:=true;
      SelectTaxe;
      Edit18.text:=DataTiers.SelEltJrnCompte.Value;
      Edit46.text:=DataTiers.SelEltJrnlibelle.Value;
      Edit14.text:=FormatFloat('#,##0',DataTiers.SelEltJrnMontant.Value);
      if not avadihoreal(edit20.text,mttva) then mttva:=0;
      Edit3.text:=FormatFloat('#,##0',DataTiers.SelEltJrnMontant.Value-mttva);
      if not avadihoreal(Edit3.text,xx) then xx:=0;
      if xx<2 then Edit3.text:='';
      nbtaxe:=nbtaxe+1;
    end;
    if  (copy(DataTiers.SelEltJrnCompte.Value,1,2)='41')or
        (copy(DataTiers.SelEltJrnCompte.Value,1,2)='40') then
    begin
      Edit45.text:=DataTiers.SelEltJrnlibelle.Value;
      Edit47.text:=FormatFloat('#,##0',DataTiers.SelEltJrnMontant.Value);
      if not avadihoreal(edit47.text,mt) then mttva:=0;
    end;
    DataTiers.SelEltJrn.next;
  end;
  edit48.text:=FormatFloat('#,##0',totgrille);
  result:=true;
  if nbelt<>(nbMse+nbtaxe+1) then
  begin
    MessageDlg('Impossible de modifiee ici. Erreurcode:'+
               inttostr(nbelt)+'-'+inttostr(nbMse)+'-'+inttostr(nbTaxe)+'-',mterror,[mbok],0);
    result:=false;
  end;
end;

procedure TFSaiPaiem.DebNumCpt(produit,tiers:string);
var zero:string;
  i:integer;
begin
  if length(tiers)>0 then
  begin
    Label35.Visible:=true;
    Label35.caption:=tiers;
    MaskEdit3.Left:=149;
    MaskEdit3.Width:=82;
  end
  else
  begin
    Label35.Visible:=false;
    MaskEdit3.Left:=101;
    MaskEdit3.Width:=130;
  end;
  if length(produit)>0 then
  begin
    Label34.Visible:=true;
    Label34.caption:=produit;
    MaskEdit4.Left:=149;
    MaskEdit4.Width:=82;
 end
 else
 begin
   Label34.Visible:=false;
   MaskEdit4.Left:=101;
   MaskEdit4.Width:=130;
 end;
 zero:='';
 for i:=1 to (8-length(Label34.caption)) do zero:=zero+'0';
 MaskEdit4.editMask:=zero+';1;O';
end;

procedure TFSaiPaiem.Ouverture;
begin
  DataTiers.Element.open;
  DataTiers.Journal.open;
  {DataTiers.RJournal.open;
  SourcePaie.DataSet:=DataTiers.Element;
  SourceJournal.DataSet:=DataTiers.RJournal;}
end;

procedure TFSaiPaiem.Initialisation;
var  Year, Month, Day: Word;
 dt:TDateTime;
 st:string;
 numb:integer;
begin
  dt:=date;
  Autoscroll:=false;
  DecodeDate(dt,Year,Month,Day);
  Edit27.text:=inttostr(Day);
  NoChange:=false;
  SourceClient.DataSet:=DataTiers.Ecriture;
  st:=copy(EnleveBlancDroite(Edit25.text),3,2);
  numb:=strtoint(st);
  case numb of
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
  Caption:= 'Journal '+copy(Edit25.text,1,2);
  Label61.caption:=st;
  StringGrid2.Cells[0,0]:='Compte';
  StringGrid2.Cells[1,0]:='Libellé';
  StringGrid2.Cells[2,0]:='Quantité';
  StringGrid2.Cells[3,0]:='Colisage';
  StringGrid2.Cells[4,0]:='Type';
  StringGrid2.Cells[5,0]:='Montant';
  StringGrid2.Cells[6,0]:='N° Fact.';
  StringGrid2.Cells[7,0]:='Dt Fact.';
  StringGrid2.Cells[8,0]:='Sigle TVA';
end;



procedure TFSaiPaiem.Edit13Change(Sender: TObject);
var sdebit,scredit:real;
begin
  {sdebit:=0;
  scredit:=0;
  DataTiers.Ecriture.OPEN;
  DataTiers.Ecriture.first;
  while not DataTiers.Ecriture.eof do
  begin
    if DataTiers.EcritureDebit.Value='D' then
      sdebit:=sdebit+DataTiers.EcritureMontant.Value
    else
      sdebit:=sdebit+DataTiers.EcritureMontant.Value;
    DataTiers.Ecriture.next;
  end; }
  edit45.text:=edit13.text;
  edit46.text:='TVA/'+edit13.text;
end;

procedure TFSaiPaiem.Fafao;
var dt:TDateTime;
    year,month,day:word;
    i,j:integer;
begin
  dt:=Date;
  DecodeDate(dt,year,month,day);
  MaskEdit4.text:='';
  Edit44.text:='';
  Edit13.text:='';
  MaskEdit3.text:='';
  Edit18.text:='';
  Edit19.text:='';
  Edit20.text:='';
  Edit21.text:='';
  Edit22.text:='';
  Edit23.text:='';
  Edit26.text:='';
  Edit3.text:='';
  Edit28.text:='';
  Edit48.text:='';
  try
    for i:=0 to 4 do
      ComboBox5.Items[i]:='';
  except
  end;
  Label58.Caption:='Abrev';
  Label28.Caption:='Unité';
  Label20.Caption:='Unité';
  for i:=0 to 8 do
    for j:=1 to 20 do StringGrid2.cells[i,j]:='';
{  TRY
    EDIT27.SetFocus;
  EXCEPT
  END;}
end;



procedure TFSaiPaiem.Timer1Timer(Sender: TObject);
begin
  edit116.text:=FormatDateTime('dd/mm/yyyy ',date)+FormatDateTime('hh:nn:ss AM/PM',time);
end;


procedure TFSaiPaiem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //FreeLibrary(HDocument);
  Timer1.enabled:=false;
end;

procedure TFSaiPaiem.SpeedButton1Click(Sender: TObject);
var i:integer;
  st:string;
begin
  if Label34.visible then
  begin
    st:=Label34.Caption+MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    AsehoyLstCpt(st,ip2,DataTiers.SocieteChemin.Value ,true ,AfakaPlan);
  end
  else
  begin
    st:=MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    AsehoyLstCpt(st,ip2,DataTiers.SocieteChemin.Value ,true,AfakaPlan);
  end;
  DataTiers.Tempon.reQuery;
  if length(DataTiers.TemponString1.Value)>0 then
  begin
    SelectDivers(DataTiers.TemponString1.Value);
    if Label34.visible then
      MaskEdit4.text:=copy(DataTiers.TemponString1.Value,length(Label34.caption)+1,10)
    else
      MaskEdit4.text:=DataTiers.TemponString1.Value;
  end
end;

function TFSaiPaiem.SelectDivers(NumDivers:string):boolean;
var i:integer;
begin
  result:=false;
  DataTiers.SelNumDivers.close;
  DataTiers.SelNumDivers.parameters[0].Value:=NumDivers;
  DataTiers.SelNumDivers.open;
  if not DataTiers.SelNumDivers.eof then
  BEGIN
{    SHOWMESSAGE(DataTiers.SelNumDiversCodeProd.Value);}
    result:=true;
  END;
  Label58.caption:=DataTiers.SelNumDiversAbrev.Value;
  ComboBox5.Items.clear;
  DataTiers.SelTypProd.close;
  DataTiers.SelTypProd.parameters[0].Value:=DataTiers.SelNumDiversCodeProd.Value;
  DataTiers.SelTypProd.open;
  DataTiers.SelTypProd.First;
  while not DataTiers.SelTypProd.eof do
  begin
    ComboBox5.Items.add(DataTiers.SelTypProdNature.Value);
    DataTiers.SelTypProd.next;
  end;
end;

procedure TFSaiPaiem.Edit21Change(Sender: TObject);
var val1,val2:double;
begin
    if AvadihoReal(edit21.text,val1)and AvadihoReal(edit22.text,val2)then
    begin
      if val1*val2<>0 then
        edit23.text:=formatfloat('#,##0',val1*val2);
    end;
end;

procedure TFSaiPaiem.Edit22Change(Sender: TObject);
var val1,val2:double;
begin
  case RadioGroup5.ItemIndex of
    0:if AvadihoReal(edit21.text,val1)and AvadihoReal(edit22.text,val2)then
        edit23.text:=formatfloat('#,##0',val1*val2);
    1:if AvadihoReal(edit44.text,val1)and AvadihoReal(edit22.text,val2)then
        edit23.text:=formatfloat('#,##0',val1*val2);
  end;
end;

procedure TFSaiPaiem.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then GroupBox2.Visible:=true
  else
  begin
    GroupBox2.Visible:=false;
    ComboBox2.text:='AUCUN';
    Edit20.text:='0';
  end;
end;

procedure TFSaiPaiem.ComboBox2Change(Sender: TObject);
begin
  SelectTaxe;
end;

procedure TFSaiPaiem.SelectTaxe;
var hita:boolean;
  i:integer;
begin
  hita:=false;
  DataTiers.taxe.First;
  while not DataTiers.taxe.eof do
  begin
    if DataTiers.taxeSigle.value=ComboBox2.text then
    begin
      hita:=true;
      break;
    end;
    DataTiers.taxe.next;
  end;
  if hita then
  begin
    edit19.text:=FormatFloat('#.####%',DataTiers.taxeTaux.value);
    edit18.text:=DataTiers.taxeDeductible.value;
    while length(edit18.text)<8 do edit18.text:=edit18.text+'0';
  end;
end;

procedure TFSaiPaiem.Edit23Change(Sender: TObject);
var val1,val2:double;
begin
  if AvadihoReal(edit23.text,val1)and AvadihoReal(edit19.text,val2)then
  begin
    if not GroupBox2.Visible then val2:=0;
    edit20.text:=formatfloat('#,##0',val1*val2+tottva);
  end;
  if not avadihoreal(edit23.text,val1) then val1:=0;
  if not avadihoreal(edit48.text,val2) then val2:=0;
  Edit47.text:=FormatFloat('#,###',val1+val2);
  Edit20Change(Sender);
  Edit48Change(Sender);
end;


procedure TFSaiPaiem.SpeedButton3Click(Sender: TObject);
var st:string;
  i:integer;
begin
  if label35.Visible then
  begin
    st:=Label35.Caption+MaskEdit3.text;
    for i:=1 to 10 do
      if st[i]=' ' then st[i]:='0';
    AsehoyLstCpt(st,ip2,DataTiers.SocieteChemin.Value,true ,AfakaPlan);
  end
  else
  begin
    st:=MaskEdit3.text;
    for i:=1 to 10 do
      if st[i]=' ' then st[i]:='0';
    AsehoyLstCpt(st,ip2,DataTiers.SocieteChemin.Value, true,AfakaPlan);
  end;
  DataTiers.Tempon.reQuery;
  if length(DataTiers.TemponString1.Value)>0 then
  begin
    if Label34.visible then
      MaskEdit3.text:=copy(DataTiers.TemponString1.Value,length(Label35.caption)+1,10)
    else
      MaskEdit3.text:=DataTiers.TemponString1.Value;
  end;
  if Label35.visible then
  begin
    st:=Label35.Caption+MaskEdit3.text;
    for i:=1 to 10 do
      if st[i]=' ' then st[i]:='0';
    DataTiers.SelNumAdres.close;
    DataTiers.SelNumAdres.parameters[0].Value:=st;
    DataTiers.SelNumAdres.open;
    edit13.text:=enleveblanc(edit13.text);
    Label59.Caption:=DataTiers.SelNumAdresNom.Value;
  end;
end;

procedure TFSaiPaiem.Edit25Change(Sender: TObject);
begin
  try
    edit24.text:=copy(edit25.text,1,4)+formatFloat('0000',strtoint(copy(edit25.text,5,4))+1);
  except
    On EConvertError do;
  end;
end;

procedure TFSaiPaiem.Edit19Change(Sender: TObject);
var val1,val2:double;
begin
  if AvadihoReal(edit23.text,val1)and AvadihoReal(edit19.text,val2)then
    edit20.text:=formatfloat('#,##0',val1*val2);
end;

procedure TFSaiPaiem.SpeedButton8Click(Sender: TObject);
var mt,mt1,mttva,val,totmt:Int64;
  coli,colis,qte,val1:double;
  compte1,compte2,st:string;
  i,j,nbcontre:integer;
  der:integer;
begin
  if SpeedButton8.caption='Modifier' then
  begin
    DataTiers.SelEltJrn.first;
    while not DataTiers.SelEltJrn.eof do DataTiers.SelEltJrn.delete;
    DataTiers.SelJournal.delete;
  end;
  if not AvadihoInt64(edit23.text,mt) then
  begin
    MessageDlg('Saisissez le montant HT',mtError, [mbOK],0);
    exit;
  end;

  if GroupBox2.visible and (not AvadihoInt64(edit20.text,mt1)) then
  begin
    MessageDlg('Saisissez le montant Taxe',mtError, [mbOK],0);
    exit;
  end;

  if not AvadihoInt64(edit14.text,mttva) then
  begin
    MessageDlg('Saisissez le montant total Taxe',mtError, [mbOK],0);
    exit;
  end;

  if length(edit26.text)=0 then
  begin
    MessageDlg('Saisissez le numéro facture',mtError, [mbOK],0);
    exit;
  end;
  edit44.text:=enleveblanc(edit44.text);
  if (length(edit44.text)>0) and (not AvadihoReal(edit44.text,coli))then
  begin
    MessageDlg('Saisissez correctement le nombre de colis s''il existe',mtError, [mbOK],0);
    exit;
  end
  else coli:=0;

  if (length(edit21.text)>0) and (not AvadihoReal(edit21.text,qte))then
  begin
    MessageDlg('Saisissez correctement la quantité s''il existe',mtError, [mbOK],0);
    exit;
  end
  else qte:=0;

  if Label35.visible then
  begin
    st:=Label34.Caption+MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    Compte1:=st;
  end
  else
  begin
    st:=MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    Compte1:=st;
  end;
  DataTiers.SelNumCpt.Close;
  DataTiers.SelNumCpt.Parameters[0].Value:=compte1;
  DataTiers.SelNumCpt.Open;

  if Label34.visible then
  begin
    st:=Label35.Caption+MaskEdit3.text;
    for i:=1 to 10 do
      if st[i]=' ' then st[i]:='0';
    Compte2:=st;
  end
  else
  begin
    st:=MaskEdit3.text;
    for i:=1 to 10 do
      if st[i]=' ' then st[i]:='0';
    Compte2:=st;
  end;
  DataTiers.SelNumCpt.Close;
  DataTiers.SelNumCpt.Parameters[0].Value:=compte2;
  DataTiers.SelNumCpt.Open;

  try
    DataTiers.Journal.insert;
    DataTiers.JournalCode.Value:=edit24.text;
    DataTiers.JournalDateEsc.Value:=StrToDate(MaskEdit1.text);
    DataTiers.JournalJour.Value:=Strtoint(edit27.text);
    DataTiers.JournalCodeJrnx.Value:=Jrnx;
    DataTiers.JournalPeriode.Value:=periode;
    DataTiers.JournalTiers.Value:=compte2;
    //DataTiers.JournalDateSaisie.Value:=strtodate(edit116.text);
    DataTiers.JournalTransferer.Value:='0';
    if Edit28.visible then DataTiers.JournalNumCHQ.Value:=Edit28.text;
    DataTiers.Journal.post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Ce numéro existe déjà',mtError, [mbOK],0);
      DataTiers.Journal.cancel;
      exit;
    end;
    On EConvertError do
    begin
      SHOWMessage('Erreur Date');
      DataTiers.Journal.cancel;
      exit;
    end;
  end;
  nbcontre:=0;
  totmt:=0;
  totmt:=totmt+mt;
  {Marchandise}
  DataTiers.RIncreEltJrn.Requery;
  der:=DataTiers.RIncreEltJrnDernierNum.Value;
  DataTiers.ToutEltJrn.insert;
  Der:=Der+1;
  DataTiers.ToutEltJrnNumero.Value:=Der;
  DataTiers.ToutEltJrnJournal.Value:=DataTiers.JournalCode.Value;
  DataTiers.ToutEltJrnCompte.Value:=compte1;
  DataTiers.ToutEltJrnTypX.Value:=ComboBox5.Items[ComboBox5.ItemIndex];
  DataTiers.ToutEltJrnLibelle.Value:=edit13.text;
  DataTiers.ToutEltJrnMontant.Value:=mt;
  DataTiers.ToutEltJrnColis.Value:=coli;
  if pg<>4 then
  begin
    if AvadihoReal(edit21.text,val1) then DataTiers.ToutEltJrnQte.Value:=val1
    else
      if pg=2 then
      begin
         MessageDlg('La quantité est obligatoire pour l''achat produit locaux',mtError,[mbok],0);
         DataTiers.ToutEltJrn.cancel;
         exit;
      end;
  end;
  if (pg=2)or(pg=4)or(pg=5) then DataTiers.ToutEltJrnDebit.Value:='D'
  else DataTiers.ToutEltJrnDebit.Value:='C';
  DataTiers.ToutEltJrnContrePartie.Value:=Compte2;
  nbcontre:=nbcontre+1;
  DataTiers.ToutEltJrnNbContre.Value:=1;
  DataTiers.ToutEltJrnNumFact.Value:=edit26.text;
  if GroupBox2.visible then
  begin
    DataTiers.ToutEltJrnSigleTaxe.Value:=ComboBox2.text;
    cpttva:=Edit18.text;
  end
  else
    DataTiers.ToutEltJrnSigleTaxe.Value:='AUCUN';
  DataTiers.ToutEltJrn.post;
  {Grille}
  i:=1;
  StringGrid2.cells[0,1]:=enleveblanc(StringGrid2.cells[0,1]);
  while length(StringGrid2.cells[0,i])>0 do
  begin
    avadihoreal(StringGrid2.cells[2,i],qte);
    avadihoreal(StringGrid2.cells[3,i],colis);
    avadihoInt64(StringGrid2.cells[5,i],val);
    DataTiers.ToutEltJrn.insert;
    Der:=Der+1;
    DataTiers.ToutEltJrnNumero.Value:=Der;
    DataTiers.ToutEltJrnJournal.Value:=DataTiers.JournalCode.Value;
    DataTiers.ToutEltJrnCompte.Value:=StringGrid2.cells[0,i];
    DataTiers.ToutEltJrnLibelle.Value:=StringGrid2.cells[1,i];
    AvadihoReal(StringGrid2.cells[2,i],qte);
    DataTiers.ToutEltJrnQte.Value:=qte;
    AvadihoReal(StringGrid2.cells[3,i],colis);
    DataTiers.ToutEltJrnColis.Value:=colis;
    DataTiers.ToutEltJrnTypX.Value:=StringGrid2.cells[4,i];
    DataTiers.ToutEltJrnMontant.Value:=val;
    totmt:=totmt+val;
    if (pg=2)or(pg=4)or(pg=5) then DataTiers.ToutEltJrnDebit.Value:='D'
    else DataTiers.ToutEltJrnDebit.Value:='C';
    DataTiers.ToutEltJrnContrePartie.Value:=compte2;
    DataTiers.ToutEltJrnNbContre.Value:=1;
    nbcontre:=nbcontre+1;
    DataTiers.ToutEltJrnNumFact.Value:=StringGrid2.cells[6,i];
    try
      DataTiers.ToutEltJrnDateFact.Value:=StrToDateTime(StringGrid2.cells[7,i]);
    except
      On EConvertError do;
    end;
    DataTiers.ToutEltJrnSigleTaxe.Value:=StringGrid2.cells[8,i];
    DataTiers.ToutEltJrn.post;
    i:=i+1;
    StringGrid2.cells[0,i]:=enleveblanc(StringGrid2.cells[0,i]);
  end;
  {TVA}
  if mttva>0 then
  begin
    DataTiers.ToutEltJrn.insert;
    Der:=Der+1;
    DataTiers.ToutEltJrnNumero.Value:=Der;
    DataTiers.ToutEltJrnJournal.Value:=DataTiers.JournalCode.Value;
    if length(edit18.text)<8 then
      Label34.caption:=InputBox('Changement début compte', 'Entrez numéro de compte début:', Label34.caption);
    DataTiers.ToutEltJrnCompte.Value:=cpttva;
    DataTiers.ToutEltJrnLibelle.Value:=edit46.text;
    DataTiers.ToutEltJrnMontant.Value:=mttva;
    DataTiers.ToutEltJrnTypX.Value:=ComboBox5.Items[ComboBox5.ItemIndex];
    totmt:=totmt+mttva;
    if (pg=2)or(pg=4)or(pg=5) then DataTiers.ToutEltJrnDebit.Value:='D'
    else DataTiers.ToutEltJrnDebit.Value:='C';
    DataTiers.ToutEltJrnContrePartie.Value:=compte2;
    DataTiers.ToutEltJrnNbContre.Value:=1;
    nbcontre:=nbcontre+1;
    if pg<>4 then
    begin
      if AvadihoReal(edit21.text,val1) then DataTiers.ToutEltJrnQte.Value:=val1
      else
        if pg=2 then
        begin
          MessageDlg('La quantité est obligatoire pour l''achat produit locaux',mtError,[mbok],0);
          DataTiers.ToutEltJrn.cancel;
          exit;
        end;
    end;
    DataTiers.ToutEltJrnNumFact.Value:=edit26.text;
    if GroupBox2.visible then
      DataTiers.ToutEltJrnSigleTaxe.Value:=ComboBox2.text
    else
      DataTiers.ToutEltJrnSigleTaxe.Value:='AUCUN';
    DataTiers.ToutEltJrn.post;
  end;
  {compte1 (Tiers)}
  DataTiers.ToutEltJrn.insert;
  Der:=Der+1;
  DataTiers.ToutEltJrnNumero.Value:=Der;
  DataTiers.ToutEltJrnJournal.Value:=DataTiers.JournalCode.Value;
  DataTiers.ToutEltJrnCompte.Value:=Compte2;
  DataTiers.ToutEltJrnLibelle.Value:=edit45.text;
  DataTiers.ToutEltJrnMontant.Value:=totmt;
  DataTiers.ToutEltJrnColis.Value:=coli;
  DataTiers.ToutEltJrnTypX.Value:=ComboBox5.Items[ComboBox5.ItemIndex];
  if (pg=2) or(pg=4) or(pg=5) then DataTiers.ToutEltJrnDebit.Value:='C'
  else DataTiers.ToutEltJrnDebit.Value:='D';
  DataTiers.ToutEltJrnContrePartie.Value:=compte1;
  DataTiers.ToutEltJrnNbContre.Value:=nbcontre;
  if pg<>4 then
  begin
    if AvadihoReal(edit21.text,val1) then DataTiers.ToutEltJrnQte.Value:=val1
    else
      if pg=2 then
      begin
         MessageDlg('La quantité est obligatoire pour l''achat produit locaux',mtError,[mbok],0);
         DataTiers.ToutEltJrn.cancel;
         exit;
      end;
  end;
  DataTiers.ToutEltJrnNumFact.Value:=edit26.text;
  if GroupBox2.visible then
    DataTiers.ToutEltJrnSigleTaxe.Value:=ComboBox2.text
  else
    DataTiers.ToutEltJrnSigleTaxe.Value:='AUCUN';
  DataTiers.ToutEltJrn.post;
  if (SpeedButton8.caption<>'Modifier') then
  begin
    edit25.text:=DataTiers.JournalCode.Value;
    Fafao;
    try
      edit27.setfocus;
    except
    end;
    for i:=0 to 8 do
      for j:=1 to 20 do StringGrid2.cells[i,j]:='';
  end
  else
  begin
    close;
  end;
end;

procedure TFSaiPaiem.SpeedButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TFSaiPaiem.Label34Click(Sender: TObject);
var zero:string;
  i:integer;
begin
  Label34.caption:=InputBox('Changement début compte', 'Entrez numéro de compte début:', Label34.caption);
  zero:='';
  for i:=1 to (8-length(Label34.caption)) do zero:=zero+'0';
  MaskEdit4.editMask:=zero+';1;O';
end;

procedure TFSaiPaiem.Edit13Enter(Sender: TObject);
var typ:string;
begin
  try
    typ:=ComboBox5.Items[ComboBox5.ItemIndex];
  except
    typ:='';
  end;
  edit13.text:=enleveblanc(edit13.text);
  if length(edit44.text)>0 then
    edit13.text:=enleveblancDroite(edit44.text)+' '+enleveblancDroite(Label20.Caption)
  else
    edit13.text:='';
  if length(edit21.text)>0 then
    edit13.text:=enleveblancDroite(edit13.text)+enleveblancDroite(edit21.text)+' '+enleveblancDroite(Label28.caption);
  edit13.text:=enleveblancDroite(edit13.text)+' '+enleveblancDroite(Label58.Caption)+' '+enleveblancDroite(typ)+' '+enleveblancDroite(Label59.Caption);
end;

procedure TFSaiPaiem.SpeedButton12Click(Sender: TObject);
var i:integer;
  coli:double;
  compte,st,st14,st2:string;

begin
  if GroupBox2.visible then cpttva:=edit18.text;
  if Label34.visible then
  begin
    st:=Label34.Caption+MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    compte:=st;
  end
  else
  begin
    st:=MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    compte:=st;
  end;
  DataTiers.SelNumCpt.Close;
  DataTiers.SelNumCpt.Parameters[0].Value:=compte;
  DataTiers.SelNumCpt.Open;
  {if DataTiers.SelNumCpt.eof then
  begin
    MessageDlg('Le '+Label2.Caption+' n''existe pas',mtError,[mbok],0);
    exit;
  end;}
  edit44.text:=enleveblanc(edit44.text);
  if (length(edit44.text)>0) and (not AvadihoReal(edit44.text,coli))then
  begin
    MessageDlg('Saisissez correctement le nombre de colis s''il existe',mtError, [mbOK],0);
    exit;
  end;
  for i:=1 to 20 do
  begin
    StringGrid2.Cells[0,1]:=enleveblanc(StringGrid2.Cells[0,1]);
    if length(StringGrid2.Cells[0,i])=0 then break;
  end;
  StringGrid2.Cells[0,i]:=compte;
  StringGrid2.Cells[1,i]:=edit13.text;
  StringGrid2.Cells[2,i]:=edit21.text;
  StringGrid2.Cells[3,i]:=edit44.text;
  StringGrid2.Cells[4,i]:=ComboBox5.Items[ComboBox5.ItemIndex];
  StringGrid2.Cells[5,i]:=Edit23.text;
  StringGrid2.Cells[6,i]:=Edit26.text;
  if GroupBox2.visible then
    StringGrid2.Cells[8,i]:=ComboBox2.text
  else
    StringGrid2.Cells[8,i]:='AUCUN';
  ST14:=edit14.text;
  st2:=edit2.text;
  Edit22.text:='';
  edit13.text:='';
  edit21.text:='';
  edit44.text:='';
  Edit23.text:='0';
  Edit20.text:='0';
  edit3.text:=st14;
  edit14.text:=st14;
  edit48.text:=st2;
  edit2.text:=st2;
  MaskEdit4.setfocus;
end;

procedure TFSaiPaiem.Edit27Change(Sender: TObject);
begin
   MaskEdit1.text:=edit27.text+'/'+copy(periode,6,2)+'/'+copy(periode,1,4);
end;

procedure TFSaiPaiem.Ajouter1Click(Sender: TObject);
begin
  SpeedButton8Click(Sender);
end;

procedure TFSaiPaiem.Edit27KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then Edit24.setfocus;
end;

procedure TFSaiPaiem.Edit24KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then MaskEdit3.setfocus;
end;

procedure TFSaiPaiem.Edit26KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then MaskEdit1.setfocus;
end;

procedure TFSaiPaiem.ComboBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then Edit21.setfocus;
end;

procedure TFSaiPaiem.Edit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then Edit44.setfocus;
end;

procedure TFSaiPaiem.Edit44KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edit13.setfocus;
end;

procedure TFSaiPaiem.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edit22.setfocus;
end;

procedure TFSaiPaiem.Edit22KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edit23.setfocus;
end;

procedure TFSaiPaiem.MaskEdit3Change(Sender: TObject);
var st:string;
   i:integer;
begin
  if Label35.visible then
  begin
    st:=Label35.Caption+MaskEdit3.text;
    for i:=1 to 10 do
      if st[i]=' ' then st[i]:='0';
    DataTiers.SelNumCpt.close;
    DataTiers.SelNumCpt.parameters[0].Value:=st;
    DataTiers.SelNumCpt.open;
    
    edit13.text:=enleveblanc(edit13.text);
    Label59.Caption:=DataTiers.SelNumCptIntitule.Value;
    //showMessage(DataTiers.SelNumAdres.Connection.DefaultDatabase);
    if not DataTiers.SelNumAdres.eof then MaskEdit3.text:=copy(st,5,6);
  end;
end;

procedure TFSaiPaiem.MaskEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then Edit26.SetFocus;
end;

procedure TFSaiPaiem.MaskEdit4Change(Sender: TObject);
var i:integer;
  st:string;
begin
  if Label34.visible then
  begin
    st:=Label34.Caption+MaskEdit4.text;
    for i:=1 to 8 do if st[i]=' ' then st[i]:='0';
    if SelectDivers(st) then MaskEdit4.text:=copy(st,length(Label34.Caption)+1,10);
  end;
end;

procedure TFSaiPaiem.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then MaskEdit4.setfocus;
end;

procedure TFSaiPaiem.MaskEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then ComboBox5.setfocus;
end;

procedure TFSaiPaiem.SpeedButton15Click(Sender: TObject);
var i,j:integer;
  hita:boolean;
begin
  if Label34.Visible then
  begin
    Label34.caption:=copy(StringGrid2.Cells[0,1],1,4);
    MaskEdit4.text:=copy(StringGrid2.Cells[0,1],5,4);
  end;
  edit13.text:=StringGrid2.Cells[1,1];
  edit21.text:=StringGrid2.Cells[2,1];
  edit44.text:=StringGrid2.Cells[3,1];
  hita:=false;
  for i:=0 to ComboBox5.Items.count-1 do
  begin
    if ComboBox5.Items[i]=StringGrid2.Cells[4,i] then
    begin
      hita:=true;
      break;
    end;
  end;
  if hita then ComboBox5.ItemIndex:=i
  else ComboBox5.ItemIndex:=-1;
  Edit23.text:=StringGrid2.Cells[5,1];
  Edit26.text:=StringGrid2.Cells[6,1];
  ComboBox2.text:=StringGrid2.Cells[8,1];
  for i:=2 to StringGrid2.RowCount-1 do
    for j:=0 to 8 do
      stringGrid2.cells[j,i-1]:=stringGrid2.cells[j,i];
end;

procedure TFSaiPaiem.Label35Click(Sender: TObject);
var debut:string;
begin
  debut:=InputBox('Changement début compte', 'Entrez numéro de compte début:', '7071');
  if length(debut)<>4 then
    MessageDlg('la longueur du début doit être 4',mtError,[mbok],0)
  else
    Label35.caption:=debut;
end;

procedure TFSaiPaiem.SpeedButton18Click(Sender: TObject);
var st:string;
  lg,i,j:integer;
begin
  st:=InputBox('entrez le numéro de ligne','','');
  try
    lg:=strtoint(st);
    for i:=lg+1 to StringGrid2.RowCount-1 do
      for j:=0 to 8 do
        stringGrid2.cells[j,i-1]:=stringGrid2.cells[j,i];
  except
    On EConvertError do;
  end;
end;

procedure TFSaiPaiem.ComboBox5Change(Sender: TObject);
begin
  DataTiers.SelTypProd.First;
  while not DataTiers.SelTypProd.eof do
  begin
    if DataTiers.SelTypProdNature.Value=ComboBox5.text then
    begin
      Label28.caption:=DataTiers.SelTypProdUniteX.value;
      Label20.caption:=DataTiers.SelTypProdUniteCol.value;
      break;
    end;
    DataTiers.SelTypProd.next;
  end;
end;

procedure TFSaiPaiem.Edit20Change(Sender: TObject);
var mt,sstot:double;
begin
  if not avadihoreal(edit20.text,mt) then mt:=0;
  if not avadihoreal(edit3.text,sstot) then sstot:=0;
  Edit14.text:=FormatFloat('#,###',mt+sstot);

end;

procedure TFSaiPaiem.Edit48Change(Sender: TObject);
var mt,sstot:double;
begin
  if not avadihoreal(edit23.text,mt) then mt:=0;
  if not avadihoreal(edit48.text,sstot) then sstot:=0;
  Edit2.text:=FormatFloat('#,###',mt+sstot);
end;

procedure TFSaiPaiem.Edit23KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=13)and (GroupBox2.visible) then ComboBox2.setfocus;
end;

procedure TFSaiPaiem.ComboBox2Click(Sender: TObject);
begin
  Edit20Change(Sender);
end;

procedure TFSaiPaiem.Edit23Click(Sender: TObject);
begin
  Edit48Change(Sender);
end;

procedure TFSaiPaiem.Edit14Change(Sender: TObject);
var tottva,ancien:double;
begin
  if not avadihoreal(edit14.text,tottva) then tottva:=0;
  if not avadihoreal(edit2.text,ancien) then ancien:=0;
  edit47.text:=formatfloat('#,###',tottva+ancien);
end;

procedure TFSaiPaiem.Edit2Change(Sender: TObject);
begin
  Edit14Change(Sender);
end;

procedure TFSaiPaiem.ComboBox5Click(Sender: TObject);
begin
 ComboBox5Change(Sender);
end;

procedure TFSaiPaiem.SpeedButton13Click(Sender: TObject);
var valqte,valcol,valmont:double;
begin
  if not avadihoreal(edit23.text,valmont) then valmont:=0;
  if not avadihoreal(edit21.text,valqte) then valqte:=0;
  if not avadihoreal(edit44.text,valCol) then valcol:=0;
  if valmont=0 then exit;
  CASE RadioGroup5.ItemIndex of
    0:begin
       if valqte>0 then
        edit22.text:=formatfloat('#,##0',valmont/valqte);
      end;
    1:begin
       if valcol>0 then
        edit22.text:=formatfloat('#,##0',valmont/valcol);
      end;
  end;
end;

procedure TFSaiPaiem.FormShow(Sender: TObject);
begin
  if not ChargerPlan then
  begin
    MessageDlg('Impossible de charger ''PlanCpta.dll''',mtError,[mbok],0);
    close;
  end;
  edit24.SetFocus;
end;

end.
