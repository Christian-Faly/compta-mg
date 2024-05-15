unit poste2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables;

type
  TFPoste = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    SourcePoste: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SourcePosteDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Déclarations privées }
    { Déclarations privées }
    NoChange:boolean;
    procedure Fafao(Numero,Intitule,Codelieu,NivAnal,PlanAnal,Typ,dir: String);
  public
    { Déclarations publiques }
    procedure Asehoy;
    procedure Raiso(ajout:boolean);
  end;

var
  FPoste: TFPoste;

procedure AsehoyPoste;export;

implementation

uses DaAnalyt;

{$R *.DFM}


procedure AsehoyPoste;
begin
  try
    CreerDataAlytiq;
    FPoste:=TFPoste.Create(Application);
    FPoste.Asehoy;
  finally
    FPoste.free;
    VonoyDataAlytiq;
  end;
end;

procedure TFPoste.Asehoy;
begin
  NoChange:=false;
  ComboBox3.Items.clear;
  ComboBox3.Items.Add('Détail');
  ComboBox3.Items.Add('Total');
  SourcePoste.DataSet:=Analytiq.PostAnal;
  Analytiq.PostAnal.open;
  ShowModal;
end;

procedure TFPoste.fafao(Numero,Intitule,Codelieu,NivAnal,PlanAnal,Typ,dir: String);
var i:integer;
begin
  edit1.text:=Numero;
  edit2.text:=Intitule;
  edit3.text:=CodeLieu;
  i:=0;
  while i<ComboBox1.Items.Count do
  begin
    if comparestr(ComboBox1.Items[i],NivAnal)=0 then break;
    i:=i+1;
  end;
  if ComboBox1.Items.Count=i then ComboBox1.ItemIndex:=-1;

  i:=0;
  while i<ComboBox2.Items.Count do
  begin
    if comparestr(ComboBox2.Items[i],PlanAnal)=0 then break;
    i:=i+1;
  end;
  if ComboBox1.Items.Count=i then ComboBox2.ItemIndex:=-1;

  i:=0;
  while i<ComboBox3.Items.Count do
  begin
    if comparestr(ComboBox3.Items[i],Typ)=0 then break;
    i:=i+1;
  end;
  if ComboBox1.Items.Count=i then ComboBox1.ItemIndex:=-1;
end;

procedure TFPoste.Raiso(Ajout:Boolean);
begin
  Nochange:=true;
  if ajout then Analytiq.PostAnal.insert else Analytiq.PostAnal.edit;
  try
    Analytiq.PostAnalNumero.Value:=edit1.text;
    Analytiq.PostAnalIntitule.Value:=edit2.text;
    Analytiq.PostAnalCodelieu.Value:=edit3.text;
    Analytiq.PostAnalDirection.Value:=edit3.text;
    Analytiq.PostAnalNivAnal.Value:=ComboBox1.text;
    Analytiq.PostAnalPlanAnal.Value:=ComboBox2.text;
    Analytiq.PostAnalTyp.Value:=ComboBox3.text;
    Analytiq.PostAnal.post;
    Analytiq.PostAnal.refresh;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('','',mb_ok);
      Analytiq.PostAnal.cancel;
    end;
  end;
  Nochange:=false;
end;

procedure TFPoste.SpeedButton3Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFPoste.SpeedButton4Click(Sender: TObject);
begin
  Raiso(false);

end;

procedure TFPoste.SpeedButton5Click(Sender: TObject);
begin
  try
    Analytiq.PostAnal.Delete;
    Analytiq.PostAnal.Refresh;
  except
  end;
end;

procedure TFPoste.SourcePosteDataChange(Sender: TObject; Field: TField);
begin
  if not Nochange then
    Fafao(Analytiq.PostAnalNumero.Value,Analytiq.PostAnalIntitule.Value,Analytiq.PostAnalCodelieu.Value,
          Analytiq.PostAnalNivAnal.Value,Analytiq.PostAnalPlanAnal.Value,Analytiq.PostAnalTyp.Value,
          Analytiq.PostAnalDirection.Value);
end;

procedure TFPoste.SpeedButton2Click(Sender: TObject);
begin
  Fafao('','','','','','','');
end;

procedure TFPoste.SpeedButton1Click(Sender: TObject);
var code:string;
   okay:boolean;
begin
  {AsehoyLieu (code,okay);
  edit3.text:=Commun.Lieucode.Value;}
end;

procedure TFPoste.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourcePoste.DataSet:=Analytiq.PostAnal;
  NoChange:=true;
end;


procedure TFPoste.BitBtn1Click(Sender: TObject);
begin
  close;
end;


procedure TFPoste.BitBtn2Click(Sender: TObject);
begin
  Analytiq.Tempon.open;
  Analytiq.Tempon.first;
  Analytiq.Tempon.edit;
  Analytiq.TemponString1.Value:=Analytiq.PostAnalNumero.Value;
  Analytiq.TemponString2.Value:=Analytiq.PostAnalIntitule.Value;
  Analytiq.Tempon.post;
  close;
end;

procedure TFPoste.SpeedButton7Click(Sender: TObject);
begin
  AsehoyPoste;
  Analytiq.Tempon.refresh;
  if length(Analytiq.TemponString1.Value)>0 then
  begin
    Edit1.Text:=Analytiq.TemponString1.Value;
  end;
end;

end.
