�
 TDOBJET 0�  TPF0TDObjetDObjetOldCreateOrder	Left� Top� Height�Width� 	TADOQueryQListDonneeAutoCalcFields
ConnectionC_ListeDonnee
CursorTypectStatic
Parameters SQL.Strings'select * from eleve where CClasse='3C'  LeftpTop  TADOConnectionC_ListeDonneeConnectionStringHProvider=MSDASQL.1;Persist Security Info=False;Data Source=O_ListeDonneeLoginPromptProvider	MSDASQL.1Left Top  	TADOTableT_MAJDonneeLeft6Top	  	TADOTable	T_Entree1
ConnectionC_ListeDonneeLeft�Top<  	TADOTable	T_Entree2
ConnectionC_ListeDonneeLeft� Top?  TADOConnection	C_SocieteConnectionStringBProvider=MSDASQL.1;Persist Security Info=False;Data Source=SocieteLoginPromptProvider	MSDASQL.1LeftTop(  	TADOTableTTempon
ConnectionC_ListeDonnee
CursorTypectStatic	TableNameTemponLefthTop( TWideStringFieldTTemponSTRING1	FieldNameSTRING1	FixedChar	  TWideStringFieldTTemponSTRING2	FieldNameSTRING2	FixedChar	Sized  TWideStringFieldTTemponSTRING3	FieldNameSTRING3	FixedChar	Sized  TFloatFieldTTemponREAL1	FieldNameREAL1  TFloatFieldTTemponREAL2	FieldNameREAL2  TDateTimeFieldTTemponDATE1	FieldNameDATE1  TDateTimeFieldTTemponDATE2	FieldNameDATE2  TWideStringFieldTTemponSTRING4	FieldNameSTRING4	FixedChar	Sized  TBooleanFieldTTemponBOOLEAN1	FieldNameBOOLEAN1  TBooleanFieldTTemponBOOLEAN2	FieldNameBOOLEAN2  TAutoIncFieldTTemponN	FieldName   N°ReadOnly	   	TADOTable
TRechChamp
ConnectionC_ListeDonnee
CursorTypectStatic	TableNameAssociationLeft� Top  	TADOTableTListeDonnee
ConnectionC_ListeDonneeLeft� Top  	TADOTable	TableList
ConnectionC_ListeDonnee
CursorTypectStatic	TableNameCommuneLeft�Top  	TADOTable
MaitreList
ConnectionC_ListeDonnee
CursorTypectStatic	TableNameAssociationLeftPTop;  	TADOQueryQ_DonneeListe
ConnectionC_ListeDonnee
CursorTypectStatic
Parameters SQL.Stringsselect * from Table_Liste Left�Top  	TADOTableT_DonneeListe
ConnectionC_ListeDonneeLeftNTop  	TADOQueryQ_ListeDonnee2
ConnectionC_ListeDonnee
CursorTypectStatic
Parameters SQL.Strings'select * from eleve where CClasse='3C'  Left�Top	  	TADOQueryMaitre1
ConnectionC_ListeDonnee
Parameters LeftnTop@  	TADOQueryMaitre2
ConnectionC_ListeDonnee
Parameters Left� Top>  	TADOTableTable1
ConnectionC_ListeDonneeLeft�Top=  	TADOQueryCocherCritere
ConnectionC_ListeDonnee
ParametersNameaDataType	ftIntegerSize�Value  NamebDataTypeftStringSizeValue   SQL.Strings(Select * from CritereTable x, Critere y 1where (x.N_Critere=y.Numero) and (y.Code_Type=:a)and(Cle=:b) Left� Top�   	TADOQuery	Q_Critere
ConnectionC_ListeDonnee
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Critere  where (Code_Type=:a)  LeftTop�   	TADOQueryQ_TypCritere
ConnectionC_ListeDonnee
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Strings'select * from CritereType x, Critere y Cwhere (x.code=y.Code_Type)and(x.description=:a) and (y.Libelle=:b)   LeftWTop�   	TADOQueryQ_RechercheTable
ConnectionC_ListeDonnee
Parameters LeftmTop�   	TADOQueryQ_Selection
ConnectionC_ListeDonnee
CursorTypectStatic
Parameters Left6Top>  	TADOQueryQ_TableMaitre
ConnectionC_ListeDonnee
CursorTypectStatic
Parameters Left� Top�   	TADOTableT_TableMaitre
ConnectionC_ListeDonneeLeftTop�   	TADOQueryQ_TableDetail
ConnectionC_ListeDonnee
CursorTypectStatic
Parameters LeftVTop�   	TADOTableT_TableDetail
ConnectionC_ListeDonneeLeft�Top�   	TADOQueryQ_CritereTable
ConnectionC_ListeDonnee
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from CritereTable where (CleString=:a)  Left�Top�   	TADOTableT_ListeTable
ConnectionC_ListeDonneeLeft�Top�   	TADOQueryQ_ListeTable
ConnectionC_ListeDonnee
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from ListeTablewhere nom=:a Left7Top�   	TADOQueryQ_CritereTypeTable
ConnectionC_ListeDonnee
ParametersNameaDataTypeftStringSizeValue  NamebDataType	ftIntegerSizeValue   SQL.Strings/select * from CritereTypeTable a, CritereType b+where (NomTable=:a) and (PossibleValeur=:b)  and(a.code_type=b.code) Left@Top�   	TADOQueryQ_CritereType
ConnectionC_ListeDonnee
Parameters SQL.Stringsselect * from CritereType Left�Top  	TADOTableT_CritereType
ConnectionC_ListeDonnee	TableNameCritereTypeLefthTop�   	TADOQueryqDictionnaire
ConnectionC_ListeDonnee
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Dictionnairewhere code=:a Left�Top�  TWideStringFieldqDictionnaireMalagasy	FieldNameMalagasySize2  TWideStringFieldqDictionnaireFrancais	FieldNameFrancaisSize2  TWideStringFieldqDictionnaireAnglais	FieldNameAnglaisSize2   	TADOTable	Parametre
ConnectionC_ListeDonnee	TableName	ParametreLeft0Top�   	TADOQuery	ADOQuery1
Parameters Left� Top(  	TADOQueryDetail1
ConnectionC_ListeDonnee
Parameters LeftFTop0  	TADOQueryDetail2
ConnectionC_ListeDonnee
Parameters Left~Top.   