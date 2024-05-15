{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y-,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
unit LstCpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, ComCtrls, Db, DBTables, DBCtrls, Buttons,
  Qrctrls, quickrpt, StdCtrls;

type
  TForm45 = class(TForm)
    Panel1: TPanel;
    SourceNumCpt: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn2: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel2: TPanel;
    PageControl1: TPageControl;
    Capitaux: TTabSheet;
    Immobilisations: TTabSheet;
    Stocks: TTabSheet;
    Fournisseurs: TTabSheet;
    Clients: TTabSheet;
    AutresTiers: TTabSheet;
    Finances: TTabSheet;
    Achats: TTabSheet;
    Ventes: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton10: TSpeedButton;
    Panel3: TPanel;
    Label2: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    RadioGroup2: TRadioGroup;
    GroupBox1: TGroupBox;
    Edit7: TEdit;
    Edit8: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton9: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    SpeedButton11: TSpeedButton;
    sqAuxiNonUtil: TDataSource;
    SpeedButton12: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SourceNumCptDataChange(Sender: TObject; Field: TField);
    procedure Edit7Change(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Déclarations privées }
    clss1,clss2:shortInt;
    IsTen,changeGroupe,Afaka:boolean;
    activetal:TTabSheet;
    chem:string;
    procedure SelectCpt(cls1,cls2:shortint);
    procedure fafao;
  public
    { Déclarations publiques }
    procedure ActiverPage;
    procedure Asehoy(compte,ip,chemin:string;dix,AfakaManova:boolean);

  end;

var
  Form45: TForm45;

procedure AsehoyLstCpt(compte,ip,chemin:string;dix,AfakaManova:boolean);export;
procedure VonoyLstCpt;export;
procedure AmboaryLstCpt;

implementation

uses NumCompt, DaPlanCp, TypeElmt, EtatPlan;

{$R *.DFM}

procedure AmboaryLstCpt;
begin
  Application.CreateForm(TForm45, Form45);
end;

procedure AsehoyLstCpt(compte,ip,chemin:string;dix,AfakaManova:boolean);
begin
  try
    CreerDataCpte;
    Form45:=TForm45.Create(Application);
    Form45.Asehoy(compte,ip,chemin,dix,AfakaManova);
  finally
    Form45.free;
    VonoyDataCpte;
  end;
end;

procedure VonoyLstCpt;
begin
  Form45.free;
end;

procedure TForm45.Asehoy(compte,ip,chemin:string;dix,AfakaManova:boolean);
var clasy:shortint;
begin
  Afaka:=AfakaManova;
  chem:='';
  Label4.Caption:=chemin;
  fafao;
  if chemin<>'' then
  begin
    DataCpte.ChangerDossierBase(ip,chemin);
  end;
  changeGroupe:=false;
  IsTen:=Dix;
  try
    clasy:=strtoint(copy(compte,1,2));
  except
    On EConvertError do clasy:=1;
  end;
  Autoscroll:=false;
  if (clasy>=10)and (clasy<20) then
     PageControl1.ActivePage:=Capitaux;
  if (clasy>=20)and (clasy<30) then
     PageControl1.ActivePage:=Immobilisations;
  if (clasy>=30)and (clasy<40) then
     PageControl1.ActivePage:=Stocks;
  if (clasy>=30)and (clasy<40) then
     PageControl1.ActivePage:=Stocks;
  if (clasy>=40)and (clasy<41) then
     PageControl1.ActivePage:=Fournisseurs;
  if (clasy>=41)and (clasy<42) then
     PageControl1.ActivePage:=Clients;
  if (clasy>=42)and (clasy<50) then
     PageControl1.ActivePage:=AutresTiers;
  if (clasy>=50)and (clasy<60) then
     PageControl1.ActivePage:=Finances;
  if (clasy>=60)and (clasy<70) then
     PageControl1.ActivePage:=Achats;
  if (clasy>=70)and (clasy<80) then
     PageControl1.ActivePage:=Ventes;
  if (clasy>=80)and (clasy<90) then
     PageControl1.ActivePage:=TabSheet8;
  if (clasy>=90)and (clasy<100) then
     PageControl1.ActivePage:=TabSheet9;
  ActiverPage;
  edit1.text:=compte;
  While (DataCpte.NumCompteNumCpt.Value<edit1.text) and (not DataCpte.NumCompte.eof) do
    DataCpte.NumCompte.next;
  Edit2.text:='';
  Edit3.text:='';
  Edit4.text:='';
  SourceNumCpt.DataSet:=DataCpte.NumCompte;
  ShowModal;
end;

procedure tForm45.fafao;
begin
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
  edit4.text:='';
  edit6.text:='';
  edit7.text:='0';
  edit8.text:='Z';
end;

procedure TForm45.ActiverPage;
begin
  //showmessage(inttostr(clss1)+' - '+inttostr(clss2));
  if Capitaux=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=False;
    clss1:=10;
    clss2:=20;
  end;
  if Immobilisations=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=False;
    clss1:=20;
    clss2:=30;
  end;
  if Stocks=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=False;
    clss1:=30;
    clss2:=40;
  end;
  if Fournisseurs=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=True;
    clss1:=40;
    clss2:=41;
  end;
  if Clients=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=True;
    clss1:=41;
    clss2:=42;
  end;
  if AutresTiers=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=False;
    clss1:=42;
    clss2:=50;
  end;
  if Finances=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=False;
    DataCpte.NumCompteStatistique.Visible :=True;
    clss1:=50;
    clss2:=60;
  end;
  if Achats=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=True;
    DataCpte.NumCompteStatistique.Visible :=False;
    clss1:=60;
    clss2:=70;
  end;
  if Ventes=PageControl1.ActivePage then
  begin
    DataCpte.NumCompteNature.Visible :=True;
    DataCpte.NumCompteStatistique.Visible :=False;
    clss1:=70;
    clss2:=80;
  end;
  if TabSheet8=PageControl1.ActivePage then
  begin
    clss1:=80;
    clss2:=90;
  end;

  if TabSheet9=PageControl1.ActivePage then
  begin
    clss1:=90;
    clss2:=100;
  end;
  //showmessage('après '+inttostr(clss1)+' '+inttostr(clss2));
  SelectCpt(clss1,clss2);
end;

procedure TForm45.SelectCpt(cls1,cls2:shortint);
begin
  try
    DataCpte.NumCompte.close;
    DataCpte.NumCompte.SQL.Clear;
    DataCpte.NumCompte.sql.Add('select * from NumCmpte ');
    DataCpte.NumCompte.sql.Add(' where (Classe>='+inttostr(cls1)+')');
    DataCpte.NumCompte.sql.Add('and (Classe<'+inttostr(cls2)+')');
    DataCpte.NumCompte.sql.Add('order by NumCpt');
    DataCpte.NumCompte.open;
  except
    ON E:Exception do
      //showMessage(DataCpte.NumCompte.Connection.DefaultDatabase +' -- '+ E.Message);
  end;

end;

procedure TForm45.SpeedButton1Click(Sender: TObject);
begin
  Asehoycpt1(clss1,clss2,1,DataCpte.NumCompteNumCpt.Value,'','');
end;

procedure TForm45.PageControl1Change(Sender: TObject);
begin
  ActiveTal:=PageControl1.ActivePage;
  ActiverPage;
end;

procedure TForm45.SpeedButton5Click(Sender: TObject);
var ordre:string;
    i:integer;
begin
  if not( (edit7.text>='0') and (edit8.text>'0')) then
  begin
    showMessage('Intervalle de compte non valide');
    exit;
  end;
  datacpte.printcpt.close;
  datacpte.printcpt.SQL.clear;
  datacpte.printcpt.SQL.add('SELECT NumCpt.NumCpt, NumCpt.Intitule, NumDiver.Statistique, NumDiver.NIF ');
  datacpte.printcpt.SQL.add('FROM NumCpt INNER JOIN NumDiver ON NumCpt.NumCpt = NumDiver.NumCpt');
  datacpte.printcpt.SQL.add('where ((NumCpt.NumCpt>=:a) and (NumCpt.NumCpt<=:b))');
  case RadioGroup2.ItemIndex  of
    0:ordre:='NumCpt.NumCpt';
    1:ordre:='NumCpt.Intitule';
    2:ordre:='NumDiver.Statistique';
  end;
  datacpte.printcpt.SQL.add('order by '+ordre);
  datacpte.printcpt.parameters[0].Value:=edit7.text;
  datacpte.printcpt.parameters[1].Value:=edit8.text + 'X';
  //for i:=0 to datacpte.printcpt.SQL.Count-1 do
    //showMessage(datacpte.printcpt.SQL[i]);
  datacpte.printcpt.open;
    //showMessage('Misokatra');
  try
    FEtatPlan:=TFEtatPlan.Create(Application);
    FEtatPlan.QuickRep.Preview;
  finally
    FEtatPlan.free;
  end;
end;

procedure TForm45.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceNumCpt.DataSet:=DataCpte.Repos;
end;

procedure TForm45.BitBtn2Click(Sender: TObject);
begin
  if IsTen and (length(DataCpte.NumCompteNumCpt.Value)<8) then
  begin
    ShowMessage('Vous devez choisir un numéro de longueur supérieur 8');
    exit;
  end;
  DataCpte.Tempon.open;
  DataCpte.Tempon.first;
  DataCpte.Tempon.edit;
  DataCpte.TemponString1.Value:=DataCpte.NumCompteNumCpt.Value;
  DataCpte.TemponString2.Value:=DataCpte.NumCompteIntitule.Value;
  DataCpte.Tempon.post;
  //showMessage(DataCpte.NumCompteNumCpt.Value);
  Close;
end;

procedure TForm45.SpeedButton2Click(Sender: TObject);
begin
  DataCpte.Tempon.open;
  DataCpte.Tempon.first;
  DataCpte.Tempon.edit;
  DataCpte.TemponString1.Value:='';
  DataCpte.Tempon.post;
  Close;
end;

procedure TForm45.FormActivate(Sender: TObject);
begin
  DBGrid1.SetFocus;
end;

procedure TForm45.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then SpeedButton2Click(Sender);
  if Key=13 then BitBtn2Click(Sender);
end;


procedure TForm45.SpeedButton4Click(Sender: TObject);
var mt:double;
begin
  if not avadihoReal(edit6.text,mt) then mt:=0;
  if mt<>0 then
  begin
    MessageDlg('Impossible de supprimer ?',mtConfirmation,[mbok],0);
    exit;
  end;
  if MessageDlg('Voulez-vous vraiement supprimer ?',mtConfirmation,[mbyes,mbno],
                0)=mryes then
  begin
    //showMessage('1:Adr');
    DataCpte.SelNumAdres.Close;
    DataCpte.SelNumAdres.Parameters[0].Value:=DataCpte.NumCompteNumCpt.Value;
    DataCpte.SelNumAdres.Open;
    try
      DataCpte.SelNumAdres.Delete;
    except
      On EDataBaseError do
        ShowMessage('Adresse non trouvé:'+DataCpte.NumCompteNumCpt.Value);
    end;
    //showMessage('2:diver');
    DataCpte.SelNumDiver.Close;
    DataCpte.SelNumDiver.Parameters[0].Value:=DataCpte.NumCompteNumCpt.Value;
    DataCpte.SelNumDiver.Open;

    try
      DataCpte.SelNumDiver.Delete;
    except
      On EDataBaseError do;
    end;

    //showMessage('3:loc');
    DataCpte.SelNumLoc.Close;
    DataCpte.SelNumLoc.Parameters[0].Value:=DataCpte.NumCompteNumCpt.Value;
    DataCpte.SelNumLoc.Open;
    try
      DataCpte.SelNumLoc.Delete;
    except
      On EDataBaseError do;
    end;
    //showMessage('4:cpt');
    DataCpte.SelNumCpt.Close;
    DataCpte.SelNumCpt.Parameters[0].Value:=DataCpte.NumCompteNumCpt.Value;
    DataCpte.SelNumCpt.Open;
    try
      DataCpte.SelNumCpt.Delete;
    except
      On EDataBaseError do;
    end;
    DataCpte.NumCompte.requery;
  end;
end;

procedure TForm45.SpeedButton3Click(Sender: TObject);
begin
  if (clss1=40) or (clss1=41)or (clss1=60)or (clss1=70) or afaka then
    Asehoycpt1(clss1,clss2,0,Edit1.text,'','')
  else
    MessageDlg('Vous n''êtes pas autoriser à ajouter ou à modifier ce classe de compte',
                   mtError,[mbok],0);
end;

procedure TForm45.Edit6Change(Sender: TObject);
begin
  ChangeGroupe:=true;
end;

procedure TForm45.SpeedButton6Click(Sender: TObject);
begin
 Label1.caption:='Recherche en cours ....';
 case RadioGroup1.ItemIndex of
   0:
   begin
     While (DataCpte.NumCompteNumCpt.Value<edit1.text) and (not DataCpte.NumCompte.eof) do
        DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   1:
   begin
     Label1.caption:='Recherche';
     Label1.caption:='Recherche en cours ....';
     While (copy(DataCpte.NumCompteIntitule.Value,1,length(edit2.text))<>edit2.text)
        and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   2:
   begin
     SourceNumCpt.DataSet:=DataCpte.Repos;
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteNature.Value<>edit2.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   3:
   begin
     SourceNumCpt.DataSet:=DataCpte.Repos;
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteStatistique.Value<>edit2.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
 end;
 PageControl1.ActivePage:=ActiveTal;
 SourceNumCpt.DataSet:=DataCpte.NumCompte;
end;

procedure TForm45.SpeedButton8Click(Sender: TObject);
begin
 SourceNumCpt.DataSet:=DataCpte.Repos;
 Label1.caption:='Recherche en cours ....';
 case RadioGroup1.ItemIndex of
   0:
   begin
     While (DataCpte.NumCompteNumCpt.Value>edit1.text) and (not DataCpte.NumCompte.bof) do
        DataCpte.NumCompte.prior;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   1:
   begin
     SourceNumCpt.DataSet:=DataCpte.Repos;
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteNom.Value<>edit2.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   2:
   begin
     SourceNumCpt.DataSet:=DataCpte.Repos;
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteNature.Value<>edit2.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   3:
   begin
     SourceNumCpt.DataSet:=DataCpte.Repos;
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteStatistique.Value<>edit2.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
 end;
 PageControl1.ActivePage:=ActiveTal;
 SourceNumCpt.DataSet:=DataCpte.NumCompte;
end;

procedure TForm45.SpeedButton7Click(Sender: TObject);
begin
 DataCpte.NumCompte.First;
 SourceNumCpt.DataSet:=DataCpte.Repos;
 Label1.caption:='Recherche en cours ....';
 case RadioGroup1.ItemIndex of
   0:
   begin
     While (DataCpte.NumCompteNumCpt.Value<edit1.text) and (not DataCpte.NumCompte.eof) do
        DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   1:
   begin
     Label1.caption:='Recherche en cours ....';
     While (copy(DataCpte.NumCompteIntitule.Value,1,length(edit2.text))<>edit2.text)
        and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   2:
   begin
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteNature.Value<>edit3.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
   3:
   begin
     Label1.caption:='Recherche en cours ....';
     While (DataCpte.NumCompteStatistique.Value<>edit4.text) and (not DataCpte.NumCompte.eof) do
       DataCpte.NumCompte.next;
     SourceNumCpt.DataSet:=DataCpte.NumCompte;
     Label1.caption:='Recherche';
   end;
 end;
 PageControl1.ActivePage:=ActiveTal;
 SourceNumCpt.DataSet:=DataCpte.NumCompte;
end;

procedure TForm45.Edit1Change(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
end;

procedure TForm45.Edit2Change(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=1;
end;

procedure TForm45.Edit3Change(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=2;
end;

procedure TForm45.Edit4Change(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=3;
end;

procedure TForm45.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.DBGrid11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    27:SpeedButton2Click(Sender);
    13:BitBtn2Click(Sender);
  end;
end;

procedure TForm45.SourceNumCptDataChange(Sender: TObject; Field: TField);
begin
 // Edit5.text:=DataCpte.NumCompteNumCpt.Value;
 SpeedButton10.Caption := 'Situation compte ' + DataCpte.NumCompteNumCpt.Value;
 Panel3.visible:=false;
end;



procedure TForm45.Edit7Change(Sender: TObject);
begin
    edit8.text:=edit7.text;
end;

procedure TForm45.SpeedButton10Click(Sender: TObject);
var mt:real;
begin
  Panel3.visible:=true;
  Edit5.text:=DataCpte.NumCompteNumCpt.Value;
  mt:=DataCpte.SoldeCompte(DataCpte.NumCompteNumCpt.Value);
  if mt>0 then Label2.caption:='solde débiteur de :'
  else Label2.caption:='solde créditeur de :';
  mt:=abs(mt);
  if length(edit5.text)>7 then edit6.text:=formatfloat('#,##0',mt);
  ChangeGroupe:=true;
end;


procedure TForm45.SpeedButton9Click(Sender: TObject);
var ordre:string;
begin
  datacpte.qAuxiNonUtil.close;
  datacpte.qAuxiNonUtil.SQL.clear;
  datacpte.qAuxiNonUtil.SQL.add('select * from AuxiNonUtil');
  case RadioGroup2.ItemIndex  of
    0:ordre:='AuxiIntit, NumCp';
    1:ordre:='AuxiIntit, Intitule';
  end;
  datacpte.qAuxiNonUtil.SQL.add('order by '+ordre);
  datacpte.qAuxiNonUtil.open;
  try
    FEtatPlan:=TFEtatPlan.Create(Application);
    FEtatPlan.QuickRep2.Preview;
  finally
    FEtatPlan.free;
  end;
  GroupBox2.Visible:=true;
end;

procedure TForm45.SpeedButton12Click(Sender: TObject);
begin
  GroupBox2.Visible:=false;
end;

procedure TForm45.SpeedButton11Click(Sender: TObject);
begin
  DataCpte.delCompte.Parameters[0].Value:=DataCpte.qAuxiNonUtilNumCp.Value;
  DataCpte.delCompte.ExecSQL;
  DataCpte.NumCompte.Requery;
  DataCpte.qAuxiNonUtil.Requery;
end;

procedure TForm45.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
     begin
       if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
       case PageControl1.ActivePageIndex of
          0:Dbgrid1.Canvas.Brush.Color:=$00CBEAF3;
          1:Dbgrid1.Canvas.Brush.Color:=$00B1EDD6;
          2:Dbgrid1.Canvas.Brush.Color:=$00D3F2BF;
          3:Dbgrid1.Canvas.Brush.Color:=$00F2D8BF;
          4:Dbgrid1.Canvas.Brush.Color:=$00F5CFEC;
          5:Dbgrid1.Canvas.Brush.Color:=$00EAEAE1;
          6:Dbgrid1.Canvas.Brush.Color:=$00CBF5F4;
          7:Dbgrid1.Canvas.Brush.Color:=$00FBF7C6;
          8:Dbgrid1.Canvas.Brush.Color:=$00D1D6EF;
          9:Dbgrid1.Canvas.Brush.Color:=$0099D5E8;
       end;
     end;
   DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

end.
