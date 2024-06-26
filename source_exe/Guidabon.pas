unit Guidabon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Db, ExtCtrls;

type
  TFGuidAbon = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Periode: TGroupBox;
    Mois: TLabel;
    Annee: TLabel;
    ComboBox1: TComboBox;
    UpDown2: TUpDown;
    Journaux: TGroupBox;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    UpDown1: TUpDown;
    Edit3: TEdit;
    Edit4: TEdit;
    SourceGuidabon: TDataSource;
    RadioGroup1: TRadioGroup;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit11: TEdit;
    ComboBox3: TComboBox;
    procedure SourceGuidabonDataChange(Sender: TObject; Field: TField);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { D�clarations priv�es }
    et:shortint;
    NoChange:boolean;
    procedure Diovy;
    procedure AfficheDate(cas:shortint;dt:TDateTime);
    procedure Raiso(Ajout:boolean);
  public
    { D�clarations publiques }
    procedure Asehoy(Etat:shortint);
  end;

var
  FGuidAbon: TFGuidAbon;

implementation

uses Daspecia, Journaux_U;

{$R *.DFM}

procedure TFGuidAbon.Asehoy(Etat:shortint);
begin
  Et:=Etat;
  NoChange:=False;
  SourceGuidabon.DataSet:=Special.GuidAbon;
  Special.GuidAbon.open;
  if Etat=0 then Diovy;
  ShowModal;
end;

procedure TFGuidAbon.Raiso(Ajout:boolean);
var index:integer;
begin
  NoChange:=true;
  if ajout then Special.Guidabon.Insert
  else Special.Guidabon.Edit;
  try
    Special.GuidabonDescription.Value:=Edit2.text;
    index:=ComboBox1.ItemIndex;
    Special.GuidabonPeriodede.Value:=Edit3.text+FormatFloat('00',index+1);
    index:=ComboBox2.ItemIndex;
    Special.GuidabonPeriodeA.Value:=Edit4.text+FormatFloat('00',index+1);
    Special.GuidabonCodeJrnx.Value:=Edit5.text;
    Special.GuidabonFrequence.Value:=RadioGroup1.Items[RadioGroup1.ItemIndex];
    Special.GuidabonJieme.Value:=strtoint(edit7.text);
    Special.GuidabonMieme.Value:=Combobox3.ItemIndex;
    Special.Guidabon.Post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Erreur de base donn�es',mtError,[mbok],0);
      Special.Guidabon.cancel;
    end;
    On EConvertError do
    begin
      MessageDlg('Erreur de saisie',mtError,[mbok],0);
      Special.Guidabon.cancel;
    end;
  end;

end;


procedure TFGuidAbon.Diovy;
var dt:TDateTime;
begin
  dt:=date;
  edit1.text:='';
  edit2.text:='';
  edit5.text:='';
  edit6.text:='';
  edit7.text:='1';
  RadioGroup1.ItemIndex:=1;
  AfficheDate(0,dt);
  AfficheDate(1,dt);
  combobox3.ItemIndex:=1;
end;

procedure TFGuidAbon.AfficheDate(cas:shortint;dt:TDateTime);
var  Year, Month, Day: Word;
begin
  DecodeDate(dt,Year,Month,Day);
  case cas of
    0:begin
      Edit3.text:=inttostr(Year);
      ComboBox1.ItemIndex:=Month-1;
    end;
    1:begin
      Edit4.text:=inttostr(Year);
      ComboBox2.ItemIndex:=Month-1;
    end;
  end;
end;

procedure TFGuidAbon.SourceGuidabonDataChange(Sender: TObject;
  Field: TField);
var index,i:integer;
   dt:TDateTime;
begin
  dt:=date;
  if NoChange then exit;
  Edit1.text:=IntToStr(Special.GuidabonNumero.Value);
  Edit2.text:=Special.GuidabonDescription.Value;
  try
    Edit3.text:=copy(Special.GuidabonPeriodede.Value,1,4);
    Index:=strtoint(copy(Special.GuidabonPeriodede.Value,6,2))-1;
    ComboBox1.ItemIndex:=index;
    Edit4.text:=copy(Special.GuidabonPeriodea.Value,1,4);
    Index:=strtoint(copy(Special.GuidabonPeriodeA.Value,6,2))-1;
    ComboBox2.ItemIndex:=index;
  except;
    AfficheDate(0,dt);
    AfficheDate(1,dt);
  end;
  Edit5.text:=Special.GuidabonCodeJrnx.Value;
  for i:=0 to 2 do
    if RadioGroup1.Items[i]=Special.GuidabonFrequence.Value then break;
  RadioGroup1.ItemIndex:=i;
end;


procedure TFGuidAbon.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:begin
      Edit8.text:='(Jour de la semaine)';
      ComboBox3.Visible:=false;
      Edit11.Visible:=false;
    end;
    1:begin
      Edit8.text:='( Jour du mois )';
      ComboBox3.Visible:=false;
      Edit11.Visible:=true;
    end;
    2:begin
      Edit8.text:='( Jour du mois )';
      ComboBox3.Visible:=true;
      Edit11.Visible:=true;
    end;
  end;
end;

procedure TFGuidAbon.SpeedButton1Click(Sender: TObject);
begin
  case et of
    0:Raiso(true);
    1:Raiso(false);
  end;
  close;
end;

procedure TFGuidAbon.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFGuidAbon.SpeedButton6Click(Sender: TObject);
begin
  AsehoyJournaux(2);
  edit5.text:=Special.JournauxCode.Value;
  edit6.text:=Special.JournauxIntitule.Value;
end;

end.
