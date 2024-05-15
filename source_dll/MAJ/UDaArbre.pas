unit UDaArbre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db,  ADODB,  SqlExpr,ComCtrls;

type
  TDaArbre = class(TDataModule)
    C_Arbre: TADOConnection;
    Q_Recherche: TADOQuery;
    Q_RechercheNumero: TWideStringField;
    Q_RechercheDescription: TWideStringField;
    Q_RecherchePere: TWideStringField;
    qArbre: TADOQuery;
    qMAJArbre: TADOQuery;
    qMAJArbreDescription: TWideStringField;
    qMAJArbrePere: TWideStringField;
    sqMAJArbre: TDataSource;
    qNiveauArbre: TADOQuery;
    qNiveauArbreDescription: TWideStringField;
    sqNiveauArbre: TDataSource;
    qMAJArbreNumero: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Classement:string;
    first:boolean;
    procedure ChangeConnection(const chemin:string);
  end;

var
  DaArbre: TDaArbre;
  Mody:word;

implementation

{$R *.dfm}

procedure TDaArbre.ChangeConnection(const chemin:string);
var ConnecStr:string;
begin
  ConnecStr:='Provider=MSDASQL.1;';
  ConnecStr:=ConnecStr + 'Persist Security Info=False;';
  ConnecStr:=ConnecStr + 'Data Source='+Chemin;
  C_Arbre.close;
  C_Arbre.connectionString:=ConnecStr;
  C_Arbre.Open;
end;

end.
