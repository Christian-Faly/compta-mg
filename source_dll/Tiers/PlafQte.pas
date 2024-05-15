unit PlafQte;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Buttons;

type
  TFPlafQte = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditCode: TDBEdit;
    Label2: TLabel;
    EditCodeArt: TDBEdit;
    Label3: TLabel;
    EditQuantite: TDBEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { déclarations privées }
  public
    { déclarations publiques }
    procedure Asehoy(Ajout:boolean);

  end;

var
  FPlafQte: TFPlafQte;

implementation

uses ImporSto, DaTiers;

{$R *.DFM}

procedure TFPlafQte.Asehoy(Ajout:boolean);
begin
  DataTiers.SourcePlafQte.DataSet:=DataTiers.PlafQte;
  if ajout then DataTiers.PlafQte.Insert
  else DataTiers.PlafQte.Edit;
  DataTiers.PlafQteCodeCli.Value:=DataTiers.QTiersFamCode.Value;
  showModal;
end;

procedure TFPlafQte.SpeedButton1Click(Sender: TObject);
begin
  AsehoyListeSt('Article.db','',DataTiers.SocieteCode.Value,true);
  DataTiers.Tempon.open;
  DataTiers.Tempon.refresh;
  DataTiers.PlafQteCodeArt.Value:=DataTiers.TemponString1.Value;
  DataTiers.PlafQteArticle.Value:=DataTiers.TemponString2.Value;
end;


procedure TFPlafQte.BitBtn1Click(Sender: TObject);
begin
  DataTiers.PlafQte.Post;
  Close;
end;

procedure TFPlafQte.BitBtn2Click(Sender: TObject);
begin
  DataTiers.PlafQte.Cancel;
  Close;
end;

end.