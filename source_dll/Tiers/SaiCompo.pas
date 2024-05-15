unit SaiCompo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, DB,Buttons, Grids, DBGrids;

type
  TFSaiCompo = class(TForm)
    Label26: TLabel;
    Label28: TLabel;
    EditPlafMont: TDBEdit;
    EditCodeZone: TDBEdit;
    EditNombre: TDBEdit;
    EditCode: TDBEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    ComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Déclarations privées }
    code:string;
  public
    { Déclarations publiques }
    procedure Asehoy(Ajout:boolean;codecli:string);
  end;

var
  FSaiCompo: TFSaiCompo;

implementation

uses DaTiers;

{$R *.DFM}

procedure TFSaiCompo.Asehoy(Ajout:boolean;CodeCli:string);
begin
  DataTiers.TReglemen.Open;
  DataTiers.TFam_Cli.Open;
  Code:=DataTiers.SelTiersCode.Value;
  DataTiers.QCompoCli.Edit;
  DataTiers.QCompoCliCode.Value:=DataTiers.SelTiersCode.Value;
  ShowModal;
end;

procedure TFSaiCompo.BitBtn1Click(Sender: TObject);
begin
  try
    Code:=DataTiers.QTiersCode.Value;
    DataTiers.QCompoCliCode.Value:=Code;
    DataTiers.QCompoCli.Post;
    Close;
  except
    On EDataBaseError do showMessage('Ce code existe déjà');
  end;
end;

procedure TFSaiCompo.DBEdit1Click(Sender: TObject);
begin
  DBGrid1.Visible:=true;
end;

procedure TFSaiCompo.DBGrid1CellClick(Column: TColumn);
begin
  DataTiers.QCompoCliCodeRegl.Value:=DataTiers.TReglemenCode.Value;
  DBGrid1.Visible:=false;
end;

procedure TFSaiCompo.DBEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=28 then DBGrid1.Visible:=false;
end;

end.
