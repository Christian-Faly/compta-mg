�
 TDASQL 06} TPF0TDASQLDASQLOldCreateOrder	OnCreateSpecialCreateLeft� Top%HeightwWidth4 
TBatchMove
BatchMove1ModebatCopyLeft�Top  TDataSourceSourceJournalLeft�Top  TDataSourceSourceAReglerLeft� Top  TDataSourceSourceEcritureLeft� Top�  TDataSourceSourceRegleLeftTop  TDataSourceSourceRElementLefttTop�  TDataSourceSourceSuiviLeftSTop   TDataSourceSourceSelEltJrnLeft.Top  TDataSourceSourceSelJournalLeft�Top  	TADOQuery	QJournaux
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Journauxwhere Code=:a Left�Topr TWideStringFieldQJournauxCode	FieldNameCode	FixedChar	  TWideStringFieldQJournauxIntitule	FieldNameIntitule	FixedChar	Size2  TSmallintFieldQJournauxTyp	FieldNameTyp  TWideStringFieldQJournauxCompte	FieldNameCompte	FixedChar	   	TADOQuery	CalculElt
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.StringsSelect * from NumCpt a,Journal b,eltJrn c,
Journaux dwhere  (a.NumCpt='402100')&and ((d.typ=4)or(b.periode<'1999/01'))and (a.NumCpt=c.Compte)and (b.Code=c.Journal)and (d.Code=b.CodeJrnx) Left�Top� TLargeintFieldCalculEltmontant	FieldNamemontantReadOnly	  TStringFieldCalculEltDebit	FieldNameDebitSize   	TADOQueryBalance
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
Parameters SQL.StringsSELECT compte_auxi AS compte,d  CASE WHEN SUM(prec_debit-prec_credit)>0 THEN SUM(prec_debit-prec_credit) ELSE 0 END AS prec_debit,f  CASE WHEN SUM(prec_debit-prec_credit)>0 THEN 0 ELSE -SUM(prec_debit-prec_credit) END AS prec_credit,  SUM(mvt_debit) AS mvt_debit, !  SUM(mvt_credit) AS mvt_credit, !  SUM(nouv_debit) AS nouv_debit, !  SUM(nouv_credit) AS nouv_credit  FROM (C-----------------------------------------------------------------  SELECT compte_auxi,compte, I   CASE WHEN SUM(mvt_prec)>0 THEN SUM(mvt_prec) ELSE 0 END AS prec_debit,L   CASE WHEN SUM(mvt_prec)<0 THEN -SUM(mvt_prec) ELSE 0 END AS prec_credit, J   SUM(CASE WHEN mvt_encours>0 THEN  mvt_encours ELSE 0 END) AS mvt_debit,L   SUM(CASE WHEN mvt_encours<0 THEN  -mvt_encours ELSE 0 END) AS mvt_credit,G   CASE WHEN SUM(tot_mvt)>0 THEN SUM(tot_mvt) ELSE 0 END AS nouv_debit,H   CASE WHEN SUM(tot_mvt)<0 THEN -SUM(tot_mvt) ELSE 0 END AS nouv_creditFROM(,  SELECT compte_auxi,compte,code_analytique,.    ------------------------------------------8    CASE WHEN codejrnx = 'AN' or periode<'2023/01' THEN C      CASE WHEN debit ='D' THEN  montant ELSE - montant END ELSE 0     END as mvt_prec,X    CASE WHEN (codejrnx <> 'AN') AND (periode>='2023/01') AND (periode<='2023/01') THEN D       CASE WHEN debit ='D' THEN  montant ELSE - montant END ELSE 0     END as mvt_encours,-    -----------------------------------------%    --CASE WHEN codejrnx = 'AN' THEN E    --  CASE WHEN debit ='D' THEN  montant ELSE - montant END ELSE 0     --END as mvt_prec,A    --CASE WHEN (codejrnx <> 'AN') AND (periode<='2023/01') THEN D    -- CASE WHEN debit ='D' THEN  montant ELSE - montant END ELSE 0     --END as mvt_encours,9    -----------------------------------------------------&    CASE WHEN periode<='2023/01' THEN Q      CASE WHEN debit ='D' THEN  montant ELSE - montant END ELSE 0 END as tot_mvt  FROM balance  ) as aGROUP BY compte_auxi,compte-----------------------------) AS bGROUP BY compte_auxi-------------------------ORDER BY compte_auxi, compte Left�Top�  TWideStringFieldBalancecompte	FieldNamecompteSize�   	TBCDFieldBalanceprec_debit	FieldName
prec_debitReadOnly	DisplayFormat#,##0	PrecisionSize   	TBCDFieldBalanceprec_credit	FieldNameprec_creditReadOnly	DisplayFormat#,##0	PrecisionSize   	TBCDFieldBalancemvt_debit	FieldName	mvt_debitReadOnly	DisplayFormat#,##0	PrecisionSize   	TBCDFieldBalancemvt_credit	FieldName
mvt_creditReadOnly	DisplayFormat#,##0	PrecisionSize   	TBCDFieldBalancenouv_debit	FieldName
nouv_debitReadOnly	DisplayFormat#,##0	PrecisionSize   	TBCDFieldBalancenouv_credit	FieldNamenouv_creditReadOnly	DisplayFormat#,##0	PrecisionSize    	TADOQueryARegler
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNamefDataTypeftStringSizeValue   SQL.Strings!select * from Journal a,eltJrn b *where (a.Code=b.Journal) and (b.compte=:f) LeftzTop  	TADOQuerySelBalanceC
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from balancecwhere NumCpt=:a Left$Topr TStringFieldSelBalanceCNumCpt	FieldNameNumCpt  TFloatFieldSelBalanceCSld1	FieldNameSld1  TFloatFieldSelBalanceCSld2	FieldNameSld2  TFloatFieldSelBalanceCSld3	FieldNameSld3  TFloatFieldSelBalanceCSld4	FieldNameSld4  TFloatFieldSelBalanceCSld5	FieldNameSld5  TFloatFieldSelBalanceCSld6	FieldNameSld6  TFloatFieldSelBalanceCSld7	FieldNameSld7  TFloatFieldSelBalanceCSld8	FieldNameSld8  TFloatFieldSelBalanceCSld9	FieldNameSld9  TFloatFieldSelBalanceCSld10	FieldNameSld10   	TADOQueryBilan
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamexDataType
ftSmallintSize�Value   SQL.Stringsselect * from Titre a,                    SousTitr b,                    Unioncp c,                    GroupCpt dwhere (a.Typa=:x)and"           (a.Numero=b.Titre) and "           (b.Numero=c.SSTitre)and           (c.Numero=d.Unioncp)*order by a.rang,b.rang, c.numero, d.numero Left'Top�  TIntegerFieldBilanNumero	FieldNameNumeroVisible  TStringFieldBilanIntitule	FieldNameIntituleVisibleSized  TFloatField
BilanTotal	FieldNameTotalVisible  TSmallintField	BilanTypa	FieldNameTypaVisible  TStringField	BilanRang	FieldNameRangVisibleSize
  TIntegerField
BilanTitre	FieldNameTitreVisible  TStringFieldBilanIntitule_1	FieldName
Intitule_1VisibleSized  TFloatFieldBilanTotal_1	FieldNameTotal_1Visible  TIntegerFieldBilanRubrique	FieldNameRubriqueVisible  TStringFieldBilanRang_1	FieldNameRang_1VisibleSize
  TIntegerFieldBilanNumero_2	FieldNameNumero_2Visible  TStringFieldBilanIntitule_2	FieldName
Intitule_2Sized  TIntegerFieldBilanSSTitre	FieldNameSSTitreVisible  TIntegerFieldBilanUnioncp	FieldNameUnioncp  TIntegerFieldBilanNumero_3	FieldNameNumero_3  TStringFieldBilanDebutCpt	FieldNameDebutCpt  TStringFieldBilanFinCompte	FieldName	FinCompte  TStringFieldBilanAmDebut	FieldNameAmDebut  TStringField
BilanAmFin	FieldNameAmFin  TFloatField	BilanBrut	FieldNameBrutVisible  TFloatField
BilanAmPro	FieldNameAmProVisible  TFloatFieldBilanNet	FieldNameNetVisible  TStringFieldBilanProDebut	FieldNameProDebut  TStringFieldBilanProFin	FieldNameProFin  TFloatFieldBilanSldInit	FieldNameSldInitVisible  TIntegerFieldBilanNumero_1	FieldNameNumero_1  TSmallintFieldBilanactifprod	FieldName	actifprodReadOnly	   	TADOQueryAmorti
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsAmortiCalcFieldsCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Stringsselect * from EltJrn !where (Compte>=:x)and(Compte<=:y)order by Compte Left+Top�  TStringFieldAmortiJournal	FieldNameJournalSize
  TStringFieldAmortiDebit	FieldNameDebitSize  TIntegerFieldAmortiNumero	FieldNameNumero  TStringFieldAmortiCompte	FieldNameCompte  TLargeintFieldAmortimontant	FieldNamemontant  TStringFieldAmortiLibelle	FieldNameLibelleSize<  TLargeintFieldAmortiAmDebit	FieldKindfkCalculated	FieldNameAmDebit
Calculated	  TLargeintFieldAmortiAmCredit	FieldKindfkCalculated	FieldNameAmCredit
Calculated	  TStringField	Amortiizy	FieldNameizySize   	TADOQuery	Provision
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsProvisionCalcFieldsCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Stringsselect * from EltJrn !where (Compte>=:x)and(Compte<=:y)order by Compte Left+Top< TStringFieldProvisionJournal	FieldNameJournalSize
  TStringFieldProvisionDebit	FieldNameDebitSize  TIntegerFieldProvisionNumero	FieldNameNumero  TStringFieldProvisionCompte	FieldNameCompte  TLargeintFieldProvisionmontant	FieldNamemontant  TStringFieldProvisionLibelle	FieldNameLibelleSize<  TLargeintFieldProvisionProDebit	FieldKindfkCalculated	FieldNameProDebit
Calculated	  TLargeintFieldProvisionProCredit	FieldKindfkCalculated	FieldName	ProCredit
Calculated	  TStringFieldProvisionizy	FieldNameizySize   	TADOQuery
SelJournal
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from Journal Left�Top TStringFieldSelJournalCode	FieldNameCodeSize
  TStringFieldSelJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldSelJournalJour	FieldNameJour  TStringFieldSelJournalCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldSelJournalTiers	FieldNameTiers  TStringFieldSelJournalNumCHQ	FieldNameNumCHQ  
TDateFieldSelJournalDateEsc	FieldNameDateEsc  TSmallintFieldSelJournalDeclarer	FieldNameDeclarer  TStringFieldSelJournaltransferer	FieldName
transfererSize   	TADOQueryRepQuery
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings<select * from Titre a,   SousTitr b,  UnionCp c,  GroupCpt dwhere (a.Typa=0)  and (a.Numero = b.Titre)  and (b.Numero = c.SSTitre)  and (c.Numero = d.unioncp)order by a.rang, b.rang  Left+Top TIntegerFieldRepQueryNumero	FieldNameNumero  TStringFieldRepQueryIntitule	FieldNameIntituleSized  TFloatFieldRepQueryTotal	FieldNameTotal  TSmallintFieldRepQueryTypa	FieldNameTypa  TStringFieldRepQueryRang	FieldNameRangSize
  TIntegerFieldRepQueryTitre	FieldNameTitre  TIntegerFieldRepQueryNumero_1	FieldNameNumero_1  TStringFieldRepQueryIntitule_1	FieldName
Intitule_1Sized  TFloatFieldRepQueryTotal_1	FieldNameTotal_1  TIntegerFieldRepQueryRubrique	FieldNameRubrique  TStringFieldRepQueryRang_1	FieldNameRang_1Size
  TIntegerFieldRepQueryNumero_2	FieldNameNumero_2  TStringFieldRepQueryIntitule_2	FieldName
Intitule_2Sized  TIntegerFieldRepQuerySSTitre	FieldNameSSTitre  TIntegerFieldRepQueryUnioncp	FieldNameUnioncp  TIntegerFieldRepQueryNumero_3	FieldNameNumero_3  TStringFieldRepQueryDebutCpt	FieldNameDebutCpt  TStringFieldRepQueryFinCompte	FieldName	FinCompte  TStringFieldRepQueryAmDebut	FieldNameAmDebut  TStringFieldRepQueryAmFin	FieldNameAmFin  TFloatFieldRepQueryBrut	FieldNameBrut  TFloatFieldRepQueryAmPro	FieldNameAmPro  TFloatFieldRepQueryNet	FieldNameNet  TStringFieldRepQueryProDebut	FieldNameProDebut  TStringFieldRepQueryProFin	FieldNameProFin  TFloatFieldRepQuerySldInit	FieldNameSldInit  TSmallintFieldRepQueryactifprod	FieldName	actifprodReadOnly	   	TADOQuery	RepQuery1
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from Titre a,                    SousTitr b,                     UnionCp c,                    GroupCpt dwhere (a.Typa=0)  and (a.Numero = b.Titre)  and (b.Numero = c.SSTitre)  and (c.Numero = d.Unioncp)order by a.rang, b.rang  Left�Top� TIntegerFieldRepQuery1Numero	FieldNameNumero  TStringFieldRepQuery1Intitule	FieldNameIntituleSized  TFloatFieldRepQuery1Total	FieldNameTotal  TSmallintFieldRepQuery1Typa	FieldNameTypa  TStringFieldRepQuery1Rang	FieldNameRangSize
  TIntegerFieldRepQuery1Titre	FieldNameTitre  TIntegerFieldRepQuery1Numero_1	FieldNameNumero_1  TStringFieldRepQuery1Intitule_1	FieldName
Intitule_1Sized  TFloatFieldRepQuery1Total_1	FieldNameTotal_1  TIntegerFieldRepQuery1Rubrique	FieldNameRubrique  TStringFieldRepQuery1Rang_1	FieldNameRang_1Size
  TIntegerFieldRepQuery1Numero_2	FieldNameNumero_2  TStringFieldRepQuery1Intitule_2	FieldName
Intitule_2Sized  TIntegerFieldRepQuery1SSTitre	FieldNameSSTitre  TIntegerFieldRepQuery1Unioncp	FieldNameUnioncp  TIntegerFieldRepQuery1Numero_3	FieldNameNumero_3  TStringFieldRepQuery1DebutCpt	FieldNameDebutCpt  TStringFieldRepQuery1FinCompte	FieldName	FinCompte  TStringFieldRepQuery1AmDebut	FieldNameAmDebut  TStringFieldRepQuery1AmFin	FieldNameAmFin  TFloatFieldRepQuery1Brut	FieldNameBrut  TFloatFieldRepQuery1AmPro	FieldNameAmPro  TFloatFieldRepQuery1Net	FieldNameNet  TStringFieldRepQuery1ProDebut	FieldNameProDebut  TStringFieldRepQuery1ProFin	FieldNameProFin  TFloatFieldRepQuery1SldInit	FieldNameSldInit  TSmallintFieldRepQuery1actifprod	FieldName	actifprodReadOnly	   	TADOQueryTaxable
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings!select * from Journal a, eltJrn bwhere (a.Code=b.Journal)(          and(a.Code=:x)and(b.compte=:y) LeftzTop TStringFieldTaxableCode	FieldNameCodeSize
  TStringFieldTaxablePeriode	FieldNamePeriodeSize
  TSmallintFieldTaxableJour	FieldNameJour  TStringFieldTaxableCodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldTaxableDateFact	FieldNameDateFact  TStringFieldTaxableNumFact	FieldNameNumFact  TStringFieldTaxableJournal	FieldNameJournalSize
  TStringFieldTaxableDebit	FieldNameDebitSize  TIntegerFieldTaxableNumero	FieldNameNumero  TStringFieldTaxablecompte	FieldNamecompte  TStringFieldTaxableLibelle	FieldNameLibelleSize<  TLargeintFieldTaxablemontant	FieldNamemontantReadOnly	  TStringFieldTaxabletransferer	FieldName
transfererReadOnly	Size  TStringField
Taxableizy	FieldNameizyReadOnly	Size   	TADOQueryDetTaxe
ConnectionDaConnect.C_Document
CursorTypectStaticOnCalcFieldsDetTaxeCalcFieldsCommandTimeout 
Parameters SQL.Stringsselect * from declare Left'Top�  TStringFieldDetTaxeCode	FieldNameCodeSize
  TCurrencyFieldDetTaxeMontant	FieldNameMontant  TStringFieldDetTaxeNumFact	FieldNameNumFact  TStringFieldDetTaxeLibelle	FieldNameLibelleSize<  TFloatField
DetTaxeQte	FieldNameQte  TStringFieldDetTaxeTiers	FieldNameTiers  TStringField
DetTaxeNIF	FieldKindfkLookup	FieldNameNIFLookupDataSetSpecial.TNumDiverLookupKeyFieldsNumCptLookupResultFieldNIF	KeyFieldsTiersLookup	  TStringFieldDetTaxeStatistique	FieldKindfkLookup	FieldNameStatistiqueLookupDataSetSpecial.TNumDiverLookupKeyFieldsNumCptLookupResultFieldStatistique	KeyFieldsTiersLookup	  TStringField
DetTaxeNom	FieldKindfkLookup	FieldNameNomLookupDataSetSpecial.TNumAdresLookupKeyFieldsNumCptLookupResultFieldNom	KeyFieldsTiersLookup	  TStringFieldDetTaxeAdresse	FieldKindfkLookup	FieldNameAdresseLookupDataSetSpecial.TNumAdresLookupKeyFieldsNumCptLookupResultFieldAdresse	KeyFieldsTiersSize2Lookup	  TStringFieldDetTaxeCompte	FieldNameCompte  TStringFieldDetTaxeDebit	FieldNameDebitSize  TFloatFieldDetTaxeMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldDetTaxeMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldDetTaxeIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteSize(Lookup	  TStringFieldDetTaxeNature	FieldKindfkLookup	FieldNameNatureLookupDataSetSpecial.TNumDiverLookupKeyFieldsNumCptLookupResultField
NatureProd	KeyFieldsCompteLookup	  TStringFieldDetTaxeJournal	FieldNameJournalSize
  
TDateFieldDetTaxeDateEsc	FieldNameDateEsc  TFloatFieldDetTaxeSMontant	FieldKindfkCalculated	FieldNameSMontant
Calculated	  TStringFieldDetTaxePeriode	FieldNamePeriodeSize
  TStringFieldDetTaxeTypX	FieldNameTypXSize  TStringFieldDetTaxeNatureProd	FieldKindfkLookup	FieldName
NatureProdLookupDataSetSpecial.TypProdLookupKeyFieldsNatureLookupResultFieldFamille	KeyFieldsTypXSizeLookup	  TStringFieldDetTaxeContrepartie	FieldNameContrepartie  TStringFieldDetTaxeTiersOuContre	FieldKindfkCalculated	FieldNameTiersOuContre
Calculated	  TFloatFieldDetTaxeSQte	FieldKindfkCalculated	FieldNameSQte
Calculated	  TStringFieldDetTaxeSigleTaxe	FieldKindfkLookup	FieldName	SigleTaxeLookupDataSetSpecial.TNumDiverLookupKeyFieldsNumCptLookupResultFieldStatistique	KeyFieldsCompteLookup	  TStringFieldDetTaxeTVACompte	FieldKindfkLookup	FieldName	TVACompteLookupDataSetSpecial.TNumDiverLookupKeyFieldsNumCptLookupResultFieldStatistique	KeyFieldsCompteLookup	  TStringFieldDetTaxeStatDouane	FieldKindfkCalculated	FieldName
StatDouane
Calculated	  TBooleanFieldDetTaxeImport	FieldKindfkCalculated	FieldNameImport
Calculated	  TStringFieldDetTaxeStaist_Ou_Douane	FieldKindfkCalculated	FieldNameStaist_Ou_Douane
Calculated	  TFloatFieldDetTaxeTauxTVA	FieldKindfkLookup	FieldNameTauxTVALookupDataSetCommun.TaxeLookupKeyFields
DeductibleLookupResultFieldTaux	KeyFieldsCompteLookup	  TStringFieldDetTaxeCodeAdm	FieldKindfkLookup	FieldNameCodeAdmLookupDataSetCommun.TaxeLookupKeyFields
DeductibleLookupResultFieldCodeAdm	KeyFieldsCompteLookup	  TStringFieldDetTaxeIntituleAdm	FieldKindfkLookup	FieldNameIntituleAdmLookupDataSetCommun.TaxeLookupKeyFields
DeductibleLookupResultFieldDenomination	KeyFieldsCompteLookup	  TIntegerFieldDetTaxeTaux	FieldNameTaux   	TADOQueryEcriture
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings!select * from Journal a, EltJrn b Left� Top TStringFieldEcritureCode	FieldNameCodeSize
  TStringFieldEcriturePeriode	FieldNamePeriodeSize
  TSmallintFieldEcritureJour	FieldNameJour  TStringFieldEcritureCodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldEcritureDateFact	FieldNameDateFact  TStringFieldEcritureNumFact	FieldNameNumFact  TStringFieldEcritureJournal	FieldNameJournalSize
  TStringFieldEcritureDebit	FieldNameDebitSize  TIntegerFieldEcritureNumero	FieldNameNumero  TStringFieldEcritureCompte	FieldNameCompte  TLargeintFieldEcrituremontant	FieldNamemontantReadOnly	  TStringFieldEcritureLettre	FieldKindfkLookup	FieldNameLettreLookupDataSetSpecial.lettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldEcritureIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteLookup	  TStringFieldEcritureTiers	FieldNameTiers  TStringFieldEcritureLibelle	FieldNameLibelleSize<  
TDateFieldEcritureDateEsc	FieldNameDateEsc  TStringFieldEcritureizy	FieldNameizyReadOnly	Size   	TADOQuery
SelEltJrn2
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from EltJrnwhere Journal=:a  Left�Top  	TADOQueryRechLet
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue  NamezDataTypeftStringSizeValue   SQL.Strings"select * from journal a, eltjrn b where (a.code=b.journal) and&           (Compte>=:x)and(compte<=:y)           and (debit=:z)  order by Compte, NumFact  Left�Top TStringFieldRechLetJournal	FieldNameJournalSize
  TStringFieldRechLetNumFactDisplayWidth	FieldNameNumFact  TFloatFieldRechLetMCredit	FieldKindfkCalculated	FieldNameMCreditDisplayFormat#,###
Calculated	  TFloatFieldRechLetMDebit	FieldKindfkCalculated	FieldNameMDebitDisplayFormat#,###
Calculated	  TStringFieldRechLetLettreDisplayWidth	FieldKindfkLookup	FieldNameLettreLookupDataSetSpecial.lettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldRechLetLibelle	FieldNameLibelleSize<  TStringFieldRechLetCompteDisplayWidth
	FieldNameCompte  
TDateFieldRechLetDateFact	FieldNameDateFactEditMask!99/99/00;1;_  TStringFieldRechLetDebit	FieldNameDebitSize  TIntegerFieldRechLetNumero	FieldNameNumeroVisible  TLargeintFieldRechLetmontant	FieldNamemontantReadOnly	  TSmallintFieldRechLetNbcontre	FieldNameNbcontre  TStringFieldRechLetContrepartie	FieldNameContrepartie  TStringFieldRechLetLContre	FieldKindfkCalculated	FieldNameLContre
Calculated	  TStringFieldRechLetIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteLookup	  TStringFieldRechLetPeriode	FieldNamePeriodeSize
  TStringFieldRechLetCodeJrnx	FieldNameCodeJrnxSize
  TSmallintFieldRechLetJour	FieldNameJour   	TADOQuery
EltLettree
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsEltLettreeCalcFieldsCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings.select * from  journal a,eltjrn b, lettrage c 0where (a.code=b.journal) and (c.NumElt=b.numero)'    and (b.Compte>=:x)and(b.compte<=:y)2  order by b.Compte, c.lettre , b.Debit, a.periode  Left�Top< TStringFieldEltLettreePeriode	FieldNamePeriodeSize
  TStringFieldEltLettreeCompte	FieldNameCompte  TLargeintFieldEltLettreemontant	FieldNamemontantReadOnly	  TStringFieldEltLettreeLibelle	FieldNameLibelleSize<  
TDateFieldEltLettreeDateFact	FieldNameDateFact  TSmallintFieldEltLettreeJour	FieldNameJour  TStringFieldEltLettreeNumFact	FieldNameNumFact  TStringFieldEltLettreeLettre	FieldNameLettreSize  TStringFieldEltLettreeDebit	FieldNameDebitSize  TFloatFieldEltLettreeMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldEltLettreeMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldEltLettreeIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteLookup	  TStringFieldEltLettreejournal	FieldNamejournalSize
  TStringFieldEltLettreeLContre	FieldKindfkCalculated	FieldNameLContre
Calculated	  TStringFieldEltLettreeContrepartie	FieldNameContrepartie  TSmallintFieldEltLettreeNbcontre	FieldNameNbcontre  TStringFieldEltLettreeCodeJrnx	FieldNameCodeJrnxSize
   	TADOQuerySelToPrint2
ConnectionDaConnect.C_Document
CursorTypectStaticOnCalcFieldsSelToPrint2CalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Strings,select * from Journaux a,Journal b, EltJrn cwhere ( b.CodeJrnx=:a)  and6           ( a.Code=b.codejrnx) and(b.Code= c.journal)4order by b.Periode, b.Jour, c.Journal, c.Debit  desc Left�Top TStringFieldSelToPrint2Code	FieldNameCode  TStringFieldSelToPrint2Code_1	FieldNameCode_1Size
  TStringFieldSelToPrint2Periode	FieldNamePeriodeSize
  TSmallintFieldSelToPrint2Jour	FieldNameJour  TStringFieldSelToPrint2CodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldSelToPrint2DateFact	FieldNameDateFact  TStringFieldSelToPrint2Tiers	FieldNameTiers  TStringFieldSelToPrint2NumCHQ	FieldNameNumCHQ  TStringFieldSelToPrint2journal	FieldNamejournalSize
  TStringFieldSelToPrint2Debit	FieldNameDebitSize  TIntegerFieldSelToPrint2Numero	FieldNameNumero  TStringFieldSelToPrint2Compte	FieldNameCompte  TLargeintFieldSelToPrint2montant	FieldNamemontantReadOnly	  TStringFieldSelToPrint2Contrepartie	FieldNameContrepartie  TSmallintFieldSelToPrint2Nbcontre	FieldNameNbcontre  TFloatFieldSelToPrint2Qte	FieldNameQte  TFloatFieldSelToPrint2MDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldSelToPrint2MCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldSelToPrint2Contre	FieldKindfkCalculated	FieldNameContre
Calculated	  TStringFieldSelToPrint2Num	FieldKindfkCalculated	FieldNameNum
Calculated	  TStringFieldSelToPrint2Libel2DisplayWidth<	FieldKindfkCalculated	FieldNameLibel2Size<
Calculated	  TStringFieldSelToPrint2Libelle	FieldNameLibelleSize<  TStringFieldSelToPrint2Compte_1	FieldNameCompte_1  TStringFieldSelToPrint2NumFact	FieldNameNumFact  TSmallintFieldSelToPrint2Typ	FieldNameTyp  TStringFieldSelToPrint2TypX	FieldNameTypXSize  TStringFieldSelToPrint2SigleTaxe	FieldName	SigleTaxeSize
  
TDateFieldSelToPrint2DateEsc	FieldNameDateEsc  TStringFieldSelToPrint2izy	FieldNameizyReadOnly	Size   	TADOQuery	SelCummul
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsSelCummulCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Strings#select * from JrResum a, EltResum b>where (a.Code=b.Journal) and (b.compte>=:a) and (b.compte<=:b)$order by b.compte, a.periode, a.code  Left� Top< TStringFieldSelCummulDebit	FieldNameDebitSize  TCurrencyFieldSelCummulMontant	FieldNameMontant  TFloatFieldSelCummulMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldSelCummulMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldSelCummulcompte	FieldNamecompte  TStringFieldSelCummulPeriode	FieldNamePeriodeSize
  TStringFieldSelCummulMois	FieldKindfkCalculated	FieldNameMois
Calculated	  TStringFieldSelCummulJournal	FieldNameJournalSize
  TStringFieldSelCummulIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldscompteSize2Lookup	  TStringFieldSelCummulIntitCpt	FieldKindfkCalculated	FieldNameIntitCptSized
Calculated	   	TADOQueryDeclare
ConnectionDaConnect.C_Document
CursorTypectStaticOnCalcFieldsDeclareCalcFieldsCommandTimeout 
Parameters SQL.Stringsselect * from declare Left�Top< TWideStringFieldDeclareStatistique1	FieldNameStatistique1Size�   TWideStringFieldDeclareTypX	FieldNameTypX	FixedChar	Size  TWideStringFieldDeclareDebit	FieldNameDebit	FixedChar	Size  TWideStringFieldDeclareCompte	FieldNameCompte	FixedChar	  	TBCDFieldDeclareMontant	FieldNameMontant	Precision  TFloatFieldDeclareSMontant	FieldKindfkCalculated	FieldNameSMontant
Calculated	  TFloatFieldDeclareSQte	FieldKindfkCalculated	FieldNameSQte
Calculated	  TFloatField
DeclareQte	FieldNameQte  TWideStringFieldDeclareTiers	FieldNameTiers	FixedChar	  TWideStringFieldDeclareCpteStat	FieldKindfkCalculated	FieldNameCpteStat
Calculated	  TStringFieldDeclareChoixStat	FieldKindfkCalculated	FieldName	ChoixStat
Calculated	  TWideStringFieldDeclareQuittance	FieldName	Quittance	FixedChar	  TStringFieldDeclareDateQuittance	FieldKindfkCalculated	FieldNameDateQuittance
Calculated	  TDateTimeFieldDeclareDateQuit	FieldNameDateQuit  TWideStringField	DeclareTP	FieldNameTP	FixedChar	  TStringFieldDeclareDateTaxeProf	FieldKindfkCalculated	FieldNameDateTaxeProf
Calculated	  TDateTimeFieldDeclareDateTP	FieldNameDateTP  TStringFieldDeclareFamilleProd2DisplayWidth2	FieldKindfkCalculated	FieldNameFamilleProd2Size2
Calculated	  TWideStringFieldDeclareNIF_1	FieldNameNIF_1	FixedChar	  TWideStringFieldDeclareAdresse	FieldNameAdresse	FixedChar	Size  TWideStringField
DeclareNom	FieldNameNom	FixedChar	Size2  TWideStringFieldDeclareCodeProd	FieldNameCodeProd	FixedChar	Size
  TWideStringFieldDeclareNumCHQ	FieldNameNumCHQ	FixedChar	  TWideStringFieldDeclareJournal	FieldNameJournal	FixedChar	Size
  TWideStringFieldDeclareStatistique	FieldNameStatistique	FixedChar	  TWideStringField
DeclareNIF	FieldNameNIF	FixedChar	  TSmallintFieldDeclareExonere	FieldNameExonere  TWideStringFieldDeclarePeriode	FieldNamePeriode	FixedChar	Size
  TSmallintField
DeclareTyp	FieldNameTyp  TAutoIncFieldDeclareNumero	FieldNameNumeroReadOnly	  TWideStringField	DeclareCP	FieldNameCP	FixedChar	Size
  TWideStringFieldDeclareNumFact	FieldNameNumFact	FixedChar	  TWideStringFieldDeclareNatureProd	FieldName
NatureProd	FixedChar	Size(  TWideStringFieldDeclareIntitule	FieldNameIntitule	FixedChar	Sized  TDateTimeFieldDeclareDateEsc	FieldNameDateEsc  TWideStringFieldDeclareLibelle	FieldNameLibelleSize�   TWideStringFieldDeclareObservatio	FieldName
ObservatioSize�   TWideStringFieldDeclareFamilleProd	FieldNameFamilleProd	FixedChar	Size  TWideStringFieldDeclareTP_1	FieldNameTP_1Size�   TDateTimeFieldDeclareDateTP_1	FieldNameDateTP_1  TWideStringFieldDeclareQuittance_1	FieldNameQuittance_1Size�   TDateTimeFieldDeclareDateQuit_1	FieldName
DateQuit_1  TWideStringFieldDeclareCodeDecl	FieldNameCodeDeclSize�   TWideStringFieldDeclareUniteProd	FieldName	UniteProdSize�   TIntegerFieldDeclareTaux	FieldNameTaux   	TADOQuery
SuiviTiers
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings*select * from Journal a, EltJrn b, regleme Left� Topr TStringFieldSuiviTiersCode	FieldNameCodeSize
  TStringFieldSuiviTiersPeriode	FieldNamePeriodeSize
  TSmallintFieldSuiviTiersJour	FieldNameJour  TStringFieldSuiviTiersCodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldSuiviTiersDateFact	FieldNameDateFact  TStringFieldSuiviTiersNumFact	FieldNameNumFact  TStringFieldSuiviTiersJournal	FieldNameJournalSize
  TStringFieldSuiviTiersDebit	FieldNameDebitSize  TIntegerFieldSuiviTiersNumero	FieldNameNumero  TStringFieldSuiviTiersCompte	FieldNameCompte  TLargeintFieldSuiviTiersmontant	FieldNamemontantReadOnly	  TIntegerFieldSuiviTiersNumSource	FieldName	NumSource  TStringFieldSuiviTiersReference	FieldName	Reference  TSmallintFieldSuiviTiersRang	FieldNameRang  TSmallintFieldSuiviTiersSur	FieldNameSur  TFloatFieldSuiviTiersPourc	FieldNamePourc  
TDateFieldSuiviTiersEcheance	FieldNameEcheance  TFloatFieldSuiviTiersMontant_1	FieldName	Montant_1  TStringFieldSuiviTiersLibelle	FieldNameLibelleSize<  TStringFieldSuiviTiersNumDest	FieldNameNumDestSize
  TStringFieldSuiviTierstransferer	FieldName
transfererReadOnly	Size  TStringFieldSuiviTiersizy	FieldNameizyReadOnly	Size   	TADOQuery	NonLettre
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from  eltjrn   order by Compte, NumFact  LeftzTopr TStringFieldNonLettreJournal	FieldNameJournalSize
  TStringFieldNonLettreNumFactDisplayWidth	FieldNameNumFact  
TDateFieldNonLettreDateFact	FieldNameDateFact  TStringFieldNonLettreLettreDisplayWidth	FieldKindfkLookup	FieldNameLettreLookupDataSetSpecial.lettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TLargeintFieldNonLettremontant	FieldNamemontant  TStringFieldNonLettreLibelle	FieldNameLibelleSize<  TStringFieldNonLettreDebit	FieldNameDebitSize  TStringFieldNonLettreCompte	FieldNameCompte  TStringFieldNonLettreContrepartie	FieldNameContrepartie  TSmallintFieldNonLettreNbcontre	FieldNameNbcontre  TFloatFieldNonLettreQte	FieldNameQte  TIntegerFieldNonLettreNumero	FieldNameNumero  TStringFieldNonLettreizy	FieldNameizySize   	TADOQueryResume
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsResumeCalcFieldsCommandTimeout 
Parameters SQL.Strings!select * from journal a, eltjrn bwhere a.code=b.journalorder by a.periode, b.compte Left�Top< TStringFieldResumePeriode	FieldNamePeriodeSize
  TStringFieldResumeCompte	FieldNameCompte  TLargeintFieldResumemontant	FieldNamemontantReadOnly	  TStringFieldResumeDebit	FieldNameDebitSize  TStringFieldResumejournal	FieldNamejournalSize
  TStringFieldResumeCompteG	FieldKindfkCalculated	FieldNameCompteG
Calculated	   	TADOQueryQEltJrn
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from EltJrnwhere NumFact=:a Left�Topr TStringFieldQEltJrnJournal	FieldNameJournalSize
  TIntegerFieldQEltJrnNumero	FieldNameNumero  TStringFieldQEltJrnDebit	FieldNameDebitSize  TStringFieldQEltJrnCompte	FieldNameCompte  TLargeintFieldQEltJrnmontant	FieldNamemontant  TStringFieldQEltJrnLibelle	FieldNameLibelleSize<  TStringFieldQEltJrnContrepartie	FieldNameContrepartie  TSmallintFieldQEltJrnNbcontre	FieldNameNbcontre  TFloatField
QEltJrnQte	FieldNameQte  
TDateFieldQEltJrnDateFact	FieldNameDateFact  TStringFieldQEltJrnNumFact	FieldNameNumFact  TFloatFieldQEltJrnColis	FieldNameColis  TStringFieldQEltJrnTypX	FieldNameTypXSize  TStringFieldQEltJrnSigleTaxe	FieldName	SigleTaxeSize
  TStringFieldQEltJrnLettre	FieldKindfkLookup	FieldNameLettreLookupDataSetSpecial.lettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroSizeLookup	  TStringField
QEltJrnizy	FieldNameizySize   	TADOQuerySelDecl
ConnectionDaConnect.C_Document
CursorTypectStaticOnCalcFieldsSelDeclCalcFieldsCommandTimeout 
Parameters SQL.Strings$select * from DecVente a, NumDiver bwhere a.Compte=b.NumCptorder by b.statistique Left�Top TStringFieldSelDeclCOMPTE	FieldNameCOMPTE  TWideStringFieldSelDeclproduit	FieldNameproduitReadOnly	  TFloatFieldSelDeclMONTHT	FieldNameMONTHT  TFloatFieldSelDeclTAXE	FieldNameTAXE  TFloatField
SelDeclQTE	FieldNameQTE  TStringFieldSelDeclOBSERVATIO	FieldName
OBSERVATIOSize2  TStringFieldSelDeclNatureDisplayWidth(	FieldKindfkLookup	FieldNameNatureLookupDataSet	NumDiversLookupKeyFieldsCodeProdLookupResultField
NatureProd	KeyFieldsPRODUITSize(Lookup	  TStringFieldSelDeclAdresseDisplayWidth	FieldKindfkLookup	FieldNameAdresseLookupDataSetSpecial.numadresLookupKeyFieldsNumCptLookupResultFieldAdresse	KeyFieldsCOMPTESizeLookup	  TStringField
SelDeclNomDisplayWidth2	FieldKindfkLookup	FieldNameNomLookupDataSetSpecial.numadresLookupKeyFieldsNumCptLookupResultFieldNom	KeyFieldsCOMPTESize2Lookup	  TStringFieldSelDeclPrestationDisplayWidth	FieldKindfkLookup	FieldName
PrestationLookupDataSetSpecial.TypProdLookupKeyFieldsNatureLookupResultFieldFamille	KeyFieldsPRODUITSizeLookup	  TStringField
SelDeclNIF	FieldKindfkLookup	FieldNameNIFLookupDataSet	NumDiversLookupKeyFieldsNumCptLookupResultFieldNIF	KeyFieldsCOMPTELookup	  TStringFieldSelDeclQuit	FieldKindfkLookup	FieldNameQuitLookupDataSet	NumDiversLookupKeyFieldsNumCptLookupResultField	Quittance	KeyFieldsCOMPTELookup	  
TDateFieldSelDeclDtQuit	FieldKindfkLookup	FieldNameDtQuitLookupDataSet	NumDiversLookupKeyFieldsNumCptLookupResultFieldDateQuit	KeyFieldsCOMPTELookup	  TStringFieldSelDeclChoixStat1	FieldKindfkCalculated	FieldName
ChoixStat1
Calculated	  TStringFieldSelDeclUnite	FieldKindfkLookup	FieldNameUniteLookupDataSet	NumDiversLookupKeyFieldsCodeProdLookupResultField	UniteProd	KeyFieldsPRODUITLookup	  TStringFieldSelDeclCodedecl	FieldKindfkLookup	FieldNameCodedeclLookupDataSet	NumDiversLookupKeyFieldsCodeProdLookupResultFieldCodeDecl	KeyFieldsPRODUITLookup	  TStringFieldSelDeclPrestation1	FieldKindfkCalculated	FieldNamePrestation1Size
Calculated	  TStringFieldSelDeclSTAT	FieldNameSTAT  TStringField	SelDeclTP	FieldNameTP  
TDateFieldSelDeclDateTP	FieldNameDateTP  TStringFieldSelDeclDateQuittance	FieldKindfkCalculated	FieldNameDateQuittance
Calculated	  TStringFieldSelDeclDateTaxeProf	FieldKindfkCalculated	FieldNameDateTaxeProf
Calculated	   	TADOQuerySelLettrage
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamebDataTypeftStringSizeValue   SQL.Stringsselect * from lettragewhere Lettre=:b  Left+Topr TIntegerFieldSelLettrageNumElt	FieldNameNumElt  TStringFieldSelLettrageLettre	FieldNameLettreSize  TStringFieldSelLettragePeriodeLet	FieldName
PeriodeLetSize
  TStringFieldSelLettrageTypeLet	FieldNameTypeLetSize
   	TADOQueryDernierLettre
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsDernierLettreCalcFieldsCommandTimeout 
Parameters SQL.Strings(select * from lettrage where lettre<>'X'order by lettre  Left�Top< TIntegerFieldDernierLettreNumElt	FieldNameNumElt  TStringFieldDernierLettreLettre	FieldNameLettreSize  TIntegerFieldDernierLettreEqIndex	FieldKindfkCalculated	FieldNameEqIndex
Calculated	   	TADOQueryRecaTaxe
ConnectionDaConnect.C_Document
CursorTypectStaticOnCalcFieldsRecaTaxeCalcFieldsCommandTimeout 
Parameters SQL.Stringsselect * from declare Left� Top� TStringFieldRecaTaxeRubrique	FieldNameRubriqueSize
  TStringFieldRecaTaxecompte	FieldNamecompte  
TDateFieldRecaTaxeDateEsc	FieldNameDateEsc  TStringFieldRecaTaxeNumFact	FieldNameNumFact  TCurrencyFieldRecaTaxeMontant	FieldNameMontant  TFloatFieldRecaTaxeTaxable	FieldKindfkCalculated	FieldNameTaxable
Calculated	  TFloatFieldRecaTaxeMTaxable	FieldKindfkCalculated	FieldNameMTaxable
Calculated	  TFloatFieldRecaTaxeMNonTaxable	FieldKindfkCalculated	FieldNameMNonTaxable
Calculated	  TFloatFieldRecaTaxeMTVA	FieldKindfkCalculated	FieldNameMTVA
Calculated	  TBooleanFieldRecaTaxeNonTaxable	FieldKindfkLookup	FieldName
NonTaxableLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldExonere	KeyFieldscompteLookup	  TStringFieldRecaTaxeDescription	FieldKindfkCalculated	FieldNameDescriptionSize2
Calculated	  TFloatFieldRecaTaxeSMontant	FieldKindfkCalculated	FieldNameSMontant
Calculated	  TStringFieldRecaTaxeDebit	FieldNameDebitSize  TStringFieldRecaTaxeJournal	FieldNameJournalSize
  TIntegerFieldRecaTaxeTaux	FieldNameTaux   	TADOQuery
SelToPrint
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsSelToPrintCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamedDataTypeftStringSizeValue   SQL.Strings!select * from Journal b, EltJrn cwhere ( b.CodeJrnx=:a)  and            ( b.Periode=:d)  and            ( b.Code= c.journal)3order by b.Periode, b.Jour, c.Journal, c.Debit desc Left� Top�  TSmallintFieldSelToPrintJour	FieldNameJour  TStringFieldSelToPrintCompteDisplayWidth	FieldNameCompte  TStringFieldSelToPrintDebit	FieldNameDebitSize  TLargeintFieldSelToPrintmontant	FieldNamemontantReadOnly	  TLargeintFieldSelToPrintMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TLargeintFieldSelToPrintMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldSelToPrintPeriode	FieldNamePeriodeSize
  TStringFieldSelToPrintIntitu	FieldKindfkLookup	FieldNameIntituLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteSizedLookup	  TStringFieldSelToPrintCode	FieldNameCodeSize
  TStringFieldSelToPrintCodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldSelToPrintDateFact	FieldNameDateFact  TStringFieldSelToPrintNumFact	FieldNameNumFact  TStringFieldSelToPrintjournal	FieldNamejournalSize
  TIntegerFieldSelToPrintNumero	FieldNameNumero  TStringFieldSelToPrintLibelle	FieldNameLibelleSize<  TStringFieldSelToPrinttransferer	FieldName
transfererReadOnly	Size  TStringFieldSelToPrintizy	FieldNameizyReadOnly	Size   	TADOQueryNumCHQ_Fact
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from eltjrn LeftzTop TWideStringFieldNumCHQ_Factjournal	FieldNamejournalSize
  TWideStringFieldNumCHQ_Factnumfact	FieldNamenumfact  TStringFieldNumCHQ_FactSigleTaxe	FieldName	SigleTaxeSize
  TStringFieldNumCHQ_Factcompte	FieldNamecompte  TStringFieldNumCHQ_FactCheque	FieldKindfkLookup	FieldNameChequeLookupDataSetSpecial.JournalLookupKeyFieldscodeLookupResultFieldnumchq	KeyFieldsJournalSize
Lookup	  TStringFieldNumCHQ_FactCodeJx	FieldKindfkLookup	FieldNameCodeJxLookupDataSetSpecial.JournalLookupKeyFieldsCodeLookupResultFieldCodeJrnx	KeyFieldsJournalSizeLookup	  TIntegerFieldNumCHQ_FactTyp	FieldKindfkLookup	FieldNameTypLookupDataSetSpecial.JournauxLookupKeyFieldsCodeLookupResultFieldTyp	KeyFieldsCodeJxLookup	   	TADOQuery	TVASurEcr
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from eltJrn 'where (compte<'444')and (compte>='443') Left� Top TStringFieldTVASurEcrJournal	FieldNameJournalSize
  TStringFieldTVASurEcrcompte	FieldNamecompte  TLargeintFieldTVASurEcrmontant	FieldNamemontant   	TADOQuery	SoldeCpte
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Strings.select * from  Journaux a, Journal b, eltJrn c/where (a.code=b.codejrnx) and(b.code=c.journal)    and (a.typ<4)and(c.compte=:a)  Left�Topr TStringFieldSoldeCpteDebit	FieldNameDebitSize  TLargeintFieldSoldeCptemontant	FieldNamemontantReadOnly	   	TADOQuery	NumCheque
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from eltJrn #where (compte<'52')and (compte>'5')  Left� Top�   	TADOQueryEF
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsEFCalcFieldsCommandTimeout 
ParametersNamexDataType
ftSmallintSizeValue   SQL.Strings$Select * from  Titre a, SousTitr b, -                      UnionCp c, GroupCpt d, )                       NumCpt e, eltJrn f+where (a.Typa=:x) and (a.Numero=b.Titre)and<           (b.Numero=c.SSTitre) and (c.Numero=d.UnionCp)and F           (e.NumCpt>=d.DebutCpt)and(e.NumCpt<=(d.FinCompte||'z'))and            (e.NumCpt=f.compte)   Left.Topr TSmallintFieldEFTypa	FieldNameTypa  TIntegerFieldEFTitre	FieldNameTitre  TIntegerField	EFSSTitre	FieldNameSSTitre  TIntegerField	EFUnionCp	FieldNameUnionCp  TIntegerField
EFNumero_3	FieldNameNumero_3  TStringFieldEFcompte	FieldNamecompte  TStringFieldEFDebit	FieldNameDebitSize  TFloatFieldEFMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatField	EFMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringField
EFDebutCpt	FieldNameDebutCpt  TStringFieldEFFinCompte	FieldName	FinCompte  TSmallintFieldEFUtilisation	FieldNameUtilisation  TStringField
EFProDebut	FieldNameProDebut  TStringField	EFAmDebut	FieldNameAmDebut  TStringFieldEFAmFin	FieldNameAmFin  TStringFieldEFProFin	FieldNameProFin  TStringField
EFIntitule	FieldNameIntituleSized  TStringFieldEFIntitule_2	FieldName
Intitule_2Sized  TStringFieldEFIntitule_3	FieldName
Intitule_3Sized  TStringFieldEFIntitule_1	FieldName
Intitule_1Sized  TFloatField
EFSMontant	FieldKindfkCalculated	FieldNameSMontant
Calculated	  TSmallintField
EFTypSomme	FieldNameTypSomme  TStringField	EFJournal	FieldNameJournalSize
  TLargeintField	EFmontant	FieldNamemontantReadOnly	  TFloatField	EFvalexpr	FieldKindfkCalculated	FieldNamevalexpr
Calculated	  TStringFieldEFExpr	FieldNameExprSized  TSmallintFieldEFdetail	FieldNamedetailReadOnly	  TSmallintField	EFdetailt	FieldNamedetailtReadOnly	  TSmallintField	EFajouter	FieldNameajouterReadOnly	   	TADOQueryTiersSurEcr
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from eltJrn %where (compte<'42')and (compte>='40')  Left+Top  	TADOQueryQannexe
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamexDataType
ftSmallintSize�Value  NameyDataType	ftBooleanSize�Value   SQL.Strings$Select * from  Titre a, SousTitr b, -                      UnionCp c, GroupCpt d, !                       Consolid e<where (a.Typa=:x) and (b.Annexe=:y)and (a.Numero=b.Titre)and<           (b.Numero=c.SSTitre) and (c.Numero=d.UnionCp)and B           (e.Compte>=d.DebutCpt)and(e.Compte<=(d.FinCompte||'z'));order by a.numero, b.numero, c.numero, d.debutCpt, e.compte LeftzTop�  TSmallintFieldQannexeTypa	FieldNameTypa  TStringFieldQannexeRang	FieldNameRangSize
  TIntegerFieldQannexeNumero	FieldNameNumero  TStringFieldQannexeIntitule	FieldNameIntituleSized  TFloatFieldQannexeTotal	FieldNameTotal  TIntegerFieldQannexeTitre	FieldNameTitre  TStringFieldQannexeRang_1	FieldNameRang_1Size
  TIntegerFieldQannexeNumero_1	FieldNameNumero_1  TStringFieldQannexeIntitule_1	FieldName
Intitule_1Sized  TFloatFieldQannexeTotal_1	FieldNameTotal_1  TIntegerFieldQannexeRubrique	FieldNameRubrique  TStringFieldQannexeExpr	FieldNameExprSized  TIntegerFieldQannexeSSTitre	FieldNameSSTitre  TIntegerFieldQannexeNumero_2	FieldNameNumero_2  TStringFieldQannexeIntitule_2	FieldName
Intitule_2Sized  TFloatFieldQannexeTotal_2	FieldNameTotal_2  TIntegerFieldQannexeUnionCp	FieldNameUnionCp  TIntegerFieldQannexeNumero_3	FieldNameNumero_3  TStringFieldQannexeDebutCpt	FieldNameDebutCpt  TStringFieldQannexeFinCompte	FieldName	FinCompte  TStringFieldQannexeAmDebut	FieldNameAmDebut  TStringFieldQannexeAmFin	FieldNameAmFin  TFloatFieldQannexeBrut	FieldNameBrut  TFloatFieldQannexeAmPro	FieldNameAmPro  TFloatField
QannexeNet	FieldNameNet  TStringFieldQannexeProDebut	FieldNameProDebut  TStringFieldQannexeProFin	FieldNameProFin  TFloatFieldQannexeSldInit	FieldNameSldInit  TSmallintFieldQannexeUtilisation	FieldNameUtilisation  TSmallintFieldQannexeTypSomme	FieldNameTypSomme  TFloatFieldQannexeTotal_3	FieldNameTotal_3  TStringFieldQannexeCompte	FieldNameCompte  TFloatFieldQannexeDEBIT1	FieldNameDEBIT1  TFloatFieldQannexeCREDIT1	FieldNameCREDIT1  TFloatFieldQannexeDEBIT2	FieldNameDEBIT2  TFloatFieldQannexeCREDIT2	FieldNameCREDIT2  TFloatFieldQannexeDEBIT3	FieldNameDEBIT3  TFloatFieldQannexeCREDIT3	FieldNameCREDIT3  TFloatFieldQannexeDEBIT4	FieldNameDEBIT4  TFloatFieldQannexeCREDIT4	FieldNameCREDIT4  TFloatFieldQannexeDEBIT5	FieldNameDEBIT5  TFloatFieldQannexeCREDIT5	FieldNameCREDIT5  TFloatFieldQannexeDEBIT6	FieldNameDEBIT6  TFloatFieldQannexeCREDIT6	FieldNameCREDIT6  TFloatFieldQannexeDEBIT7	FieldNameDEBIT7  TFloatFieldQannexeCREDIT7	FieldNameCREDIT7  TFloatFieldQannexeDEBIT8	FieldNameDEBIT8  TFloatFieldQannexeCREDIT8	FieldNameCREDIT8  TFloatFieldQannexeCREDIT9	FieldNameCREDIT9  TFloatFieldQannexeDEBIT10	FieldNameDEBIT10  TFloatFieldQannexeCREDIT10	FieldNameCREDIT10  TStringFieldQannexeAUTRE	FieldNameAUTRESize  TFloatFieldQannexeDEBIT9	FieldNameDEBIT9  TStringFieldQannexeINTITULE_3	FieldName
INTITULE_3Size2  TFloatFieldQannexeDEBIT_1	FieldNameDEBIT_1  TFloatFieldQannexeCREDIT_1	FieldNameCREDIT_1  TStringFieldQannexeIntitGroup	FieldName
IntitGroupSize  TSmallintFieldQannexedetailt	FieldNamedetailtReadOnly	  TSmallintFieldQannexedetail	FieldNamedetailReadOnly	  TSmallintFieldQannexeactifprod	FieldName	actifprodReadOnly	  TSmallintFieldQannexeajouter	FieldNameajouterReadOnly	  TSmallintFieldQannexeannexe	FieldNameannexeReadOnly	   	TADOQueryEFBrut_1
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings!Select * from journal a, EltJrn bwhere (a.code=b.journal)and)           (b.compte>=:x)and(b.compte<:y)  Left.Top TStringFieldEFBrut_1Debit	FieldNameDebitSize  TLargeintFieldEFBrut_1montant	FieldNamemontantReadOnly	   	TADOQuerySuiviLet
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings-select * from lettrage a, eltJrn b, Journal c(where (a.lettre=:x) and (b.debit=:y) and5           (a.NumElt=b.Numero) and (c.Code=b.Journal)  Left�Topr TStringFieldSuiviLetJournal	FieldNameJournalSize
  TStringFieldSuiviLetNumFactDisplayWidth	FieldNameNumFact  
TDateFieldSuiviLetDateFact	FieldNameDateFact  TLargeintFieldSuiviLetmontant	FieldNamemontantReadOnly	  TStringFieldSuiviLetlettre	FieldNamelettreSize  TStringFieldSuiviLetLibelle	FieldNameLibelleSize<  TStringFieldSuiviLetCompte	FieldNameCompte  TStringFieldSuiviLetdebit	FieldNamedebitSize  TIntegerFieldSuiviLetNumElt	FieldNameNumEltVisible  TIntegerFieldSuiviLetNumero	FieldNameNumero  TStringFieldSuiviLetCode	FieldNameCodeSize
  TStringFieldSuiviLetPeriode	FieldNamePeriodeSize
  TSmallintFieldSuiviLetJour	FieldNameJour  TStringFieldSuiviLetCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldSuiviLetSigleTaxe	FieldName	SigleTaxeSize
  TStringFieldSuiviLetizy	FieldNameizyReadOnly	Size  TStringFieldSuiviLettransferer	FieldName
transfererReadOnly	Size   	TADOQueryEFProv
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings!Select * from journal a, EltJrn bwhere (a.code=b.journal)and)           (b.compte>=:x)and(b.compte<:y) Left�Top< TLargeintFieldEFProvmontant	FieldNamemontantReadOnly	  TStringFieldEFProvDebit	FieldNameDebitSize  TLargeintFieldEFProvMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TLargeintFieldEFProvMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	   	TADOQueryQCalculResultat
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings8SELECT Sum(Debit1) as RDebit1, Sum(Credit1) as RCredit1,L                          Sum(Debit2) as RDebit2, Sum(Credit2) as RCredit2, L                          Sum(Debit3) as RDebit3, Sum(Credit3) as RCredit3, L                          Sum(Debit4) as RDebit4, Sum(Credit4) as RCredit4, L                          Sum(Debit5) as RDebit5, Sum(Credit5) as RCredit5, L                          Sum(Debit6) as RDebit6, Sum(Credit6) as RCredit6, L                          Sum(Debit7) as RDebit7, Sum(Credit7) as RCredit7, L                          Sum(Debit8) as RDebit8, Sum(Credit8) as RCredit8, K                          Sum(Debit9) as RDebit9, Sum(Credit9) as RCredit9 '                          FROM Consolid>                          where (compte>'6') and (compte<'7Z')  Left�Top�  TFloatFieldQCalculResultatRDebit1	FieldNameRDebit1  TFloatFieldQCalculResultatRCredit1	FieldNameRCredit1  TFloatFieldQCalculResultatRDebit2	FieldNameRDebit2  TFloatFieldQCalculResultatRCredit2	FieldNameRCredit2  TFloatFieldQCalculResultatRDebit3	FieldNameRDebit3  TFloatFieldQCalculResultatRCredit3	FieldNameRCredit3  TFloatFieldQCalculResultatRDebit4	FieldNameRDebit4  TFloatFieldQCalculResultatRCredit4	FieldNameRCredit4  TFloatFieldQCalculResultatRDebit5	FieldNameRDebit5  TFloatFieldQCalculResultatRCredit5	FieldNameRCredit5  TFloatFieldQCalculResultatRDebit6	FieldNameRDebit6  TFloatFieldQCalculResultatRCredit6	FieldNameRCredit6  TFloatFieldQCalculResultatRDebit7	FieldNameRDebit7  TFloatFieldQCalculResultatRCredit7	FieldNameRCredit7  TFloatFieldQCalculResultatRDebit8	FieldNameRDebit8  TFloatFieldQCalculResultatRCredit8	FieldNameRCredit8  TFloatFieldQCalculResultatRDebit9	FieldNameRDebit9  TFloatFieldQCalculResultatRCredit9	FieldNameRCredit9   	TADOQuery
NumFacture
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from eltJrn "where (compte<'5')or (compte>='6') Left�Top�   	TADOQuery
Auxiliaire
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.StringsSelect * from Auxiliwhere Typa=:a Left'Top TStringFieldAuxiliaireTypa	FieldNameTypaSize
  TLargeintFieldAuxiliairedebitprec	FieldName	debitprec  TLargeintFieldAuxiliairecreditprec	FieldName
creditprec  TLargeintFieldAuxiliairemvtdebit	FieldNamemvtdebit  TLargeintFieldAuxiliairemvtcredit	FieldName	mvtcredit  TLargeintFieldAuxiliairedebitnouv	FieldName	debitnouv  TLargeintFieldAuxiliairecreditnouv	FieldName
creditnouv   	TADOQueryBalConCo
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsBalConCoCalcFieldsCommandTimeout 
Parameters SQL.Strings!select * from Journal a, EltJrn bwhere a.code=b.journalorder by b.compte  Left.Top�  TStringFieldBalConCocodeDisplayWidth
	FieldNamecodeSize
  TStringFieldBalConCoCompteGDisplayWidth
	FieldKindfkCalculated	FieldNameCompteG
Calculated	  TStringFieldBalConCoIntituleGDisplayWidth	FieldKindfkCalculated	FieldName	IntituleGSized
Calculated	  TStringFieldBalConCoCompteDisplayWidth
	FieldNameCompte  TStringFieldBalConCoDebitDisplayWidth	FieldNameDebitSize  TLargeintFieldBalConComontant	FieldNamemontantReadOnly	  TStringFieldBalConCoIntituleDisplayWidthx	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteSizedLookup	  TStringFieldBalConCoPeriode	FieldNamePeriodeSize
   	TADOQueryprecu
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from EltJrn(where ('41'<= compte) and (compte<'42' )  Left�Top�   	TADOQuery
DerJournal
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from Journal"where (periode=:a)and(codejrnx=:b)order by code  Left�Top TStringFieldDerJournalCode	FieldNameCodeSize
   	TADOQueryR_EcriturePourLettrage
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameMtDataTypeftFloatSize�Value  NameFactDataTypeftStringSizeValue  NameTiersDataTypeftStringSizeValue   SQL.Stringsselect * from EltJrn9where (Montant=:Mt) and (NumFact=:Fact)and(Compte=:Tiers)    Left�Top�  TIntegerFieldR_EcriturePourLettrageNumero	FieldNameNumero   	TADOQueryEltDansJrnx
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from  Journalwhere codeJrnx=:a Left�Top�  TStringFieldEltDansJrnxPeriode	FieldNamePeriodeSize
  TSmallintFieldEltDansJrnxJour	FieldNameJour  TStringFieldEltDansJrnxcodeJrnx	FieldNamecodeJrnxSize
  TStringFieldEltDansJrnxCode	FieldNameCodeSize
  TStringFieldEltDansJrnxtransferer	FieldName
transfererSize   	TADOQueryEFBrut
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsEFBrutCalcFieldsCommandTimeout 
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings!Select * from journal a, EltJrn bwhere (a.code=b.journal)and)           (b.compte>=:x)and(b.compte<:y)order by compte  Left'Topr TLargeintFieldEFBrutmontant	FieldNamemontantReadOnly	  TStringFieldEFBrutDebit	FieldNameDebitSize  TStringFieldEFBrutcompte	FieldNamecompte  TLargeintFieldEFBrutMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TLargeintFieldEFBrutMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldEFBrutIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldscompteSizeLookup	   	TADOQuerySelConsolide
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from consolidewhere agence=:a Left� TopH TStringFieldSelConsolideSiege	FieldNameSiegeSize
  TStringFieldSelConsolideagence	FieldNameagenceSize
  TStringFieldSelConsolideChemSiege	FieldKindfkLookup	FieldName	ChemSiegeLookupDataSetCommun.SocieteLookupKeyFieldsCodeLookupResultFieldChemin	KeyFieldsSiegeLookup	   	TADOQuery	SelNumCpt
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumCptwhere NumCpt=:a LeftzTopH TStringFieldSelNumCptNumCpt	FieldNameNumCpt  TStringFieldSelNumCptIntitule	FieldNameIntituleSized   	TADOQuery
SelParamet
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.StringsSelect * from ParametWhere Numero=:a Left�Topr TSmallintFieldSelParametNumero	FieldNameNumero  TStringFieldSelParametTexte	FieldNameTexteSize2  
TDateFieldSelParametDaty	FieldNameDaty  TIntegerFieldSelParametEntier	FieldNameEntier  TFloatFieldSelParametReel	FieldNameReel  TSmallintFieldSelParametLogique	FieldNameLogique   	TADOQuery	SelGroupe
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from GroupCptwhere UnionCp=:a Left�TopH TIntegerFieldSelGroupeUnionCp	FieldNameUnionCp  TWideStringFieldSelGroupeRang	FieldNameRang	FixedChar	Size  TWideStringFieldSelGroupeDebutCpt	FieldNameDebutCpt	FixedChar	  TSmallintFieldSelGroupeUtilisation	FieldNameUtilisation  TWideStringFieldSelGroupeFinCompte	FieldName	FinCompte	FixedChar	  TSmallintFieldSelGroupeActifProd	FieldName	ActifProd  TWideStringFieldSelGroupeAmDebut	FieldNameAmDebut	FixedChar	  TWideStringFieldSelGroupeAmFin	FieldNameAmFin	FixedChar	  TFloatFieldSelGroupeBrut	FieldNameBrut  TFloatFieldSelGroupeAmPro	FieldNameAmPro  TFloatFieldSelGroupeNet	FieldNameNet  TWideStringFieldSelGroupeProDebut	FieldNameProDebut	FixedChar	  TWideStringFieldSelGroupeProFin	FieldNameProFin	FixedChar	  TFloatFieldSelGroupeSldInit	FieldNameSldInit  TSmallintFieldSelGroupeTypSomme	FieldNameTypSomme  TFloatFieldSelGroupeTotal	FieldNameTotal  TWideStringFieldSelGroupeIntitGroup	FieldName
IntitGroup	FixedChar	Size2  TSmallintFieldSelGroupeLeDetail	FieldNameLeDetail  TAutoIncFieldSelGroupeNumero	FieldNameNumeroReadOnly	  TSmallintFieldSelGroupeajouter	FieldNameajouter  TSmallintFieldSelGroupechiffres5	FieldName	chiffres5  TSmallintFieldSelGroupeaffichdet	FieldName	affichdet  TSmallintFieldSelGroupeef	FieldNameef  TSmallintFieldSelGroupezerosivide	FieldName
zerosivide   	TADOQueryExpTotal
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from Titrewhere numero=:a Left�Top TIntegerFieldExpTotalnumero	FieldNamenumero  TFloatFieldExpTotalTotal	FieldNameTotal   	TADOQuery	SelTitre3
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from titrewhere Numero=:a Left$Top TFloatFieldSelTitre3Total	FieldNameTotal   	TADOQuerySelNumDivers
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSize�Value   SQL.Stringsselect * from NumDiverwhere NumCpt=:a Left.TopH TStringFieldSelNumDiversNumCpt	FieldNameNumCpt  TStringFieldSelNumDiversStatistique	FieldNameStatistique  TStringFieldSelNumDiversQuittance	FieldName	Quittance  TStringFieldSelNumDiversNIF	FieldNameNIF  
TDateFieldSelNumDiversDateQuit	FieldNameDateQuit  TStringFieldSelNumDiversNatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDiversCodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDiversCodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDiversAbrev	FieldNameAbrevSize   	TADOQuerySelNumDiverDeA
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSize�Value  NamebDataTypeftStringSize�Value   SQL.Stringsselect * from NumDiver$where (NumCpt>=:a)and (NumCpt<=(:b)) LeftzTop�  TStringFieldSelNumDiverDeACodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDiverDeANumCpt	FieldNameNumCpt   	TADOQuerySelUnion
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from UnionCpwhere (SSTitre=:a)   --and(nature='Pré-COND. ') Left�TopH TAutoIncFieldSelUnionNumero	FieldNameNumero  TStringFieldSelUnionIntitule	FieldNameIntituleSized  TIntegerFieldSelUnionSSTitre	FieldNameSSTitre   	TADOQuerySelParaDecl
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsSelParaDeclCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue  NamecDataTypeftStringSizeValue   SQL.Stringsselect * from ParaDeclwhere (parametre=:a)!and(rubrique>=:b)and(rubrique<:c)order by CompteDe Left�Top TStringFieldSelParaDeclparametre	FieldName	parametreVisibleSize
  TStringFieldSelParaDeclrubrique	FieldNamerubriqueVisibleSize
  TStringFieldSelParaDeclCompteDe	FieldNameCompteDe  TStringFieldSelParaDeclA	FieldKindfkCalculated	FieldNameASize
Calculated	  TStringFieldSelParaDeclCompteA	FieldNameCompteA   	TADOQuerySelNumDiverByStat
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumDiverwhere Statistique=:a Left$TopH TStringFieldSelNumDiverByStatNumCpt	FieldNameNumCpt  TStringFieldSelNumDiverByStatStatistique	FieldNameStatistique  TStringFieldSelNumDiverByStatQuittance	FieldName	Quittance  TStringFieldSelNumDiverByStatNIF	FieldNameNIF  
TDateFieldSelNumDiverByStatDateQuit	FieldNameDateQuit  TStringFieldSelNumDiverByStatNatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDiverByStatCodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDiverByStatCodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDiverByStatAbrev	FieldNameAbrevSize  TStringFieldSelNumDiverByStatUniteProd	FieldName	UniteProdSize
  TStringFieldSelNumDiverByStatNom	FieldKindfkLookup	FieldNameNomLookupDataSetSpecial.TNumAdresLookupKeyFieldsNumCptLookupResultFieldNom	KeyFieldsNumCptLookup	   	TADOQuerySelNumDiver3
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from NumDiver where (NumCpt>=:a)and(NumCpt<:b) Left$Top�  TStringFieldSelNumDiver3CodeProd	FieldNameCodeProdSize
   	TADOQueryAm_Prov
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from Consolid Left�Top TFloatFieldAm_ProvDEBIT1	FieldNameDEBIT1  TFloatFieldAm_ProvCREDIT1	FieldNameCREDIT1  TFloatFieldAm_ProvDEBIT2	FieldNameDEBIT2  TFloatFieldAm_ProvCREDIT2	FieldNameCREDIT2  TFloatFieldAm_ProvDEBIT3	FieldNameDEBIT3  TFloatFieldAm_ProvCREDIT3	FieldNameCREDIT3  TFloatFieldAm_ProvDEBIT4	FieldNameDEBIT4  TFloatFieldAm_ProvCREDIT4	FieldNameCREDIT4  TFloatFieldAm_ProvDEBIT5	FieldNameDEBIT5  TFloatFieldAm_ProvCREDIT5	FieldNameCREDIT5  TFloatFieldAm_ProvDEBIT6	FieldNameDEBIT6  TFloatFieldAm_ProvCREDIT6	FieldNameCREDIT6  TStringFieldAm_ProvINTITULE	FieldNameINTITULESize2  TFloatFieldAm_ProvDEBIT_1	FieldNameDEBIT_1  TFloatFieldAm_ProvCREDIT_1	FieldNameCREDIT_1  TWideStringFieldAm_Provcompte	FieldNamecompte   	TADOQueryParamEF
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsParamEFCalcFieldsCommandTimeout 
Parameters SQL.StringsFSelect * from  Titre a, SousTitr b, SouSouTi c, UnionCp d, GroupCpt e,           Consolid fAwhere (a.Typa=1)and(a.Numero=b.Titre)and(b.Numero=c.SouTitre) and;           (c.Numero=d.SSTitre) and (d.Numero=e.UnionCp)andC           (f.Compte>=e.DebutCpt)and(f.Compte<=(e.FinCompte||'z')) iorder by a.rang, a.numero, b.rang, b.Numero, c.rang, c.Numero, d.rang, d.Numero, e.IntitGroup ,e.DebutCpt Left.Top�  TStringFieldParamEFRang	FieldNameRangSize
  TStringFieldParamEFRang_1	FieldNameRang_1Size
  TStringFieldParamEFRang_2	FieldNameRang_2Size
  TIntegerFieldParamEFNumero	FieldNameNumero  TIntegerFieldParamEFNumero_1	FieldNameNumero_1  TIntegerFieldParamEFNumero_2	FieldNameNumero_2  TIntegerFieldParamEFNumero_3	FieldNameNumero_3  TStringFieldParamEFDebutCpt	FieldNameDebutCpt  TStringFieldParamEFFinCompte	FieldName	FinCompte  TStringFieldParamEFAmDebut	FieldNameAmDebut  TStringFieldParamEFAmFin	FieldNameAmFin  TStringFieldParamEFProDebut	FieldNameProDebut  TStringFieldParamEFProFin	FieldNameProFin  TFloatFieldParamEFDEBIT1	FieldNameDEBIT1  TFloatFieldParamEFCREDIT1	FieldNameCREDIT1  TFloatFieldParamEFDEBIT2	FieldNameDEBIT2  TFloatFieldParamEFCREDIT2	FieldNameCREDIT2  TFloatFieldParamEFDEBIT3	FieldNameDEBIT3  TFloatFieldParamEFCREDIT3	FieldNameCREDIT3  TFloatFieldParamEFDEBIT4	FieldNameDEBIT4  TFloatFieldParamEFCREDIT4	FieldNameCREDIT4  TFloatFieldParamEFDEBIT5	FieldNameDEBIT5  TFloatFieldParamEFCREDIT5	FieldNameCREDIT5  TFloatFieldParamEFDEBIT6	FieldNameDEBIT6  TFloatFieldParamEFCREDIT6	FieldNameCREDIT6  TFloatFieldParamEFDEBIT_1	FieldNameDEBIT_1  TFloatFieldParamEFCREDIT_1	FieldNameCREDIT_1  TSmallintFieldParamEFTypa	FieldNameTypa  TFloatFieldParamEFMontant1	FieldKindfkCalculated	FieldNameMontant1
Calculated	  TFloatFieldParamEFMontant2	FieldKindfkCalculated	FieldNameMontant2
Calculated	  TFloatFieldParamEFMontant3	FieldKindfkCalculated	FieldNameMontant3
Calculated	  TFloatFieldParamEFMontant4	FieldKindfkCalculated	FieldNameMontant4
Calculated	  TFloatFieldParamEFMontant5	FieldKindfkCalculated	FieldNameMontant5
Calculated	  TFloatFieldParamEFMontant6	FieldKindfkCalculated	FieldNameMontant6
Calculated	  TFloatFieldParamEFMontant7	FieldKindfkCalculated	FieldNameMontant7
Calculated	  TFloatFieldParamEFTotMontant	FieldKindfkCalculated	FieldName
TotMontant
Calculated	  TSmallintFieldParamEFLeDetail	FieldNameLeDetail  TSmallintFieldParamEFUtilisation	FieldNameUtilisation  TStringFieldParamEFRang_3	FieldNameRang_3Size  TStringFieldParamEFIntitDebCpt	FieldKindfkLookup	FieldNameIntitDebCptLookupDataSetSpecial.NumCpLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsDebutCptSize2Lookup	  TStringFieldParamEFIntitGroup	FieldName
IntitGroupSize2  TStringFieldParamEFIntitule	FieldNameIntituleSize2  TStringFieldParamEFIntitule_1	FieldName
Intitule_1Size2  TStringFieldParamEFIntitule_2	FieldName
Intitule_2Size2  TStringFieldParamEFIntitule_3	FieldName
Intitule_3Size2  TIntegerFieldParamEFNumero_4	FieldNameNumero_4  TStringFieldParamEFINTITULE_4	FieldName
INTITULE_4Size2  TSmallintFieldParamEFTypSomme	FieldNameTypSomme  TSmallintFieldParamEFaffichdet	FieldName	affichdetReadOnly	  TSmallintFieldParamEFdetailt	FieldNamedetailtReadOnly	  TSmallintFieldParamEFdetail	FieldNamedetailReadOnly	  TSmallintFieldParamEFdetail_1	FieldNamedetail_1ReadOnly	  TSmallintFieldParamEFchiffres5	FieldName	chiffres5ReadOnly	  TSmallintField	ParamEFef	FieldNameefReadOnly	  TSmallintFieldParamEFef_1	FieldNameef_1ReadOnly	  TSmallintFieldParamEFef_2	FieldNameef_2ReadOnly	  TSmallintFieldParamEFef_3	FieldNameef_3ReadOnly	  TSmallintFieldParamEFef_4	FieldNameef_4ReadOnly	  TSmallintFieldParamEFsaut	FieldNamesautReadOnly	  TSmallintFieldParamEFsaut_1	FieldNamesaut_1ReadOnly	  TSmallintFieldParamEFsaut_2	FieldNamesaut_2ReadOnly	  TSmallintFieldParamEFdecidergroupe	FieldNamedecidergroupeReadOnly	  TWideStringFieldParamEFcompte	FieldNamecompteReadOnly	   	TADOQuerySelConsolid
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from consolidwhere compte=:a Left'Top TFloatFieldSelConsolidDEBIT1	FieldNameDEBIT1  TFloatFieldSelConsolidCREDIT1	FieldNameCREDIT1  TFloatFieldSelConsolidDEBIT2	FieldNameDEBIT2  TFloatFieldSelConsolidCREDIT2	FieldNameCREDIT2  TFloatFieldSelConsolidDEBIT3	FieldNameDEBIT3  TFloatFieldSelConsolidCREDIT3	FieldNameCREDIT3  TFloatFieldSelConsolidDEBIT4	FieldNameDEBIT4  TFloatFieldSelConsolidCREDIT4	FieldNameCREDIT4  TFloatFieldSelConsolidDEBIT5	FieldNameDEBIT5  TFloatFieldSelConsolidCREDIT5	FieldNameCREDIT5  TFloatFieldSelConsolidDEBIT6	FieldNameDEBIT6  TFloatFieldSelConsolidCREDIT6	FieldNameCREDIT6  TStringFieldSelConsolidINTITULE	FieldNameINTITULESize2  TFloatFieldSelConsolidDEBIT_1	FieldNameDEBIT_1  TFloatFieldSelConsolidCREDIT_1	FieldNameCREDIT_1  TWideStringFieldSelConsolidcompte	FieldNamecompte   	TADOQueryQConsolidee
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from consolidewhere siege=:a Left�Top�  TStringFieldQConsolideesiege	FieldNamesiegeVisibleSize
  TStringFieldQConsolideeAgence	FieldNameAgenceSize
  TStringFieldQConsolideeNom	FieldKindfkLookup	FieldNameNomLookupDataSetCommun.SocieteLookupKeyFieldsCodeLookupResultFieldRS	KeyFieldsAgenceSize2Lookup	   	TADOQuery	NumCompte
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsNumCompteCalcFieldsCommandTimeout 
Parameters SQL.Stringsselect * from NumCpt Left�TopH TStringFieldNumCompteNumero	FieldKindfkCalculated	FieldNameNumeroSize
Calculated	  TStringFieldNumCompteNumCpt	FieldNameNumCptVisible  TStringFieldNumCompteIntituleDisplayWidth(	FieldNameIntituleSized  TSmallintFieldNumCompteDetail	FieldNameDetail  TSmallintFieldNumCompteClasse	FieldNameClasse  TSmallintFieldNumCompteGClasse	FieldNameGClasse   	TADOQuery
SelExpSSTT
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Strings&select * from ExpSSTT where SSTitre=:a Left$Top�  TIntegerFieldSelExpSSTTSSTitre	FieldNameSSTitreVisible  TIntegerFieldSelExpSSTTNumero	FieldNameNumeroVisible  TIntegerFieldSelExpSSTTNumTitre	FieldNameNumTitreVisible  TStringFieldSelExpSSTTOperation	FieldName	OperationSize  TFloatFieldSelExpSSTTTotal	FieldKindfkLookup	FieldNameTotalLookupDataSetExpTotalLookupKeyFieldsNumeroLookupResultFieldTotal	KeyFieldsNumTitreLookup	  TStringFieldSelExpSSTTIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetSpecial.TitreLookupKeyFieldsNumeroLookupResultFieldIntitule	KeyFieldsNumTitreSize2Lookup	   	TADOQuery
SelSSTitre
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from Soustitrwhere Titre=:a Left�TopH TStringFieldSelSSTitreRang	FieldNameRangSize
  TFloatFieldSelSSTitreTotal	FieldNameTotal  TIntegerFieldSelSSTitreRubrique	FieldNameRubrique  TAutoIncFieldSelSSTitreNumero	FieldNameNumero  TIntegerFieldSelSSTitreTitre	FieldNameTitre  TStringFieldSelSSTitreIntitule	FieldNameIntituleSize2   	TADOQuerySelSSTitre2
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType
ftSmallintSize�Value   SQL.Strings!select * from titre x, SousTitr y&where (Typa=:a) and (x.numero=y.titre) Left+Top� TIntegerFieldSelSSTitre2Numero_1	FieldNameNumero_1  TFloatFieldSelSSTitre2Total_1	FieldNameTotal_1  TStringFieldSelSSTitre2Intitule_1	FieldName
Intitule_1Size2   	TADOQuery
SelTypProd
ConnectionDaConnect.C_ComptaCommandTimeout 
Parameters Left.Top� TStringFieldSelTypProdMarque	FieldNameMarque  TStringFieldSelTypProdReference	FieldName	Reference  TStringFieldSelTypProdFamille	FieldNameFamilleSize  TStringFieldSelTypProdUniteX	FieldNameUniteXSize
  TStringFieldSelTypProdUniteCol	FieldNameUniteColSize
  TStringFieldSelTypProdcode	FieldNamecode  TStringFieldSelTypProdNature	FieldNameNatureSize   	TADOQuerySel2TypProd
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from TypProdwhere (nature=:a) Left�Top TStringFieldSel2TypProdcode	FieldNamecode  TStringFieldSel2TypProdnature	FieldNamenatureSize  TStringFieldSel2TypProdMarque	FieldNameMarque  TStringFieldSel2TypProdReference	FieldName	Reference  TStringFieldSel2TypProdFamille	FieldNameFamilleSize  TStringFieldSel2TypProdUniteX	FieldNameUniteXSize
  TStringFieldSel2TypProdUniteCol	FieldNameUniteColSize
   	TADOQuerySelNumAdres
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumAdreswhere NumCpt=:a Left�Top� TStringFieldSelNumAdresNumCpt	FieldNameNumCpt  TStringFieldSelNumAdresRS	FieldNameRS  TStringFieldSelNumAdresNom	FieldNameNomSize2  TStringFieldSelNumAdresAdresse	FieldNameAdresseSize  TStringFieldSelNumAdresCP	FieldNameCPSize
  TStringFieldSelNumAdresPays	FieldNamePays  TStringFieldSelNumAdresBP	FieldNameBP  TStringFieldSelNumAdresTEL	FieldNameTELSize  TStringFieldSelNumAdresFax	FieldNameFax  TStringFieldSelNumAdresCptBQ	FieldNameCptBQSize2  TStringFieldSelNumAdresNII	FieldNameNII   	TADOQuerySelNumDivers2
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumDiverwhere CodeProd=:a Left+Top�  TStringFieldSelNumDivers2NumCpt	FieldNameNumCpt  TStringFieldSelNumDivers2Statistique	FieldNameStatistique  TStringFieldSelNumDivers2Quittance	FieldName	Quittance  TStringFieldSelNumDivers2NIF	FieldNameNIF  
TDateFieldSelNumDivers2DateQuit	FieldNameDateQuit  TStringFieldSelNumDivers2NatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDivers2CodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDivers2CodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDivers2Abrev	FieldNameAbrevSize  TStringFieldSelNumDivers2UniteProd	FieldName	UniteProdSize
   	TADOQuery	SelUnion2
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from UnionCpwhere SSTitre=:a LeftzTop< TAutoIncFieldSelUnion2Numero	FieldNameNumero  TIntegerFieldSelUnion2SSTitre	FieldNameSSTitre  TStringFieldSelUnion2Intitule	FieldNameIntituleSize2   	TADOQuery
BilanAct_1
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from BilanAct  Left$Top< TFloatFieldBilanAct_1NUMERO_2	FieldNameNUMERO_2  TFloatFieldBilanAct_1BRUT	FieldNameBRUT  TFloatFieldBilanAct_1AMPRO	FieldNameAMPRO  TFloatFieldBilanAct_1NET_N_1	FieldNameNET_N_1  TFloatFieldBilanAct_1NUMERO_3	FieldNameNUMERO_3   	TADOQuerySeUnion3
ConnectionDaConnect.C_DocumentCommandTimeout 
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from UnionCpwhere Utilisation=:a Left$Top TAutoIncFieldSeUnion3Numero	FieldNameNumero  TIntegerFieldSeUnion3SSTitre	FieldNameSSTitre  TSmallintFieldSeUnion3TypSomme	FieldNameTypSomme   	TADOQuerySelTitre
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType
ftSmallintSize�Value   SQL.Stringsselect * from titrewhere (Typa=:a) Left'TopH TStringFieldSelTitreRang	FieldNameRangSize
  TFloatFieldSelTitreTotal	FieldNameTotal  TSmallintFieldSelTitreTypa	FieldNameTypa  TAutoIncFieldSelTitreNumero	FieldNameNumero  TStringFieldSelTitreIntitule	FieldNameIntituleSize2   	TADOQuery	Qconsolid
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsQconsolidCalcFieldsCommandTimeout 
Parameters SQL.StringsSelect * from consolidorder by compte Left�TopH TFloatFieldQconsolidDEBIT1	FieldNameDEBIT1  TFloatFieldQconsolidCREDIT1	FieldNameCREDIT1  TFloatFieldQconsolidDEBIT2	FieldNameDEBIT2  TFloatFieldQconsolidCREDIT2	FieldNameCREDIT2  TFloatFieldQconsolidDEBIT3	FieldNameDEBIT3  TFloatFieldQconsolidCREDIT3	FieldNameCREDIT3  TFloatFieldQconsolidDEBIT4	FieldNameDEBIT4  TFloatFieldQconsolidCREDIT4	FieldNameCREDIT4  TFloatFieldQconsolidDEBIT5	FieldNameDEBIT5  TFloatFieldQconsolidCREDIT5	FieldNameCREDIT5  TFloatFieldQconsolidDEBIT6	FieldNameDEBIT6  TFloatFieldQconsolidCREDIT6	FieldNameCREDIT6  TFloatFieldQconsolidDEBIT_1	FieldNameDEBIT_1  TFloatFieldQconsolidCREDIT_1	FieldNameCREDIT_1  TFloatFieldQconsolidDebit_Prec	FieldKindfkLookup	FieldName
Debit_PrecLookupDataSetSpecial.Consolid_precLookupKeyFieldsCOMPTELookupResultFieldDebit	KeyFieldsCompteLookup	  TFloatFieldQconsolidCredit_Prec	FieldKindfkLookup	FieldNameCredit_PrecLookupDataSetSpecial.Consolid_precLookupKeyFieldsCOMPTELookupResultFieldCredit	KeyFieldsCompteLookup	  TFloatFieldQconsolidStDebit1	FieldKindfkCalculated	FieldNameStDebit1
Calculated	  TFloatFieldQconsolidStDebit2	FieldKindfkCalculated	FieldNameStDebit2
Calculated	  TFloatFieldQconsolidStDebit3	FieldKindfkCalculated	FieldNameStDebit3
Calculated	  TFloatFieldQconsolidStDebit4	FieldKindfkCalculated	FieldNameStDebit4
Calculated	  TFloatFieldQconsolidStDebit5	FieldKindfkCalculated	FieldNameStDebit5
Calculated	  TFloatFieldQconsolidStDebit6	FieldKindfkCalculated	FieldNameStDebit6
Calculated	  TFloatFieldQconsolidStCredit1	FieldKindfkCalculated	FieldName	StCredit1
Calculated	  TFloatFieldQconsolidStCredit2	FieldKindfkCalculated	FieldName	StCredit2
Calculated	  TFloatFieldQconsolidStCredit3	FieldKindfkCalculated	FieldName	StCredit3
Calculated	  TFloatFieldQconsolidStCredit4	FieldKindfkCalculated	FieldName	StCredit4
Calculated	  TFloatFieldQconsolidStCredit5	FieldKindfkCalculated	FieldName	StCredit5
Calculated	  TFloatFieldQconsolidStCredit6	FieldKindfkCalculated	FieldName	StCredit6
Calculated	  TFloatFieldQconsolidTotDebit	FieldKindfkCalculated	FieldNameTotDebit
Calculated	  TFloatFieldQconsolidTotCredit	FieldKindfkCalculated	FieldName	TotCredit
Calculated	  TFloatFieldQconsolidStTotDeb	FieldKindfkCalculated	FieldNameStTotDeb
Calculated	  TFloatFieldQconsolidStTotCred	FieldKindfkCalculated	FieldName	StTotCred
Calculated	  TFloatFieldQconsolidStDebitPrec	FieldKindfkCalculated	FieldNameStDebitPrec
Calculated	  TFloatFieldQconsolidStCreditPrec	FieldKindfkCalculated	FieldNameStCreditPrec
Calculated	  TWideStringFieldQconsolidcompte	FieldNamecompte  TWideStringFieldQconsolidIntitule	FieldNameIntituleSize�   TCurrencyFieldQconsolidCredit7	FieldKindfkCalculated	FieldNameCredit7
Calculated	  TCurrencyFieldQconsolidDebit7	FieldKindfkCalculated	FieldNameDebit7
Calculated	  TCurrencyFieldQconsolidStDebit7	FieldKindfkCalculated	FieldNameStDebit7
Calculated	  TCurrencyFieldQconsolidStCredit7	FieldKindfkCalculated	FieldName	StCredit7
Calculated	   	TADOQuery
SelUnionCp
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamexDataType	ftIntegerSize�Value   SQL.Stringsselect * from UnionCpwhere Numero=:x Left+TopH TIntegerFieldSelUnionCpNumero	FieldNameNumero  TStringFieldSelUnionCpIntitule	FieldNameIntituleSize2   	TADOQuery	NumDivers
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumDiverwhere NumCpt=:a Left'Top� TStringFieldNumDiversNumCpt	FieldNameNumCpt  TStringFieldNumDiversStatistique	FieldNameStatistique  TStringFieldNumDiversQuittance	FieldName	Quittance  TStringFieldNumDiversNIF	FieldNameNIF  
TDateFieldNumDiversDateQuit	FieldNameDateQuit  TStringFieldNumDiversUniteProd	FieldName	UniteProdSize
  TStringFieldNumDiversNatureProd	FieldName
NatureProdSize(  TStringFieldNumDiversCodeProd	FieldNameCodeProdSize
  TStringFieldNumDiversCodeDecl	FieldNameCodeDeclSize
  TStringFieldNumDiversAbrev	FieldNameAbrevSize   	TADOQuerySelDtImprBal
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue  NamecDataTypeftStringSizeValue  NamedDataTypeftStringSizeValue  NameeDataTypeftStringSizeValue   SQL.Stringsselect * from DtImprBalFwhere (daty=:a)and(Agence=:b)and(typa=:c)and(donnee=:d)and(donnee2=:e) Left�Top� TStringFieldSelDtImprBaldaty	FieldNamedaty  TStringFieldSelDtImprBalAgence	FieldNameAgenceSize
  TStringFieldSelDtImprBaltypa	FieldNametypa  TStringFieldSelDtImprBaldonnee	FieldNamedonnee  TStringFieldSelDtImprBaldonnee2	FieldNamedonnee2   TDataSourceSourceTypeParaDataSetSpecial.TypeParaOnDataChangeSourceTypeParaDataChangeLeftXTop  	TADOQuery	Seltitre2
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataType
ftSmallintSize�Value   SQL.Stringsselect * from titrewhere (Typa=:a) Left�Top�  TAutoIncFieldSeltitre2Numero	FieldNameNumero  TFloatFieldSeltitre2Total	FieldNameTotal  TStringFieldSeltitre2Intitule	FieldNameIntituleSize2   	TADOQuery	Lecriture
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings!select * from Journal a, eltjrn bwhere (a.code=b.journal) Left.Top< TStringFieldLecriturecode	FieldNamecodeSize
  TStringFieldLecriturePeriode	FieldNamePeriodeSize
  TSmallintFieldLecritureJour	FieldNameJour  TStringFieldLecritureCodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldLecritureDateFact	FieldNameDateFact  TStringFieldLecritureNumFact	FieldNameNumFact  TStringFieldLecritureTiers	FieldNameTiers  TStringFieldLecritureSigleTaxe	FieldName	SigleTaxe  TStringFieldLecritureNumCHQ	FieldNameNumCHQ  
TDateFieldLecritureDateEsc	FieldNameDateEsc  TStringFieldLecriturejournal	FieldNamejournalSize
  TStringFieldLecritureDebit	FieldNameDebitSize  TIntegerFieldLecritureNumero	FieldNameNumero  TStringFieldLecritureCompte	FieldNameCompte  TLargeintFieldLecrituremontant	FieldNamemontantReadOnly	  TStringFieldLecritureLibelle	FieldNameLibelleSize(  TStringFieldLecritureContrepartie	FieldNameContrepartie  TSmallintFieldLecritureNbcontre	FieldNameNbcontre  TFloatFieldLecritureQte	FieldNameQte  TWideStringFieldLecritureTypX	FieldNameTypX	FixedChar	Size  TStringFieldLecrituretransferer	FieldName
transfererReadOnly	Size  TStringFieldLecritureizy	FieldNameizyReadOnly	Size   	TADOQuery
SourcePlan
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings.select * from NumCpt a, NumAdres b, NumDiver c1where (a.NumCpt=b.NumCpt) and (a.NumCpt=c.NumCpt) Left$Top TStringFieldSourcePlanNumCpt	FieldNameNumCpt  TStringFieldSourcePlanIntitule	FieldNameIntituleSized  TSmallintFieldSourcePlanDetail	FieldNameDetail  TSmallintFieldSourcePlanClasse	FieldNameClasse  TSmallintFieldSourcePlanGClasse	FieldNameGClasse  TIntegerFieldSourcePlanGGroupe	FieldNameGGroupe  TIntegerFieldSourcePlanOGroupe	FieldNameOGroupe  TStringFieldSourcePlanRS	FieldNameRS  TStringFieldSourcePlanNom	FieldNameNomSize2  TStringFieldSourcePlanAdresse	FieldNameAdresseSize  TStringFieldSourcePlanStatistique	FieldNameStatistique  TStringFieldSourcePlanQuittance	FieldName	Quittance  TStringFieldSourcePlanNIF	FieldNameNIF  
TDateFieldSourcePlanDateQuit	FieldNameDateQuit  TStringFieldSourcePlanNatureProd	FieldName
NatureProdSize(  TStringFieldSourcePlanCodeProd	FieldNameCodeProdSize
  TStringFieldSourcePlanCodeDecl	FieldNameCodeDeclSize
  TStringFieldSourcePlanAbrev	FieldNameAbrevSize  TStringFieldSourcePlanUniteProd	FieldName	UniteProdSize
  TStringFieldSourcePlanTP	FieldNameTP  
TDateFieldSourcePlanDateTP	FieldNameDateTP  TSmallintFieldSourcePlanExonere	FieldNameExonere  TStringFieldSourcePlantotalisateur	FieldNametotalisateurReadOnly	Size   	TADOQuery	SelArrete
ConnectionDaConnect.C_Compta
CursorTypectStaticAfterInsertSelArreteAfterInsertCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from arrete"where (periode=:a)and(journaux=:b) Left'Top< TWideStringFieldSelArretePeriode	FieldNamePeriode	FixedChar	  TWideStringFieldSelArreteJournaux	FieldNameJournaux	FixedChar	  TSmallintFieldSelArreteTransferer	FieldName
Transferer  TWideStringFieldSelArreteDernierNum	FieldName
DernierNum	FixedChar	Size
  TSmallintFieldSelArreteArreter	FieldNameArreter  TIntegerFieldSelArreteDerNumCHQ	FieldName	DerNumCHQ   	TADOQuery	DeleteDec
ConnectionDaConnect.C_ComptaCommandTimeout 
Parameters SQL.StringsDELETE FROM DecVente Left.Topu  	TADOQueryCompleterZero
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from consolidwhere compte=:a Left�Top�  TStringFieldCompleterZeroCOMPTE	FieldNameCOMPTE  TFloatFieldCompleterZeroDEBIT1	FieldNameDEBIT1   	TADOQuery
ZeroSiVide
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings	SELECT * FROM GroupCptWHERE ZeroSiVide<>0 Left�Top} TStringFieldZeroSiVideDebutCpt	FieldNameDebutCpt   	TADOQueryPropoRegltFact
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue  NamecDataTypeftFloatSize�Value   SQL.StringsSelect * from selJour/where (NumFact=:a)and(Compte=:b)and(Montant=:c) Left�Top TWideStringFieldPropoRegltFactNumFact	FieldNameNumFact	FixedChar	  TWideStringFieldPropoRegltFactCompte	FieldNameCompte	FixedChar	  TLargeintFieldPropoRegltFactmontant	FieldNamemontant  TWideStringFieldPropoRegltFactDebit	FieldNameDebit	FixedChar	Size  TIntegerFieldPropoRegltFactNumero	FieldNameNumero   	TADOQueryExistJournal
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect code from Journalwhere code=:a  Left�TopB  	TADOTablelstFrns
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 	TableNamelstFrnsLeft�Top�  TWideStringFieldlstFrnsStat	FieldNameStat  TWideStringField
lstFrnsNIF	FieldNameNIF  TWideStringField	lstFrnsRS	FieldNameRSSize2  TWideStringFieldlstFrnsAdresse	FieldNameAdresseSized  	TBCDField
lstFrnsTVA	FieldNameTVA	Precision  TWideStringFieldlstFrnsIntitule	FieldNameIntituleSize2  TWideStringFieldlstFrnsCompte	FieldNameCompte  TWideStringFieldlstFrnsDebit	FieldNameDebitSize   	TADOTable	lstClient
ConnectionDaConnect.C_Document
CursorTypectStaticCommandTimeout 	TableName	lstClientLeft�Top TWideStringFieldlstClientStat	FieldNameStat  TWideStringFieldlstClientNIF	FieldNameNIF  TWideStringFieldlstClientRS	FieldNameRSSize2  TWideStringFieldlstClientAdresse	FieldNameAdresseSized  	TBCDFieldlstClientTVA	FieldNameTVA	Precision  TWideStringFieldlstClientIntitule	FieldNameIntituleSize2  TWideStringFieldlstClientCompte	FieldNameCompte  TWideStringFieldlstClientDebit	FieldNameDebitSize   	TADOQueryQTotConsilid_1
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsQconsolidCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.StringsSelect * from TotConsolid1where compte=:a Left�Top� TWideStringFieldQTotConsilid_1Compte	FieldNameCompte  	TBCDFieldQTotConsilid_1TotDebit	FieldNameTotDebit	Precision  	TBCDFieldQTotConsilid_1TotCredit	FieldName	TotCredit	Precision   	TADOQuerySelGroupCpt
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamexDataType	ftIntegerSize�Value   SQL.Stringsselect * from GroupCptwhere numero=:x Left�Topx TStringFieldSelGroupCptIntitGroup	FieldName
IntitGroupSize2   	TADOQuery	ReportCpt
ConnectionDaConnect.C_ComptaCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.StringsEselect sum(MDebit) as RDebit, sum(MCredit) as RCredit from  ReportCpt!where (compte>=:a)and(compte<=:b) Left+Top TFloatFieldReportCptRDebit	FieldNameRDebit  TFloatFieldReportCptRCredit	FieldNameRCredit   	TADOQuery	Q_Cloture
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.StringsSelect * from journal"Where (Code>'CL') and (Code<'CLZ') Left$Top�  	TADOQuery
Q_ParamTVA
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
ParametersNamebDataTypeftStringSizeValue  NamecDataType	ftIntegerSizeValue  NameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from paramTVAwhere (Societe=:b)and (MoisDe=:c)and (MoisA=:a) LeftzTop� TWideStringFieldQ_ParamTVACody	FieldNameCodySize
  TFloatFieldQ_ParamTVAValeur	FieldNameValeur  TWideStringFieldQ_ParamTVASociete	FieldNameSocieteSize
  TWideStringFieldQ_ParamTVACodeDecl	FieldNameCodeDeclSize2  TIntegerFieldQ_ParamTVAMoisDe	FieldNameMoisDe  TIntegerFieldQ_ParamTVAMoisA	FieldNameMoisA   	TADOQueryEt_NouveauTVA
ConnectionDaConnect.C_ComptaCommandTimeout 
ParametersNamebDataTypeftStringSizeValue  NamecDataType	ftIntegerSizeValue  NamedDataType	ftIntegerSizeValue   SQL.Strings*select * from paramTVA x, TVADescription y(where (x.Cody=y.cody) and (CodeAdm>'00')and(x.Societe=:b)and (x.MoisDe=:c)and (x.MoisA=:d)order by  y.rang Left� Top� TWideStringFieldEt_NouveauTVACody	FieldNameCodySize
  TWideStringFieldEt_NouveauTVACodeDecl	FieldNameCodeDeclSize2  TFloatFieldEt_NouveauTVAValeur	FieldNameValeur  TWideStringFieldEt_NouveauTVASociete	FieldNameSocieteSize
  TIntegerFieldEt_NouveauTVARang	FieldNameRang  TWideStringFieldEt_NouveauTVADescription	FieldNameDescriptionSized  TWideStringFieldEt_NouveauTVACodeAdm	FieldNameCodeAdmSize
   	TADOQueryRubriqueTVA
ConnectionDaConnect.C_Compta
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect rubrique from paraDeclwhere parametre='TVA'group by rubriqueorder by rubrique Left'Top� TWideStringFieldRubriqueTVARubrique	FieldNameRubrique	FixedChar	Size
   	TADOQuery	qParaDecl
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsqParaDeclCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from paraDeclwhere rubrique=:a Left�Top� TWideStringFieldqParaDeclCompteDeDisplayWidth
	FieldNameCompteDe	FixedChar	  TStringField
qParaDeclaDisplayWidth	FieldKindfkCalculated	FieldNamea
Calculated	  TWideStringFieldqParaDeclCompteADisplayWidth
	FieldNameCompteA	FixedChar	  TWideStringFieldqParaDeclParametre	FieldName	ParametreVisible	FixedChar	Size
  TWideStringFieldqParaDeclRubrique	FieldNameRubriqueVisible	FixedChar	Size
   	TADOQuery
qListTiers
ConnectionDaConnect.C_DocumentCommandTimeout 
Parameters SQL.Stringsselect * from RembTVA2where Rubrique=:a Left�Top�  	TADOQuery	SelEltJrn
ConnectionDaConnect.C_Compta
CursorTypectStaticOnCalcFieldsSelEltJrnCalcFieldsCommandTimeout 
Parameters SQL.Stringsselect * from eltJrn Left.Top 
TDateFieldSelEltJrnDateFact	FieldNameDateFactVisible  
TDateFieldSelEltJrnDtEscDisplayLabelDate	FieldKindfkLookup	FieldNameDtEscLookupDataSetSpecial.JournalLookupKeyFieldsCodeLookupResultFieldDateEsc	KeyFieldsJournalLookup	  TStringFieldSelEltJrnNumFactDisplayWidth	FieldNameNumFact  TStringFieldSelEltJrnJournalDisplayWidth	FieldNameJournalSize
  TStringFieldSelEltJrnLibelleDisplayWidth(	FieldNameLibelleSize<  TFloatFieldSelEltJrnMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldSelEltJrnMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldSelEltJrnlettreDisplayWidth	FieldKindfkLookup	FieldNamelettreLookupDataSetSpecial.lettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldSelEltJrnCompte	FieldNameCompteVisible  TLargeintFieldSelEltJrnmontant	FieldNamemontant  TStringFieldSelEltJrnContrepartie	FieldNameContrepartieVisible  TSmallintFieldSelEltJrnNbcontre	FieldNameNbcontreVisible  TFloatFieldSelEltJrnQte	FieldNameQteVisible  TStringFieldSelEltJrnDebit	FieldNameDebitVisibleSize  TFloatFieldSelEltJrnColis	FieldNameColisVisible  TStringFieldSelEltJrnTypX	FieldNameTypXVisibleSize  TStringFieldSelEltJrnSigleTaxe	FieldName	SigleTaxeVisibleSize
  TIntegerFieldSelEltJrnNumero	FieldNameNumero  TStringFieldSelEltJrnizy	FieldNameizySize   	TADOQuery	ADOQuery1
ConnectionDaConnect.C_Document
CursorTypectStatic
Parameters SQL.Stringsselect * from eltJrn Left�Top� 
TDateFieldADOQuery1DateField	FieldNameDateFactVisible  TStringFieldADOQuery1StringFieldDisplayWidth	FieldNameNumFact  TStringFieldADOQuery1StringField2DisplayWidth	FieldNameJournalSize
  TStringFieldADOQuery1StringField3DisplayWidth(	FieldNameLibelleSize<  TFloatFieldADOQuery1FloatField	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldADOQuery1FloatField2	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldADOQuery1StringField4DisplayWidth	FieldKindfkLookup	FieldNamelettreLookupDataSetSpecial.lettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldADOQuery1StringField5	FieldNameCompteVisible  TFloatFieldADOQuery1FloatField3	FieldNameMontantVisible  TStringFieldADOQuery1StringField6	FieldNameContrepartieVisible  TSmallintFieldADOQuery1SmallintField	FieldNameNbcontreVisible  TFloatFieldADOQuery1FloatField4	FieldNameQteVisible  TStringFieldADOQuery1StringField7	FieldNameDebitVisibleSize  TFloatFieldADOQuery1FloatField5	FieldNameColisVisible  TStringFieldADOQuery1StringField8	FieldNameTypXVisibleSize  TStringFieldADOQuery1StringField9	FieldName	SigleTaxeVisibleSize
  TIntegerFieldADOQuery1IntegerField	FieldNameNumero  TStringFieldADOQuery1StringField10	FieldNameizySize   	TADOQueryBalance2
ConnectionDaConnect.C_Document
CursorTypectStaticOnCalcFieldsBalance2CalcFieldsCommandTimeout 
Parameters SQL.Stringsselect * from balance_g a'where (a.compte>='0')and(a.compte<'ZZ')and (a.periode<='2023/06')order by a.compte Left�Top�  TStringFieldStringField1	FieldNameCompte  TLargeintFieldLargeintField1	FieldNamemontant  TStringFieldStringField2	FieldNameDebitSize  TLargeintFieldLargeintField2	FieldKindfkCalculated	FieldNameBDebit
Calculated	  TLargeintFieldLargeintField3	FieldKindfkCalculated	FieldNameBCredit
Calculated	  TStringFieldStringField3	FieldNameJournalSize
  TStringFieldStringField4	FieldKindfkCalculated	FieldNameNumGene
Calculated	  TStringFieldStringField5DisplayWidthd	FieldKindfkCalculated	FieldName	IntitGeneSized
Calculated	  TStringFieldStringField6	FieldNamePeriodeSize
  TWideStringFieldWideStringField1	FieldNameCodeJrnx	FixedChar	Size
  TWideStringFieldWideStringField2	FieldNameIntitule	FixedChar	Sized  TWideStringFieldWideStringField3	FieldNamevrai_compte    