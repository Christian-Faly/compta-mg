unit UTVADescrip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TFTVADescript = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBEdit2: TDBEdit;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTVADescript: TFTVADescript;

implementation

uses UMoteur, Daspecia;

{$R *.dfm}

procedure TFTVADescript.SpeedButton1Click(Sender: TObject);
begin
  Special.CodyTVA.Requery;
end;

procedure TFTVADescript.FormShow(Sender: TObject);
begin
   Special.CodyTVA.Open;
   Special.TVADescription.Open;
end;

end.
