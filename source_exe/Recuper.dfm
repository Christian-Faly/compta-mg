�
 TFORM344 0*  TPF0TForm344Form344LeftTopZ
AutoScrollCaption   RécupérationClientHeightMClientWidth]Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	WindowStatewsMaximizedPixelsPerInch`
TextHeight TPanelPanel1Left Top Width]Height9AlignalTopTabOrder  	TGroupBox	GroupBox1LeftTopWidth� Height'Caption	OuvertureTabOrder  TSpeedButtonSpeedButton1LeftMTopWidth>HeightCaptionEcritureOnClickSpeedButton1Click  TSpeedButtonSpeedButton4LeftTopWidthBHeightCaptionEnteteOnClickSpeedButton4Click   	TGroupBox	GroupBox2Left� TopWidth� Height'Caption	TransfertTabOrder TSpeedButtonSpeedButton3LeftTopWidth?HeightCaptionViderOnClickSpeedButton3Click  TSpeedButtonSpeedButton2LeftmTopWidth=HeightCaption	   ExécuterOnClickSpeedButton2Click   	TGroupBox	GroupBox3LefttTopWidth� Height'Caption	ConsulterTabOrder TSpeedButtonSpeedButton5LeftTopWidth5HeightCaptionJournauxOnClickSpeedButton5Click  TSpeedButtonSpeedButton6Left:TopWidth3HeightCaptionJournalOnClickSpeedButton6Click  TSpeedButtonSpeedButton7LeftpTopWidth7HeightCaptionEcritureOnClickSpeedButton7Click    TPanelPanel2Left Top9Width]HeightAlignalClientCaptionPanel2TabOrder TDBGridDBGrid1LeftTopWidth#HeightAlignalClient
DataSourceSourceSelOrigineTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style   TDBGridDBGrid2Left$TopWidth8HeightAlignalRight
DataSourceSourceDestinationTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style    TDataSourceSourceSelOrigineDataSet
SelOrigineLeft� Top`  TOpenDialogOpenDialog1LeftTop`  TQuery
SelOrigineDatabaseNameC:\AsaFaly\DocNapsSQL.StringsSelect  ECR1_2."CPTG",  ECR1_2."CPTT",  ECR1_2."LIBEL",  ECR1_2."DEBIT",  ECR1_2."CREDIT",  ECR1_2."ORDRE",  ECR1_2."DATE",  ECR1_2."CDJ")From "C:\GestVal\Data\DocNaps\ECR1_2.DBF"	As ECR1_2order by   ECR1_2."DATE"   LeftPTop` TFloatFieldSelOrigineORDRE	FieldNameORDRE  TStringFieldSelOrigineCPTG	FieldNameCPTGSize
  TStringFieldSelOrigineLIBEL	FieldNameLIBELSize(  TStringFieldSelOrigineCPTT	FieldNameCPTTSize
  TStringFieldSelOrigineReference	FieldKindfkLookup	FieldName	ReferenceLookupDataSetEnteteLookupKeyFieldsORDRELookupResultFieldREF	KeyFieldsORDRESizeLookup	  TFloatFieldSelOrigineDEBIT	FieldNameDEBIT  TFloatFieldSelOrigineCREDIT	FieldNameCREDIT  TStringFieldSelOrigineCDJ	FieldNameCDJSize  
TDateFieldSelOrigineDATE	FieldNameDATE  TStringFieldSelOrigineBanque	FieldKindfkLookup	FieldNameBanqueLookupKeyFieldsCODELookupResultFieldSIGLEBQ	KeyFieldsCPTGSize
Lookup	   TTableEnteteDatabaseNameC:\AsaFaly\DocNaps	TableName
ENTETE.DBFLeft� Top` TFloatFieldEnteteORDRE	FieldNameORDRE  TStringField	EnteteCDJ	FieldNameCDJSize  
TDateField
EnteteDATE	FieldNameDATE  TStringField
EnteteTYPE	FieldNameTYPESize  TStringField	EnteteREF	FieldNameREFSize   TDataSourceSourceDestinationLeft�Topj  TTableTable1DatabaseNameC:\AsaFaly\DoCNaps	TableNameUCBANT94.dbfLeft� Top�  TStringField
Table1DATY	FieldNameDATYSize  TStringField	Table1REF	FieldNameREFSize  TFloatFieldTable1MONTANT	FieldNameMONTANT   TTableTable3DatabaseNameC:\AsaFaly\DoCNaps	TableNameBQANT94.dbfLeft� Top�  TFloatFieldTable3DETAILS	FieldNameDETAILS  TFloatFieldTable3TRANSACTIO	FieldName
TRANSACTIO  TStringField
Table3DATY	FieldNameDATYSize    