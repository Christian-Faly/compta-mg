�
 TCOMMUN 0J  TPF0TCommunCommunOldCreateOrder	TopBHeightpWidth TDataSourceSourceSelSocieteDataSetSelSociete1LeftPTop8  	TADOTableSociete
Connection
C_MultiSoc
CursorTypectStaticOnCalcFieldsSocieteCalcFields	TableNamesocieteLeft� Top TWideStringFieldSocieteCode	FieldNameCodeSize  TWideStringField	SocieteRS	FieldNameRSSize2  TWideStringFieldSocieteChemin	FieldNameCheminSize  TWideStringFieldSocieteActivite	FieldNameActiviteSize2  TWideStringField
SocieteCAP	FieldNameCAPSize  TWideStringFieldSocieteStatut	FieldNameStatut  TWideStringFieldSocieteStatis	FieldNameStatis  TWideStringField
SocieteNIF	FieldNameNIF  TWideStringField
SocieteATP	FieldNameATP  TDateTimeFieldSocieteDtATP	FieldNameDtATP  TWideStringFieldSocieteQuit	FieldNameQuit  TDateTimeFieldSocieteDtQuit	FieldNameDtQuit  TWideStringFieldSocieteRegistre	FieldNameRegistre  TWideStringFieldSocieteCompteBQ	FieldNameCompteBQSize2  TSmallintFieldSocieteSiege	FieldNameSiege  TSmallintFieldSocieteTransferer	FieldName
Transferer  TWideStringFieldSocieteCheminPrec	FieldName
CheminPrecSize  TDateTimeFieldSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldSocieteExerFin	FieldNameExerFin  TSmallintFieldSocieteEnCours	FieldNameEnCours  TWideStringFieldSocieteActivite2	FieldName	Activite2Size2  TWideStringFieldSocieteExistance	FieldName	ExistanceSize2  TWideStringFieldSocieteLogiciel	FieldNameLogiciel  TWideStringFieldSocieteFiltre	FieldNameFiltre  TWideStringFieldSocieteTypeBD	FieldNameTypeBD  TWideStringFieldSocieteMonnaie	FieldNameMonnaieSize
  TSmallintFieldSocieteCloturee	FieldNameCloturee  TStringFieldSocieteDateTP	FieldKindfkCalculated	FieldNameDateTPSize2
Calculated	  TStringFieldSocieteDateQuit	FieldKindfkCalculated	FieldNameDateQuit
Calculated	   	TADOTableTempon
Connection
C_MultiSoc
CursorTypectStatic	TableNameTEMPONLeft�Top TWideStringFieldTemponSTRING1	FieldNameSTRING1Size�   TWideStringFieldTemponSTRING2	FieldNameSTRING2Size�   TWideStringFieldTemponSTRING3	FieldNameSTRING3Size�   TFloatFieldTemponREAL1	FieldNameREAL1  TFloatFieldTemponREAL2	FieldNameREAL2  TSmallintFieldTemponBOOLEAN1	FieldNameBOOLEAN1  TSmallintFieldTemponBOOLEAN2	FieldNameBOOLEAN2  TDateTimeFieldTemponDATE1	FieldNameDATE1  TDateTimeFieldTemponDATE2	FieldNameDATE2  TWideStringFieldTemponSTRING4	FieldNameSTRING4Size�    	TADOQuerySelSociete1
Connection
C_MultiSoc
CursorTypectStatic
Parameters SQL.Stringsselect * from societe where Code='1100102' Left�Top@ TWideStringFieldSelSociete1Code	FieldNameCode	FixedChar	Size  TWideStringFieldSelSociete1RS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSociete1Chemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSelSociete1Activite	FieldNameActivite	FixedChar	Size2  TWideStringFieldSelSociete1CAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSelSociete1Statut	FieldNameStatut	FixedChar	  TWideStringFieldSelSociete1Statis	FieldNameStatis	FixedChar	  TWideStringFieldSelSociete1NIF	FieldNameNIF	FixedChar	  TWideStringFieldSelSociete1ATP	FieldNameATP	FixedChar	  TDateTimeFieldSelSociete1DtATP	FieldNameDtATP  TWideStringFieldSelSociete1Quit	FieldNameQuit	FixedChar	  TDateTimeFieldSelSociete1DtQuit	FieldNameDtQuit  TWideStringFieldSelSociete1Registre	FieldNameRegistre	FixedChar	  TWideStringFieldSelSociete1CompteBQ	FieldNameCompteBQ	FixedChar	Size2  TBooleanFieldSelSociete1Siege	FieldNameSiege  TBooleanFieldSelSociete1Transferer	FieldName
Transferer  TWideStringFieldSelSociete1CheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSelSociete1ExerDeb	FieldNameExerDeb  TDateTimeFieldSelSociete1ExerFin	FieldNameExerFin  TBooleanFieldSelSociete1EnCours	FieldNameEnCours  TWideStringFieldSelSociete1Activite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSelSociete1Existance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSelSociete1Logiciel	FieldNameLogiciel	FixedChar	   	TADOQuerySelSociete2
Connection
C_MultiSoc
CursorTypectStatic
Parameters SQL.Stringsselect * from SelSociete2order by code LeftPTop( TWideStringFieldSelSociete2Code	FieldNameCode	FixedChar	Size  TWideStringFieldSelSociete2RS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSociete2Chemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSelSociete2Activite	FieldNameActivite	FixedChar	Size2  TWideStringFieldSelSociete2CAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSelSociete2Statut	FieldNameStatut	FixedChar	  TWideStringFieldSelSociete2Statis	FieldNameStatis	FixedChar	  TWideStringFieldSelSociete2NIF	FieldNameNIF	FixedChar	  TWideStringFieldSelSociete2ATP	FieldNameATP	FixedChar	  TDateTimeFieldSelSociete2DtATP	FieldNameDtATP  TWideStringFieldSelSociete2Quit	FieldNameQuit	FixedChar	  TDateTimeFieldSelSociete2DtQuit	FieldNameDtQuit  TWideStringFieldSelSociete2Registre	FieldNameRegistre	FixedChar	  TWideStringFieldSelSociete2CompteBQ	FieldNameCompteBQ	FixedChar	Size2  TBooleanFieldSelSociete2Siege	FieldNameSiege  TBooleanFieldSelSociete2Transferer	FieldName
Transferer  TWideStringFieldSelSociete2CheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSelSociete2ExerDeb	FieldNameExerDeb  TDateTimeFieldSelSociete2ExerFin	FieldNameExerFin  TBooleanFieldSelSociete2EnCours	FieldNameEnCours  TWideStringFieldSelSociete2Activite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSelSociete2Existance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSelSociete2Logiciel	FieldNameLogiciel	FixedChar	   	TADOTableLieu
Connection
C_MultiSoc
CursorTypectStatic	TableNameLieuLeft`Top TWideStringFieldLieuCode	FieldNameCodeSize  TWideStringFieldLieuLieu	FieldNameLieuSize2   	TADOQueryQAdresse
Connection
C_MultiSoc
CursorTypectStaticOnCalcFieldsQAdresseCalcFields
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from adressewhere codeSoc=:a LeftPTop TWideStringField
QAdresseCP	FieldNameCP	FixedChar	Size
  TWideStringFieldQAdresseLotOuRue	FieldNameLotOuRue	FixedChar	Size2  TWideStringFieldQAdresseQuartier	FieldNameQuartier	FixedChar	  TWideStringField
QAdresseBP	FieldNameBP	FixedChar	  TWideStringFieldQAdresseCodeSoc	FieldNameCodeSoc  TWideStringFieldQAdressePays	FieldNamePays  TWideStringFieldQAdresseTEL	FieldNameTELSize  TWideStringFieldQAdresseFax	FieldNameFax  TWideStringFieldQAdresseCptBQ	FieldNameCptBQSize2  TWideStringFieldQAdresseNumCpt	FieldNameNumCpt  TWideStringFieldQAdresseNII	FieldNameNII  TWideStringFieldQAdresseDEVISE	FieldNameDEVISE  TWideStringFieldQAdresseTel2	FieldNameTel2  TWideStringFieldQAdresseTel3	FieldNameTel3  TWideStringFieldQAdresseEmail	FieldNameEmailSize  TWideStringFieldQAdresseSiteWeb	FieldNameSiteWebSize  TWideStringFieldQAdresseBanque	FieldNameBanqueSize2  TStringFieldQAdresseTotal	FieldKindfkCalculated	FieldNameTotalSize� 
Calculated	   	TADOQueryqSociete
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from societewhere code=:a LeftpTopx TWideStringFieldqSocieteCode	FieldNameCodeSize  TWideStringField
qSocieteRS	FieldNameRSSize2  TWideStringFieldqSocieteChemin	FieldNameCheminSize  TWideStringFieldqSocieteActivite	FieldNameActiviteSize2  TWideStringFieldqSocieteCAP	FieldNameCAPSize  TWideStringFieldqSocieteStatut	FieldNameStatut  TWideStringFieldqSocieteStatis	FieldNameStatis  TWideStringFieldqSocieteNIF	FieldNameNIF  TWideStringFieldqSocieteATP	FieldNameATP  TDateTimeFieldqSocieteDtATP	FieldNameDtATP  TWideStringFieldqSocieteQuit	FieldNameQuit  TDateTimeFieldqSocieteDtQuit	FieldNameDtQuit  TWideStringFieldqSocieteRegistre	FieldNameRegistre  TWideStringFieldqSocieteCompteBQ	FieldNameCompteBQSize2  TSmallintFieldqSocieteSiege	FieldNameSiege  TSmallintFieldqSocieteTransferer	FieldName
Transferer  TWideStringFieldqSocieteCheminPrec	FieldName
CheminPrecSize  TDateTimeFieldqSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldqSocieteExerFin	FieldNameExerFin  TSmallintFieldqSocieteEnCours	FieldNameEnCours  TWideStringFieldqSocieteActivite2	FieldName	Activite2Size2  TWideStringFieldqSocieteExistance	FieldName	ExistanceSize2  TWideStringFieldqSocieteLogiciel	FieldNameLogiciel  TWideStringFieldqSocieteFiltre	FieldNameFiltre  TWideStringFieldqSocieteTypeBD	FieldNameTypeBD  TWideStringFieldqSocieteMonnaie	FieldNameMonnaieSize
  TSmallintFieldqSocieteCloturee	FieldNameCloturee   	TADOQuery	InfoSiege
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Consolidewhere agence=:a Left�Top TWideStringFieldInfoSiegeSiege	FieldNameSiegeSize
  TWideStringFieldInfoSiegeAgence	FieldNameAgenceSize
   	TADOQueryAdresse
Connection
C_MultiSoc
CursorTypectStaticOnCalcFieldsAdresseCalcFields
ParametersNamecDataTypeftStringSizeValue   SQL.Stringsselect * from adresse a, Lieu b$where (a.Cp=b.code)and(a.codeSoc=:c)  Left`Top�  TWideStringFieldAdresseCodeSoc	FieldNameCodeSoc  TWideStringField	AdresseCP	FieldNameCPSize
  TWideStringFieldAdressePays	FieldNamePays  TWideStringField	AdresseBP	FieldNameBP  TWideStringField
AdresseTEL	FieldNameTELSize  TWideStringField
AdresseFax	FieldNameFax  TWideStringFieldAdresseCptBQ	FieldNameCptBQSize2  TWideStringFieldAdresseNumCpt	FieldNameNumCpt  TWideStringField
AdresseNII	FieldNameNII  TWideStringFieldAdresseDEVISE	FieldNameDEVISE  TWideStringFieldAdresseTel2	FieldNameTel2  TWideStringFieldAdresseTel3	FieldNameTel3  TWideStringFieldAdresseEmail	FieldNameEmailSize  TWideStringFieldAdresseSiteWeb	FieldNameSiteWebSize  TWideStringFieldAdresseBanque	FieldNameBanqueSize2  TWideStringFieldAdresseLotOuRue	FieldNameLotOuRueSize2  TWideStringFieldAdresseQuartier	FieldNameQuartier  TWideStringFieldAdresseCode	FieldNameCodeSize  TWideStringFieldAdresseLieu	FieldNameLieuSize2   	TADOTable	T_Adresse
Connection
C_MultiSoc
CursorTypectStatic	TableNameAdresseLeft`Topx  	TADOQueryInterloc
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from interlocwhere CodeSoc=:a Left(Top( TWideStringFieldInterlocCodeSoc	FieldNameCodeSoc  TWideStringFieldInterlocInterloc	FieldNameInterlocSize2  TWideStringFieldInterlocFonction	FieldNameFonction  TWideStringFieldInterlocTel	FieldNameTel  TWideStringFieldInterlocFax	FieldNameFax  TWideStringFieldInterlocInfo	FieldNameInfoSize  TWideStringFieldInterlocNumCpt	FieldNameNumCpt   	TADOTableReposLeftTopx  	TADOTable
LstFichier
Connection
C_MultiSoc
CursorTypectStatic	TableName
LstFichierLeft�Topx TWideStringFieldLstFichierNdf	FieldNameNdf	FixedChar	  TWideStringFieldLstFichierOrigine	FieldNameOrigine	FixedChar	Size2  TWideStringFieldLstFichierDescriptio	FieldName
DescriptioSize2   	TADOTable
Consolide1
Connection
C_MultiSoc
CursorTypectStatic	TableName	ConsolideLeft�Top�  TWideStringFieldConsolide1Siege	FieldNameSiegeSize
  TWideStringFieldConsolide1Agence	FieldNameAgenceSize
   	TADOQueryQSocieteConsolidee
Connection
C_MultiSoc
CursorTypectStaticOnCalcFieldsQSocieteConsolideeCalcFields
ParametersNameaDataTypeftStringSizeValue   SQL.Strings7Select * from Consolide x, societe y, adresse z, lieu wIwhere (Agence=:a)and(x.siege=y.code)and(y.code=z.codesoc)and(z.cp=w.code) Left0Top�  TWideStringFieldQSocieteConsolideeSiege	FieldNameSiegeSize
  TWideStringFieldQSocieteConsolideeAgence	FieldNameAgenceSize
  TWideStringFieldQSocieteConsolideeCode	FieldNameCodeSize  TWideStringFieldQSocieteConsolideeRS	FieldNameRSSize2  TWideStringFieldQSocieteConsolideeChemin	FieldNameCheminSize  TWideStringFieldQSocieteConsolideeActivite	FieldNameActiviteSize2  TWideStringFieldQSocieteConsolideeCAP	FieldNameCAPSize  TWideStringFieldQSocieteConsolideeStatut	FieldNameStatut  TWideStringFieldQSocieteConsolideeStatis	FieldNameStatis  TWideStringFieldQSocieteConsolideeNIF	FieldNameNIF  TWideStringFieldQSocieteConsolideeATP	FieldNameATP  TDateTimeFieldQSocieteConsolideeDtATP	FieldNameDtATP  TWideStringFieldQSocieteConsolideeQuit	FieldNameQuit  TDateTimeFieldQSocieteConsolideeDtQuit	FieldNameDtQuit  TWideStringFieldQSocieteConsolideeRegistre	FieldNameRegistre  TWideStringFieldQSocieteConsolideeCompteBQ	FieldNameCompteBQSize2  TSmallintFieldQSocieteConsolideeSiege_1	FieldNameSiege_1  TSmallintFieldQSocieteConsolideeTransferer	FieldName
Transferer  TWideStringFieldQSocieteConsolideeCheminPrec	FieldName
CheminPrecSize  TDateTimeFieldQSocieteConsolideeExerDeb	FieldNameExerDeb  TDateTimeFieldQSocieteConsolideeExerFin	FieldNameExerFin  TSmallintFieldQSocieteConsolideeEnCours	FieldNameEnCours  TWideStringFieldQSocieteConsolideeActivite2	FieldName	Activite2Size2  TWideStringFieldQSocieteConsolideeExistance	FieldName	ExistanceSize2  TWideStringFieldQSocieteConsolideeLogiciel	FieldNameLogiciel  TWideStringFieldQSocieteConsolideeFiltre	FieldNameFiltre  TWideStringFieldQSocieteConsolideeTypeBD	FieldNameTypeBD  TWideStringFieldQSocieteConsolideeMonnaie	FieldNameMonnaieSize
  TSmallintFieldQSocieteConsolideeCloturee	FieldNameCloturee  TWideStringFieldQSocieteConsolideeCodeSoc	FieldNameCodeSoc  TWideStringFieldQSocieteConsolideeCP	FieldNameCPSize
  TWideStringFieldQSocieteConsolideePays	FieldNamePays  TWideStringFieldQSocieteConsolideeBP	FieldNameBP  TWideStringFieldQSocieteConsolideeTEL	FieldNameTELSize  TWideStringFieldQSocieteConsolideeFax	FieldNameFax  TWideStringFieldQSocieteConsolideeCptBQ	FieldNameCptBQSize2  TWideStringFieldQSocieteConsolideeNumCpt	FieldNameNumCpt  TWideStringFieldQSocieteConsolideeNII	FieldNameNII  TWideStringFieldQSocieteConsolideeDEVISE	FieldNameDEVISE  TWideStringFieldQSocieteConsolideeTel2	FieldNameTel2  TWideStringFieldQSocieteConsolideeTel3	FieldNameTel3  TWideStringFieldQSocieteConsolideeEmail	FieldNameEmailSize  TWideStringFieldQSocieteConsolideeSiteWeb	FieldNameSiteWebSize  TWideStringFieldQSocieteConsolideeBanque	FieldNameBanqueSize2  TWideStringFieldQSocieteConsolideeLotOuRue	FieldNameLotOuRueSize2  TWideStringFieldQSocieteConsolideeQuartier	FieldNameQuartier  TWideStringFieldQSocieteConsolideeCode_1	FieldNameCode_1Size  TWideStringFieldQSocieteConsolideeLieu	FieldNameLieuSize2  TStringFieldQSocieteConsolideeTotal	FieldNameTotalSized   	TADOQuery
SelSociete
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from societe where Code=:a Left� Top TWideStringFieldSelSocieteCode	FieldNameCode	FixedChar	Size  TWideStringFieldSelSocieteRS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSocieteChemin	FieldNameChemin	FixedChar	Size   TDataSourceSourceSociete1DataSetSelSociete1OnDataChangeSourceSociete1DataChangeLefthTopX  	TADOQuery	Consolide
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Strings$select * from Consolide x, societe y&where (x.siege=:a)and(x.agence=y.code)order by agence Left(Topx TWideStringFieldConsolideSiege	FieldNameSiegeSize
  TWideStringFieldConsolideAgence	FieldNameAgenceSize
  TWideStringFieldConsolideCode	FieldNameCodeSize  TWideStringFieldConsolideRS	FieldNameRSSize2  TWideStringFieldConsolideChemin	FieldNameCheminSize  TWideStringFieldConsolideActivite	FieldNameActiviteSize2  TWideStringFieldConsolideCAP	FieldNameCAPSize  TWideStringFieldConsolideStatut	FieldNameStatut  TWideStringFieldConsolideStatis	FieldNameStatis  TWideStringFieldConsolideNIF	FieldNameNIF  TWideStringFieldConsolideATP	FieldNameATP  TDateTimeFieldConsolideDtATP	FieldNameDtATP  TWideStringFieldConsolideQuit	FieldNameQuit  TDateTimeFieldConsolideDtQuit	FieldNameDtQuit  TWideStringFieldConsolideRegistre	FieldNameRegistre  TWideStringFieldConsolideCompteBQ	FieldNameCompteBQSize2  TSmallintFieldConsolideSiege_1	FieldNameSiege_1  TSmallintFieldConsolideTransferer	FieldName
Transferer  TWideStringFieldConsolideCheminPrec	FieldName
CheminPrecSize  TDateTimeFieldConsolideExerDeb	FieldNameExerDeb  TDateTimeFieldConsolideExerFin	FieldNameExerFin  TSmallintFieldConsolideEnCours	FieldNameEnCours  TWideStringFieldConsolideActivite2	FieldName	Activite2Size2  TWideStringFieldConsolideExistance	FieldName	ExistanceSize2  TWideStringFieldConsolideLogiciel	FieldNameLogiciel  TWideStringFieldConsolideFiltre	FieldNameFiltre  TWideStringFieldConsolideTypeBD	FieldNameTypeBD  TWideStringFieldConsolideMonnaie	FieldNameMonnaieSize
  TSmallintFieldConsolideCloturee	FieldNameCloturee   	TADOQuerySuppConsolide
Connection
C_MultiSoc
ParametersNamexDataTypeftStringSizeValue   SQL.Strings'delete * from Consolide where Agence=:x LeftTop�   	TADOQueryQLieu
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from lieuwhere code=:a Left�Topx TWideStringField	QLieuCode	FieldNameCodeSize  TWideStringField	QLieuLieu	FieldNameLieuSize2   	TADOTableTLieu
Connection
C_MultiSoc
CursorTypectStatic	TableNameLieuLeftTop�   TADOConnection
C_MultiSocConnectionStringBProvider=MSDASQL.1;Persist Security Info=True;Data Source=MultiSocLoginPromptProvider	MSDASQL.1LeftTop  TDataSourcesq_ConsolideDataSetq_ConsolideLeft Top�   TDataSourceSourceSocieteDataSetqSocieteLeft� Top@  	TADOTable	t_Societe
Connection
C_MultiSoc
CursorTypectStatic	TableNameSocieteLeft�Top  	TADOQueryq_Consolide
Connection
C_MultiSoc
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.StringsSELECT Societe.CheminDFROM Consolide INNER JOIN Societe ON Consolide.Agence = Societe.CodeWHERE Consolide.Siege=:a Left Topx TWideStringFieldq_ConsolideChemin	FieldNameChemin	FixedChar	Size   TDataSource	sqSocieteDataSetqSocieteOnDataChangesqSocieteDataChangeLeftpTop�   TDataSource	s_SocieteDataSetSocieteLeft� TopH   