�
 TFIMPORTAT 0�  TPF0
TFImportat	FImportatLeft1TophWidth�Height�Caption	FImportatColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight TSpeedButtonSpeedButton1LeftxTop`WidthiHeightCaptionlancer le transfertOnClickSpeedButton1Click  TSpeedButtonSpeedButton2LeftxTop8WidthiHeightCaptionLancer le transfert PlanOnClickSpeedButton2Click  TSpeedButtonSpeedButton3LeftxTop� WidthqHeightCaptionF   Mettre N° Facture et N° Chèque après modification de la  structureOnClickSpeedButton3Click  TSpeedButtonSpeedButton4Left�Top� WidthHeightOnClickSpeedButton4Click  TSpeedButtonSpeedButton5LeftxTop� WidthqHeightCaption   Mettre dt saisie = dt op° OnClickSpeedButton5Click  TDBGridDBGrid1LeftTop� WidthqHeight� 
DataSourceDataSource1TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style   TQueryOrigineDatabaseNamed:\Scim TamataveSQL.Stringsselect * from 'J0050399.dbf'order by operation Left� Top TStringFieldOrigineOPERATION	FieldName	OPERATIONSize  TStringFieldOrigineCODE_J	FieldNameCODE_JSize  
TDateFieldOrigineDATE	FieldNameDATE  TStringFieldOrigineLIBELLE	FieldNameLIBELLESize<  TStringFieldOrigineCOMPTE	FieldNameCOMPTESize
  TStringFieldOrigineCONTRE	FieldNameCONTRESize
  TFloatFieldOrigineDEBIT	FieldNameDEBIT  TFloatFieldOrigineCREDIT	FieldNameCREDIT  TStringFieldOriginePRODUIT	FieldNamePRODUITSize  TStringFieldOriginePRESTATION	FieldName
PRESTATIONSize  TStringFieldOrigineDECL	FieldNameDECLSize  TStringFieldOrigineSENS	FieldNameSENSSize  TStringFieldOriginePIECE	FieldNamePIECESize  TSmallintFieldOrigineLIGNE	FieldNameLIGNE  TStringFieldOrigineNUM_FAC	FieldNameNUM_FACSize
   TTableEltJrnDatabaseNamed:\temp	TableName	EltJrn.DBLeftTop* TStringFieldEltJrnJournal	FieldNameJournalSize
  TAutoIncFieldEltJrnNumero	FieldNameNumero  TStringFieldEltJrnDebit	FieldNameDebitSize  TStringFieldEltJrnCompte	FieldNameCompte  TFloatFieldEltJrnMontant	FieldNameMontant  TBooleanField	EltJrnIzy	FieldNameIzy  TStringFieldEltJrnLibelle	FieldNameLibelleSize<  TStringFieldEltJrnContrepartie	FieldNameContrepartie  TSmallintFieldEltJrnNbcontre	FieldNameNbcontre  TFloatField	EltJrnQte	FieldNameQte  
TDateFieldEltJrnDateFact	FieldNameDateFact  TStringFieldEltJrnNumFact	FieldNameNumFact  TFloatFieldEltJrnColis	FieldNameColis  TStringField
EltJrnTypX	FieldNameTypXSize  TStringFieldEltJrnSigleTaxe	FieldName	SigleTaxeSize
   TTableJournalDatabaseNamed:\temp	TableName
Journal.DBLeft0Top" TStringFieldJournalCode	FieldNameCodeSize
  TStringFieldJournalPeriode	FieldNamePeriodeSize
  TSmallintFieldJournalJour	FieldNameJour  TStringFieldJournalCodeJrnx	FieldNameCodeJrnxSize
  TBooleanFieldJournalTransferer	FieldName
Transferer  TStringFieldJournalTiers	FieldNameTiers  TBooleanFieldJournalDeclarer	FieldNameDeclarer  TStringFieldJournalNumCHQ	FieldNameNumCHQ  
TDateFieldJournalDateEsc	FieldNameDateEsc  TStringFieldJournalPoste	FieldNamePosteSize
  TStringFieldJournalProduit	FieldNameProduitSize
   TTableOriginePlanDatabaseNamea:	TableNameP_00503.000.dbfLeftHTopJ TStringFieldOriginePlanCOMPTE	FieldNameCOMPTESize
  TStringFieldOriginePlanINTITULE	FieldNameINTITULESize&   TTableNumCptDatabaseNamed:\Scim Majunga	TableName	NumCpt.DBLeft� TopJ TStringFieldNumCptNumCpt	FieldNameNumCpt  TStringFieldNumCptIntitule	FieldNameIntituleSized  TSmallintFieldNumCptDetail	FieldNameDetail  TSmallintFieldNumCptClasse	FieldNameClasse  TSmallintFieldNumCptGClasse	FieldNameGClasse  TBooleanFieldNumCptExonere	FieldNameExonere  TBooleanFieldNumCptTotalisateur	FieldNameTotalisateur  TBooleanField	NumCptIzy	FieldNameIzy  TIntegerFieldNumCptGGroupe	FieldNameGGroupe  TIntegerFieldNumCptOGroupe	FieldNameOGroupe   TQuerySelNumDiverRequestLive	SQL.Strings&Select * from 'c:\ScimMkr\NumDiver.db'where NumCpt=:a Left@TopJ	ParamDataDataTypeftStringNamea	ParamType	ptUnknown   TStringFieldSelNumDiverNumCpt	FieldNameNumCpt  TStringFieldSelNumDiverStatistique	FieldNameStatistique  TStringFieldSelNumDiverQuittance	FieldName	Quittance  TStringFieldSelNumDiverNIF	FieldNameNIF  
TDateFieldSelNumDiverDateQuit	FieldNameDateQuit  TStringFieldSelNumDiverUniteProd	FieldName	UniteProdSize
  TStringFieldSelNumDiverNatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDiverCodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDiverCodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDiverAbrev	FieldNameAbrevSize   TQuerySelNumAdresRequestLive	SQL.Strings&Select * from 'c:\ScimMkr\NumAdres.db'where NumCpt=:a LeftvTopK	ParamDataDataTypeftStringNamea	ParamType	ptUnknown   TStringFieldSelNumAdresNumCpt	FieldNameNumCpt  TStringFieldSelNumAdresRS	FieldNameRS  TStringFieldSelNumAdresNom	FieldNameNomSize2  TStringFieldSelNumAdresAdresse	FieldNameAdresseSize  TStringFieldSelNumAdresCP	FieldNameCPSize
  TStringFieldSelNumAdresPays	FieldNamePays  TStringFieldSelNumAdresBP	FieldNameBP  TStringFieldSelNumAdresTEL	FieldNameTELSize  TStringFieldSelNumAdresFax	FieldNameFax  TStringFieldSelNumAdresCptBQ	FieldNameCptBQSize2  TStringFieldSelNumAdresNII	FieldNameNII  TStringFieldSelNumAdresDEVISE	FieldNameDEVISE   TQueryselOrigineDiverSQL.Strings$select * from 'c:\ScimMkr\Stat2.dbf'where NSTAT=:a Left� TopJ	ParamDataDataTypeftFloatNamea	ParamType	ptUnknown   TFloatFieldselOrigineDiverNSTAT	FieldNameNSTAT  TFloatFieldselOrigineDiverNIF	FieldNameNIF  TStringFieldselOrigineDiverNOM	FieldNameNOMSizeH  TStringFieldselOrigineDiverADRESSSE	FieldNameADRESSSESize3   TTableNumAdresDatabaseName
c:\scimmkr	TableNameNumAdres.dbLeft@Top�   TTableNumDiverDatabaseName
c:\scimmkr	TableNameNumDiver.dbLeft�Top�   TDataSourceDataSource1Left0Toph   