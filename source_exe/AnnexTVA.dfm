�
 TFANNEXTVA 0�I TPF0
TFAnnexTVA	FAnnexTVALeft� Top� Width<Height�VertScrollBar.PositionCaption	FAnnexTVAColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	ScaledPixelsPerInch`
TextHeight 	TQuickRep	QuickRep4LeftTopWidth�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep4BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty	
SnapToGrid	UnitsMMZoomP TQRBandQRBand16LeftToplWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �����J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysDataQRSysData10Left TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@                ��@ �������@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand17LeftTop� WidthQHeightzFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomBeforePrintQRBand17BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values �������@ ����*'�	@ BandType	rbSummary TQRShape	QRShape66Left Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������Z�@��������	@����������������� @ ShapeqrsVertLine  TQRLabelQRLabel6LeftTopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@UUUUUջ�	@�������� @TUUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionQRLabel6ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRExprQRExpr2Left�TopWidthCHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@     �P�	@�������� @��������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	  TQRShapeQRShape9Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@TUUUUU?�	@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel55Left�TopWidth!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�	@      ��@ �����G�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTOTALColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel62Left�TopWidthJHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��	@      p�@ `UUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAntananarivo, leColorclWhiteTransparentWordWrap	FontSize
  
TQRSysData
QRSysData2Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU��	@      p�@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateTransparentFontSize
  TQRLabel	QRLabel63Left�Top@Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ��	@ �������@      w�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption#   Le Déclarant( Cachet et signature)ColorclWhiteTransparentWordWrap	FontSize
  TQRShape	QRShape17Left�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������� @�����*��	@��������@      ��@ Shape
qrsHorLine  TQRShape	QRShape18LeftOTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@     �S�	@ �������� �������@ ShapeqrsVertLine  TQRLabel	QRLabel60LeftTopSWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU5�@ �����@�@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption%   NB : à fournir en double exemplaire,ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel61Left%Top`Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU��@      ��@     �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption$   à déposer au détenteur du dossierColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand18LeftTopWidthQHeight� Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomBeforePrintQRBand18BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values ������@ ����*'�	@ BandTyperbTitle TLabelLabel1Left� TopnWidth+HeightCaptionLabel1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFont  TQRLabelQRLabel7Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      c�@      ��@ �������@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaptionANNEXE DECLARATION DE TVAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel8Left� TopWidthJHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����Z�@      m�	@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaption;   (Article 06.01.26 du code  général des Impôts, LF. 2001)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel9Left�Top-Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*�	@      Ԕ@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionANNEE :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel10Left�TopOWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*�	@ XUUUU��@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionTRIM :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel12Left�Top=Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*�	@ �������@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionMOIS :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel13LeftTop1WidthnHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ ������@ ������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionNom ou raison sociale :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel14LeftTopBWidthyHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����G�@ XUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   N° d'identification fiscale :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel15LeftTopPWidthFHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   N° statistique :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel16LeftTop`Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@      ��@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Adresse :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel17LeftToppWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ XUUUU5�@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Détenteur du dossier fiscal :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText3Left� TopCWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU��@ �������@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText9LeftQTopQWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@      �@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldStatisFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel18LeftTop=Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUջ�	@ �������@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel18ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel19LeftTop,Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ XUUUU��@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel19ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel20LeftTopOWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ XUUUU��@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel20ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel65Left� Top� Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@      R�@ �������@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaptionLISTE DES CLIENTSColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText10Left9TopaWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ XUUUUg�@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText40Left� Top1Width3HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@TUUUUU��@�������@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel77Left�Top� WidthyHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��	@ �������@ XUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionAnnexTVA QuickRep4ColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand1LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �����J�@ ����*'�	@ BandTyperbColumnHeader TQRShape	QRShape57Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �������@ ������� @ ������� @ ShapeqrsVertLine  TQRShape	QRShape60LeftiTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      ��@           ������� @ ShapeqrsVertLine  TQRShape	QRShape20Left6TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      ��@ �������@ �������@ ShapeqrsVertLine  TQRLabel	QRLabel58LeftTopWidth1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �������@ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionN.I.FColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel59Left�TopWidthHHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU?�	@ �������@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
Montant HTColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape56Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����k�	@      ��@ �������@ ShapeqrsVertLine  TQRLabel	QRLabel11LeftmTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU?�@ �������@ �������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionNom ou Raison socialeColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabelQRLabel1Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@      ��@ �����"�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionAdresseColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabelQRLabel2Left;TopWidth,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU!�@      ��@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionStatColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShapeQRShape1Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      ��	@ ������� @ �������@ ShapeqrsVertLine  TQRLabelQRLabel3LeftTopWidthHHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUջ�	@ �������@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTVAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand14LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomBeforePrintQRBand14BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values      p�@ ����*'�	@ BandTyperbDetail 	TQRDBText	QRDBText7Left;TopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU!�@ ������� @ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape50Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@������u�@          �������� @ ShapeqrsVertLine  TQRShape	QRShape54LeftjTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@UUUUUUI�@          �������� @ ShapeqrsVertLine  TQRShape	QRShape55Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU?�	@           ������� @ ShapeqrsVertLine  	TQRDBText
QRDBText37LeftrTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��@ �������@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText33Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU��@ ������� @      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCompteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShapeQRShape2Left7TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@�������@�������� @�������� @ ShapeqrsVertLine  	TQRDBText	QRDBText1LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����J�@ ������� @ �����Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldCodeFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShapeQRShape4Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@������Z�@�������� @�������� @ ShapeqrsVertLine  TQRLabelQRLabel4LeftTopWidthDHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@    ���	@�������� @TUUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionQRLabel4ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText	QRDBText2Left�TopWidthCHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�������	@�������� @��������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSMontantFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style Mask#,##0
ParentFontTransparent	WordWrap	FontSize	  TQRShape	QRShape10Left TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@��������	@�������� @�������� @ ShapeqrsVertLine  	TQRDBText
QRDBText25Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����k�@ ������� @      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldLibelleFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand3LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	
AfterPrintQRBand3AfterPrintAlignToBottomBeforePrintQRBand3BeforePrintColorclWhiteForceNewColumnForceNewPageSize.ValuesTUUUUU5�@ ����*'�	@ BandTyperbGroupFooter 	TQRDBText	QRDBText4LeftnTopWidth~HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ������@ ������� @      \�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNomFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize  	TQRDBText	QRDBText5Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@ ������� @ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldAdresseFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize  TQRShapeQRShape3Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �������@ ������� � ������� @ ShapeqrsVertLine  	TQRDBText	QRDBText6LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �������@ ������� @ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNIFFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize	  TQRShapeQRShape5LeftjTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUUI�@ �������� ������� @ ShapeqrsVertLine  TQRShapeQRShape6Left7Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@ �������� ������� @ ShapeqrsVertLine  	TQRDBText	QRDBText8Left:Top Width%HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����ҿ@           `UUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldStatistiqueFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparent	WordWrap	FontSize	  TQRShapeQRShape7Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �����k�	@ ������� � �������@ ShapeqrsVertLine  TQRShapeQRShape8LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ �����	@      ��� ������� @ ShapeqrsVertLine  TQRLabelQRLabel5LeftTopWidthHHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@������Q�	@�������� @�������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaptionQRLabel5ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic OnPrintQRLabel5Print
ParentFontTransparentWordWrap	FontSize	  TQRExprQRExpr1Left�TopWidthDHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�������	@�������� @TUUUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic ColorclWhiteOnPrintQRExpr1Print
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	   TQRGroupQRGroup1LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ 
ExpressionDetTaxe.Tiers
FooterBandQRBand3Master	QuickRep4ReprintOnNewPage   	TQuickRep	QuickRep1Left6Top�Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep1BeforePrintDataSetDASQL.DetTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterSmallPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty	
SnapToGrid	UnitsMMZoomP TQRBandQRBand2LeftTop�WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������"�@ ����*'�	@ BandTyperbPageFooter 
TQRSysData
QRSysData3Left TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@                ��@ �������@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand4LeftTopWidthQHeight� Frame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ BandType	rbSummary TQRExprQRExpr5LeftTopWidth>HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����G�	@ �������@ `UUUU�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ColorclWhiteOnPrintQRExpr5Print
ParentFontResetAfterPrintTransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  TQRShape	QRShape34LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ �����	@ ������� � ������� @ ShapeqrsVertLine  TQRShape	QRShape35Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@�����*$�	@�������� ��������� @ ShapeqrsVertLine  TQRLabel	QRLabel41Left�TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@     �˸	@ �������@ �������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel41ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel54LeftTopWidthZHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU��@      ��@      Ԕ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTOTAL  GENERALColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRShape	QRShape16Left�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������� @ `UUUU��	@       �@ XUUUU��@ Shape
qrsHorLine  TQRLabel	QRLabel56Left�TopWidthJHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��	@      p�@ `UUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAntananarivo, leColorclWhiteTransparentWordWrap	FontSize
  
TQRSysData
QRSysData1Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU��	@      p�@ �����ҿ@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateTransparentFontSize
  TQRLabel	QRLabel57Left�Top@Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ��	@ �������@      w�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption#   Le Déclarant( Cachet et signature)ColorclWhiteTransparentWordWrap	FontSize
  TQRShape	QRShape24LeftPTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��	@�������� ��������� @ ShapeqrsVertLine  TQRLabel	QRLabel64LeftTopYWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����J�@ �����,�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption5   (1) : Si importation : N°  Déclaration à la DouaneColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand5LeftTopWidthQHeight{Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomBeforePrintQRBand5BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values     f�@ ����*'�	@ BandTyperbTitle TLabelLabel2Left&TopWidth%HeightCaption   n° 604  TQRLabel	QRLabel23Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      c�@      ��@ �������@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaptionANNEXE DECLARATION DE TVAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel24Left� TopWidthJHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����Z�@      m�	@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaption;   (Article 06.01.26 du code  général des Impôts, LF. 2001)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel32Left�Top-Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*�	@      Ԕ@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionANNEE :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel33Left�TopOWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*�	@ XUUUU��@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionTRIM :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel34Left�Top=Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*�	@ �������@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionMOIS :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel35LeftTop=WidthKHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@      �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionRaison sociale :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel37LeftTop-WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@      Ԕ@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionN.I.F :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel44LeftTopKWidth.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      �@ �����"�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Adresse :ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText19Left(Top,WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����J�@ XUUUU��@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldNIFFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel48LeftTop=Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUջ�	@ �������@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel48ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel49LeftTop,Width;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     ���	@ XUUUU��@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel49ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel50LeftTopOWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����%�	@ XUUUU��@ `UUUU!�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel50ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel43Left� TopeWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@ ������@ �������@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchCaptionLISTE DES FOURNISSEURSColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText24Left9TopLWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �����Z�@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldTotalFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText26LeftbTop>Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�������@TUUUUU�@TUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel78Left�TopfWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@      ��	@      ��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionAnnexTVA QuickRep1ColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand6LeftTop� WidthQHeight#Frame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@ ����*'�	@ BandTyperbColumnHeader TQRLabel	QRLabel25LeftRTopWidthsHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ XUUUU��@ �������@ XUUUU+�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionRaison socialeColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape11Left)TopWidthHeight Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@UUUUUU��@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel28Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ `UUUUS�@ XUUUU5�@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionAdresse (1)ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel29LeftTopWidth%HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ ������� @ �������@ `UUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionN.I.FColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape15LeftNTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU�@      ��@�������� @�������� @ ShapeqrsVertLine  TQRLabel	QRLabel31Left/TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ XUUUUq�@ �������@ �����ҿ@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionStat.ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel36LeftTopWidthAHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@     ���	@       �@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionT.V.AColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel38Left�TopWidthBHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ XUUU���	@       �@ �����G�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionH.TColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape21LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU��@     ��	@��������@�������� @ ShapeqrsVertLine  TQRShape	QRShape12Left� Top WidthHeight!Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      H�@��������@          �������� @ ShapeqrsVertLine  TQRShape	QRShape14Left�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������� @     �P�	@ �������@ XUUUU��@ Shape
qrsHorLine  TQRLabel	QRLabel53Left�TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUU���	@ �������@       �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionMontantColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRShape	QRShape19Left�Top WidthHeight#Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@     �P�	@           ������� @ ShapeqrsVertLine   TQRBandQRBand7LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      p�@ ����*'�	@ BandTyperbDetail 	TQRDBText
QRDBText11LeftQTopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@ ������� @ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape22LeftuTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      z�@                ��@ ShapeqrsVertLine  	TQRDBText
QRDBText12LeftyTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUU�@ �������@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldDateEscFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape23LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@     ��	@�������� ��������� @ ShapeqrsVertLine  TQRShape	QRShape25Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@ ������� @ �������@ ShapeqrsVertLine  	TQRDBText
QRDBText14LeftTopWidthGHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUջ�	@ ������� @ `UUUU��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldSMontantFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style Mask#,##0OnPrintQRDBText14Print
ParentFontTransparent	WordWrap	FontSize	  	TQRDBText
QRDBText17Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ XUUUU�@                ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldLibelleFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape33Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@�����*$�	@�������� ��������� @ ShapeqrsVertLine  TQRLabel	QRLabel39Left�TopWidth?HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     �˸	@ ������� @      \�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel39ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText13Left(TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����J�@ ������� @ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetDASQL.DetTaxe	DataFieldJournalFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.Style 
ParentFontTransparentWordWrap	FontSize	   TQRBandQRBand13LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbGroupFooter TQRExprQRExpr9LeftTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����%�	@ �������@     4�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold ColorclWhiteOnPrintQRExpr9Print
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize
  TQRShape	QRShape38LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������J�@     ��	@�������� ��������� @ ShapeqrsVertLine  TQRShape	QRShape39Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesUUUUUU��@�����*$�	@�������� ��������� @ ShapeqrsVertLine  TQRLabel	QRLabel46Left�TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@     �˸	@ �������@ �������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel46ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold OnPrintQRLabel46Print
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel26Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����u�	@ �������@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotalColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
   TQRGroupQRGroup2LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomBeforePrintQRGroup2BeforePrintColorclWhiteForceNewColumnForceNewPageSize.Values      �@ ����*'�	@ 
ExpressionDetTaxe.Compte
FooterBandQRBand13Master	QuickRep1ReprintOnNewPage TQRExprQRExpr23LeftTopWidth,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����J�@      ��@ `UUUU��	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ColorclWhite
ParentFontResetAfterPrintTransparentWordWrap	
Expression'DetTaxe.CodeAdm+' '+DetTaxe.IntituleAdmFontSize
   TQRGroupQRGroup3LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesTUUUUU��@ ����*'�	@ 
ExpressionDetTaxe.StatDouane
FooterBandQRBand8Master	QuickRep1ReprintOnNewPage  TQRBandQRBand8LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeft	Frame.DrawRight	
AfterPrintQRBand8AfterPrintAlignToBottomBeforePrintQRBand8BeforePrintColorclWhiteForceNewColumnForceNewPageSize.ValuesTUUUUU5�@ ����*'�	@ BandTyperbGroupFooter TQRShape	QRShape26Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values������J�@��������@����������������� @ ShapeqrsVertLine  TQRShape	QRShape27Left)TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesUUUUUU��@UUUUUU��@�������� @�������� @ ShapeqrsVertLine  TQRShape	QRShape30LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ �����	@ �������� ������� @ ShapeqrsVertLine  TQRShape	QRShape31LeftOTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@UUUUUU��@          �������� @ ShapeqrsVertLine  TQRShape	QRShape41Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ `UUUU��	@ �������� �������@ ShapeqrsVertLine  TQRExprQRExpr3LeftTopWidthFHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUջ�	@ ������� @ �������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic ColorclWhiteOnPrintQRExpr3Print
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSUM(DetTaxe.SMontant)Mask#,##0FontSize	  TQRLabel	QRLabel27LeftTopWidth&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@��������@�������� @������Z�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel27ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic OnPrintQRLabel27Print
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel47Left+TopWidth#HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@������6�@�������� @��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel47ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic OnPrintQRLabel47Print
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel51LeftTTopWidthqHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      �@ ������� @ �����ܺ@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel51ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic OnPrintQRLabel51Print
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel52Left� TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ ������� @ �����M�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel52ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic OnPrintQRLabel52Print
ParentFontTransparentWordWrap	FontSize	  TQRLabel	QRLabel21Left�TopWidthBHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �����a�	@ ������� @ �����G�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchCaption	QRLabel21ColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic OnPrintQRLabel21Print
ParentFontTransparentWordWrap	FontSize	    	TQuickRep	QuickRep2LeftTop�Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightBeforePrintQuickRep2BeforePrintDataSetDASQL.RecaTaxeDescription.Strings@This customer listing report shows the following basic features:- Setup of some common bands0  (title, column header, detail and page footer)- Connecting a dataset#- Use TQRLabel to print static text%- Use TQRDBText to print table fields You can also see how to6- Use TQRSysData to print current time and page number'- Use different fonts, sizes and colors- How to right align text- How to center text in a band Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinFirstPrintIfEmpty
SnapToGrid	UnitsMMZoomP TQRBandQRBand9LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������J�@ ����*'�	@ BandTyperbPageFooter 
TQRSysData
QRSysData5Left TopWidth@HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@                ��@ �������@ 	AlignmenttaLeftJustifyAlignToBand	AutoSize	ColorclWhiteDataqrsPageNumberTextPage TransparentFontSize
   TQRBandQRBand10LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbGroupFooter TQRShape	QRShape29Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@ XUUUU��	@ �������� �������@ ShapeqrsVertLine  TQRExprQRExpr4Left�TopWidthgHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@�����*��	@�������� @TUUUUUS�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
Expression$SUM(RecaTaxe.SMontant+RecaTaxe.MTVA)Mask#,##0FontSize
  TQRShape	QRShape61Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@      ��@ �������� �������@ ShapeqrsVertLine  TQRShape	QRShape62LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU`�@ ������� � ������� @ ShapeqrsVertLine  TQRShape	QRShape63LeftyTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ����*ۛ	@ ������� @ �������@ ShapeqrsVertLine  TQRExprQRExpr17LeftTopWidth\HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@�����*V�	@�������� @������"�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MTVA)Mask#,##0FontSize
  TQRExprQRExpr18LeftTopWidth_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@      ��@�������� @�������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MNonTaxable)Mask#,##0FontSize
  TQRExprQRExpr20Left� TopWidthKHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesTUUUUU5�@UUUUUU�@�������� @      �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MTaxable)Mask#,##0FontSize
  TQRExprQRExpr22Left8TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ XUUUU5�@ ������� @ `UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsBold Color��� 
ParentFontResetAfterPrintTransparentWordWrap	
Expression'Total '+ RecaTaxe.DescriptionFontSize
   TQRBandQRBand11LeftTopWidthQHeight:Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������ҿ@ ����*'�	@ BandTyperbTitle TQRLabel	QRLabel66Left� TopWidthjHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      ��@ �����J�@ `UUUUI�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaptionRECAPITULATIONColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData6Left�TopWidthPHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*��	@ XUUUU��@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	ColorclWhiteDataqrsDateText   Imprimé le TransparentFontSize
  TQRLabel	QRLabel71LeftTop$Width*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@       �@      �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionExerciceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText54Left=Top%Width HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ `UUUU��@ �������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldCptBQFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText55LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@      ��@ �������@ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Adresse	DataFieldNomFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel72LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU5�@ �����J�@ �����J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionAg: ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText
QRDBText60Left=TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      �@ XUUUU]�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldCodeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel76Left	TopWidth>HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ ������@      �@ `UUUU�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption	QRLabel76ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsItalic 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText88LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@ �����J�@      p�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetCommun.Societe	DataFieldRSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabel	QRLabel79Left�Top*WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ XUUUUά	@      �@ `UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchCaptionAnnexTVA QuickRep2ColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand12LeftTopXWidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandTyperbColumnHeader TQRLabel	QRLabel67Left� TopWidthOHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      ;�@ �������@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTaxableColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel68LeftTopWidth<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      ��@ ������� @      p�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionDateColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRLabel	QRLabel69Left}TopWidth[HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@     ���	@      ��@ XUUUU{�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionTVAColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape32LeftzTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@      E�	@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel70Left�TopWidthkHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ �����C�	@ ������� @ ������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionMontantColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape42Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUU�^�	@ ������� @ �������@ ShapeqrsVertLine  TQRShape	QRShape43Left=TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ �������@ ������� @      ��@ ShapeqrsVertLine  TQRShape	QRShape44LeftvTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU!�@ ������� @ �������@ ShapeqrsVertLine  TQRLabel	QRLabel73LeftxTopWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      p�@ �������@     4�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionFactureColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape45LeftTop WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@     4�@           �������@ ShapeqrsVertLine  TQRLabel	QRLabel74LeftTopWidthWHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ `UUUUV�@ �������@      ޏ@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionNon taxableColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
  TQRShape	QRShape65Left� Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ������@           �������@ ShapeqrsVertLine  TQRLabel	QRLabel75Left@TopWidth4HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ �������@ �������@ �������@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption   PièceColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparent	WordWrap	FontSize
   TQRBandQRBand15LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ForceNewColumnForceNewPage
ParentFontSize.ValuesTUUUUU5�@ ����*'�	@ BandTyperbDetail 	TQRDBText
QRDBText15LeftTop Width]HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@�����*V�	@                ʙ@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.RecaTaxe	DataFieldMTVAFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape46LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU`�@ �������� ������� @ ShapeqrsVertLine  	TQRDBText
QRDBText16LeftTopWidth;HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ ������� @ ������� @ `UUUU!�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.RecaTaxe	DataFieldDateEscFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText20Left� TopWidthKHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@UUUUUU�@�������� @      �@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.RecaTaxe	DataFieldMTaxableFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize	  TQRShape	QRShape47Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      �@ XUUUU��	@           �������@ ShapeqrsVertLine  TQRShape	QRShape48Left>TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@ `UUUU�@ ������� @ �������@ ShapeqrsVertLine  TQRShape	QRShape49Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@      ��@      ��� �������@ ShapeqrsVertLine  	TQRDBText
QRDBText22Left|TopWidthBHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ `UUUU�@ ������� @ �����G�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.RecaTaxe	DataFieldNumFactFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  	TQRDBText
QRDBText23LeftTopWidth`HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@      ��@�������� @      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.RecaTaxe	DataFieldMNonTaxableFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Mask#,##0
ParentFontTransparent	WordWrap	FontSize	  TQRShape	QRShape51LeftyTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ����*ۛ	@ �������� �������@ ShapeqrsVertLine  TQRExprQRExpr10Left�TopWidthgHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@�����*��	@�������� @TUUUUUS�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionRecaTaxe.SMontant+RecaTaxe.MTVAMask#,##0FontSize	  	TQRDBText
QRDBText21LeftBTop Width2HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �������@ �����G�@           XUUUU]�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetDASQL.RecaTaxe	DataFieldJournalFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial Narrow
Font.StylefsItalic 
ParentFontTransparentWordWrap	FontSize	  TQRShape	QRShape71LeftvTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ `UUUU!�@ �������� �������@ ShapeqrsVertLine   TQRGroupQRGroup4LeftTopkWidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.ValuesTUUUUU��@ ����*'�	@ 
ExpressionRecaTaxe.Rubrique
FooterBandQRBand10Master	QuickRep2ReprintOnNewPage TQRExprQRExpr7LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@      ��@ ������� @ XUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold Color��� 
ParentFontResetAfterPrintTransparentWordWrap	
Expression RecaTaxe.DescriptionFontSize   TQRBandQRBand19LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeft	Frame.DrawRight	AlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ ����*'�	@ BandTyperbGroupFooter TQRExprQRExpr6Left�TopWidthgHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@ `UUU�T�	@      ��@ `UUUUS�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColor��� ResetAfterPrint	TransparentWordWrap	
Expression$SUM(RecaTaxe.SMontant+RecaTaxe.MTVA)Mask#,##0FontSize
  TQRShape	QRShape52Left�Top WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����J�@ XUUUU��	@           �������@ ShapeqrsVertLine  TQRShape	QRShape53Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@      ��@ �������� �������@ ShapeqrsVertLine  TQRShape	QRShape58LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU`�@ ������� @ ������� @ ShapeqrsVertLine  TQRShape	QRShape59LeftyTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ����*ۛ	@ ������� @ �������@ ShapeqrsVertLine  TQRExprQRExpr14Left~TopWidth^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ XUUUU�	@ �������@ XUUUUq�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColor��� ResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MTVA)Mask#,##0FontSize
  TQRExprQRExpr15LeftTopWidth`HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      ��@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColor��� ResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MNonTaxable)Mask#,##0FontSize
  TQRExprQRExpr16Left� TopWidthLHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@ �������@ �����Z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColor��� ResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MTaxable)Mask#,##0FontSize
  TQRExprQRExpr8LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ �������@      ��@      >�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColor��� ResetAfterPrintTransparentWordWrap	
Expression'Compte '+RecaTaxe.CompteFontSize
   TQRGroupQRGroup5LeftTop|WidthQHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.ValuesTUUUUU��@ ����*'�	@ 
ExpressionRecaTaxe.Compte
FooterBandQRBand19Master	QuickRep2ReprintOnNewPage  TQRBandQRBand20LeftTop� WidthQHeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeft	Frame.DrawRight	AlignToBottomColor��� ForceNewColumnForceNewPageSize.Values������Z�@ ����*'�	@ BandType	rbSummary TQRShape	QRShape67Left�Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@ XUUUU��	@ �������� �������@ ShapeqrsVertLine  TQRExprQRExpr12Left�TopWidthgHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      p�@�����*��	@��������@TUUUUUS�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
Expression$SUM(RecaTaxe.SMontant+RecaTaxe.MTVA)Mask#,##0FontSize
  TQRShape	QRShape68Left� Top�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����Z�@      ��@ �������� �������@ ShapeqrsVertLine  TQRShape	QRShape69LeftTop�WidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ XUUUU`�@ ������� � ������� @ ShapeqrsVertLine  TQRShape	QRShape70LeftyTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU��@ ����*ۛ	@ ������� @ �������@ ShapeqrsVertLine  TQRExprQRExpr13LeftTopWidth_HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ����*V�	@ �������@ ������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MTVA)Mask#,##0FontSize
  TQRExprQRExpr19LeftTopWidthbHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ ������@ �������@ ������@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MNonTaxable)Mask#,##0FontSize
  TQRExprQRExpr21Left� TopWidthLHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values XUUUU5�@ `UUUU�@ �������@ �����Z�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold Color��� 
ParentFontResetAfterPrint	TransparentWordWrap	
ExpressionSum(RecaTaxe.MTaxable)Mask#,##0FontSize
     