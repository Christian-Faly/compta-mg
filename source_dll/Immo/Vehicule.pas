unit Vehicule;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, ExtCtrls, Grids, DBGrids, DBTables, Buttons,
  Qrctrls, quickrpt;

type
  TFVehicule = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    SourceVehicule: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    RadioGroup1: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBNavigator: TDBNavigator;
    Edit2: TEdit;
    Label2: TLabel;
    Edit14: TEdit;
    Label14: TLabel;
    Edit15: TEdit;
    Label15: TLabel;
    Edit16: TEdit;
    SpeedButton10: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    Puissance: TQRLabel;
    QRLabel4: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    Plein: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText13: TQRDBText;
    SpeedButton11: TSpeedButton;
    SpeedButton22: TSpeedButton;
    p: TPanel;
    Label25: TLabel;
    Edit17: TEdit;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    SpeedButton12: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton18: TSpeedButton;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SourceVehiculeDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { déclarations privées }
    NoChange:Boolean;
    chemin:string;
    procedure Raiso(Ajout:boolean);
    procedure fafao;
  public
    { déclarations publiques }
    procedure Asehoy(chem:string);
  end;

var
  FVehicule: TFVehicule;

procedure AsehoyVehicule(chem:string);export;

implementation

uses DaImmo, typeelmt, Emploi ;

{$R *.DFM}

procedure AsehoyVehicule(chem:string);
begin
  try
    CreerDataImmo;
    //ChargerGPerso;
    //ChargerSociete;
    FVehicule:=TFVehicule.Create(Application);
    FVehicule.Asehoy(chem);
  finally
    FVehicule.free;
    //VonoyDataImmo;
  end;
end;

procedure TFVehicule.Asehoy(chem:string);
begin
  chemin:=chem;
  DataImmo.ChangeChemin(chem);
  NoChange:=false;
  SourceVehicule.DataSet:=DataImmo.Vehicule;
  DataImmo.Vehicule.Open;
  {if DataImmo.Vehicule.recordCount=0 then fafao;}
  ShowModal;
end;

procedure TFVehicule.Raiso(Ajout:boolean);
var Poidvide,Poidmax,VolMax,SurfMax,CarbPlein,
    consommation,VitMoy:double;
begin
  if not (AvadihoReal(edit9.text,Poidvide)
     and AvadihoReal(edit10.text,Poidmax)
     and AvadihoReal(edit11.text,Volmax)
     and AvadihoReal(edit12.text,Surfmax)
     and AvadihoReal(edit8.text,CarbPlein)
     and AvadihoReal(edit13.text,VitMoy)
     and AvadihoReal(edit15.text,Consommation)
     ) then
  begin
      Application.MessageBOx('Saisie non conforme','Erreur',mb_ok);
      exit;
  end;
  if length(edit1.text)=0 then
  begin
      Application.MessageBOx('Saisie Immatricule obligatoire','Erreur',mb_ok);
      exit;
  end;
  NoChange:=true;
  if ajout then DataImmo.Vehicule.insert
  else DataImmo.Vehicule.Edit;
  try
    DataImmo.VehiculeImmatre.Value:=edit1.text;
    DataImmo.VehiculeTyp.Value:=RadioGroup1.ItemIndex;
    DataImmo.VehiculeMarque.Value:=edit3.text;
    DataImmo.VehiculeGenre.Value:=edit4.text;
    DataImmo.VehiculeCategorie.Value:=edit2.text;
    DataImmo.VehiculePuissance.Value:=edit5.text;
    DataImmo.VehiculeCarburant.Value:=edit6.text;
    DataImmo.VehiculeTypeRep.Value:=edit17.text;
    DataImmo.VehiculeChauffeur.Value:=strtoint(edit7.text);
    DataImmo.VehiculeCarbPlein.Value:=CarbPlein;
    DataImmo.VehiculeVitMoy.Value:=VitMoy;
    DataImmo.VehiculePoidvide.Value:=Poidvide;
    DataImmo.VehiculePoidmax.Value:=Poidmax;
    DataImmo.VehiculeVolMax.Value:=VolMax;
    DataImmo.VehiculeSurfMax.Value:=SurfMax;
    DataImmo.VehiculeConsommation.Value:=Consommation;
    DataImmo.Vehicule.post;
  except
    On EConvertError do
    begin
      Application.MessageBOx('Saisie non conforme','Erreur',mb_ok);
      DataImmo.Vehicule.cancel;
    end;
    On EDataBaseError do
    begin
      Application.MessageBOx('Ce numéro existe déjà','Erreur',mb_ok);
      DataImmo.Vehicule.cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFVehicule.fafao;
begin
  edit1.text:='';
  edit2.text:='';
  edit3.text:='';
  edit4.text:='';
  edit5.text:='';
  edit6.text:='';
  edit7.text:='';
  edit8.text:='';
  edit9.text:='';
  edit10.text:='';
  edit11.text:='';
  edit12.text:='';
  edit13.text:='';
  edit14.text:='';
  edit15.text:='';
  edit16.text:='';
  RadioGroup1.ItemIndex:=-1;
end;

procedure TFVehicule.SpeedButton1Click(Sender: TObject);
begin
  fafao;
end;

procedure TFVehicule.SpeedButton2Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFVehicule.SpeedButton3Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFVehicule.SpeedButton4Click(Sender: TObject);
begin
  if Application.MessageBox('Voulez-vous vraiement le supprimmer',
         'Confirmation', mb_YesNo)=IDYES then
    try
      DataImmo.Vehicule.delete;
    except
      on EDataBaseError do
    end;
end;

procedure TFVehicule.SourceVehiculeDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  edit9.text :=FormatFloat('#,###',DataImmo.VehiculePoidvide.Value);
  edit10.text:=FormatFloat('#,###',DataImmo.VehiculePoidmax.Value);
  edit11.text:=FormatFloat('#,###',DataImmo.VehiculeVolMax.Value);
  edit12.text:=FormatFloat('#,###',DataImmo.VehiculeSurfMax.Value);
  edit15.text:=FormatFloat('#,###',DataImmo.VehiculeConsommation.Value);
  edit8.text :=FormatFloat('#,###',DataImmo.VehiculeCarbPlein.Value);
  edit13.text:=FormatFloat('#,###',DataImmo.VehiculeVitMoy.Value);
  edit1.text :=DataImmo.VehiculeImmatre.Value;
  RadioGroup1.ItemIndex:=DataImmo.VehiculeTyp.Value;
  edit3.text :=DataImmo.VehiculeMarque.Value;
  edit17.text:=DataImmo.VehiculeTypeRep.Value;
  edit4.text :=DataImmo.VehiculeGenre.Value;
  edit2.text :=DataImmo.VehiculeCategorie.Value;
  edit14.text :=DataImmo.VehiculeIdCategorie.Value;
  edit5.text :=DataImmo.VehiculePuissance.Value;
  edit6.text :=DataImmo.VehiculeCarburant.Value;
  edit16.text :=DataImmo.VehiculeIdEquipage.Value;
  edit7.text :=inttostr(DataImmo.VehiculeChauffeur.Value);
end;

procedure TFVehicule.SpeedButton6Click(Sender: TObject);
begin
  DataImmo.Tempon.Open;
  DataImmo.Tempon.edit;
  DataImmo.TemponString1.Value:='';
  DataImmo.TemponString2.Value:='';
  DataImmo.TemponString3.Value:='';
  DataImmo.Tempon.Post;
  Close;
end;

procedure TFVehicule.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceVehicule.DataSet:=DataImmo.repos;
end;

procedure TFVehicule.SpeedButton10Click(Sender: TObject);
begin
  //AsehoyEvenmnt('Traansport','Véhicule',edit1.text);
end;

procedure TFVehicule.SpeedButton11Click(Sender: TObject);
begin
  QuickRep.preview;
end;


procedure TFVehicule.SpeedButton22Click(Sender: TObject);
begin
  FEmploi.Asehoy(chemin,'',0);
end;

procedure TFVehicule.SpeedButton12Click(Sender: TObject);
begin
  DataImmo.Vehicule.refresh;
end;

procedure TFVehicule.SpeedButton15Click(Sender: TObject);
begin
  //AsehoyListDonnee('c:\Ylaf\Data\Stocks','carbur.db');
  DataImmo.Tempon.open;
  DataImmo.Tempon.refresh;
  if DataImmo.TemponString2.Value<>'' then
    Edit6.text:=DataImmo.TemponString2.Value;
end;

procedure TFVehicule.SpeedButton16Click(Sender: TObject);
begin
  //AsehoyListDonnee('c:\Ylaf\Data\Commerce','categVeh.db');
  DataImmo.Tempon.open;
  DataImmo.Tempon.Refresh;
  if DataImmo.TemponString1.Value<>'' then
  begin
    Edit2.text:=DataImmo.TemponString1.Value;
    Edit14.text:=DataImmo.TemponString2.Value;
  end;
end;

procedure TFVehicule.SpeedButton5Click(Sender: TObject);
begin
  //AsehoyPersonne(Chemin,1);
  DataImmo.Tempon.open;
  DataImmo.Tempon.refresh;
  if DataImmo.TemponString1.Value<>'' then
  begin
    Edit7.text:=DataImmo.TemponString1.Value;
    Edit16.text:=DataImmo.TemponString2.Value;
  end;
end;

procedure TFVehicule.SpeedButton18Click(Sender: TObject);
begin
  //AsehoyListDonnee('c:\Ylaf\Data\Immo','TypeRep.db');
  DataImmo.Tempon.Open;
  DataImmo.Tempon.refresh;
  if DataImmo.TemponString1.Value<>'' then
    edit17.text:=DataImmo.TemponString1.Value;
end;

procedure TFVehicule.BitBtn2Click(Sender: TObject);
begin
  DataImmo.Tempon.Open;
  DataImmo.Tempon.edit;
  DataImmo.TemponString1.Value:=DataImmo.VehiculeImmatre.Value;
  DataImmo.TemponString2.Value:=DataImmo.VehiculeMarque.Value;
  DataImmo.TemponString3.Value:=DataImmo.VehiculeCategorie.Value;
  DataImmo.Tempon.Post;
  Close;
end;

end.
