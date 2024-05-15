unit QteInven;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBTables, Mask, ExtCtrls, Buttons;

type
  TFQteInven = class(TForm)
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
    procedure SpeedButton1Click(Sender: TObject);
  private
    { déclarations privées }
  public
    { déclarations publiques }
    procedure Asehoy(Ajout:boolean);

  end;

var
  FQteInven: TFQteInven;

implementation

uses ImporSto, DaTiers;

{$R *.DFM}

procedure TFQteInven.Asehoy(Ajout:boolean);
begin
  DataTiers.SourcePlafQte.DataSet:=DataTiers.QteInven;

  showModal;
end;

procedure TFQteInven.SpeedButton1Click(Sender: TObject);
begin
  AsehoyListeSt('Article.db','',DataTiers.SocieteCode.Value,true);
  DataTiers.Tempon.open;
  DataTiers.Tempon.refresh;
  DataTiers.QteInvenCodeArt.Value:=DataTiers.TemponString1.Value;
  DataTiers.QteInvenArticle.Value:=DataTiers.TemponString2.Value;
end;

end.