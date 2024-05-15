unit UdaConsolide;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDaConsolide = class(TDataModule)
    ViderPrepCons: TADOQuery;
    LstAgence: TADOQuery;
    LstAgenceagence: TWideStringField;
    LstAgenceChemin: TWideStringField;
    T_PrePCons: TADOTable;
    T_PrePConsCOMPTE: TWideStringField;
    T_PrePConsDEBIT: TFloatField;
    T_PrePConsCREDIT: TFloatField;
    T_PrePConsDEBITAV: TFloatField;
    T_PrePConsCREDITAV: TFloatField;
    T_PrePConsDEBITPER: TFloatField;
    T_PrePConsCREDITPER: TFloatField;
    T_PrePConsAUTRE: TWideStringField;
    T_PrePConsINTITUL: TWideStringField;
    RecupPrepCons: TADOTable;
    RecupPrepConsCOMPTE: TWideStringField;
    RecupPrepConsDEBIT: TFloatField;
    RecupPrepConsCREDIT: TFloatField;
    RecupPrepConsDEBITAV: TFloatField;
    RecupPrepConsCREDITAV: TFloatField;
    RecupPrepConsDEBITPER: TFloatField;
    RecupPrepConsCREDITPER: TFloatField;
    RecupPrepConsAUTRE: TWideStringField;
    RecupPrepConsINTITUL: TWideStringField;
    BalConsolide: TADOQuery;
    BalConsolideDebit1: TFloatField;
    BalConsolideCredit1: TFloatField;
    BalConsolideDebit2: TFloatField;
    BalConsolideCredit2: TFloatField;
    BalConsolideDebit3: TFloatField;
    BalConsolideCredit3: TFloatField;
    BalConsolideDebit4: TFloatField;
    BalConsolideCredit4: TFloatField;
    BalConsolideDebit5: TFloatField;
    BalConsolideCredit5: TFloatField;
    BalConsolideDebit6: TFloatField;
    BalConsolideCredit6: TFloatField;
    BalConsolideTotDebit: TFloatField;
    BalConsolideTotCredit: TFloatField;
    BalConsolideCompteD: TStringField;
    BalConsolideCompte: TStringField;
    BalConsolideStTotCred: TFloatField;
    BalConsolideStTotDeb: TFloatField;
    q_balance_conso_periode: TADOQuery;
    q_balance_conso_periodecompte_auxi: TWideStringField;
    q_balance_conso_periodedebit: TFloatField;
    q_balance_conso_periodecredit: TFloatField;
    q_balance_conso_periodedebit_210: TFloatField;
    q_balance_conso_periodedebit_311: TFloatField;
    q_balance_conso_periodecredit_210: TFloatField;
    q_balance_conso_periodecredit_311: TFloatField;
    q_numcpt_conso: TADOQuery;
    DataSource1: TDataSource;
    q_numcpt_consointitule: TWideStringField;
    q_Classe: TADOQuery;
    procedure BalConsolideCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreerBalanceConsolidee(Siege:string);

  end;

var
  DaConsolide: TDaConsolide;

implementation

uses UConnect, Daspecia, TypeElmt, USQL;

{$R *.dfm}

procedure TDaConsolide.CreerBalanceConsolidee(Siege:string);
begin
  LstAgence.Close;
  LstAgence.parameters[0].value:=Siege;
  LstAgence.Open;

  ViderPrepCons.ExecSQL;

  while not LstAgence.Eof do
  begin
    DaConnect.ChangeCheminConnection(daConnect.C_Temporaire,'',LstAgenceChemin.Value);
    T_PrePCons.insert;
    T_PrePConsCOMPTE.Value   :=RecupPrePConsCOMPTE.Value ;
    T_PrePConsDEBIT.Value    :=RecupPrePConsDEBIT.Value;
    T_PrePConsCREDIT.Value   :=RecupPrePConsCREDIT.Value;
    T_PrePConsDEBITAV.Value  :=RecupPrePConsDEBITAV.Value;
    T_PrePConsCREDITAV.Value :=RecupPrePConsCREDITAV.Value;
    T_PrePConsDEBITPER.Value :=RecupPrePConsDEBITPER.Value;
    T_PrePConsCREDITPER.Value:=RecupPrePConsCREDITPER.Value;
    T_PrePConsAUTRE.Value    :=LstAgenceAgence.Value;
    T_PrePConsINTITUL.Value  :=RecupPrePConsINTITUL.Value;
    T_PrePCons.Post;

    LstAgence.Next;
  end;
end;

procedure TDaConsolide.BalConsolideCalcFields(DataSet: TDataSet);
var
    auxi:string;
    i:integer;
begin
  for i:=0 to BalConsolide.Fields.Count-1 do
  begin
    if i=0 then
    begin
      BalConsolidedebit1.Value:=BalConsolide.Fields[0].Value;
      BalConsolideCredit1.Value:=BalConsolide.Fields[1].Value;
    end;
    if i=1 then
    begin
      BalConsolidedebit2.Value:=BalConsolide.Fields[2].Value;
      BalConsolideCredit2.Value:=BalConsolide.Fields[3].Value;
    end;
    if i=2 then
    begin
      BalConsolidedebit3.Value:=BalConsolide.Fields[4].Value;
      BalConsolideCredit3.Value:=BalConsolide.Fields[5].Value;
    end;
    if i=3 then
    begin
      BalConsolidedebit4.Value:=BalConsolide.Fields[6].Value;
      BalConsolideCredit4.Value:=BalConsolide.Fields[7].Value;
    end;
    if i=4 then
    begin
      BalConsolidedebit5.Value:=BalConsolide.Fields[8].Value;
      BalConsolideCredit5.Value:=BalConsolide.Fields[9].Value;
    end;
  end;

  BalConsolideTotDebit.Value :=BalConsolidedebit1.Value+
                               BalConsolidedebit2.Value+
                               BalConsolidedebit3.Value+
                               BalConsolidedebit4.Value+
                               BalConsolidedebit5.Value;

  BalConsolideTotCredit.Value:=BalConsolideCredit1.Value+
                               BalConsolideCredit2.Value+
                               BalConsolideCredit3.Value+
                               BalConsolideCredit4.Value+
                               BalConsolideCredit5.Value;

  auxi:=EnleveBlancDroite(special.InAuxiliaire(BalConsolideCompteD.Value));
  if (length(auxi)>0) then
  begin
    while length(auxi)<8 do auxi:=auxi+'0';
      DaSql.QConsolidCompte.Value:=auxi;
  end
  else
    DaSql.QConsolidCompte.Value:=EnleveBlancDroite(BalConsolideCompteD.Value);

  DaSql.SelectParam('CONSOLID','NONCOMPENS');
  if DaSql.DansParam(DaSql.Qconsolidcompte.Value)then
  begin
  end;

  DaSql.SelectParam('CONSOLID','NC_COMSLDC');
  if DaSql.DansParam(BalConsolidecompte.Value)then
  begin
{    if totdebit>totCredit then
    begin
      totdebit:= totdebit - totcredit;
      totcredit:=0;
    end
    else
    begin
      totcredit:=totcredit - totdebit;
      totDebit:=0;
    end;
}  end;

  DaSql.SelectParam('CONSOLID','STRICT DEB');
  if DaSql.DansParam(BalConsolideCompte.Value) then
  begin
  end;

  DaSql.SelectParam('CONSOLID','STRICT CRE');
  if DaSql.DansParam(BalConsolideCompte.Value) then
  begin
  end;

  DaSql.SelectParam('CONSOLID','DEP SLD CO');

  if DaSql.DansParam(BalConsolideCompte.Value) then
  begin
  end;
end;

end.


