unit FichPlan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, Db;

type
  TFFicheImmo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit7: TEdit;
    ComboBox1: TComboBox;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    UpDown1: TUpDown;
    Label13: TLabel;
    Edit9: TEdit;
    Label14: TLabel;
    ComboBox3: TComboBox;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Edit10: TEdit;
    Label16: TLabel;
    Edit11: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    BitBtn5: TBitBtn;
    GroupBox4: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox5: TGroupBox;
    Edit13: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Edit14: TEdit;
    Label28: TLabel;
    DateTimePicker3: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox6: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox7: TGroupBox;
    Label30: TLabel;
    Edit16: TEdit;
    Label31: TLabel;
    DateTimePicker5: TDateTimePicker;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox8: TGroupBox;
    Label29: TLabel;
    Edit15: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    Edit17: TEdit;
    Label34: TLabel;
    Edit18: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Edit19: TEdit;
    Edit20: TEdit;
    Label37: TLabel;
    Edit21: TEdit;
    UpDown2: TUpDown;
    Label38: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SourceFichImmo: TDataSource;
    SourceSelAffectat: TDataSource;
    SourceSelEmplace: TDataSource;
    DateTimePicker2: TDateTimePicker;
    SourceSelSortImmo: TDataSource;
    SourcePlanAm: TDataSource;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    SpeedButton8: TSpeedButton;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SourceFichImmoDataChange(Sender: TObject; Field: TField);
    procedure SourceSelAffectatDataChange(Sender: TObject; Field: TField);
    procedure SourceSelEmplaceDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SourceSelSortImmoDataChange(Sender: TObject; Field: TField);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SourcePlanAmDataChange(Sender: TObject; Field: TField);
  private
    { Déclarations privées }
    NoChange:boolean;
    chemin:string;
    procedure RaisoFiche(Ajout:boolean);
    procedure RaisoAffect(Ajout:boolean);
    procedure RaisoEmplace(Ajout:boolean);
    function RaisoSortImmo:boolean;
  public
    { Déclarations publiques }
    procedure Asehoy(chem:string);
  end;

var
  FFicheImmo: TFFicheImmo;

procedure AsehoyFicheImmo(chem:string);export;

implementation

uses DaImmo, TypeElmt;


{$R *.DFM}


procedure AsehoyFicheImmo(chem:string);
begin
  try
    CreerDataImmo;
    FFicheImmo:=TFFicheImmo.Create(Application);
    FFicheImmo.Asehoy(chem);
  finally
    FFicheImmo.free;
    VonoyDataImmo;
  end;
end;

procedure TFFicheImmo.Asehoy(chem:string);
begin
  Chemin:=chem;
  DataImmo.ChangeChemin(chem);
  NoChange:=false;
  DataImmo.FichImmo.OPEN;
  ShowModal;
end;

procedure TFFicheImmo.RaisoFiche(Ajout:boolean);
var valeur,TVA,coeff:double;
  annee,mois:shortint;
begin
  if not AvadihoReal(Edit4.text,valeur) then
  begin
    MessageDlg('Valeur immo. indéterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  if not AvadihoReal(Edit5.text,TVA) then
  begin
    MessageDlg('Valeur TVA indéterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  if not AvadihoReal(Edit9.text,coeff) then
  begin
    MessageDlg('Valeur coefficient indéterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  try
    annee:=strtoint(edit8.text);
    mois:=strtoint(edit21.text);
  except
    On EConvertError do
    begin
      MessageDlg('durée ammort. indéterminée ',mtConfirmation,[mbOK],0);
      exit;
    end;
  end;
  NoChange:=true;
  if ajout then DataImmo.FichImmo.Insert
  else DataImmo.FichImmo.Edit;
  try
    DataImmo.FichImmoCode.Value:=Edit1.text;
    DataImmo.FichImmoDescription.Value:=Edit2.text;
    DataImmo.FichImmoNumFact.Value:=Edit3.text;
    DataImmo.FichImmoValeur.Value:=valeur;
    DataImmo.FichImmoTVA.Value:=TVA;
    DataImmo.FichImmoFournisseur.Value:=Edit7.text;
    DataImmo.FichImmoCptImmo.Value:=Edit10.text;
    DataImmo.FichImmoCptAmort.Value:=Edit11.text;
    DataImmo.FichImmoCptDotat.Value:=Edit12.text;
    DataImmo.FichImmoDtAcquisit.Value:=DateTimePicker1.Date;
    DataImmo.FichImmoMethFisc.Value:=ComboBox1.text;
    DataImmo.FichImmoNbAnneeAmort.Value:=Annee;
    DataImmo.FichImmoNbMoisAmort.Value:=mois;
    DataImmo.FichImmoCoeffDegress.Value:=Coeff;
    DataImmo.FichImmoOrigine.Value:=ComboBox3.text;
    if RadioGroup1.ItemIndex=1 then
      DataImmo.FichImmoCession.Value:=true
    else
      DataImmo.FichImmoCession.Value:=false;
    DataImmo.FichImmo.Post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Cette code existe déjà',mtConfirmation,[mbOK],0);
     DataImmo.FichImmo.Cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFFicheImmo.RaisoAffect(Ajout:boolean);
var pourc:double;
begin
  if (not AvadihoReal(Edit14.text,pourc) or (pourc>100)) then
  begin
    MessageDlg('Valeur en % non déterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  NoChange:=True;
  if ajout then DataImmo.SelAffectat.Insert
  else DataImmo.SelAffectat.edit;
  try
    DataImmo.SelAffectatCodeImmo.Value:=DataImmo.FichImmoCode.Value;
    DataImmo.SelAffectatDaty.Value:=DateTimePicker3.Date;
    DataImmo.SelAffectatCodeAnal.Value:=Edit13.text;
    DataImmo.SelAffectatPourc.Value:=pourc;
    DataImmo.SelAffectat.post
  except
    On EDataBaseError do
    begin
      MessageDlg('Cette code et affectation sont déjà enregistré en ce date',mtConfirmation,[mbOK],0);
      DataImmo.SelAffectat.Cancel;
    end;
  end;
  NoChange:=false;
end;

procedure TFFicheImmo.RaisoEmplace(Ajout:boolean);
var pourc:double;
begin
  NoChange:=True;
  if ajout then DataImmo.SelEmplace.Insert
  else DataImmo.SelEmplace.edit;
  try
    DataImmo.SelEmplaceCodeImmo.Value:=DataImmo.FichImmoCode.Value;
    DataImmo.SelEmplaceDaty.Value:=DateTimePicker5.Date;
    DataImmo.SelEmplaceEmplacement.Value:=Edit16.text;
    DataImmo.SelEmplace.post
  except
    On EDataBaseError do
    begin
      MessageDlg('Cette code et affectation sont déjà enregistré en ce date',mtConfirmation,[mbOK],0);
      DataImmo.SelEmplace.Cancel;
    end;
  end;
  NoChange:=false;
end;

function TFFicheImmo.RaisoSortImmo:boolean;
var valeur,TVARC,TVARV,coeff:double;
begin
  Result:=true;
  if not AvadihoReal(Edit18.text,valeur) then
  begin
    MessageDlg('Valeur immo. indéterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  if not AvadihoReal(Edit19.text,TVARC) then
  begin
    MessageDlg('Valeur TVA Récupérée indéterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  if not AvadihoReal(Edit20.text,coeff) then
  begin
    MessageDlg('Valeur TVA Reversée  indéterminée ',mtConfirmation,[mbOK],0);
    exit;
  end;
  NoChange:=true;
  DataImmo.FichImmo.Edit;
  try
    DataImmo.SelSortImmoCodeImmo.Value:=DataImmo.FichImmoCode.Value;
    DataImmo.SelSortImmoDestination.Value:=Edit10.text;
    DataImmo.SelSortImmoDaty.Value:=DateTimePicker2.Date;
    DataImmo.SelSortImmoAcquereur.Value:=Edit17.text;
    DataImmo.SelSortImmoPrixTTC.Value:=TVARC;
    DataImmo.SelSortImmoTVARecup.Value:=TVARC;
    DataImmo.SelSortImmoTVARevers.Value:=TVARV;
    DataImmo.SelSortImmo.Post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Cette code existe déjà',mtConfirmation,[mbOK],0);
      DataImmo.SelSortImmo.Cancel;
      Result:=false;
    end;
  end;
  NoChange:=false;
end;

procedure TFFicheImmo.SpeedButton5Click(Sender: TObject);
begin
  RaisoFiche(true);
end;

procedure TFFicheImmo.SpeedButton7Click(Sender: TObject);
begin
  RaisoFiche(false);
end;

procedure TFFicheImmo.SpeedButton6Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraiement supprimer '+ DataImmo.FichImmoDescription.Value +' ?',
                mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    DataImmo.SelEmplace.First;
    while not DataImmo.SelEmplace.EOF do DataImmo.SelEmplace.Delete;
    DataImmo.SelAffectat.First;
    while not DataImmo.SelAffectat.EOF do DataImmo.SelAffectat.Delete;
    DataImmo.FichImmo.Delete;
  end;

end;

procedure TFFicheImmo.SourceFichImmoDataChange(Sender: TObject;
  Field: TField);
begin
  if NOChange then exit;
  Edit1.text:= DataImmo.FichImmoCode.Value;
  Edit2.text:= DataImmo.FichImmoDescription.Value;
  Edit3.text:= DataImmo.FichImmoNumFact.Value;
  Edit4.text:= FormatFloat('#,##0',DataImmo.FichImmoValeur.Value);
  Edit5.text:= FormatFloat('#,##0',DataImmo.FichImmoTVA.Value);
  Edit7.text:= DataImmo.FichImmoFournisseur.Value;
  Edit10.text:=DataImmo.FichImmoCptImmo.Value;
  Edit11.text:=DataImmo.FichImmoCptAmort.Value;
  Edit12.text:=DataImmo.FichImmoCptDotat.Value;
  if DataImmo.FichImmo.EOF then  DateTimePicker1.Date:=Date
  else DateTimePicker1.Date:=DataImmo.FichImmoDtAcquisit.Value;
  ComboBox1.text:=  DataImmo.FichImmoMethFisc.Value;
  Edit8.text:=inttostr(DataImmo.FichImmoNbAnneeAmort.Value);
  Edit21.text:=inttostr(DataImmo.FichImmoNbMoisAmort.Value);
  Edit9.text:= FormatFloat('#,##0',DataImmo.FichImmoCoeffDegress.Value);
  ComboBox3.text:= DataImmo.FichImmoOrigine.Value;
  if DataImmo.FichImmoCession.Value then RadioGroup1.ItemIndex:=1
  else RadioGroup1.ItemIndex:=0;
  DataImmo.SelAffectat.Close;
  DataImmo.SelAffectat.Params[0].AsString:=DataImmo.FichImmoCode.Value;
  DataImmo.SelAffectat.Open;
  DataImmo.SelEmplace.Close;
  DataImmo.SelEmplace.Params[0].AsString:=DataImmo.FichImmoCode.Value;;
  DataImmo.SelEmplace.Open;
  DataImmo.SelSortImmo.Close;
  DataImmo.SelSortImmo.Params[0].AsString:=DataImmo.FichImmoCode.Value;;
  DataImmo.SelSortImmo.Open;
  DataImmo.SelPlanAmmo.Close;
  DataImmo.SelPlanAmmo.Params[0].AsString:=DataImmo.FichImmoCode.Value;;
  DataImmo.SelPlanAmmo.Open;
end;


procedure TFFicheImmo.SourceSelAffectatDataChange(Sender: TObject;
  Field: TField);
begin
  if NoChange then exit;
  if DataImmo.SelAffectat.EOF then DateTimePicker3.Date:=date
  else DateTimePicker3.Date:=DataImmo.SelAffectatDaty.Value;
  Edit13.text:=DataImmo.SelAffectatCodeAnal.Value;
  Edit14.text:=FormatFloat('#.##',DataImmo.SelAffectatPourc.Value);
end;

procedure TFFicheImmo.SourceSelEmplaceDataChange(Sender: TObject;
  Field: TField);
begin
  if NoChange then exit;
  if DataImmo.SelEmplace.EOF then DateTimePicker5.Date:=Date
  else DateTimePicker5.Date:=DataImmo.SelEmplaceDaty.Value;
  Edit16.text:=DataImmo.SelEmplaceEmplacement.Value;
end;

procedure TFFicheImmo.SpeedButton1Click(Sender: TObject);
begin
  RaisoAffect(true);
end;

procedure TFFicheImmo.SpeedButton3Click(Sender: TObject);
begin
  RaisoEmplace(true);
end;

procedure TFFicheImmo.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraiement supprimer '+ DataImmo.FichImmoDescription.Value +' ?',
                mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    DataImmo.SelAffectat.Delete;
  end;
end;

procedure TFFicheImmo.SpeedButton4Click(Sender: TObject);
begin
  if MessageDlg('Voulez vous vraiement supprimer '+ DataImmo.FichImmoDescription.Value +' ?',
                mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    DataImmo.SelEmplace.Delete;
  end;
end;

procedure TFFicheImmo.SourceSelSortImmoDataChange(Sender: TObject;
  Field: TField);
begin
  if NoChange then exit;
  Edit10.text:=DataImmo.SelSortImmoDestination.Value;
  DateTimePicker2.Date:=DataImmo.SelSortImmoDaty.Value;
  Edit17.text:=DataImmo.SelSortImmoAcquereur.Value;
  Edit18.text:=FormatFloat('#,##0',DataImmo.SelSortImmoPrixTTC.Value);
  Edit19.text:=FormatFloat('#,##0',DataImmo.SelSortImmoTVARecup.Value);
  Edit20.text:=FormatFloat('#,##0',DataImmo.SelSortImmoTVARevers.Value);
end;

procedure TFFicheImmo.RadioGroup1Click(Sender: TObject);
var text:string;
begin
  if RadioGroup1.ItemIndex=1 then GroupBox8.Visible:=true
  else GroupBox8.Visible:=false;
end;

procedure TFFicheImmo.SpeedButton8Click(Sender: TObject);
begin
  RaisoSortImmo;
end;

procedure TFFicheImmo.BitBtn5Click(Sender: TObject);
var y,m,d,yf,mf,year,month,day:word;
    dtFin,Finmois:TDateTime;
    i:integer;
    NbJourTot,NbjourAnnee1,NbjourIntAnnee:longint;
    Cumul,Amort:real;
begin
  decodeDate(DataImmo.FichImmoDtAcquisit.Value,y,m,d);
  yf:=y+DataImmo.FichImmoNbAnneeAmort.Value;
  mf:=m+DataImmo.FichImmoNbMoisAmort.Value;
  if mf>12 then
  begin
    yf:=yf+1;
    mf:=mf-12;
  end;
  try
    dtFin:=EncodeDate(yf,mf,d-i);
  except
    dtFin:=MetterFinMois(yf,mf);
  end;
  if RadioGroup2.ItemIndex=0 then
  begin
    NbJourTot:=DataImmo.FichImmoNbMoisAmort.Value*30+DataImmo.FichImmoNbAnneeAmort.Value*360;
    if y=yf then
    begin
      NbjourAnnee1:=DataImmo.FichImmoNbMoisAmort.Value*30;
      NbjourIntAnnee:=0;
    end
    else
    begin
      if d=1 then NbjourAnnee1:=(12-m+1)*30
      else
      begin
        Finmois:=MetterFinMois(y,m);
        DecodeDate(FinMois,year,month,day);
        NbjourAnnee1:=(12-m)*30+day-d;
      end;
      NbjourIntAnnee:=(yf-y-1)*360;
    end;
  end;
  if RadioGroup2.ItemIndex=1 then
  begin
    NbJourTot:=round(dtFin-DataImmo.FichImmoDtAcquisit.Value);
    if y=yf then
    begin
      NbjourAnnee1:=NbJourTot;
      NbjourIntAnnee:=0;
    end
    else
    begin
      NbjourAnnee1:=round(EncodeDate(y,12,31)-DataImmo.FichImmoDtAcquisit.Value);
      NbjourIntAnnee:=(yf-y-1)*365;
    end;
  end;
  Cumul:=0;
  while not DataImmo.SelPlanAmmo.EOF do DataImmo.SelPlanAmmo.Delete;
  DataImmo.SelPlanAmmo.Insert;
  DataImmo.SelPlanAmmoCodeImmo.Value:=DataImmo.FichImmoCode.Value;
  DataImmo.SelPlanAmmoDebutExer.Value:=EncodeDate(y,1,1);
{  ShowMessage('Année 1:'+IntToStr(NbjourAnnee1)+'Jour tot:' +IntToStr(NbJourTot));}
  Amort:=DataImmo.FichImmoValeur.Value*NbjourAnnee1/NbJourTot;
{  ShowMessage(FormatFloat('#,##0',Amort));}
  Cumul:=Cumul+Amort;
  DataImmo.SelPlanAmmoAmortissement.Value:=Amort;
  DataImmo.SelPlanAmmoValeurNet.Value:=DataImmo.FichImmoValeur.Value-Cumul;
  DataImmo.SelPlanAmmoCumul.Value:=Cumul;
  DataImmo.SelPlanAmmo.Post;
  {showMessage('yf:'+inttostr(yf));}
  if yf>y+1 then
  begin
    for i:=y+1 to yf-1 do
    begin
      DataImmo.SelPlanAmmo.Insert;
      DataImmo.SelPlanAmmoCodeImmo.Value:=DataImmo.FichImmoCode.Value;
      DataImmo.SelPlanAmmoDebutExer.Value:=EncodeDate(i,1,1);
      Amort:=(DataImmo.FichImmoValeur.Value*NbjourIntAnnee/NbJourTot)/(yf-y-1);
      Cumul:=Cumul+Amort;
      DataImmo.SelPlanAmmoAmortissement.Value:=Amort;
      DataImmo.SelPlanAmmoValeurNet.Value:=DataImmo.FichImmoValeur.Value-Cumul;
      DataImmo.SelPlanAmmoCumul.Value:=Cumul;
      DataImmo.SelPlanAmmo.Post;
    end;
  end;
  Amort:=DataImmo.FichImmoValeur.Value-Cumul;
  Cumul:=Cumul+Amort;
  if Amort>0 then
  begin
    DataImmo.SelPlanAmmo.Insert;
    DataImmo.SelPlanAmmoCodeImmo.Value:=DataImmo.FichImmoCode.Value;
    DataImmo.SelPlanAmmoDebutExer.Value:=EncodeDate(yf,1,1);
    DataImmo.SelPlanAmmoAmortissement.Value:=Amort;
    DataImmo.SelPlanAmmoValeurNet.Value:=DataImmo.FichImmoValeur.Value-Cumul;
    DataImmo.SelPlanAmmoCumul.Value:=Cumul;
    DataImmo.SelPlanAmmo.Post;
  end;
end;

procedure TFFicheImmo.SourcePlanAmDataChange(Sender: TObject;
  Field: TField);
begin
  if NoChange then exit;
  DateTimePicker5.Date:=DataImmo.SelEmplaceDaty.Value;
  Edit15.text:=DataImmo.SelEmplaceEmplacement.Value;
end;

end.
