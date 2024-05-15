unit CodeAnalytique_U;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Grids, DBGrids, Mask, ExtCtrls;

type
  TFCodeAnalytique = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Editcode: TDBEdit;
    Editdesignation: TDBEdit;
    DBNavigator: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { private declarations }
    procedure Ouvrir;
  public
    { public declarations }
  end;

var
  FCodeAnalytique: TFCodeAnalytique;

procedure AsehoyCodeAnalytique;

implementation

{$R *.DFM}

uses Daspecia;

procedure AsehoyCodeAnalytique;
begin
  if FCodeAnalytique = nil then
    FCodeAnalytique := TFCodeAnalytique.Create(Application)
  else
    FCodeAnalytique.WindowState := wsMaximized;
  FCodeAnalytique.Ouvrir;
end;

procedure TFCodeAnalytique.Ouvrir;
begin
  Special.code_analytique.Open;
end;

procedure TFCodeAnalytique.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  DBGrid1.DataSource.DataSet.RecNo mod 2=0 then
  begin
    if Dbgrid1.Canvas.Brush.Color=Dbgrid1.Color then
      Dbgrid1.Canvas.Brush.Color:=$00CCC7FC;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect,Datacol,Column,State);
end;

end.