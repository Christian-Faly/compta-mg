unit DaAnalyt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TAnalytiq = class(TDataModule)
    PostAnal: TTable;
    PostAnalNumero: TStringField;
    PostAnalIntitule: TStringField;
    PostAnalCodelieu: TStringField;
    PostAnalNivAnal: TStringField;
    PostAnalPlanAnal: TStringField;
    PostAnalTyp: TStringField;
    Produit: TTable;
    ProduitCodeProduit: TStringField;
    ProduitProduit: TStringField;
    ProduitUnite: TStringField;
    Tempon: TQuery;
    TemponString1: TStringField;
    TemponString2: TStringField;
    TemponReal1: TFloatField;
    TemponReal2: TFloatField;
    TemponBoolean1: TBooleanField;
    TemponBoolean2: TBooleanField;
    Directio: TTable;
    DirectioNumero: TStringField;
    DirectioIntitule: TStringField;
    DirectioCodelieu: TStringField;
    PostAnalDirection: TStringField;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Analytiq: TAnalytiq;

procedure  CreerDataAlytiq;
procedure  VonoyDataAlytiq;

implementation

{$R *.DFM}

procedure  CreerDataAlytiq;
begin
  Analytiq:=TAnalytiq.Create(Application);
end;
procedure  VonoyDataAlytiq;
begin
  Analytiq.Free;
end;


end.
