�
 TDOBJET 0/1  TPF0TDObjetDObjetOldCreateOrder	LeftxTopDHeightuWidth� TDataSourceSourceSocieteDataSetSocieteLeft`TopH  TADOConnection	C_SocieteConnectionStringDProvider=MSDASQL.1;Persist Security Info=False;Data Source=MultiSoc;LoginPromptProvider	MSDASQL.1Left Top  	TADOQuerySociete
Connection	C_Societe
CursorTypectStaticAfterInsertSocieteAfterInsertCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Societewhere logiciel=:a order by code Left`Top TWideStringFieldSocieteCodeDisplayWidth	FieldNameCode	FixedChar	Size  TWideStringField	SocieteRSDisplayWidth	FieldNameRS	FixedChar	Size2  TWideStringFieldSocieteFiltre	FieldNameFiltre  TWideStringFieldSocieteCheminDisplayWidthd	FieldNameChemin	FixedChar	Size  TWideStringFieldSocieteActivite	FieldNameActivite	FixedChar	Size2  TWideStringField
SocieteCAPDisplayWidth	FieldNameCAP	FixedChar	Size  TWideStringFieldSocieteStatutDisplayWidth
	FieldNameStatut	FixedChar	  TWideStringFieldSocieteStatisDisplayWidth	FieldNameStatis	FixedChar	  TWideStringField
SocieteNIFDisplayWidth	FieldNameNIF	FixedChar	  TWideStringField
SocieteATP	FieldNameATP	FixedChar	  TDateTimeFieldSocieteDtATP	FieldNameDtATP  TDateTimeFieldSocieteDtQuit	FieldNameDtQuit  TWideStringFieldSocieteQuit	FieldNameQuit	FixedChar	  TWideStringFieldSocieteRegistre	FieldNameRegistre	FixedChar	  TWideStringFieldSocieteCompteBQ	FieldNameCompteBQ	FixedChar	Size2  TWideStringFieldSocieteCheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldSocieteExerFin	FieldNameExerFin  TWideStringFieldSocieteActivite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSocieteExistance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSocieteLogiciel	FieldNameLogiciel	FixedChar	  TWideStringFieldSocieteTypeBD	FieldNameTypeBD  TWideStringFieldSocieteMonnaie	FieldNameMonnaieSize
  TSmallintFieldSocieteSiege	FieldNameSiege  TSmallintFieldSocieteEnCours	FieldNameEnCours  TSmallintFieldSocieteTransferer	FieldName
Transferer   	TADOQuery
SelSociete
Connection	C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftBooleanSizeValue   SQL.Stringsselect * from societewhere siege=:a Left� Top TWideStringFieldSelSocieteCode	FieldNameCode	FixedChar	Size  TWideStringFieldSelSocieteRS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSocieteChemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSelSocieteActivite	FieldNameActivite	FixedChar	Size2  TWideStringFieldSelSocieteCAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSelSocieteStatut	FieldNameStatut	FixedChar	  TWideStringFieldSelSocieteStatis	FieldNameStatis	FixedChar	  TWideStringFieldSelSocieteNIF	FieldNameNIF	FixedChar	  TWideStringFieldSelSocieteATP	FieldNameATP	FixedChar	  TDateTimeFieldSelSocieteDtATP	FieldNameDtATP  TWideStringFieldSelSocieteQuit	FieldNameQuit	FixedChar	  TDateTimeFieldSelSocieteDtQuit	FieldNameDtQuit  TWideStringFieldSelSocieteRegistre	FieldNameRegistre	FixedChar	  TWideStringFieldSelSocieteCompteBQ	FieldNameCompteBQ	FixedChar	Size2  TWideStringFieldSelSocieteCheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSelSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldSelSocieteExerFin	FieldNameExerFin  TWideStringFieldSelSocieteActivite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSelSocieteExistance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSelSocieteLogiciel	FieldNameLogiciel	FixedChar	  TSmallintFieldSelSocieteSiege	FieldNameSiege  TSmallintFieldSelSocieteEnCours	FieldNameEnCours  TSmallintFieldSelSocieteTransferer	FieldName
Transferer   	TADOQuery
SelAdresse
Connection	C_Societe
CursorTypectStaticAfterInsertSelAdresseAfterInsertCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from adressewhere CodeSoc=:a   Left@Top TWideStringFieldSelAdresseCodeSoc	FieldNameCodeSoc	FixedChar	  TWideStringFieldSelAdresseCP	FieldNameCP	FixedChar	Size
  TWideStringFieldSelAdressePays	FieldNamePays	FixedChar	  TWideStringFieldSelAdresseBP	FieldNameBP	FixedChar	  TWideStringFieldSelAdresseTEL	FieldNameTEL	FixedChar	Size  TWideStringFieldSelAdresseFax	FieldNameFax	FixedChar	  TWideStringFieldSelAdresseCptBQ	FieldNameCptBQ	FixedChar	Size2  TWideStringFieldSelAdresseNumCpt	FieldNameNumCpt	FixedChar	  TWideStringFieldSelAdresseNII	FieldNameNII	FixedChar	  TWideStringFieldSelAdresseDEVISE	FieldNameDEVISE	FixedChar	  TWideStringFieldSelAdresseTel2	FieldNameTel2	FixedChar	  TWideStringFieldSelAdresseTel3	FieldNameTel3	FixedChar	  TWideStringFieldSelAdresseEmail	FieldNameEmail	FixedChar	Size  TWideStringFieldSelAdresseSiteWeb	FieldNameSiteWeb	FixedChar	Size  TWideStringFieldSelAdresseBanque	FieldNameBanque	FixedChar	Size2  TWideStringFieldSelAdresseLotOuRue	FieldNameLotOuRue	FixedChar	Size2  TWideStringFieldSelAdresseQuartier	FieldNameQuartier	FixedChar	   	TADOQuerySelInterloc
Connection	C_Societe
CursorTypectStaticAfterInsertSelInterlocAfterInsertCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from interlocwhere CodeSoc=:a   Left�Top TWideStringFieldSelInterlocCodeSoc	FieldNameCodeSoc  TWideStringFieldSelInterlocInterloc	FieldNameInterlocSize2  TWideStringFieldSelInterlocFonction	FieldNameFonction  TWideStringFieldSelInterlocTel	FieldNameTel  TWideStringFieldSelInterlocFax	FieldNameFax  TWideStringFieldSelInterlocInfo	FieldNameInfoSize  TWideStringFieldSelInterlocNumCpt	FieldNameNumCpt   	TADOQueryLieu
Connection	C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.StringsSelect * from Lieu Left TopH TWideStringFieldLieuCode	FieldNameCodeSize  TWideStringFieldLieuLieu	FieldNameLieuSize2   	TADOQueryStatut
Connection	C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.StringsSelect * from Statut Left�Top TWideStringField
StatutCode	FieldNameCode	FixedChar	  TWideStringFieldStatutLibelle	FieldNameLibelle	FixedChar	Size2   	TADOQuerySelSociete2
Connection	C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftBooleanSizeValue   SQL.Stringsselect * from societewhere siege=:a   Left� TopH TWideStringFieldSelSociete2Code	FieldNameCode	FixedChar	Size  TWideStringFieldSelSociete2RS	FieldNameRS	FixedChar	Size2  TWideStringFieldSelSociete2Chemin	FieldNameChemin	FixedChar	Size  TWideStringFieldSelSociete2Activite	FieldNameActivite	FixedChar	Size2  TWideStringFieldSelSociete2CAP	FieldNameCAP	FixedChar	Size  TWideStringFieldSelSociete2Statut	FieldNameStatut	FixedChar	  TWideStringFieldSelSociete2Statis	FieldNameStatis	FixedChar	  TWideStringFieldSelSociete2NIF	FieldNameNIF	FixedChar	  TWideStringFieldSelSociete2ATP	FieldNameATP	FixedChar	  TDateTimeFieldSelSociete2DtATP	FieldNameDtATP  TWideStringFieldSelSociete2Quit	FieldNameQuit	FixedChar	  TDateTimeFieldSelSociete2DtQuit	FieldNameDtQuit  TWideStringFieldSelSociete2Registre	FieldNameRegistre	FixedChar	  TWideStringFieldSelSociete2CompteBQ	FieldNameCompteBQ	FixedChar	Size2  TWideStringFieldSelSociete2CheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldSelSociete2ExerDeb	FieldNameExerDeb  TDateTimeFieldSelSociete2ExerFin	FieldNameExerFin  TWideStringFieldSelSociete2Activite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldSelSociete2Existance	FieldName	Existance	FixedChar	Size2  TWideStringFieldSelSociete2Logiciel	FieldNameLogiciel	FixedChar	  TSmallintFieldSelSociete2Siege	FieldNameSiege  TSmallintFieldSelSociete2Transferer	FieldName
Transferer  TSmallintFieldSelSociete2EnCours	FieldNameEnCours   	TADOQueryQEncoursSociete
Connection	C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataType	ftBooleanSize�Value   SQL.Stringsselect *  from societewhere encours=:a Left Top�  TWideStringFieldQEncoursSocieteCode	FieldNameCode	FixedChar	Size  TWideStringFieldQEncoursSocieteRS	FieldNameRS	FixedChar	Size2  TWideStringFieldQEncoursSocieteChemin	FieldNameChemin	FixedChar	Size  TWideStringFieldQEncoursSocieteActivite	FieldNameActivite	FixedChar	Size2  TWideStringFieldQEncoursSocieteCAP	FieldNameCAP	FixedChar	Size  TWideStringFieldQEncoursSocieteStatut	FieldNameStatut	FixedChar	  TWideStringFieldQEncoursSocieteStatis	FieldNameStatis	FixedChar	  TWideStringFieldQEncoursSocieteNIF	FieldNameNIF	FixedChar	  TWideStringFieldQEncoursSocieteATP	FieldNameATP	FixedChar	  TDateTimeFieldQEncoursSocieteDtATP	FieldNameDtATP  TWideStringFieldQEncoursSocieteQuit	FieldNameQuit	FixedChar	  TDateTimeFieldQEncoursSocieteDtQuit	FieldNameDtQuit  TWideStringFieldQEncoursSocieteRegistre	FieldNameRegistre	FixedChar	  TWideStringFieldQEncoursSocieteCompteBQ	FieldNameCompteBQ	FixedChar	Size2  TWideStringFieldQEncoursSocieteCheminPrec	FieldName
CheminPrec	FixedChar	Size  TDateTimeFieldQEncoursSocieteExerDeb	FieldNameExerDeb  TDateTimeFieldQEncoursSocieteExerFin	FieldNameExerFin  TWideStringFieldQEncoursSocieteActivite2	FieldName	Activite2	FixedChar	Size2  TWideStringFieldQEncoursSocieteExistance	FieldName	Existance	FixedChar	Size2  TWideStringFieldQEncoursSocieteLogiciel	FieldNameLogiciel	FixedChar	  TSmallintFieldQEncoursSocieteSiege	FieldNameSiege  TSmallintFieldQEncoursSocieteTransferer	FieldName
Transferer  TSmallintFieldQEncoursSocieteEnCours	FieldNameEnCours   	TADOQueryTempon
Connection	C_Societe
CursorTypectStaticCommandTimeout 
Parameters SQL.Stringsselect * from Tempon Left� Top�  TWideStringFieldTemponSTRING1	FieldNameSTRING1	FixedChar	  TWideStringFieldTemponSTRING2	FieldNameSTRING2	FixedChar	Sized  TWideStringFieldTemponSTRING3	FieldNameSTRING3	FixedChar	Sized  TFloatFieldTemponREAL1	FieldNameREAL1  TFloatFieldTemponREAL2	FieldNameREAL2  TSmallintFieldTemponBOOLEAN1	FieldNameBOOLEAN1  TSmallintFieldTemponBOOLEAN2	FieldNameBOOLEAN2  TDateTimeFieldTemponDATE1	FieldNameDATE1  TDateTimeFieldTemponDATE2	FieldNameDATE2  TWideStringFieldTemponSTRING4	FieldNameSTRING4	FixedChar	Sized   	TADOTableAdresse
Connection	C_Societe
CursorTypectStaticCommandTimeout 	TableNameAdresseLeft8Top�   	TADOTableReposCommandTimeout Left�Top�   	TADOQueryQLieu
Connection	C_Societe
CursorTypectStaticCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect lieu from lieuwhere code=:a Left� Top@ TWideStringField	QLieulieu	FieldNamelieuSize2   	TADOTablet_Consolide
Connection	C_Societe
CursorTypectStaticCommandTimeout IndexFieldNamesSiegeMasterFieldsCodeMasterSourceSourceSociete	TableName	ConsolideLeftTop�  TWideStringFieldt_ConsolideSiege	FieldNameSiegeSize
  TWideStringFieldt_ConsolideAgence	FieldNameAgenceSize
   	TADOTable	t_Societe
Connection	C_Societe
CursorTypectStaticCommandTimeout 	TableNameSocieteLeft�Top�  TWideStringFieldt_SocieteCode	FieldNameCodeSize  TWideStringFieldt_SocieteRS	FieldNameRS	FixedChar	Size2  TWideStringFieldt_SocieteChemin	FieldNameChemin	FixedChar	Size   TDataSources_t_SocieteDataSet	t_SocieteLeft�Top�   TDataSources_t_ConsolideDataSett_ConsolideLeftTop�   TDataSources_StatutDataSetStatutLeft�TopH  TDataSources_SelAdresseDataSet
SelAdresseLeft@Top@  TDataSources_SelInterlocDataSetSelInterlocLeft�Top@  TDataSources_TemponDataSetTemponLeft� Top�   	TADOQueryMAJ_Encours
Connection	C_SocieteCommandTimeout 
Parameters Left� Top�   	TADOQuery	q_Societe
Connection	C_SocieteCommandTimeout 
ParametersNameaDataTypeftStringSizeValue   SQL.StringsSELECT Code, RS FROM SocieteWHERE Logiciel=:a  Left(Top TWideStringFieldq_SocieteCode	FieldNameCodeSize  TWideStringFieldq_SocieteRS	FieldNameRS	FixedChar	Size2   TDataSource
sq_SocieteDataSet	q_SocieteLeft(TopH  	TADOQuery	Operation
Connection	C_SocieteCommandTimeout 
Parameters Left0Top�    