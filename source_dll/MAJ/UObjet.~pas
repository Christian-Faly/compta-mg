unit UObjet;

interface

uses
  ShareMem, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  DB, ADODB, DBTables,StdCtrls,ComCtrls,CheckLst;

type
  TUnEntree=record
    Ndf:string[20];
    Critere:string[20];
    Ndc:string[20];
    Valeur:string[50];
    Controle:string[20];
    Visible:Boolean;
    Recherche:Boolean;
    Egale:Integer;
  end;
  TEntree=array[0..30] of TUnEntree;
  TChamps = record
    ndc:string[20];
    Typ:string[20];
    taille:integer;
  end;
  TListChamps=array[1..300]of TChamps;

  TListeCheck=array[1..30]of TCheckBox ;
  TListeLabel =array[1..30]of TLabel ;
  TListeEdit =array[1..30] of  TEdit ;
  TListeCombo=array[1..20]of TComboBox;
  TArrayTabSheet=array[1..20]of TTabSheet;
  TArrayCheckListBox=array[1..20]of TCheckListBox;

  TDObjet = class(TDataModule)
    QListDonnee: TADOQuery;
    C_ListeDonnee: TADOConnection;
    T_MAJDonnee: TADOTable;
    T_Entree1: TADOTable;
    T_Entree2: TADOTable;
    C_Societe: TADOConnection;
    TTempon: TADOTable;
    TRechChamp: TADOTable;
    TListeDonnee: TADOTable;
    TableList: TADOTable;
    MaitreList: TADOTable;
    Q_DonneeListe: TADOQuery;
    T_DonneeListe: TADOTable;
    TTemponSTRING1: TWideStringField;
    TTemponSTRING2: TWideStringField;
    TTemponSTRING3: TWideStringField;
    TTemponREAL1: TFloatField;
    TTemponREAL2: TFloatField;
    TTemponDATE1: TDateTimeField;
    TTemponDATE2: TDateTimeField;
    TTemponSTRING4: TWideStringField;
    TTemponBOOLEAN1: TBooleanField;
    TTemponBOOLEAN2: TBooleanField;
    Q_ListeDonnee2: TADOQuery;
    Maitre1: TADOQuery;
    Maitre2: TADOQuery;
    Table1: TADOTable;
    CocherCritere: TADOQuery;
    Q_Critere: TADOQuery;
    Q_TypCritere: TADOQuery;
    Q_RechercheTable: TADOQuery;
    Q_Selection: TADOQuery;
    Q_TableMaitre: TADOQuery;
    T_TableMaitre: TADOTable;
    Q_TableDetail: TADOQuery;
    T_TableDetail: TADOTable;
    Q_CritereTable: TADOQuery;
    T_ListeTable: TADOTable;
    Q_ListeTable: TADOQuery;
    Q_CritereTypeTable: TADOQuery;
    Q_CritereType: TADOQuery;
    T_CritereType: TADOTable;
    qDictionnaire: TADOQuery;
    Parametre: TADOTable;
    ADOQuery1: TADOQuery;
    TTemponN: TAutoIncField;
    qDictionnaireMalagasy: TWideStringField;
    qDictionnaireFrancais: TWideStringField;
    qDictionnaireAnglais: TWideStringField;
    Detail1: TADOQuery;
    Detail2: TADOQuery;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure ChangeConnection(const odbc, chemin:string);
    procedure ChangerDossierBase(base:string);
    function Traduire(Code:string):string;
  end;

const MdpProg = 'Ma elle';
      UtiProg = 'Pgm_eur';
var
  DObjet: TDObjet;
  Entree,EntreeMaitre1,EntreeMaitre2,EntreeDetail1,EntreeDetail2:TEntree;

procedure CreerDObjet;
procedure VonoyDObjet;
procedure AjouterEntrerCommande(CodeUt,commande:string);export;

implementation

uses Dialogs, TypeElmt;
{$R *.DFM}

procedure CreerDObjet;
begin
  Application.CreateForm(TDObjet, DObjet);
end;

procedure VonoyDObjet;
begin
  DObjet.Free;
end;

procedure AjouterEntrerCommande(CodeUt,commande:string);
begin
end;

procedure TDObjet.ChangeConnection(const odbc, chemin:string);
var ConnecStr:string;
begin
  if chemin='' then
    ConnecStr:='Provider=MSDASQL.1;Persist Security Info=False;Data Source='+
              odbc
  else
    ConnecStr:='Provider=MSDASQL.1;Persist Security Info=False;Data Source='+
                odbc+';DBQ='+Chemin+
               ';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;"';
  C_ListeDonnee.close;
  C_ListeDonnee.connectionString:=ConnecStr;
  C_ListeDonnee.Open;
end;

function TDObjet.Traduire(Code:string):string;
begin
  Parametre.Open;
  qDictionnaire.Close;
  qDictionnaire.parameters[0].Value :=Code;
  qDictionnaire.Open;
  if qDictionnaire.RecordCount >0 then
    Result:=qDictionnaire.FieldValues[Parametre.FieldValues['Langue']]
  else
    Result:=Code;
end;

procedure TDObjet.ChangerDossierBase(base:string);
begin
  //Numadres.DatabaseName:=base+Copy(Numadres.DatabaseName,length(base),length(Numadres.DatabaseName));
end;

end.
