�
 TDATACPTE 0�,  TPF0	TDataCpteDataCpteOldCreateOrder	LeftTopBHeight�WidthR TDataSourceSourceUtilisatLeftXTop�   TDataSourceSourceAccesLeft�Top�   TDataSourceSourceSocieteLeft�Top�   TDataSourceSourceMaitreLeftHTop�   TADOConnection
C_Exercice	Connected	ConnectionStringDProvider=MSDASQL.1;Persist Security Info=False;Data Source=exercice;ConnectionTimeout LoginPromptOnExecuteCompleteC_ExerciceExecuteCompleteLeftTopU  	TADOQuery	NumDivers
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumDiverwhere NumCpt=:a  Left(Top�  TStringFieldNumDiversNumCpt	FieldNameNumCpt  TStringFieldNumDiversStatistique	FieldNameStatistique  TStringFieldNumDiversQuittance	FieldName	Quittance  TStringFieldNumDiversNIF	FieldNameNIF  
TDateFieldNumDiversDateQuit	FieldNameDateQuit  TStringFieldNumDiversNatureProd	FieldName
NatureProdSize(  TStringFieldNumDiversCodeProd	FieldNameCodeProdSize
  TStringFieldNumDiversCodeDecl	FieldNameCodeDeclSize
  TStringFieldNumDiversAbrev	FieldNameAbrevSize  TStringFieldNumDiversUniteProd	FieldName	UniteProdSize
  TStringFieldNumDiversTP	FieldNameTP  
TDateFieldNumDiversDateTP	FieldNameDateTP   	TADOQuery
SelTypProd
ConnectionC_Compta
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Strings	SELECT * FROM TypProdWHERE code=:aORDER BY famille LeftpTop�   	TADOQuery	SoldeCpte
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Strings.select * from  Journaux a, Journal b, eltJrn c/where (a.code=b.codejrnx) and(b.code=c.journal)    and (a.typ<4)and(c.compte=:a) LeftiTopP TStringFieldSoldeCpteDebit	FieldNameDebitSize  TFloatFieldSoldeCpteMontant	FieldNameMontant   	TADOQuery	NumCompte
Connection
C_Exercice
CursorTypectStaticOnCalcFieldsNumCompteCalcFields
Parameters SQL.Stringsselect * from NumCmpte Left�TopP TStringFieldNumCompteNumeroDisplayWidth	FieldKindfkCalculated	FieldNameNumeroSize(
Calculated	  TWideStringFieldNumCompteNumCpt	FieldNameNumCptVisible	FixedChar	  TWideStringFieldNumCompteIntituleDisplayWidthK	FieldNameIntitule	FixedChar	Sized  TSmallintFieldNumCompteDetailDisplayWidth	FieldNameDetail  TSmallintFieldNumCompteClasseDisplayWidth	FieldNameClasse  TSmallintFieldNumCompteGClasseDisplayWidth	FieldNameGClasse  TWideStringFieldNumCompteNom	FieldNameNomVisible	FixedChar	Size2  TWideStringFieldNumCompteNatureDisplayWidth
	FieldNameNature	FixedChar	Size(  TSmallintFieldNumCompteExonereDisplayWidth	FieldNameExonere  TWideStringFieldNumCompteStatistique	FieldNameStatistique	FixedChar	  TStringFieldNumComptetotalisateur	FieldNametotalisateurSize  TSmallintFieldNumCompteizyDisplayWidth	FieldNameizy  TSmallintFieldNumComptepos_analytDisplayWidth	FieldName
pos_analyt  TSmallintFieldNumComptelen_analytDisplayLabellongueurDisplayWidth	FieldName
len_analyt   	TADOQuery	SelNumLoc
Connection
C_Exercice
CursorTypectStaticAfterInsertSelNumLocAfterInsert
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Numlocwhere NumCpt=:a  LeftTop TStringFieldSelNumLocNumCpt	FieldNameNumCpt  TStringFieldSelNumLocInterloc	FieldNameInterlocSize2  TStringFieldSelNumLocFonction	FieldNameFonction  TStringFieldSelNumLocTel	FieldNameTel  TStringFieldSelNumLocFax	FieldNameFax  TStringFieldSelNumLocInfo	FieldNameInfoSize   	TADOQuerySelNumDiver
Connection
C_Exercice
CursorTypectStaticAfterInsertSelNumDiverAfterInsert
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Numdiverwhere NumCpt=:a LeftK TStringFieldSelNumDiverNumCpt	FieldNameNumCpt  TStringFieldSelNumDiverStatistique	FieldNameStatistique  TStringFieldSelNumDiverQuittance	FieldName	Quittance  TStringFieldSelNumDiverNIF	FieldNameNIF  
TDateFieldSelNumDiverDateQuit	FieldNameDateQuit  TStringFieldSelNumDiverNatureProd	FieldName
NatureProdSize(  TStringFieldSelNumDiverCodeProd	FieldNameCodeProdSize
  TStringFieldSelNumDiverCodeDecl	FieldNameCodeDeclSize
  TStringFieldSelNumDiverAbrev	FieldNameAbrevSize  TStringFieldSelNumDiverUniteProd	FieldName	UniteProdSize
  TStringFieldSelNumDiverTP	FieldNameTP  
TDateFieldSelNumDiverDateTP	FieldNameDateTP   	TADOQueryNumFac
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumFactwhere NumCpt=:a Left�TopX TStringFieldNumFacNumCpt	FieldNameNumCpt  TStringFieldNumFacModeRegle	FieldName	ModeRegle  TStringFieldNumFacAA	FieldNameAA  TStringFieldNumFacJours	FieldNameJours  
TDateFieldNumFacLe	FieldNameLe  TFloatFieldNumFacEncoursMax	FieldName
EncoursMax  TFloatFieldNumFacTauxRem	FieldNameTauxRem  TFloatFieldNumFacSeuilRelance	FieldNameSeuilRelance  TFloatFieldNumFacTauxEsc	FieldNameTauxEsc  TSmallintFieldNumFacRelanceFax	FieldName
RelanceFax   	TADOQueryNumCp
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Strings	select * from NumCpt LeftTop TStringFieldNumCpNumCpt	FieldNameNumCpt  TSmallintFieldNumCpGClasse	FieldNameGClasse  TSmallintFieldNumCpClasse	FieldNameClasse  TIntegerFieldNumCpGGroupe	FieldNameGGroupe  TIntegerFieldNumCpOGroupe	FieldNameOGroupe  TStringFieldNumCptotalisateur	FieldNametotalisateurSize  TSmallintFieldNumCpizy	FieldNameizy   	TADOQueryprintcpt
Connection
C_Exercice
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Strings	select * 1from numcpt where ((numcpt>=:a) and (numcpt<=:b)) LeftHTopP TStringFieldprintcptnumcpt	FieldNamenumcpt  TStringFieldprintcptIntitule	FieldNameIntituleSized  TStringFieldprintcptAdresseDisplayWidthd	FieldKindfkLookup	FieldNameAdresseLookupDataSetNumadresLookupKeyFieldsNumCptLookupResultFieldAdresse	KeyFieldsnumcptSizedLookup	  TStringFieldprintcptNIF	FieldKindfkLookup	FieldNameNIFLookupDataSetNumDiverLookupKeyFieldsNumCptLookupResultFieldNIF	KeyFieldsnumcptLookup	  TStringFieldprintcptStatistique	FieldKindfkLookup	FieldNameStatistiqueLookupDataSetNumDiverLookupKeyFieldsNumCptLookupResultFieldStatistique	KeyFieldsnumcptLookup	   	TADOQuerySelNumAdres
Connection
C_Exercice
CursorTypectStaticAfterInsertSelNumAdresAfterInsert
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Numadreswhere NumCpt=:a Left�Top TStringFieldSelNumAdresNumCpt	FieldNameNumCpt  TStringFieldSelNumAdresRS	FieldNameRS  TStringFieldSelNumAdresNom	FieldNameNomSize2  TStringFieldSelNumAdresAdresse	FieldNameAdresseSize  TStringFieldSelNumAdresCP	FieldNameCPSize
  TStringFieldSelNumAdresPays	FieldNamePays  TStringFieldSelNumAdresBP	FieldNameBP  TStringFieldSelNumAdresTEL	FieldNameTELSize  TStringFieldSelNumAdresFax	FieldNameFax  TStringFieldSelNumAdresCptBQ	FieldNameCptBQSize2  TStringFieldSelNumAdresNII	FieldNameNII  TStringFieldSelNumAdresDEVISE	FieldNameDEVISE  TWideStringFieldSelNumAdresstatut	FieldNamestatut   	TADOTableNumadres
Connection
C_Exercice
CursorTypectStatic	TableNameNumAdresLeftoTop TStringFieldNumadresNom	FieldNameNomSize2  TStringFieldNumadresNumCpt	FieldNameNumCpt  TStringFieldNumadresAdresse	FieldNameAdresseSize   	TADOTableNumDiver
Connection
C_Exercice
CursorTypectStatic	TableNameNumDiverLeft�Top TStringFieldNumDiverStatistique	FieldNameStatistique  TStringFieldNumDiverNatureProd	FieldName
NatureProdSize(  TStringFieldNumDiverNumCpt	FieldNameNumCpt  TStringFieldNumDiverNIF	FieldNameNIF   TADOConnection	C_SocieteConnectionStringDProvider=MSDASQL.1;Persist Security Info=False;Data Source=multisoc;LoginPromptProvider	MSDASQL.1OnExecuteCompleteC_SocieteExecuteCompleteLeftTop  	TADOQueryLieu
Connection	C_Societe
CursorTypectStatic
Parameters SQL.StringsSelect * from Lieu Left`Top TStringFieldLieuCode	FieldNameCodeSize  TStringFieldLieuLieu	FieldNameLieuSize2   	TADOQueryTempon
Connection	C_Societe
CursorTypectStatic
Parameters SQL.Stringsselect * from tempon Left� Top TStringFieldTemponString1	FieldNameString1  TStringFieldTemponString2	FieldNameString2Sized  TFloatFieldTemponReal1	FieldNameReal1  TFloatFieldTemponReal2	FieldNameReal2  TStringFieldTemponSTRING3	FieldNameSTRING3Sized  
TDateFieldTemponDATE1	FieldNameDATE1  
TDateFieldTemponDATE2	FieldNameDATE2  TStringFieldTemponSTRING4	FieldNameSTRING4Sized  TSmallintFieldTemponboolean1	FieldNameboolean1  TSmallintFieldTemponboolean2	FieldNameboolean2   	TADOTableRepos
Connection
C_ExerciceLeftTopP  	TADOTableTAXE
Connection	C_Societe
CursorTypectStatic	TableNameTAXELeftxTop�  TWideStringField	TAXEsigle	FieldNamesigle   	TADOTableTable1
Connection
C_Exercice
CursorTypectStatic	TableNameNumCptLeftXTopX  	TADOTableParamet
ConnectionC_Compta
CursorTypectStatic	TableNameParametLeft� Top TSmallintFieldParametBalGGroupe	FieldName
BalGGroupe  TSmallintFieldParametBalOGroupe	FieldName
BalOGroupe  TSmallintFieldParametLanceeBal	FieldName	LanceeBal   	TADOQuery	SelCompte
Connection	C_Societe
Parameters LeftTop�   	TADOQuery	SelNumCpt
Connection
C_Exercice
CursorTypectStatic
BeforePostSelNumCptBeforePost
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from NumCptwhere NumCpt=:a Left�Top TWideStringFieldSelNumCptnumcpt	FieldNamenumcpt  TWideStringFieldSelNumCptintitule	FieldNameintituleSized  TSmallintFieldSelNumCptdetail	FieldNamedetail  TSmallintFieldSelNumCptclasse	FieldNameclasse  TSmallintFieldSelNumCptgclasse	FieldNamegclasse  TSmallintFieldSelNumCptexonere	FieldNameexonere  TStringFieldSelNumCpttotalisateur	FieldNametotalisateurSize  TSmallintFieldSelNumCptizy	FieldNameizy  TIntegerFieldSelNumCptggroupe	FieldNameggroupe  TIntegerFieldSelNumCptogroupe	FieldNameogroupe  TWideStringFieldSelNumCpttype_taxe	FieldName	type_taxe  TSmallintFieldSelNumCptpos_analyt	FieldName
pos_analyt  TSmallintFieldSelNumCptlen_analyt	FieldName
len_analyt   	TADOQueryqAuxiNonUtil
Connection
C_Exercice
CursorTypectStatic
Parameters SQL.Stringsselect * from AuxiNonUtilorder by numCp Left� Top�  TWideStringFieldqAuxiNonUtilNumCp	FieldNameNumCp	FixedChar	  TWideStringFieldqAuxiNonUtilIntitule	FieldNameIntitule	FixedChar	Sized  TWideStringFieldqAuxiNonUtilAuxiIntit	FieldName	AuxiIntit	FixedChar	Sized   	TADOQuery	delCompte
Connection
C_Exercice
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsdelete * from NumCptwhere NumCpt=:a  LefthTop�   TADOConnectionC_Compta	Connected	ConnectionStringEProvider=MSDASQL.1;Persist Security Info=False;Data Source=compta_pg;LoginPromptLeft Top�   	TADOTabledevise
Connection	C_Societe	TableNamedeviseLeft� Top�   	TADOTablestatut
Connection	C_Societe	TableNamestatutLeft� Top�    