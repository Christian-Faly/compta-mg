unit DObjet;

interface

uses
  ShareMem, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, menus, ADODB;

type
  TDataCpte = class(TDataModule)
    Table1: TTable;
    Saisimp: TTable;
    Maitre: TTable;
    QListDonnee1: TQuery;
    QListDonnee: TADOQuery;
    C_ListeDonnee: TADOConnection;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    function  ChangeConnection(const chemin:string):string;
    procedure ChangerDossierBase(base:string);
  end;

const MdpProg = 'Ma elle';
      UtiProg = 'Pgm_eur';
var
  DataCpte: TDataCpte;

procedure CreerDataCpte;export;
procedure VonoyDataCpte;export;
procedure AjouterEntrerCommande(CodeUt,commande:string);export;

implementation

uses TypeElmt;

{$R *.DFM}

procedure CreerDataCpte;
begin
  Application.CreateForm(TDataCpte, DataCpte);
end;

procedure VonoyDataCpte;
begin
  DataCpte.Free;
end;

procedure AjouterEntrerCommande(CodeUt,commande:string);
begin
end;

function TDataCpte.ChangeConnection(const chemin:string):string;
var ConnecStr:string;
begin
  ConnecStr:='Provider=MSDASQL.1;';
  ConnecStr:=ConnecStr+'Persist Security Info=False;';
  ConnecStr:=ConnecStr+'Data Source='+chemin;
end;

procedure TDataCpte.ChangerDossierBase(base:string);
begin
  //Numadres.DatabaseName:=base+Copy(Numadres.DatabaseName,length(base),length(Numadres.DatabaseName));
end;

end.
