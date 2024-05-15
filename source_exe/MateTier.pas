unit MateTier;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBGrids, DBTables, Grids, Mask, ExtCtrls;

type
  TForm2 = class(TForm)
    Table2Compte: TStringField;
    Table2Identification: TStringField;
    Table1NumCpt: TStringField;
    Table1Intitule: TStringField;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditNumCpt: TDBEdit;
    Label2: TLabel;
    EditIntitule: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Table1: TTable;
    Table2: TTable;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { déclarations privées }
  public
    { déclarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
begin
  Table1.Open;
  Table2.Open;
end;

end.