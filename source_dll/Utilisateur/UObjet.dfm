�
 TDOBJET 0�  TPF0TDObjetDObjetOldCreateOrder	OnCreateDataModuleCreateLeft%Top� HeightrWidthQ TDataSourceSourceUtilisatDataSetUtilisatLeft� TopE  TDataSourceSourceAccesDataSetAccesOnDataChangeSourceAccesDataChangeLeft0TopP  TADOConnection
C_Utilisat	Connected	ConnectionStringDProvider=MSDASQL.1;Persist Security Info=False;Data Source=Utilisat;LoginPromptModecmShareDenyNoneLeft Top  	TADOQueryLieu
Connection
C_Utilisat
Parameters SQL.StringsSelect * from Lieu Left`Top TWideStringFieldLieuCode	FieldNameCodeSize  TWideStringFieldLieuLieu	FieldNameLieuSize2   	TADOQueryUtilisat
Connection
C_Utilisat
CursorTypectStatic
Parameters SQL.StringsSelect * from Utilisat Left� Top TWideStringFieldUtilisatCode	FieldNameCode  TIntegerFieldUtilisatIdFonction	FieldName
IdFonctionVisible  TWideStringFieldUtilisatMdp	FieldNameMdpVisible	FixedChar	Size
  TStringFieldUtilisatFonction	FieldKindfkLookup	FieldNameFonctionLookupDataSet	tFonctionLookupKeyFieldsIdLookupResultFieldDescription	KeyFields
IdFonctionSizeLookup	  TWideStringFieldUtilisatNotes	FieldNameNotesSize�    	TADOQuerySelUtilisat
Connection
C_Utilisat
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue   SQL.Stringsselect * from Utilisatwhere (code=:a) Left� Top TWideStringFieldSelUtilisatCode	FieldNameCode  TWideStringFieldSelUtilisatMdp	FieldNameMdpEditMask*	FixedChar	Size
  TStringFieldSelUtilisatFonction	FieldKindfkLookup	FieldNameFonctionLookupDataSet	tFonctionLookupKeyFieldsIdLookupResultFieldDescription	KeyFields
IdFonctionSizeLookup	  TIntegerFieldSelUtilisatIdFonction	FieldName
IdFonctionVisible  TWideStringFieldSelUtilisatNotes	FieldNameNotesSize�    	TADOQueryLstCom
Connection
C_Utilisat
CursorTypectStatic
Parameters SQL.Stringsselect * from LstCom Left`TopH TWideStringFieldLstComNumero	FieldNameNumero  TWideStringFieldLstComCOMMANDE	FieldNameCOMMANDESize�   TWideStringField
LstComPere	FieldNamePere   	TADOQueryQUtilCommandeAcces
Connection
C_Utilisat
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from Acces!where (codeUt=:a)and(commande=:b) Left`Top�  TWideStringFieldQUtilCommandeAccesCodeUt	FieldNameCodeUt	FixedChar	Size
  TWideStringFieldQUtilCommandeAccesCommande	FieldNameCommande	FixedChar	Size<  TWideStringFieldQUtilCommandeAccesLogiciel	FieldNamelogiciel	FixedChar	Size   	TADOQuery
PeutEntrer
Connection
C_Utilisat
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from Acces#where (CodeUt=:a) and (Commande=:b) Left�Top TWideStringFieldPeutEntrerCodeUt	FieldNameCodeUt	FixedChar	Size
  TWideStringFieldPeutEntrerCommande	FieldNameCommande	FixedChar	Size<  TWideStringFieldPeutEntrerLogiciel	FieldNameLogiciel	FixedChar	Size  TIntegerFieldPeutEntreridfonction	FieldName
idfonction  TIntegerFieldPeutEntrerlectureseul	FieldNamelectureseul   	TADOQueryAcces
Connection
C_Utilisat
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.StringsSelect * from Acces!where (codeut=:a)and(Logiciel=:b) Left0Top TWideStringFieldAccesCodeUt	FieldNameCodeUtVisible  TWideStringFieldAccesCommandeDisplayWidth2	FieldNameCommandeSize�   TWideStringFieldAccesLogiciel	FieldNameLogicielVisible	FixedChar	Size  TIntegerFieldAccesIdFonction	FieldName
IdFonction  TIntegerFieldAcceslectureseul	FieldNamelectureseul   	TADOQueryTempon
Connection
C_Utilisat
CursorTypectStatic
Parameters SQL.Stringsselect * from Tempon Left TopH  	TADOQueryqLog
Connection
C_Utilisat
CursorTypectStatic
ParametersNamea
Attributes
paNullable DataTypeftString	PrecisionSizeValue  NamebDataType
ftDateTimeSize�Value   SQL.Stringsselect * from Logwhere (CodeUtil=:a)and(Daty=:b) Left`Top�  TAutoIncField
qLogNumero	FieldNameNumeroReadOnly	  TStringFieldqLogCodeUtil	FieldNameCodeUtil	FixedChar	  TDateTimeFieldqLogDaty	FieldNameDaty   	TADOQueryqAfficheLog
Connection
C_Utilisat
CursorTypectStatic
Parameters SQL.Stringsselect * from log Left Top�  TAutoIncFieldqAfficheLogNumero	FieldNameNumeroReadOnly	Visible  TWideStringFieldqAfficheLogCodeUtilDisplayWidth
	FieldNameCodeUtilSize2  TDateTimeFieldqAfficheLogDatyDisplayWidth
	FieldNameDatyDisplayFormat	dd/mm/yyy   TDataSourcesqLogDataSetqLogLeft`Top�   	TADOTabletTache
Connection
C_Utilisat
CursorTypectStaticIndexFieldNamesNLogMasterFieldsNumeroMasterSourcesqLog	TableNameTacheLeft� Top�  TAutoIncFieldtTacheNumero	FieldNameNumeroReadOnly	Visible  TIntegerField
tTacheNLog	FieldNameNLogVisible  TDateTimeFieldtTacheHeure	FieldNameHeureDisplayFormathh:nn  TWideStringFieldtTacheDescriptionDisplayWidth	FieldNameDescriptionSize�   TWideStringFieldtTachedesignmenuDisplayWidth	FieldName
designmenuSize(  TWideStringFieldtTachedesigncommandeDisplayWidth	FieldNamedesigncommandeSize(   TDataSourcestTacheDataSettTacheLeft� Top�   	TADOQueryqArbre
Connection
C_Utilisat
Parameters Left Top�   	TADOQuerySelAcces
Connection
C_Utilisat
CursorTypectStatic
ParametersNameaDataTypeftStringSizeValue  NamebDataTypeftStringSizeValue   SQL.Stringsselect * from Acces !where (codeUt=:a)and(commande=:b)  Left� TopH TWideStringFieldSelAccesCodeUt	FieldNameCodeUt	FixedChar	Size
  TWideStringFieldSelAccesCommande	FieldNameCommande	FixedChar	Size<  TWideStringFieldSelAccesLogiciel	FieldNameLogiciel	FixedChar	Size   	TADOTable	tFonction
Connection
C_Utilisat
CursorTypectStaticAfterInserttFonctionAfterInsert	TableNameFonctionLeft� Top�  TAutoIncFieldtFonctionId	FieldNameIdVisible  TWideStringFieldtFonctionDescription	FieldNameDescriptionSize   TDataSource
stFonctionDataSet	tFonctionLeft� Top�   	TADOQuerydel_CommandeNonUtilisateur
Connection
C_Utilisat
Parameters SQL.StringsDELETE Utilisat.Code, Acces.*=FROM Acces LEFT JOIN Utilisat ON Acces.CodeUt = Utilisat.Code"WHERE (((Utilisat.Code) Is Null)); Left`Top�   	TADOTablet_menu
Connection
C_Utilisat
CursorTypectStatic	TableNamemenuLeft�Top  TDataSourcest_menuAutoEditDataSett_menuLeft�Top@  	TADOTablet_commande_menu
Connection
C_Utilisat	TableNamecommande_menuLeft�Top�   TDataSourcest_commande_menuDataSett_commande_menuLeft�Top�   	TADOQuery	Operation
Connection
C_Utilisat
Parameters Left�TopP   