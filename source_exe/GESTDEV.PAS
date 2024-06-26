unit Gestdev;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids,
  Buttons,Devise, Qrctrls, quickrpt;

type
  TFGestDevise = class(TForm)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SourceCourss: TDataSource;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Edit3: TEdit;
    SourceDevise: TDataSource;
    QuickRep: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    SpeedButton7: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SourceCourssDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SourceDeviseDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { D�clarations priv�es }
    NoChange:boolean;
    function Raiso(ajout:boolean):boolean;
    procedure Fafao(achat,vente:real;dtmod:TDateTime);
  public
    { D�clarations publiques }
    procedure Asehoy;
  end;

var
  FGestDevise: TFGestDevise;

procedure AsehoyGestDev;export;

implementation

uses DaCommun, TypeElmt, Ecriture_U, devise_U;

{$R *.DFM}


procedure AsehoyGestDev;
begin
  try
    Application.CreateForm(TFGestDevise, FGestDevise);
    FGestDevise.Asehoy;
  finally
    FGestDevise.free;
  end;
end;


procedure TFGestDevise.Asehoy;
begin
  SourceDevise.dataSet:=Commun.devise;
  SourceCourss.dataSet:=Commun.Courss;
  NoChange:=false;
  edit4.text:=Datetostr(date);
  showModal;
end;

procedure TFGestDevise.SpeedButton1Click(Sender: TObject);
begin
  edit1.text:='';
  edit2.Text:=datetimetostr(date);
end;

procedure TFGestDevise.SourceCourssDataChange(Sender: TObject; Field: TField);
begin
  if NoChange then exit;
  fafao(Commun.Courssachat.Value,Commun.CourssVente.value,Commun.CourssDTMOD.Value);
  if length(Commun.CourssDevise.Value)=0 then
    edit2.Text:=datetimetostr(date)
end;

procedure TFGestDevise.fafao(achat,vente:Real;dtmod:TDateTime);
begin
  Edit1.text:=FormatFloat('#',achat);
  Edit3.text:=FormatFloat('#',vente);
  if length(edit1.text)=0 then edit2.Text:=datetimetostr(date)
  else Edit2.text:=DateTimeToStr(dtmod);
end;

function TFGestDevise.Raiso(ajout:boolean):boolean;
begin
  NoChange:=true;
  result:=true;
  if ajout then Commun.Courss.insert else Commun.Courss.edit;
  try
    Commun.CourssAchat.Value:=StrToFloat(Edit1.text);
    Commun.CourssVente.Value:=StrToFloat(Edit3.text);
    Commun.CourssDTMOD.Value:=StrToDateTime(Edit2.text);
    Commun.CourssIntDate.Value:=IntDate(Commun.CourssDTMOD.Value);
    Commun.Courss.post;
  except
    on EConvertError do
    begin
      Application.MessageBox('Erreur de valeur','Erreur de saisie',mb_ok);
      result:=false;
    end;
    on EDataBaseError do
    begin
      Application.MessageBox('Cette code existe d�j�','Erreur de saisie',mb_ok);
      Commun.Courss.cancel;
    end
  end;
  NoChange:=false;
end;

procedure TFGestDevise.SpeedButton2Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFGestDevise.SpeedButton3Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFGestDevise.SpeedButton6Click(Sender: TObject);
begin
  close;
end;

procedure TFGestDevise.SpeedButton4Click(Sender: TObject);
begin
  if Application.MessageBox('Voulez-vous vraiement le supprimmer',
         'Confirmation', mb_YesNo)=IDYES then
    try
      Commun.Courss.delete;
      Commun.Courss.post;
      Commun.Courss.requery;
    except
      on EDataBaseError do
    end;

end;

procedure TFGestDevise.SpeedButton5Click(Sender: TObject);
var dev:string;
begin
  AsehoyDevise(dev);
end;

procedure TFGestDevise.SourceDeviseDataChange(Sender: TObject; Field: TField);
begin
  Edit5.text:=Commun.DeviseSigle.Value;
  Edit6.text:=Commun.DeviseDenomination.Value;
  Edit7.text:=Commun.DevisePays.Value;
end;

procedure TFGestDevise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceDevise.dataSet:=Commun.Repos;
  SourceCourss.dataSet:=Commun.Repos;
end;

procedure TFGestDevise.SpeedButton7Click(Sender: TObject);
begin
  if RadioGroup1.itemIndex=0 then  QuickRep.DataSet:=Commun.Devise
  else  QuickRep.DataSet:=Commun.Courss;
  QuickRep.Preview;
end;

procedure TFGestDevise.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var   intdt:real;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    try
      intdt:=IntDate(strtodate(edit4.text));
    except
      intdt:=IntDate(date);
    end;
    Commun.Courss.first;
    while not Commun.Courss.eof do
    begin
      if Commun.CourssIntDate.Value>IntDt then break;
      Commun.Courss.next;
    end;
    if Commun.CourssIntDate.Value>IntDt then Commun.Courss.prior;
  end;
end;




procedure TFGestDevise.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
