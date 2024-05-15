unit InitCharge;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, Grids, DBGrids;

type
  TFInitCha = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditNUMERO: TDBEdit;
    Label2: TLabel;
    EditNUMERO_: TDBEdit;
    Label3: TLabel;
    EditNUMERO_2: TDBEdit;
    Label4: TLabel;
    EditNUMERO_3: TDBEdit;
    Label5: TLabel;
    EditLIBELLE: TDBEdit;
    Label6: TLabel;
    EditBRUT: TDBEdit;
    Label7: TLabel;
    EditAMPRO: TDBEdit;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
  private
    { private declarations }
  public
    { public declarations }
    procedure Asehoy(ndf:string);
  end;

var
  FInitCha: TFInitCha;

implementation

uses Daspecia;

{$R *.DFM}

procedure TFInitCha.Asehoy(ndf:string);
begin
  Special.TInitCha.Close;
  //Special.TInitCha.DataBaseName:=ExtractFilePath(ndf);
  Special.TInitCha.Open;
  DataSource1.DataSet := Special.TInitCha;
  ShowModal;
end;

end.