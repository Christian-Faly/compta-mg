�
 TFRESTORE 08  TPF0	TFRestoreFRestoreLeft� TopiWidth�Height� Caption0   TRansfert de données : diskette ====>> disk durColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight TSpeedButtonSpeedButton1LeftTop+Width� HeightCaption   TransférerOnClickSpeedButton1Click  TLabelLabel1Left� TopWidth5HeightCaptionDestination  TLabelLabel2LeftTopWidth� HeightCaption)   Insérer la disquette avant de poursuivre  TEditEdit1Left� Top,WidthHeightTabOrder   TBitBtnFermerLeft� TopPWidthKHeightCaptionFermerTabOrderKindbkClose  
TBatchMove
BatchMove1ModebatAppendUpdateLeftTop  TTableSJournalDatabaseNamea:	TableName
Journal.DBLeft�Top��   TStringFieldSJournalCode	FieldNameCodeSize
  TStringFieldSJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldSJournalJour	FieldNameJour  TStringFieldSJournalCodeJrnx	FieldNameCodeJrnxSize
  TBooleanFieldSJournalTransferer	FieldName
Transferer  TStringFieldSJournalTiers	FieldNameTiers  TBooleanFieldSJournalDeclarer	FieldNameDeclarer  TStringFieldSJournalNumCHQ	FieldNameNumCHQ  
TDateFieldSJournalDateEsc	FieldNameDateEsc  TDateTimeFieldSJournalDateSaisie	FieldName
DateSaisie  TStringField
SJournalA1	FieldNameA1Size  TStringField
SJournalA2	FieldNameA2Size  TStringField
SJournalA3	FieldNameA3Size  TStringField
SJournalA4	FieldNameA4Size  TStringField
SJournalA5	FieldNameA5Size  TStringField
SJournalA6	FieldNameA6Size   TTableSElementDatabaseNamea:	TableName	EltJrn.dbLeftWTop��   TStringFieldSElementJournal	FieldNameJournalSize
  TAutoIncFieldSElementNumero	FieldNameNumero  TStringFieldSElementDebit	FieldNameDebitSize  TStringFieldSElementCompte	FieldNameCompte  TCurrencyFieldSElementMontant	FieldNameMontant  TBooleanFieldSElementIzy	FieldNameIzy  TStringFieldSElementLibelle	FieldNameLibelleSize<  TStringFieldSElementContrepartie	FieldNameContrepartie  TSmallintFieldSElementNbcontre	FieldNameNbcontre  TFloatFieldSElementQte	FieldNameQte  
TDateFieldSElementDateFact	FieldNameDateFact  TStringFieldSElementNumFact	FieldNameNumFact  TFloatFieldSElementColis	FieldNameColis  TStringFieldSElementTypX	FieldNameTypXSize  TStringFieldSElementSigleTaxe	FieldName	SigleTaxeSize
   TTableDJournalDatabaseNamec:\CSC\Log\Exec\Compta\Data	TableName
Journal.DBLeft�Top��   TStringFieldDJournalCode	FieldNameCodeSize
  TStringFieldDJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldDJournalJour	FieldNameJour  TStringFieldDJournalCodeJrnx	FieldNameCodeJrnxSize
  TBooleanFieldDJournalTransferer	FieldName
Transferer  TStringFieldDJournalTiers	FieldNameTiers  TBooleanFieldDJournalDeclarer	FieldNameDeclarer  TStringFieldDJournalNumCHQ	FieldNameNumCHQ  
TDateFieldDJournalDateEsc	FieldNameDateEsc  TDateTimeFieldDJournalDateSaisie	FieldName
DateSaisie  TStringField
DJournalA1	FieldNameA1Size  TStringField
DJournalA2	FieldNameA2Size  TStringField
DJournalA3	FieldNameA3Size  TStringField
DJournalA4	FieldNameA4Size  TStringField
DJournalA5	FieldNameA5Size  TStringField
DJournalA6	FieldNameA6Size   TTableDElementDatabaseNamec:\CSC\Log\Exec\Compta\Data	TableName	EltJrn.dbLeft4Top TStringFieldDElementJournal	FieldNameJournalSize
  TAutoIncFieldDElementNumero	FieldNameNumero  TStringFieldDElementDebit	FieldNameDebitSize  TStringFieldDElementCompte	FieldNameCompte  TCurrencyFieldDElementMontant	FieldNameMontant  TBooleanFieldDElementIzy	FieldNameIzy  TStringFieldDElementLibelle	FieldNameLibelleSize<  TStringFieldDElementContrepartie	FieldNameContrepartie  TSmallintFieldDElementNbcontre	FieldNameNbcontre  TFloatFieldDElementQte	FieldNameQte  
TDateFieldDElementDateFact	FieldNameDateFact  TStringFieldDElementNumFact	FieldNameNumFact  TFloatFieldDElementColis	FieldNameColis  TStringFieldDElementTypX	FieldNameTypXSize  TStringFieldDElementSigleTaxe	FieldName	SigleTaxeSize
   TOpenDialogOpenDialog1Left@Top`  TQueryOJournalRequestLive	SQL.Stringsselect * from 'Journal.db'"where (CodeJrnx=:a)and(periode=:b) Left� Top	ParamDataDataType	ftUnknownNamea	ParamType	ptUnknown DataType	ftUnknownNameb	ParamType	ptUnknown    TQueryOElementRequestLive	SQL.StringsSelect * from 'EltJrn.db'#where (Journal>:a) and (Journal<:b) Left� Top	ParamDataDataType	ftUnknownNamea	ParamType	ptUnknown DataType	ftUnknownNameb	ParamType	ptUnknown    TQuery
SourcePlanDatabaseNamea:SQL.Strings=select * from 'NumCpt.db' a, 'NumAdres.db' b, 'NumDiver.db' c1where (a.NumCpt=b.NumCpt) and (a.NumCpt=c.NumCpt) LeftTop
 TStringFieldSourcePlanNumCpt	FieldNameNumCpt  TStringFieldSourcePlanIntitule	FieldNameIntituleSized  TSmallintFieldSourcePlanDetail	FieldNameDetail  TSmallintFieldSourcePlanClasse	FieldNameClasse  TSmallintFieldSourcePlanGClasse	FieldNameGClasse  TBooleanFieldSourcePlanExonere	FieldNameExonere  TBooleanFieldSourcePlanTotalisateur	FieldNameTotalisateur  TBooleanFieldSourcePlanIzy	FieldNameIzy  TIntegerFieldSourcePlanGGroupe	FieldNameGGroupe  TIntegerFieldSourcePlanOGroupe	FieldNameOGroupe  TStringFieldSourcePlanNumCpt_1	FieldNameNumCpt_1  TStringFieldSourcePlanRS	FieldNameRS  TStringFieldSourcePlanNom	FieldNameNomSize2  TStringFieldSourcePlanCP	FieldNameCPSize
  TStringFieldSourcePlanPays	FieldNamePays  TStringFieldSourcePlanBP	FieldNameBP  TStringFieldSourcePlanTel	FieldNameTelSize  TStringFieldSourcePlanFax	FieldNameFax  TStringFieldSourcePlanCptBq	FieldNameCptBqSize2  TStringFieldSourcePlanNII	FieldNameNII  TStringFieldSourcePlanDevise	FieldNameDevise  TStringFieldSourcePlanNumCpt_2	FieldNameNumCpt_2  TStringFieldSourcePlanStatistique	FieldNameStatistique  TStringFieldSourcePlanQuittance	FieldName	Quittance  TStringFieldSourcePlanNIF	FieldNameNIF  
TDateFieldSourcePlanDateQuit	FieldNameDateQuit  TStringFieldSourcePlanNatureProd	FieldName
NatureProdSize(  TStringFieldSourcePlanCodeProd	FieldNameCodeProdSize
  TStringFieldSourcePlanCodeDecl	FieldNameCodeDeclSize
  TStringFieldSourcePlanAbrev	FieldNameAbrevSize  TStringFieldSourcePlanUniteProd	FieldName	UniteProdSize
  TStringFieldSourcePlanAdresse	FieldNameAdresseSize   TDataSourceDataSource1DataSet
SourcePlanLeft� Top@   