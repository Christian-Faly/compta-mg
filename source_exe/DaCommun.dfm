�
 TCOMMUN 0S  TPF0TCommunCommunOldCreateOrder	LeftTop� Height�Widthc TDataSourceSourceDeviseDataSetDeviseLeft8Top@  TDataSource
SourceTaxeDataSetTaxeLeft�Top@  TDataSourceSourceSelSocieteDataSetSelSociete1LeftTop@  	TADOTableSociete
ConnectionDaConnect.C_Societe
CursorTypectStaticOnCalcFieldsSocieteCalcFieldsCommandTimeout TableDirect		TableNameSocieteLeft[Top TWideStringFieldSocieteCode	FieldNameCode	FixedChar	Size  TWideStringField	SocieteRS	FieldNameRS	FixedChar	Size2  TWideStringFieldSocieteChemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSocieteActivite	FieldNameActivite	FixedChar	Size2  TWideStringField
SocieteCAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSocieteStatut	FieldNameStatut	FixedChar	  TWideStringFieldSocieteStatis	FieldNameStatis	FixedChar	  TWideStringField
SocieteNIF	FieldNameNIF	FixedChar	  TWideStringField
SocieteATP	FieldNameATP	FixedChar	  TDateTimeFieldSocieteDtATP	FieldNameDtATP  TWideStringFieldSocieteQuit	FieldNameQuit	FixedChar	  TDateTimeFieldSocieteDtQuit	FieldNameDtQuit  TWideStringFieldSocieteRegistre	FieldNameRegistre	FixedChar	  TWideStringFieldSocieteCompteBQDisplayWidth	FieldNameCompteBQ	FixedChar	Size  TWideStringFieldSocieteCheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldSocieteExerFin	FieldNameExerFin  TWideStringFieldSocieteActivite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSocieteExistance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSocieteLogiciel	FieldNameLogiciel	FixedChar	  TStringFieldSocieteDateQuit	FieldKindfkCalculated	FieldNameDateQuit
Calculated	  TWideStringFieldSocieteMonnaieDisplayWidth	FieldNameMonnaieSize  TStringFieldSocieteDateATP	FieldKindfkCalculated	FieldNameDateATP
Calculated	  TStringFieldSocieteDateTP	FieldKindfkCalculated	FieldNameDateTP
Calculated	  TSmallintFieldSocietesiege	FieldNamesiege  TSmallintFieldSocietetransferer	FieldName
transferer  TSmallintFieldSocieteencours	FieldNameencours   	TADOTableLstCom
ConnectionDaConnect.C_Utilisateur
CursorTypectStaticCommandTimeout 	TableNameLstComLeft� Top�  TWideStringFieldLstComCOMMANDE	FieldNameCOMMANDESize<   	TADOTableTempon
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameTEMPONLeft� Top TWideStringFieldTemponSTRING1	FieldNameSTRING1	FixedChar	  TWideStringFieldTemponSTRING2	FieldNameSTRING2	FixedChar	Sized  TWideStringFieldTemponSTRING3	FieldNameSTRING3	FixedChar	Sized  TFloatFieldTemponREAL1	FieldNameREAL1  TFloatFieldTemponREAL2	FieldNameREAL2  TDateTimeFieldTemponDATE1	FieldNameDATE1  TDateTimeFieldTemponDATE2	FieldNameDATE2  TWideStringFieldTemponSTRING4	FieldNameSTRING4	FixedChar	Sized  TSmallintFieldTemponboolean1	FieldNameboolean1  TSmallintFieldTemponboolean2	FieldNameboolean2   	TADOQuerySelSociete1
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from societe where Code='1100102' Left�Top TWideStringFieldSelSociete1Code	FieldNameCode	FixedChar	Size  TWideStringFieldSelSociete1RS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSociete1Chemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSelSociete1Activite	FieldNameActivite	FixedChar	Size2  TWideStringFieldSelSociete1CAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSelSociete1Statut	FieldNameStatut	FixedChar	  TWideStringFieldSelSociete1Statis	FieldNameStatis	FixedChar	  TWideStringFieldSelSociete1NIF	FieldNameNIF	FixedChar	  TWideStringFieldSelSociete1ATP	FieldNameATP	FixedChar	  TDateTimeFieldSelSociete1DtATP	FieldNameDtATP  TWideStringFieldSelSociete1Quit	FieldNameQuit	FixedChar	  TDateTimeFieldSelSociete1DtQuit	FieldNameDtQuit  TWideStringFieldSelSociete1Registre	FieldNameRegistre	FixedChar	  TWideStringFieldSelSociete1CompteBQ	FieldNameCompteBQ	FixedChar	Size2  TWideStringFieldSelSociete1CheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSelSociete1ExerDeb	FieldNameExerDeb  TDateTimeFieldSelSociete1ExerFin	FieldNameExerFin  TWideStringFieldSelSociete1Activite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSelSociete1Existance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSelSociete1Logiciel	FieldNameLogiciel	FixedChar	  TSmallintFieldSelSociete1siege	FieldNamesiege  TSmallintFieldSelSociete1transferer	FieldName
transferer  TSmallintFieldSelSociete1encours	FieldNameencours   	TADOQuerySelSociete2AutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from SelSociete2order by code Left� Top TWideStringFieldSelSociete2Code	FieldNameCode	FixedChar	Size  TWideStringFieldSelSociete2RS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSociete2Chemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSelSociete2Activite	FieldNameActivite	FixedChar	Size2  TWideStringFieldSelSociete2CAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSelSociete2Statut	FieldNameStatut	FixedChar	  TWideStringFieldSelSociete2Statis	FieldNameStatis	FixedChar	  TWideStringFieldSelSociete2NIF	FieldNameNIF	FixedChar	  TWideStringFieldSelSociete2ATP	FieldNameATP	FixedChar	  TDateTimeFieldSelSociete2DtATP	FieldNameDtATP  TWideStringFieldSelSociete2Quit	FieldNameQuit	FixedChar	  TDateTimeFieldSelSociete2DtQuit	FieldNameDtQuit  TWideStringFieldSelSociete2Registre	FieldNameRegistre	FixedChar	  TWideStringFieldSelSociete2CompteBQ	FieldNameCompteBQ	FixedChar	Size2  TWideStringFieldSelSociete2CheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSelSociete2ExerDeb	FieldNameExerDeb  TDateTimeFieldSelSociete2ExerFin	FieldNameExerFin  TWideStringFieldSelSociete2Activite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSelSociete2Existance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSelSociete2Logiciel	FieldNameLogiciel	FixedChar	  TSmallintFieldSelSociete2siege	FieldNamesiege  TSmallintFieldSelSociete2transferer	FieldName
transferer  TSmallintFieldSelSociete2encours	FieldNameencours   	TADOQuerySelTaxeAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from Taxe Left� Topz TWideStringFieldSelTaxeSigle	FieldNameSigle	FixedChar	  TWideStringFieldSelTaxeDenomination	FieldNameDenomination	FixedChar	Size2  TWideStringFieldSelTaxeCollecte	FieldNameCollecte	FixedChar	  TWideStringFieldSelTaxeDeductible	FieldName
Deductible	FixedChar	  TFloatFieldSelTaxeTaux	FieldNameTaux   	TADOTableLieu
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameLieuLeft>Top TWideStringFieldLieuCode	FieldNameCodeSize  TWideStringFieldLieuLieu	FieldNameLieuSize2   	TADOTableTaxe
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameTAXELeft�Top TWideStringField	TaxeSigle	FieldNameSigle	FixedChar	  TWideStringFieldTaxeDenomination	FieldNameDenomination	FixedChar	Sized  TWideStringFieldTaxeCollecte	FieldNameCollecte	FixedChar	  TWideStringFieldTaxeDeductible	FieldName
Deductible	FixedChar	  TWideStringFieldTaxeCodeAdm	FieldNameCodeAdm  TFloatFieldTaxetaux	FieldNametaux   	TADOTableTauxTVA
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameTauxtvaLeft!Top TWideStringFieldTauxTVASigle	FieldNameSigle	FixedChar	  TFloatFieldTauxTVAIntdate	FieldNameIntdate  TDateTimeFieldTauxTVADateMod	FieldNameDateMod  TFloatFieldTauxTVATaux	FieldNameTaux   	TADOTableDevise
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameDEVISELeftmTop TWideStringFieldDeviseSigle	FieldNameSigle	FixedChar	Size
  TWideStringFieldDeviseDenomination	FieldNameDenomination	FixedChar	Size  TWideStringField
DevisePays	FieldNamePays	FixedChar	Size  TWideStringFieldDeviseContinent	FieldName	Continent	FixedChar	Size   	TADOTableCourssAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout IndexFieldNamesDEVISEMasterFieldsSigleMasterSourceSourceDevise	TableNameCourssLeft�Topz TWideStringFieldCourssDEVISE	FieldNameDEVISE	FixedChar	Size
  TFloatFieldCourssINTDATE	FieldNameINTDATE  TDateTimeFieldCourssDTMOD	FieldNameDTMOD  TFloatFieldCourssACHAT	FieldNameACHAT  TFloatFieldCourssVENTE	FieldNameVENTE   	TADOQueryQAdresse
ConnectionDaConnect.C_Societe
CursorTypectStaticOnCalcFieldsQAdresseCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Adressewhere codeSoc=:a LeftTop TWideStringField
QAdresseCP	FieldNameCP	FixedChar	Size
  TWideStringFieldQAdresseLotOuRue	FieldNameLotOuRue	FixedChar	Size2  TWideStringFieldQAdresseQuartier	FieldNameQuartier	FixedChar	  TStringFieldQAdresseLieu	FieldKindfkLookup	FieldNameLieuLookupDataSetLieuLookupKeyFieldsCodeLookupResultFieldLieu	KeyFieldsCPLookup	  TStringFieldQAdresseTotalDisplayWidth� 	FieldKindfkCalculated	FieldNameTotalSize� 
Calculated	  TWideStringField
QAdresseBP	FieldNameBP	FixedChar	   	TADOTableAcces
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameAccesLeft^Top�  TWideStringFieldAccesCodeUt	FieldNameCodeUt	FixedChar	Size
  TWideStringFieldAccesCommande	FieldNameCommande	FixedChar	Size<  TWideStringFieldAccesLogiciel	FieldNameLogiciel	FixedChar	Size   	TADOQueryQSocieteAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from societewhere code=:a Left[Topz TDateTimeFieldQSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldQSocieteExerFin	FieldNameExerFin   	TADOQuerySelUtilisat
ConnectionDaConnect.C_Utilisateur
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Utilisatwhere (code=:a) LeftTop�  TWideStringFieldSelUtilisatCode	FieldNameCode	FixedChar	Size
  TWideStringFieldSelUtilisatNom	FieldNameNom	FixedChar	Size2  TWideStringFieldSelUtilisatFonction	FieldNameFonction	FixedChar	Size  TWideStringFieldSelUtilisatMdp	FieldNameMdp	FixedChar	Size
  
TMemoFieldSelUtilisatNotes	FieldNameNotesBlobTypeftMemo   	TADOQuery	InfoSiege
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Consolidewhere agence=:a Left�Top TStringFieldInfoSiegeSiege	FieldNameSiegeSize
  TStringFieldInfoSiegeAgence	FieldNameAgenceSize
  TStringFieldInfoSiegeAdresSiege	FieldKindfkLookup	FieldName
AdresSiegeLookupDataSet	T_AdresseLookupKeyFieldsCodeSocLookupResultFieldLotOuRue	KeyFieldsSiegeSize2Lookup	  TStringFieldInfoSiegeCP	FieldKindfkLookup	FieldNameCPLookupDataSet	T_AdresseLookupKeyFieldsCodeSocLookupResultFieldCP	KeyFieldsSiegeSizeLookup	  TStringFieldInfoSiegeLotOuRue	FieldKindfkLookup	FieldNameLotOuRueLookupDataSet	T_AdresseLookupKeyFieldsCodeSocLookupResultFieldLotOuRue	KeyFieldsSiegeSize2Lookup	   	TADOQueryAdresse
ConnectionDaConnect.C_Societe
CursorTypectStaticOnCalcFieldsAdresseCalcFieldsCommandTimeout 
ParametersNamecSize�Value   SQL.Stringsselect * from adresse a, Lieu b$where (a.Cp=b.code)and(a.codeSoc=:c)  LeftlTop�  TWideStringFieldAdresseCodeSoc	FieldNameCodeSoc	FixedChar	  TWideStringField	AdresseCP	FieldNameCP	FixedChar	Size
  TWideStringFieldAdressePays	FieldNamePays	FixedChar	  TWideStringField	AdresseBP	FieldNameBP	FixedChar	  TWideStringField
AdresseTEL	FieldNameTEL	FixedChar	Size  TWideStringField
AdresseFax	FieldNameFax	FixedChar	  TWideStringFieldAdresseCptBQDisplayWidth	FieldNameCptBQ	FixedChar	Size  TWideStringFieldAdresseNumCpt	FieldNameNumCpt	FixedChar	  TWideStringField
AdresseNII	FieldNameNII	FixedChar	  TWideStringFieldAdresseDEVISEDisplayWidth	FieldNameDEVISE	FixedChar	Size  TWideStringFieldAdresseTel2	FieldNameTel2	FixedChar	  TWideStringFieldAdresseTel3	FieldNameTel3	FixedChar	  TWideStringFieldAdresseEmail	FieldNameEmail	FixedChar	Size  TWideStringFieldAdresseSiteWeb	FieldNameSiteWeb	FixedChar	Size  TWideStringFieldAdresseBanque	FieldNameBanque	FixedChar	Size2  TWideStringFieldAdresseLotOuRue	FieldNameLotOuRue	FixedChar	Size2  TWideStringFieldAdresseQuartier	FieldNameQuartier	FixedChar	  TWideStringFieldAdresseLieu	FieldNameLieuSize2  TStringFieldAdresseTotal	FieldKindfkCalculated	FieldNameTotalSizeK
Calculated	   	TADOTable	T_Adresse
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameAdresseLeft� Top�   	TADOQueryInterlocAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from interlocwhere CodeSoc=:a LeftmTopz TStringFieldInterlocCodeSoc	FieldNameCodeSoc  TStringFieldInterlocInterloc	FieldNameInterlocSize2  TStringFieldInterlocFonction	FieldNameFonction  TStringFieldInterlocTel	FieldNameTel  TStringFieldInterlocFax	FieldNameFax  TStringFieldInterlocInfo	FieldNameInfoSize  TStringFieldInterlocNumCpt	FieldNameNumCpt   	TADOTableRepos
ConnectionDaConnect.C_SocieteCommandTimeout Left[Top�   	TADOQuery	SelDeviseAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Coursswhere devise=:a Left� Topz TStringFieldSelDevisedevise	FieldNamedeviseSize
  TFloatFieldSelDeviseINTDATE	FieldNameINTDATE  
TDateFieldSelDeviseDTMOD	FieldNameDTMOD  TFloatFieldSelDeviseACHAT	FieldNameACHAT  TFloatFieldSelDeviseVENTE	FieldNameVENTE   	TADOQuerySelPostAnalAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from PostAnalwhere Numero=:a Left>Topz TStringFieldSelPostAnalIntitule	FieldNameIntituleSize  TWideStringFieldSelPostAnalnumero	FieldNamenumeroSize  TWideStringFieldSelPostAnalcodelieu	FieldNamecodelieuSize  TWideStringFieldSelPostAnalnivanal	FieldNamenivanal  TWideStringFieldSelPostAnalplananal	FieldNameplananal  TWideStringFieldSelPostAnaltyp	FieldNametyp  TWideStringFieldSelPostAnaldirection	FieldName	directionSize   	TADOTable
LstFichier
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableName
LstFichierLeftTop�  TWideStringFieldLstFichierNdf	FieldNameNdf	FixedChar	  TWideStringFieldLstFichierOrigine	FieldNameOrigine	FixedChar	Size2  TWideStringFieldLstFichierDescriptio	FieldName
DescriptioSize2   	TADOTable
Consolide1
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableName	ConsolideLeft� Top�  TStringFieldConsolide1Siege	FieldNameSiegeVisibleSize
  TStringFieldConsolide1Agence	FieldNameAgenceSize
  TStringFieldConsolide1Activite	FieldKindfkLookup	FieldNameActiviteLookupDataSetSocieteLookupKeyFieldsCodeLookupResultFieldActivite	KeyFieldsAgenceLookup	  TStringFieldConsolide1Nom	FieldKindfkLookup	FieldNameNomLookupDataSetSocieteLookupKeyFieldsCodeLookupResultFieldRS	KeyFieldsAgenceLookup	  TStringFieldConsolide1Chemin	FieldKindfkLookup	FieldNameCheminLookupDataSetSocieteLookupKeyFieldsCodeLookupResultFieldChemin	KeyFieldsAgenceSize� Lookup	   	TADOQueryQSocieteConsolidee
ConnectionDaConnect.C_Societe
CursorTypectStaticOnCalcFieldsQSocieteConsolideeCalcFieldsCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Strings7Select * from Consolide x, societe y, adresse z, lieu wIwhere (Agence=:a)and(x.siege=y.code)and(y.code=z.codesoc)and(z.cp=w.code) Left� Top�  TStringFieldQSocieteConsolideeSiege	FieldNameSiegeSize
  TStringFieldQSocieteConsolideeAgence	FieldNameAgenceSize
  TWideStringFieldQSocieteConsolideeCP	FieldNameCP	FixedChar	Size
  TWideStringFieldQSocieteConsolideeLotOuRue	FieldNameLotOuRue	FixedChar	Size2  TWideStringFieldQSocieteConsolideeQuartier	FieldNameQuartier	FixedChar	  TWideStringFieldQSocieteConsolideeLieu	FieldNameLieuSize2  TWideStringFieldQSocieteConsolideeBP	FieldNameBP	FixedChar	  TStringFieldQSocieteConsolideeTotal	FieldKindfkCalculated	FieldNameTotalSized
Calculated	   	TADOQuery
SelSociete
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from societe where Code=:a Left Top�  TWideStringFieldSelSocieteCode	FieldNameCode	FixedChar	Size  TWideStringFieldSelSocieteRS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSocieteChemin	FieldNameChemin	FixedChar	Size   TDataSourceSourceSociete1DataSetSelSociete1OnDataChangeSourceSociete1DataChangeLeftaTopA  	TADOQuery	ConsolideAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Strings$select * from Consolide x, societe y&where (x.siege=:a)and(x.agence=y.code)order by agence LeftTopz TWideStringFieldConsolideSiege	FieldNameSiegeVisible	FixedChar	Size
  TWideStringFieldConsolideAgence	FieldNameAgence	FixedChar	Size
  TWideStringFieldConsolideRS	FieldNameRS	FixedChar	Size2  TWideStringFieldConsolideChemin	FieldNameChemin	FixedChar	Size  TWideStringFieldConsolideCheminPrec	FieldName
CheminPrec	FixedChar	Size   	TADOQuerySuppConsolide
ConnectionDaConnect.C_SocieteCommandTimeout 
ParametersNamexDataTypeftStringSizeValue   SQL.Strings'delete * from Consolide where Agence=:x Left�Top�   	TADOQueryQLieuAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from lieuwhere code=:a Left�Topz TWideStringField	QLieuCode	FieldNameCodeSize  TWideStringField	QLieuLieu	FieldNameLieuSize2   	TADOTableTLieuAutoCalcFields
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 	TableNameLieuLeft!Topz  	TADOQueryQ_Aide
ConnectionDaConnect.C_ComptaCommandTimeout 
ParametersNameaDataTypeftStringSize
Value   SQL.Stringsselect * from Aidewhere Sur=:a Left>Top�   	TADOQueryTVAGenerale
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from Taxe   where (Sigle='Générale') Left�Top�  TWideStringFieldTVAGeneraleSigle	FieldNameSigle	FixedChar	  TWideStringFieldTVAGeneraleDenomination	FieldNameDenomination	FixedChar	Size2  TWideStringFieldTVAGeneraleCollecte	FieldNameCollecte	FixedChar	  TWideStringFieldTVAGeneraleDeductible	FieldName
Deductible	FixedChar	  TFloatFieldTVAGeneraleTaux	FieldNameTaux   	TADOQueryq_dernier_siege
ConnectionDaConnect.C_SocieteCommandTimeout 
Parameters LeftHTop�   	TADOQueryq_exercice_declare
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue  NamecDataTypeftStringSizeValue   SQL.Strings\   SELECT CASE WHEN substring(chemin from 5 for 4)= :a THEN 'Avant' ELSE 'Après' END exercice, code, rs, cheminFROM societeWHERE logiciel = 'Compta''AND SUBSTRING(chemin FROM  1 FOR 1)='s'(AND (SUBSTRING(chemin FROM 5 FOR 4)= :b &OR SUBSTRING(chemin FROM 5 FOR 4)= :c)ORDER BY code Left�Topx TWideStringFieldq_exercice_declareexercice	FieldNameexerciceReadOnly	Size
  TWideStringFieldq_exercice_declarecode	FieldNamecodeSize  TWideStringFieldq_exercice_declarers	FieldNamersSize2  TWideStringFieldq_exercice_declarecheminDisplayWidth	FieldNamecheminSize   TDataSourcesq_exercice_declareDataSetq_exercice_declareLeft�Top�   	TADOQueryq_exercice_conso
ConnectionDaConnect.C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.StringsSELECT code, rs, cheminFROM societeWHERE logiciel = 'Compta'AND RIGHT(chemin,4)=:aAND LEFT(chemin,1)= 's' ORDER BY code Left�Top�  TWideStringFieldq_exercice_consocode	FieldNamecodeSize  TWideStringFieldq_exercice_consors	FieldNamersSize2  TWideStringFieldq_exercice_consochemin	FieldNamecheminSize   TDataSourcesq_xercice_consoDataSetq_exercice_consoLeft�Top    