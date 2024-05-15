unit Produit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables;

type
  TFProduit = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
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
    procedure Fafao(CodeProduit,Produit,Unite:String);
  public
    { Déclarations publiques }
    procedure Asehoy;
    procedure Raiso(ajout:boolean);
  end;

var
  FProduit: TFProduit;

procedure AsehoyProduit;Export;

implementation

uses DaAnalyt;

{$R *.DFM}

procedure AsehoyProduit;
begin
  try
    CreerDataAlytiq;
    FProduit:=TFProduit.Create(Application);
    FProduit.Asehoy;
  finally
    FProduit.free;
    VonoyDataAlytiq;
  end;
end;

procedure TFProduit.Asehoy;
begin
  NoChange:=false;
  SourcePoste.DataSet:=Analytiq.Produit;
  Analytiq.Produit.open;
  ShowModal;
end;

procedure TFProduit.fafao(CodeProduit,Produit,Unite: String);
begin
  edit1.text:=CodeProduit;
  edit2.text:=Produit;
  edit3.text:=Unite;

end;

procedure TFProduit.Raiso(Ajout:Boolean);
begin
  Nochange:=true;
  if ajout then Analytiq.Produit.insert else Analytiq.Produit.edit;
  try
    Analytiq.ProduitCodeProduit.Value:=edit1.text;
    Analytiq.ProduitProduit.Value:=edit2.text;
    Analytiq.ProduitUnite.Value:=edit3.text;
    Analytiq.Produit.post;
    Analytiq.Produit.refresh;
  except
    on EDataBaseError do
    begin
      Application.MessageBox('','',mb_ok);
      Analytiq.Produit.cancel;
    end;
  end;
  Nochange:=false;
end;

procedure TFProduit.SpeedButton3Click(Sender: TObject);
begin
  Raiso(true);
end;

procedure TFProduit.SpeedButton4Click(Sender: TObject);
begin
  Raiso(false);

end;

procedure TFProduit.SpeedButton5Click(Sender: TObject);
begin
  try
    Analytiq.Produit.Delete;
    Analytiq.Produit.Refresh;
  except
  end;
end;

procedure TFProduit.SourcePosteDataChange(Sender: TObject; Field: TField);
begin
  if not Nochange then
    Fafao(Analytiq.ProduitCodeProduit.Value,Analytiq.ProduitProduit.Value,Analytiq.ProduitUnite.Value);
end;

procedure TFProduit.SpeedButton2Click(Sender: TObject);
begin
  Fafao('','','');
end;

procedure TFProduit.SpeedButton1Click(Sender: TObject);
var code:string;
   okay:boolean;
begin
  {AsehoyLieu (code,okay);
  edit3.text:=Commun.Lieucode.Value;}
end;

procedure TFProduit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SourcePoste.DataSet:=Analytiq.Produit;
  NoChange:=true;
end;


procedure TFProduit.BitBtn1Click(Sender: TObject);
begin
  close;
end;


procedure TFProduit.BitBtn2Click(Sender: TObject);
begin
  Analytiq.Tempon.open;
  Analytiq.Tempon.first;
  Analytiq.Tempon.edit;
  Analytiq.TemponString1.Value:=Analytiq.ProduitCodeProduit.Value;
  Analytiq.TemponString2.Value:=Analytiq.ProduitProduit.Value;
  Analytiq.Tempon.post;
  close;
end;

end.
