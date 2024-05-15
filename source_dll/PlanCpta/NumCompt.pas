unit NumCompt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, ComCtrls, Buttons,
  DBCtrls, Mask;

type
  TForm44 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label31: TLabel;
    SpeedButton4: TSpeedButton;
    TabSheet5: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    SpeedButton3: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    CheckBox1: TCheckBox;
    DBEdit1: TDBEdit;
    s_SelNumDiver: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    s_SelNumadres: TDataSource;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    s_devise: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    s_Lieu: TDataSource;
    s_SelNumLoc: TDataSource;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBMemo2: TDBMemo;
    s_SelNumCpt: TDataSource;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    s_TAXE: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    s_statut: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit21: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure s_SelNumCptDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Enter(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
  private
    { Déclarations privées }
    cls1,cls2,mody:shortint;
    procedure SelectionnerTout(numCpt:string);
    function  ConditionRempli:boolean;
    function Dans(sub:string):boolean;
    procedure EnregistrerTout;
  public
    { Déclarations publiques }
    procedure Asehoy(clss1,clss2,mode:shortint;initial,ip,chemin:string);
  end;

var
  Form44: TForm44;

procedure AsehoyCpt1(clss1,clss2,mode:shortint;initial,ip,chemin:string);export;
procedure AsehoyCpt(clss1,clss2,mode:shortint;initial,ip,chemin:string);export;

implementation

uses DaPlanCp, Lieu, Typprod, TypeElmt;


{$R *.DFM}

procedure AsehoyCpt(clss1,clss2,mode:shortint;initial,ip,chemin:string);
begin
  try
    CreerDataCpte;
    Form44:=TForm44.create(Application);
    Form44.Asehoy(clss1,clss2,mode,initial,ip,chemin);
  finally
    Form44.free;
    VonoyDataCpte;
  end
end;

procedure AsehoyCpt1(clss1,clss2,mode:shortint;initial,ip,chemin:string);
begin
  try
    Form44:=TForm44.create(Application);
    Form44.Asehoy(clss1,clss2,mode,initial,ip,chemin);
  finally
    Form44.free;
  end
end;

procedure TForm44.Asehoy(clss1,clss2,mode:shortint;initial,ip,chemin:string);
var i:integer;
  hita:boolean;
begin
  if chemin<>'' then
  begin
    DataCpte.ChangerDossierBase(ip,chemin);
  end;
  cls1:=clss1;
  cls2:=clss2;
  try
    DataCpte.TAXE.Open;
  except
  end;
  DataCpte.TAXE.Open;
  DataCpte.devise.Open;
  DataCpte.statut.Open;
  DataCpte.Lieu.Open;
  TabSheet1.Visible:=true;
  TabSheet2.TabVisible:=true;
  TabSheet3.TabVisible:=true;
  TabSheet5.TabVisible:=true;

  if (clss1<40) then
  begin
    CheckBox1.Visible:=false;
  end;

  if (clss1>=40)and(clss1<60) then
  begin
    DBCheckBox2.Caption:='Non Assujettie';
    TabSheet1.Visible:=true;
    TabSheet2.TabVisible:=true;
    TabSheet3.TabVisible:=true;
    TabSheet5.TabVisible:=false;
  end
  else
  if (clss1>60) then
  begin
    DBCheckBox2.Caption:='Non Taxable';
    TabSheet1.TabVisible:=false;
    TabSheet2.TabVisible:=false;
    TabSheet3.TabVisible:=false;
    TabSheet5.TabVisible:=true;
    CheckBox1.Visible:=false;
  end;

  mody:=mode;
  DataCpte.SelNumCpt.Close;
  case mody of
    0:begin
        try
          DataCpte.SelNumCpt.Parameters[0].Value := '0';
          DataCpte.SelNumCpt.Open;
          DataCpte.SelNumCpt.Insert;
          DataCpte.SelNumCptnumcpt.Value := initial;
        except
         On E:Exception do
           //showMessage('eto '+e.Message)
        end;
        BitBtn2.Visible:=True;
        BitBtn2.Visible:=true;
      end;
    1:begin
        DataCpte.SelNumCpt.Parameters[0].Value := initial;
        DataCpte.SelNumCpt.Open;
        SelectionnerTout(initial);
        BitBtn2.Visible:=false;
    end;
  end;
  Caption := DataCpte.C_Exercice.DefaultDatabase;
  ShowModal;
end;

procedure TForm44.SelectionnerTout(numCpt:string);
begin
  DataCpte.SelNumDiver.Close;
  DataCpte.SelNumDiver.Parameters[0].Value:=NumCpt;
  DataCpte.SelNumDiver.Open;

  DataCpte.SelNumAdres.Close;
  DataCpte.SelNumAdres.Parameters[0].Value:=NumCpt;
  DataCpte.SelNumAdres.Open;

  DataCpte.SelNumLoc.Close;
  DataCpte.SelNumLoc.Parameters[0].Value:=NumCpt;
  DataCpte.SelNumLoc.Open;

  DataCpte.NumFac.Close;
  DataCpte.NumFac.Parameters[0].Value:=NumCpt;
  DataCpte.NumFac.Open;

  DataCpte.SelTypProd.Close;
  DataCpte.SelTypProd.Parameters[0].Value:=DataCpte.SelNumDiverCodeProd.Value;
  DataCpte.SelTypProd.Open;
end;

procedure TForm44.EnregistrerTout;
begin
  if DataCpte.SelNumCpt.State in [dsEdit, dsInsert] then
      DataCpte.SelNumCpt.Post;
  if DataCpte.SelNumDiver.State in [dsEdit, dsInsert] then
      DataCpte.SelNumDiver.Post;
  if DataCpte.SelNumAdres.State in [dsEdit, dsInsert] then
      DataCpte.SelNumAdres.Post;
  if DataCpte.SelNumDiver.State in [dsEdit, dsInsert] then
      DataCpte.SelNumDiver.Post;
  if DataCpte.SelNumLoc.State in [dsEdit, dsInsert] then
      DataCpte.SelNumLoc.Post;
  if DataCpte.NumFac.State in [dsEdit, dsInsert] then
      DataCpte.NumFac.Post;
  if DataCpte.SelTypProd.State in [dsEdit, dsInsert] then
      DataCpte.SelTypProd.Post;
end;

function  TForm44.ConditionRempli:boolean;
begin
  result:=true;
  if ((copy(DBEdit19.text,1,4)='4111') OR (copy(DBEdit19.text,1,4)='4011'))
     and(length(DBEdit19.text)=10)and(copy(DBEdit19.text,5,1)<>'8') then
  begin
    if (DBEdit11.text<'0')or(DBEdit12.text<'0') then
    begin
      MessageDlg('le nom et le num. stat. est obligatoire pour déclaration',mterror,[mbok],0);
      result:=false;
      exit;
    end;
  end;
  if ((copy(DBEdit19.text,1,3)='511')or
      ((copy(DBEdit19.text,1,4)='4011')and(copy(DBEdit19.text,5,1)<>'8')) or
      ((copy(DBEdit19.text,1,4)='4110')and(copy(DBEdit19.text,5,1)<>'8')) or
      ((copy(DBEdit19.text,1,4)='4111')and(copy(DBEdit19.text,5,1)<>'8')))and
     ((length(DBEdit12.text)=0)OR(length(DBEdit11.text)=0)OR(length(DBMemo1.text)=0))then
  begin
    MessageDlg('Adresse et numéro statistique obligatoire pour 511 ou 4011 ou 4111'+
          ' si 5è chiffre<>8',mtError,[mbok],0);
    result:=false;
    exit;
  end;
  if length(DBEdit19.text)=0 then
  begin
    Application.MessageBox('Saisie numéro de compte obligatoire','Erreur',mb_ok);
    result:=false;
    exit;
  end;
end;

procedure TForm44.SpeedButton1Click(Sender: TObject);
begin
  FLieu.Asehoy(0);
end;

procedure TForm44.BitBtn1Click(Sender: TObject);
var valid:boolean;
begin
  if not ConditionRempli then exit;
  EnregistrerTout;
  DataCpte.Tempon.open;
  DataCpte.Tempon.Requery;
  DataCpte.Tempon.first;
  DataCpte.Tempon.edit;
  DataCpte.TemponString1.Value:=DataCpte.SelNumCptnumcpt.Value;
  DataCpte.Tempon.post;
  DataCpte.NumCompte.Requery;
  DataCpte.NumCompte.Locate('NumCpt',DataCpte.SelNumCptnumcpt.Value,[loCaseInsensitive,loPartialKey ]) ;
  Close;
end;

procedure TForm44.BitBtn2Click(Sender: TObject);
begin
  if not ConditionRempli then exit;
end;


procedure TForm44.SpeedButton4Click(Sender: TObject);
begin
  DataCpte.Tempon.open;
  DataCpte.Tempon.first;
  DataCpte.Tempon.edit;
  DataCpte.TemponString1.Value:=DataCpte.SelNumCptNumCpt.Value;
  DataCpte.Tempon.post;
  Close;
end;

procedure TForm44.Edit2Change(Sender: TObject);
begin
  if (copy(DBEdit19.text,1,4)='4010')or
     (copy(DBEdit19.text,1,4)='4011')or
     (copy(DBEdit19.text,1,4)='4110')or
     (copy(DBEdit19.text,1,4)='4111') then DBEdit12.text:=DBEdit20.text;
end;


procedure TForm44.SpeedButton3Click(Sender: TObject);
var st:string;
begin
  st:=enleveblanc(DataCpte.SelNumDiverCodeProd.Value);
  if length(st)=0 then
  begin
    MessageDlg('Saisir le code produit avant de poursuivre',mtError,[mbok],0);
    exit;
  end;
  try
    Form144:=TForm144.create(Application);
    Form144.Asehoy(St,false);
  finally
    Form144.free;
  end;
end;

procedure TForm44.s_SelNumCptDataChange(Sender: TObject; Field: TField);
begin
  if (DataCpte.SelNumCpt.State = dsBrowse) and (mody=0) then
    SelectionnerTout(DataCpte.SelNumCptNumCpt.Value);
  if field<>nil then
  begin
    if LowerCase(field.FieldName) = 'intitule' then
    begin
      if Dans('4010')or Dans('4010') or Dans('4011')or Dans('4110')or Dans('4111') then
      begin
        if DataCpte.SelNumAdres.State = dsBrowse then
          DataCpte.SelNumAdres.Edit;
        DataCpte.SelNumAdresRS.Value  := DataCpte.SelNumCptintitule.Value;
        DataCpte.SelNumAdresNom.Value  := DataCpte.SelNumCptintitule.Value;
      end;
    end;
    if (LowerCase(field.FieldName) = 'numcpt')  then
    begin
      if  (length(DataCpte.SelNumCptNumCpt.Value)=10)and Dans('70')and
          ((copy(DataCpte.SelNumCptNumCpt.Value,9,2)='03')or(copy(DataCpte.SelNumCptNumCpt.Value,9,2)='04')) then
        DataCpte.SelNumCptExonere.Value:=0;
      if  (length(DataCpte.SelNumCptNumCpt.Value)=10)and Dans('70')and
          ((copy(DataCpte.SelNumCptNumCpt.Value,9,2)='05')or(copy(DataCpte.SelNumCptNumCpt.Value,9,2)='06')) then
        DataCpte.SelNumCptExonere.Value:=1;
      if  (length(DataCpte.SelNumCptNumCpt.Value)=10)and (Dans('4011')or Dans('4111'))then
      begin
        if DataCpte.SelNumDiver.State = dsBrowse then
          DataCpte.SelNumDiver.Edit;
        if (copy(DataCpte.SelNumCptNumCpt.Value,5,1)<>'8')AND(copy(DataCpte.SelNumCptNumCpt.Value,5,1)<>'9') then
        begin
          DataCpte.SelNumDiverStatistique.Value:=copy(DataCpte.SelNumCptNumCpt.Value,5,6);
        end
        else
          DataCpte.SelNumDiverStatistique.Value:=' ';
      end;
    end;
  end;
end;

function TForm44.Dans(sub:string):boolean;
begin
  Result := copy(DataCpte.SelNumCptNumCpt.Value,1,4)=sub
end;

procedure TForm44.PageControl1Enter(Sender: TObject);
begin
  if DataCpte.SelNumCpt.State in [dsEdit,dsInsert] then
  begin
    if DataCpte.SelNumAdres.State in [dsEdit,dsInsert] then
      DataCpte.SelNumAdres.Post;
    DataCpte.SelNumCpt.Post;
  end;
end;

procedure TForm44.PageControl1Change(Sender: TObject);
begin
  EnregistrerTout;
end;

procedure TForm44.DBEdit20Enter(Sender: TObject);
begin
  if DataCpte.SelNumCpt.State in [dsEdit,dsInsert] then
    DataCpte.SelNumCpt.Post;
end;

end.
