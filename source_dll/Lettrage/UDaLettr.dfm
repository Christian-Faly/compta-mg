�
 TDATATIERS 0��  TPF0
TDataTiers	DataTiersOldCreateOrder	OnCreateDataTiersCreateLeft� TopkHeight@Width TDataSourceSourceRegleLeftcTop�  TDataSourceSourceEcritureLeftTop�  TDataSourceSourceRJournalLeft�Top�  TQuerySelJournal1DatabaseNamed:\Scim TamataveRequestLive	SQL.Stringsselect * from Journal LeftmTop� TStringFieldSelJournal1Code	FieldNameCodeSize
  TStringFieldSelJournal1Periode	FieldNamePeriodeSize
  TSmallintFieldSelJournal1Jour	FieldNameJour  TStringFieldSelJournal1CodeJrnx	FieldNameCodeJrnxSize
  TBooleanFieldSelJournal1Transferer	FieldName
Transferer  TStringFieldSelJournal1Tiers	FieldNameTiers  TStringFieldSelJournal1NumCHQ	FieldNameNumCHQ  
TDateFieldSelJournal1DateEsc	FieldNameDateEsc  TDateTimeFieldSelJournal1DateSaisie	FieldName
DateSaisie   TQuerySelNumDivers1DatabaseNameC:\CSC\Log\Exec\Compta\dataRequestLive	SQL.Stringsselect * from 'NumDiver.db'where NumCpt=:a Left0Top�	ParamDataDataTypeftStringNamea	ParamType	ptUnknown   TStringFieldSelNumDivers1NumCpt	FieldNameNumCpt  TStringFieldSelNumDivers1Statistique	FieldNameStatistique  TStringFieldSelNumDivers1Quittance	FieldName	Quittance  TStringFieldSelNumDivers1NIF	FieldNameNIF  
TDateFieldSelNumDivers1DateQuit	FieldNameDateQuit  TStringFieldSelNumDivers1NatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDivers1CodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDivers1CodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDivers1Abrev	FieldNameAbrevSize   TQuerySelNumAdres1DatabaseNameC:\CSC\Log\Exec\Compta\dataRequestLive	SQL.Stringsselect * from 'NumAdres.db'where NumCpt=:a Left� Top�	ParamDataDataTypeftStringNamea	ParamType	ptUnknown   TStringFieldSelNumAdres1NumCpt	FieldNameNumCpt  TStringFieldSelNumAdres1RS	FieldNameRS  TStringFieldSelNumAdres1Nom	FieldNameNomSize2  TStringFieldSelNumAdres1Adresse	FieldNameAdresseSize  TStringFieldSelNumAdres1CP	FieldNameCPSize
  TStringFieldSelNumAdres1Pays	FieldNamePays  TStringFieldSelNumAdres1BP	FieldNameBP  TStringFieldSelNumAdres1TEL	FieldNameTELSize  TStringFieldSelNumAdres1Fax	FieldNameFax  TStringFieldSelNumAdres1CptBQ	FieldNameCptBQSize2  TStringFieldSelNumAdres1NII	FieldNameNII   TQueryElement1DatabaseNameC:\CSC\Log\Exec\Compta\dataRequestLive	SQL.Stringsselect * from 'eltjrn.db' Left,Top� TStringFieldElement1Journal	FieldNameJournalSize
  TStringFieldElement1Debit	FieldNameDebitSize  TIntegerFieldElement1Numero	FieldNameNumero  TStringFieldElement1Compte	FieldNameCompte  TFloatFieldElement1Montant	FieldNameMontant  TBooleanFieldElement1Izy	FieldNameIzy  TStringFieldElement1Libelle	FieldNameLibelleSize<  TStringFieldElement1Contrepartie	FieldNameContrepartie  TSmallintFieldElement1Nbcontre	FieldNameNbcontre  TFloatFieldElement1Qte	FieldNameQte  
TDateFieldElement1DateFact	FieldNameDateFact  TStringFieldElement1NumFact	FieldNameNumFact  TFloatFieldElement1Colis	FieldNameColis  TStringFieldElement1TypX	FieldNameTypXSize  TStringFieldElement1SigleTaxe	FieldName	SigleTaxeSize
   TQueryDernierNum1DatabaseNameC:\CSC\Log\Exec\Compta\dataRequestLive	SQL.Stringsselect * from 'journal.db'"where (codeJrnx=:a)and(periode=:b) Left� Top�	ParamDataDataTypeftStringNamea	ParamType	ptUnknown DataTypeftStringNameb	ParamType	ptUnknown   TStringFieldDernierNum1Code	FieldNameCodeSize
   TDataSourceDataSource1Left�Top�  TDataSourceSourceQTiersLeftTop�  TDataSourceSourceQInterlo1LeftoTop�  TADOConnection
C_Exercice	Connected	ConnectionStringDProvider=MSDASQL.1;Persist Security Info=False;Data Source=exercice;LoginPromptLeftTop/  	TADOQueryRJournal
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from Journal LeftdTop TStringFieldRJournalCode	FieldNameCodeSize
  TStringFieldRJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldRJournalJour	FieldNameJour  TStringFieldRJournalCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldRJournalTiers	FieldNameTiers  TStringFieldRJournalNumCHQ	FieldNameNumCHQ  
TDateFieldRJournalDateEsc	FieldNameDateEsc  TDateTimeFieldRJournalDateSaisie	FieldName
DateSaisie  TSmallintFieldRJournalDeclarer	FieldNameDeclarer  TStringFieldRJournaltransferer	FieldName
transfererSize   	TADOQueryRDernierLettre
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from DernierLettre Left� Top TWideStringFieldRDernierLettreDernier	FieldNameDernierSize�    	TADOQueryJournalActive	
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from Journal LeftTop TStringFieldJournalCode	FieldNameCodeSize
  TStringFieldJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldJournalJour	FieldNameJour  TStringFieldJournalCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldJournalTiers	FieldNameTiers  TStringFieldJournalNumCHQ	FieldNameNumCHQ  
TDateFieldJournalDateEsc	FieldNameDateEsc  TDateTimeFieldJournalDateSaisie	FieldName
DateSaisie  TSmallintFieldJournalDeclarer	FieldNameDeclarer  TStringFieldJournaltransferer	FieldName
transfererSize   	TADOQuery
SuiviTiersActive	
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Strings*select * from Journal a, EltJrn b, regleme Left�Top�  TIntegerFieldSuiviTiersNumero	FieldNameNumero  TStringFieldSuiviTiersPeriode	FieldNamePeriodeSize
  TSmallintFieldSuiviTiersJour	FieldNameJour  TStringFieldSuiviTiersCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldSuiviTiersLibelle	FieldNameLibelleSize(  TStringFieldSuiviTiersTiers	FieldNameTiers  TStringFieldSuiviTiersDebit	FieldNameDebitSize  TStringFieldSuiviTiersCompte	FieldNameCompte  TLargeintFieldSuiviTiersmontant	FieldNamemontantReadOnly	  TIntegerFieldSuiviTiersNumSource	FieldName	NumSource  TStringFieldSuiviTiersReference	FieldName	Reference  TSmallintFieldSuiviTiersRang	FieldNameRang  TSmallintFieldSuiviTiersSur	FieldNameSur  TFloatFieldSuiviTiersPourc	FieldNamePourc  
TDateFieldSuiviTiersEcheance	FieldNameEcheance  TFloatFieldSuiviTiersMontant_1	FieldName	Montant_1  TWideStringFieldSuiviTiersJournal	FieldNameJournal	FixedChar	Size
  TWideStringFieldSuiviTiersNumCHQ	FieldNameNumCHQ	FixedChar	  TDateTimeFieldSuiviTiersDateEsc	FieldNameDateEsc  TDateTimeFieldSuiviTiersDateSaisie	FieldName
DateSaisie  TWideStringFieldSuiviTiersA1	FieldNameA1	FixedChar	Size  TWideStringFieldSuiviTiersNumDest	FieldNameNumDest	FixedChar	Size
  TStringFieldSuiviTiersizy	FieldNameizyReadOnly	Size   	TADOQuery	QLettrage
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect * from Lettragewhere NumElt=:a Left`Top TIntegerFieldQLettrageNumElt	FieldNameNumElt  TStringFieldQLettrageLettre	FieldNameLettreSize   	TADOQueryRechPeriode
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Strings-select * from lettrage x, eltjrn y, journal z1where (x.Numelt=y.Numero ) and (y.Journal=z.Code)order by x.lettre, z.periode Left�Top TStringFieldRechPeriodeLettreDisplayWidth	FieldNameLettreSize  TStringFieldRechPeriodePeriodeDisplayWidth	FieldNamePeriodeSize
   	TADOQuery	SelNumCpt
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumCptwhere NumCpt=:a LeftTop TStringFieldSelNumCptNumCpt	FieldNameNumCpt  TStringFieldSelNumCptIntitule	FieldNameIntituleSized   	TADOQueryRRechLet
Connection
C_Exercice
CursorTypectStaticOnCalcFieldsRRechLetCalcFields
Parameters SQL.Strings	select * from  Apurementorder by DateEsc LeftVTop�  
TDateFieldRRechLetDateEsc	FieldNameDateEsc  TStringFieldRRechLetJournal	FieldNameJournalSize
  TStringFieldRRechLetNumFactDisplayWidth	FieldNameNumFact  TFloatFieldRRechLetMDebit	FieldKindfkCalculated	FieldNameMDebitDisplayFormat#,###
Calculated	  TFloatFieldRRechLetMCredit	FieldKindfkCalculated	FieldNameMCreditDisplayFormat#,###
Calculated	  TStringFieldRRechLetLettreDisplayWidth	FieldKindfkLookup	FieldNameLettreLookupDataSetlettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldRRechLetizy	FieldNameizyVisibleSize  TStringField	RRechLetX	FieldKindfkCalculated	FieldNameXSize
Calculated	  TStringFieldRRechLetLibel2DisplayWidth2	FieldKindfkCalculated	FieldNameLibel2Sized
Calculated	  TStringFieldRRechLetCompteDisplayWidth
	FieldNameCompte  TStringFieldRRechLetIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetNumCptLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteSize(Lookup	  TStringFieldRRechLetLibelle	FieldNameLibelleVisibleSize<  
TDateFieldRRechLetDateFact	FieldNameDateFactVisibleEditMask!99/99/00;1;_  TStringFieldRRechLetDebit	FieldNameDebitSize  TIntegerFieldRRechLetNumero	FieldNameNumero  TLargeintFieldRRechLetmontant	FieldNamemontant  TSmallintFieldRRechLetNbcontre	FieldNameNbcontre  TStringFieldRRechLetContrepartie	FieldNameContrepartie  TStringFieldRRechLetLContre	FieldKindfkCalculated	FieldNameLContre
Calculated	  TStringFieldRRechLetPeriode	FieldNamePeriodeSize
  TStringFieldRRechLetCodeJrnx	FieldNameCodeJrnxSize
  TSmallintFieldRRechLetJour	FieldNameJour  TSmallintFieldRRechLetTypJx	FieldKindfkLookup	FieldNameTypJxLookupDataSetJournauxLookupKeyFieldsCodeLookupResultFieldTyp	KeyFieldsCodeJrnxLookup	  TStringFieldRRechLetSigleTaxe	FieldName	SigleTaxeSize
  TSmallintFieldRRechLetTyp	FieldKindfkLookup	FieldNameTypLookupDataSetJournauxLookupKeyFieldsCodeLookupResultFieldTyp	KeyFieldsCodeJrnxLookup	  TFloatFieldRRechLetQte	FieldNameQte  TStringFieldRRechLetCode	FieldNameCodeSize
  TStringFieldRRechLetTiers	FieldNameTiers  TStringFieldRRechLetNumCHQ	FieldNameNumCHQ  TDateTimeFieldRRechLetDateSaisie	FieldName
DateSaisie  TStringField
RRechLetA1	FieldNameA1Size  TStringField
RRechLetA2	FieldNameA2Size  TStringField
RRechLetA3	FieldNameA3Size  TStringField
RRechLetA4	FieldNameA4Size  TStringField
RRechLetA5	FieldNameA5Size  TStringField
RRechLetA6	FieldNameA6Size  TFloatFieldRRechLetColis	FieldNameColis  TStringFieldRRechLetTypX	FieldNameTypXSize  TSmallintFieldRRechLetDeclarer	FieldNameDeclarer  TIntegerFieldRRechLetNumElt	FieldNameNumElt  TStringFieldRRechLetDaty	FieldKindfkCalculated	FieldNameDaty
Calculated	  TStringFieldRRechLettransferer	FieldName
transfererSize   	TADOQuerySuiviLet
Connection
C_Exercice
CursorTypectStatic
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings-select * from lettrage a, eltJrn b, Journal c(where (a.lettre=:x) and (b.debit=:y) and5           (a.NumElt=b.Numero) and (c.Code=b.Journal) Left\Top TStringFieldSuiviLetJournal	FieldNameJournalSize
  TStringFieldSuiviLetNumFactDisplayWidth	FieldNameNumFact  
TDateFieldSuiviLetDateFact	FieldNameDateFact  TLargeintFieldSuiviLetmontant	FieldNamemontantReadOnly	  TStringFieldSuiviLetlettre	FieldNamelettreSize  TStringFieldSuiviLetLibelle	FieldNameLibelleSize<  TStringFieldSuiviLetCompte	FieldNameCompte  TStringFieldSuiviLetdebit	FieldNamedebitSize  TIntegerFieldSuiviLetNumElt	FieldNameNumEltVisible  TIntegerFieldSuiviLetNumero	FieldNameNumero  TStringFieldSuiviLetCode	FieldNameCodeSize
  TStringFieldSuiviLetPeriode	FieldNamePeriodeSize
  TSmallintFieldSuiviLetJour	FieldNameJour  TStringFieldSuiviLetCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldSuiviLetSigleTaxe	FieldName	SigleTaxeSize
  TStringFieldSuiviLetizy	FieldNameizyReadOnly	Size  TStringFieldSuiviLettransferer	FieldName
transfererReadOnly	Size   	TADOQuery	NonLettre
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from  eltjrn  order by Compte, NumFact LeftZToph TStringFieldNonLettreJournal	FieldNameJournalSize
  TStringFieldNonLettreNumFactDisplayWidth	FieldNameNumFact  
TDateFieldNonLettreDateFact	FieldNameDateFact  TStringFieldNonLettreLettreDisplayWidth	FieldKindfkLookup	FieldNameLettreLookupDataSetlettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TLargeintFieldNonLettremontant	FieldNamemontant  TStringFieldNonLettreLibelle	FieldNameLibelleSize<  TStringFieldNonLettreDebit	FieldNameDebitSize  TStringFieldNonLettreCompte	FieldNameCompte  TStringFieldNonLettreContrepartie	FieldNameContrepartie  TSmallintFieldNonLettreNbcontre	FieldNameNbcontre  TFloatFieldNonLettreQte	FieldNameQte  TIntegerFieldNonLettreNumero	FieldNameNumero  TStringFieldNonLettreizy	FieldNameizySize   	TADOQueryModifPeriode
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from lettrage where lettre=:a Left�Top TStringFieldModifPeriodePeriodeLet	FieldName
PeriodeLetSize
   	TADOQuerySelLettrage
Connection
C_Exercice
CursorTypectStatic
ParametersNamebDataTypeftStringSizeValue   SQL.Stringsselect * from lettragewhere (Lettre=:b) Left�Topp TIntegerFieldSelLettrageNumElt	FieldNameNumElt  TStringFieldSelLettrageLettre	FieldNameLettreSize  TStringFieldSelLettrageDebit	FieldKindfkLookup	FieldNameDebitLookupDataSet
ToutEltJrnLookupKeyFieldsNumeroLookupResultFieldDebit	KeyFieldsNumEltSizeLookup	  TFloatFieldSelLettrageMontant	FieldKindfkLookup	FieldNameMontantLookupDataSet
ToutEltJrnLookupKeyFieldsNumeroLookupResultFieldMontant	KeyFieldsNumEltLookup	  TStringFieldSelLettrageMaxPerio	FieldKindfkLookup	FieldNameMaxPerioLookupDataSet
ToutEltJrnLookupKeyFieldsNumeroLookupResultFieldPeriode	KeyFieldsNumEltLookup	  TStringFieldSelLettragePeriodeLet	FieldName
PeriodeLetSize
  TStringFieldSelLettrageTypeLet	FieldNameTypeLetSize
   	TADOQuery
EltLettree
Connection
C_Exercice
CursorTypectStaticOnCalcFieldsEltLettreeCalcFields
ParametersNamexDataTypeftStringSizeValue  NameyDataTypeftStringSizeValue   SQL.Strings/select * from  journal a, eltjrn b, lettrage c 0where (a.code=b.journal) and (c.NumElt=b.numero)'    and (b.Compte>=:x)and(b.compte<=:y)2  order by b.Compte, c.lettre , b.Debit, a.periode LeftTop�  TStringFieldEltLettreePeriode	FieldNamePeriodeSize
  TStringFieldEltLettreeCompte	FieldNameCompte  TLargeintFieldEltLettreemontant	FieldNamemontantReadOnly	  TStringFieldEltLettreeLibelle	FieldNameLibelleSize<  
TDateFieldEltLettreeDateFact	FieldNameDateFact  TSmallintFieldEltLettreeJour	FieldNameJour  TStringFieldEltLettreeNumFact	FieldNameNumFact  TStringFieldEltLettreeLettre	FieldNameLettreSize  TStringFieldEltLettreeDebit	FieldNameDebitSize  TFloatFieldEltLettreeMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TFloatFieldEltLettreeMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldEltLettreeIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetNumCptLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteLookup	  TStringFieldEltLettreejournal	FieldNamejournalSize
  TStringFieldEltLettreeLContre	FieldKindfkCalculated	FieldNameLContre
Calculated	  TStringFieldEltLettreeContrepartie	FieldNameContrepartie  TSmallintFieldEltLettreeNbcontre	FieldNameNbcontre  TStringFieldEltLettreeCodeJrnx	FieldNameCodeJrnxSize
  TFloatFieldEltLettreeQte	FieldNameQteDisplayFormat#,###  TFloatFieldEltLettreeColis	FieldNameColis  TFloatFieldEltLettreePU	FieldKindfkCalculated	FieldNamePUDisplayFormat#,###
Calculated	  
TDateFieldEltLettreeDateEsc	FieldNameDateEsc  TStringFieldEltLettreeLibel2	FieldKindfkCalculated	FieldNameLibel2Size<
Calculated	  TSmallintFieldEltLettreeTyp	FieldKindfkLookup	FieldNameTypLookupDataSetJournauxLookupKeyFieldsCodeLookupResultFieldTyp	KeyFieldsCodeJrnxLookup	  TStringFieldEltLettreeSigleTaxe	FieldName	SigleTaxeSize
   	TADOQueryEcriture
Connection
C_Exercice
CursorTypectStaticCommandTimeout 
Parameters SQL.Strings!select * from Journal a, EltJrn b LeftTop�  TStringFieldEcritureCode	FieldNameCodeSize
  TStringFieldEcriturePeriode	FieldNamePeriodeSize
  TSmallintFieldEcritureJour	FieldNameJour  TStringFieldEcritureCodeJrnx	FieldNameCodeJrnxSize
  
TDateFieldEcritureDateFact	FieldNameDateFact  TStringFieldEcritureNumFact	FieldNameNumFact  TStringFieldEcritureJournal	FieldNameJournalSize
  TStringFieldEcritureDebit	FieldNameDebitSize  TIntegerFieldEcritureNumero	FieldNameNumero  TStringFieldEcritureCompte	FieldNameCompte  TLargeintFieldEcrituremontant	FieldNamemontantReadOnly	  TStringFieldEcritureIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetNumCptLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteLookup	  TStringFieldEcritureLettre	FieldKindfkLookup	FieldNameLettreLookupDataSetlettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldEcritureTiers	FieldNameTiers  TStringFieldEcritureLibelle	FieldNameLibelleSize<  TStringFieldEcrituretransferer	FieldName
transfererReadOnly	Size  TStringFieldEcritureizy	FieldNameizyReadOnly	Size   	TADOQueryElementActive	
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from eltjrn LeftdTop8 TStringFieldElementJournal	FieldNameJournalSize
  TStringFieldElementDebit	FieldNameDebitSize  TIntegerFieldElementNumero	FieldNameNumero  TStringFieldElementCompte	FieldNameCompte  TLargeintFieldElementmontant	FieldNamemontant  TStringFieldElementLibelle	FieldNameLibelleSize<  TStringFieldElementContrepartie	FieldNameContrepartie  TSmallintFieldElementNbcontre	FieldNameNbcontre  TFloatField
ElementQte	FieldNameQte  
TDateFieldElementDateFact	FieldNameDateFact  TStringFieldElementNumFact	FieldNameNumFact  TFloatFieldElementColis	FieldNameColis  TStringFieldElementTypX	FieldNameTypXSize  TStringFieldElementSigleTaxe	FieldName	SigleTaxeSize
  TStringField
Elementizy	FieldNameizySize   	TADOQuerySelNumAdresActive	
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumAdreswhere NumCpt=:a Left� Top8 TStringFieldSelNumAdresNumCpt	FieldNameNumCpt  TStringFieldSelNumAdresRS	FieldNameRS  TStringFieldSelNumAdresNom	FieldNameNomSize2  TStringFieldSelNumAdresAdresse	FieldNameAdresseSize  TStringFieldSelNumAdresCP	FieldNameCPSize
  TStringFieldSelNumAdresPays	FieldNamePays  TStringFieldSelNumAdresBP	FieldNameBP  TStringFieldSelNumAdresTEL	FieldNameTELSize  TStringFieldSelNumAdresFax	FieldNameFax  TStringFieldSelNumAdresCptBQ	FieldNameCptBQSize2  TStringFieldSelNumAdresNII	FieldNameNII   	TADOQuery
ToutEltJrnActive	
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from EltJrn LeftXTop8 TStringFieldToutEltJrnJournal	FieldNameJournalSize
  TIntegerFieldToutEltJrnNumero	FieldNameNumero  TStringFieldToutEltJrnDebit	FieldNameDebitSize  TStringFieldToutEltJrnCompte	FieldNameCompte  TLargeintFieldToutEltJrnmontant	FieldNamemontant  TStringFieldToutEltJrnLibelle	FieldNameLibelleSize<  TStringFieldToutEltJrnContrepartie	FieldNameContrepartie  TSmallintFieldToutEltJrnNbcontre	FieldNameNbcontre  TFloatFieldToutEltJrnQte	FieldNameQte  
TDateFieldToutEltJrnDateFact	FieldNameDateFact  TStringFieldToutEltJrnNumFact	FieldNameNumFact  TFloatFieldToutEltJrnColis	FieldNameColis  TStringFieldToutEltJrnTypX	FieldNameTypXSize  TStringFieldToutEltJrnSigleTaxe	FieldName	SigleTaxeSize
  TStringFieldToutEltJrnPeriode	FieldKindfkLookup	FieldNamePeriodeLookupDataSetJournalLookupKeyFieldsCodeLookupResultFieldPeriode	KeyFieldsJournalLookup	  TStringFieldToutEltJrnizy	FieldNameizySize   	TADOQuery
DernierNumActive	
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from journal"where (codeJrnx=:a)and(periode=:b) LeftTop8 TStringFieldDernierNumCode	FieldNameCodeSize
   	TADOQuerySelNumDiversActive	
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumDiverwhere NumCpt=:a Left`Top8 TStringFieldSelNumDiversNumCpt	FieldNameNumCpt  TStringFieldSelNumDiversStatistique	FieldNameStatistique  TStringFieldSelNumDiversQuittance	FieldName	Quittance  TStringFieldSelNumDiversNIF	FieldNameNIF  
TDateFieldSelNumDiversDateQuit	FieldNameDateQuit  TStringFieldSelNumDiversNatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDiversCodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDiversCodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDiversAbrev	FieldNameAbrevSize   	TADOQuery	SelEltJrn
Connection
C_Exercice
CursorTypectStaticOnCalcFieldsSelEltJrnCalcFields
Parameters SQL.Stringsselect * from eltJrn LeftTop8 
TDateFieldSelEltJrnDateFact	FieldNameDateFact  TStringFieldSelEltJrnNumFactDisplayWidth	FieldNameNumFact  TStringFieldSelEltJrnJournalDisplayWidth	FieldNameJournalSize
  TStringFieldSelEltJrnLibelleDisplayWidth(	FieldNameLibelleSize<  TLargeintFieldSelEltJrnMDebit	FieldKindfkCalculated	FieldNameMDebit
Calculated	  TLargeintFieldSelEltJrnMCredit	FieldKindfkCalculated	FieldNameMCredit
Calculated	  TStringFieldSelEltJrnlettreDisplayWidth	FieldKindfkLookup	FieldNamelettreLookupDataSetlettrageLookupKeyFieldsNumEltLookupResultFieldLettre	KeyFieldsNumeroLookup	  TStringFieldSelEltJrnCompte	FieldNameCompteVisible  TLargeintFieldSelEltJrnmontant	FieldNamemontant  TStringFieldSelEltJrnContrepartie	FieldNameContrepartieVisible  TSmallintFieldSelEltJrnNbcontre	FieldNameNbcontreVisible  TFloatFieldSelEltJrnQte	FieldNameQteVisible  TStringFieldSelEltJrnDebit	FieldNameDebitVisibleSize  TStringFieldSelEltJrnIntitule	FieldKindfkLookup	FieldNameIntituleLookupDataSetNumCptLookupKeyFieldsNumCptLookupResultFieldIntitule	KeyFieldsCompteVisibleLookup	  TFloatFieldSelEltJrnColis	FieldNameColisVisible  TStringFieldSelEltJrnTypX	FieldNameTypXVisibleSize  TStringFieldSelEltJrnSigleTaxe	FieldName	SigleTaxeVisibleSize
  TStringFieldSelEltJrnPeriodeLet	FieldKindfkLookup	FieldName
PeriodeLetLookupDataSetlettrageLookupKeyFieldsNumEltLookupResultField
PeriodeLet	KeyFieldsNumeroLookup	  TIntegerFieldSelEltJrnNumero	FieldNameNumero  TStringFieldSelEltJrnizy	FieldNameizySize   	TADOQuery
SelJournal
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from  Journal Left�Top8 TStringFieldSelJournalCode	FieldNameCodeSize
  TStringFieldSelJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldSelJournalJour	FieldNameJour  TStringFieldSelJournalCodeJrnx	FieldNameCodeJrnxSize
  TStringFieldSelJournalTiers	FieldNameTiers  TStringFieldSelJournalNumCHQ	FieldNameNumCHQ  
TDateFieldSelJournalDateEsc	FieldNameDateEsc  TDateTimeFieldSelJournalDateSaisie	FieldName
DateSaisie  TStringFieldSelJournaltransferer	FieldName
transfererSize   	TADOQuery
SelTypProd
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from TypProdwhere code=:a LeftTop8 TStringFieldSelTypProdMarque	FieldNameMarque  TStringFieldSelTypProdReference	FieldName	Reference  TStringFieldSelTypProdFamille	FieldNameFamilleSize  TStringFieldSelTypProdUniteX	FieldNameUniteXSize
  TStringFieldSelTypProdUniteCol	FieldNameUniteColSize
  TStringFieldSelTypProdcode	FieldNamecode  TStringFieldSelTypProdNature	FieldNameNatureSize   	TADOQuerySelLieu
Connection	C_Societe
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from lieuwhere code=:a  Left�Topp TStringFieldSelLieucode	FieldNamecodeSize  TStringFieldSelLieuLieu	FieldNameLieuSize2   	TADOQuery
SelAdresse
Connection	C_Societe
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Adressewhere codeSoc=:a Left�Top TStringFieldSelAdresseCodeSoc	FieldNameCodeSoc  TStringFieldSelAdresseCP	FieldNameCPSize
  TStringFieldSelAdressePays	FieldNamePays  TStringFieldSelAdresseBP	FieldNameBP  TStringFieldSelAdresseTEL	FieldNameTELSize  TStringFieldSelAdresseFax	FieldNameFax  TStringFieldSelAdresseCptBQ	FieldNameCptBQSize2  TStringFieldSelAdresseNumCpt	FieldNameNumCpt  TStringFieldSelAdresseNII	FieldNameNII  TStringFieldSelAdresseDEVISE	FieldNameDEVISE  TStringFieldSelAdresseTel2	FieldNameTel2  TStringFieldSelAdresseTel3	FieldNameTel3  TStringFieldSelAdresseEmail	FieldNameEmailSize  TStringFieldSelAdresseSiteWeb	FieldNameSiteWebSize  TStringFieldSelAdresseBanque	FieldNameBanqueSize2  TStringFieldSelAdresseLotOuRue	FieldNameLotOuRueSize2  TStringFieldSelAdresseQuartier	FieldNameQuartier   	TADOQuerySelTaxe
Connection	C_Societe
CursorTypectStatic
Parameters SQL.Stringsselect * from Taxe Left�Topp TStringFieldSelTaxeSigle	FieldNameSigle  TStringFieldSelTaxeDenomination	FieldNameDenominationSize2  TStringFieldSelTaxecollecte	FieldNamecollecte  TStringFieldSelTaxedeductible	FieldName
deductible  TFloatFieldSelTaxeTaux	FieldNameTaux   	TADOQuerySociete
Connection	C_Societe
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.StringsSelect * from Societewhere code=:a Left\Top8 TStringFieldSocietecode	FieldNamecodeSize  TStringFieldSocieteChemin	FieldNameCheminSize  TStringFieldSocieteActivite	FieldNameActiviteSize2  TStringField
SocieteCAP	FieldNameCAPSize  TStringFieldSocieteStatut	FieldNameStatut  TStringFieldSocieteStatis	FieldNameStatis  TStringField
SocieteNIF	FieldNameNIF  TStringField
SocieteATP	FieldNameATP  
TDateFieldSocieteDtATP	FieldNameDtATP  TStringFieldSocieteQuit	FieldNameQuit  
TDateFieldSocieteDtQuit	FieldNameDtQuit  TStringFieldSocieteRegistre	FieldNameRegistre  TStringFieldSocieteCompteBQ	FieldNameCompteBQSize2  TStringFieldSocieteCheminPrec	FieldName
CheminPrecSize  
TDateFieldSocieteExerDeb	FieldNameExerDeb  
TDateFieldSocieteExerFin	FieldNameExerFin  TStringField	SocieteRS	FieldNameRSSized  TWideStringFieldSocieteFiltreDisplayWidth	FieldNameFiltreSize  TSmallintFieldSocietesiege	FieldNamesiege  TSmallintFieldSocietetransferer	FieldName
transferer   TADOConnection	C_Societe	Connected	ConnectionStringDProvider=MSDASQL.1;Persist Security Info=False;Data Source=multisoc;LoginPromptLeftToph  	TADOQueryAfficher
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Strings"select * from eltjrn x, lettrage y*where (x.numero=y.NumElt)and (y.lettre=:a)  LeftTopp TStringFieldAfficherJournal	FieldNameJournalSize
  TStringFieldAfficherLibelle	FieldNameLibelleSize<  TLargeintFieldAffichermontant	FieldNamemontantReadOnly	  
TDateFieldAfficherDateFact	FieldNameDateFact   	TADOTableJournauxActive	
Connection
C_Exercice
CursorTypectStatic	TableNameJournauxLeft\Topp TStringFieldJournauxCode	FieldNameCode  TStringFieldJournauxIntitule	FieldNameIntituleSize2  TSmallintFieldJournauxTyp	FieldNameTyp  TStringFieldJournauxCompte	FieldNameCompte   	TADOTableNumCptActive	
Connection
C_Exercice
CursorTypectStatic	TableNameNumCptLeft� Topp TStringFieldNumCptNumCpt	FieldNameNumCpt  TStringFieldNumCptIntitule	FieldNameIntituleSized  TSmallintFieldNumCptDetail	FieldNameDetail  TSmallintFieldNumCptClasse	FieldNameClasse  TSmallintFieldNumCptGClasse	FieldNameGClasse  TIntegerFieldNumCptGGroupe	FieldNameGGroupe  TIntegerFieldNumCptOGroupe	FieldNameOGroupe  TSmallintFieldNumCptExonere	FieldNameExonere  TSmallintField	NumCptIzy	FieldNameIzy  TStringFieldNumCpttotalisateur	FieldNametotalisateurSize   	TADOTablelettrageActive	
Connection
C_Exercice
CursorTypectStatic	TableNamelettrageLeftTopp TIntegerFieldlettrageNumElt	FieldNameNumElt  TStringFieldlettrageLettre	FieldNameLettreSize  TStringFieldlettragePeriodeLet	FieldName
PeriodeLetSize
  TStringFieldlettrageTypeLet	FieldNameTypeLetSize
   	TADOTableTaxe
Connection	C_Societe
CursorTypectStatic	TableNameTAXELeftXTopp TStringField	TaxeSigle	FieldNameSigle  TStringFieldTaxeDenomination	FieldNameDenominationSize2  TStringFieldTaxeCollecte	FieldNameCollecte  TStringFieldTaxeDeductible	FieldName
Deductible  TFloatFieldTaxeTaux	FieldNameTaux   	TADOTableSociete1
Connection	C_Societe
CursorTypectStatic	TableNameSocieteLeftUTopp TStringFieldSociete1Code	FieldNameCodeSize  TStringFieldSociete1Chemin	FieldNameCheminSize  TStringFieldSociete1NIF	FieldNameNIF  TStringFieldSociete1ATP	FieldNameATP  
TDateFieldSociete1DtATP	FieldNameDtATP  TStringFieldSociete1Quit	FieldNameQuit  
TDateFieldSociete1DtQuit	FieldNameDtQuit  TStringFieldSociete1Registre	FieldNameRegistre  TStringFieldSociete1CompteBQ	FieldNameCompteBQSize2  TStringField
Societe1RS	FieldNameRSSized   	TADOTableLieuActive	
Connection	C_Societe
CursorTypectStatic	TableNameLieuLeft\Top�  TStringFieldLieuCode	FieldNameCodeSize  TStringFieldLieuLieu	FieldNameLieuSize2   	TADOTableTempon
Connection	C_Societe
CursorTypectStatic	TableNameTEMPONLeftTop TStringFieldTemponString1	FieldNameString1  TStringFieldTemponString2	FieldNameString2Sized  TFloatFieldTemponReal1	FieldNameReal1  TFloatFieldTemponReal2	FieldNameReal2  
TDateFieldTemponDATE1	FieldNameDATE1  
TDateFieldTemponDATE2	FieldNameDATE2  TStringFieldTemponSTRING3	FieldNameSTRING3Sized  TStringFieldTemponSTRING4	FieldNameSTRING4Sized  TSmallintFieldTemponboolean1	FieldNameboolean1  TSmallintFieldTemponboolean2	FieldNameboolean2   	TADOTableEltSuivi
Connection
C_Exercice
CursorTypectStatic	TableNameEltJrnLeftXTop TStringFieldEltSuiviDebit	FieldNameDebitSize  TAutoIncFieldEltSuiviNumero	FieldNameNumero  TStringFieldEltSuiviCompte	FieldNameCompte  TLargeintFieldEltSuivimontant	FieldNamemontant  TStringFieldEltSuiviJournal	FieldNameJournalSize
  TStringFieldEltSuiviizy	FieldNameizySize   	TADOTableReposLeftTop�   	TADOQuerySuppLettrage
Connection
C_Exercice
ParametersNamexDataTypeftStringSizeValue   SQL.StringsDELETEFROM lettrageWHERE Lettre=:x Left�Top8  	TADOQueryTLettre
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.StringsDselect lettre,debit, sum(Montant) as Total from lettrage a, eltjrn bwhere a.NumElt=b.Numerogroup by lettre,debit order by lettre,debit LeftTop�  TWideStringFieldTLettrelettre	FieldNamelettre	FixedChar	Size  TWideStringFieldTLettredebit	FieldNamedebit	FixedChar	Size  	TBCDFieldTLettreTotal	FieldNameTotal	Precision   	TADOQueryRPropoEcriture
Connection
C_Exercice
CursorTypectStaticOnCalcFieldsRPropoEcritureCalcFields
ParametersNameaDataTypeftStringSizeValue   SQL.Strings	SELECT * FROM PropoEcriture WHERE (compte=:a) and,           ((lettre Is null)or(lettre='X')) ORDER BY DateFact Left�Top�  TDateTimeFieldRPropoEcritureDateFactDisplayWidth
	FieldNameDateFact  TWideStringFieldRPropoEcritureNumFactDisplayWidth
	FieldNameNumFact	FixedChar	  TWideStringFieldRPropoEcritureJournalDisplayWidth	FieldNameJournal	FixedChar	Size
  TWideStringFieldRPropoEcritureLibelleDisplayWidth2	FieldNameLibelle	FixedChar	Size<  TWideStringFieldRPropoEcritureDebit	FieldNameDebitVisible	FixedChar	Size  TLargeintFieldRPropoEcrituremontant	FieldNamemontant  TWideStringFieldRPropoEcritureLettre	FieldNameLettre	FixedChar	Size  TIntegerFieldRPropoEcritureNumero	FieldNameNumeroVisible  TIntegerFieldRPropoEcritureNumElt	FieldNameNumEltVisible  TWideStringFieldRPropoEcritureCompte	FieldNameCompteVisible	FixedChar	  TFloatFieldRPropoEcritureQte	FieldNameQteVisible  TFloatFieldRPropoEcritureMDebit	FieldKindfkCalculated	FieldNameMDebitDisplayFormat#,##0
Calculated	  TFloatFieldRPropoEcritureMCredit	FieldKindfkCalculated	FieldNameMCreditDisplayFormat#,##0
Calculated	   	TADOTableRCalculLettre_X_tal
Connection
C_Exercice
CursorTypectStatic	TableNameCalculLettre_XLeftTop TLargeintFieldRCalculLettre_X_taltotal	FieldNametotal  TLargeintFieldRCalculLettre_X_talmdebit	FieldNamemdebit  TLargeintFieldRCalculLettre_X_talmcredit	FieldNamemcredit   	TADOQuerySuppToutLettre
Connection
C_Exercice
Parameters SQL.StringsDELETEFROM lettrage LeftmTop�   	TADOQueryEnleveLettre
Connection
C_Exercice
ParametersNamexDataTypeftStringSizeValue   SQL.StringsDELETEFROM lettrageWHERE lettrage.NumElt=:x Left� Top�   	TADOQuerySelLettreNumero
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataType	ftIntegerSize�Value   SQL.Stringsselect lettre from lettragewhere numElt=:a LeftTop�  TWideStringFieldSelLettreNumerolettre	FieldNamelettre	FixedChar	Size   	TADOQueryMettreIzyFalse
Connection
C_Exercice
Parameters SQL.StringsUPDATE EltJrn SET Izy = False LeftbTop�   	TADOTable
RCalculIzy
Connection
C_Exercice
CursorTypectStatic	TableName	CalculIzyLeft�Top�  TFloatFieldRCalculIzyTotal	FieldNameTotal  TFloatFieldRCalculIzyMDebit	FieldNameMDebit  TFloatFieldRCalculIzyMCredit	FieldNameMCredit   	TADOQueryRLettrageManuel
Connection
C_Exercice
ParametersNameXDataTypeftStringSizeValue  NameYDataTypeftStringSizeValue  NameZDataTypeftStringSizeValue   SQL.Strings<INSERT INTO lettrage ( NumElt, Lettre, PeriodeLet, TypeLet )$SELECT ElementIzy.Numero, :X, :Y, :ZFROM ElementIzy; LeftTop  	TADOTableRElementIzy
Connection
C_Exercice
CursorTypectStatic	TableName
ElementIzyLeftXTop TWideStringFieldRElementIzyPeriode	FieldNamePeriode	FixedChar	Size
   	TADOQueryRIncreEltJrnActive	
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from IncreEltJrn LeftTopX TIntegerFieldRIncreEltJrnDernierNum	FieldName
DernierNum   	TADOTableRLettreNonValideActive	
Connection
C_Exercice
CursorTypectStatic	TableNameVerifierLettreLeftlTopX TFloatFieldRLettreNonValideDifference	FieldName
Difference  TWideStringFieldRLettreNonValideLettre	FieldNameLettre	FixedChar	Size   	TADOQueryQLettrageAutoActive	
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from LettrageAuto!where (Compte>=:a)and(Compte<=:b)order by expr1 LeftTopX TIntegerFieldQLettrageAutoNumero	FieldNameNumero  TWideStringFieldQLettrageAutoNumFact	FieldNameNumFact	FixedChar	  TWideStringFieldQLettrageAutoExpr1	FieldNameExpr1Size�   TWideStringFieldQLettrageAutoCompte	FieldNameCompte	FixedChar	   	TADOTableListeNonValideActive	
Connection
C_Exercice
CursorTypectStatic	TableNameListeNonValideLeft� TopX  	TADOTableNumeroNouvElt
Connection
C_Exercice	TableNameNumeroNouvEltLeft_TopX TIntegerFieldNumeroNouvEltNum	FieldNameNum   	TADOTabledoublonsEltJrn
Connection
C_Exercice
CursorTypectStatic	TableNamedoublonsEltJrnLeft�TopX TIntegerFielddoublonsEltJrnNumero	FieldNameNumero   	TADOQueryMAJIzy
Connection
C_Exercice
CursorTypectStatic
ParametersNamexDataType	ftIntegerSize�Value   SQL.Stringsselect * from EltJrnwhere Numero=:x LeftXTop�  TIntegerFieldMAJIzyNumero	FieldNameNumero  TStringField	MAJIzyizy	FieldNameizySize   	TADOQueryLettrer
Connection
C_Exercice
ParametersNamelDataTypeftStringSize
Value  NamepDataTypeftStringSizeValue  NameEDataTypeftStringSize2Value   SQL.Strings<INSERT INTO lettrage ( Lettre, NumElt, PeriodeLet, TypeLet )<SELECT :l AS Expr2, Numero, :p  AS Expr3, 'Automat' AS Expr4FROM LettrageAutoWHERE Expr1=:E LeftTopX  	TADOQueryRCalculLettre_X
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.StringsHSELECT Sum(CASE WHEN Debit='D'THEN Montant ELSE -Montant END) AS Total, <Sum(CASE WHEN Debit='D' THEN Montant ELSE 0 END) AS MDebit, <Sum(CASE WHEN Debit<>'D' THEN Montant ELSE 0 END) AS MCreditFROM EltJrn 6INNER JOIN lettrage ON EltJrn.Numero = lettrage.NumEltWHERE lettrage.Lettre='X'; Left`Top�  TFloatFieldRCalculLettre_XTotal	FieldNameTotal  TFloatFieldRCalculLettre_XMDebit	FieldNameMDebit  TFloatFieldRCalculLettre_XMCredit	FieldNameMCredit   	TADOQuery	ADOQuery1
Connection
C_Exercice
ParametersNameaSize�Value   SQL.Stringsselect intitule From numcptwhere numcpt=:a Left�Top@   