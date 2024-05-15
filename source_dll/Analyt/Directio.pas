unit Directio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables;

type
  TFDirection = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
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
    Label2: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SourcePosteDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Déclarations privées }
    { Déclarations privées }
    NoChange:boolean;
    procedure Fafao(Numero,Intitule,Codelieu: String);
  public
    { Déclarations publiques }
    procedure Asehoy;
    procedure Raiso(ajout:boolean);
  end;

var
  FDirection: TFDirection;

procedure AsehoyDirection;export;

implementation

uses DaAnalyt;

{$R *.DFM}


procedure AsehoyDirection;
begin
  try
    CreerDataAlytiq;
    FDirection:=TFDirection.Create(Application);
    FDirection.Asehoy;
  finally
    FDirection.free;
    VonoyDataAlytiq;
  end;
end;

procedure TFDirection.Asehoy;
begin
  NoChange:=false;
  SourcePoste.DataSet:=Analytiq.Directio;
  Analytiq.Directio.open;
  ShowModal;
end;

procedure TFDirection.fafao(Numero,Intitule,Codelieu: String);
var i:integer;
begin
  edit1.text:=Numero;
  edit2.text:=Intitule;
  edit3.text:=CodeLieu;
  i:=0;
end;

procedure TFDirection.Raiso(Ajout:Boolean);
begin
  Nochange:=true;
  if ajout then Analytiq.Directio.insert else Analytiq.Directio.edit;
  try
    Analytiq.DirectioNumero.Value:=edit1.text;
    Analytiq.DirectioIntitule.Value:=edit2.text;
    Analytiq.DirectioCodelieu.Value:=edit3.text;
    Analytiq.Directio.post;
    Analytiq.Directio.refresh;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('','',mb_ok);
      Analytiq.Directio.cancel;
    end;
  end;
  Nochange:=false;
end;

procedure TFDirection.SpeedButton3Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFDirection.SpeedButton4Click(Sender: TObject);
begin
  Raiso(false);

end;

procedure TFDirection.SpeedButton5Click(Sender: TObject);
begin
  try
    Analytiq.Directio.Delete;
    Analytiq.Directio.Refresh;
  except
  end;
end;

procedure TFDirection.SourcePosteDataChange(Sender: TObject; Field: TField);
begin
  if not Nochange then
    Fafao(Analytiq.DirectioNumero.Value,Analytiq.DirectioIntitule.Value,Analytiq.DirectioCodelieu.Value);
end;

procedure TFDirection.SpeedButton2Click(Sender: TObject);
begin
  Fafao('','','');
end;

procedure TFDirection.SpeedButton1Click(Sender: TObject);
var code:string;
   okay:boolean;
begin
  {AsehoyLieu (code,okay);
  edit3.text:=Commun.Lieucode.Value;}
end;

procedure TFDirection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourcePoste.DataSet:=Analytiq.Directio;
  NoChange:=true;
end;


procedure TFDirection.BitBtn1Click(Sender: TObject);
begin
  close;
end;


procedure TFDirection.BitBtn2Click(Sender: TObject);
begin
  Analytiq.Tempon.open;
  Analytiq.Tempon.first;
  Analytiq.Tempon.edit;
  Analytiq.TemponString1.Value:=Analytiq.DirectioNumero.Value;
  Analytiq.TemponString2.Value:=Analytiq.DirectioIntitule.Value;
  Analytiq.Tempon.post;
  close;
end;

end.
