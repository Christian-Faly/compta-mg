unit DaCommun;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB;

type
  TCommun = class(TDataModule)
    SourceSelSociete: TDataSource;
    Societe: TADOTable;
    Tempon: TADOTable;
    SelSociete1: TADOQuery;
    SelSociete1Code: TWideStringField;
    SelSociete1RS: TWideStringField;
    SelSociete1Chemin: TWideStringField;
    SelSociete1Activite: TWideStringField;
    SelSociete1CAP: TWideStringField;
    SelSociete1Statut: TWideStringField;
    SelSociete1Statis: TWideStringField;
    SelSociete1NIF: TWideStringField;
    SelSociete1ATP: TWideStringField;
    SelSociete1DtATP: TDateTimeField;
    SelSociete1Quit: TWideStringField;
    SelSociete1DtQuit: TDateTimeField;
    SelSociete1Registre: TWideStringField;
    SelSociete1CompteBQ: TWideStringField;
    SelSociete1Siege: TBooleanField;
    SelSociete1Transferer: TBooleanField;
    SelSociete1CheminPrec: TWideStringField;
    SelSociete1ExerDeb: TDateTimeField;
    SelSociete1ExerFin: TDateTimeField;
    SelSociete1EnCours: TBooleanField;
    SelSociete1Activite2: TWideStringField;
    SelSociete1Existance: TWideStringField;
    SelSociete1Logiciel: TWideStringField;
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
    SelSociete2Siege: TBooleanField;
    SelSociete2Transferer: TBooleanField;
    SelSociete2CheminPrec: TWideStringField;
    SelSociete2ExerDeb: TDateTimeField;
    SelSociete2ExerFin: TDateTimeField;
    SelSociete2EnCours: TBooleanField;
    SelSociete2Activite2: TWideStringField;
    SelSociete2Existance: TWideStringField;
    SelSociete2Logiciel: TWideStringField;
    Lieu: TADOTable;
    QAdresse: TADOQuery;
    QAdresseCP: TWideStringField;
    QAdresseLotOuRue: TWideStringField;
    QAdresseQuartier: TWideStringField;
    qSociete: TADOQuery;
    InfoSiege: TADOQuery;
    Adresse: TADOQuery;
    T_Adresse: TADOTable;
    Interloc: TADOQuery;
    Repos: TADOTable;
    LstFichier: TADOTable;
    LstFichierNdf: TWideStringField;
    LstFichierOrigine: TWideStringField;
    LstFichierDescriptio: TWideStringField;
    Consolide1: TADOTable;
    QSocieteConsolidee: TADOQuery;
    SelSociete: TADOQuery;
    SelSocieteCode: TWideStringField;
    SelSocieteRS: TWideStringField;
    SelSocieteChemin: TWideStringField;
    QAdresseBP: TWideStringField;
    SourceSociete1: TDataSource;
    Consolide: TADOQuery;
    SuppConsolide: TADOQuery;
    QLieu: TADOQuery;
    QLieuCode: TWideStringField;
    QLieuLieu: TWideStringField;
    TLieu: TADOTable;
    C_MultiSoc: TADOConnection;
    sq_Consolide: TDataSource;
    SourceSociete: TDataSource;
    t_Societe: TADOTable;
    q_Consolide: TADOQuery;
    sqSociete: TDataSource;
    q_ConsolideChemin: TWideStringField;
    s_Societe: TDataSource;
    QAdresseCodeSoc: TWideStringField;
    QAdressePays: TWideStringField;
    QAdresseTEL: TWideStringField;
    QAdresseFax: TWideStringField;
    QAdresseCptBQ: TWideStringField;
    QAdresseNumCpt: TWideStringField;
    QAdresseNII: TWideStringField;
    QAdresseDEVISE: TWideStringField;
    QAdresseTel2: TWideStringField;
    QAdresseTel3: TWideStringField;
    QAdresseEmail: TWideStringField;
    QAdresseSiteWeb: TWideStringField;
    QAdresseBanque: TWideStringField;
    LieuCode: TWideStringField;
    LieuLieu: TWideStringField;
    InfoSiegeSiege: TWideStringField;
    InfoSiegeAgence: TWideStringField;
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
    SocieteSiege: TSmallintField;
    SocieteTransferer: TSmallintField;
    SocieteCheminPrec: TWideStringField;
    SocieteExerDeb: TDateTimeField;
    SocieteExerFin: TDateTimeField;
    SocieteEnCours: TSmallintField;
    SocieteActivite2: TWideStringField;
    SocieteExistance: TWideStringField;
    SocieteLogiciel: TWideStringField;
    SocieteFiltre: TWideStringField;
    SocieteTypeBD: TWideStringField;
    SocieteMonnaie: TWideStringField;
    SocieteCloturee: TSmallintField;
    InterlocCodeSoc: TWideStringField;
    InterlocInterloc: TWideStringField;
    InterlocFonction: TWideStringField;
    InterlocTel: TWideStringField;
    InterlocFax: TWideStringField;
    InterlocInfo: TWideStringField;
    InterlocNumCpt: TWideStringField;
    ConsolideSiege: TWideStringField;
    ConsolideAgence: TWideStringField;
    ConsolideCode: TWideStringField;
    ConsolideRS: TWideStringField;
    ConsolideChemin: TWideStringField;
    ConsolideActivite: TWideStringField;
    ConsolideCAP: TWideStringField;
    ConsolideStatut: TWideStringField;
    ConsolideStatis: TWideStringField;
    ConsolideNIF: TWideStringField;
    ConsolideATP: TWideStringField;
    ConsolideDtATP: TDateTimeField;
    ConsolideQuit: TWideStringField;
    ConsolideDtQuit: TDateTimeField;
    ConsolideRegistre: TWideStringField;
    ConsolideCompteBQ: TWideStringField;
    ConsolideSiege_1: TSmallintField;
    ConsolideTransferer: TSmallintField;
    ConsolideCheminPrec: TWideStringField;
    ConsolideExerDeb: TDateTimeField;
    ConsolideExerFin: TDateTimeField;
    ConsolideEnCours: TSmallintField;
    ConsolideActivite2: TWideStringField;
    ConsolideExistance: TWideStringField;
    ConsolideLogiciel: TWideStringField;
    ConsolideFiltre: TWideStringField;
    ConsolideTypeBD: TWideStringField;
    ConsolideMonnaie: TWideStringField;
    ConsolideCloturee: TSmallintField;
    Consolide1Siege: TWideStringField;
    Consolide1Agence: TWideStringField;
    qSocieteCode: TWideStringField;
    qSocieteRS: TWideStringField;
    qSocieteChemin: TWideStringField;
    qSocieteActivite: TWideStringField;
    qSocieteCAP: TWideStringField;
    qSocieteStatut: TWideStringField;
    qSocieteStatis: TWideStringField;
    qSocieteNIF: TWideStringField;
    qSocieteATP: TWideStringField;
    qSocieteDtATP: TDateTimeField;
    qSocieteQuit: TWideStringField;
    qSocieteDtQuit: TDateTimeField;
    qSocieteRegistre: TWideStringField;
    qSocieteCompteBQ: TWideStringField;
    qSocieteSiege: TSmallintField;
    qSocieteTransferer: TSmallintField;
    qSocieteCheminPrec: TWideStringField;
    qSocieteExerDeb: TDateTimeField;
    qSocieteExerFin: TDateTimeField;
    qSocieteEnCours: TSmallintField;
    qSocieteActivite2: TWideStringField;
    qSocieteExistance: TWideStringField;
    qSocieteLogiciel: TWideStringField;
    qSocieteFiltre: TWideStringField;
    qSocieteTypeBD: TWideStringField;
    qSocieteMonnaie: TWideStringField;
    qSocieteCloturee: TSmallintField;
    QSocieteConsolideeSiege: TWideStringField;
    QSocieteConsolideeAgence: TWideStringField;
    QSocieteConsolideeCode: TWideStringField;
    QSocieteConsolideeRS: TWideStringField;
    QSocieteConsolideeChemin: TWideStringField;
    QSocieteConsolideeActivite: TWideStringField;
    QSocieteConsolideeCAP: TWideStringField;
    QSocieteConsolideeStatut: TWideStringField;
    QSocieteConsolideeStatis: TWideStringField;
    QSocieteConsolideeNIF: TWideStringField;
    QSocieteConsolideeATP: TWideStringField;
    QSocieteConsolideeDtATP: TDateTimeField;
    QSocieteConsolideeQuit: TWideStringField;
    QSocieteConsolideeDtQuit: TDateTimeField;
    QSocieteConsolideeRegistre: TWideStringField;
    QSocieteConsolideeCompteBQ: TWideStringField;
    QSocieteConsolideeSiege_1: TSmallintField;
    QSocieteConsolideeTransferer: TSmallintField;
    QSocieteConsolideeCheminPrec: TWideStringField;
    QSocieteConsolideeExerDeb: TDateTimeField;
    QSocieteConsolideeExerFin: TDateTimeField;
    QSocieteConsolideeEnCours: TSmallintField;
    QSocieteConsolideeActivite2: TWideStringField;
    QSocieteConsolideeExistance: TWideStringField;
    QSocieteConsolideeLogiciel: TWideStringField;
    QSocieteConsolideeFiltre: TWideStringField;
    QSocieteConsolideeTypeBD: TWideStringField;
    QSocieteConsolideeMonnaie: TWideStringField;
    QSocieteConsolideeCloturee: TSmallintField;
    QSocieteConsolideeCodeSoc: TWideStringField;
    QSocieteConsolideeCP: TWideStringField;
    QSocieteConsolideePays: TWideStringField;
    QSocieteConsolideeBP: TWideStringField;
    QSocieteConsolideeTEL: TWideStringField;
    QSocieteConsolideeFax: TWideStringField;
    QSocieteConsolideeCptBQ: TWideStringField;
    QSocieteConsolideeNumCpt: TWideStringField;
    QSocieteConsolideeNII: TWideStringField;
    QSocieteConsolideeDEVISE: TWideStringField;
    QSocieteConsolideeTel2: TWideStringField;
    QSocieteConsolideeTel3: TWideStringField;
    QSocieteConsolideeEmail: TWideStringField;
    QSocieteConsolideeSiteWeb: TWideStringField;
    QSocieteConsolideeBanque: TWideStringField;
    QSocieteConsolideeLotOuRue: TWideStringField;
    QSocieteConsolideeQuartier: TWideStringField;
    QSocieteConsolideeCode_1: TWideStringField;
    QSocieteConsolideeLieu: TWideStringField;
    AdresseCodeSoc: TWideStringField;
    AdresseCP: TWideStringField;
    AdressePays: TWideStringField;
    AdresseBP: TWideStringField;
    AdresseTEL: TWideStringField;
    AdresseFax: TWideStringField;
    AdresseCptBQ: TWideStringField;
    AdresseNumCpt: TWideStringField;
    AdresseNII: TWideStringField;
    AdresseDEVISE: TWideStringField;
    AdresseTel2: TWideStringField;
    AdresseTel3: TWideStringField;
    AdresseEmail: TWideStringField;
    AdresseSiteWeb: TWideStringField;
    AdresseBanque: TWideStringField;
    AdresseLotOuRue: TWideStringField;
    AdresseQuartier: TWideStringField;
    AdresseCode: TWideStringField;
    AdresseLieu: TWideStringField;
    QAdresseTotal: TStringField;
    SocieteDateTP: TStringField;
    SocieteDateQuit: TStringField;
    QSocieteConsolideeTotal: TStringField;
    procedure QAdresseCalcFields(DataSet: TDataSet);
    procedure AdresseCalcFields(DataSet: TDataSet);
    procedure SourceSociete1DataChange(Sender: TObject; Field: TField);
    procedure SocieteCalcFields(DataSet: TDataSet);
    procedure QSocieteConsolideeCalcFields(DataSet: TDataSet);
    procedure sqSocieteDataChange(Sender: TObject; Field: TField);
       {Pas de filtre vide}
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure OuvrirData;
    procedure CodeExercice(Code:string;var stExerN,stExerN_1:string);
    function OuvrirSociete(Encours:boolean;CSociete,ID,pwd,logiciel:string):boolean;
  end;

var
  Commun: TCommun;

implementation

uses  TypeElmt, ImporDoc;

{$R *.DFM}

function TCommun.OuvrirSociete(Encours:boolean;CSociete,ID,pwd,logiciel:string):boolean;
begin
  Commun.C_MultiSoc.Close;
  //Commun.C_MultiSoc.ConnectionString :='Provider=MSDASQL.1;Persist Security Info=False;User ID='+ID+';PassWord='+pwd+';Data Source=Multisoc;';
  Commun.C_MultiSoc.ConnectionString :='Provider=MSDASQL.1;Persist Security Info=False;Data Source=Multisoc;';
  Commun.C_MultiSoc.Open;
  Commun.qSociete.Close;
  Commun.qSociete.SQL.Clear;
  Commun.qSociete.SQL.Add('SELECT * from Societe');
  if Encours then
    Commun.qSociete.SQL.Add('WHERE (Encours=-1) and (Logiciel='''+logiciel+''')')
  else
    Commun.qSociete.SQL.Add('WHERE (Code='''+ CSociete+''')');
  Commun.qSociete.Open;

  if not Commun.qSociete.Eof then
  begin
    ChemMultiSoc:=Commun.qSocieteChemin.Value;
    odbcMultiSoc:=Commun.qSocieteRegistre.Value;

    Commun.Adresse.close;
    Commun.Adresse.parameters[0].Value:=commun.qSocieteCode.Value;
    Commun.Adresse.open;

    Commun.Interloc.close;
    Commun.Interloc.parameters[0].Value:=commun.qSocieteCode.Value;
    Commun.Interloc.open;

    Commun.q_Consolide.close;
    Commun.q_Consolide.parameters[0].Value:=commun.qSocieteCode.Value;
    Commun.q_Consolide.open;
  end;
  Result:=  not Commun.qSociete.Eof;
end;


procedure TCommun.OuvrirData;
begin
  Societe.open;
end;

procedure TCommun.CodeExercice(Code:string;var stExerN,stExerN_1:string);
var  YearDeb,YearFin, Month, Day: Word;
begin
  Commun.QSociete.close;
  Commun.QSociete.Parameters[0].value:=Code;
  Commun.QSociete.Open;
  DecodeDate(QSocieteExerFin.Value,YearDeb, Month, Day);
  DecodeDate(QSocieteExerDeb.Value,Yearfin, Month, Day);
  if YearDeb<>YearFin then
  begin
    stExerN:=inttostr(YearFin)+'-'+inttostr(YearDeb);
    stExerN_1:=inttostr(YearFin-1)+'-'+inttostr(YearDeb-1);
  end
  else
  begin
    stExerN:=inttostr(YearDeb);
    stExerN_1:=inttostr(YearDeb-1);
  end;
end;

procedure TCommun.QAdresseCalcFields(DataSet: TDataSet);
begin
  QLieu.Close;
  if QAdresseCP.Value>'' then
    QLieu.Parameters[0].Value:=QAdresseCP.Value
  else
    QLieu.Parameters[0].Value:='0';
  QLieu.Open;
  QAdresseTotal.Value:=EnleveBlancDroite(QAdresseLotOuRue.Value)+' '+
                       EnleveBlancDroite(QAdresseQuartier.Value) +' '+
                       ' BP '+EnleveBlancDroite(QAdresseBP.Value) +' '+
                       EnleveBlancDroite(QLieuLieu.Value) +' ('+
                       EnleveBlancDroite(QAdresseCP.Value)+')';
end;

procedure TCommun.AdresseCalcFields(DataSet: TDataSet);
begin
{  QLieu.Close;
  if QAdresseCP.Value>'' then
    QLieu.Parameters[0].Value:=QAdresseCP.Value
  else
    QLieu.Parameters[0].Value:='0';
  QLieu.Open;
}  QAdresseTotal.Value:=EnleveBlancDroite(AdresseLotOuRue.Value)+' '+
                      EnleveBlancDroite(AdresseQuartier.Value) +' '+
                      ' BP '+EnleveBlancDroite(AdresseBP.Value) +' '+
                      EnleveBlancDroite(AdresseLieu.Value) +' ('+
                      EnleveBlancDroite(AdresseCP.Value)+')';
end;

procedure TCommun.SourceSociete1DataChange(Sender: TObject; Field: TField);
begin
  if SourceSociete.DataSet.State <> dsBrowse then exit;
  Consolide.Close;
  Consolide.Parameters[0].value:=SelSociete1Code.Value;
  Consolide.Open;
end;

procedure TCommun.SocieteCalcFields(DataSet: TDataSet);
begin
  if SocieteATP.Value<>'' then
    SocieteDateTP.Value:=FormatDateTime('dd/mm/yyyy',SocieteDtATP.value)
   else
    SocieteDateTP.Value:='';
  if SocieteQuit.Value<>'' then
    SocieteDateQuit.Value:=FormatDateTime('dd/mm/yyyy',SocieteDtQuit.Value)
  else
    SocieteDateQuit.Value:='';
end;

procedure TCommun.QSocieteConsolideeCalcFields(DataSet: TDataSet);
begin
  Commun.QSocieteConsolideeTotal.value:=EnleveBlancDroite(Commun.QSocieteConsolideeLotOuRue.Value) +' '+
                    EnleveBlancDroite(Commun.QSocieteConsolideeQuartier.Value)+' '+
                    ' BP '+EnleveBlancDroite(Commun.QSocieteConsolideeBP.Value)+ ' '+
                    EnleveBlancDroite(Commun.QSocieteConsolideeLieu.Value)+' '+EnleveBlancDroite(Commun.QSocieteConsolideeCP.Value);
end;

procedure TCommun.sqSocieteDataChange(Sender: TObject; Field: TField);
begin
  if sqSociete.DataSet.State <> dsBrowse then exit;
  q_Consolide.Close;
  q_Consolide.Parameters[0].Value := qSocieteCode.Value ;
  q_Consolide.Open;
end;

end.
