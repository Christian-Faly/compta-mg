unit EditConsol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  TFEditConsol = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Asehoy(cas:integer);
  end;

var
  FEditConsol: TFEditConsol;

implementation

uses DaCommun, USQL;

{$R *.dfm}

procedure TFEditConsol.Asehoy(cas:integer);
begin
  case cas of
    0:DataSource1.DataSet:= DASQL.NumCompte;
    1:DataSource1.DataSet:= DASQL.SelConsolid;
  end;
  ShowModal;
end;

end.
