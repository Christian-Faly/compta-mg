unit DaDeclVao_U;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs;

type
  TDaDeclVao = class(TDataModule)
    s_caneva_dcomm: TDataSource;
    caneva_dcomm: TADOTable;
    caneva_dcommcode: TWideStringField;
    caneva_dcommdescription: TWideStringField;
    s_tva_excel: TDataSource;
    s_tva_compte: TDataSource;
    tva_excel: TADOQuery;
    tva_excelnum_ligne: TIntegerField;
    tva_excellibelles: TWideStringField;
    tva_exceltypa: TWideStringField;
    tva_excelniveau_calc: TSmallintField;
    q_Montant_tva_compte: TADOQuery;
    q_Montant_tva_comptenum_ligne: TIntegerField;
    q_TVAexcel_NumLigne: TADOQuery;
    q_TVAexcel_NumLignelibelles: TWideStringField;
    q_TVAexcel_NumLignecompte: TWideStringField;
    q_TVAexcel_NumLigneligne: TWideStringField;
    q_TVAexcel_NumLignetypa: TWideStringField;
    q_TVAexcel_NumLigneancien_num: TFloatField;
    q_TVAexcel_NumLignenum_ligne: TIntegerField;
    q_TVAexcel_NumLigneniveau_calc: TSmallintField;
    sq_TVAexcel_NumLigne: TDataSource;
    q_tva_montant: TADOQuery;
    q_tva_montantnum_ligne: TIntegerField;
    q_tva_montantperiode_de: TWideStringField;
    q_tva_montantperiode_a: TWideStringField;
    q_tva_montant_periode: TADOQuery;
    q_tva_montant_periodenum_ligne: TIntegerField;
    q_tva_detail_compte: TADOQuery;
    q_tva_detail_comptebdd: TWideStringField;
    q_tva_detail_comptedaty: TDateField;
    q_tva_detail_comptejournal: TWideStringField;
    q_tva_detail_comptecompte: TWideStringField;
    q_tva_detail_comptenumfact: TWideStringField;
    q_tva_detail_comptelibelle: TWideStringField;
    sq_tva_detail_compte: TDataSource;
    s_tva_condition: TDataSource;
    tva_compte: TADOQuery;
    tva_compterang: TSmallintField;
    tva_comptenum_ligne: TSmallintField;
    tva_comptetaxe: TWideStringField;
    tva_comptesigne: TWideStringField;
    tva_comptecompte_lign: TWideStringField;
    tva_compteIntitule: TStringField;
    tva_comptetypa: TStringField;
    tva_comptedescription: TStringField;
    q_decl_synthetic: TADOQuery;
    q_decl_synth_detail: TADOQuery;
    q_decl_syntheticperiode: TWideStringField;
    q_decl_syntheticjournal: TWideStringField;
    q_decl_syntheticdescription: TWideStringField;
    q_decl_syntheticmode_paiement: TWideStringField;
    q_decl_synthetictiers: TWideStringField;
    q_decl_syntheticprovince: TWideStringField;
    q_decl_syntheticregion: TWideStringField;
    q_decl_syntheticlieu: TWideStringField;
    q_decl_syntheticadresse: TWideStringField;
    sq_decl_synthetic: TDataSource;
    sq_decl_synth_detail: TDataSource;
    q_decl_synth_detailjournal: TWideStringField;
    q_decl_synth_detaillibelle: TWideStringField;
    q_decl_synth_detailnumfact: TWideStringField;
    tout_tva_excel: TADOTable;
    q_ListeTiers: TADOQuery;
    sq_ListeTiers: TDataSource;
    q_ListeTiersnum_ligne: TSmallintField;
    q_ListeTierslibelles: TWideStringField;
    q_ListeTierscompte: TWideStringField;
    q_ListeTiersintitule: TWideStringField;
    q_ListeTiersadresse: TWideStringField;
    q_AnnexeTVA: TADOQuery;
    sq_AnnexeTVA: TDataSource;
    q_AnnexeTVAc_ou_d: TWideStringField;
    q_AnnexeTVAe_ou_l: TWideStringField;
    q_AnnexeTVAn_i_f: TWideStringField;
    q_AnnexeTVAintitule: TWideStringField;
    q_AnnexeTVAstat: TWideStringField;
    q_AnnexeTVAadresse: TWideStringField;
    q_AnnexeTVAnumfact: TWideStringField;
    q_AnnexeTVAdate_fact: TDateField;
    q_AnnexeTVAnature: TWideStringField;
    q_AnnexeTVAlibelle: TWideStringField;
    q_AnnexeTVAdate_paiement: TDateField;
    q_AnnexeTVAmois: TWideStringField;
    q_AnnexeTVAannee: TWideStringField;
    q_AnnexeTVAcompte_lign: TWideStringField;
    q_AnnexeTVAcompte: TWideStringField;
    q_AnnexeTVAste: TWideStringField;
    q_AnnexeTVAjournal: TWideStringField;
    q_AnnexeTVAnum_ligne: TSmallintField;
    q_AnnexeTVAlibelles: TWideStringField;
    tva_exceltitre: TWideStringField;
    sq_tva_montant: TDataSource;
    tva_comptedesc_ligne: TStringField;
    tva_condition: TADOQuery;
    tva_conditionnum_ligne: TFloatField;
    tva_conditionoperande1: TIntegerField;
    tva_conditioncomparaison: TWideStringField;
    tva_conditionoperande2: TIntegerField;
    tva_conditionresultat: TBooleanField;
    q_AnnexeTVAtitre: TWideStringField;
    q_AnnexeTVAcompte_tva: TWideStringField;
    q_x_dcomm: TADOQuery;
    s_q_x_dcomm: TDataSource;
    q_caneva_lst_compte: TADOQuery;
    sq_caneva_lst_compte: TDataSource;
    q_caneva_lst_comptecode_caneva: TWideStringField;
    q_caneva_lst_comptecompte_de: TWideStringField;
    q_caneva_lst_comptecompte_a: TWideStringField;
    q_caneva_lst_compteIntitule_de: TStringField;
    q_caneva_lst_compteIntitule_a: TStringField;
    q_caneva_lst_comptecontre_partie1: TWideStringField;
    q_caneva_lst_comptecontre_partie2: TWideStringField;
    q_decl_syntheticintitule: TWideStringField;
    q_decl_syntheticstatistique: TWideStringField;
    q_x_dcomm_export: TADOQuery;
    q_x_dcomm_exportrs: TWideStringField;
    q_caneva_lst_comptejournal: TWideStringField;
    q_x_dcomm_detail: TADOQuery;
    sq_x_dcomm_detail: TDataSource;
    q_x_dcomm_detailnumero: TIntegerField;
    q_x_dcomm_detailjournal: TWideStringField;
    q_x_dcomm_detaildebit: TWideStringField;
    q_x_dcomm_detailcompte: TWideStringField;
    q_x_dcomm_detailizy: TStringField;
    q_x_dcomm_detaillibelle: TWideStringField;
    q_x_dcomm_detailcontrepartie: TWideStringField;
    q_x_dcomm_detailnbcontre: TSmallintField;
    q_x_dcomm_detailqte: TFloatField;
    q_x_dcomm_detaildatefact: TDateField;
    q_x_dcomm_detailnumfact: TWideStringField;
    q_x_dcomm_detailcolis: TFloatField;
    q_x_dcomm_detailtypx: TWideStringField;
    q_x_dcomm_detailsigletaxe: TWideStringField;
    q_x_dcomm_plp: TADOQuery;
    q_ListeTiers_talo: TADOQuery;
    q_decl_syntheticNature: TStringField;
    q_decl_syntheticdaty: TDateField;
    q_decl_syntheticmontant: TLargeintField;
    q_decl_syntheticimpot: TLargeintField;
    q_decl_synth_detaildebit: TLargeintField;
    q_decl_synth_detailcredit: TLargeintField;
    q_x_dcomm_detailmontant: TLargeintField;
    q_tva_montantmontant: TLargeintField;
    q_tva_montanttamatave: TLargeintField;
    q_tva_montantdiego: TLargeintField;
    q_tva_montant_periodetamatave: TLargeintField;
    q_tva_montant_periodediego: TLargeintField;
    q_tva_montant_periodemontant: TLargeintField;
    tva_excelstamatave: TLargeintField;
    tva_excelsdiego: TLargeintField;
    tva_excelsmontant: TLargeintField;
    q_Montant_tva_comptesmontant: TLargeintField;
    q_tva_detail_comptedebit: TLargeintField;
    q_tva_detail_comptecredit: TLargeintField;
    q_ListeTiersmontant: TLargeintField;
    q_AnnexeTVAmontant: TLargeintField;
    q_AnnexeTVAtva: TLargeintField;
    q_x_dcomm_exportcompta: TLargeintField;
    q_ListeTiers_talonum_ligne: TSmallintField;
    q_ListeTiers_talolibelles: TWideStringField;
    q_ListeTiers_talocompte: TWideStringField;
    q_ListeTiers_talointitule: TWideStringField;
    q_ListeTiers_taloadresse: TWideStringField;
    q_ListeTiers_talomontant: TLargeintField;
    tva_excelttamatave: TFloatField;
    tva_exceltdiego: TFloatField;
    tva_exceltmontant: TFloatField;
    tva_comptetamatave: TFloatField;
    tva_comptediego: TFloatField;
    tva_compteMontant: TFloatField;
    tva_conditionmt_op1: TFloatField;
    tva_conditionmt_op2: TFloatField;
    procedure tva_compteCalcFields(DataSet: TDataSet);
    procedure s_tva_excelDataChange(Sender: TObject; Field: TField);
    procedure tva_condition1CalcFields(DataSet: TDataSet);
    procedure tva_compteAfterInsert(DataSet: TDataSet);
    procedure q_tva_montantAfterInsert(DataSet: TDataSet);
    procedure sq_decl_syntheticDataChange(Sender: TObject; Field: TField);
    procedure q_caneva_lst_compteAfterInsert(DataSet: TDataSet);
    procedure q_decl_syntheticCalcFields(DataSet: TDataSet);
    procedure q_x_dcommAfterOpen(DataSet: TDataSet);
    procedure q_x_dcomm_plpAfterOpen(DataSet: TDataSet);
    procedure q_x_dcomm_exportAfterOpen(DataSet: TDataSet);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  DaDeclVao: TDaDeclVao;

implementation

uses UConnect, Daspecia;

{$R *.dfm}

procedure TDaDeclVao.tva_compteCalcFields(DataSet: TDataSet);
begin
  if tva_exceltypa.Value ='Total' then
    tva_comptedescription.Value := tva_comptedesc_ligne.value
  else
    tva_comptedescription.Value := tva_compteIntitule.value
end;

procedure TDaDeclVao.s_tva_excelDataChange(Sender: TObject; Field: TField);
begin
  q_TVAexcel_NumLigne.Close;
  q_TVAexcel_NumLigne.Parameters[0].Value := tva_excelnum_ligne.Value ;
  q_TVAexcel_NumLigne.Open;

  tva_compte.Close;
  tva_compte.Parameters[0].Value := tva_excelnum_ligne.Value;
  tva_compte.Open;

  tva_condition.Close;
  tva_condition.Parameters[0].Value := tva_excelnum_ligne.Value ;
  tva_condition.Open;

  q_tva_montant.Close;
  q_tva_montant.Parameters[0].Value := tva_excelnum_ligne.Value ;
  q_tva_montant.Open;

  if q_tva_montant.Active then
    if tva_exceltypa.Value ='Total' then
      tva_comptecompte_lign.DisplayLabel := 'Ligne'
    else
      tva_comptecompte_lign.DisplayLabel := 'Compte'
end;

procedure TDaDeclVao.tva_condition1CalcFields(DataSet: TDataSet);
var resultat :boolean;
begin
  resultat := False;
  if tva_conditioncomparaison.Value ='>' then
  begin
    if tva_conditionmt_op1.Value > tva_conditionmt_op2.Value then
      resultat := true
  end;
  if tva_conditioncomparaison.Value ='>=' then
  begin
    if tva_conditionmt_op1.Value >= tva_conditionmt_op2.Value then
      resultat := true
  end;

  if tva_conditioncomparaison.Value ='<' then
  begin
    if tva_conditionmt_op1.Value < tva_conditionmt_op2.Value then
      resultat := true
  end;
  if tva_conditioncomparaison.Value ='<=' then
  begin
    if tva_conditionmt_op1.Value <= tva_conditionmt_op2.Value then
      resultat := true
  end;
  if tva_conditioncomparaison.Value ='=' then
  begin
    if tva_conditionmt_op1.Value = tva_conditionmt_op2.Value then
      resultat := true
  end;
  tva_conditionresultat.Value := resultat;
end;

procedure TDaDeclVao.tva_compteAfterInsert(DataSet: TDataSet);
begin
  tva_comptenum_ligne.Value := tva_compte.Parameters[0].Value;
end;

procedure TDaDeclVao.q_tva_montantAfterInsert(DataSet: TDataSet);
begin
  q_tva_montantnum_ligne.Value := q_tva_montant.Parameters[0].Value;
  q_tva_montantperiode_de.Value := q_tva_montant.Parameters[1].Value;
  q_tva_montantperiode_a.Value := q_tva_montant.Parameters[2].Value;
end;

procedure TDaDeclVao.sq_decl_syntheticDataChange(Sender: TObject;
  Field: TField);
begin
  q_decl_synth_detail.Close;
  q_decl_synth_detail.Parameters[0].Value := q_decl_syntheticjournal.Value;
  q_decl_synth_detail.Open;
end;

procedure TDaDeclVao.q_caneva_lst_compteAfterInsert(DataSet: TDataSet);
begin
  q_caneva_lst_comptecode_caneva.Value := q_caneva_lst_compte.Parameters[0].Value;
end;

procedure TDaDeclVao.q_decl_syntheticCalcFields(DataSet: TDataSet);
begin
  q_decl_syntheticNature.Value := 'PRESTATION';
end;

procedure TDaDeclVao.q_x_dcommAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  for i:= 0 to q_x_dcomm.FieldCount -1 do
  begin
    if q_x_dcomm.Fields[i].DisplayWidth  > 30  then
      q_x_dcomm.Fields[i].DisplayWidth:=30;
    try
      if q_x_dcomm.Fields[i].DataType  in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD] then
        q_x_dcomm.Fields[i].DisplayWidth := 20;
      if q_x_dcomm.Fields[i].DataType in [ftSmallint, ftInteger, ftWord] then
        (q_x_dcomm.Fields[i] as TIntegerField).displayFormat := '#,##0';
      if q_x_dcomm.Fields[i].DataType in [ftFloat, ftCurrency] then
        (q_x_dcomm.Fields[i] as TFloatField).displayFormat := '#,##0.##';
      if q_x_dcomm.Fields[i].DataType in [ftBCD] then
        (q_x_dcomm.Fields[i] as TBCDField).displayFormat := '#,##0.##';
    except
      case q_x_dcomm.Fields[i].DataType of
        ftSmallint:showMessage('ftSmallint');
        ftInteger :showMessage('ftInteger');
        ftWord    :showMessage('ftWord');
        ftFloat   :showMessage('ftFloat');
        ftCurrency:showMessage('ftCurrency');
        ftBCD     :showMessage('ftBCD');
      end;
    end;

  end;

end;

procedure TDaDeclVao.q_x_dcomm_plpAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  for i:= 0 to q_x_dcomm_plp.FieldCount -1 do
  begin
    if q_x_dcomm_plp.Fields[i].DisplayWidth  > 30  then
      q_x_dcomm_plp.Fields[i].DisplayWidth:=30;
    try
      if q_x_dcomm_plp.Fields[i].DataType  in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD] then
        q_x_dcomm_plp.Fields[i].DisplayWidth := 20;
      if q_x_dcomm_plp.Fields[i].DataType in [ftSmallint, ftInteger, ftWord] then
        (q_x_dcomm_plp.Fields[i] as TIntegerField).displayFormat := '#,##0';
      if q_x_dcomm_plp.Fields[i].DataType in [ftFloat, ftCurrency] then
        (q_x_dcomm_plp.Fields[i] as TFloatField).displayFormat := '#,##0.##';
      if q_x_dcomm_plp.Fields[i].DataType in [ftBCD] then
        (q_x_dcomm_plp.Fields[i] as TBCDField).displayFormat := '#,##0.##';
    except
      case q_x_dcomm.Fields[i].DataType of
        ftSmallint:showMessage('ftSmallint');
        ftInteger :showMessage('ftInteger');
        ftWord    :showMessage('ftWord');
        ftFloat   :showMessage('ftFloat');
        ftCurrency:showMessage('ftCurrency');
        ftBCD     :showMessage('ftBCD');
      end;
    end;
  end;
end;

procedure TDaDeclVao.q_x_dcomm_exportAfterOpen(DataSet: TDataSet);
var i:integer;
begin
  for i:= 0 to q_x_dcomm_export.FieldCount -1 do
  begin
    if q_x_dcomm_export.Fields[i].DisplayWidth  > 30  then
      q_x_dcomm_export.Fields[i].DisplayWidth:=30;
    if q_x_dcomm_export.Fields[i].DataType  in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD] then
      (q_x_dcomm_export.Fields[i] as TFloatField).displayFormat := '#,##0.##';
  end;
end;

end.


