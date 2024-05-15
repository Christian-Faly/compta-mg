unit UDaUtilisat;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDaUtilisat = class(TDataModule)
    CUtilisat: TADOConnection;
    tTEMPON: TADOTable;
    tTEMPONSTRING1: TWideStringField;
    tTEMPONSTRING2: TWideStringField;
    tTEMPONSTRING3: TWideStringField;
    tTEMPONREAL1: TFloatField;
    tTEMPONREAL2: TFloatField;
    tTEMPONDATE1: TDateTimeField;
    tTEMPONDATE2: TDateTimeField;
    tTEMPONSTRING4: TWideStringField;
    qAdministrateur: TADOQuery;
    ADOTable1: TADOTable;
    s_q_Acces: TDataSource;
    q_Utilisat_Code: TADOQuery;
    q_Utilisat_CodeCode: TWideStringField;
    q_Utilisat_CodeFonction: TWideStringField;
    t_Utilisat: TADOTable;
    st_Utilisat: TDataSource;
    t_Fonction: TADOTable;
    st_Fonction: TDataSource;
    q_Utilisat_CodeIdFonction: TIntegerField;
    t_FonctionId: TAutoIncField;
    t_FonctionDescription: TWideStringField;
    q_Fonction_Id: TADOQuery;
    q_Fonction_IdDescription: TWideStringField;
    q_Utilisateur_IdFonction: TADOQuery;
    q_Acces: TADOQuery;
    q_AccesCodeUt: TWideStringField;
    q_AccesCommande: TWideStringField;
    q_AccesIdFonction: TIntegerField;
    t_Acces: TADOTable;
    st_Acces: TDataSource;
    t_AccesCodeUt: TWideStringField;
    t_AccesCommande: TWideStringField;
    t_AccesLogiciel: TWideStringField;
    t_AccesLectureSeul: TBooleanField;
    t_AccesIdFonction: TIntegerField;
    tTEMPONboolean1: TStringField;
    tTEMPONboolean2: TStringField;
    q_Acceslogiciel: TWideStringField;
    q_Acceslectureseul: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DaUtilisat: TDaUtilisat;

implementation

{$R *.dfm}

end.
