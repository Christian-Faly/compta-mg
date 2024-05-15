unit Materls;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, DBCtrls, Buttons, Grids, DBGrids, StdCtrls,
  ExtCtrls, quickrpt, Qrctrls;

type
  TFMateriel = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator: TDBNavigator;
    SourceMaterls: TDataSource;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Edit3: TEdit;
    Edit7: TEdit;
    Label5: TLabel;
    Panel4: TPanel;
    SpeedButton11: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    Sourcelst: TDataSource;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    ComboBox1: TComboBox;
    SpeedButton9: TSpeedButton;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    QRLabel1: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel20: TQRLabel;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    SpeedButton7: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    QRImage1: TQRImage;
    QRImage4: TQRImage;
    BitBtn2: TBitBtn;
    procedure SourceMaterlsDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SourcelstDataChange(Sender: TObject; Field: TField);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private-déclarations }
//    pnum,pid:^string;
    NoChange:boolean;
    nbmat:integer;
    procedure Raiso(ajout:boolean);
    procedure Raiso2(ajout:boolean);
    procedure SelectUnite(sigle:string);
  public
    { Public-déclarations }
    procedure Asehoy(chem:string);
  end;

var
  FMateriel: TFMateriel;

procedure AsehoyMateriel(chem:string); export;

implementation

uses ImporDoc, ImporIm, DaImmo;

{$R *.DFM}

procedure AsehoyMateriel(chem:string);
begin
  try
    CreerDataImmo;
    FMateriel:=TFMateriel.Create(Application);
    FMateriel.Asehoy(chem);
  finally
    FMateriel.free;
    VonoyDataImmo;
  end;
end;

procedure TFMateriel.Asehoy(chem:string);
begin
  nbmat:=0;
  NoChange:=false;
//  pnum:=@numero;
//  pId:=@id;
  DataImmo.Materls.Open;
  DataImmo.lstMatls.open;
  SourceMaterls.DataSet:=DataImmo.Materls;
  Sourcelst.DataSet:=DataImmo.lstMatls;
  ShowModal;
end;

procedure  TFMateriel.SelectUnite(sigle:string);
var hita:boolean;
  i:integer;
begin
  hita:=false;
  for i:=0 to ComboBox1.Items.Count-1 do
  begin
    if ComboBox1.Items.Strings[i]=sigle then
    begin
      hita:=true;
      break;
    end;
  end;
  if hita then ComboBox1.ItemIndex:=i
  else ComboBox1.ItemIndex:=-1;
end;

procedure TFMateriel.Raiso(ajout:boolean);
begin
  NoChange:=true;
  if ajout then DataImmo.Materls.insert
  else DataImmo.Materls.edit;
  try
    DataImmo.MaterlsIdentification.Value:=Edit2.text;
    DataImmo.MaterlsUnite.Value:=ComboBox1.text;
    DataImmo.Materls.post;
    DataImmo.Materls.refresh;
  except
    On EDataBaseError do
    begin
      Application.MessageBox('Ce Numéro existe déjà','Erreur',mb_ok);
      DataImmo.Materls.cancel;
    end;
    On EConvertError do
    begin
      Application.MessageBox('Saisie prix non valide','Erreur',mb_ok);
      DataImmo.Materls.cancel;
    end;
  end;
  NoChange:=false;
  DataImmo.Materls.refresh;
end;

procedure TFMateriel.Raiso2(ajout:boolean);
begin
  NoChange:=true;
  if DataImmo.MaterlsNumero.Value=0 then
  begin
    MessageDlg('Pas de matériel selectionné',mtError,[mbok],0);
    NoChange:=false;
    exit;
  end;
  if Ajout then DataImmo.lstMatls.insert
  else DataImmo.lstMatls.edit;
  try
    DataImmo.lstMatlsNumMat.Value:=DataImmo.MaterlsNumero.Value;
    DataImmo.lstMatlsCode.Value:=edit7.text;
    DataImmo.lstMatlsEtat.Value:=edit3.text;
    DataImmo.lstMatlsOrigine.Value:=edit6.text;
    DataImmo.lstMatlsEmplace.Value:=edit5.text;
    DataImmo.lstMatlsRemarque.Value:=edit8.text;
    DataImmo.lstMatlsNumCode.Value:=inttostr(DataImmo.MaterlsNumero.Value)+'-'+edit7.text;
    DataImmo.lstMatls.post;
  except
    On EDataBaseError do
    begin
      MessageDlg('Cette code existe déjà',mtError,[mbok],0);
      DataImmo.lstMatls.Cancel;
    end;
  end;
  NoChange:=false;
  DataImmo.lstMatls.refresh;
end;

procedure TFMateriel.SourceMaterlsDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  Edit1.text:=IntToStr(DataImmo.MaterlsNumero.Value);
  Edit2.text:= DataImmo.MaterlsIdentification.Value;
  SelectUnite(DataImmo.MaterlsUnite.Value);
//  pnum^:=IntToStr(DataImmo.MaterlsNumero.Value);
end;

procedure TFMateriel.SpeedButton1Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFMateriel.SpeedButton2Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFMateriel.SpeedButton3Click(Sender: TObject);
begin
  try
    DataImmo.Materls.delete;
    DataImmo.Materls.refresh;
  except
    on EDataBaseError do;
  end;
end;

procedure TFMateriel.SpeedButton5Click(Sender: TObject);
begin
  DataImmo.Tempon.open;
  DataImmo.tempon.edit;
  DataImmo.temponReal1.Value:=0;
  DataImmo.temponString1.Value:='';
  DataImmo.temponString2.Value:='';
  DataImmo.temponString3.Value:='';
  DataImmo.tempon.post;
  close;
end;

procedure TFMateriel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Sourcelst.DataSet:=DataImmo.Repos;
  SourceMaterls.DataSet:=DataImmo.Repos;
end;

procedure TFMateriel.SpeedButton6Click(Sender: TObject);
begin
  AsehoyEvenmnt('Transport','Matériel',DataImmo.lstMatlsNumCode.Value);
end;

procedure TFMateriel.SourcelstDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  edit7.text:=DataImmo.lstMatlsCode.Value;
  edit3.text:=DataImmo.lstMatlsEtat.Value;
  edit6.text:=DataImmo.lstMatlsOrigine.Value;
  edit5.text:=DataImmo.lstMatlsEmplace.Value;
  edit8.text:=DataImmo.lstMatlsRemarque.Value;
//  pid^:=DataImmo.lstMatlsCode.Value;
end;

procedure TFMateriel.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
var textsql:string;
begin
  DataImmo.SelEvenmnt.close;
  DataImmo.SelEvenmnt.sql.clear;
  textsql:='select * from ''c:\Sysatra\Data\evenmnt.db'' ';
  textsql:=textsql+'where Objet=''Matériel'' ';
  textsql:=textsql+'and CodeObjet='''+Edit7.text+''' ';
  DataImmo.SelEvenmnt.sql.Add(textsql);
  DataImmo.SelEvenmnt.Open;
end;

procedure TFMateriel.SpeedButton9Click(Sender: TObject);
begin
  QuickRep1.preview;
end;

procedure TFMateriel.SpeedButton11Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex=1 then
  begin
    DataImmo.PtMateriel.close;
    DataImmo.PtMateriel.params[0].AsInteger:=DataImmo.MaterlsNumero.Value;
    DataImmo.PtMateriel.open;
    QuickRep.preview;
  end;
//  if ComboBox1.ItemIndex=0 then AsehoyEmploi(Commun.SocieteChemin.Value,edit1.text,-1);
end;

procedure TFMateriel.SpeedButton4Click(Sender: TObject);
begin
  Edit1.text:='';
  Edit2.text:='';
  ComboBox1.ItemIndex:=2;
end;

procedure TFMateriel.SpeedButton14Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiement supprimer?',
     mtConfirmation,mbYesNoCancel,0)=mrYes then
    DataImmo.lstMatls.delete;
end;

procedure TFMateriel.SpeedButton10Click(Sender: TObject);
begin
  Edit7.text:='';
  Edit6.text:='';
  Edit3.text:='';
  Edit5.text:='';
  Edit8.text:='';
end;

procedure TFMateriel.SpeedButton12Click(Sender: TObject);
begin
  Raiso2(true);
end;

procedure TFMateriel.SpeedButton13Click(Sender: TObject);
begin
  Raiso2(false);
end;


procedure TFMateriel.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  nbmat:=0;
end;

procedure TFMateriel.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  nbmat:=nbmat+1;
end;

procedure TFMateriel.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel20.caption:=inttostr(nbmat);
end;


procedure TFMateriel.QuickRep1BeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
begin
  DataImmo.Materls.refresh;
end;

procedure TFMateriel.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DataImmo.lstMatls.refresh;
end;



procedure TFMateriel.SpeedButton7Click(Sender: TObject);
begin
  DataImmo.Materls.refresh;
end;



procedure TFMateriel.SpeedButton8Click(Sender: TObject);
begin
  DataImmo.lstMatls.refresh;
end;


procedure TFMateriel.BitBtn2Click(Sender: TObject);
begin
  DataImmo.Tempon.open;
  DataImmo.tempon.edit;
  DataImmo.temponReal1.Value:=DataImmo.MaterlsNumero.Value;
  DataImmo.temponString1.Value:=DataImmo.lstMatlsCode.Value;
  DataImmo.temponString2.Value:=DataImmo.MaterlsIdentification.Value;
  DataImmo.temponString3.Value:=DataImmo.MaterlsUnite.Value;
  DataImmo.tempon.post;
  close;
end;

end.
