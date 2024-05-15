unit Taxe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, DBCtrls, Buttons, StdCtrls, ExtCtrls;

type
  TFLstTaxe = class(TForm)
    Panel2: TPanel;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    SourceTaxe: TDataSource;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edit2: TEdit;
    Edit6: TEdit;
    Label7: TLabel;
    procedure SourceTaxeDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
    ps:^string;
    nochange:boolean;
    procedure Fafao;
    procedure Raiso(ajout:boolean);
  public
    { Déclarations publiques }
    procedure Asehoy(var dev:string);
  end;

var
  FLstTaxe: TFLstTaxe;

procedure AmboaryTaxe;export;
procedure VonoyTaxe;export;

implementation

uses DaCommun;

{$R *.DFM}


procedure AmboaryTaxe;
begin
end;

procedure AsehoyTaxe;
begin
end;

procedure VonoyTaxe;
begin
  FLstTaxe.hide;
  FLstTaxe.free;
end;

procedure TFLstTaxe.Asehoy(var dev:string);
begin
  nochange:=false;
  ps:=@dev;
  SourceTaxe.DataSet:=Commun.Taxe;
  Commun.Taxe.Open;
  ShowModal;
end;


procedure  TFLstTaxe.Fafao;
begin
  edit1.text:='';
  edit2.text:='';
  edit6.text:='';
  try
    Edit1.Setfocus;
  except on
    EOutOfResources do
    else ;
  end;
end;

procedure TFLstTaxe.Raiso(ajout:boolean);
begin
  NoChange:=true;
  if ajout then Commun.Taxe.insert else Commun.Taxe.Edit;
  try
    Commun.TaxeSigle.Value:=edit1.text;
    Commun.TaxeDenomination.Value:=edit2.text;
    Commun.TaxeCodeAdm.Value:=edit6.text;
    Commun.TaxeDeductible.Value:=edit3.text;
    Commun.TaxeCollecte.Value:=edit4.text;
    Commun.TaxeTaux.Value:=strtofloat(edit5.text);
    Commun.Taxe.post;
    Commun.Taxe.requery;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('Cette code existe déjà','Erreur de saisie',mb_ok);
      Commun.Taxe.cancel;
    end
  end;
  NoChange:=False;
end;


procedure TFLstTaxe.SourceTaxeDataChange(Sender: TObject; Field: TField);
begin
  if nochange then exit;
  edit1.text:=Commun.TaxeSigle.Value;
  edit2.text:=Commun.TaxeDenomination.Value;
  edit6.text:=Commun.TaxeCodeAdm.Value;
  edit3.text:=Commun.TaxeDeductible.Value;
  edit4.text:=Commun.TaxeCollecte.Value;
  edit5.text:=FormatFloat('0.##',Commun.TaxeTaux.Value);
end;

procedure TFLstTaxe.SpeedButton1Click(Sender: TObject);
begin
  Fafao;
end;

procedure TFLstTaxe.SpeedButton2Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFLstTaxe.SpeedButton3Click(Sender: TObject);
begin
  Raiso(false);
end;

procedure TFLstTaxe.SpeedButton4Click(Sender: TObject);
begin
  if Application.MessageBox('Voulez-vous vraiement le supprimmer',
         'Confirmation', mb_YesNo)=IDYES then
    try
      Commun.Taxe.delete;
      Commun.Taxe.post;
      Commun.Taxe.requery;
    except
      on EDataBaseError do
    end;
end;

procedure TFLstTaxe.SpeedButton5Click(Sender: TObject);
begin
  edit1.text:=Commun.TaxeSigle.Value;
  edit2.text:=Commun.TaxeDenomination.Value;
  edit6.text:=Commun.TaxeCodeAdm.Value;
end;

procedure TFLstTaxe.SpeedButton6Click(Sender: TObject);
begin
  Close;
end;

procedure TFLstTaxe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourceTaxe.DataSet:=Commun.Repos;
end;


procedure TFLstTaxe.BitBtn1Click(Sender: TObject);
begin
  close;
end;


end.
