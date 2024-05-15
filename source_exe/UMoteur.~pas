unit UMoteur;

interface

uses
  SysUtils, Classes, DB;

type
  TMoteur = class(TDataModule)
    s_TVADescription: TDataSource;
    s_CodyTVA: TDataSource;
    s_TParametr: TDataSource;
    s_RubriqueTVA: TDataSource;
    sqParaDecl: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SuppEcriture(Journal:string);
  end;

var
  Moteur: TMoteur;

implementation

uses UPStocke, USQL, Daspecia;

{$R *.dfm}

procedure TMoteur.SuppEcriture(Journal:string);
begin
  PStockee.SuppEltJrn.close;
  PStockee.SuppEltJrn.Parameters[0].Value:=Journal;
  PStockee.SuppEltJrn.ExecSQL ;
  PStockee.SuppJournal.close;
  PStockee.SuppJournal.Parameters[0].Value:=Journal;
  PStockee.SuppJournal.ExecSQL;
end;

end.
