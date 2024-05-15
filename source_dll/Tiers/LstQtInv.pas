unit LstQtInv;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls, Buttons;

type
  TFLstQtInv = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SourceInvent: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { déclarations privées }
    ndf2:string;
  public
    { déclarations publiques }
    procedure Asehoy(ndf:string);
  end;

var
  FLstQtInv: TFLstQtInv;

procedure AsehoyLstQteTie(ndf,codesoc:string);export;

implementation

uses DaTiers, PlafQte, QteInven, ImporSto;

{$R *.DFM}

procedure AsehoyLstQteTie(ndf,codesoc:string);
begin
  try
    CreerDataTiers;
    ChangeCheminTiers(codesoc);
    FLstQtInv:=TFLstQtInv.Create(Application);
    FLstQtInv.Asehoy(ndf);
  finally
    FLstQtInv.free;
    VonoyDataTiers;
  end;
end;

procedure TFLstQtInv.Asehoy(ndf:string);
begin
  if not ChargerStock then close;
  ndf2:=ndf;
  DataTiers.QTiersFam.Close;
  DataTiers.QTiersFam.ParamByName('a').AsString:='CS';
  DataTiers.QTiersFam.Open;
  if ndf='PlafQte.db' then
  begin
    Caption :='Consignataire : Quantité Plafond par article';
    SourceInvent.DataSet:= DataTiers.PlafQteByCli;
    DataTiers.PlafQteByCli.Open;
    DataTiers.PlafQte.Open;
  end;
  if ndf='QteInven.db' then
  begin
    Caption :='Consignataire : Quantité par article pendant inventaire';
    SourceInvent.DataSet:= DataTiers.QteInvenByCli;
    DataTiers.QteInvenByCli.Open;
    DataTiers.QteInven.Open;
  end;
  ShowModal;
end;

procedure TFLstQtInv.SpeedButton1Click(Sender: TObject);
begin
  if ndf2='PlafQte.db'  then
  try
    Application.CreateForm(TFPlafQte, FPlafQte);
    FPlafQte.Asehoy(True);
  finally
   FPlafQte.Free;
  end;

  if ndf2='QteInven.db'  then
  try
    Application.CreateForm(TFQteInven, FQteInven);
    FQteInven.Asehoy(True);
  finally
    FQteInven.Free;
  end;

  if (ndf2='CompoCli.db')or(ndf2='CompoCli.db')  then
  try
    Application.CreateForm(TFQteInven, FQteInven);
    FQteInven.Asehoy(True);
  finally
    FQteInven.Free;
  end;
end;

procedure TFLstQtInv.SpeedButton2Click(Sender: TObject);
begin
  if ndf2='PlafQte.db'  then
  try
    Application.CreateForm(TFPlafQte, FPlafQte);
    FPlafQte.Asehoy(false);
  finally
   FPlafQte.Free;
  end;
  if ndf2='QteInven.db'  then
  try
    Application.CreateForm(TFQteInven, FQteInven);
    FQteInven.Asehoy(false);
  finally
    FQteInven.Free;
  end;
  if (ndf2='CompoCli.db')or(ndf2='CompoCli.db')  then
  try
    Application.CreateForm(TFQteInven, FQteInven);
    FQteInven.Asehoy(false);
  finally
    FQteInven.Free;
  end;
end;

end.
