unit UObjet;

interface

uses   Windows, ADODB, DBTables, Classes, menus,Forms, Dialogs, DB;

type
  TTabMenu = array[1..10]of TMainMenu;
  TDObjet = class(TDataModule)
    SourceSociete: TDataSource;
    C_Societe: TADOConnection;
    Societe: TADOQuery;
    SocieteCode: TWideStringField;
    SocieteRS: TWideStringField;
    SocieteChemin: TWideStringField;
    SocieteActivite: TWideStringField;
    SocieteCAP: TWideStringField;
    SocieteStatut: TWideStringField;
    SocieteStatis: TWideStringField;
    SocieteNIF: TWideStringField;
    SocieteATP: TWideStringField;
    SocieteDtATP: TDateTimeField;
    SocieteQuit: TWideStringField;
    SocieteDtQuit: TDateTimeField;
    SocieteRegistre: TWideStringField;
    SocieteCompteBQ: TWideStringField;
    SocieteCheminPrec: TWideStringField;
    SocieteExerDeb: TDateTimeField;
    SocieteExerFin: TDateTimeField;
    SocieteActivite2: TWideStringField;
    SocieteExistance: TWideStringField;
    SocieteLogiciel: TWideStringField;
    SelSociete: TADOQuery;
    SelSocieteCode: TWideStringField;
    SelSocieteRS: TWideStringField;
    SelSocieteChemin: TWideStringField;
    SelSocieteActivite: TWideStringField;
    SelSocieteCAP: TWideStringField;
    SelSocieteStatut: TWideStringField;
    SelSocieteStatis: TWideStringField;
    SelSocieteNIF: TWideStringField;
    SelSocieteATP: TWideStringField;
    SelSocieteDtATP: TDateTimeField;
    SelSocieteQuit: TWideStringField;
    SelSocieteDtQuit: TDateTimeField;
    SelSocieteRegistre: TWideStringField;
    SelSocieteCompteBQ: TWideStringField;
    SelSocieteCheminPrec: TWideStringField;
    SelSocieteExerDeb: TDateTimeField;
    SelSocieteExerFin: TDateTimeField;
    SelSocieteActivite2: TWideStringField;
    SelSocieteExistance: TWideStringField;
    SelSocieteLogiciel: TWideStringField;
    SelAdresse: TADOQuery;
    SelAdresseCodeSoc: TWideStringField;
    SelAdresseCP: TWideStringField;
    SelAdressePays: TWideStringField;
    SelAdresseBP: TWideStringField;
    SelAdresseTEL: TWideStringField;
    SelAdresseFax: TWideStringField;
    SelAdresseCptBQ: TWideStringField;
    SelAdresseNumCpt: TWideStringField;
    SelAdresseNII: TWideStringField;
    SelAdresseDEVISE: TWideStringField;
    SelAdresseTel2: TWideStringField;
    SelAdresseTel3: TWideStringField;
    SelAdresseEmail: TWideStringField;
    SelAdresseSiteWeb: TWideStringField;
    SelAdresseBanque: TWideStringField;
    SelAdresseLotOuRue: TWideStringField;
    SelAdresseQuartier: TWideStringField;
    SelInterloc: TADOQuery;
    SelInterlocCodeSoc: TWideStringField;
    SelInterlocInterloc: TWideStringField;
    SelInterlocFonction: TWideStringField;
    SelInterlocTel: TWideStringField;
    SelInterlocFax: TWideStringField;
    SelInterlocInfo: TWideStringField;
    SelInterlocNumCpt: TWideStringField;
    Lieu: TADOQuery;
    Statut: TADOQuery;
    StatutCode: TWideStringField;
    StatutLibelle: TWideStringField;
    SelSociete2: TADOQuery;
    SelSociete2Code: TWideStringField;
    SelSociete2RS: TWideStringField;
    SelSociete2Chemin: TWideStringField;
    SelSociete2Activite: TWideStringField;
    SelSociete2CAP: TWideStringField;
    SelSociete2Statut: TWideStringField;
    SelSociete2Statis: TWideStringField;
    SelSociete2NIF: TWideStringField;
    SelSociete2ATP: TWideStringField;
    SelSociete2DtATP: TDateTimeField;
    SelSociete2Quit: TWideStringField;
    SelSociete2DtQuit: TDateTimeField;
    SelSociete2Registre: TWideStringField;
    SelSociete2CompteBQ: TWideStringField;
    SelSociete2CheminPrec: TWideStringField;
    SelSociete2ExerDeb: TDateTimeField;
    SelSociete2ExerFin: TDateTimeField;
    SelSociete2Activite2: TWideStringField;
    SelSociete2Existance: TWideStringField;
    SelSociete2Logiciel: TWideStringField;
    LieuCode: TWideStringField;
    LieuLieu: TWideStringField;
    QEncoursSociete: TADOQuery;
    QEncoursSocieteCode: TWideStringField;
    QEncoursSocieteRS: TWideStringField;
    QEncoursSocieteChemin: TWideStringField;
    QEncoursSocieteActivite: TWideStringField;
    QEncoursSocieteCAP: TWideStringField;
    QEncoursSocieteStatut: TWideStringField;
    QEncoursSocieteStatis: TWideStringField;
    QEncoursSocieteNIF: TWideStringField;
    QEncoursSocieteATP: TWideStringField;
    QEncoursSocieteDtATP: TDateTimeField;
    QEncoursSocieteQuit: TWideStringField;
    QEncoursSocieteDtQuit: TDateTimeField;
    QEncoursSocieteRegistre: TWideStringField;
    QEncoursSocieteCompteBQ: TWideStringField;
    QEncoursSocieteCheminPrec: TWideStringField;
    QEncoursSocieteExerDeb: TDateTimeField;
    QEncoursSocieteExerFin: TDateTimeField;
    QEncoursSocieteActivite2: TWideStringField;
    QEncoursSocieteExistance: TWideStringField;
    QEncoursSocieteLogiciel: TWideStringField;
    Adresse: TADOTable;
    Tempon: TADOQuery;
    Repos: TADOTable;
    SocieteFiltre: TWideStringField;
    SocieteTypeBD: TWideStringField;
    SocieteMonnaie: TWideStringField;
    QLieu: TADOQuery;
    QLieulieu: TWideStringField;
    t_Consolide: TADOTable;
    t_Societe: TADOTable;
    s_t_Societe: TDataSource;
    s_t_Consolide: TDataSource;
    t_SocieteCode: TWideStringField;
    t_SocieteRS: TWideStringField;
    t_SocieteChemin: TWideStringField;
    SocieteSiege: TSmallintField;
    SocieteEnCours: TSmallintField;
    SocieteTransferer: TSmallintField;
    SelSocieteSiege: TSmallintField;
    SelSocieteEnCours: TSmallintField;
    SelSocieteTransferer: TSmallintField;
    SelSociete2Siege: TSmallintField;
    SelSociete2Transferer: TSmallintField;
    SelSociete2EnCours: TSmallintField;
    QEncoursSocieteSiege: TSmallintField;
    QEncoursSocieteTransferer: TSmallintField;
    QEncoursSocieteEnCours: TSmallintField;
    s_Statut: TDataSource;
    s_SelAdresse: TDataSource;
    s_SelInterloc: TDataSource;
    s_Tempon: TDataSource;
    MAJ_Encours: TADOQuery;
    q_Societe: TADOQuery;
    q_SocieteCode: TWideStringField;
    q_SocieteRS: TWideStringField;
    sq_Societe: TDataSource;
    t_ConsolideSiege: TWideStringField;
    t_ConsolideAgence: TWideStringField;
    TemponSTRING1: TWideStringField;
    TemponSTRING2: TWideStringField;
    TemponSTRING3: TWideStringField;
    TemponREAL1: TFloatField;
    TemponREAL2: TFloatField;
    TemponBOOLEAN1: TSmallintField;
    TemponBOOLEAN2: TSmallintField;
    TemponDATE1: TDateTimeField;
    TemponDATE2: TDateTimeField;
    TemponSTRING4: TWideStringField;
    Operation: TADOQuery;
    procedure SocieteAfterInsert(DataSet: TDataSet);
    procedure SelAdresseAfterInsert(DataSet: TDataSet);
    procedure SelInterlocAfterInsert(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure ChangerDossierBase(base:string);
    function  ChangeConnection(const chemin:string):string;
    procedure ValeurParDefaut(DataSet:TDataSet);
  end;

const MdpProg = 'Ma elle';
      UtiProg = 'Pgm_eur';
var
  DObjet: TDObjet;

procedure CreerDObjet;export;
procedure VonoyDObjet;export;

implementation

uses TypeElmt;

{$R *.DFM}

procedure CreerDObjet;
begin
  Application.CreateForm(TDObjet, DObjet);
end;

procedure VonoyDObjet;
begin
  DObjet.Free;
end;

procedure TDObjet.ValeurParDefaut(DataSet:TDataSet);
var i : integer ;
begin
  Assert ( Dataset is TAdoTable );
  for i := 0 to Dataset.Fields.Count - 1 do
  begin
    if Dataset.Fields[i].IsNull then
    begin
      case Dataset.Fields[i].DataType of
        ftString,ftWideString,ftMemo : Dataset.Fields[i].Value := ' ';
        ftSmallint,ftInteger,ftWord,ftFloat,ftCurrency,ftBCD,
        ftDate,ftTime,ftDateTime,ftBytes,ftVarBytes : Dataset.Fields[i].Value := 0 ;
        ftBoolean : Dataset.Fields[i].Value := false ;
        else
          Assert( false, Dataset.Fields[i].FieldName+' type ?');
      end; // case
    end ;
  end; // for
end;



function TDObjet.ChangeConnection(const chemin:string):string;
var ConnecStr:string;
begin
  ConnecStr:='Provider=MSDASQL.1;';
  ConnecStr:=ConnecStr+'Persist Security Info=False;';
  ConnecStr:=ConnecStr+'Data Source='+chemin;
end;




procedure TDObjet.ChangerDossierBase(base:string);
begin

end;

procedure TDObjet.SocieteAfterInsert(DataSet: TDataSet);
begin
  //ValeurParDefaut(DataSet);
  SocieteTypeBD.Value := 'Access';
  SocieteMonnaie.Value := 'Ariary';
  SocieteLogiciel.Value := Societe.Parameters[0].Value;
end;

procedure TDObjet.SelAdresseAfterInsert(DataSet: TDataSet);
begin
  ValeurParDefaut(DataSet);
  SelAdresseCodeSoc.Value := SelAdresse.Parameters[0].Value;
end;

procedure TDObjet.SelInterlocAfterInsert(DataSet: TDataSet);
begin
  ValeurParDefaut(DataSet);
  SelInterLocCodeSoc.Value := SelInterLoc.Parameters[0].Value;
end;

end.
